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
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0xf79acb98
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xf534648a
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xfaf90da9
                  li x8, 0x19da251d
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xb
                  li x12, 0xa
                  li x13, 0x1
                  li x14, 0xf640232b
                  li x15, 0xc
                  li x16, 0xc66f92b5
                  li x17, 0x3bc7db59
                  li x20, 0xc
                  li x21, 0xf3566dc5
                  li x22, 0xf8b641c8
                  li x23, 0xb9a46d99
                  li x24, 0x1008969d
                  li x25, 0xfe6c5581
                  li x26, 0xf02cd4e6
                  li x27, 0xfea33478
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0x94ea6370
                  li x31, 0x80000000
                  la x18, user_stack_end
main:             la           sp, region_0+1251 #start riscv_load_store_rand_instr_stream_2
                  sb           s4, -6(sp)
                  slli         t0, s5, 10
                  lh           gp, -5(sp)
                  auipc        ra, 295998
                  srl          a7, s5, ra
                  slli         a4, t0, 15
                  sh           t3, -9(sp)
                  addi         a2, a0, 1601
                  sltiu        s11, zero, -1162
                  lb           t0, 10(sp)
                  lb           s0, -2(sp)
                  auipc        a6, 700708
                  srl          s5, s5, s0
                  sb           t3, 10(sp)
                  xori         t1, a3, -120
                  lbu          t3, 2(sp)
                  sub          s6, t2, a7
                  or           a0, a2, a3
                  andi         s8, a5, 1938
                  nop
                  lh           tp, -15(sp)
                  sb           gp, 15(sp)
                  lb           a1, -15(sp)
                  sb           s5, -15(sp)
                  sltu         a4, a0, gp
                  sh           s3, 5(sp)
                  lb           gp, -8(sp)
                  and          s8, s10, s2
                  srl          a6, zero, t0
                  xor          a7, s1, s1
                  sh           s2, -3(sp)
                  sll          a7, s1, a0
                  xor          ra, s8, t2
                  sltu         s0, tp, s6
                  lh           zero, 7(sp)
                  xor          zero, s3, a7
                  addi         gp, sp, 967
                  addi         t2, tp, -257
                  sra          a1, t2, s1
                  andi         a5, sp, 1331
                  lhu          s8, -11(sp)
                  lb           a5, -15(sp)
                  sb           s8, -10(sp)
                  lb           a5, 10(sp)
                  lhu          s10, -15(sp)
                  add          a2, a1, s9
                  lb           s8, -3(sp) #end riscv_load_store_rand_instr_stream_2
                  xor          zero, a1, s3
                  bge          gp, t5, 3f
                  srl          tp, s2, t3
3:                xori         t2, a2, -674
                  slli         ra, t2, 29
                  sra          a4, a6, a1
                  srl          a5, s4, a2
                  slti         s4, s5, -402
                  slt          s10, s4, a0
                  xor          t6, a5, a6
                  bltu         a6, a2, 26f
                  srai         s6, a4, 15
                  addi         s1, s9, 569
                  slt          s7, s10, s8
                  auipc        t1, 493273
                  sra          sp, a0, s6
                  bgeu         s1, s5, 30f
                  sltu         gp, a7, s6
                  bgeu         t3, tp, 33f
                  auipc        t4, 531926
                  sltu         s11, s11, s6
                  srli         s1, tp, 0
                  srl          a4, t2, a7
                  bgeu         s6, a3, 29f
                  bge          ra, s1, 43f
                  bltu         s2, a2, 30f
26:               sub          tp, a7, tp
                  srl          s7, s5, s2
                  sra          s0, a5, tp
29:               sltu         s11, tp, a3
30:               bgeu         ra, ra, 31f
31:               ori          s10, a1, 1263
                  add          ra, a2, a7
33:               bne          zero, s6, 50f
                  sub          a6, s10, a1
                  ori          t4, a2, 1043
                  and          a4, s10, s8
                  srli         t5, s4, 10
                  sltiu        s7, t5, 1027
                  srai         zero, s4, 24
                  add          s0, t3, a1
                  sll          a4, a0, gp
                  or           a2, s1, s9
                  la           sp, region_0+1536 #start riscv_load_store_rand_instr_stream_1
                  sb           s1, 8(sp)
                  addi         a3, s9, -1287
                  lb           tp, -3(sp)
                  lb           a1, 1(sp)
                  sb           t3, -2(sp)
                  lb           a3, -2(sp)
                  srai         a7, a3, 20
                  or           a2, t1, t6
                  lhu          t6, -16(sp)
                  slt          t4, s10, t2
                  sll          s4, s7, s6
                  slli         a4, t3, 4
                  lbu          t6, -10(sp)
                  lbu          ra, -13(sp)
                  sb           s9, -11(sp)
                  sb           t6, -10(sp)
                  andi         s0, gp, -1106
                  sw           s2, -12(sp)
                  and          a0, ra, ra
                  srl          a2, s1, a7
                  lb           t6, 6(sp)
                  and          gp, a3, t3
                  lbu          t3, -13(sp)
                  lui          a5, 555008
                  and          s5, t3, sp
                  andi         ra, t3, 960
                  auipc        a2, 922596
                  lbu          a0, 6(sp)
                  lbu          a5, 13(sp)
                  sb           s4, -10(sp) #end riscv_load_store_rand_instr_stream_1
43:               lui          s7, 689854
                  and          ra, sp, a2
                  xor          a3, a7, t6
                  bltu         s5, sp, 63f
                  sll          t3, a1, s5
                  srai         a5, a3, 6
                  auipc        a0, 890213
50:               srl          s7, t2, s11
                  bgeu         t1, s9, 68f
                  addi         a4, t1, -40
                  sra          t1, s10, s6
                  blt          t3, t5, 70f
                  bgeu         s1, t3, 60f
                  xor          t3, s3, zero
                  sll          sp, s8, gp
                  slti         t1, a5, -1110
                  slt          t3, s3, s10
60:               sltu         a2, t6, a7
                  auipc        a1, 781969
                  sltiu        t4, s5, -1344
63:               blt          a2, s5, 82f
                  ori          gp, s9, 1425
                  sll          t2, t2, s5
                  slt          gp, s9, t2
                  slt          a1, a1, a3
68:               bge          t6, s1, 69f
69:               addi         s8, s9, 2021
70:               xori         s1, sp, 1831
                  addi         s10, s10, -111
                  bgeu         t1, t0, 78f
                  nop
                  slli         a2, ra, 5
                  slti         t2, s7, -821
                  srai         a3, t6, 23
                  lui          a4, 129271
78:               bgeu         t5, s5, 83f
                  sll          s8, s7, a6
                  xori         t6, a1, 1730
                  ori          zero, s2, 1648
82:               sra          sp, s6, a2
83:               add          t0, a2, s11
                  slti         s5, a7, 761
                  slti         s1, s10, -881
                  or           tp, s4, t5
                  sub          t3, ra, s5
                  bge          a1, s4, 89f
89:               srai         t4, a7, 16
                  and          zero, a0, a3
                  lui          a7, 395549
                  sltiu        tp, t2, 1723
                  bltu         a6, s6, 102f
                  bltu         ra, a1, 111f
                  bgeu         a5, t4, 100f
                  xor          a1, a3, s3
                  bgeu         s9, s1, 112f
                  and          t2, s9, a0
                  srli         s7, gp, 29
100:              xor          s6, t4, s4
                  add          s11, s10, s0
102:              andi         s0, s2, -1578
                  sll          s7, s6, t3
                  addi         t4, t5, -324
                  blt          tp, t4, 123f
                  nop
                  sltiu        t0, s7, -1324
                  sub          s6, s7, t2
                  bne          a4, a7, 113f
                  lui          s10, 838553
111:              blt          t0, s1, 117f
112:              sltu         t1, a3, a6
113:              bne          a3, t6, 126f
                  and          sp, t0, s3
                  slli         a1, s8, 10
                  sra          t0, t3, t6
117:              bne          tp, t6, 130f
                  lui          s11, 617936
                  sub          sp, s8, a0
                  sltu         s1, t1, ra
                  or           ra, a5, s8
                  bge          t1, s2, 142f
123:              sll          a3, a1, t2
                  srl          t5, s10, s11
                  ori          s6, a7, 1463
126:              slt          gp, a4, s0
                  sub          zero, s11, tp
                  sll          tp, a2, a6
                  sltiu        s11, zero, -1311
130:              srl          a6, t2, s6
                  sll          gp, t5, s10
                  slt          s11, t1, s11
                  bgeu         zero, t0, 153f
                  bne          s4, s10, 153f
                  bltu         s6, s9, 149f
                  sltiu        t2, gp, -2046
                  sltiu        t5, s8, -1521
                  blt          s5, t5, 139f
139:              and          s1, s4, s3
                  slli         s10, ra, 27
                  bgeu         s4, t4, 154f
142:              addi         ra, t2, -2017
                  addi         s0, a0, 1369
                  slli         a6, s10, 19
                  beq          t0, s1, 150f
                  slti         t3, t1, -1585
                  xor          s0, s4, ra
                  xori         s5, tp, -1897
149:              slti         a3, t0, 336
150:              srai         a0, t6, 25
                  sra          t0, s0, a4
                  lui          s7, 217079
153:              slli         s8, s0, 16
154:              slti         t2, s8, 1805
                  ori          s6, sp, 1496
                  srl          s10, a4, s8
                  sra          a1, t0, a2
                  sltiu        ra, s7, 17
                  add          s6, a1, t0
                  xor          a6, s2, s8
                  addi         zero, ra, 1224
                  xor          t2, tp, sp
                  srai         a7, a1, 31
                  sra          a2, a5, s7
                  bne          s10, a7, 183f
                  and          s4, s6, t1
                  bge          s11, a6, 182f
                  lui          t4, 251236
                  slti         t5, t3, 683
                  addi         a7, a6, 1839
                  sltu         s1, s2, s7
                  slt          t6, a4, zero
                  xor          s8, s5, a4
                  srli         s1, a5, 26
                  sltiu        gp, s11, -379
                  bgeu         a6, t4, 193f
                  bne          s3, s5, 194f
                  and          a6, tp, t6
                  bgeu         s4, a1, 185f
                  bltu         t4, t5, 200f
                  slli         ra, s8, 4
182:              or           gp, t3, a0
183:              srl          t1, s6, t0
                  sll          t1, t5, a1
185:              sltu         s10, a4, s4
                  sll          t3, s2, t1
                  beq          s10, s7, 196f
                  andi         t2, s3, 803
                  xori         t3, a4, -640
                  slli         a5, s6, 0
                  slti         a0, s11, -999
                  lui          ra, 723503
193:              blt          s6, t1, 208f
194:              sra          s4, a2, t5
                  xori         a6, s9, -1479
196:              and          a7, t5, a2
                  xor          t5, gp, s11
                  srl          s0, s3, a1
                  sra          t1, s4, zero
                  srli         a1, s9, 6
                  la           s5, sub_1
                  addi         s5, s5, 24
                  sra          a1, gp, s7
                  srl          s0, s8, t2
                  bge          s9, a0, main_j1 #branch to jump instr
                  addi         t1, s6, -1000
                  and          a5, a0, s6
                  or           s6, a1, t0
main_j1:          jalr         t3, s5, -24 #jump main -> sub_1
200:              slli         gp, s11, 26
                  sltiu        a7, s10, -186
                  xori         t2, t6, 1442
                  slt          s1, s4, a5
                  nop
                  slli         a2, s3, 28
                  bgeu         s1, a4, 211f
                  andi         s1, ra, -411
208:              srli         sp, sp, 11
                  xor          a1, a0, a1
                  sltu         tp, gp, s1
211:              and          t4, gp, s5
                  blt          t5, a2, 231f
                  srli         t1, t6, 1
                  slli         s10, tp, 30
                  blt          t2, s2, 216f
216:              nop
                  xor          s6, gp, a3
                  bltu         s8, s0, 219f
219:              add          s10, s10, t1
                  sra          a0, s7, a5
                  srai         a0, a1, 25
                  andi         sp, sp, -1404
                  lui          a4, 183031
                  beq          gp, a2, 243f
                  sltu         a4, s2, sp
                  srai         s6, s8, 24
                  srai         a5, t0, 6
                  add          s5, a4, t3
                  andi         s0, a7, -1891
                  blt          a5, t0, 246f
231:              addi         t2, t6, -993
                  andi         t2, s7, 1856
                  slt          t3, s3, s5
                  sll          t3, t5, t3
                  bgeu         s4, t6, 252f
                  nop
                  bltu         s9, tp, 243f
                  sltu         a3, s7, s4
                  bltu         a4, s9, 241f
                  srai         a3, t1, 21
241:              andi         s11, a4, 2012
                  sll          ra, a5, s10
243:              slti         t0, s4, -1557
                  sltiu        s7, s1, -2002
                  blt          t5, tp, 250f
246:              sra          s1, s1, zero
                  sll          sp, t5, gp
                  bge          a0, s8, 267f
                  add          t2, s4, sp
250:              and          s4, a0, t5
                  srai         a7, s3, 0
252:              sra          s0, a5, a6
                  sll          t4, s3, a7
                  or           a5, s8, t1
                  bge          t6, s7, 259f
                  ori          s0, a0, 341
                  ori          a5, s11, 911
                  bgeu         s7, t6, 278f
259:              or           a0, a1, a0
                  xor          a1, a2, sp
                  xor          gp, t3, tp
                  blt          t4, tp, 279f
                  andi         s5, s3, -1697
                  sltiu        t4, a6, 1483
                  slli         zero, a7, 17
                  ori          t5, a4, -792
267:              andi         zero, s9, -1411
                  slt          ra, a3, t2
                  auipc        s0, 477001
                  srai         t4, s1, 24
                  bgeu         s6, t4, 284f
                  or           sp, zero, a0
                  bne          a7, t2, 289f
                  sra          s1, a3, zero
                  sltiu        t2, a0, 1756
                  bge          s4, a3, 282f
                  add          a6, s11, tp
278:              andi         ra, a0, -690
279:              ori          a0, t6, -1026
                  bltu         t3, a1, 285f
                  nop
282:              slti         sp, t4, -140
                  bne          s2, a2, 296f
284:              auipc        t4, 896913
285:              nop
                  bne          s1, a0, 299f
                  srai         a0, a2, 1
                  srai         t0, s3, 4
289:              beq          s1, a5, 308f
                  xor          zero, a0, s6
                  ori          a7, s7, 712
                  beq          gp, t6, 308f
                  sub          s5, s11, zero
                  ori          t3, ra, 1880
                  srl          t1, gp, a2
296:              sltiu        t3, zero, 532
                  bltu         a7, tp, 298f
298:              auipc        s1, 765757
299:              sll          s4, t6, a5
                  sltiu        t5, s0, -119
                  sll          s1, tp, gp
                  srli         t0, t5, 24
                  xor          a4, a6, a5
                  slli         t0, s1, 19
                  addi         a5, a6, -1658
                  xor          a3, s7, a7
                  slti         t6, s7, 4
308:              srli         t5, a6, 26
                  andi         t2, a6, 1600
                  and          tp, s6, s11
                  sll          a4, zero, s6
                  blt          gp, s6, 331f
                  xor          a2, s0, t5
                  bge          a6, s11, 329f
                  srai         t6, t4, 7
                  slti         gp, t1, 1836
                  beq          a0, s6, 322f
                  addi         a4, zero, 1866
                  beq          a2, s2, 323f
                  bgeu         s9, s11, 335f
                  beq          s3, s5, 338f
322:              sll          t1, s8, s4
323:              xor          s10, a0, s6
                  xori         t0, s8, 519
                  sra          s10, a7, a3
                  sub          ra, t6, ra
                  addi         s4, a4, 997
                  auipc        s8, 239465
329:              bltu         s11, a7, 330f
330:              srai         t3, s8, 25
331:              beq          s0, a7, 348f
                  lui          zero, 348085
                  nop
                  ori          a6, ra, -1019
335:              or           s1, a0, a2
                  bgeu         t1, a3, 342f
                  srl          t6, s3, a6
338:              beq          s9, s2, 358f
                  slti         ra, t3, 307
                  slti         a7, t0, -779
                  lui          t4, 621207
342:              slli         a4, gp, 0
                  nop
                  lui          t1, 508194
                  slli         s10, sp, 11
                  lui          s4, 204751
                  sra          s5, s1, s5
348:              bgeu         a4, a1, 353f
                  sub          tp, zero, t5
                  sltu         t1, a1, s11
                  sub          a5, a1, a1
                  add          s8, s2, a2
                  la           sp, region_1+329 #start riscv_load_store_rand_instr_stream_0
                  sb           a2, 182(sp)
                  lb           s6, 110(sp)
                  sh           gp, -47(sp)
                  srl          s1, t6, t2
                  lb           t3, -26(sp)
                  sub          a5, s8, s1
                  auipc        t6, 272670
                  lb           s11, -194(sp)
                  slli         t6, s9, 5
                  sb           t4, -224(sp)
                  or           t6, a6, t6
                  lb           a5, -174(sp)
                  slti         a5, s8, -1158
                  lb           a4, -105(sp)
                  slli         t2, t4, 21
                  sb           a7, -187(sp)
                  lh           a3, -135(sp)
                  addi         zero, s0, 859
                  lh           a1, 93(sp)
                  sub          s4, a1, s1
                  sb           t1, -122(sp)
                  sh           s9, -75(sp)
                  sb           t6, 250(sp)
                  lbu          a2, 180(sp)
                  lb           zero, 66(sp)
                  lui          s8, 74515
                  add          s5, t3, t0
                  sw           a0, -197(sp)
                  auipc        t3, 728113
                  lbu          s11, -47(sp)
                  lb           t2, -106(sp) #end riscv_load_store_rand_instr_stream_0
353:              srli         s0, a3, 14
                  auipc        a7, 783828
                  xori         a0, a3, 1034
                  ori          s6, a7, 1053
                  slt          t6, t0, ra
358:              beq          s5, s5, 360f
                  addi         s11, s5, -2003
360:              nop
                  sltu         t2, zero, s7
                  bltu         a1, s7, 368f
                  srai         a0, s1, 8
                  and          s4, s5, t2
                  beq          ra, s6, 381f
                  beq          t6, sp, 383f
                  add          s7, a7, s10
368:              sll          zero, zero, sp
                  sll          t6, s7, a7
                  sub          tp, a6, a3
                  bne          s5, s4, 390f
                  srai         s0, t0, 29
                  bge          a6, s2, 390f
                  bltu         zero, s0, 394f
                  blt          t3, t2, 380f
                  or           a3, t6, a1
                  nop
                  sll          tp, s10, t4
                  auipc        gp, 30039
380:              srai         s4, s10, 22
381:              or           a0, s3, t4
                  sltu         a0, sp, a4
383:              beq          a5, s2, 388f
                  srai         a2, t4, 24
                  sub          t3, s1, s5
                  bgeu         t1, s11, 400f
                  sltiu        a3, s0, -589
388:              sltiu        tp, s10, 1356
                  slt          t6, ra, t3
390:              and          a4, tp, t0
                  and          s5, s4, s7
                  ori          a7, ra, -1326
                  and          tp, zero, a5
394:              bge          s7, t3, 400f
                  bltu         zero, a5, 404f
                  xor          a5, s9, s0
                  blt          zero, a5, 415f
                  ori          a1, t5, -572
                  nop
400:              sra          t4, s9, s9
                  slt          t0, s4, t1
                  addi         t5, s6, -101
                  slli         a5, t5, 27
404:              or           ra, sp, a0
                  bge          s11, s4, 406f
406:              and          a6, s4, t6
                  srai         a6, s7, 8
                  slti         a6, a3, 569
                  xori         ra, t6, -501
                  sub          s11, s11, t3
                  xor          t4, zero, a3
                  srai         a0, zero, 7
                  beq          a2, t2, 418f
                  sub          s7, sp, t2
415:              blt          s8, ra, 431f
                  bgeu         gp, zero, 432f
                  slti         s7, t2, 359
418:              bgeu         s1, a1, 432f
                  bge          s6, a2, 428f
                  sub          tp, s11, a6
                  bne          s8, s7, 438f
                  sub          s4, t3, gp
                  slt          t0, s9, sp
                  xori         a4, s3, -1505
                  srai         s11, t0, 30
                  addi         a4, s2, -1055
                  bge          t2, a4, 444f
428:              srli         a0, a5, 21
                  xori         a1, t5, 1769
                  slli         gp, t3, 26
431:              sll          s5, s6, s10
432:              sltiu        tp, s6, -1118
                  and          s1, s0, t3
                  bne          a4, a6, 435f
435:              or           t0, gp, s3
                  addi         a0, s9, 523
                  slti         tp, t6, -833
438:              slti         t6, s8, -1409
                  and          a0, a2, t4
                  add          t1, a7, zero
                  bne          a1, zero, 445f
                  bne          s10, a6, 445f
                  bge          t1, t2, 445f
444:              sltiu        a7, s1, 1309
445:              andi         s5, a5, -1468
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         s2, s2, -60
                  or           a7, s9, sp
                  sw           t3, 4(s2)
                  slti         tp, s2, -187
                  sltu         t1, a1, s4
                  ori          s1, s4, 703
                  add          a3, s11, s5
                  srl          sp, s8, a7
                  or           t2, a4, sp
                  bge          s4, s3, 8f
                  slt          a7, t4, sp
                  and          a2, s9, a1
                  ori          a7, a7, -548
8:                slt          a7, t0, t6
                  xor          t0, a7, s7
                  srai         t1, a5, 12
                  slti         s5, s5, 507
                  and          sp, a2, tp
                  bge          s2, s11, 19f
                  add          s7, a1, s3
                  beq          a5, t1, 19f
                  or           a2, s2, s7
                  sub          s10, s5, t6
                  add          a2, s7, a0
19:               nop
                  sub          s7, s4, zero
                  blt          t6, sp, 25f
                  nop
                  bgeu         a6, a1, 28f
                  lui          s8, 209975
25:               or           a5, a0, s1
                  blt          zero, ra, 28f
                  bne          ra, s0, 28f
28:               add          tp, t2, a5
                  addi         s10, sp, -469
                  lw           t3, 4(s2)
                  srli         s1, s10, 5
                  addi         s2, s2, 60
                  auipc        t1, 650961
                  and          s10, a5, tp
                  lui          a2, 1046581
                  sltiu        s7, gp, 1260
                  lui          a1, 650524
                  sltiu        s1, s11, 136
                  sltiu        ra, s10, -11
                  and          a2, s10, a6
46:               addi x5, x28, 0
46:               jalr x5, x5, 0
sub_3:            sltiu        s4, s2, 527
                  bltu         t6, tp, sub_3_stack_p
                  xori         s0, s5, 1931
sub_3_stack_p:    addi         s2, s2, -40
                  sw           t3, 4(s2)
                  slli         ra, a0, 2
                  slt          a0, s5, a5
                  xor          s5, a7, t3
                  and          s8, s8, s11
                  bge          a7, a4, sub_3_j5 #branch to jump instr
                  srl          a7, a4, ra
                  nop
                  andi         ra, ra, 1542
                  srli         ra, zero, 29
                  addi         a0, t4, 477
                  slli         s8, t0, 8
                  ori          a5, ra, -977
sub_3_j5:         jal          t3, sub_4 #jump sub_3 -> sub_4
                  srl          s10, gp, ra
                  bltu         s10, s10, 18f
                  sltiu        s0, t2, 1875
                  bgeu         sp, s10, 6f
                  or           a5, zero, s11
                  sltiu        a0, gp, -1706
6:                bge          s4, ra, 18f
                  xor          gp, ra, s8
                  auipc        a1, 508487
                  sltiu        a6, a3, -129
                  sll          t6, t6, gp
                  bge          t6, s8, 18f
                  sub          s5, t3, s11
                  auipc        a1, 299518
                  add          a5, a7, s7
                  addi         a3, s5, 1320
                  bltu         tp, t2, 18f
                  slti         s7, s2, 939
18:               ori          s1, s7, 1725
                  addi         a0, a4, -1613
                  xor          zero, sp, a6
                  lw           t3, 4(s2)
                  or           s8, a4, s2
                  addi         s2, s2, 40
                  or           s7, s8, a6
                  sltu         s11, s3, s9
                  or           s4, s10, s3
45:               addi x4, x28, 0
45:               jalr x4, x4, 0
sub_9:            sltu         a5, zero, s10
                  andi         a5, s7, 996
                  addi         s2, s2, -60
                  addi         sp, t2, 57
                  sw           t3, 4(s2)
                  sub          s4, s1, s0
                  srli         t0, ra, 16
                  sltu         s4, t5, s7
                  srai         a3, a6, 19
                  slli         t4, s3, 3
                  nop
                  addi         a2, a0, 244
                  bgeu         t4, t4, 9f
                  sltiu        t3, a2, -1274
                  bge          a1, t5, 16f
                  ori          t2, sp, -326
                  lui          a7, 168873
                  bgeu         s6, a2, 9f
                  or           t5, s3, a1
                  auipc        s8, 1017926
                  blt          tp, s10, 22f
9:                bne          a7, s1, 23f
                  add          t4, s2, s9
                  and          t6, s6, a4
                  bltu         s4, s2, 19f
                  beq          a7, t3, 23f
                  srli         s10, tp, 0
                  bgeu         t2, t5, 21f
16:               add          tp, s5, tp
                  and          a7, a6, s1
                  sltu         s1, a2, t5
19:               xori         s7, a2, -1448
                  nop
21:               andi         a6, ra, 1166
22:               xori         s8, t6, 1661
23:               blt          a3, s5, 30f
                  srl          s11, s2, s2
                  auipc        s8, 170999
                  beq          s8, s0, 30f
                  srl          gp, s3, s3
                  sra          a5, s7, t5
                  slti         s1, sp, -734
30:               slt          t4, tp, gp
                  sub          zero, a2, t2
                  add          s8, sp, t3
                  sltu         a4, s4, s2
                  add          s5, s1, t3
                  add          ra, a4, a4
                  ori          a3, sp, 20
                  add          t3, s6, s1
                  slt          s4, s2, s3
                  sra          tp, a3, a2
                  addi         s8, t6, 420
                  bne          t0, s1, 57f
                  xori         a3, sp, -924
                  xori         a5, a6, -1199
                  la           sp, region_1+1864 #start riscv_load_store_rand_instr_stream_0
                  srli         t0, t6, 12
                  lh           a2, -248(sp)
                  andi         s1, s5, 892
                  sub          t5, s3, s1
                  sb           sp, -2(sp)
                  srl          gp, s5, s11
                  lbu          a0, 124(sp)
                  add          s6, s1, t3
                  nop
                  slli         a6, s2, 15
                  slli         s6, s7, 4
                  and          s7, s2, t6
                  sra          s0, sp, t0
                  or           t1, s10, t3
                  lbu          tp, 74(sp)
                  lb           t1, -169(sp)
                  sll          s7, s8, s0
                  slli         t6, a0, 18
                  and          a4, s5, s1
                  lbu          s4, 109(sp)
                  lb           s4, -33(sp)
                  slti         tp, s6, -588
                  ori          s10, s3, 1338
                  sb           s10, -83(sp)
                  ori          a2, t4, 355
                  lbu          s10, -50(sp)
                  lbu          s4, -16(sp)
                  and          s4, t3, zero
                  srli         t2, s1, 24
                  sra          t3, a7, a2
                  nop
                  sh           s4, -176(sp)
                  slli         t5, a1, 2
                  or           t5, s1, t5
                  lbu          a6, 94(sp)
                  andi         t5, a4, 211
                  lui          a5, 922955
                  lb           a3, -121(sp)
                  lbu          gp, -101(sp)
                  lui          a6, 427948
                  nop
                  lbu          a3, 15(sp) #end riscv_load_store_rand_instr_stream_0
                  slli         tp, s0, 8
                  sub          s4, s11, s0
                  slti         s10, tp, 1830
                  add          t4, a0, t2
                  andi         s0, zero, -1529
                  bge          t4, s4, 55f
                  srl          s11, s9, s9
                  nop
                  or           a2, a0, s11
                  lui          t3, 740948
                  bne          s8, s9, 55f
55:               xori         t2, t5, -1432
                  bne          gp, s4, 70f
57:               or           a4, a7, t2
                  andi         s6, zero, 1360
                  bge          a5, s1, 69f
                  or           s10, a6, s1
                  srl          t3, t4, t0
                  sra          tp, gp, tp
                  auipc        t6, 621135
                  nop
                  srai         t1, tp, 4
                  slli         a5, a4, 18
                  slt          s0, a2, t3
                  sltiu        a3, t6, 1697
69:               nop
70:               sltiu        t1, t4, -1201
                  xor          t1, s3, sp
                  sltu         a2, s9, s9
                  add          a6, t0, s3
                  bgeu         a5, t6, 77f
                  auipc        a2, 445728
                  srli         a6, s6, 25
77:               auipc        a5, 556900
                  ori          s7, s1, -186
                  slt          zero, zero, a7
                  srl          tp, s6, tp
                  srli         s1, a5, 11
                  auipc        s8, 111022
                  sub          t3, a1, s6
                  xor          a7, s3, t0
                  sltiu        gp, s2, -1273
                  and          t1, a1, s1
                  auipc        t2, 961265
                  addi         ra, a1, -461
                  blt          s10, a0, 105f
                  xor          t1, s1, a0
                  add          s10, sp, a1
                  sra          a7, s9, t4
                  bgeu         a7, a5, 105f
                  sltu         a6, zero, s5
                  add          a7, s11, a3
                  lui          s4, 648533
                  sltu         a1, tp, s0
                  bge          t3, t1, 115f
                  slti         t6, tp, 2015
                  auipc        t6, 917522
                  ori          s8, a4, -1705
                  sltu         a7, sp, s3
                  sub          t3, t5, s7
                  bgeu         s5, s4, 108f
105:              sll          a1, s2, t4
                  andi         a6, sp, 754
                  ori          t2, t0, 331
108:              slli         s10, ra, 22
                  beq          s4, s1, 119f
                  slti         s4, s1, 983
                  ori          a6, t4, 37
                  nop
                  srli         a0, t5, 30
                  ori          a4, s9, 378
115:              nop
                  bge          s4, s8, 133f
                  bge          ra, zero, 130f
                  add          s8, s4, tp
119:              srl          zero, a3, zero
                  bne          s1, zero, 134f
                  xori         zero, s0, -81
                  sub          s11, s7, s2
                  addi         s4, a5, -1997
                  sltu         s5, s2, t4
                  srl          t4, a2, a2
                  andi         s5, a2, -461
                  blt          a2, s7, 140f
                  sltu         s0, tp, s8
                  sub          s0, s6, s6
130:              addi         tp, s6, -1544
                  bge          s11, tp, 140f
                  lui          t5, 347170
133:              bne          a7, a4, 140f
134:              blt          a6, t3, 140f
                  andi         s1, a4, 2013
                  bge          a0, s6, 140f
                  bne          a3, s10, 140f
                  xor          a0, a2, a7
                  and          a4, s4, t1
140:              srai         s8, gp, 29
                  lw           t3, 4(s2)
                  auipc        a5, 836325
                  slti         t6, s0, 1776
                  srl          a4, s4, t4
                  addi         s2, s2, 60
                  lui          s1, 592790
202:              addi x13, x28, 1
202:              jalr x13, x13, 0
sub_2:            sll          s11, s11, a6
                  addi         s2, s2, -56
                  sra          s11, t3, t3
                  and          t2, sp, s7
                  xor          s4, zero, a6
                  or           s8, a6, t6
                  nop
                  srl          s5, s4, t1
                  sw           t3, 4(s2)
                  sltiu        tp, s7, 1287
                  andi         t5, a4, -1407
                  bgeu         s7, zero, sub_2_j4 #branch to jump instr
                  ori          t5, s9, 535
                  xor          s4, s11, zero
                  sub          gp, s0, s2
                  addi         a4, s10, -17
                  or           t4, s4, s4
                  xori         a2, s7, -472
                  xor          gp, a0, a6
sub_2_j4:         jal          t3, sub_3 #jump sub_2 -> sub_3
                  la           tp, region_1+587 #start riscv_load_store_rand_instr_stream_1
                  or           s5, s7, s3
                  sb           s5, -33(tp)
                  lbu          t5, 54(tp)
                  sh           a2, 21(tp)
                  lb           s11, 5(tp)
                  ori          sp, a0, -12
                  srl          s11, ra, s1
                  sb           s11, 26(tp)
                  lbu          gp, 40(tp)
                  lb           s5, 63(tp)
                  lui          a1, 556201
                  lbu          ra, -44(tp)
                  add          a3, t3, s2
                  or           zero, sp, t3
                  lb           t2, 32(tp)
                  lh           t1, 3(tp)
                  andi         ra, a1, 1589
                  lbu          sp, 6(tp)
                  lb           s8, 40(tp)
                  sll          s0, s11, zero
                  lh           a5, 37(tp)
                  lh           t0, 15(tp)
                  slti         t1, s2, -1125
                  ori          a1, zero, 918
                  sb           a5, 25(tp)
                  lhu          a2, -63(tp)
                  lbu          a1, 64(tp)
                  lb           a2, -42(tp)
                  lbu          t6, 0(tp)
                  lh           t4, 27(tp)
                  sltiu        s0, s4, 682
                  lbu          t6, -56(tp)
                  lbu          a2, -24(tp)
                  sb           tp, 13(tp)
                  sb           a0, -26(tp)
                  sltu         a5, s5, a4
                  srli         s7, sp, 21
                  sb           s9, 56(tp)
                  srli         a3, s9, 7
                  sltu         ra, ra, s9
                  lbu          sp, 38(tp)
                  sh           s7, -27(tp)
                  sh           s9, -43(tp)
                  andi         a5, s7, 678
                  sll          s7, a0, ra
                  lbu          a2, -53(tp)
                  lbu          s1, -24(tp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1416 #start riscv_load_store_rand_instr_stream_2
                  lbu          t5, -318(sp)
                  sub          a4, a1, a6
                  xori         a0, s11, -1866
                  slti         t5, a0, 48
                  lhu          t0, -238(sp)
                  sra          s8, s5, t6
                  auipc        a2, 566138
                  slti         t0, s7, 885
                  sltu         t0, t5, gp
                  andi         s0, a2, -667
                  addi         a7, s11, -1074
                  sw           s7, -784(sp)
                  andi         gp, sp, 412
                  lb           t0, -639(sp)
                  sltiu        a4, t0, 1267
                  slt          s7, zero, zero
                  or           t6, a3, a1
                  lhu          t3, -522(sp)
                  or           s4, sp, t0
                  add          t2, t3, sp
                  xor          s6, s4, s1
                  sub          a4, a4, a7
                  addi         s7, s7, 1468
                  lhu          tp, 146(sp)
                  lb           t1, -1234(sp)
                  lhu          a7, 344(sp)
                  lbu          s4, -786(sp)
                  lui          s4, 837319
                  srai         t1, a1, 25
                  lbu          s1, 381(sp)
                  sltu         s6, s9, a1
                  srli         t0, s0, 10
                  sw           t2, -280(sp)
                  sub          a7, t6, s11
                  auipc        t1, 672767
                  sll          a0, s6, t2
                  sw           s2, 164(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+1373 #start riscv_load_store_rand_instr_stream_0
                  andi         a6, s6, 1240
                  sll          s8, a1, gp
                  lbu          gp, -43(s0)
                  sh           t3, 217(s0)
                  sb           a7, 246(s0)
                  lbu          a4, -138(s0)
                  lh           s8, -131(s0)
                  sltiu        ra, s1, 1422
                  sra          t4, t4, s8
                  srli         s4, a6, 8
                  addi         sp, s10, -853
                  sra          t3, gp, t2
                  lw           s6, -141(s0)
                  sltiu        t1, s5, -457
                  lbu          t4, -14(s0)
                  and          sp, s4, s0
                  lbu          sp, -168(s0)
                  lhu          s11, -127(s0)
                  nop
                  slti         t6, s0, 469
                  xori         ra, a7, 177
                  sub          a6, t4, s3
                  lbu          t6, 142(s0)
                  lb           s6, 62(s0)
                  xor          s4, sp, t1
                  andi         t4, t5, -713
                  srl          t0, s9, s10
                  auipc        sp, 363539
                  lbu          t0, -137(s0)
                  xor          sp, t6, s10
                  lbu          a5, 50(s0)
                  lbu          s1, 115(s0)
                  sb           s4, -208(s0)
                  lbu          s11, 56(s0)
                  or           a6, s2, s4
                  ori          a5, zero, 226
                  sb           a5, 132(s0)
                  or           s4, a4, a3
                  lb           a7, -122(s0)
                  srl          s8, t5, a0
                  lb           a7, 60(s0)
                  slli         t5, s2, 12
                  lbu          a2, 153(s0)
                  sltiu        s10, a3, -374
                  nop
                  sb           a2, -76(s0)
                  lw           a7, 79(s0)
                  lb           s5, -25(s0)
                  lb           a2, 66(s0)
                  lbu          t3, -150(s0)
                  srl          s8, t1, t6
                  andi         a7, s10, -940
                  lbu          a1, 113(s0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+34 #start riscv_load_store_rand_instr_stream_4
                  lbu          a6, 361(sp)
                  lb           t6, 601(sp)
                  sltu         s8, t3, a4
                  slt          s0, a0, a6
                  nop
                  sltu         ra, s9, a4
                  lui          s8, 562492
                  sb           s8, 778(sp)
                  sltiu        a5, s1, -47
                  sll          tp, s9, s5
                  ori          a4, a3, -720
                  srai         s11, t2, 8
                  xor          a4, t5, tp
                  sltiu        t3, zero, -874
                  lbu          t6, 1669(sp)
                  lui          s7, 738368
                  sub          s10, s6, zero
                  sub          t1, s2, ra
                  lbu          t5, 291(sp)
                  lb           gp, 1787(sp)
                  sb           s10, 1555(sp)
                  srl          s0, s7, a4
                  andi         tp, s5, 1801
                  slt          s0, a2, a2
                  xor          a2, t2, a1
                  slt          a1, tp, s1
                  sb           s10, 1129(sp)
                  add          a5, a1, s9
                  lbu          t3, 1213(sp)
                  sub          ra, a5, s4
                  lb           t2, 35(sp)
                  srl          s10, s3, t2
                  andi         t1, tp, 56
                  sra          s1, a7, s0
                  slti         ra, s2, -869
                  slti         a7, a1, 1839
                  nop
                  or           a2, s3, t5
                  sb           s9, 368(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1685 #start riscv_load_store_rand_instr_stream_3
                  lui          a7, 447728
                  add          s4, ra, sp
                  srai         s1, a6, 29
                  slt          t1, a7, t1
                  lb           t4, -3(sp)
                  slti         a2, zero, -958
                  sb           a4, -11(sp)
                  sb           a4, -8(sp)
                  lbu          a3, 7(sp)
                  lbu          t0, 6(sp)
                  sw           a4, -5(sp)
                  srai         t4, s2, 5
                  xor          s0, t3, s0
                  lb           s4, 12(sp)
                  sltu         t4, a3, a7
                  lbu          t6, 12(sp)
                  lw           s10, -9(sp)
                  sb           t5, -13(sp)
                  lh           s8, 15(sp)
                  sh           s5, -13(sp)
                  lw           a7, 7(sp)
                  sb           a6, -5(sp)
                  slti         zero, t3, 389
                  ori          t6, s5, 1056
                  lh           t4, -13(sp)
                  sb           s10, 2(sp)
                  xor          t0, a7, zero
                  andi         a3, a0, -1962
                  sb           s0, -6(sp) #end riscv_load_store_rand_instr_stream_3
                  beq          a3, s1, 13f
                  slli         s0, s5, 4
                  auipc        sp, 75213
                  bgeu         t6, zero, 5f
                  sra          a6, s7, s4
5:                srai         a3, s3, 27
                  slti         t2, s11, 698
                  bge          s7, s0, 18f
                  slti         a3, gp, -866
                  auipc        t5, 547455
                  sll          a4, a6, s1
                  sll          t1, gp, s5
                  bne          s0, zero, 21f
13:               slti         t5, s3, -1497
                  blt          sp, zero, 18f
                  srai         ra, s9, 10
                  beq          t6, a7, 35f
                  xor          s11, s7, a5
18:               xori         s5, sp, 1548
                  bge          s6, s11, 24f
                  slli         t4, a1, 15
21:               slli         gp, s6, 9
                  blt          a2, t1, 35f
                  bltu         s1, s8, 38f
24:               andi         s0, t4, 897
                  slt          t5, s2, a5
                  sltu         s11, s3, s11
                  bne          s6, tp, 32f
                  nop
                  auipc        s11, 344112
                  sra          t2, a6, zero
                  sltu         s6, a4, s11
32:               sltiu        a1, s10, -1920
                  auipc        gp, 301741
                  ori          a2, t4, 1623
35:               slt          t3, s1, zero
                  sra          s11, s0, t3
                  srl          sp, a4, a2
38:               add          a2, s10, s7
                  xori         sp, a4, -853
                  srli         a2, s8, 12
                  xori         a2, s2, -1131
                  bgeu         a2, ra, 49f
                  srli         s11, s6, 8
                  bge          zero, zero, 56f
                  srli         a1, t1, 18
                  lui          t4, 287033
                  slli         s7, a1, 24
                  sra          t3, t5, s8
49:               srli         s4, a1, 13
                  beq          sp, t6, 55f
                  ori          s10, a5, -708
                  bgeu         s3, s11, 67f
                  srli         a7, t0, 23
                  beq          s7, s10, 56f
55:               addi         zero, gp, -1135
56:               add          a0, s11, a3
                  bne          t6, tp, 72f
                  srai         s11, a7, 4
                  addi         a2, sp, 978
                  ori          ra, a0, -800
                  lui          s10, 1006208
                  nop
                  sub          zero, s11, a5
                  auipc        gp, 646066
                  auipc        a5, 93541
                  andi         s11, s3, -1218
67:               sll          t5, a0, t1
                  xori         a5, s7, -392
                  slt          t4, t2, s10
                  sltiu        tp, s3, -993
                  bne          a7, s0, 87f
72:               ori          t1, a2, 1299
                  sra          s4, s2, s9
                  sra          gp, s3, s0
                  slt          t1, s5, a0
                  bge          t2, t2, 84f
                  srl          t4, t4, s10
                  slli         t4, s0, 12
                  slt          t4, a3, s8
                  xor          t5, s10, s2
                  slli         a1, s10, 27
                  srai         s7, t6, 18
                  and          s11, t0, a7
84:               slti         a1, a5, -1235
                  srli         s1, a5, 19
                  sltu         t3, ra, a5
87:               xor          t4, a4, t6
                  sll          a3, a0, s10
                  beq          t3, t2, 109f
                  addi         a5, ra, -399
                  lui          s11, 909001
                  sltiu        t2, s10, -689
                  lui          t3, 846275
                  srl          a5, a6, a1
                  ori          tp, a0, -2023
                  srli         s7, t5, 21
                  xor          t5, a1, a4
                  sltiu        t5, a1, 1257
                  bge          ra, s7, 113f
                  xori         a5, t3, -293
                  bge          s11, ra, 105f
                  xor          a2, a0, t1
                  srl          a6, t1, s1
                  slti         a5, s1, -71
105:              slt          s1, a1, s4
                  sub          tp, s8, s5
                  add          a6, gp, gp
                  xori         t1, s11, -1784
109:              srl          t1, s2, t1
                  addi         a3, s7, 1901
                  bne          s10, s10, 123f
                  sll          t4, t2, s1
113:              or           a7, a1, a7
                  auipc        gp, 480669
                  ori          s4, s3, -1523
                  xor          t4, s6, t5
                  andi         s1, t2, 774
                  bgeu         s3, a3, 132f
                  sll          s11, t2, s2
                  bgeu         s1, gp, 124f
                  srl          zero, t0, a0
                  nop
123:              slli         ra, ra, 13
124:              beq          s2, sp, 137f
                  slli         s1, t5, 30
                  sra          a1, a5, a2
                  bge          a2, t0, 129f
                  bltu         t3, t2, 129f
129:              srli         t3, t5, 23
                  xori         ra, sp, 648
                  xori         a4, s7, -1836
132:              add          s5, s4, a7
                  beq          t6, a6, 139f
                  addi         a0, s1, -1672
                  sltiu        gp, t5, 782
                  ori          a4, t1, -932
137:              add          a1, a7, s3
                  beq          s6, a7, 146f
139:              slli         a4, t0, 20
                  sub          sp, sp, ra
                  blt          s8, a0, 146f
                  ori          a3, t0, 614
                  xori         ra, s1, 1366
                  sltu         ra, s6, t1
                  sltiu        s7, a4, -1909
146:              srai         s1, sp, 27
                  xori         gp, sp, -1727
                  sltu         t0, ra, t4
                  sub          a1, a7, s6
                  blt          t3, s8, 154f
                  add          a1, t0, s0
                  sltiu        tp, a2, -762
                  add          ra, t1, t5
154:              sra          t4, a2, a5
                  beq          s10, s9, 159f
                  srai         a7, s8, 28
                  srl          tp, a2, s6
                  bltu         s7, zero, 170f
159:              srli         s1, t3, 1
                  srai         tp, s1, 12
                  and          t4, s5, gp
                  srl          t1, s4, s0
                  beq          gp, t4, 178f
                  bltu         s1, sp, 177f
                  slli         a0, s2, 17
                  or           t0, s4, a6
                  sub          a4, t0, t4
                  bge          a1, a5, 176f
                  or           a1, t5, s9
170:              slt          s7, s6, tp
                  slt          a7, s8, s7
                  auipc        s1, 287529
                  or           t3, zero, s4
                  ori          s8, t4, 221
                  blt          a2, s11, 181f
176:              lui          gp, 902437
177:              srl          a3, t4, t2
178:              bge          s4, a7, 179f
179:              slli         a3, s3, 31
                  addi         a0, s9, 949
181:              srli         gp, a6, 9
                  slli         a5, s4, 16
                  and          t1, s0, s3
                  ori          a3, a6, -349
                  addi         s7, a4, -847
                  and          a4, s10, s10
                  sltiu        a4, s8, -948
                  sltu         t1, zero, s7
                  slt          t2, s5, a5
                  blt          a0, s0, 204f
                  blt          t0, t1, 207f
                  andi         a7, ra, -200
                  or           a7, s11, t1
                  add          t3, s5, ra
                  bne          s5, ra, 197f
                  bgeu         s11, s0, 201f
197:              or           a6, s0, a2
                  andi         t1, s1, 1611
                  srli         s7, a5, 7
                  lui          t2, 402818
201:              slli         t5, t5, 20
                  beq          s6, s4, 214f
                  srli         s10, t3, 29
204:              andi         a6, t3, -1592
                  slti         t3, a7, -1849
                  blt          t6, s7, 220f
207:              beq          t3, gp, 212f
                  bgeu         t6, a5, 210f
                  slti         s5, a7, 1209
210:              beq          zero, s9, 212f
                  bltu         s3, a3, 226f
212:              bge          s7, a7, 216f
                  ori          t4, sp, -622
214:              bgeu         s3, s6, 222f
                  slti         a3, t4, -455
216:              auipc        s10, 524913
                  andi         a1, s3, -963
                  add          ra, s11, a2
                  bne          s0, a3, 234f
220:              srl          s11, t2, s1
                  sra          t0, a2, s2
222:              nop
                  srli         t0, a4, 13
                  bltu         a7, s4, 229f
                  beq          s1, t3, 236f
226:              bne          t6, s5, 246f
                  ori          s7, s1, 1888
                  bge          t3, a1, 235f
229:              or           s6, s11, s3
                  slti         s0, a7, 1393
                  sll          s0, t4, a7
                  srli         tp, t2, 24
                  sltiu        sp, a0, -605
234:              sra          a4, s8, a0
235:              blt          s11, a2, 248f
236:              beq          ra, tp, 241f
                  beq          a0, s10, 250f
                  srli         s0, t5, 10
                  xor          a0, t0, t3
                  slti         t6, s11, 802
241:              add          a7, a5, t0
                  xor          a4, s2, t1
                  blt          a5, tp, 262f
                  sltiu        t1, a0, -1410
                  beq          a2, a2, 254f
246:              bltu         a2, ra, 259f
                  bgeu         a5, t4, 263f
248:              andi         a3, s1, 335
                  bge          a3, s3, 250f
250:              xori         a1, t0, 1725
                  bgeu         a6, a0, 266f
                  srl          a6, a3, s6
                  slt          a5, a3, s2
254:              andi         a3, s3, 1071
                  sra          a3, zero, s1
                  blt          a3, t4, 269f
                  sltiu        t3, t1, 1224
                  bge          a4, a7, 272f
259:              sltu         s6, sp, t2
                  sub          t6, t1, a3
                  bne          t5, a4, 275f
262:              ori          s0, t5, 1321
263:              slli         s4, a3, 2
                  beq          s9, s6, 266f
                  xori         s4, a5, 1737
266:              sra          a5, a3, t0
                  srl          s7, a7, t4
                  sltu         a5, s9, t3
269:              xori         t3, s8, -273
                  sltiu        t2, t3, -672
                  bge          zero, a5, 277f
272:              nop
                  bge          s6, s4, 278f
                  bltu         a0, a3, 287f
275:              lui          s8, 806096
                  auipc        s10, 134930
277:              sub          s7, a4, s6
278:              srli         a5, s11, 15
                  sltu         a5, a7, s5
                  bge          t6, t1, 292f
                  srai         s4, t6, 5
                  sub          ra, s7, s10
                  bge          a3, t6, 298f
                  beq          t4, s4, 292f
                  srl          s6, a6, t6
                  xori         s10, zero, 1459
287:              sll          s4, t3, t3
                  auipc        s4, 521798
                  slt          t1, s10, s9
                  addi         s5, t0, 1963
                  add          a0, tp, ra
292:              sltiu        t0, s3, 265
                  xori         s4, s1, 2006
                  lui          s5, 694598
                  auipc        t5, 52446
                  or           s8, s8, tp
                  sll          s6, t1, s2
298:              addi         s8, s4, -973
                  slti         s11, a6, -95
                  add          s4, s0, a2
                  nop
                  bge          s10, t5, 304f
                  slli         s6, t5, 22
304:              sltiu        a0, t1, -583
                  beq          s3, s9, 309f
                  bltu         a7, t6, 326f
                  ori          s4, a7, -466
                  beq          zero, s9, 312f
309:              nop
                  slt          sp, a2, s3
                  add          s8, s3, s10
312:              sltiu        zero, a5, -668
                  srl          a1, sp, s1
                  sra          t0, a0, s10
                  bne          t0, s6, 323f
                  xori         gp, s8, 1076
                  srli         sp, s9, 15
                  beq          gp, t3, 337f
                  xori         t0, s8, -505
                  bge          t0, s4, 329f
                  xor          a2, a2, a4
                  sra          a3, s9, a4
323:              auipc        gp, 543458
                  srli         s7, a5, 12
                  srai         a6, t2, 0
326:              lui          a6, 932637
                  srli         a4, a0, 17
                  beq          tp, s3, 335f
329:              sra          t4, t0, sp
                  or           ra, s10, s11
                  add          sp, s5, s7
                  slti         t0, ra, 1510
                  slli         t1, a1, 10
                  lui          t5, 36009
335:              add          t0, t2, s4
                  slti         a3, tp, -573
337:              slli         t6, ra, 13
                  xor          s1, sp, gp
                  add          a0, t2, tp
                  addi         s8, s6, 631
                  beq          s1, a4, 346f
                  srl          a3, s7, zero
                  sub          ra, s9, s10
                  xor          a1, a0, a1
                  andi         t4, a2, -858
346:              bgeu         gp, s3, 350f
                  slti         t5, s1, 1130
                  sub          s5, a0, t1
                  srai         t0, a3, 31
350:              bltu         t1, s8, 352f
                  slt          gp, a3, a3
352:              add          s4, zero, t5
                  lui          s10, 189460
                  srai         s8, ra, 6
                  nop
                  slli         t0, a4, 30
                  slt          s11, a6, a7
                  blt          t4, a3, 373f
                  sltiu        t0, tp, -102
                  xor          sp, s11, s10
                  srli         a5, t0, 19
                  slt          t2, s4, t5
                  slt          t3, s5, s3
                  slt          a3, s1, a3
                  sltiu        s1, a0, -698
                  add          s0, zero, a2
                  srai         t6, s7, 5
                  bge          t4, t3, 373f
                  slli         t4, s4, 30
                  and          t1, t1, t5
                  slli         s7, a1, 1
                  srai         s6, s4, 7
373:              srli         t6, zero, 5
                  bge          t1, a3, 385f
                  andi         s8, s11, -1386
                  sltu         t3, t3, ra
                  xor          gp, a2, s6
                  and          s4, a6, a0
                  slt          t5, s0, s10
                  sltu         t1, s5, a5
                  or           t6, a1, s4
                  sltu         a6, sp, s1
                  srli         t1, gp, 23
                  srli         t2, s5, 5
385:              sra          t4, t6, s0
                  beq          a1, s10, 391f
                  xor          s10, gp, t3
                  blt          t4, a0, 400f
                  ori          t5, a3, 209
                  or           zero, gp, s1
391:              srl          s5, a6, sp
                  slti         a4, gp, -987
                  addi         t1, s4, -622
                  ori          sp, s0, -1810
                  sub          a0, s6, a0
                  srl          s6, a5, a3
                  xor          t4, t3, s2
                  blt          zero, gp, 402f
                  srli         tp, t0, 25
400:              xori         t1, s5, -1113
                  nop
402:              sltu         sp, s11, a1
                  srli         a7, t5, 24
                  nop
                  slti         t6, a1, 226
                  bltu         s3, zero, 421f
                  andi         s4, a3, -332
                  srai         t3, t4, 28
                  slli         t5, s7, 4
                  bne          t4, gp, 426f
                  bltu         a7, a0, 424f
                  or           a7, sp, a4
                  or           s5, a5, s8
                  sra          t5, s10, a7
                  la           t3, sub_3
                  srli         sp, s3, 17
                  addi         t3, t3, 142
                  auipc        s0, 315695
                  sll          a0, s4, a3
                  xori         s5, s4, 982
                  sll          t0, s7, s10
sub_2_j3:         jalr         t3, t3, -142 #jump sub_2 -> sub_3
                  bltu         t1, s2, 421f
                  slli         a3, t5, 14
                  xori         a2, a3, 436
                  xor          t0, s2, a2
                  sub          t1, t2, a1
                  add          t1, a2, t4
                  sub          t4, s0, s10
                  bgeu         a5, t3, 424f
                  bge          a3, s9, 439f
421:              xor          t0, s4, s3
                  srai         s4, s6, 31
                  sra          sp, a2, a5
424:              xor          s5, t6, a2
                  srli         ra, t2, 9
426:              srli         s8, s6, 24
                  bge          zero, a2, 440f
                  auipc        a6, 677872
                  blt          t5, t0, 433f
                  addi         t3, s3, 1404
                  slti         s0, t6, 923
                  xori         a2, s11, -970
433:              sll          t1, s10, a6
                  blt          sp, s3, 449f
                  srl          ra, t2, a4
                  srl          s1, zero, t1
                  blt          s1, a1, 444f
                  addi         t4, t5, 429
439:              or           a7, s2, s1
440:              sltiu        s0, t2, -1291
                  slli         s10, a4, 18
                  and          t6, t1, a0
                  sub          ra, t2, t3
444:              and          zero, s2, t4
                  sll          sp, zero, a5
                  sltiu        a0, ra, 560
                  sub          t0, gp, s0
                  xor          gp, gp, s0
449:              add          t4, t5, gp
                  and          zero, s8, ra
                  srl          t0, s9, s5
                  and          s1, s10, tp
                  bltu         s9, t4, 467f
                  bge          a2, a0, 455f
455:              xori         t5, s7, -1802
                  srli         s0, s5, 20
                  slt          zero, s1, a6
                  addi         t3, s3, 1427
                  sra          tp, s2, a2
                  xori         t2, s0, -1528
                  addi         s4, s6, -1455
                  add          sp, s2, t5
                  or           ra, a6, t6
                  slt          a7, s10, t4
                  xori         s5, a3, 1133
                  srai         s6, t2, 24
467:              beq          a6, s7, 472f
                  bgeu         a6, a6, 474f
                  or           a7, a7, tp
                  or           s10, s5, s4
                  sub          s8, a1, a0
472:              or           a1, s5, a4
                  bgeu         s0, s3, 485f
474:              slti         s1, a3, 964
                  nop
                  sltu         s4, s10, t5
                  bne          t0, zero, 490f
                  andi         s8, a7, 1700
                  ori          s5, a6, 167
                  bge          sp, s8, 484f
                  slti         tp, gp, 719
                  ori          t5, s6, -1661
                  sra          sp, a3, a0
484:              sub          a1, s1, sp
485:              sub          t2, a7, a4
                  sltu         t5, sp, tp
                  ori          ra, t4, 16
                  addi         s6, a3, 1745
                  lui          t6, 567631
490:              addi         s7, a4, 1249
                  bne          a7, s4, 511f
                  srli         s11, s0, 5
                  srl          a3, s4, s2
                  srai         a0, s9, 8
                  and          a5, t1, t2
                  beq          s7, s0, 498f
                  sltu         zero, s4, t1
498:              addi         t0, s6, -867
                  or           a4, a3, s7
                  or           t5, a7, s10
                  sub          s5, a6, s0
                  beq          s6, t5, 507f
                  xori         t5, sp, 505
                  sra          a4, t3, t2
                  slt          s11, t4, a3
                  lui          a3, 474124
507:              bltu         a1, a1, 515f
                  bne          a4, t5, 519f
                  beq          t2, s8, 511f
                  ori          t2, s8, -691
511:              srli         t3, sp, 10
                  sltiu        s6, a6, 1319
                  beq          t4, s6, 521f
                  add          a5, s1, t0
515:              srai         sp, t3, 7
                  bltu         s1, a6, 521f
                  ori          s6, t4, 916
                  blt          s8, gp, 530f
519:              srli         s7, sp, 14
                  nop
521:              bge          t3, s9, 536f
                  xor          s4, t3, s4
                  bgeu         t5, a2, 525f
                  sra          s6, sp, s10
525:              sltu         a0, a7, s5
                  beq          t5, t3, 540f
                  add          gp, t0, a4
                  andi         sp, s2, 40
                  bne          a4, a1, 538f
530:              sra          s11, gp, a6
                  addi         s0, s6, -265
                  andi         a4, s9, -1049
                  addi         t2, a3, 552
                  bge          a3, zero, 540f
                  srai         a6, t6, 0
536:              ori          s5, s5, 17
                  xori         t2, a2, -65
538:              slli         tp, s9, 10
                  add          s4, a3, a0
540:              beq          t1, t2, 554f
                  bne          a5, a6, 545f
                  xori         zero, t4, -2010
                  sub          t6, t2, s1
                  slli         a6, a1, 30
545:              andi         a1, s6, 1816
                  blt          t5, t3, 551f
                  bne          ra, s10, 562f
                  andi         t6, zero, -1599
                  bgeu         a4, s2, 554f
                  blt          s5, tp, 555f
551:              srl          s5, s2, s0
                  sra          t0, t2, s7
                  sll          a5, s1, a5
554:              ori          a3, t1, -1495
555:              slli         zero, t6, 13
                  bge          a2, s6, 572f
                  nop
                  bge          a7, s5, 573f
                  slli         t0, a3, 22
                  bgeu         s8, s8, 561f
561:              ori          tp, t5, 2001
562:              and          a2, a6, a7
                  auipc        a5, 370917
                  andi         t5, a1, 2003
                  bne          s4, s1, 567f
                  nop
567:              bge          s3, tp, 586f
                  beq          sp, a0, 582f
                  sltiu        zero, t3, -213
                  slli         a5, t5, 19
                  and          a0, s5, tp
572:              add          a7, t1, s3
573:              sll          t0, a7, s9
                  bge          sp, a2, 585f
                  xori         sp, tp, -1382
                  bltu         t2, s6, 581f
                  add          t6, s4, s3
                  srli         s4, s1, 28
                  add          t3, a6, s8
                  andi         s11, t2, 885
581:              xor          t1, a5, s9
582:              slli         t6, s6, 21
                  sub          s8, s10, t6
                  slt          s10, s6, s7
585:              addi         s10, s7, 1158
586:              srli         a3, s1, 13
                  ori          s6, a1, 2000
                  bne          a0, t1, 600f
                  sub          tp, t5, a6
                  and          a0, t5, t5
                  xor          s6, t0, t1
                  xor          zero, a0, s1
                  slti         t3, ra, 1125
                  xori         t1, a0, -608
                  sltu         t3, a6, a3
                  nop
                  lui          t5, 60879
                  sll          t6, t3, a0
                  nop
600:              srl          a3, sp, s5
                  andi         a3, ra, 1258
                  nop
                  srl          s5, t4, ra
                  bgeu         t1, s1, 612f
                  nop
                  bgeu         s3, s6, 610f
                  andi         a4, sp, -998
                  or           ra, zero, s0
                  lui          a3, 604020
610:              andi         s7, a4, -1592
                  and          a1, zero, s9
612:              sll          s6, a1, s8
                  sub          a1, a4, s0
                  add          s4, s11, s5
                  srai         a6, a2, 27
                  xori         a2, s3, 1589
                  bltu         a0, s4, 625f
                  ori          sp, s6, -274
                  srl          tp, t2, s6
                  sra          t5, ra, a0
                  bne          s8, sp, 634f
                  slti         t2, s10, 642
                  slt          a0, s11, zero
                  ori          s8, zero, 589
625:              sra          s0, a2, s2
                  slli         s4, t5, 6
                  xori         a4, a2, 726
                  bgeu         a3, s6, 630f
                  blt          s8, t5, 631f
630:              xor          t3, a7, a7
631:              sra          tp, t0, ra
                  blt          a1, t6, 652f
                  addi         zero, zero, 1338
634:              bne          t2, t0, 647f
                  sltiu        gp, zero, 1061
                  slt          t0, s10, a6
                  sltu         a2, t5, s3
                  srli         a2, s6, 6
                  lui          tp, 330853
                  sltiu        zero, t6, 1623
                  xor          s0, s7, a1
                  srl          a3, t6, t6
                  sll          a0, ra, s11
                  add          s1, a0, t6
                  xor          s1, a5, a7
                  xori         s11, s0, 463
647:              beq          a1, a4, 653f
                  sltiu        s0, s9, -1171
                  xor          a3, s2, s7
                  auipc        a4, 1043704
                  sub          s4, sp, a3
652:              beq          t6, t5, 653f
653:              add          sp, t6, a0
                  auipc        s6, 547134
                  sub          tp, a5, a7
                  sltiu        t4, sp, -758
                  ori          a5, a6, -1404
                  add          sp, a1, s1
                  lw           t3, 4(s2)
                  addi         s2, s2, 56
                  slti         s6, s4, -203
903:              addi x31, x28, 1
903:              jalr x31, x31, 0
sub_1:            beq          a3, s6, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -48
                  sll          s6, ra, s0
                  sub          t1, s11, t5
                  sw           t3, 4(s2)
                  sltu         a7, s9, t2
                  slti         tp, a3, 1780
                  srl          a7, s11, s11
                  sra          t4, s7, s10
                  srai         zero, tp, 16
                  srli         ra, a1, 27
                  add          s6, t3, a0
                  xor          a2, s11, s5
                  slti         s4, s11, 540
sub_1_j2:         jal          t3, sub_2 #jump sub_1 -> sub_2
                  and          t5, s10, s9
                  bne          s11, tp, 21f
                  sub          s11, s5, s8
                  slti         t2, t6, 404
                  xor          s5, gp, s2
                  ori          t2, s10, -194
                  andi         s10, s7, -1891
                  sll          s11, a0, tp
                  bgeu         a1, s3, 25f
                  sra          sp, s1, a7
                  slti         a0, ra, 983
                  blt          a6, t1, 25f
                  or           s0, sp, t2
                  add          t3, s1, s9
                  beq          s7, t4, 34f
                  bltu         s9, t2, 23f
                  sub          tp, a4, a5
                  sltu         a5, s0, s8
                  addi         s7, s10, -1965
                  andi         gp, t0, 838
                  sub          t1, s5, s10
21:               beq          s11, a2, 26f
                  nop
23:               lui          s10, 652346
                  sltu         a6, a6, a7
25:               nop
26:               addi         t2, s3, 1025
                  andi         s8, a2, 379
                  auipc        a3, 449357
                  andi         t5, a6, 1243
                  lui          a7, 431507
                  sra          tp, t3, s11
                  srl          s6, t6, ra
                  la           s8, region_0+822 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, 47(s8)
                  sb           ra, 181(s8)
                  sll          s10, t5, a3
                  sb           t4, -64(s8)
                  nop
                  sh           t1, 188(s8)
                  sw           s6, 226(s8)
                  lhu          gp, 60(s8)
                  ori          gp, s0, -1441
                  sll          zero, t6, zero
                  ori          ra, s7, -384
                  nop
                  and          s10, t6, t5
                  lbu          gp, 3(s8)
                  lb           s10, 219(s8)
                  sb           zero, -16(s8)
                  lbu          tp, -49(s8)
                  xori         a0, s4, 292
                  lb           s5, 177(s8)
                  lbu          s1, -189(s8)
                  xor          a3, tp, s8
                  lbu          a6, -31(s8)
                  sltu         s5, sp, a2
                  lb           a6, 248(s8)
                  sh           t3, -182(s8)
                  nop
                  sb           a4, 75(s8)
                  sb           a3, 53(s8)
                  lhu          a1, -96(s8)
                  lb           t2, -88(s8)
                  lb           a5, -81(s8)
                  lbu          s10, -229(s8)
                  lbu          t6, -135(s8)
                  lw           s1, -166(s8)
                  sb           s9, -252(s8)
                  sltiu        s11, t2, -218
                  or           a1, s2, s8
                  lb           a1, -26(s8)
                  sb           a0, 43(s8)
                  and          s5, a5, gp
                  lb           a2, 53(s8)
                  lbu          a1, 239(s8)
                  srai         s6, s1, 14
                  sw           a2, -102(s8) #end riscv_load_store_rand_instr_stream_0
                  bltu         zero, ra, 35f
34:               beq          t4, t5, 39f
35:               bge          t5, sp, 41f
                  blt          t4, a1, 49f
                  blt          t6, s10, 38f
38:               beq          a6, t6, 42f
39:               bgeu         a4, s6, 54f
                  lui          s4, 124208
41:               sll          a6, s3, t3
42:               sra          a0, t4, zero
                  beq          s10, s10, 51f
                  slti         a0, a5, -361
                  slt          t6, s5, s4
                  add          a0, ra, t2
                  bgeu         t2, a7, 67f
                  sra          t4, t5, s1
49:               lui          s4, 956087
                  srl          sp, s1, t0
51:               sltiu        a7, gp, -1254
                  srli         t0, a6, 12
                  sub          a0, t3, s6
54:               srli         s6, t1, 14
                  xor          s8, s4, s5
                  sub          zero, s8, s9
                  srai         a4, a0, 12
                  or           t2, s2, a5
                  andi         t4, zero, 1781
                  lui          t4, 624124
                  sltu         a5, s2, s6
                  bge          ra, gp, 76f
                  srai         a7, a2, 18
                  andi         a6, t6, 273
                  bge          gp, tp, 79f
                  slt          t5, a7, s4
67:               srl          s10, s4, t5
                  sub          tp, s7, zero
                  sra          a7, ra, t5
                  bgeu         s2, t4, 71f
71:               bltu         s1, t4, 79f
                  slli         tp, a6, 10
                  srl          a2, s1, s8
                  sltu         gp, a2, s9
                  slti         a2, s2, 1479
76:               bne          a0, s4, 82f
                  lui          a7, 353749
                  bge          t0, a0, 87f
79:               ori          s11, tp, -1064
                  slli         a2, a6, 25
                  beq          a4, a7, 90f
82:               srai         s11, s10, 27
                  bltu         s8, t4, 102f
                  addi         tp, s5, 1996
                  addi         a2, a7, -243
                  blt          s1, s6, 93f
87:               srli         a1, tp, 17
                  sub          s11, a6, t1
                  nop
90:               nop
                  sltiu        ra, s7, 845
                  sra          gp, t4, t6
93:               sra          s7, sp, s9
                  srai         a1, t1, 20
                  sll          a7, s4, s11
                  blt          a4, t2, 99f
                  xori         s1, s5, 391
                  blt          s11, s4, 99f
99:               nop
                  xor          t5, t3, s5
                  slli         s0, t1, 14
102:              and          a7, a0, t4
                  beq          a2, a1, 118f
                  slti         s6, s0, -1079
                  sll          s4, a0, s1
                  add          a6, s5, s7
                  or           tp, zero, gp
                  add          t2, a0, sp
                  slli         t4, sp, 16
                  srl          a3, s9, a5
                  xor          s5, a1, a7
                  sltiu        tp, s6, 239
                  add          gp, t1, t4
                  srl          t3, s8, s10
                  auipc        sp, 66575
                  ori          s4, t6, 1703
                  bgeu         t5, a4, 126f
118:              addi         s8, t4, 753
                  xor          s4, a6, s11
                  xor          t4, t6, s2
                  sll          ra, s9, t3
                  nop
                  bltu         t0, s9, 138f
                  bne          s10, s1, 135f
                  add          s4, s9, t5
126:              blt          t6, s9, 131f
                  srli         t0, s1, 30
                  srli         s11, s9, 10
                  srli         a0, t0, 8
                  lui          tp, 179669
131:              srai         sp, a3, 1
                  lui          t0, 100217
                  or           s11, s2, gp
                  sll          a6, a3, t2
135:              sltu         gp, s6, s3
                  srli         t5, t1, 13
                  sll          t3, s3, a4
138:              sra          a6, a6, s9
                  xori         s6, a7, -548
                  addi         s5, s3, -562
                  sltu         tp, gp, a0
                  srl          a1, s9, s1
                  slti         t5, s1, -1651
                  nop
                  add          s10, s4, s5
                  nop
                  addi         t1, ra, -1945
                  srai         a2, s0, 12
                  sll          a6, t0, a3
                  xori         a1, s7, -376
                  lw           t3, 4(s2)
                  srai         a4, s11, 9
                  srli         a4, t4, 31
                  auipc        s7, 259844
                  add          t6, tp, s1
                  addi         s2, s2, 48
                  addi         a0, t5, 137
218:              addi x5, x28, 0
218:              jalr x5, x5, 0
sub_5:            addi         s2, s2, -32
                  sub          t1, ra, s1
                  sw           t3, 4(s2)
                  sub          s5, t1, t4
                  lui          a3, 963349
                  sltu         a3, ra, s11
                  sltiu        a1, tp, 1059
                  sltiu        s1, t5, 1433
                  sltiu        a2, s7, -130
                  la           s8, sub_7
                  add          s5, t4, s8
                  ori          ra, zero, 1657
                  sltiu        t6, t6, 1530
                  slt          t4, s5, a0
                  addi         s8, s8, 1005
                  bge          t6, t3, sub_5_j7 #branch to jump instr
                  srai         s1, t2, 31
                  auipc        s1, 535009
                  add          t4, s0, ra
sub_5_j7:         jalr         t3, s8, -1005 #jump sub_5 -> sub_7
                  slli         a4, s4, 5
                  sra          gp, t3, s7
                  sll          a6, ra, a0
                  sll          s0, zero, a6
                  xori         a5, ra, 1100
                  sltiu        a5, s8, 230
                  bne          s9, gp, sub_5_j8 #branch to jump instr
                  ori          s5, s7, -1555
                  and          s8, t2, s3
                  sltiu        t4, s0, -1223
sub_5_j8:         jal          t3, sub_6 #jump sub_5 -> sub_6
                  la           s10, region_0+359 #start riscv_load_store_rand_instr_stream_0
                  xori         tp, t6, 495
                  srl          gp, s4, s5
                  srli         s8, s7, 14
                  lbu          t5, 227(s10)
                  lbu          sp, -6(s10)
                  lbu          gp, -103(s10)
                  sll          s5, s2, s9
                  sb           t4, 42(s10)
                  and          s1, gp, tp
                  ori          s4, t0, -39
                  addi         s1, a2, -1739
                  xor          a1, s2, t3
                  ori          a6, zero, -1066
                  sub          s5, s10, s2
                  slti         a5, t2, -885
                  auipc        t6, 450481
                  lb           gp, 238(s10)
                  or           t1, tp, tp
                  srai         a4, s0, 16
                  lb           t6, 232(s10)
                  sb           a5, 144(s10)
                  sh           s1, 31(s10)
                  slli         a1, t4, 20
                  sb           s3, 194(s10)
                  and          a5, t5, s6
                  lbu          t5, -223(s10)
                  sltu         a4, a3, s7
                  sltu         t4, t4, a5
                  addi         s8, s9, -1625
                  sub          tp, a4, t2
                  or           s0, t1, s10
                  sra          a1, zero, a5
                  sub          a7, s10, t0
                  lb           sp, -14(s10)
                  lb           s1, -46(s10)
                  slli         t1, s3, 3
                  nop
                  xor          a3, s0, a7
                  xori         a7, a6, -1842
                  lhu          a3, 99(s10)
                  lb           a5, -201(s10)
                  slti         a3, t5, -1028
                  sra          t1, a3, tp
                  auipc        a0, 316648
                  lbu          a5, 92(s10)
                  lbu          a6, 206(s10) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s5, a0, -1374
                  and          s4, s9, s3
                  srli         a2, a7, 6
                  nop
                  sltu         a5, s11, ra
                  and          tp, s2, s11
                  srai         s7, t3, 13
                  ori          a6, s8, 981
                  srli         t6, a3, 18
                  slti         s0, s2, -950
                  srai         s0, a2, 24
                  blt          a0, t5, 12f
12:               sub          t1, ra, tp
                  slt          t5, a4, t6
                  bne          s5, t2, 25f
                  slli         s11, a1, 12
                  nop
                  addi         gp, s1, 1826
                  bgeu         zero, sp, 21f
                  srai         s4, a7, 4
                  nop
21:               slt          s7, gp, a1
                  bltu         s8, t0, 24f
                  bge          s10, t3, 35f
24:               add          s5, t5, t5
25:               sub          t4, s5, t5
                  bne          t2, t0, 45f
                  xor          a3, a1, s4
                  beq          s1, a0, 35f
                  sll          s7, a3, t5
                  or           a4, s10, a6
                  andi         a0, s7, 434
                  sltiu        t2, a1, 98
                  sra          a0, gp, s4
                  xori         zero, t0, 163
35:               xori         gp, s3, -1391
                  bgeu         s11, s7, 39f
                  sltu         t2, a0, s2
                  beq          s0, s10, 54f
39:               nop
                  nop
                  xori         a2, a0, 1628
                  sltiu        tp, s8, 1103
                  blt          a7, a4, 55f
                  xori         t6, s5, 1989
45:               add          s10, a6, s1
                  auipc        s11, 589163
                  sll          a3, s11, tp
                  bgeu         t5, s11, 67f
                  nop
                  auipc        t5, 781479
                  bne          a7, ra, 65f
                  sra          t4, s5, ra
                  or           t0, a1, s11
54:               xori         s0, a1, 1057
55:               bgeu         t6, a6, 69f
                  sra          s1, t3, s3
                  auipc        a3, 1032426
                  add          a3, a6, ra
                  auipc        t6, 739535
                  sll          tp, a4, s3
                  beq          t3, t6, 70f
                  xori         s4, t6, -1612
                  auipc        s8, 409620
                  beq          zero, s10, 77f
65:               blt          t0, t2, 85f
                  srli         a0, a5, 16
67:               bge          zero, a4, 76f
                  auipc        sp, 242624
69:               xor          a5, s0, a1
70:               sltiu        tp, a6, 545
                  sub          a4, s4, a7
                  blt          sp, s2, 73f
73:               slti         gp, s7, -784
                  sltiu        s11, t0, 1125
                  srli         a7, a3, 26
76:               xor          t2, t0, a0
77:               xor          t2, a0, s1
                  and          s11, a2, a3
                  auipc        t4, 772651
                  sra          a4, ra, a6
                  sll          zero, s9, s5
                  slt          t0, a0, s5
                  slli         a4, a1, 6
                  sll          t4, t0, s3
85:               bgeu         t2, s6, 91f
                  beq          a5, t1, 89f
                  sll          t1, a3, t0
                  srl          t1, a2, t1
89:               sub          s5, a0, s11
                  bltu         t6, s10, 95f
91:               nop
                  slti         a7, s1, 1150
                  bge          s1, s10, 110f
                  sub          a6, s1, t0
95:               lui          s10, 1040982
                  sltu         a7, t2, t2
                  addi         t0, t1, -1284
                  srl          s0, gp, s1
                  sll          a4, a7, s4
                  sub          t5, a1, a7
                  sub          a3, a2, s5
                  sll          ra, a1, s8
                  sltu         s10, a1, a3
                  sltiu        s6, s0, 1951
                  andi         s10, ra, -1943
                  sltiu        s4, a0, 1904
                  slli         a2, a2, 3
                  add          a6, a5, s2
                  sra          t5, s1, t0
110:              lui          a7, 733560
                  xor          a7, s4, s2
                  add          t1, t1, zero
                  addi         t0, s0, 1898
                  ori          t1, a7, -1169
                  sltu         t0, a0, t6
                  xor          t3, t4, t0
                  la           t2, sub_7
                  auipc        sp, 928196
                  xori         s0, s6, -1930
                  xor          s11, s3, t4
                  sra          s11, a5, tp
                  addi         s0, s2, 476
                  addi         t2, t2, 266
                  slt          s10, a4, t3
                  or           s5, ra, s8
                  xor          zero, s4, s8
                  andi         s11, t0, 1613
sub_5_j9:         jalr         t3, t2, -265 #jump sub_5 -> sub_7
                  beq          s6, s0, 131f
                  or           a0, sp, a5
                  bgeu         s7, t0, 134f
                  xori         a5, s5, 1872
                  bge          zero, sp, 132f
                  sltu         zero, a3, t0
                  sll          a5, gp, s6
                  blt          ra, s10, 125f
125:              slli         s8, sp, 2
                  bne          zero, a7, 140f
                  slt          tp, sp, a0
                  srai         s11, s7, 17
                  srli         t0, s1, 21
                  or           t5, s7, sp
131:              or           a6, t6, s0
132:              beq          s10, s6, 152f
                  slt          a6, a3, a4
134:              beq          t3, t1, 135f
135:              sub          t3, s9, t3
                  sltu         a2, s8, t2
                  srai         t5, gp, 22
                  or           t0, s3, s8
                  srl          s0, s1, t0
140:              beq          s5, a3, 142f
                  sltiu        zero, s6, 408
142:              sll          t5, ra, a1
                  sltiu        a4, s10, -1292
                  nop
                  sltiu        t2, ra, -131
                  sltiu        a0, s9, 225
                  or           a1, t5, a5
                  slt          sp, a6, s5
                  beq          a5, s3, 164f
                  bge          a6, a0, 155f
                  or           a5, s10, t1
152:              blt          a6, s8, 166f
                  srai         t1, zero, 8
                  nop
155:              slti         t5, a3, -675
                  bge          s6, tp, 158f
                  sltu         t2, ra, s8
158:              srli         tp, s8, 27
                  and          a6, tp, s5
                  beq          s1, s3, 173f
                  slt          a5, zero, t1
                  sll          a6, s4, a3
                  bne          a6, t1, 164f
164:              xor          a1, a2, s6
                  sub          t0, s0, ra
166:              or           zero, t3, gp
                  and          a3, t1, t4
                  srli         t5, s0, 4
                  blt          a4, s0, 172f
                  and          s4, t6, s1
                  bgeu         s4, t6, 183f
172:              bgeu         s9, a5, 184f
173:              nop
                  sub          t4, s7, t2
                  sra          s5, a4, t6
                  srl          a1, tp, a0
                  srli         s1, a7, 5
                  add          s8, t1, a2
                  sltu         s7, s10, s6
                  lui          a7, 266107
                  srl          a5, a0, a4
                  bgeu         s7, t1, 184f
183:              bge          t1, s9, 184f
184:              sra          t3, s2, s4
                  andi         t6, s7, 1745
                  lw           t3, 4(s2)
                  lui          a5, 525850
                  addi         t4, gp, 1771
                  addi         s2, s2, 32
                  sltiu        s6, s8, -1375
                  srl          sp, s5, a6
282:              addi x27, x28, 0
282:              jalr x27, x27, 0
sub_8:            slt          s8, gp, a7
                  srli         tp, a0, 10
                  bgeu         s4, a2, sub_8_stack_p
sub_8_stack_p:    addi         s2, s2, -20
                  srai         t4, s4, 19
                  add          gp, t3, t1
                  sw           t3, 4(s2)
                  sltu         a7, s5, s11
                  sltiu        a4, tp, 100
                  addi         a4, s2, -1897
                  auipc        t1, 604416
                  andi         s6, s3, -1617
                  andi         a5, a6, -1252
                  and          tp, sp, a3
                  lui          a4, 539299
                  xori         t4, s3, -1905
                  sra          s10, s9, t5
                  sll          tp, t4, s8
sub_8_j12:        jal          t3, sub_10 #jump sub_8 -> sub_10
                  sltu         gp, s5, s2
                  srl          s8, t4, a4
                  bge          sp, s7, 21f
                  lui          a0, 643737
                  sll          a1, s9, s3
                  bgeu         t0, a4, 11f
                  srli         s7, a7, 2
                  lui          s5, 315826
                  or           ra, tp, t3
                  blt          a0, a4, 23f
                  lui          s6, 882409
11:               bne          t4, s4, 13f
                  lui          a4, 67758
13:               srai         s5, a6, 15
                  sra          s5, s11, s8
                  xor          gp, s10, s0
                  bgeu         sp, t6, 31f
                  slti         a2, a7, 2014
                  andi         a3, tp, -982
                  auipc        t2, 1044140
                  srl          s10, t6, tp
21:               andi         s11, a2, -170
                  add          s7, t6, a5
23:               sra          t6, s0, a2
                  srl          ra, a1, a0
                  xor          t3, sp, s6
                  sltu         t5, s8, t6
                  add          s8, s6, s2
                  add          s10, ra, t0
                  slli         s7, s2, 11
                  sub          s4, s0, s4
31:               srl          a3, s10, a1
                  beq          a3, tp, 52f
                  srai         t5, t1, 21
                  slli         t6, s7, 0
                  sltu         s5, s7, t3
                  sub          a3, a7, t3
                  srai         s0, s10, 12
                  lui          zero, 28710
                  sltu         tp, a2, s6
                  beq          s0, t6, 48f
                  sltiu        s4, s10, -1316
                  auipc        s7, 72716
                  xor          s11, s10, s6
                  bne          s5, t2, 59f
                  slti         a0, gp, 381
                  addi         a3, a6, 1485
                  andi         t6, s1, 2022
48:               auipc        s4, 328249
                  addi         a3, s1, 576
                  add          s0, s2, zero
                  auipc        t6, 408672
52:               lui          t5, 463678
                  sltiu        a2, a5, 722
                  slt          a6, t2, t3
                  xor          a2, a5, t0
                  srai         s5, a7, 6
                  or           s4, t0, t0
                  xor          s5, t6, s6
59:               beq          ra, s8, 74f
                  srli         t4, gp, 18
                  andi         a5, ra, -692
                  sub          a2, s1, a7
                  auipc        s8, 132654
                  srai         t0, s9, 7
                  bne          a1, t2, 75f
                  sltu         ra, a1, s5
                  srl          t4, s11, s1
                  addi         zero, a7, 507
                  sll          s10, gp, a7
                  and          gp, a3, ra
                  nop
                  beq          ra, t6, 75f
                  srai         s5, s10, 20
74:               sltu         zero, t2, t3
75:               sub          s10, sp, zero
                  sra          s11, s5, t3
                  bne          tp, gp, 87f
                  srl          s10, a6, a0
                  bltu         t4, a4, 90f
                  beq          s11, s6, 88f
                  auipc        a7, 148805
                  xor          t6, t0, t6
                  sll          s10, a1, a3
                  srli         t1, gp, 7
                  andi         t3, gp, 969
                  slti         sp, a6, 823
87:               bne          gp, a7, 90f
88:               bgeu         s1, s1, 90f
                  sltu         s4, t3, s1
90:               nop
                  andi         s11, s10, 1333
                  lw           t3, 4(s2)
                  addi         s2, s2, 20
                  sll          s4, s8, s5
                  srai         s5, s5, 25
                  auipc        t6, 229161
                  srli         a6, a4, 21
                  sltiu        a4, a1, -1176
118:              addi x7, x28, 0
118:              jalr x7, x7, 0
sub_4:            srli         t2, gp, 20
                  addi         a1, s11, 1744
                  nop
                  xor          s6, a2, s9
                  slt          a5, t1, t4
                  xor          t1, a7, a3
                  or           ra, a6, s1
                  auipc        a2, 987123
                  bltu         sp, a1, sub_4_stack_p
sub_4_stack_p:    addi         s2, s2, -60
                  sw           t3, 4(s2)
                  slli         gp, sp, 16
                  la           t5, region_0+101 #start riscv_load_store_rand_instr_stream_7
                  lhu          t4, -49(t5)
                  or           s8, s11, s4
                  ori          a0, a0, 521
                  sb           s4, 0(t5)
                  lh           s7, 61(t5)
                  lbu          t6, -42(t5)
                  sltiu        s0, t3, 1063
                  lb           a5, 12(t5)
                  lui          a3, 585158
                  andi         a2, s7, 513
                  lhu          s10, 37(t5)
                  xor          s1, tp, t5
                  lbu          s11, -39(t5)
                  sw           a5, -25(t5)
                  addi         t2, s1, 1345
                  lbu          s0, -27(t5)
                  slt          s6, t1, t4
                  sltiu        t2, t5, -1299
                  sltu         s6, sp, zero
                  sh           a6, -33(t5)
                  sb           s0, -52(t5)
                  lb           s7, 30(t5)
                  ori          ra, s10, -1280
                  lw           s1, 63(t5)
                  lb           t3, 30(t5)
                  lh           t3, -11(t5)
                  srli         gp, s6, 25
                  lb           s11, -27(t5)
                  lb           s1, 47(t5)
                  lh           s10, 35(t5)
                  lbu          t1, -52(t5)
                  lb           t3, 23(t5)
                  srli         t2, s3, 22
                  slti         s0, a4, 1126
                  sb           s0, 48(t5)
                  lw           s8, 59(t5)
                  lbu          t1, 53(t5)
                  slt          a7, gp, t5
                  xor          a4, a5, s8
                  lbu          s6, -50(t5)
                  srai         a2, a2, 30
                  add          t6, s11, sp
                  lui          t3, 1017160
                  sll          a2, s6, t0
                  lw           a3, 15(t5)
                  sb           s10, 33(t5)
                  xor          s8, t3, a7
                  lbu          a2, -35(t5)
                  lh           s1, 11(t5)
                  xori         ra, s0, -1948
                  sra          t2, s11, a1
                  lhu          s0, -7(t5)
                  sb           sp, -27(t5) #end riscv_load_store_rand_instr_stream_7
                  la           a5, region_0+9 #start riscv_load_store_rand_instr_stream_19
                  sb           t6, 550(a5)
                  or           a1, s8, gp
                  slli         s5, t0, 30
                  slti         ra, zero, 580
                  lb           sp, 814(a5)
                  xor          s1, s3, s1
                  or           s11, a3, ra
                  sb           a5, 1237(a5)
                  add          zero, s5, gp
                  srai         sp, s0, 20
                  sb           s0, 66(a5)
                  lh           s0, 1079(a5)
                  sltu         t6, s3, a2
                  sb           s7, 918(a5)
                  or           s1, s3, a5
                  xor          t6, t0, t1
                  lbu          t5, 1305(a5)
                  sb           s11, 203(a5)
                  lbu          a1, 998(a5)
                  lbu          s4, 1581(a5)
                  sb           t2, 957(a5)
                  sb           sp, 880(a5)
                  sll          s4, a5, s2
                  sw           t5, 1423(a5)
                  sh           t2, 725(a5)
                  sub          tp, s4, s9
                  auipc        s11, 65491
                  sb           a1, 301(a5)
                  sb           t2, 675(a5)
                  xor          s11, s5, a1
                  sh           s0, 1461(a5)
                  sltu         t3, a4, s10
                  lb           t3, 486(a5)
                  sb           a7, 54(a5)
                  slti         a1, ra, -1447
                  lb           tp, 146(a5)
                  slti         s5, sp, -1974
                  sltu         a6, s10, s6
                  nop
                  lhu          a2, 1303(a5)
                  sltu         s6, tp, s11
                  lbu          t1, 1684(a5)
                  lui          t3, 1044496
                  lui          s0, 1012893
                  sra          s5, tp, t2
                  slti         a7, s3, -804
                  sltu         s0, a4, t6
                  lbu          t4, 142(a5)
                  or           ra, sp, t2
                  lbu          s4, 1717(a5)
                  lb           t2, 1462(a5) #end riscv_load_store_rand_instr_stream_19
                  la           s7, region_1+338 #start riscv_load_store_rand_instr_stream_1
                  lui          t5, 710917
                  lbu          t6, 15(s7)
                  sw           a3, 62(s7)
                  lbu          t1, -60(s7)
                  lbu          a5, 40(s7)
                  sltu         a3, s11, t6
                  srai         t1, t6, 11
                  sh           t0, -24(s7)
                  lui          tp, 410562
                  srl          s5, t1, sp
                  lb           s6, -2(s7)
                  auipc        s11, 241753
                  sb           a3, 17(s7)
                  sb           s5, 13(s7)
                  lbu          s1, -21(s7)
                  xor          s5, s0, t5
                  lb           t3, -33(s7)
                  lbu          t1, 59(s7)
                  sb           a6, 36(s7)
                  sb           s5, -29(s7)
                  lb           s1, 61(s7)
                  andi         s5, s0, 830
                  sb           s4, -10(s7)
                  lbu          s5, -7(s7)
                  add          a3, a2, s6
                  sltu         s10, a0, s6
                  lhu          a3, 24(s7)
                  slli         a6, s4, 20
                  andi         a5, s0, -1744
                  srl          ra, ra, s8
                  sh           t2, 34(s7)
                  sll          s6, t4, a5
                  sb           t3, -53(s7)
                  sh           a1, -48(s7)
                  ori          a3, a5, 1897
                  addi         ra, s4, 475
                  and          a0, a2, t5
                  sh           zero, -4(s7) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_1+294 #start riscv_load_store_rand_instr_stream_6
                  lbu          s6, 506(t2)
                  and          a2, t6, a1
                  auipc        a2, 341361
                  sb           t4, 738(t2)
                  lbu          tp, 643(t2)
                  and          t1, s6, t6
                  lh           a3, -22(t2)
                  xor          t3, tp, a1
                  sltu         t5, s2, s0
                  srl          s5, s8, a1
                  lh           t0, 1650(t2)
                  auipc        s0, 285715
                  sw           t1, 1606(t2)
                  sw           s10, 1642(t2)
                  addi         sp, s2, -429
                  sltiu        t6, s6, -1687
                  lbu          a6, -249(t2)
                  slli         t1, s11, 29
                  lbu          a0, 473(t2)
                  slli         t0, t3, 27
                  lhu          s5, 726(t2)
                  lb           s5, 1371(t2)
                  sltiu        t3, s7, 255
                  lbu          t4, 1641(t2)
                  lb           a5, -23(t2)
                  lui          sp, 252388
                  add          a6, s5, a0
                  sb           a4, 291(t2)
                  lb           a5, 567(t2)
                  lb           t0, 871(t2)
                  srli         a0, a1, 5
                  sb           t2, 779(t2)
                  lb           s4, 927(t2)
                  lh           s11, 320(t2)
                  lbu          s5, 963(t2)
                  or           s8, s3, a3
                  srli         s4, t5, 24
                  slt          a7, s1, a7
                  lb           a3, 1655(t2)
                  slti         s5, s3, 1113
                  sb           t3, 907(t2)
                  nop
                  sltu         sp, s4, s4
                  sb           s11, -214(t2)
                  xori         a7, s4, 1304
                  or           a5, a0, s9
                  lbu          a0, 1485(t2)
                  slt          a0, s6, a5
                  lh           t0, 930(t2)
                  lh           gp, 1540(t2)
                  ori          a3, s5, -492
                  ori          s10, s3, -1595
                  lbu          t0, 421(t2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1108 #start riscv_load_store_rand_instr_stream_2
                  sb           s6, 5(sp)
                  slti         a4, t1, -1783
                  and          a6, t0, t1
                  or           tp, s5, t6
                  lb           a5, -14(sp)
                  sltiu        t5, tp, -1315
                  addi         a1, t4, 1950
                  sb           a5, -2(sp)
                  sltu         t5, sp, t0
                  lb           t3, -9(sp)
                  nop
                  xori         a7, t0, -1213
                  sh           t6, -14(sp)
                  and          s1, s0, s6
                  slt          a1, t5, a0
                  lb           t1, 10(sp)
                  lbu          a7, -3(sp)
                  lb           t3, -9(sp)
                  slti         t5, tp, 1960
                  slti         a5, ra, 1453
                  sh           t4, 12(sp)
                  sub          s0, a6, s8
                  sw           s10, 16(sp)
                  sub          t5, s4, s10
                  lh           s4, -14(sp)
                  srl          tp, t3, t5
                  sb           s5, -3(sp)
                  lbu          s11, -5(sp)
                  sb           s0, -5(sp)
                  lb           t2, -10(sp)
                  sltiu        s10, s1, -516
                  lbu          zero, 3(sp)
                  sb           s10, 7(sp)
                  add          s5, s0, a3
                  slt          s6, s3, s8
                  sltiu        a0, t5, 236
                  lh           s10, 4(sp)
                  sb           s11, 15(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+152 #start riscv_load_store_rand_instr_stream_14
                  sh           t5, 962(t1)
                  nop
                  sb           a4, 1383(t1)
                  sh           t5, 34(t1)
                  sub          s1, t6, a1
                  lw           a3, 864(t1)
                  lui          a6, 241876
                  srl          s8, s9, s4
                  add          t3, a2, a5
                  nop
                  auipc        a7, 558780
                  srli         a6, t5, 3
                  sh           a2, 1058(t1)
                  sb           s7, 813(t1)
                  lhu          a2, 142(t1)
                  sh           s0, 246(t1)
                  slli         s1, a1, 29
                  auipc        t3, 361063
                  xori         s0, a1, -805
                  sll          a1, s11, sp
                  sb           s6, 1129(t1)
                  slt          t4, tp, zero
                  sltu         t2, t4, s5
                  lhu          s10, 844(t1)
                  lbu          a0, 1614(t1) #end riscv_load_store_rand_instr_stream_14
                  la           t5, region_0+1199 #start riscv_load_store_rand_instr_stream_5
                  slti         zero, tp, 1650
                  ori          s4, t4, -1386
                  sll          s5, s0, t1
                  slli         gp, s2, 27
                  lb           a3, 8(t5)
                  srai         t0, s2, 5
                  lb           tp, 5(t5)
                  srai         s5, s10, 8
                  lbu          sp, 6(t5)
                  sb           s11, 16(t5)
                  sb           a5, 15(t5)
                  lbu          sp, 16(t5)
                  sub          sp, a6, t0
                  addi         a4, a4, 553
                  sb           a0, 3(t5)
                  lbu          a4, -8(t5)
                  sb           t5, -14(t5)
                  and          zero, s1, a3
                  lh           a5, -9(t5)
                  slti         s6, gp, 678
                  sh           a0, 15(t5)
                  sub          ra, zero, t0
                  srai         ra, s1, 28
                  sll          s7, s6, s9
                  sltiu        s0, t4, -1302
                  add          gp, t2, s5
                  sh           a2, -1(t5)
                  xor          a3, s3, t3
                  lhu          sp, -7(t5)
                  sb           s3, -16(t5) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1135 #start riscv_load_store_rand_instr_stream_17
                  lb           zero, 11(sp)
                  lbu          s10, 2(sp)
                  lb           a2, -10(sp)
                  sh           t6, -7(sp)
                  xor          gp, a6, t6
                  lb           zero, -7(sp)
                  lbu          a6, -3(sp)
                  sltu         a1, s3, a4
                  slt          s11, t0, ra
                  ori          a2, s2, 1153
                  slt          t1, t2, a6
                  slt          s11, tp, s7
                  srli         zero, t6, 20
                  sb           t1, -3(sp)
                  sh           a0, -11(sp)
                  nop
                  lbu          t3, -11(sp)
                  lbu          a6, -16(sp)
                  sb           tp, 4(sp)
                  lb           a3, 13(sp)
                  srai         tp, s4, 24
                  slti         a2, ra, 492
                  add          a6, s8, s5
                  lhu          s1, 7(sp)
                  sb           a3, -2(sp)
                  srl          tp, t0, s5
                  lhu          a5, 9(sp)
                  lb           t3, 14(sp)
                  lbu          t4, 2(sp)
                  sra          t2, a0, t0
                  lb           a6, -1(sp)
                  srli         s7, gp, 5
                  lbu          s5, 0(sp)
                  ori          a1, s10, -1446
                  lb           a7, -3(sp)
                  sub          t2, s11, s4
                  xor          t1, s1, t4
                  lui          ra, 348082
                  lh           s7, -11(sp)
                  slti         s0, s5, -1092
                  sb           a2, 13(sp)
                  lw           a5, 13(sp)
                  lbu          zero, 1(sp) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_1+89 #start riscv_load_store_rand_instr_stream_16
                  srli         a5, s0, 5
                  ori          t6, a5, 903
                  xor          t2, a4, s10
                  lb           zero, 56(sp)
                  sb           tp, 34(sp)
                  ori          s11, a7, -1325
                  auipc        gp, 817730
                  lbu          a4, 5(sp)
                  sh           s3, 169(sp)
                  addi         t0, s6, 33
                  sb           a3, 70(sp)
                  sll          a5, a5, s7
                  sb           s1, 77(sp)
                  sh           s11, -27(sp)
                  sltiu        s8, a3, 419
                  add          ra, t5, s2
                  and          s4, s10, a4
                  sh           s5, 41(sp)
                  srli         t0, a6, 8
                  lbu          t3, -80(sp)
                  xori         a6, s5, 862
                  add          s7, s3, a1
                  sltu         a0, a0, tp
                  or           t5, sp, a4
                  slti         s6, a5, 1418
                  xori         s8, s4, 831
                  sub          s0, s2, s1
                  ori          s8, t4, 177
                  lh           a5, -43(sp)
                  sw           t5, -89(sp)
                  lui          s1, 58863
                  nop
                  and          a6, t1, ra
                  sub          t1, t0, ra
                  sub          a7, s0, s0
                  addi         t1, t5, -314
                  addi         zero, s4, -125
                  sb           a0, 47(sp) #end riscv_load_store_rand_instr_stream_16
                  la           a2, region_1+73 #start riscv_load_store_rand_instr_stream_18
                  lh           s0, 3(a2)
                  lb           s1, 69(a2)
                  srl          s4, a4, s7
                  lh           zero, 7(a2)
                  srl          s10, ra, a4
                  lbu          t5, 206(a2)
                  lbu          gp, 208(a2)
                  sb           a3, 184(a2)
                  add          a0, s10, t3
                  sltiu        sp, s11, 1305
                  lb           t1, 53(a2)
                  lb           a5, 146(a2)
                  sb           s11, 14(a2)
                  lbu          s0, 186(a2)
                  sb           gp, -48(a2)
                  lbu          s5, 156(a2)
                  sb           a3, 97(a2)
                  lb           a4, -18(a2)
                  srai         s5, t0, 18
                  nop
                  auipc        s1, 232800
                  sb           t3, 86(a2)
                  lhu          a6, -15(a2)
                  sb           t2, 146(a2)
                  sw           zero, -25(a2)
                  sltiu        s1, ra, 448
                  sb           s11, 12(a2)
                  sb           a4, 37(a2)
                  slli         zero, a7, 1
                  lw           s4, 7(a2)
                  lh           t1, 37(a2)
                  sub          s7, s10, s1
                  lbu          a3, 147(a2)
                  lbu          s4, 40(a2)
                  sltiu        a3, a2, -884
                  sb           s10, -2(a2)
                  lb           sp, 252(a2) #end riscv_load_store_rand_instr_stream_18
                  la           s10, region_1+306 #start riscv_load_store_rand_instr_stream_12
                  sra          t4, t4, sp
                  slli         a5, s0, 28
                  sh           s6, -46(s10)
                  slli         t5, a6, 18
                  sb           a0, -233(s10)
                  lbu          a1, -23(s10)
                  lb           a2, -172(s10)
                  lb           tp, -217(s10)
                  lbu          s8, 188(s10)
                  lb           t0, -73(s10)
                  lh           t5, 6(s10)
                  sb           s0, -72(s10)
                  sw           tp, -82(s10)
                  lhu          gp, 216(s10)
                  sltu         a6, a1, a2
                  lui          t3, 492109
                  sltu         s6, a5, a7
                  lbu          t1, -136(s10)
                  lbu          s11, 47(s10)
                  lb           gp, -109(s10)
                  srl          s5, a4, t2
                  sb           s8, -77(s10)
                  or           a5, zero, a0
                  slli         a2, t2, 19
                  slt          s6, t5, gp
                  andi         s0, ra, -467
                  sb           s1, -89(s10) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1078 #start riscv_load_store_rand_instr_stream_8
                  lhu          tp, 6(sp)
                  xori         t1, a7, -1494
                  srli         s10, t5, 19
                  lb           s5, 13(sp)
                  lb           t5, -13(sp)
                  ori          s5, a5, 1256
                  srli         t1, s3, 7
                  lw           t2, 2(sp)
                  add          s6, gp, s10
                  lhu          a2, -6(sp)
                  or           tp, zero, zero
                  lbu          a0, -3(sp)
                  sll          a0, a6, ra
                  lbu          t0, 3(sp)
                  sw           s8, 6(sp)
                  add          a1, ra, s5
                  slt          t6, s8, tp
                  lb           s1, -3(sp)
                  sh           s1, -16(sp)
                  lh           t6, 4(sp)
                  xor          s8, a7, s11
                  lb           ra, -11(sp)
                  xor          s7, s6, a0
                  slt          a0, t5, t3
                  andi         s4, t1, 126
                  srai         t2, gp, 19
                  lb           s8, 15(sp)
                  lbu          s8, -7(sp)
                  lbu          s1, 15(sp)
                  lh           a6, 6(sp)
                  sh           t4, 0(sp)
                  lw           a7, 2(sp)
                  xori         s10, t4, 24
                  srai         s8, s9, 0
                  lhu          s10, -16(sp)
                  xori         t5, s0, 1282
                  lui          s1, 1046342
                  lbu          s5, -1(sp) #end riscv_load_store_rand_instr_stream_8
                  la           a7, region_1+700 #start riscv_load_store_rand_instr_stream_9
                  sb           a6, -57(a7)
                  lui          t4, 478879
                  slli         a2, a0, 22
                  sb           a1, -29(a7)
                  lbu          s10, 22(a7)
                  sb           a7, -44(a7)
                  lbu          s6, 41(a7)
                  nop
                  sb           t3, 0(a7)
                  lbu          tp, -5(a7)
                  nop
                  xori         t5, a5, 961
                  lb           t5, -27(a7)
                  lui          a3, 491795
                  lb           t2, -1(a7)
                  sh           a4, -28(a7)
                  sltu         tp, a5, a7
                  lbu          sp, -54(a7)
                  sb           t5, 64(a7)
                  sra          s4, s3, s10
                  sh           a0, -18(a7)
                  sltiu        a4, t4, -560
                  andi         a3, s1, -1978
                  auipc        s1, 427821
                  lbu          t3, 49(a7)
                  lhu          gp, 54(a7)
                  srli         t4, t1, 1
                  lb           s1, -35(a7)
                  sh           s0, 22(a7)
                  srli         s8, s9, 7
                  sh           a7, -44(a7)
                  sll          t6, a1, t4
                  lb           t6, 58(a7)
                  xor          ra, ra, s2
                  and          s7, s8, s2
                  lbu          t3, 45(a7)
                  lbu          s10, -36(a7)
                  sb           s2, 30(a7)
                  lb           a5, 47(a7)
                  lbu          zero, -59(a7)
                  lb           t6, 63(a7) #end riscv_load_store_rand_instr_stream_9
                  auipc        a6, 383032
                  sltu         s6, s1, s3
                  and          t5, tp, s1
                  lui          tp, 956851
                  bge          t5, a7, 15f
                  bgeu         t1, s9, 15f
                  andi         t3, s5, 416
                  srli         tp, s10, 1
                  sub          t2, gp, a2
                  auipc        s8, 509977
                  slti         sp, s9, -476
                  sub          s8, s10, s7
                  srli         t2, a1, 7
                  lui          t1, 352548
                  srai         sp, s6, 10
15:               lui          ra, 298859
                  sltu         a7, t0, a6
                  xor          t1, a3, s5
                  add          a0, s0, a4
                  bgeu         s8, a5, 25f
                  slti         t5, t5, -228
                  slti         s5, s7, 912
                  srai         s7, t3, 8
                  ori          zero, a0, 1434
                  slti         a4, t2, -26
25:               ori          t0, s9, -535
                  slt          a5, a1, s2
                  blt          a5, t2, 45f
                  xor          tp, t3, a4
                  bge          s7, s8, 45f
                  auipc        tp, 452470
                  bgeu         s3, s1, 38f
                  nop
                  bge          t4, s6, 36f
                  sra          t1, s10, a6
                  blt          s7, t6, 49f
36:               srl          a0, t3, s3
                  sltiu        a1, a4, -55
38:               xor          zero, a3, s0
                  blt          t5, t6, 41f
                  bltu         s1, t5, 59f
41:               lui          t6, 958192
                  slt          t5, s3, s9
                  bne          s5, t4, 50f
                  sll          t0, a2, a3
45:               srl          a5, sp, s8
                  slti         s8, s8, 474
                  addi         tp, a2, -325
                  auipc        s0, 708587
49:               sll          a3, zero, t5
50:               bltu         t1, t1, 61f
                  srl          tp, a3, s11
                  bltu         a7, a0, 58f
                  slti         t1, t0, 1092
                  bgeu         gp, a4, 55f
55:               slt          s0, t4, a4
                  srli         s4, s2, 9
                  auipc        sp, 810614
58:               ori          a0, s7, 811
59:               ori          a1, sp, 609
                  add          s6, s10, t3
61:               bgeu         s8, a2, 62f
62:               bge          a1, t0, 64f
                  bne          t1, t0, 68f
64:               sra          s0, s6, t6
                  slti         t3, a6, 444
                  ori          s8, s9, -126
                  auipc        a6, 392346
68:               beq          a7, a7, 82f
                  addi         t1, s0, 13
                  and          t1, s5, a7
                  slt          t2, a5, s9
                  xori         a0, zero, 1959
                  lui          s5, 855150
                  lui          a6, 910290
                  or           t1, s1, a1
                  ori          tp, t5, -277
                  addi         a6, s6, -968
                  or           s10, a1, s9
                  slli         s1, a0, 29
                  beq          t5, a0, 87f
                  xori         t2, s11, 1862
82:               addi         t2, s7, -1727
                  bgeu         s10, t4, 98f
                  beq          t5, s11, 100f
                  addi         a0, a6, -1955
                  bne          tp, sp, 97f
87:               srai         a3, s4, 27
                  bge          s10, s9, 98f
                  sra          t5, s11, t4
                  auipc        a6, 455126
                  sra          s11, s5, t1
                  sltu         t4, s1, zero
                  srl          a3, t0, s6
                  bltu         a7, zero, 107f
                  srai         s4, t6, 7
                  xor          ra, a1, t4
97:               xori         t1, s3, -1934
98:               srli         tp, a3, 19
                  blt          s0, sp, 100f
100:              ori          a5, t4, 87
                  or           tp, s6, s7
                  beq          t1, a0, 113f
                  bge          t4, a4, 118f
                  bgeu         a6, s9, 106f
                  xor          s5, t6, t2
106:              bne          a0, a3, 126f
107:              bge          s5, sp, 124f
                  andi         s5, s6, -1575
                  sltiu        a4, tp, 387
                  or           s7, s5, a2
                  sra          s11, a7, gp
                  and          t4, a2, s10
113:              add          s11, t5, sp
                  srli         s10, a0, 21
                  sltiu        s10, t2, -1758
                  sll          s7, s6, t2
                  slt          t2, a7, t0
118:              lui          zero, 875881
                  andi         t5, a2, 1197
                  and          t2, a5, s2
                  srai         t2, t0, 25
                  bltu         ra, ra, 132f
                  nop
124:              sltiu        t5, t0, 922
                  bltu         s0, tp, 135f
126:              auipc        a3, 834849
                  nop
                  slt          s7, gp, zero
                  sltu         a5, s4, a3
                  andi         a3, s2, 1917
                  or           ra, ra, a7
132:              blt          s3, s6, 139f
                  slt          a6, a4, s4
                  bgeu         s9, a3, 145f
135:              add          s8, t2, s4
                  blt          s5, t5, 143f
                  and          s8, s9, a6
                  srl          s7, zero, zero
139:              addi         s1, zero, 524
                  sltiu        a4, a4, 699
                  slt          a3, s4, s0
                  slli         ra, s6, 0
143:              sll          s6, s1, a7
                  sll          a2, a1, s10
145:              bge          s9, s5, 159f
                  slti         t5, s11, -327
                  and          a1, s11, s6
                  xori         t1, t1, 1396
                  beq          a5, a4, 165f
                  bge          t2, s9, 168f
                  bgeu         sp, a6, 168f
                  lui          sp, 501809
                  andi         t3, t6, 710
                  auipc        t4, 225522
                  xor          s1, s2, t6
                  srai         s0, gp, 1
                  la           t4, sub_5
                  slli         a1, t0, 6
                  add          t0, s7, s8
                  and          gp, a6, s4
                  addi         t4, t4, 46
                  srai         t0, a5, 4
                  or           a4, s11, a7
                  bgeu         ra, a3, sub_4_j6 #branch to jump instr
                  sll          a1, s4, t0
sub_4_j6:         jalr         t3, t4, -46 #jump sub_4 -> sub_5
                  and          t6, s5, a5
                  or           s0, a7, a4
159:              blt          a6, t5, 165f
                  srai         t2, ra, 2
                  sltiu        ra, s3, 545
                  sra          s6, s10, t4
                  srai         gp, t6, 4
                  srl          sp, t2, s4
165:              xor          s6, s8, a0
                  sub          a5, a6, zero
                  srai         t2, s10, 7
168:              blt          tp, a0, 175f
                  sltiu        t1, a0, 1812
                  or           s7, s10, s4
                  auipc        t5, 33682
                  bltu         a4, a1, 175f
                  xori         s5, s1, 1475
                  slli         s6, s11, 12
175:              sltiu        a1, tp, 1613
                  bge          t4, a6, 177f
177:              srli         s4, a4, 22
                  or           s7, t1, t0
                  or           t1, s10, ra
                  add          zero, t0, s10
                  bge          s9, zero, 182f
182:              ori          tp, s2, -1641
                  sll          s4, sp, s0
                  nop
                  slt          zero, s9, s3
                  and          t5, zero, s7
                  slti         s0, s8, 371
                  addi         s4, t0, -1898
                  slti         a0, s8, -1844
                  beq          a2, ra, 201f
                  lui          t5, 562167
                  andi         t0, a0, -329
                  lui          ra, 452565
                  ori          t4, s9, -649
                  xori         s5, s10, -908
                  bge          s7, s9, 207f
                  slt          a7, a7, a3
                  beq          tp, a7, 204f
                  slli         a4, s2, 3
                  lui          s7, 720889
201:              nop
                  auipc        a6, 1550
                  sra          a5, a6, a4
204:              srli         ra, s3, 21
                  addi         t6, t5, 849
                  slt          t3, s9, tp
207:              blt          t3, s6, 220f
                  and          a4, s3, t1
                  bne          s10, gp, 223f
                  xori         s5, t4, -1447
                  auipc        a7, 830781
                  slti         t1, s9, -604
                  addi         a7, sp, 555
                  add          t6, s10, s7
                  srai         s1, t4, 0
                  bgeu         t0, s10, 235f
                  sltu         ra, t0, s10
                  bgeu         t2, zero, 233f
                  sra          s11, sp, zero
220:              addi         a3, t1, -1037
                  srai         t6, s5, 6
                  xori         a7, gp, 2016
223:              auipc        t5, 200471
                  beq          t0, a5, 226f
                  sub          s5, s11, a6
226:              slli         t1, t4, 5
                  sltu         t2, s11, zero
                  slt          a4, t0, a1
                  sub          t3, s10, a5
                  bgeu         a7, s6, 250f
                  sll          ra, a6, s10
                  srl          ra, ra, a0
233:              addi         a4, s1, -1962
                  xor          t0, zero, a1
235:              slli         a0, t6, 29
                  nop
                  beq          t4, s10, 252f
                  sra          a1, sp, t1
                  bge          s5, a5, 241f
                  addi         t0, a1, 1379
241:              xori         s11, a2, 1176
                  and          a4, t6, s6
                  lui          s10, 970062
                  slti         s0, s6, 1646
                  sll          s8, s7, tp
                  bne          s7, a5, 248f
                  sub          s8, a6, a7
248:              slti         s4, s9, -46
                  bge          t5, t2, 260f
250:              beq          a4, a0, 266f
                  beq          a1, a1, 252f
252:              add          a2, zero, t1
                  nop
                  addi         s10, s1, -32
                  auipc        a5, 789335
                  beq          t4, s3, 261f
                  srli         s7, t5, 21
                  srli         t6, a4, 5
                  ori          ra, s4, 550
260:              addi         t3, s7, -1019
261:              bne          t4, t1, 272f
                  srli         t1, a5, 7
                  sll          zero, s1, s0
                  slti         tp, ra, -1424
                  sub          t5, a3, t5
266:              sub          s4, s0, s11
                  nop
                  sll          s1, t1, gp
                  sra          s11, a3, a1
                  and          a3, t3, a0
                  srai         t6, s1, 6
272:              bne          a1, zero, 286f
                  and          a0, s2, s7
                  addi         t6, tp, -677
                  sltiu        s6, a6, 1171
                  or           gp, s4, t1
                  auipc        s6, 345572
                  slli         s6, t3, 13
                  sra          a2, s0, s2
                  bltu         t6, s4, 299f
                  slli         a2, s8, 21
                  xor          s10, s8, sp
                  sltu         gp, a0, tp
                  slli         t1, t0, 1
                  beq          zero, s4, 301f
286:              auipc        ra, 708106
                  sub          a4, t6, a7
                  nop
                  lui          a3, 611633
                  slti         t1, t1, 14
                  bne          s11, s4, 306f
                  sltiu        ra, a4, -753
                  add          t1, t6, a7
                  bgeu         a5, a6, 305f
                  auipc        s5, 83979
                  sra          s10, ra, s11
                  sltu         s4, gp, a3
                  sll          a2, s2, a4
299:              slt          a5, a4, a5
                  xori         s4, s1, 1957
301:              bge          ra, s2, 315f
                  slti         s11, a5, 193
                  lui          t3, 177562
                  sll          a3, a2, s0
305:              blt          s6, a2, 316f
306:              sub          a6, t1, t2
                  nop
                  bge          a1, s11, 325f
                  slt          a5, gp, t5
                  srai         ra, a6, 5
                  bgeu         a4, s2, 324f
                  or           s7, zero, s11
                  srl          t4, t3, s10
                  sra          t1, s5, ra
315:              and          t5, tp, sp
316:              addi         s11, a0, -1280
                  sra          s11, a4, a3
                  slti         s8, s4, -867
                  bltu         a0, s9, 320f
320:              andi         s0, zero, 352
                  bge          a3, sp, 328f
                  slt          a5, t0, a7
                  or           a3, a1, a6
324:              beq          s3, s3, 335f
325:              srl          t2, t3, a1
                  and          a1, tp, sp
                  ori          sp, a0, 63
328:              slti         t0, s11, -1221
                  sra          s0, tp, t5
                  xor          a6, t0, a2
                  auipc        s1, 843279
                  bltu         tp, t1, 339f
                  auipc        t1, 932288
                  and          sp, a7, a0
335:              bgeu         s10, s10, 355f
                  slti         a0, s6, -1991
                  slti         zero, t1, -525
                  auipc        s0, 154551
339:              sltiu        s0, a0, 688
                  slt          a2, a0, s4
                  srai         tp, s1, 25
                  slli         t2, s9, 30
                  sltu         s1, s8, tp
                  addi         gp, s3, -1806
                  xor          gp, s5, a0
                  nop
                  bgeu         t4, a1, 365f
                  beq          ra, t5, 349f
349:              sll          s4, a3, s5
                  bge          ra, t1, 352f
                  bgeu         s10, s7, 367f
352:              bltu         a6, s7, 354f
                  lui          s7, 277404
354:              slti         s1, a7, -1422
355:              slti         a4, a1, 729
                  sub          s6, s6, a0
                  srai         a4, s11, 6
                  slt          a3, sp, t0
                  sltiu        t0, ra, 670
                  xori         a1, s2, 2002
                  and          s0, t5, ra
                  slti         a6, s5, 1514
                  or           t3, s11, t3
                  andi         s6, s6, -220
365:              bgeu         t4, a1, 372f
                  slt          t5, s1, s10
367:              addi         t3, tp, 848
                  addi         s5, a0, 525
                  slli         s7, s8, 16
                  srl          zero, s2, s2
                  bne          gp, s1, 381f
372:              bge          t6, a4, 378f
                  srl          a2, s2, a6
                  andi         zero, s6, -1625
                  sra          a7, t5, s7
                  bne          a0, tp, 391f
                  bne          a3, s0, 382f
378:              andi         t6, a6, 1322
                  slti         s5, a4, -940
                  bge          s9, a7, 382f
381:              andi         s4, t2, -432
382:              xor          s11, sp, a2
                  nop
                  lui          a2, 706590
                  nop
                  blt          s2, s1, 392f
                  bge          t5, t0, 397f
                  auipc        s0, 982867
                  ori          t0, t6, 263
                  and          t2, s9, a4
391:              sra          sp, tp, a4
392:              and          s11, zero, s10
                  addi         t3, a7, -297
                  sll          s7, s9, tp
                  nop
                  addi         t4, s2, -787
397:              srli         a2, s10, 24
                  ori          t4, a6, 1014
                  xori         t5, t5, 527
                  slt          zero, a4, t1
                  slt          a4, a1, s1
                  bne          s9, s8, 403f
403:              bge          sp, t6, 406f
                  beq          s4, s10, 406f
                  srai         t6, ra, 5
406:              add          sp, s11, t4
                  bge          gp, t2, 421f
                  sra          a1, t0, t1
                  blt          s1, tp, 420f
                  or           a5, s10, t0
                  sltiu        a6, s4, 1216
                  xor          zero, gp, t6
                  bltu         a6, s5, 419f
                  andi         t1, t5, 1682
                  lui          sp, 697798
                  sll          a4, s9, gp
                  add          s7, t5, t3
                  slti         s4, a2, -121
419:              srl          zero, s5, s3
420:              sra          s0, a2, t1
421:              bltu         a2, t2, 432f
                  sra          s11, s0, t1
                  bltu         a0, a2, 430f
                  bltu         s7, a4, 439f
                  sltu         s11, s11, s3
                  srli         gp, ra, 21
                  sub          s1, s5, tp
                  sra          a7, sp, t1
                  blt          t6, s6, 436f
430:              bne          s9, a6, 432f
                  andi         t4, s11, 458
432:              slt          a0, t5, t1
                  add          a4, t5, t1
                  add          s6, s5, t3
                  slli         t4, s3, 27
436:              auipc        sp, 901961
                  sltiu        t2, a3, 1761
                  nop
439:              add          s5, s5, s5
                  sltiu        t3, t6, 1695
                  add          a7, s7, a6
                  and          t5, t3, s1
                  xor          gp, s3, s1
                  bltu         s9, s0, 445f
445:              lui          s7, 696907
                  addi         gp, t3, -910
                  xori         s8, s8, -49
                  srai         tp, a0, 26
                  bge          t3, t0, 455f
                  andi         s4, a5, 981
                  bge          s4, s1, 469f
                  bltu         s7, a4, 455f
                  and          a5, t0, t3
                  slt          a4, s0, t3
455:              add          a1, t1, s2
                  auipc        a1, 10695
                  sub          sp, s9, a5
                  xori         s5, s7, -1036
                  bltu         s9, s4, 473f
                  ori          s10, s7, 1534
                  sltiu        t6, ra, 741
                  auipc        t3, 318301
                  nop
                  srli         sp, a3, 29
                  slli         a0, s7, 5
                  blt          t0, s8, 467f
467:              andi         t4, a4, -1335
                  andi         t1, t5, -1111
469:              blt          s8, t6, 486f
                  beq          a5, t0, 485f
                  xor          zero, a7, s0
                  sll          s5, t4, s7
473:              slli         t2, a4, 28
                  sltiu        a3, s2, 883
                  srli         a7, tp, 28
                  addi         t1, s5, -716
                  or           a0, t5, a1
                  sub          t0, a2, t4
                  sltu         s5, s7, s11
                  bgeu         s7, gp, 485f
                  xori         s11, s1, -790
                  srai         t6, s3, 22
                  bltu         s1, ra, 484f
484:              ori          s4, a6, 1985
485:              srl          t1, s5, sp
486:              auipc        t2, 241618
                  xor          s4, a4, a1
                  nop
                  bgeu         a0, t3, 505f
                  nop
                  andi         s4, t6, -1229
                  sltu         t5, a1, s11
                  sll          zero, s4, a4
                  nop
                  sra          s0, t6, t5
                  sub          t1, a5, a7
                  andi         s0, a5, 1040
                  sltu         t0, s7, a0
                  bne          t1, zero, 509f
                  lui          s1, 658351
                  bge          a2, a7, 512f
                  slti         a7, t5, 340
                  sltiu        s11, a3, 1413
                  sltiu        s8, a2, -672
505:              srai         t6, s10, 25
                  nop
                  blt          a3, a4, 523f
                  sub          s10, a2, a5
509:              slti         a7, ra, -468
                  sll          s7, a6, a5
                  srl          a7, t0, a0
512:              addi         a3, t3, -274
                  auipc        t1, 880574
                  bgeu         ra, s10, 524f
                  lui          s5, 239816
                  bge          s0, s10, 527f
                  auipc        s5, 376800
                  slti         gp, s0, 1314
                  nop
                  srli         t5, a1, 17
                  sll          a4, gp, t5
                  andi         sp, sp, -620
523:              lui          a3, 931826
524:              bge          gp, sp, 537f
                  bge          s4, s11, 527f
                  sll          t1, t4, t6
527:              xor          a1, a2, t0
                  srl          sp, s3, s3
                  bltu         s6, a0, 549f
                  xori         t6, a2, -202
                  ori          s10, zero, 1791
                  bltu         a3, zero, 551f
                  la           s11, region_1+1627 #start riscv_load_store_rand_instr_stream_11
                  lb           s7, -4(s11)
                  lhu          gp, -5(s11)
                  slt          t4, sp, a5
                  sra          a6, t1, t5
                  xori         a6, a1, 1651
                  sltu         t2, s0, t0
                  or           t3, zero, a6
                  and          t5, tp, gp
                  slli         s7, s6, 1
                  and          s6, ra, s7
                  lhu          a4, -13(s11)
                  sb           tp, -14(s11)
                  slti         s7, t6, 378
                  sb           a4, 2(s11)
                  lbu          a0, 14(s11)
                  sltu         tp, a6, t2
                  lb           a3, -6(s11)
                  sh           t4, 15(s11)
                  slti         a1, a1, -1644
                  lb           s7, -9(s11)
                  xor          s5, a0, gp
                  slti         a5, t6, -1993
                  sh           s4, 5(s11)
                  sra          s8, s11, a6
                  auipc        t1, 1027306
                  xori         zero, gp, 1691
                  sw           s0, -3(s11)
                  lb           ra, 12(s11)
                  lhu          s5, -15(s11)
                  or           t2, s5, s2
                  lb           a1, 12(s11)
                  sb           s0, -10(s11)
                  srai         tp, s9, 11
                  lbu          a6, 6(s11)
                  lb           t5, 6(s11) #end riscv_load_store_rand_instr_stream_11
                  slti         s0, s5, 473
                  nop
                  sra          t2, t0, s0
                  andi         s11, t6, -1797
537:              bgeu         s4, t5, 544f
                  bge          gp, s3, 549f
                  sltu         s8, s6, s6
                  nop
                  sra          s5, t6, gp
                  ori          s7, t3, 1658
                  or           t2, s1, t3
544:              bltu         s1, a6, 563f
                  srli         tp, a6, 30
                  bge          s4, s7, 548f
                  andi         s6, a0, -137
548:              sltiu        s0, sp, -1519
549:              lui          s1, 57441
                  bgeu         s11, a7, 565f
551:              bge          t2, t1, 561f
                  beq          ra, t1, 566f
                  auipc        s0, 169809
                  xori         a1, a0, 1927
                  srai         t0, a4, 20
                  sub          t2, a6, gp
                  xori         t3, a3, -1575
                  sltu         gp, tp, a3
                  srai         s1, a1, 11
                  blt          t0, t1, 567f
561:              blt          s7, a3, 579f
                  auipc        a5, 497563
563:              srl          t2, t5, a4
                  xor          a4, tp, s1
565:              slti         t2, t6, -1128
566:              sltiu        a1, a0, 340
567:              sll          t4, tp, s6
                  slti         s10, tp, 1260
                  ori          a3, t5, -256
                  sll          a3, s9, a2
                  sltu         t3, a4, s2
                  beq          gp, a5, 589f
                  sltiu        gp, tp, -1971
                  slt          s6, gp, a6
                  nop
                  auipc        t4, 74884
                  srli         ra, t3, 11
                  bge          t1, s7, 593f
579:              sll          a1, zero, s9
                  sltiu        t6, a0, -1677
                  slli         a3, s8, 3
                  sltiu        ra, t1, 473
                  bne          s3, s11, 599f
                  slt          t4, s3, t6
                  and          sp, s2, t4
                  slti         zero, t5, -1519
                  blt          a4, t3, 593f
                  slti         tp, s7, -1493
589:              slt          a3, t1, a3
                  and          s7, s7, s10
                  auipc        tp, 935528
                  add          s0, s2, t5
593:              bne          zero, t0, 594f
594:              bne          t3, t4, 595f
595:              beq          s1, a3, 606f
                  bltu         a7, s5, 602f
                  bne          zero, t0, 617f
                  lui          t2, 1020064
599:              srl          s0, ra, s7
                  sltiu        a3, s5, -1138
                  sub          ra, a1, s0
602:              lui          t3, 541
                  bltu         zero, s6, 616f
                  add          s10, t4, s5
                  sltiu        gp, gp, -1129
606:              blt          zero, s4, 608f
                  addi         s11, s8, 418
608:              nop
                  ori          s0, s1, -832
                  slt          s1, t5, a6
                  sltiu        s7, a5, -1493
                  xori         ra, s10, -1513
                  and          s10, t5, tp
                  or           s5, s8, s2
                  xor          s7, tp, a7
616:              auipc        a2, 729363
617:              lui          t4, 977498
                  bge          s7, a5, 623f
                  blt          t4, a0, 629f
                  sltu         a1, t5, s10
                  andi         s10, a0, 424
                  slti         sp, a3, 788
623:              srl          t2, a3, a6
                  blt          a5, s6, 626f
                  beq          a3, s6, 636f
626:              srai         sp, a0, 28
                  ori          s0, a7, -1006
                  nop
629:              or           s8, s9, a5
                  sltu         sp, t1, s1
                  or           a1, s4, a3
                  sll          tp, t6, a2
                  add          t2, t1, t6
                  add          s1, t0, s0
                  slli         s10, s11, 3
636:              xori         t0, a2, 625
                  slt          t0, t0, s5
                  srai         s1, t3, 13
                  addi         ra, s2, -1225
                  srl          t6, s0, a3
                  and          a3, a6, s10
                  sll          s6, s6, s0
                  slli         s7, s7, 11
                  sltiu        s4, t3, 272
                  bge          sp, s6, 648f
                  add          t6, sp, a6
                  slti         ra, gp, 800
648:              blt          s6, t2, 655f
                  beq          t3, zero, 650f
650:              bltu         t3, a5, 666f
                  blt          a1, s2, 662f
                  or           zero, a5, s4
                  ori          a1, s7, -189
                  srl          a7, t3, s1
655:              bgeu         s7, a1, 662f
                  beq          a1, ra, 670f
                  bge          s9, s10, 673f
                  and          s6, sp, a2
                  srli         t2, s10, 13
                  andi         s10, s7, 1033
                  add          tp, s6, s7
662:              beq          sp, s8, 673f
                  lui          a5, 461744
                  srli         t0, s8, 4
                  lui          zero, 410442
666:              srai         a3, s5, 2
                  and          ra, a7, a1
                  slt          s6, t1, sp
                  xori         s7, s8, -816
670:              sltiu        t2, t6, 1362
                  bne          a5, a1, 677f
                  or           t5, s4, s3
673:              bgeu         t6, a0, 687f
                  and          t4, t4, s8
                  andi         s6, a4, -1678
                  blt          a7, a7, 687f
677:              or           t6, a3, s4
                  bne          s7, s10, 683f
                  srli         tp, t1, 30
                  andi         t4, t3, -198
                  bne          a3, s3, 692f
                  bltu         tp, a2, 692f
683:              srai         a5, a2, 10
                  sll          t1, s11, s2
                  addi         gp, t5, -1053
                  sub          s4, s2, a4
687:              ori          a6, s0, -5
                  ori          s0, a6, -1554
                  sltiu        t4, s2, -1607
                  blt          s5, t1, 710f
                  srai         t6, a5, 26
692:              bne          t2, zero, 693f
693:              lui          ra, 680239
                  slli         t5, t2, 13
                  bgeu         zero, a5, 710f
                  srai         a4, a1, 27
                  blt          a1, s8, 703f
                  and          s10, s5, a1
                  add          tp, s4, s0
                  ori          zero, a5, 822
                  add          sp, sp, a5
                  add          s7, s5, s10
703:              sll          a3, a4, t0
                  bge          sp, a4, 718f
                  slt          t1, ra, s10
                  ori          t3, a4, -1474
                  bltu         a6, t2, 714f
                  bgeu         sp, s6, 709f
709:              slli         a7, a0, 13
710:              srl          s11, a5, s3
                  srai         s0, s9, 5
                  xori         s7, tp, -229
                  ori          tp, a0, -1569
714:              and          s7, t4, s11
                  addi         a3, t4, 1797
                  lui          a2, 1038621
                  sub          s4, a2, a7
718:              lui          a1, 263732
                  slt          a7, s9, a1
                  blt          s2, s7, 733f
                  and          gp, t1, s10
                  ori          gp, a1, -294
                  and          ra, t4, t5
                  srl          a3, sp, ra
                  sub          t5, a6, s9
                  sub          s0, s2, t1
                  ori          s8, t3, -634
                  bgeu         a0, zero, 730f
                  blt          zero, s2, 736f
730:              auipc        s8, 920049
                  add          s8, t3, s6
                  slli         a5, s2, 2
733:              sltiu        s1, a0, -848
                  or           a7, t5, s3
                  bgeu         a5, s7, 745f
736:              sra          zero, zero, a4
                  add          t4, a2, gp
                  and          a0, a5, s10
                  bge          t0, s1, 740f
740:              srli         a6, s8, 3
                  sub          t4, s5, s10
                  or           a7, t0, a7
                  ori          zero, s10, 25
                  sub          a1, a7, a0
745:              sltu         s1, s10, s4
                  xori         zero, s11, 1462
                  auipc        a6, 684442
                  srai         gp, a4, 21
                  xori         t4, s6, -464
                  and          a6, zero, s3
                  sub          a1, a5, s0
                  xori         a5, s9, -228
                  srai         a2, t2, 19
                  xor          s0, a4, a0
                  slt          a0, a7, s3
                  blt          a2, t6, 758f
                  auipc        s6, 750339
758:              sra          t5, t1, s0
                  sub          sp, tp, t3
                  slti         a3, t5, -1366
                  bne          a1, t1, 778f
                  beq          t3, a6, 765f
                  srli         t5, a0, 4
                  srl          a0, s1, a2
765:              beq          s4, zero, 784f
                  bltu         t6, s7, 781f
                  srl          tp, t3, a5
                  sra          a0, s1, s8
                  andi         sp, a7, 1859
                  bltu         t5, t6, 772f
                  lui          zero, 191775
772:              bge          a5, a7, 779f
                  sra          s10, s6, s10
                  xori         a2, t6, 1597
                  bgeu         s5, s7, 793f
                  slti         sp, s3, 1739
                  nop
778:              slti         ra, a5, 848
779:              bgeu         t6, s0, 795f
                  add          s4, sp, a0
781:              sltiu        t2, a3, 1048
                  bne          a1, a4, 793f
                  slli         t1, s7, 22
784:              nop
                  srli         s1, a4, 7
                  bgeu         t5, a4, 793f
                  bgeu         s9, t4, 788f
788:              srl          t0, s7, s6
                  nop
                  blt          s3, a0, 800f
                  sltu         s11, t6, s1
                  sra          a5, tp, s0
793:              lui          s10, 375088
                  srai         a4, s4, 13
795:              addi         t2, t1, 1055
                  nop
                  bne          gp, a2, 804f
                  nop
                  xori         t5, t5, 781
800:              bgeu         ra, s3, 811f
                  nop
                  sub          s8, s1, a6
                  nop
804:              beq          s0, s11, 806f
                  lui          s7, 804420
806:              srai         s8, gp, 2
                  sra          a2, ra, t3
                  slt          t1, a5, a7
                  la           t4, region_0+1330 #start riscv_load_store_rand_instr_stream_10
                  srai         sp, gp, 13
                  slli         t0, ra, 2
                  nop
                  sw           s11, -1166(t4)
                  sra          s6, a5, s3
                  slti         s1, s9, 1053
                  lbu          ra, -835(t4)
                  slt          sp, a4, a7
                  sb           gp, -593(t4)
                  srli         a7, s6, 1
                  and          t2, a1, a6
                  xor          a0, s2, sp
                  lbu          s10, -923(t4)
                  lb           t1, 473(t4)
                  srai         s0, s7, 15
                  sb           s6, -205(t4)
                  lbu          sp, -425(t4)
                  slli         s4, a7, 13
                  lh           s8, -430(t4)
                  and          s11, s4, t2
                  sll          a2, t0, s11
                  lbu          sp, 501(t4)
                  lb           t1, -520(t4)
                  lb           t1, 243(t4)
                  lb           tp, 437(t4)
                  lhu          a2, -12(t4)
                  sb           t1, -963(t4)
                  lb           a2, -955(t4)
                  sh           a2, 462(t4)
                  sh           s0, -1054(t4)
                  sh           t1, 228(t4)
                  lb           ra, -89(t4)
                  sb           s9, 542(t4)
                  lb           t2, 119(t4)
                  nop
                  add          a5, a6, s6
                  sh           s11, -804(t4) #end riscv_load_store_rand_instr_stream_10
                  bne          zero, a3, 822f
                  and          a0, s5, s9
811:              srl          ra, s5, a3
                  srl          t6, t0, a6
                  andi         a4, t4, 1788
                  xori         t1, t4, -1554
                  add          t5, zero, s5
                  bltu         t2, a1, 835f
                  srai         s5, s10, 24
                  bne          s1, s2, 834f
                  auipc        s10, 372835
                  sltu         s4, s6, s7
                  add          s11, s11, s1
822:              sub          a2, t5, sp
                  addi         t6, s11, -521
                  srl          tp, s8, gp
                  bgeu         s10, t2, 831f
                  auipc        a4, 910539
                  sra          t3, a2, s8
                  sll          gp, t1, t4
                  sra          s0, sp, s9
                  or           s4, t1, a4
831:              sub          a7, a0, a1
                  bge          zero, s8, 846f
                  bge          t0, s8, 848f
834:              or           a2, a7, t1
835:              blt          s3, s8, 852f
                  bgeu         s5, s10, 847f
                  ori          zero, t0, -1106
                  add          s0, a4, a4
                  nop
                  srai         sp, zero, 15
                  srai         t3, a0, 10
                  bltu         s7, zero, 843f
843:              bltu         s11, s9, 859f
                  and          s8, t0, a0
                  nop
846:              slt          a7, s4, t5
847:              xori         a6, s6, -114
848:              slli         s1, s7, 13
                  bge          t1, a6, 860f
                  andi         a6, t5, -1051
                  auipc        a0, 345444
852:              auipc        s8, 1003992
                  xori         a2, a7, 131
                  slt          a4, a4, a2
                  blt          s8, s7, 869f
                  add          a1, t5, a0
                  addi         t4, tp, 1254
                  sra          zero, ra, ra
859:              or           s0, s7, a0
860:              srli         gp, s9, 22
                  blt          t2, gp, 863f
                  bge          s11, s4, 873f
863:              slti         a1, s11, 811
                  ori          s10, t1, -1594
                  bltu         t3, a2, 866f
866:              sra          t6, s4, tp
                  blt          a7, t1, 873f
                  lui          s6, 149118
869:              andi         a7, t5, 2011
                  or           s6, s5, s6
                  srl          zero, t1, ra
                  lui          t1, 569419
873:              srl          sp, s2, a7
                  xori         s11, a6, -21
                  lui          a2, 228689
                  bltu         s1, a2, 883f
                  sltu         a1, s0, gp
                  sltu         t5, t1, t5
                  srli         a3, t6, 9
                  slti         a0, s5, 1169
                  blt          t3, a5, 901f
                  ori          s0, t0, -1935
883:              bgeu         a0, a4, 901f
                  xor          s11, s6, t1
                  nop
                  sub          t2, t6, t1
                  slt          t3, zero, a2
                  xor          zero, s0, a6
                  auipc        sp, 195335
                  xori         a1, s0, -1286
                  nop
                  lui          a1, 228129
                  xori         a4, gp, -1455
                  andi         zero, t4, 1478
                  bltu         s3, s7, 900f
                  srli         t5, a1, 31
                  bltu         a5, s6, 899f
                  beq          s3, a7, 901f
899:              slt          t1, a7, sp
900:              bge          s10, s5, 915f
901:              srli         a6, s4, 17
                  slli         a6, ra, 25
                  bne          t4, s4, 913f
                  sub          s7, a4, ra
                  lui          a0, 246708
                  add          a7, zero, t1
                  srli         zero, a6, 4
                  slti         zero, gp, 501
                  bge          s0, sp, 916f
                  blt          t3, s1, 917f
                  addi         s11, a1, 1381
                  andi         a2, s1, -1130
913:              add          s8, gp, sp
                  srai         t6, s2, 26
915:              xori         s4, t6, 1898
916:              nop
917:              or           t6, ra, t0
                  sll          tp, s1, a3
                  slli         a0, t0, 28
                  srai         t0, t3, 15
                  ori          zero, t5, -993
                  sub          a4, a5, s2
                  addi         a0, a5, -168
                  bne          t2, a5, 944f
                  xori         a3, s8, -1644
                  auipc        s10, 548028
                  srai         s7, s3, 24
                  srai         gp, s2, 8
                  slt          a4, s9, s2
                  bltu         a0, s5, 945f
                  bge          s3, t5, 933f
                  bgeu         s2, s0, 946f
933:              beq          a5, a1, 938f
                  nop
                  addi         t6, t1, 1051
                  slli         t2, a4, 22
                  bltu         gp, t1, 944f
938:              beq          s1, s11, 956f
                  lui          s4, 924353
                  add          ra, s7, s11
                  sub          t2, a2, t3
                  xor          t4, t3, zero
                  bne          zero, s3, 944f
944:              xori         a7, t2, -69
945:              ori          zero, s8, 184
946:              srli         s8, s5, 15
                  sra          t1, s7, s0
                  sll          a5, a7, t2
                  sra          t0, s9, a2
                  lui          s4, 179971
                  bge          t3, gp, 957f
                  or           s5, s6, tp
                  srl          s0, t2, s7
                  xori         a5, a7, 419
                  auipc        s8, 94138
956:              xor          a1, t4, t3
957:              sra          sp, gp, s8
                  slt          t6, s5, zero
                  blt          s7, s0, 969f
                  auipc        s10, 615397
                  slli         a1, a6, 26
                  ori          t6, a2, 1453
                  auipc        a0, 559726
                  srli         a6, s3, 2
                  xori         a6, a5, 1364
                  slt          a0, s10, a5
                  blt          s4, a5, 986f
                  sll          zero, gp, s0
969:              sra          t0, t4, s11
                  sltiu        a1, a3, -917
                  and          s1, s8, t4
                  nop
                  add          a3, t5, s7
                  slti         t5, s9, -270
                  slt          s10, s9, a2
                  bltu         s8, t2, 987f
                  sub          s8, t4, s0
                  auipc        s4, 248257
                  xor          s4, s8, t5
                  slti         s7, a0, -1196
                  slti         t5, s7, 2022
                  slt          s6, a1, t3
                  or           zero, s11, s4
                  addi         s11, tp, 776
                  addi         a3, a3, -4
986:              andi         t0, t1, 108
987:              xori         a4, s10, 585
                  and          a6, gp, s11
                  blt          t6, t5, 1004f
                  sltu         a6, t4, a0
                  slt          s11, t0, a0
                  and          t6, t4, s8
                  sra          tp, s11, t2
                  and          t0, a6, t4
                  slt          a7, s6, s6
                  bltu         s4, t0, 1009f
                  nop
                  auipc        ra, 913594
                  ori          a7, a2, 957
                  addi         s0, s0, 545
                  ori          s8, s3, 2046
                  bltu         tp, t6, 1003f
1003:             bge          s1, a7, 1005f
1004:             bltu         a5, s2, 1015f
1005:             srl          ra, a6, zero
                  srli         t0, a3, 27
                  sra          s5, a3, s0
                  xori         s7, s1, 1872
1009:             srl          t0, ra, t6
                  or           a3, s5, s8
                  slti         a5, a7, -988
                  slli         tp, a6, 23
                  nop
                  slli         s5, sp, 24
1015:             and          a3, tp, s11
                  sltu         s7, gp, s3
                  sltiu        t5, t5, 635
                  sltiu        zero, a4, -1436
                  andi         sp, t6, -1045
                  auipc        gp, 834981
                  srli         a1, ra, 6
                  bge          tp, s10, 1036f
                  sub          sp, s11, zero
                  bgeu         gp, s2, 1030f
                  blt          gp, zero, 1028f
                  sltu         s5, a0, t2
                  bne          t0, s6, 1038f
1028:             slti         a5, a7, 787
                  slt          t4, s0, s0
1030:             sub          s11, t5, s10
                  srai         t4, s0, 10
                  addi         t0, t0, 199
                  sub          a4, s7, gp
                  or           t5, s0, t3
                  auipc        t5, 239670
1036:             srai         t2, t2, 19
                  xori         a6, t4, 962
1038:             bne          s6, a3, 1040f
                  slti         ra, s10, 1189
1040:             sltu         a2, a1, t6
                  andi         ra, zero, -1240
                  xor          a3, sp, s1
                  andi         gp, ra, -1608
                  lui          gp, 27452
                  beq          t5, gp, 1062f
                  auipc        s5, 702661
                  sltiu        a0, gp, 1152
                  sltu         a4, zero, zero
                  sll          a4, s5, s7
                  sltiu        s6, s9, -1585
                  srai         s5, a4, 8
                  nop
                  sra          a7, zero, zero
                  nop
                  sra          a4, s9, a6
                  addi         s10, t2, -67
                  and          a1, sp, t6
                  srai         s8, s9, 3
                  srl          t1, a1, t0
                  bge          a7, s11, 1076f
                  srli         a4, t2, 0
1062:             or           a5, ra, t6
                  bltu         s7, s7, 1073f
                  srl          s0, s10, a3
                  slt          s8, a2, a1
                  srli         s1, t4, 14
                  andi         s5, s0, -1852
                  andi         a0, s8, -1653
                  xori         a1, a7, 1217
                  blt          s3, s4, 1081f
                  and          t5, zero, tp
                  nop
1073:             and          s1, zero, t5
                  beq          a4, s7, 1090f
                  xor          t4, t5, a4
1076:             blt          s8, t0, 1077f
1077:             nop
                  slt          t2, s3, zero
                  beq          s1, a3, 1095f
                  xori         s6, gp, -787
1081:             add          a2, s7, ra
                  xori         t2, a6, 533
                  bgeu         s1, s0, 1085f
                  lui          t1, 208664
1085:             bgeu         a1, s3, 1090f
                  or           s4, a4, t3
                  bgeu         ra, s10, 1098f
                  sltu         s0, ra, ra
                  sra          tp, ra, s8
1090:             sub          s7, t6, t6
                  xori         t1, t6, 1397
                  andi         a5, a7, -180
                  blt          a1, a5, 1100f
                  slti         a1, a1, 524
1095:             andi         gp, gp, 1863
                  srli         sp, s6, 13
                  xori         a3, sp, -1346
1098:             slli         s7, a3, 27
                  sub          t5, gp, sp
1100:             bge          s6, gp, 1113f
                  ori          a4, a0, 660
                  or           a5, s2, ra
                  sra          a1, a0, s6
                  lui          s8, 151441
                  blt          a1, s8, 1125f
                  lui          a5, 472020
                  blt          s3, s11, 1122f
                  andi         a0, ra, -524
                  addi         a0, s11, -1471
                  sub          s5, s3, a6
                  bge          s8, a6, 1112f
1112:             sra          t2, t1, t4
1113:             sub          ra, s2, a2
                  slli         t4, s4, 11
                  srl          s6, t5, a6
                  bltu         a1, s9, 1127f
                  bltu         t6, s11, 1127f
                  slt          a2, s9, s2
                  xor          t5, a3, s10
                  blt          a2, a7, 1137f
                  sll          t0, s9, a4
1122:             bltu         s0, ra, 1140f
                  andi         s11, s6, -1226
                  lui          a6, 591497
1125:             sub          a4, s11, t5
                  or           zero, a4, s1
1127:             xor          t6, t5, t2
                  slti         tp, s9, -992
                  sltu         zero, s10, ra
                  sltu         zero, t5, s4
                  andi         t0, a2, -387
                  srai         s4, s1, 22
                  sltu         t1, s6, s5
                  slti         a1, s2, 1111
                  xor          a1, s2, s5
                  nop
1137:             bne          a0, s11, 1151f
                  lui          a7, 533532
                  xori         a4, t3, -115
1140:             slt          a1, a2, a4
                  addi         zero, s4, -1140
                  lui          a7, 610351
                  or           gp, t2, s10
                  slt          t5, a4, t3
                  bltu         ra, s2, 1160f
                  sub          s0, a7, a1
                  blt          s5, s2, 1154f
                  slt          s4, t5, zero
                  addi         s0, s0, 278
                  nop
1151:             bge          s11, t2, 1162f
                  addi         s7, a4, 1470
                  sra          s6, a3, s11
1154:             bltu         t5, tp, 1156f
                  slli         s4, a2, 28
1156:             auipc        s0, 363329
                  sltiu        a0, t0, 1526
                  slli         a4, ra, 5
                  nop
1160:             addi         s4, t3, -1978
                  beq          a4, ra, 1168f
1162:             or           t2, s11, a0
                  xori         t6, s1, -1430
                  sub          s11, s9, a1
                  srai         t3, s9, 23
                  beq          s10, s1, 1169f
                  slt          sp, a4, a0
1168:             sll          zero, s7, ra
1169:             or           a7, a0, a2
                  xor          t1, t1, a0
                  ori          t1, a5, -114
                  add          a2, a3, s10
                  sll          a2, a6, t0
                  bgeu         s4, a6, 1188f
                  sll          s5, gp, s2
                  auipc        a7, 667708
                  beq          t6, s0, 1183f
                  slti         zero, ra, 456
                  slti         s1, t3, -1921
                  bgeu         t6, a5, 1196f
                  blt          zero, a7, 1182f
1182:             xor          t6, ra, s9
1183:             sub          t1, s8, s2
                  xori         s5, s10, 1513
                  blt          a7, s9, 1187f
                  addi         s7, a5, -179
1187:             sub          gp, s4, a2
1188:             slti         t5, gp, -1041
                  bltu         a4, a1, 1199f
                  srli         a7, tp, 14
                  bge          s6, tp, 1210f
                  srai         s8, sp, 29
                  lui          a5, 184684
                  bne          t4, t5, 1200f
                  bltu         t0, t5, 1196f
1196:             sltiu        gp, s10, 1483
                  bge          t6, s8, 1208f
                  bge          s4, s10, 1200f
1199:             and          a7, a7, a5
1200:             lui          s6, 904347
                  slti         t1, s8, -1976
                  srai         s6, ra, 25
                  xori         s11, t2, 1790
                  bltu         zero, t4, 1218f
                  bge          tp, s3, 1210f
                  bne          s9, t1, 1212f
                  andi         a1, ra, 863
1208:             slti         t6, s7, -34
                  add          t4, a1, a7
1210:             and          zero, a0, s8
                  sub          t2, t4, s1
1212:             sra          gp, a1, s7
                  sll          a5, s1, gp
                  or           s0, t4, s10
                  nop
                  sll          zero, a3, a5
                  slli         t0, s10, 7
1218:             srai         zero, s10, 13
                  slti         t3, a4, 249
                  bgeu         s7, s8, 1227f
                  xori         s5, t1, -949
                  andi         a6, a5, 30
                  bltu         s3, sp, 1239f
                  bltu         t3, a1, 1241f
                  auipc        t0, 188783
                  slt          t0, s2, a0
1227:             and          s10, a6, t1
                  srai         t5, s7, 20
                  slti         ra, tp, -744
                  bge          s11, s10, 1245f
                  and          t0, s9, s2
                  and          s0, s3, s10
                  andi         gp, t2, -346
                  blt          s8, s3, 1240f
                  xori         s0, s8, 660
                  bne          s0, s11, 1239f
                  addi         a0, zero, 1779
                  andi         t3, t4, 777
1239:             add          t3, s10, s11
1240:             addi         zero, t4, -570
1241:             srli         t6, s11, 22
                  and          a1, t2, s6
                  sub          gp, s7, s6
                  bgeu         gp, ra, 1259f
1245:             slt          s4, s9, a5
                  srl          a7, s10, sp
                  bltu         sp, s1, 1258f
                  slt          s8, a5, s7
                  or           s10, sp, t0
                  srli         t2, a6, 8
                  beq          s7, s2, 1271f
                  sltu         a0, zero, s9
                  bltu         a2, s0, 1263f
                  auipc        s10, 252657
                  sltiu        s11, a0, -802
                  bgeu         a3, ra, 1275f
                  srai         zero, s11, 19
1258:             blt          ra, t6, 1274f
1259:             auipc        a2, 44859
                  sub          s10, a7, a7
                  bgeu         ra, s1, 1274f
                  sra          zero, gp, gp
1263:             slli         a7, s8, 26
                  sub          s1, t0, s7
                  andi         zero, gp, -1873
                  auipc        s10, 192218
                  blt          t5, ra, 1269f
                  lui          t0, 940376
1269:             sltiu        s5, s9, 790
                  slt          s8, ra, s0
1271:             slt          a0, s4, sp
                  bltu         gp, t3, 1283f
                  slti         a0, t4, 1207
1274:             ori          t0, a2, -202
1275:             slt          s8, s4, s2
                  bgeu         t5, s8, 1283f
                  slli         s4, t4, 6
                  sltu         s7, s3, s11
                  andi         a2, t3, 1370
                  beq          gp, t5, 1298f
                  xori         s6, zero, 1718
                  nop
1283:             blt          s2, s11, 1284f
1284:             beq          t5, tp, 1295f
                  bltu         s11, t1, 1287f
                  ori          a5, ra, -916
1287:             auipc        t5, 317276
                  sub          ra, sp, tp
                  and          t6, s1, a0
                  srai         sp, a2, 2
                  srl          gp, a4, t0
                  sltu         t5, a6, a2
                  xori         a5, t4, -1324
                  srai         s6, a1, 19
1295:             blt          s2, a7, 1296f
1296:             addi         a5, zero, -1163
                  or           s4, t1, s3
1298:             ori          a4, s6, 601
                  srli         t0, sp, 12
                  sltu         s4, a4, s8
                  xori         t5, t1, 467
                  sra          a1, gp, t0
                  sltu         s6, s6, t0
                  auipc        t3, 800284
                  srli         t3, gp, 25
                  sltu         a6, s11, s7
                  andi         t2, s10, 2036
                  srl          t3, s11, a7
                  beq          t5, s7, 1316f
                  slt          s8, a3, s9
                  sub          tp, a0, t1
                  sub          t4, a2, t3
                  bne          a4, s5, 1323f
                  bltu         t2, s7, 1325f
                  bne          s10, s6, 1329f
1316:             addi         a4, s3, -1833
                  add          s7, a0, s2
                  beq          s0, s1, 1319f
1319:             sll          zero, tp, s1
                  bge          a6, t1, 1321f
1321:             beq          t2, t6, 1327f
                  blt          s8, s8, 1337f
1323:             beq          a1, a7, 1333f
                  addi         ra, s11, 1254
1325:             blt          s10, t6, 1341f
                  srl          a0, s5, a3
1327:             bge          s9, t0, 1328f
1328:             bltu         a3, gp, 1330f
1329:             bltu         t4, t3, 1340f
1330:             bgeu         s8, s0, 1347f
                  slli         t6, s2, 15
                  lui          sp, 790336
1333:             nop
                  add          s4, t0, s10
                  nop
                  sra          t1, a6, a0
1337:             xor          t4, s8, s7
                  srli         a5, s11, 22
                  beq          a2, a4, 1341f
1340:             auipc        a5, 227745
1341:             bgeu         a7, a3, 1347f
                  and          t5, a3, s11
                  auipc        s10, 581978
                  srai         a4, s7, 8
                  sra          t2, s7, s6
                  bgeu         t1, sp, 1360f
1347:             sltiu        sp, t3, -858
                  auipc        s10, 707069
                  addi         a7, a7, -1895
                  beq          ra, t3, 1357f
                  beq          zero, s0, 1362f
                  or           a1, a3, gp
                  bne          t2, t5, 1360f
                  sra          a7, t1, s10
                  add          a1, s4, s10
                  bltu         t1, s9, 1363f
1357:             add          s5, a6, a5
                  addi         a0, s9, 134
                  andi         sp, tp, 764
1360:             sll          s10, s5, s4
                  bge          a4, s5, 1372f
1362:             sub          s0, t0, s6
1363:             lui          s0, 848177
                  srai         a2, t3, 18
                  and          s8, s3, a2
                  bge          a4, sp, 1380f
                  bgeu         s0, a3, 1378f
                  xori         s8, a2, -92
                  xor          zero, t5, gp
                  bge          s4, a7, 1373f
                  auipc        a3, 780450
1372:             bge          s7, t5, 1388f
1373:             ori          t0, sp, 1838
                  slt          a2, s8, sp
                  bltu         s7, a3, 1376f
1376:             sub          t1, sp, a1
                  bltu         s7, zero, 1397f
1378:             srli         zero, s0, 1
                  and          s5, a2, t3
1380:             bgeu         s9, s1, 1382f
                  beq          t2, zero, 1386f
1382:             andi         t1, t2, -630
                  bne          t2, a3, 1398f
                  srai         t5, s3, 24
                  lui          t0, 558818
1386:             slli         a1, a7, 1
                  bne          s1, a0, 1397f
1388:             slt          tp, s11, a1
                  slti         s8, t4, -404
                  add          t4, a6, tp
                  beq          zero, s2, 1409f
                  blt          s11, t6, 1405f
                  bge          gp, t1, 1412f
                  or           ra, s7, s6
                  srli         t5, a3, 21
                  nop
1397:             auipc        t0, 164051
1398:             ori          a4, zero, -564
                  slti         ra, gp, 2015
                  srl          s6, zero, s8
                  slt          ra, s0, s5
                  sll          t5, s11, s4
                  ori          sp, a3, 982
                  sltiu        ra, s2, -1025
1405:             srli         a6, a1, 21
                  lui          t2, 417130
                  andi         t5, s9, -1302
                  lui          tp, 234431
1409:             bge          tp, a6, 1410f
1410:             bne          a4, a0, 1429f
                  bgeu         a6, sp, 1418f
1412:             andi         t4, t4, 1866
                  nop
                  auipc        a5, 889473
                  slli         zero, s6, 15
                  auipc        t5, 783538
                  sltu         a6, zero, sp
1418:             or           s8, s2, a3
                  sltiu        t6, s1, 1307
                  addi         zero, s2, 1407
                  sll          s0, a6, a0
                  sub          ra, a6, a2
                  or           tp, s6, t4
                  slt          a7, ra, t0
                  slli         s11, t3, 14
                  or           zero, a7, s11
                  ori          a6, a3, -80
                  add          ra, t3, ra
1429:             andi         gp, s2, 885
                  beq          s2, s9, 1432f
                  bne          s10, zero, 1448f
1432:             srai         t1, a7, 8
                  slt          tp, s7, s5
                  sll          tp, t3, t0
                  bltu         s4, t5, 1446f
                  sub          s11, a7, s3
                  sltiu        a7, s0, -95
                  ori          s5, ra, -692
                  ori          ra, t0, -1939
                  xori         s11, t2, -1978
                  sub          t3, s5, s9
                  add          t5, ra, s2
                  sltu         t1, a5, t4
                  slli         a4, tp, 30
                  srai         t6, a5, 1
1446:             slli         t1, t6, 24
                  blt          zero, a5, 1463f
1448:             srl          s1, t0, a7
                  sll          s11, s0, s0
                  ori          a7, s0, 1902
                  xor          a3, gp, s10
                  sltu         sp, gp, t6
                  blt          s1, s2, 1467f
                  xori         a2, s1, 977
                  bgeu         ra, t0, 1457f
                  blt          a0, t5, 1467f
1457:             addi         t0, a3, -1328
                  add          s8, t2, t3
                  srai         a5, s6, 12
                  slti         s11, s6, -194
                  and          t5, a2, a3
                  sub          s11, a1, ra
1463:             bltu         s11, s0, 1464f
                  la           t4, region_1+1031 #start riscv_load_store_rand_instr_stream_3
                  sltiu        sp, gp, -1782
                  lw           s5, -919(t4)
                  lb           t2, 76(t4)
                  srai         a4, s6, 5
                  sub          s10, s7, t3
                  lb           a4, -955(t4)
                  sb           s4, 40(t4)
                  sh           s1, 145(t4)
                  srai         t2, s4, 26
                  lui          s4, 845337
                  sb           a0, -916(t4)
                  sll          tp, t4, t4
                  lhu          s6, -73(t4)
                  lb           s8, -716(t4)
                  sltu         a3, a0, a2
                  sb           zero, -942(t4)
                  lw           tp, 169(t4)
                  lbu          a1, 355(t4)
                  auipc        t0, 602122
                  lh           s8, -581(t4)
                  sb           s5, 244(t4)
                  lb           ra, 638(t4)
                  slti         s4, t2, 1252
                  lb           t2, 766(t4)
                  ori          t5, a4, -170
                  sll          t1, a3, s10
                  lw           a4, -235(t4)
                  sb           s3, 520(t4)
                  slt          t0, a2, sp
                  lbu          t0, 716(t4)
                  lbu          ra, -150(t4)
                  xori         s10, s0, 1115
                  lbu          t2, -409(t4)
                  sh           s7, -9(t4)
                  lb           s7, 850(t4) #end riscv_load_store_rand_instr_stream_3
1464:             srai         t1, s4, 20
                  srl          t3, a2, a2
                  blt          t0, t2, 1486f
1467:             addi         t6, a0, 803
                  slti         a3, a7, -6
                  beq          sp, s7, 1474f
                  auipc        t2, 985284
                  sltiu        s7, s9, -131
                  bge          t2, t5, 1483f
                  xori         s5, a1, -1127
1474:             srai         s6, s7, 2
                  sub          t2, s2, s4
                  ori          s11, tp, 619
                  slt          a5, a4, s6
                  xor          a2, a1, t0
                  beq          s1, a5, 1493f
                  add          a5, a1, t3
                  andi         s0, s11, -1911
                  addi         a7, s5, -1629
1483:             srl          s4, sp, s0
                  ori          t5, s1, -526
                  sltu         tp, s2, s4
1486:             addi         t2, s8, 1196
                  bgeu         t0, s2, 1503f
                  bltu         s5, t3, 1506f
                  sltu         s6, t3, s1
                  slli         s6, s4, 18
                  xor          zero, t4, a2
                  blt          t3, a3, 1499f
1493:             xori         sp, s0, -357
                  bne          s6, s7, 1497f
                  add          t3, s3, a6
                  auipc        a4, 460847
1497:             and          t3, t1, s0
                  add          t6, a3, a7
1499:             slti         s7, s5, 1129
                  sll          gp, s4, s0
                  bge          t6, s5, 1516f
                  sltu         tp, a4, sp
1503:             add          a3, tp, t6
                  slli         t3, t5, 21
                  sltiu        s10, ra, 1928
1506:             bne          t0, sp, 1517f
                  or           a1, a0, a2
                  andi         t0, s9, 1246
                  xori         t3, s1, -78
                  bltu         gp, ra, 1525f
                  sra          s0, s9, s8
                  bltu         t2, s6, 1522f
                  blt          sp, tp, 1514f
1514:             lui          s1, 800462
                  blt          s11, s10, 1521f
1516:             srai         t0, t2, 2
1517:             addi         s7, a0, 423
                  sltu         a0, s2, a7
                  add          s6, s2, s10
                  srli         tp, s1, 31
1521:             sll          s10, s7, s1
1522:             or           tp, s5, a4
                  beq          a7, s7, 1533f
                  xor          s5, s11, s11
1525:             bge          t3, t0, 1532f
                  slti         s4, a7, 1473
                  andi         a4, t1, -231
                  bltu         s11, a5, 1541f
                  xor          s10, a0, t4
                  and          a7, t3, t6
                  bltu         s5, a7, 1537f
1532:             bltu         tp, s4, 1534f
1533:             bne          s7, a4, 1539f
1534:             beq          s5, t4, 1536f
                  sltu         ra, s7, t0
1536:             sltiu        s7, zero, 644
1537:             blt          s11, s4, 1554f
                  blt          s8, gp, 1540f
1539:             sra          s10, sp, s3
1540:             andi         a0, ra, 252
1541:             srai         s1, a5, 8
                  xori         s6, s4, -1289
                  xori         zero, tp, -1226
                  xor          a5, a2, s7
                  blt          s11, sp, 1552f
                  sll          a5, s3, sp
                  nop
                  auipc        t3, 807682
                  andi         t0, s8, -82
                  xor          s5, s7, t4
                  sub          s4, t6, zero
1552:             bgeu         s9, a6, 1563f
                  sub          s5, s8, t4
1554:             bltu         a3, s4, 1555f
1555:             slli         t1, a0, 13
                  srai         a7, s2, 30
                  ori          t3, a1, 1021
                  bgeu         a7, tp, 1572f
                  addi         t6, s1, -630
                  bltu         gp, s0, 1562f
                  sll          s7, t4, t2
1562:             auipc        t5, 172154
1563:             bge          t5, t3, 1574f
                  sra          t4, a4, s3
                  auipc        zero, 822976
                  addi         a5, a2, 1209
                  sltu         a2, t6, t1
                  slli         t5, ra, 4
                  xori         s7, a7, 1302
                  xori         a5, s4, -1867
                  bgeu         s3, t2, 1587f
1572:             add          s4, s9, t0
                  slt          s4, s9, a4
1574:             slt          s10, a6, a1
                  slli         a7, a6, 10
                  sll          a4, a4, s8
                  andi         gp, tp, 1807
                  beq          s8, s10, 1598f
                  auipc        s10, 305268
                  xor          a3, tp, a1
                  srl          sp, t5, t1
                  sll          s4, s5, sp
                  add          gp, a5, s4
                  sltu         s7, sp, a2
                  and          t5, ra, sp
                  sltu         s1, a2, a2
1587:             nop
                  xor          s1, s11, s3
                  srl          s8, s9, a6
                  xor          s7, t6, a3
                  sltu         a5, ra, s0
                  or           a5, t6, t0
                  sub          s8, t6, a2
                  lui          t2, 43882
                  bltu         a2, t4, 1610f
                  sltiu        a2, sp, -1911
                  bltu         s9, s4, 1615f
1598:             nop
                  slt          a3, s9, s2
                  andi         s1, s9, 940
                  sra          a4, ra, s10
                  sltu         s10, a1, t3
                  andi         s7, a7, 1410
                  xori         t1, s10, -1478
                  srl          t1, s8, a7
                  beq          t5, zero, 1607f
1607:             beq          s4, s7, 1613f
                  andi         tp, s0, 205
                  add          a2, t4, t5
1610:             sra          t3, ra, a6
                  srl          s1, s9, a7
                  beq          ra, t0, 1631f
1613:             sltiu        a4, s4, 180
                  andi         t0, s6, 54
1615:             ori          t4, t1, -870
                  xori         a5, s6, -1811
                  sltu         a2, tp, s10
                  beq          sp, s11, 1625f
                  and          t3, t5, sp
                  sll          tp, s1, t1
                  addi         s0, gp, 337
                  xor          a1, a4, s3
                  sll          t1, a4, s10
                  slt          s5, sp, a7
1625:             ori          a6, t4, -1434
                  add          ra, a6, gp
                  sltu         s10, s2, sp
                  auipc        s1, 709588
                  sub          s7, s5, a3
                  slti         a0, a6, -917
1631:             blt          s3, s0, 1642f
                  and          t1, s5, s9
                  add          t4, sp, s4
                  slli         a1, s4, 22
                  andi         zero, a2, 1291
                  bge          t5, s1, 1650f
                  addi         t4, s11, 1785
                  lui          sp, 142659
                  xor          zero, s2, s1
                  blt          tp, a0, 1641f
1641:             bne          a3, sp, 1646f
1642:             sltu         a5, gp, a6
                  auipc        t1, 351810
                  slti         a3, t2, 393
                  sltu         a1, s8, t4
1646:             andi         s8, s11, -781
                  slti         gp, a4, 2004
                  auipc        s7, 885210
                  sra          a3, a2, t4
1650:             xori         t5, s5, -1597
                  srai         a6, s6, 1
                  lui          s10, 1032765
                  andi         gp, s5, -1207
                  lui          t6, 556899
                  add          t2, sp, t6
                  slt          a4, s9, a7
                  bge          ra, s9, 1667f
                  slt          t2, t2, a0
                  sub          s4, s2, s1
                  bltu         a0, s5, 1671f
                  lui          a2, 1036920
                  auipc        sp, 804141
                  bgeu         ra, tp, 1678f
                  auipc        t4, 908221
                  ori          t3, a5, 427
                  bgeu         t5, t1, 1682f
1667:             blt          sp, a3, 1674f
                  blt          sp, t5, 1681f
                  beq          gp, t4, 1679f
                  srli         a6, tp, 9
1671:             slli         t6, a1, 16
                  srai         a6, a7, 7
                  bgeu         a7, ra, 1676f
1674:             auipc        ra, 469629
                  bgeu         t5, tp, 1686f
1676:             slli         s6, sp, 31
                  slli         s0, a4, 3
1678:             sltu         a4, s6, s1
1679:             andi         t1, t3, -1447
                  ori          s8, a3, -1115
1681:             beq          s6, s3, 1699f
1682:             srli         t4, t1, 25
                  slli         a1, ra, 18
                  sltiu        s7, s11, -705
                  nop
1686:             and          a1, s9, s3
                  addi         a6, a1, -1953
                  srai         zero, s11, 31
                  srl          t6, tp, sp
                  bne          zero, t2, 1709f
                  xor          sp, sp, t5
                  andi         sp, zero, -628
                  sub          s11, s8, s1
                  auipc        a3, 415479
                  nop
                  slt          gp, s0, a4
                  add          a1, s6, a3
                  srl          s5, t3, s8
1699:             beq          a6, zero, 1715f
                  bltu         t6, tp, 1711f
                  sub          s1, a4, t3
                  srai         tp, tp, 16
                  sub          a7, gp, s0
                  bge          t1, s10, 1717f
                  xor          a0, s10, s11
                  or           a4, a5, t1
                  add          s1, s8, s3
                  and          s11, zero, t0
1709:             sub          s4, t0, s2
                  slt          s6, s7, s4
1711:             bltu         s8, s6, 1726f
                  bltu         s1, sp, 1717f
                  or           a3, sp, t5
                  la           a7, region_1+938 #start riscv_load_store_rand_instr_stream_0
                  slti         t2, s0, 508
                  sb           s5, -1(a7)
                  sub          t0, t1, a3
                  slt          gp, sp, a6
                  xor          t1, s7, s3
                  sll          s11, t5, sp
                  lbu          s6, 11(a7)
                  andi         s6, s3, -1625
                  lbu          s5, -13(a7)
                  lb           t5, -13(a7)
                  sh           a3, 12(a7)
                  slt          t3, t6, t1
                  sltiu        a3, s10, -706
                  add          t4, a3, s0
                  lbu          s7, 13(a7)
                  sb           s8, -9(a7)
                  sb           s7, -16(a7)
                  lui          s7, 195985
                  sb           s6, 5(a7)
                  slt          t3, t6, s11
                  sltu         a0, gp, a2
                  nop
                  xori         a6, t2, -1667
                  sub          s11, s6, t2
                  sw           s8, -2(a7)
                  ori          a6, t1, -1529
                  srli         a6, s10, 30
                  lb           zero, -9(a7)
                  srli         t3, s0, 8
                  nop
                  lb           a2, 12(a7)
                  slt          t0, a2, zero
                  lb           a2, 16(a7)
                  lhu          t4, -8(a7) #end riscv_load_store_rand_instr_stream_0
                  auipc        zero, 846227
1715:             addi         a6, tp, 1363
                  auipc        s11, 374319
1717:             nop
                  xor          s4, a1, a2
                  slti         s6, s11, 1446
                  beq          a5, a4, 1730f
                  sltiu        a2, s6, -55
                  or           s1, s8, t1
                  addi         s5, s7, 1600
                  bltu         t2, zero, 1725f
1725:             bne          gp, a7, 1732f
1726:             or           t2, a3, a2
                  xor          t3, s10, sp
                  sltu         t6, t5, s1
                  sltu         ra, t4, a2
1730:             xori         s11, t0, 1970
                  sll          s1, zero, t0
1732:             ori          a6, s1, -1061
                  beq          s9, s6, 1744f
                  bge          s1, t4, 1736f
                  sltiu        t6, t6, 423
1736:             bltu         s0, s9, 1738f
                  srl          s7, s1, ra
1738:             sll          t3, t0, a7
                  bge          s0, s0, 1753f
                  add          t6, s7, t6
                  addi         sp, tp, -471
                  nop
                  slli         t1, s10, 3
1744:             xori         t6, tp, 384
                  blt          s4, s10, 1755f
                  addi         ra, s2, -945
                  nop
                  lui          gp, 643411
                  sltu         s5, zero, t4
                  add          s1, s11, a7
                  auipc        ra, 839949
                  bgeu         s8, a0, 1768f
1753:             xori         t1, a2, 1283
                  sra          s11, gp, a1
1755:             bgeu         a1, a6, 1761f
                  sll          t5, ra, s10
                  add          a3, s3, t5
                  beq          s8, t4, 1765f
                  sltiu        a5, a7, 676
                  xori         s6, a5, 1834
1761:             auipc        s5, 565206
                  add          t0, a5, tp
                  slt          s11, s10, t3
                  sll          a3, a1, t6
1765:             xor          a3, s1, s5
                  srai         a3, t2, 16
                  bge          s5, sp, 1784f
1768:             ori          tp, s7, -1685
                  ori          ra, s2, -1918
                  xori         s5, s1, -585
                  and          t3, s11, s0
                  auipc        gp, 403219
                  bge          s3, s4, 1780f
                  blt          s6, zero, 1789f
                  lui          s8, 284391
                  sltiu        a2, s3, -890
                  sll          a0, a5, tp
                  bge          s3, s9, 1781f
                  bne          a6, t1, 1790f
1780:             and          sp, s7, s6
1781:             andi         gp, s5, 656
                  xor          a0, a2, s8
                  srli         s1, t0, 3
1784:             slt          s1, s0, ra
                  bge          t1, a5, 1786f
1786:             add          s7, a5, s4
                  slti         a6, s2, -1752
                  or           s7, s10, a7
1789:             lui          t2, 843757
1790:             bne          t5, s9, 1791f
1791:             xori         t0, gp, -1724
                  srli         a1, s10, 10
                  add          sp, a2, t4
                  srli         a2, s3, 7
                  andi         t6, s10, 420
                  addi         t5, a1, 749
                  bne          s6, t5, 1803f
                  bgeu         s10, t6, 1800f
                  andi         s0, sp, 50
1800:             bgeu         s11, s4, 1814f
                  lui          ra, 441193
                  sll          a2, a3, t5
1803:             lui          t2, 987240
                  andi         zero, s11, 634
                  andi         tp, s4, -1198
                  sltu         a0, s11, a2
                  bltu         ra, s9, 1827f
                  beq          a6, zero, 1826f
                  blt          s1, a0, 1811f
                  srl          zero, zero, s10
1811:             nop
                  beq          s9, t1, 1832f
                  bne          s7, s1, 1829f
1814:             addi         gp, s1, -1679
                  sltu         s0, s0, s5
                  sll          s1, zero, a5
                  and          a5, s5, zero
                  bne          s3, t1, 1825f
                  and          sp, a7, s7
                  sra          zero, t0, t1
                  lui          sp, 179960
                  srai         s1, a2, 31
                  bgeu         ra, s4, 1834f
                  sll          zero, s6, t3
1825:             ori          t1, a4, 842
1826:             addi         s0, a5, 594
1827:             ori          a1, s7, -842
                  andi         zero, ra, 486
1829:             or           t2, a7, a6
                  sra          t6, s3, tp
                  andi         a1, sp, -1323
1832:             slt          a7, a2, s10
                  andi         s11, a0, 1796
1834:             ori          a7, a0, 1034
                  or           s4, t3, ra
                  bgeu         s5, a2, 1851f
                  ori          s4, ra, -1510
                  blt          a2, a6, 1848f
                  slti         t5, s1, 145
                  bne          s6, s10, 1842f
                  srl          t5, s1, s6
1842:             andi         zero, s7, -1386
                  slli         a4, a3, 13
                  slti         s0, t5, 1561
                  ori          t0, s1, -1907
                  blt          s1, t6, 1852f
                  sra          a1, s0, s9
1848:             srl          s4, a2, t6
                  slt          s1, s8, t1
                  sub          a1, a0, zero
1851:             ori          t1, tp, -1146
1852:             slli         s4, t2, 9
                  slti         a4, tp, 1490
                  sll          s0, tp, a5
                  slti         s0, s2, 1363
                  andi         a3, s0, -1813
                  andi         a1, s7, 1424
                  slt          zero, a3, s10
                  beq          s3, a5, 1874f
                  sltu         s10, ra, s0
                  sra          s6, s11, a7
                  andi         gp, t0, 75
                  or           a4, gp, t4
                  auipc        a3, 656314
                  ori          s6, t6, 2001
                  nop
                  sll          t5, a5, sp
                  auipc        s6, 726162
                  sltu         s1, s8, a1
                  srai         s10, gp, 4
                  xor          s7, t3, sp
                  beq          s7, sp, 1875f
                  bltu         a2, s5, 1890f
1874:             bge          t0, tp, 1876f
1875:             bgeu         t2, ra, 1880f
1876:             bge          s11, s9, 1882f
                  srl          s11, s7, gp
                  nop
                  slli         s6, s11, 5
1880:             sra          a3, s10, zero
                  sltiu        t4, a2, 1636
1882:             bne          t1, t2, 1896f
                  srai         t4, t0, 3
                  sltu         a6, a3, a4
                  lui          s11, 26717
                  xor          tp, s7, s11
                  andi         t3, t5, 709
                  addi         a2, t6, 829
                  slt          a7, s3, a6
1890:             slt          tp, a6, a1
                  add          s0, a0, a4
                  xor          zero, a0, s8
                  sltiu        s6, t1, 1294
                  and          tp, a3, t0
                  ori          a3, s11, 837
1896:             bne          a1, t5, 1910f
                  or           s6, t0, a6
                  sltu         gp, s2, s6
                  sltiu        t0, t4, -124
                  or           s7, s6, s3
                  ori          a3, t0, -1331
                  auipc        t5, 388899
                  add          zero, a3, t0
                  sll          ra, s10, s10
                  xor          t5, a2, s7
                  and          sp, zero, t5
                  slli         a5, t1, 11
                  blt          s5, a5, 1915f
                  slti         s4, t4, -1705
1910:             slt          s10, s3, s7
                  ori          a5, s2, 1738
                  bne          s3, sp, 1923f
                  bne          a4, t6, 1926f
                  addi         t0, a5, -160
1915:             bge          tp, t1, 1916f
1916:             and          a2, t1, t6
                  srli         a0, a1, 18
                  slti         a1, a4, 37
                  or           t1, zero, a4
                  sub          t5, s9, ra
                  xor          ra, a7, t1
                  lui          s5, 530134
1923:             slti         s5, t4, 943
                  auipc        sp, 605467
                  srli         t0, a7, 25
1926:             srl          t2, a5, s7
                  slli         gp, s3, 30
                  blt          a6, sp, 1939f
                  xori         s8, zero, 1910
                  slti         sp, zero, -914
                  srli         t3, t2, 5
                  srai         t2, ra, 15
                  bgeu         a4, a6, 1940f
                  slti         s0, s5, -1639
                  sub          s7, t1, t2
                  sltiu        a4, zero, -170
                  la           sp, region_0+1015 #start riscv_load_store_rand_instr_stream_4
                  lbu          t2, -37(sp)
                  sltu         a6, ra, s0
                  lh           a3, -23(sp)
                  lbu          t2, 22(sp)
                  sltiu        s6, s1, -1566
                  srai         t4, tp, 30
                  lb           s7, -54(sp)
                  lui          tp, 174124
                  addi         a1, a6, 27
                  lb           a7, 48(sp)
                  sltiu        tp, s0, -847
                  lb           s6, 61(sp)
                  addi         t2, a1, 962
                  sb           s7, -37(sp)
                  lbu          a6, 34(sp)
                  sb           s9, 12(sp)
                  sh           t0, 5(sp)
                  and          ra, t0, gp
                  add          a7, t6, a3
                  lbu          a3, -22(sp)
                  and          a4, s10, t6
                  sh           tp, -57(sp)
                  srai         t2, s5, 7
                  lw           ra, -59(sp)
                  lb           a6, -5(sp)
                  lbu          a1, 55(sp)
                  sw           a2, 41(sp)
                  lb           s10, -30(sp)
                  lw           s8, 29(sp)
                  slt          s8, sp, s8
                  lb           s5, 42(sp)
                  srl          a5, s2, a4
                  sltu         ra, s5, s0
                  slli         a3, ra, 30
                  lhu          s4, -33(sp)
                  lbu          a3, 39(sp)
                  slli         s7, a0, 19
                  nop
                  lbu          a0, -47(sp)
                  sb           t2, -4(sp)
                  lb           a0, 22(sp)
                  lw           a1, 37(sp)
                  slt          t2, t1, s2
                  addi         tp, a6, -1937
                  lb           t5, -10(sp)
                  srli         tp, sp, 17
                  lbu          zero, -35(sp)
                  auipc        tp, 61342
                  lb           s10, -2(sp)
                  lhu          s4, 17(sp) #end riscv_load_store_rand_instr_stream_4
                  slt          a2, a4, a3
                  sra          zero, t0, a1
1939:             andi         a7, gp, 306
1940:             addi         a0, a7, 1679
                  srl          t6, zero, t1
                  sltu         s10, s5, s6
                  bne          a5, s4, 1944f
1944:             and          t3, s11, s1
                  xor          s0, gp, a6
                  add          a5, s2, ra
                  sll          s7, a0, s9
                  auipc        zero, 418167
                  add          t1, a1, s8
                  slti         a5, a7, -502
                  ori          s1, s7, 1933
                  xor          s7, t0, t0
                  sll          s4, s8, tp
                  auipc        a4, 663395
                  ori          a7, a4, -585
                  nop
                  sll          tp, s3, a2
                  slli         tp, sp, 12
                  slli         a2, t1, 13
                  add          t6, zero, s11
                  sll          a2, t6, zero
                  bge          s4, t4, 1978f
                  slt          a6, tp, t0
                  slli         s10, s10, 30
                  addi         t2, t5, 956
                  blt          s8, t3, 1985f
                  srli         t0, t4, 18
                  slli         s4, t1, 14
                  bne          zero, s11, 1979f
                  sra          a2, t4, t1
                  srl          s5, t0, s2
                  bgeu         t6, a0, 1983f
                  ori          a7, s6, -1166
                  ori          a7, zero, -205
                  sub          a1, s7, s9
                  sltu         a6, a5, s7
                  slti         s6, a4, 1677
1978:             srl          t3, s3, s1
1979:             slti         s1, s0, -1415
                  slti         gp, ra, -353
                  xori         a6, s4, -1283
                  ori          sp, t3, -1323
1983:             bltu         s4, s8, 1984f
1984:             blt          s6, s8, 1989f
1985:             bltu         s10, a7, 1996f
                  nop
                  or           a2, s11, a0
                  lui          s4, 722132
1989:             slti         s0, a1, 1979
                  sltu         s0, s8, s9
                  sub          a5, t6, ra
                  andi         t2, s10, -1795
                  bne          t2, s4, 1995f
                  xori         s11, t2, 1132
1995:             sltiu        a1, a1, -1522
1996:             sll          s11, t4, s11
                  slli         t4, a3, 10
                  ori          ra, a4, -298
                  lui          a2, 713828
                  beq          gp, t5, 2019f
                  sltu         a6, zero, s9
                  sra          t6, s5, t0
                  srl          s6, s11, a7
                  andi         a6, a1, 1039
                  add          a2, a3, s7
                  xor          ra, s2, a4
                  sll          a2, s8, a7
                  slli         a1, a1, 6
                  sltiu        a6, a3, 37
                  bne          a6, zero, 2027f
                  sll          a2, s4, a3
                  or           a2, t1, a6
                  and          tp, s5, a5
                  bge          s0, t6, 2025f
                  bgeu         t4, s10, 2022f
                  andi         t6, a6, -1163
                  sltu         s1, sp, t5
                  blt          s10, a3, 2032f
2019:             bltu         t4, s9, 2033f
                  auipc        t4, 453171
                  slli         t0, s5, 25
2022:             srai         ra, a3, 28
                  bge          s2, t1, 2033f
                  bgeu         s1, a6, 2039f
2025:             xori         a3, s8, 524
                  slt          s5, s1, t5
2027:             sll          t1, a1, sp
                  sra          t6, a1, gp
                  srli         t3, a7, 8
                  srli         tp, a4, 18
                  slli         a7, gp, 1
2032:             xori         zero, s0, -1733
2033:             sra          tp, s11, s1
                  andi         zero, t3, 91
                  sra          s1, s9, a5
                  slli         t0, a4, 26
                  add          s11, s7, s5
                  srl          tp, tp, t2
2039:             lui          a3, 199422
                  bgeu         zero, s6, 2041f
2041:             slti         a1, t6, -187
                  bltu         zero, t6, 2053f
                  beq          s11, s6, 2063f
                  bgeu         s5, t4, 2051f
                  bgeu         s4, t3, 2061f
                  bne          s8, a2, 2052f
                  sltiu        t3, a6, 1357
                  and          ra, s11, t6
                  lui          t5, 395372
                  andi         t1, a6, -324
2051:             nop
2052:             andi         t4, s10, 403
2053:             slt          a6, zero, s0
                  lui          s0, 833078
                  bltu         s10, t2, 2056f
2056:             sra          sp, s3, t1
                  sra          t5, a6, s11
                  sub          s8, s10, s11
                  sltiu        t0, t0, 1419
                  blt          a0, s10, 2070f
2061:             auipc        s0, 547922
                  bge          t1, s9, 2063f
2063:             auipc        s11, 896255
                  sltu         t2, tp, s5
                  sub          s7, t6, sp
                  slt          s11, s0, tp
                  bgeu         ra, s11, 2078f
                  sll          a3, s11, zero
                  add          t4, t4, t1
2070:             srli         s11, a3, 10
                  sll          s1, a1, a5
                  bgeu         s5, a7, 2075f
                  sltiu        s5, a7, 348
                  sra          s0, zero, t3
2075:             or           t2, a4, gp
                  sra          s1, a4, t0
                  beq          a6, t0, 2093f
2078:             sltu         s0, gp, s5
                  auipc        a2, 500462
                  sra          s11, t4, s10
                  and          t4, s6, t3
                  and          a7, t4, s3
                  xor          s11, zero, a4
                  or           t1, a0, s0
                  slt          a5, t4, s1
                  and          s6, a1, s10
                  xor          s10, s0, s5
                  beq          s6, a1, 2090f
                  nop
2090:             blt          tp, t4, 2097f
                  sltu         tp, t4, ra
                  bgeu         a3, s2, 2107f
2093:             and          s7, a6, a6
                  slt          sp, s4, ra
                  bge          a1, t6, 2101f
                  sub          s10, s5, s9
2097:             add          t2, t4, s1
                  lui          s5, 243827
                  bge          gp, a1, 2101f
                  bge          s9, a6, 2118f
2101:             beq          s0, a2, 2114f
                  auipc        t0, 428854
                  bge          t2, a5, 2119f
                  srli         zero, s3, 10
                  or           t4, s1, t0
                  addi         s11, s10, 1854
2107:             bge          a6, s3, 2109f
                  or           gp, a4, a3
2109:             addi         a3, a5, -1652
                  or           a2, s1, t0
                  bltu         s5, a7, 2112f
2112:             slti         s1, a4, 1054
                  sra          s11, s2, sp
2114:             addi         t6, gp, 422
                  bge          a7, s9, 2120f
                  ori          a4, tp, -2011
                  blt          a4, s0, 2124f
2118:             srl          t3, a6, sp
2119:             xor          a0, s5, a6
2120:             bne          s2, t0, 2134f
                  andi         a5, a4, 430
                  sra          s7, tp, a4
                  add          t3, t1, s3
2124:             sltu         s6, s11, t0
                  addi         t6, a1, 309
                  bne          t3, s1, 2127f
2127:             xori         t3, a4, 1926
                  slli         s10, s9, 17
                  slli         s0, a6, 1
                  sltiu        t1, tp, 1171
                  lui          a2, 615056
                  sltiu        gp, a0, 1402
                  beq          a5, t0, 2152f
2134:             andi         s4, t5, 1266
                  auipc        a1, 317005
                  or           t0, a6, s11
                  bgeu         zero, s6, 2139f
                  nop
2139:             and          s5, s11, s4
                  slti         t2, s6, 1319
                  nop
                  bge          t3, s10, 2149f
                  srl          s4, t4, t4
                  bge          sp, s1, 2154f
                  sltu         a6, a2, t4
                  sltiu        t1, gp, 1843
                  bltu         s4, s10, 2164f
                  blt          a5, s9, 2166f
2149:             bltu         a6, s7, 2160f
                  auipc        t3, 589632
                  bgeu         s7, s2, 2162f
2152:             slli         t1, s4, 4
                  srai         s8, tp, 3
2154:             slti         s1, gp, 1928
                  sra          a2, gp, s1
                  nop
                  bgeu         s4, a7, 2173f
                  la           s10, region_0+112 #start riscv_load_store_rand_instr_stream_15
                  addi         ra, sp, -290
                  lbu          s1, 446(s10)
                  lb           ra, 1803(s10)
                  sll          a1, t3, s3
                  sub          s11, t6, s11
                  srl          a2, t6, a1
                  sltu         t1, s9, tp
                  srl          tp, s1, s1
                  nop
                  lb           a0, 1867(s10)
                  add          a7, s1, t3
                  sub          s11, t6, a7
                  lbu          t2, 429(s10)
                  sb           t6, 406(s10)
                  auipc        tp, 823394
                  slti         t2, s5, -740
                  srl          zero, s1, t3
                  lb           t0, 1041(s10)
                  slti         tp, t6, 1366
                  lb           s8, 355(s10)
                  slli         s4, gp, 12
                  addi         tp, s3, -2024
                  slti         t4, s3, 1877
                  lhu          t1, 1088(s10)
                  lhu          a0, 1166(s10)
                  sh           t6, -8(s10)
                  lhu          s8, 1866(s10)
                  xori         t5, zero, -1419
                  ori          a6, s6, -1563
                  lb           a7, 769(s10)
                  lbu          zero, 142(s10)
                  lb           s7, 591(s10)
                  lbu          s1, 1321(s10)
                  sra          s7, t2, sp
                  add          t4, ra, s10
                  lbu          tp, 1573(s10)
                  slli         a4, t4, 4
                  slt          a2, s1, s2
                  lbu          s1, 313(s10) #end riscv_load_store_rand_instr_stream_15
                  slt          a2, s11, s8
                  xori         sp, s8, 1575
2160:             nop
                  bge          s0, s0, 2164f
2162:             srli         t2, tp, 28
                  addi         a3, ra, -1173
2164:             lui          a6, 444418
                  blt          zero, a6, 2172f
2166:             sra          t6, s3, gp
                  beq          a1, s5, 2169f
                  slti         gp, s3, 2
2169:             add          a6, t0, t2
                  bge          t3, a5, 2183f
                  add          t4, a7, a4
2172:             ori          sp, t0, -1268
2173:             bltu         a4, s0, 2187f
                  blt          s1, s11, 2180f
                  slli         s10, a4, 26
                  and          gp, gp, a5
                  bgeu         ra, s6, 2183f
                  sra          t6, s3, s10
                  sltiu        ra, a2, -244
2180:             beq          t2, s10, 2191f
                  xor          t2, s7, s11
                  slt          s11, sp, a2
2183:             srli         a1, t4, 23
                  bltu         tp, a2, 2199f
                  bgeu         zero, t4, 2205f
                  sll          t3, s6, s7
2187:             auipc        a6, 264933
                  sra          t4, a1, a1
                  slti         s0, s5, -2016
                  srl          t3, a6, a6
2191:             srl          s10, t6, ra
                  slli         s4, s3, 25
                  sub          a3, s8, s0
                  slt          s10, s6, s4
                  bge          a3, gp, 2206f
                  auipc        ra, 824240
                  srli         s11, s0, 30
                  bge          s3, s6, 2208f
2199:             add          a5, t4, t3
                  sra          t5, t5, s7
                  sltu         s7, zero, tp
                  srli         s11, a0, 5
                  blt          ra, s10, 2204f
2204:             andi         sp, s4, -393
2205:             bgeu         tp, t2, 2220f
2206:             slti         s8, a4, -1358
                  bltu         a2, a1, 2218f
2208:             srl          zero, s3, a1
                  bge          s8, t1, 2219f
                  lui          s7, 597527
                  ori          a7, t3, 572
                  sra          s7, tp, s5
                  sra          t2, s8, s2
                  xori         s0, sp, 1347
                  xori         s7, a0, -403
                  srli         t4, t3, 11
                  bge          s7, t2, 2219f
2218:             bge          ra, a5, 2237f
2219:             sra          a2, s10, a5
2220:             auipc        s11, 928763
                  auipc        a5, 521496
                  andi         t3, tp, 1564
                  bgeu         a4, t6, 2224f
2224:             sub          s11, a5, zero
                  sll          sp, t5, s6
                  slti         sp, ra, -1581
                  srl          s6, t1, a0
                  bgeu         zero, t5, 2244f
                  ori          a1, a6, 503
                  blt          a5, s9, 2244f
                  andi         s7, t1, 1073
                  srai         a0, ra, 20
                  bne          zero, sp, 2239f
                  auipc        sp, 369307
                  bge          t4, a5, 2242f
                  auipc        s4, 737625
2237:             sltiu        ra, zero, 999
                  bgeu         ra, a5, 2241f
2239:             sll          ra, s10, a7
                  auipc        a2, 386787
2241:             bge          gp, s4, 2257f
2242:             sra          t4, s1, s9
                  slt          s4, s5, s4
2244:             slti         s8, ra, 447
                  srai         t5, s10, 17
                  and          a4, a3, zero
                  sll          a2, s9, t5
                  xori         t1, a0, -162
                  sub          a1, s8, gp
                  sll          a3, a3, t6
                  srl          s7, s9, a3
                  nop
                  and          ra, tp, a1
                  sub          a7, t5, a5
                  slti         a7, a7, 752
                  beq          t1, s0, 2267f
2257:             sltiu        s0, a3, 1877
                  nop
                  bgeu         t1, gp, 2277f
                  bge          t2, a3, 2270f
                  xor          t4, s9, t6
                  blt          s0, a5, 2264f
                  sra          t2, a1, ra
2264:             sra          s8, ra, ra
                  bne          t6, s8, 2271f
                  bltu         s10, tp, 2273f
2267:             auipc        a2, 985398
                  srl          a6, a7, t1
                  sll          s5, a2, t3
2270:             slt          s6, gp, s0
2271:             xori         tp, tp, -1248
                  andi         s11, a6, -341
2273:             andi         sp, s11, -259
                  ori          s0, a3, -320
                  sra          a1, s6, t6
                  addi         s10, a3, 862
2277:             nop
                  ori          t3, zero, -1238
                  bne          s2, t5, 2293f
                  nop
                  srl          zero, t6, a6
                  sra          a3, t2, s5
                  slti         t6, s6, -1447
                  srai         t6, t5, 28
                  beq          a7, s0, 2292f
                  and          t0, s3, s2
                  ori          gp, a4, 805
                  auipc        t6, 313268
                  slt          a3, s10, s8
                  or           a2, gp, t6
                  slt          s8, a0, t0
2292:             auipc        zero, 716667
2293:             slt          gp, a2, tp
                  auipc        a4, 378032
                  andi         gp, s9, -49
                  bltu         t5, a6, 2307f
                  srai         s4, s8, 8
                  or           a1, t1, s11
                  and          s10, s11, s8
                  beq          s6, a7, 2301f
2301:             andi         a5, a6, -979
                  sra          ra, a2, s9
                  srai         zero, t2, 1
                  srl          s4, a2, a7
                  srai         s7, s3, 9
                  bne          t6, s5, 2317f
2307:             bge          s5, s5, 2309f
                  addi         t2, s1, 265
2309:             sll          gp, s9, s9
                  sltiu        t2, a7, -177
                  slti         s4, t1, -135
                  sra          s11, s3, a3
                  slli         s5, s3, 11
                  bltu         s8, t3, 2329f
                  srli         s8, gp, 9
                  and          gp, s10, a5
2317:             sra          a0, a6, t6
                  ori          s6, t1, -1919
                  lui          tp, 575076
                  bgeu         t0, t1, 2337f
                  bgeu         a5, t2, 2341f
                  srai         t1, zero, 6
                  andi         s1, tp, 451
                  xor          s4, a7, a4
                  or           s11, s0, t2
                  addi         t3, t3, 1544
                  ori          sp, s6, -1431
                  lui          zero, 886395
2329:             bgeu         s10, a6, 2344f
                  andi         s5, a3, -234
                  srl          a2, s5, s11
                  lui          a6, 564474
                  slti         sp, s1, 400
                  or           a2, tp, a4
                  slli         t5, a3, 10
                  srl          a3, t3, s6
2337:             slli         s11, s10, 26
                  sll          s5, s2, s1
                  bne          a4, t6, 2352f
                  ori          a1, a3, -1108
2341:             sltu         tp, a7, a2
                  sltu         a5, s10, s6
                  ori          s0, gp, 287
2344:             bge          s11, t1, 2349f
                  srli         s0, t1, 8
                  xori         a2, a2, 409
                  sub          t2, ra, sp
                  srl          a4, s9, a3
2349:             beq          s9, t0, 2350f
2350:             slti         s5, t5, 722
                  sra          a6, s4, s3
2352:             xor          t1, a4, t4
                  bltu         a2, sp, 2368f
                  slti         t2, s9, 110
                  slti         s5, a1, 463
                  slti         s8, s3, 73
                  bne          s2, s1, 2367f
                  xori         s5, sp, -1660
                  lui          s5, 395919
                  sll          s0, a6, s6
                  bge          s7, a5, 2363f
                  sub          gp, s6, s11
2363:             slt          sp, ra, a3
                  bge          s8, s0, 2384f
                  addi         s8, t6, 1695
                  addi         s5, s0, 738
2367:             bgeu         s7, t1, 2381f
2368:             or           tp, t2, s10
                  bgeu         s8, a0, 2386f
                  or           s11, s0, s3
                  add          s4, s9, a7
                  sub          s4, a0, a0
                  slt          s8, gp, t1
                  auipc        a1, 810840
                  or           s10, t2, t5
                  xor          s11, s5, a6
                  bge          a4, gp, 2383f
                  lui          t4, 37954
                  sltu         s0, t5, a1
                  slli         a3, a2, 13
2381:             xor          s1, s10, s4
                  srai         s8, s4, 20
2383:             srl          t3, s10, t6
2384:             nop
                  blt          a3, t2, 2403f
2386:             bgeu         s10, a3, 2387f
2387:             add          t0, a6, s1
                  bne          s1, t4, 2399f
                  sltiu        t6, a0, -846
                  slli         a3, s4, 10
                  nop
                  and          s0, s5, s10
                  and          t4, a4, s6
                  sltiu        t0, t1, -1649
                  or           t0, s8, s7
                  or           s1, t4, s0
                  ori          t1, a5, -932
                  slt          s11, s0, a4
2399:             addi         a5, t6, 1702
                  bgeu         tp, t3, 2411f
                  slt          t6, a2, t6
                  slti         t5, zero, -1907
2403:             bltu         s1, t1, 2410f
                  bgeu         s11, t0, 2405f
2405:             ori          a6, s10, 865
                  srai         s6, s9, 8
                  nop
                  bge          a6, s9, 2411f
                  and          s6, a4, t4
2410:             andi         t4, s4, 1427
2411:             bge          gp, a2, 2425f
                  slti         s0, a3, -702
                  bge          a1, s7, 2426f
                  srl          a5, a0, t5
                  lui          t0, 588633
                  sltiu        s0, t2, -1711
                  slt          t1, ra, s8
                  xor          a4, a0, a6
                  xor          t2, t5, a5
                  xori         gp, s4, -86
                  srli         a0, t4, 17
                  srli         s6, t4, 22
                  ori          sp, a5, -1553
                  bltu         t2, s3, 2430f
2425:             srli         s8, s11, 7
2426:             sltiu        s7, t6, -809
                  slti         a5, s8, 1886
                  add          gp, t3, s2
                  add          a5, a4, s2
2430:             andi         sp, s4, -1464
                  and          t1, a5, a4
                  srai         s0, sp, 9
                  bltu         t4, s3, 2444f
                  slti         s10, a3, 739
                  xori         a3, a0, 909
                  bne          s9, t6, 2447f
                  sll          a4, s8, tp
                  bltu         t6, s3, 2454f
                  xori         s7, s9, -690
                  bgeu         t2, s7, 2459f
                  add          a4, s1, t0
                  sub          a7, s2, ra
                  sltu         t0, s3, s2
2444:             add          tp, s9, s1
                  sub          a7, t3, s6
                  sltu         s10, a5, tp
2447:             xor          a1, tp, s9
                  beq          s11, a1, 2455f
                  srl          a6, s0, s5
                  slti         t0, gp, -436
                  bne          t3, s0, 2456f
                  srli         s1, zero, 18
                  addi         gp, ra, -858
2454:             xor          s5, s11, s0
2455:             blt          a0, a5, 2462f
2456:             addi         s11, zero, -378
                  sra          gp, t3, a0
                  sltu         a3, zero, t6
2459:             sltiu        a7, s7, 1523
                  beq          s4, s3, 2461f
2461:             lui          gp, 306347
2462:             beq          s11, s0, 2472f
                  xori         s7, s11, 957
                  lui          s6, 723721
                  sra          a0, t2, t1
                  or           t5, a7, s8
                  sra          t6, ra, s11
                  srli         gp, s6, 4
                  andi         s6, t3, -640
                  srli         s11, t1, 23
                  xor          t0, gp, s8
                  la           sp, region_0+317 #start riscv_load_store_rand_instr_stream_13
                  sub          a6, t3, s1
                  lh           s7, -3(sp)
                  sub          t1, s7, a1
                  slt          zero, s1, s7
                  slt          t1, t0, s10
                  lb           ra, 36(sp)
                  lui          ra, 337552
                  and          a0, t6, s3
                  lw           t2, -61(sp)
                  lbu          t1, 22(sp)
                  lui          ra, 558588
                  xor          t4, a6, a6
                  sltiu        t2, a1, -2000
                  sb           t3, -28(sp)
                  sb           a2, 46(sp)
                  sltu         a5, zero, s10
                  lhu          s1, 35(sp)
                  nop
                  lb           t2, -26(sp)
                  slli         a2, s0, 0
                  lui          t1, 490724
                  add          s6, a2, zero
                  sb           sp, 46(sp)
                  sb           s6, 36(sp)
                  sltiu        a3, s8, -266
                  addi         s5, t2, -1798
                  sb           s2, 54(sp)
                  sub          s4, s4, s11
                  auipc        s0, 309959
                  lb           gp, -41(sp)
                  lb           s11, -57(sp)
                  sra          s7, zero, a0
                  lui          t0, 53343
                  slt          s8, zero, s10
                  lbu          s10, -15(sp)
                  srai         s11, ra, 6
                  sh           s1, 3(sp)
                  srai         a3, a1, 11
                  sra          s1, a1, t5
                  sb           a6, 64(sp)
                  sra          tp, a3, a1
                  andi         a7, zero, -345
                  sh           gp, -51(sp)
                  srl          a5, t0, s9
                  srl          s10, s6, a7
                  slli         t1, a6, 17
                  and          t0, a0, gp
                  lbu          a5, -15(sp)
                  sb           a4, -3(sp)
                  sh           a3, -63(sp) #end riscv_load_store_rand_instr_stream_13
2472:             nop
                  ori          s0, t1, 1038
                  srai         a2, s9, 10
                  sra          tp, a6, t2
                  slt          t6, gp, t0
                  auipc        gp, 565034
                  slti         ra, a6, -2027
                  srli         tp, tp, 2
                  nop
                  lui          tp, 89890
                  add          s4, a6, t4
                  auipc        s8, 867367
                  slt          s10, s8, s6
                  nop
                  lui          a5, 773768
                  ori          s11, s10, 631
                  sltu         t0, t4, sp
                  bge          s9, a1, 2505f
                  blt          s5, s8, 2492f
                  srai         a4, a2, 7
2492:             slti         a5, s6, -217
                  xor          t4, s11, t3
                  ori          a3, a2, 316
                  auipc        t0, 560570
                  nop
                  ori          a2, t2, 1633
                  bne          s4, t4, 2500f
                  bne          t1, t3, 2514f
2500:             sll          t5, a7, a6
                  nop
                  sltiu        s11, a6, 1873
                  bge          s5, zero, 2509f
                  and          t1, s3, t4
2505:             sub          sp, t1, gp
                  or           t0, a5, a0
                  sra          t0, t1, s11
                  slt          gp, s10, t0
2509:             beq          ra, s11, 2520f
                  and          s6, a6, s2
                  lui          t5, 161154
                  beq          s8, a1, 2523f
                  add          s0, t1, sp
2514:             lui          a2, 411521
                  addi         tp, s10, 1548
                  xor          s0, tp, s11
                  and          tp, t6, t3
                  xori         s0, t1, 1649
                  nop
2520:             blt          a7, tp, 2527f
                  lui          s11, 591808
                  sltiu        t4, s0, -259
2523:             sll          t6, s10, s7
                  slli         t0, a4, 21
                  sltiu        zero, s9, -2024
                  xor          t6, t3, tp
2527:             blt          s10, zero, 2538f
                  sltiu        sp, t5, 1495
                  addi         a6, s6, 1061
                  lui          t5, 844904
                  bne          s1, s9, 2536f
                  beq          t2, a6, 2548f
                  slt          s5, a0, s4
                  ori          ra, a3, -1919
                  bge          t1, a3, 2536f
2536:             sltiu        s5, tp, 799
                  and          a2, s9, s8
2538:             bge          s0, s3, 2539f
2539:             add          t0, t1, s0
                  bne          a2, t1, 2554f
                  slli         gp, t6, 0
                  sltiu        a0, s2, -856
                  sltiu        s6, s5, 1245
                  and          a2, s1, s4
                  ori          t5, a7, 515
                  sltiu        zero, s11, 1900
                  auipc        a1, 916525
2548:             nop
                  and          s0, s2, t5
                  or           ra, t0, s2
                  srai         s11, t5, 17
                  slti         a4, a1, 1247
                  sltiu        t1, a6, 211
2554:             srl          a0, t5, t0
                  ori          t6, a0, -1746
                  srai         t1, a3, 0
                  slt          s8, s9, t6
                  or           s7, a7, s10
                  srli         t0, a0, 2
                  nop
                  auipc        a4, 892207
                  sltiu        zero, s9, 365
                  xori         a3, ra, -778
                  sub          s8, s10, t4
                  or           s4, s10, a3
                  nop
                  auipc        s0, 182828
                  bne          s2, s8, 2570f
                  sltu         a0, t6, s1
2570:             bne          t4, t5, 2580f
                  sltu         a4, a2, s6
                  add          s7, s11, t2
                  slti         sp, gp, 1058
                  addi         t6, a3, 137
                  and          a4, s10, s3
                  bne          a3, t6, 2591f
                  slt          s5, s0, a2
                  and          s11, a5, tp
                  beq          s10, sp, 2595f
2580:             or           tp, tp, s7
                  sltiu        t4, sp, 273
                  bltu         a7, a0, 2588f
                  sll          s7, a4, a0
                  sra          t0, a2, s2
                  sll          a0, t2, a3
                  slt          s7, a4, a6
                  ori          t6, t4, 761
2588:             or           s0, s11, t5
                  sltu         s5, a3, s10
                  bge          a2, ra, 2593f
2591:             lui          t6, 23995
                  bne          t2, s8, 2594f
2593:             slt          t2, s1, a1
2594:             sltu         sp, s2, a2
2595:             sra          a6, t5, a7
                  sll          s7, s11, s6
                  srl          s7, a7, sp
                  lw           t3, 4(s2)
                  or           s0, s0, s6
                  lui          s11, 42156
                  addi         s2, s2, 60
                  addi         a7, t5, -338
                  sra          s8, zero, t6
                  auipc        a1, 83908
3439:             addi x23, x28, 1
3439:             jalr x23, x23, 0
sub_6:            slt          a0, zero, s2
                  bge          t2, s0, sub_6_stack_p
                  srai         a1, s11, 26
                  sll          a6, sp, s11
                  xori         t1, a6, 1450
sub_6_stack_p:    addi         s2, s2, -64
                  addi         a1, a7, -749
                  sw           t3, 4(s2)
                  lui          s11, 779902
                  addi         s1, s0, 809
                  la           sp, region_0+1435 #start riscv_load_store_rand_instr_stream_0
                  sb           s6, -14(sp)
                  sb           s1, -2(sp)
                  sra          a1, s1, t5
                  xor          s4, s3, zero
                  lhu          s1, -1(sp)
                  lbu          s4, -7(sp)
                  lh           t5, -13(sp)
                  sltu         t3, a6, t0
                  sltu         tp, tp, s8
                  sb           t6, -2(sp)
                  sra          t5, ra, s5
                  sh           t4, 11(sp)
                  lhu          a3, -5(sp)
                  lb           s11, 16(sp)
                  slt          a2, s2, t3
                  and          s7, a6, s4
                  lhu          gp, 7(sp)
                  auipc        t4, 493877
                  lb           a1, 4(sp)
                  lb           s7, -10(sp)
                  sb           a7, 0(sp)
                  add          a5, t0, t4
                  addi         s6, zero, 418
                  sltiu        s0, t4, -1727
                  lb           a4, 5(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+231 #start riscv_load_store_rand_instr_stream_1
                  xor          t4, s1, s3
                  sltiu        s1, s0, 539
                  lbu          t0, -1(sp)
                  addi         s4, t5, 1456
                  lhu          t4, -11(sp)
                  sra          a2, s1, s6
                  slti         tp, a4, 88
                  sb           s7, -8(sp)
                  lb           t2, -10(sp)
                  auipc        t6, 453243
                  sh           a5, -13(sp)
                  addi         s11, t5, 426
                  srli         s6, t6, 7
                  and          s10, a2, t2
                  sltu         t2, s6, tp
                  sb           s2, -2(sp)
                  sub          zero, s6, a5
                  sb           a4, 2(sp)
                  lbu          t6, -10(sp)
                  or           s1, s10, a2
                  and          t2, a7, s3
                  slt          s5, t1, t6
                  xor          t4, s8, a7
                  sltu         a1, s8, s9
                  sra          a5, t0, s3
                  nop
                  addi         a1, s5, -369
                  lb           a6, -2(sp)
                  sra          t5, ra, a4
                  lb           a2, -1(sp)
                  lb           a4, 8(sp)
                  lhu          t3, 11(sp)
                  and          a6, t4, s7
                  sll          ra, t4, t5
                  slli         gp, gp, 21
                  lw           a0, -3(sp)
                  sra          s10, ra, s6
                  lbu          t1, 12(sp)
                  slli         s6, a3, 12
                  sb           a2, 11(sp)
                  lbu          ra, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1761 #start riscv_load_store_rand_instr_stream_3
                  lb           s10, 55(sp)
                  lh           s11, 5(sp)
                  sh           s8, 25(sp)
                  lbu          s8, -48(sp)
                  lb           s5, 45(sp)
                  ori          t5, s11, 1596
                  sb           a3, 38(sp)
                  lhu          s6, -23(sp)
                  sh           sp, -31(sp)
                  sb           a5, 34(sp)
                  srl          s1, a4, t3
                  sh           sp, 49(sp)
                  lb           a3, 14(sp)
                  lbu          t6, 26(sp)
                  sw           t4, -25(sp)
                  lh           s11, 55(sp)
                  lb           s11, -50(sp)
                  sltu         a4, s0, tp
                  sh           t6, 11(sp)
                  sh           ra, -7(sp)
                  lbu          s11, 32(sp)
                  sh           t0, 49(sp)
                  lbu          s4, -30(sp)
                  sra          s5, s7, sp
                  sltiu        t2, a0, -902
                  srl          ra, s9, ra
                  addi         zero, s10, 1327
                  lbu          a5, -27(sp)
                  lui          t3, 841794
                  lbu          t4, 20(sp)
                  sh           t3, -39(sp)
                  sw           t2, 59(sp)
                  lbu          s8, -56(sp)
                  lb           a3, 15(sp)
                  slti         ra, a2, -1642
                  lbu          s7, 12(sp)
                  sb           t2, -7(sp)
                  slli         a5, ra, 6
                  lb           t3, 58(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_0+164 #start riscv_load_store_rand_instr_stream_4
                  lb           a4, -12(a7)
                  add          ra, a1, s4
                  srli         a1, s10, 15
                  add          ra, a5, t2
                  slti         s0, a2, -1026
                  add          zero, t1, s11
                  sb           t1, -49(a7)
                  lhu          s11, 26(a7)
                  lbu          zero, -27(a7)
                  auipc        s10, 578130
                  sub          t5, t5, s9
                  sb           t5, 58(a7)
                  lb           zero, 11(a7)
                  slt          t0, s11, s5
                  lb           s1, -55(a7)
                  sb           s2, -21(a7)
                  lbu          a4, 30(a7)
                  addi         s5, t4, 440
                  lbu          t3, -37(a7)
                  addi         t2, t0, 1222
                  sltu         s7, t5, t5
                  and          s8, s4, s3
                  slti         t2, s3, -927
                  lb           s7, 6(a7)
                  sltu         a1, a4, a6
                  lbu          t5, -9(a7)
                  lbu          a6, 26(a7)
                  auipc        t1, 784948
                  and          t4, s2, s11
                  lui          ra, 552748
                  add          s6, s9, s2
                  lbu          t4, 55(a7)
                  lb           t4, -42(a7)
                  lb           ra, -59(a7)
                  nop
                  sb           t6, -26(a7)
                  sh           s4, 34(a7)
                  sub          s7, s9, a3
                  srli         a0, t5, 0
                  lb           a4, 25(a7)
                  slli         gp, s5, 3
                  lhu          a1, 28(a7)
                  lb           gp, 14(a7)
                  lb           a1, -51(a7)
                  ori          t3, s0, -895
                  lb           s0, -19(a7) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+787 #start riscv_load_store_rand_instr_stream_2
                  and          t4, ra, ra
                  addi         s8, s8, -1959
                  lui          t1, 797994
                  srli         t6, a4, 1
                  lb           t3, -13(sp)
                  srl          zero, s11, s3
                  lbu          ra, 29(sp)
                  andi         s1, s4, 36
                  sb           a5, 20(sp)
                  lhu          a4, 63(sp)
                  lb           t2, 4(sp)
                  lb           s8, 45(sp)
                  lhu          s8, -53(sp)
                  xori         s0, a0, -1973
                  lb           a4, 22(sp)
                  srli         t2, gp, 17
                  sra          a0, a1, ra
                  sb           a3, -43(sp)
                  lbu          a1, -24(sp)
                  andi         t1, s10, 1573
                  and          a6, a0, s7
                  add          a2, t2, a3
                  sb           a4, 36(sp)
                  lbu          a7, 34(sp)
                  sb           tp, 8(sp)
                  sltiu        a4, gp, -585
                  sltiu        s1, a1, 794
                  sll          s4, s3, s5
                  slti         gp, s0, -1564
                  sb           a3, 32(sp)
                  lb           a1, -13(sp)
                  srli         t0, a3, 29
                  lui          t3, 345141
                  ori          s7, t2, 1177
                  add          a0, a3, s4
                  sb           s9, 44(sp)
                  slti         t4, zero, -280
                  sub          a7, s0, s5
                  slli         t2, a1, 16
                  sb           s11, 62(sp)
                  sb           a7, -34(sp)
                  sltu         t2, s8, s5
                  srl          a5, t6, s6
                  lbu          t4, -44(sp)
                  sb           s3, 18(sp)
                  auipc        s0, 297724
                  lbu          t2, -18(sp)
                  sra          tp, s0, a4
                  lb           s4, 30(sp)
                  sltu         zero, a3, s6
                  lb           s7, -38(sp) #end riscv_load_store_rand_instr_stream_2
                  srl          a7, a3, a7
                  slti         s0, t0, 1534
                  xor          zero, s6, t0
                  addi         sp, a4, 1426
                  andi         s7, zero, -1382
                  beq          a2, t4, 15f
                  slti         a3, zero, -1044
                  beq          s1, s9, 8f
8:                srl          tp, a2, s8
                  sltiu        t4, a7, -1900
                  bne          sp, t1, 28f
                  bge          s2, s5, 16f
                  bltu         tp, a7, 22f
                  bgeu         a0, s1, 14f
14:               or           sp, s1, zero
15:               or           sp, t2, s11
16:               sltiu        s0, s6, -1497
                  slli         t0, s11, 3
                  beq          t6, a5, 24f
                  bltu         s0, a0, 39f
                  or           a3, t1, s5
                  bltu         ra, s0, 34f
22:               slti         sp, s9, -1235
                  sub          s10, a5, t3
24:               andi         s10, s0, 434
                  ori          a2, t4, 1587
                  xori         zero, s0, -321
                  nop
28:               sltu         s7, s6, t6
                  and          s5, s5, tp
                  blt          a7, gp, 37f
                  srli         a2, s4, 11
                  sub          sp, a6, s2
                  sra          t3, s6, s9
34:               ori          zero, s5, -549
                  andi         t1, s11, -1046
                  sltu         ra, ra, ra
37:               bne          sp, a5, 57f
                  slt          t2, a2, t5
39:               slli         tp, t2, 28
                  addi         s5, s2, 1443
                  bltu         a4, a5, 56f
                  slti         t2, t5, -743
                  sltu         s7, gp, s4
                  slli         s1, sp, 0
                  xor          s6, t1, s9
                  andi         tp, s9, 995
                  beq          zero, ra, 48f
48:               and          a0, t3, t0
                  slti         s11, t6, -228
                  beq          a6, t5, 54f
                  bne          s10, t2, 52f
52:               nop
                  sra          t3, zero, s8
54:               xori         t4, a0, -817
                  slti         t3, s9, -777
56:               addi         ra, a0, -1047
57:               or           zero, s5, s2
                  bge          t5, s11, 70f
                  blt          s5, s5, 77f
                  bne          t5, t5, 77f
                  srai         t1, a0, 21
                  sltu         sp, s11, a2
                  slli         t5, sp, 9
                  beq          a3, sp, 79f
                  beq          a5, gp, 73f
                  beq          s2, t6, 73f
                  ori          a6, t4, -1006
                  beq          t1, t5, 85f
                  sub          s4, t2, s1
70:               srai         a0, a3, 3
                  slti         t0, t2, -1684
                  bltu         s10, s11, 90f
73:               srli         a1, s3, 7
                  nop
                  and          a2, s2, a5
                  auipc        a0, 654216
77:               srli         gp, a3, 28
                  sltu         t5, s10, a3
79:               bge          a7, zero, 93f
                  xor          t3, s11, t6
                  sll          zero, s8, s2
                  andi         t1, t1, -1483
                  auipc        s11, 222978
                  srl          a6, tp, zero
85:               and          t6, a6, a2
                  srli         sp, a0, 3
                  auipc        zero, 165808
                  srl          a4, a5, s6
                  and          s0, t3, s6
90:               nop
                  blt          a3, sp, 109f
                  slti         t4, s0, 668
93:               bltu         t0, s8, 105f
                  srl          ra, s6, sp
                  addi         t5, a7, -1888
                  sub          a6, tp, s3
                  beq          t6, s10, 109f
                  sltiu        t0, s3, -812
                  ori          s11, t4, 1573
                  or           s0, s5, a5
                  andi         ra, s9, 1140
                  ori          a6, zero, 1075
                  slti         s7, s6, -1935
                  blt          s9, a1, 107f
105:              blt          a2, t2, 114f
                  and          a0, a0, s6
107:              xor          sp, t4, a2
                  slti         sp, s2, 1695
109:              sub          sp, s1, s7
                  sltiu        a7, s3, -827
                  auipc        gp, 62375
                  slti         s0, t5, -1784
                  slli         s5, s0, 8
114:              andi         s0, a2, 744
                  nop
                  slti         ra, a6, 1138
                  xor          t0, s1, zero
                  sltu         s0, a2, s3
                  bne          s2, s2, 137f
                  bgeu         s8, a1, 138f
                  slt          s11, s10, t5
                  sltu         s10, s8, zero
                  or           a5, tp, a3
                  beq          s1, a0, 131f
                  beq          s6, a7, 134f
                  sra          s0, s1, s7
                  slli         t5, gp, 28
                  slt          t6, gp, a5
                  sub          t2, t2, ra
                  sltiu        s5, ra, -1868
131:              nop
                  and          s6, a7, s4
                  bge          s9, t4, 151f
134:              ori          t0, a4, -404
                  sub          a2, t3, s6
                  blt          gp, s10, 156f
137:              sub          s8, tp, s4
138:              or           t3, a7, t0
                  bne          s2, t4, 152f
                  slt          tp, a1, s7
                  or           s6, t6, zero
                  addi         s6, a0, 957
                  andi         s6, a0, -993
                  slti         a1, gp, -453
                  slti         t4, s2, 1712
                  sltu         a1, a1, t3
                  sra          zero, zero, s11
                  slli         s4, sp, 15
                  bge          tp, t4, 163f
                  xor          s11, s11, t6
151:              srai         tp, s8, 24
152:              sll          s4, t6, s4
                  slt          t2, gp, zero
                  addi         a0, s11, 861
                  sub          ra, s11, t0
156:              sub          s7, s11, s5
                  and          a5, s4, s10
                  srli         s10, s7, 26
                  srai         a2, s9, 6
                  srai         s5, t6, 25
                  slli         s7, a7, 20
                  and          a5, t0, s8
163:              srli         t1, a2, 23
                  andi         t1, a2, 1282
                  lui          zero, 855662
                  addi         s5, a7, -1663
                  bgeu         a5, a6, 172f
                  sltiu        s11, s9, 1670
                  sub          t0, s0, sp
                  sltu         s4, a3, a6
                  sll          t6, a1, a6
172:              sltiu        a1, t0, 1907
                  auipc        tp, 1000116
                  slt          s5, t6, a6
                  sra          s4, t6, a4
                  bltu         s10, s5, 180f
                  srai         t6, t6, 10
                  andi         tp, a7, 1684
                  bltu         s1, ra, 189f
180:              sll          t0, s2, sp
                  srl          zero, zero, t4
                  auipc        gp, 482081
                  beq          s11, s7, 195f
                  add          t6, t4, s3
                  srai         t6, zero, 29
                  slt          s5, s10, a2
                  addi         t4, a0, 264
                  bge          s6, gp, 200f
189:              srli         a3, tp, 15
                  nop
                  xor          t3, s5, s0
                  add          t1, a1, t4
                  bgeu         s4, a0, 194f
194:              bne          s4, s9, 212f
195:              add          s11, s1, s8
                  and          s8, a4, zero
                  slti         s4, s6, 907
                  srl          t0, t1, a1
                  blt          ra, a7, 205f
200:              sll          a1, t0, ra
                  slti         a5, tp, -66
                  sub          a7, s6, s6
                  bltu         a0, gp, 204f
204:              add          a5, s4, t2
205:              lui          t5, 465435
                  beq          s1, a2, 207f
207:              sub          s5, t3, s3
                  addi         t5, s6, 1583
                  bne          t5, a6, 226f
                  sltiu        ra, tp, 520
                  lui          s1, 120569
212:              sra          t5, s9, s3
                  auipc        a6, 793585
                  blt          s9, a6, 224f
                  blt          gp, a3, 230f
                  bge          t4, a3, 223f
                  blt          t4, gp, 237f
                  beq          t4, a7, 230f
                  slt          gp, s10, t5
                  ori          a0, tp, 1646
                  sub          t1, s7, gp
                  blt          a1, t5, 240f
223:              xor          t1, gp, s5
224:              sra          a3, a7, a2
                  xori         gp, zero, -2015
226:              add          s1, sp, s6
                  beq          a5, a6, 245f
                  ori          t5, a5, -1672
                  sub          s11, t3, zero
230:              sltiu        s5, a4, -1177
                  sub          s1, a1, s11
                  auipc        t2, 109083
                  add          a4, a4, s8
                  auipc        t6, 965402
                  bne          a2, s1, 243f
                  lui          a1, 545142
237:              srli         gp, a4, 30
                  srli         a7, s0, 24
                  bgeu         tp, s5, 254f
240:              bltu         s9, t0, 257f
                  sra          s7, s5, t0
                  blt          ra, s6, 243f
243:              beq          s5, s8, 246f
                  blt          a6, t6, 256f
245:              slt          a4, t4, a7
246:              add          s5, sp, a0
                  xori         a7, s9, 466
                  sra          a4, gp, s8
                  sub          t0, s8, s8
                  bne          s0, s4, 262f
                  sra          a6, s7, tp
                  bgeu         a7, s8, 266f
                  bltu         t1, a3, 270f
254:              sub          t1, t6, t6
                  xori         s10, s11, 1202
256:              or           s8, sp, a3
257:              auipc        tp, 596370
                  lui          t0, 3746
                  sll          s4, a1, a6
                  auipc        zero, 774952
                  beq          ra, s8, 279f
262:              sra          s1, s0, t3
                  bltu         ra, t4, 264f
264:              blt          s10, a2, 281f
                  bne          s9, a2, 280f
266:              slli         zero, s2, 10
                  bltu         s7, s2, 270f
                  auipc        t2, 490123
                  sltu         t4, s6, t1
270:              ori          s1, s2, 63
                  ori          a1, t4, 468
                  xor          a3, a7, a0
                  addi         a3, zero, 1899
                  sltiu        a0, s0, 1695
                  sra          s1, sp, tp
                  srl          a0, s7, t1
                  sub          a6, t4, s4
                  srl          a7, t5, t2
279:              addi         t6, t6, -677
280:              lui          s11, 913271
281:              bltu         a2, t6, 291f
                  slti         t0, s10, -1835
                  srl          a7, t0, gp
                  slli         a4, s10, 5
                  auipc        s4, 252193
                  auipc        gp, 994842
                  beq          a2, a1, 307f
                  blt          s2, a4, 289f
289:              blt          s5, a5, 304f
                  sltiu        t1, t3, 1015
291:              xori         a2, t5, 754
                  sltu         a2, t1, s7
                  and          s10, s2, s1
                  blt          s5, zero, 314f
                  bge          a7, s8, 304f
                  bne          t2, s6, 303f
                  bge          s7, t6, 298f
298:              bltu         a2, s1, 311f
                  slt          sp, t2, s2
                  beq          t0, s6, 305f
                  srai         t6, a4, 26
                  srli         ra, s8, 18
303:              auipc        t2, 889128
304:              bltu         s3, s1, 312f
305:              lui          gp, 1040347
                  nop
307:              slt          a7, s3, gp
                  sltu         s7, t2, tp
                  lui          sp, 190798
                  and          zero, s4, t6
311:              blt          s10, s11, 329f
312:              bltu         a5, s6, 313f
313:              bgeu         t5, t0, 317f
314:              andi         s6, t5, -1584
                  addi         a6, s2, 611
                  bltu         s6, s3, 326f
317:              xor          tp, a4, s4
                  slti         a4, a0, 434
                  slli         a0, s1, 27
                  lui          s10, 681342
                  beq          t6, s6, 339f
                  srai         a5, gp, 4
                  sll          t6, gp, t3
                  or           t4, s6, t0
                  bge          a1, s9, 343f
326:              xori         sp, t2, -505
                  blt          gp, ra, 339f
                  nop
329:              srl          s11, a0, t2
                  sll          t4, t4, t3
                  sra          t1, s3, t4
                  sub          a0, a3, t6
                  bltu         s11, s11, 351f
                  sra          s4, t1, tp
                  srl          tp, t0, t5
                  sra          a1, s10, s10
                  auipc        tp, 454469
                  lui          ra, 584330
339:              slti         zero, zero, 1452
                  slti         s1, a4, -690
                  sltiu        s1, s5, -1926
                  xor          a4, t4, t1
343:              add          a2, t5, a4
                  addi         s6, a0, 1389
                  ori          zero, s10, 214
                  slt          s0, s0, a4
                  add          s5, s7, t0
                  xori         s4, s6, 1369
                  or           sp, t2, s6
                  andi         a7, s11, -367
351:              or           a3, t1, s6
                  srl          s11, a3, a0
                  slli         s8, s2, 6
                  add          ra, s3, a5
                  sll          t1, s11, sp
                  bltu         t6, t4, 363f
                  slli         a0, gp, 27
                  slti         zero, t1, -1684
                  addi         a4, t5, 1197
                  srli         zero, t1, 19
                  sll          s6, ra, a3
                  srli         s7, s9, 23
363:              or           t2, s4, s9
                  blt          a0, t5, 370f
                  sub          tp, s4, a0
                  sll          t5, a3, s0
                  and          a2, s9, a6
                  or           a1, zero, t5
                  ori          a4, tp, 1024
370:              sub          ra, t1, s1
                  sltiu        t2, sp, -247
                  auipc        a6, 708636
                  nop
                  slli         s7, s1, 6
                  auipc        s6, 787169
                  beq          s3, a7, 383f
                  bne          t2, a3, 378f
378:              andi         s8, s5, -960
                  srl          a1, s1, a2
                  xori         t6, a4, -927
                  andi         gp, s11, -1052
                  sltu         s6, sp, t3
383:              xori         t6, a5, -663
                  xor          a0, a0, t1
                  sltiu        a4, t1, 659
                  blt          t5, ra, 393f
                  or           s11, tp, s1
                  sltu         s11, zero, s2
                  sltiu        s6, a5, 411
                  sll          t0, s8, t2
                  ori          t1, s7, 1385
                  blt          a3, a4, 397f
393:              sll          a4, a1, a3
                  sra          s6, a4, a0
                  slt          gp, s4, a5
                  auipc        t1, 168444
397:              ori          a5, s1, 446
                  xori         sp, gp, 1688
                  and          ra, s4, s8
                  addi         t4, a0, -974
                  lui          s10, 554649
                  sra          t0, s4, s8
                  addi         a5, s4, 1873
                  bgeu         t2, a2, 421f
                  andi         a5, s11, -376
                  blt          sp, t6, 426f
                  slli         t3, s7, 24
                  auipc        s1, 809899
                  ori          zero, s5, -1841
                  add          a4, t5, t5
                  xori         zero, t1, 1812
                  ori          s8, t3, -68
                  and          zero, t1, t4
                  auipc        t1, 863474
                  sra          s10, tp, tp
                  nop
                  slt          t6, s2, a2
                  auipc        a2, 897336
                  ori          s10, t6, -307
                  bgeu         zero, gp, sub_6_j10 #branch to jump instr
                  xor          s1, s7, s11
                  sll          zero, a7, s2
                  xor          ra, s0, s8
                  srai         s4, a4, 31
sub_6_j10:        jal          t3, sub_8 #jump sub_6 -> sub_8
                  sra          t0, s2, ra
                  srl          gp, t2, t4
                  srai         a1, s8, 20
                  sltiu        s0, a6, 19
                  nop
421:              sub          ra, t6, t0
                  sltu         sp, s2, t2
                  nop
                  sll          t1, s7, s9
                  slt          s6, sp, t5
426:              bgeu         s4, t1, 427f
427:              lui          a5, 1027037
                  or           tp, s0, a1
                  andi         s11, s7, 47
                  bne          s6, a5, 448f
                  addi         t5, a6, 401
                  slli         sp, t4, 24
                  addi         t6, s8, 1899
                  or           t3, t6, t6
                  xori         t1, s10, 1465
                  srl          ra, gp, a5
                  bge          s7, s4, 449f
                  auipc        a6, 769738
                  sub          zero, s0, t6
                  srl          sp, a0, t4
                  sltiu        s10, ra, 1799
                  addi         t5, t5, -241
                  slli         t4, t2, 2
                  bltu         a7, s9, 462f
                  lui          a6, 334397
                  or           s11, s6, tp
                  andi         t5, s9, -935
448:              bge          a5, s0, 451f
449:              sltu         a7, a7, t1
                  srli         a5, t5, 9
451:              srai         t2, t1, 16
                  sll          t0, t3, t2
                  xori         tp, s8, -1311
                  bne          a4, t6, 455f
455:              nop
                  xori         t4, t0, 1681
                  nop
                  sra          a4, zero, zero
                  add          a3, t1, s10
                  srli         a1, gp, 27
                  slti         a4, s0, -474
462:              ori          t2, t5, 256
                  srai         s6, s11, 11
                  slti         a4, a1, -2046
                  addi         t5, a6, 417
                  lui          sp, 854454
                  nop
                  or           s6, s10, a2
                  addi         t4, a7, -1468
                  sra          s6, s8, s4
                  beq          a4, a7, 481f
                  and          t1, s4, ra
                  beq          t5, zero, 477f
                  ori          t0, s3, 1866
                  slti         s6, t3, 223
                  bne          t0, sp, 482f
477:              andi         a3, s1, 1338
                  sra          s5, s11, t6
                  addi         a5, a7, -108
                  add          a7, a5, t0
481:              lui          t6, 91226
482:              xori         zero, a1, 1928
                  sltiu        a1, t6, 1123
                  xori         sp, s1, -527
                  slt          a7, zero, a4
                  slt          t5, a3, t2
                  beq          t4, s3, 501f
                  slt          s7, t3, t4
                  sub          a7, a6, t0
                  slli         s0, a6, 30
                  add          a1, a6, t0
                  xor          t1, s4, a6
                  addi         gp, a1, 2010
                  addi         t2, a5, 222
                  or           s6, ra, t5
                  blt          s10, sp, 497f
497:              sll          tp, a1, s6
                  nop
                  sll          s10, s0, a3
                  sltu         t6, a0, s5
501:              sub          t5, t3, s7
                  bgeu         t4, a2, 522f
                  slli         a3, a7, 3
                  sltiu        s7, t5, -1767
                  srli         t1, t3, 13
                  nop
                  slli         a1, s2, 5
                  and          s4, t3, tp
                  add          s5, gp, sp
                  ori          zero, a7, -1752
                  sltiu        a3, s11, -1917
                  blt          s7, a5, 527f
                  srai         a7, zero, 3
                  sll          s10, a4, s4
                  sltu         s8, s7, s3
                  sltiu        s4, s9, -1243
                  add          t1, s6, s0
                  add          a7, s2, t3
                  slti         a5, s1, 35
                  lui          s7, 968036
                  srli         zero, s10, 26
522:              add          a2, t3, t6
                  addi         t5, a6, 1004
                  bge          ra, a3, 542f
                  xor          t5, a0, s6
                  addi         a3, a5, 746
527:              srai         s8, s3, 17
                  lui          tp, 41872
                  and          sp, a7, t4
                  or           a1, tp, s2
                  sll          s11, s5, t4
                  and          s0, a4, tp
                  srl          gp, s5, ra
                  xor          t6, s3, s0
                  xor          t1, gp, gp
                  add          a7, a4, s8
                  xori         a6, ra, 1001
                  xor          ra, a4, t5
                  srl          a3, a0, s10
                  sra          a7, s2, s8
                  slti         t0, a5, 819
542:              and          ra, t0, s4
                  blt          a0, s5, 560f
                  bgeu         a5, a5, 562f
                  srl          t4, gp, s10
                  xor          tp, sp, tp
                  bge          gp, ra, 565f
                  auipc        s10, 957945
                  bne          t1, s7, 562f
                  xori         s0, s10, 959
                  addi         a1, a5, 994
                  lui          a4, 756617
                  srli         s11, a7, 9
                  bgeu         zero, zero, 566f
                  srl          t3, zero, t6
                  bne          gp, a1, 568f
                  bge          s2, s2, 567f
                  srli         s1, a2, 7
                  lui          s10, 606885
560:              add          ra, a1, zero
                  srli         zero, gp, 28
562:              auipc        zero, 664986
                  srl          s5, a0, s2
                  slli         a4, a2, 9
565:              sub          s0, a2, s6
566:              sub          t0, t1, t1
567:              sltiu        a1, a0, -949
568:              sltiu        t2, gp, -567
                  and          a4, s4, s1
                  add          gp, gp, s9
                  xor          zero, a4, sp
                  srl          ra, s6, s4
                  slti         s6, s4, -1572
                  sltu         tp, sp, t1
                  lui          t5, 503225
                  andi         zero, a2, -1022
                  addi         s11, a7, -44
                  sra          t6, t1, t5
                  andi         s7, a4, 949
                  srli         t0, a6, 24
                  sra          a5, s9, s9
                  and          t6, s9, ra
                  slt          s4, t1, s5
                  lui          a5, 525233
                  add          s10, t0, t1
                  add          s11, s9, t5
                  addi         s5, t0, -446
                  xori         t3, s1, 1834
                  addi         a6, s6, -1358
                  slti         t5, s11, 668
                  nop
                  xori         sp, s5, 1135
                  beq          t5, a7, 601f
                  add          a5, a4, a0
                  srai         t1, t6, 11
                  sub          a2, t5, ra
                  nop
                  bge          a2, s1, 613f
                  sltu         a7, s4, t6
                  sll          t0, s4, t2
601:              ori          a3, s4, 1177
                  slli         s0, a4, 27
                  slt          sp, gp, t3
                  bne          s1, t0, 613f
                  auipc        a5, 226464
                  bgeu         sp, t2, 621f
                  bge          a6, a7, 619f
                  add          sp, gp, t5
                  blt          t5, a3, 612f
                  auipc        a5, 174507
                  bge          s7, s5, 626f
612:              sra          a2, s3, a4
613:              or           s4, s9, a7
                  srl          a4, a3, a4
                  xori         a2, a2, -1105
                  xori         a0, a4, 1212
                  ori          s6, zero, 1474
                  andi         t5, a7, -164
619:              sll          gp, t1, t4
                  sub          tp, s5, t1
621:              andi         a4, t1, 561
                  nop
                  nop
                  slt          s8, s4, s5
                  xor          s6, s6, s9
626:              bge          s0, tp, 635f
                  slt          t4, t1, a6
                  bgeu         s1, s6, 635f
                  sltiu        a2, s9, -1400
                  addi         sp, tp, -1991
                  srli         tp, a0, 8
                  slli         t4, t1, 0
                  sltiu        t3, a7, 943
                  bgeu         s0, zero, 651f
635:              ori          tp, s0, 818
                  auipc        t6, 27034
                  nop
                  sll          t4, t2, s5
                  srli         a0, sp, 22
                  andi         ra, s9, 437
                  and          s7, ra, s11
                  nop
                  srai         tp, t0, 17
                  add          t4, a5, a0
                  slli         t2, a7, 8
                  sltiu        s0, t6, -1282
                  bge          a4, a3, 652f
                  auipc        s0, 468224
                  bltu         t1, s2, 656f
                  sltiu        t2, a7, 323
651:              andi         t1, t4, -786
652:              ori          s0, t3, 2047
                  bne          a0, a5, 671f
                  and          a1, s5, t3
                  bne          s7, s10, 656f
656:              sltiu        a7, sp, 828
                  add          s5, a2, t1
                  bltu         t3, t2, 675f
                  sll          s1, t2, a6
                  srai         t3, s6, 13
                  nop
                  sll          s11, a2, t2
                  srai         a6, t4, 2
                  xori         zero, t5, 1868
                  srl          s6, t5, a3
                  or           t0, s6, a0
                  slti         t2, a3, 1964
                  bne          a6, t5, 672f
                  bne          s2, s0, 675f
                  sll          sp, a6, a4
671:              srai         a6, s9, 13
672:              sltu         s6, s7, s4
                  sub          gp, t0, a0
                  xor          a1, a3, s8
675:              lui          a5, 573077
                  lw           t3, 4(s2)
                  ori          a3, s11, -1253
                  addi         s2, s2, 64
                  sltu         s6, gp, zero
                  andi         a4, t3, 2035
908:              addi x12, x28, 1
908:              jalr x12, x12, 0
sub_7:            xor          zero, t1, t6
                  lui          a6, 308064
                  beq          t4, s3, sub_7_stack_p
sub_7_stack_p:    addi         s2, s2, -64
                  sub          a4, a0, ra
                  sw           t3, 4(s2)
                  slli         a3, s3, 28
                  nop
                  slli         s11, zero, 22
                  srl          a0, s1, s8
                  srl          a4, s7, t5
                  sub          ra, t4, a6
                  slli         t4, s2, 1
                  bge          a7, a4, sub_7_j11 #branch to jump instr
                  and          s5, t4, s4
                  sra          s5, gp, s4
                  slti         s0, s10, -1943
sub_7_j11:        jal          t3, sub_9 #jump sub_7 -> sub_9
                  srai         a3, s0, 2
                  beq          a3, s3, 2f
2:                srl          a6, tp, t1
                  slti         t4, s9, -986
                  srli         a7, gp, 9
                  or           s0, a2, a6
                  and          s1, s1, t3
                  sra          s4, s3, a4
                  addi         zero, s6, -2018
                  auipc        a1, 995547
                  lw           t3, 4(s2)
                  sltu         s7, sp, a4
                  sll          a4, t0, t5
                  xor          a6, s4, a4
                  slt          t2, a6, tp
                  sra          ra, t1, tp
                  addi         s2, s2, 64
                  or           a2, sp, s0
                  or           gp, a5, s2
                  srl          a1, a6, a7
38:               addi x5, x28, 0
38:               jalr x5, x5, 0
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
.word 0x2a0d3ec7, 0x6597feb6, 0x66911225, 0xa92ded01, 0x8df0f074, 0x1e1fdded, 0x9b0a19be, 0xb3d5b080
.word 0x88d87f80, 0x395d55f3, 0x5d14704b, 0xad53c8cd, 0xbe104a95, 0x77e20418, 0x47ea24e3, 0x52090d94
.word 0x07eed8c1, 0x9af13152, 0xf6ec8809, 0x00c802dc, 0x12a5424d, 0x5dda24bf, 0x26d954ae, 0x5dd36d95
.word 0x67fab2d6, 0xf4939b34, 0x88b8826e, 0xfa9dc54b, 0xb2b1480d, 0x1b46ea59, 0xdda951a0, 0x56ad8a79
.word 0x64cc42d9, 0x6ba18e62, 0xc6ea45a4, 0x78a140a2, 0x9b94c0f2, 0x60572737, 0xb0f179cc, 0xded45940
.word 0xee667c43, 0x0ea0409e, 0xed43a26c, 0xbec6aced, 0x522a0a41, 0xb914baaa, 0x3835d62c, 0x3ae68ea4
.word 0x60ca747e, 0xf879b147, 0x70b16d79, 0x6c2367e4, 0xde07b64f, 0x315b5f07, 0xc1183465, 0xd4758bc7
.word 0xa915d2b7, 0xfcc55218, 0xfd360a42, 0xc3cc8410, 0xd3e49d8c, 0xe7f6d6b7, 0x5d544da0, 0x8f598ca6
.word 0xcb23af6c, 0x194d13be, 0x0800ceb4, 0xd1077dee, 0x2b7017d9, 0xb7f52b78, 0x1cc36ba7, 0x16df1b26
.word 0x4cece13f, 0x2c605d02, 0x61136d92, 0xacfa0ad9, 0xd7a96265, 0xae7d1efd, 0x8584b806, 0x56148da3
.word 0xd2bbd75c, 0x12372d93, 0x5c14682d, 0xd4e9ba34, 0x0309d50e, 0x4a37ddfb, 0x8b4129b9, 0xc82a7478
.word 0x02ca49f0, 0xf91cc3b6, 0x4e52817a, 0x37faa49d, 0x0b0483f7, 0xc82a4ddb, 0x81027cc6, 0xecca545e
.word 0xb193416c, 0xab781cd5, 0x7de89d54, 0x20ed86e3, 0x81ae8b33, 0x4c74eed2, 0x371908a8, 0xd1ef6309
.word 0xcf8b46db, 0xb3074aca, 0x3aef1c37, 0x9ab58800, 0xdcf2ca74, 0xb04212b5, 0xad3b8f92, 0x633c1cd4
.word 0x5c19d3af, 0xa53ebe7f, 0x8dac5da4, 0xabe473b1, 0x380a6506, 0x7b649a4b, 0x3a6ea061, 0xb891c305
.word 0x0622b1d9, 0xf6f92814, 0xa7cb7bd5, 0x35822883, 0x167ade40, 0xabbe8a51, 0x44043bf3, 0xf563bdc5
.word 0x8fcea7df, 0x77cd4c39, 0xcacd1ffa, 0x659cbb80, 0x4212dddc, 0x5864672a, 0xde7b2bff, 0xc00760d4
.word 0x66dae24a, 0x05777e24, 0x6bb6fb45, 0x7382c00f, 0xeb78260e, 0xc9256e58, 0xf60c52bd, 0xaef7feb3
.word 0xd12b41e5, 0xda44daf4, 0xbd9e47fa, 0x207d1cbb, 0xcc0d122d, 0x617f2dab, 0x2eef5ab8, 0x23bbc8e9
.word 0x0445812d, 0x2ca783c5, 0x0769e22d, 0xfb468c6f, 0xed47ff88, 0xc4f4ca35, 0x8e8da457, 0x9c9dbf0e
.word 0x70f33497, 0xd1909080, 0x8c4a210a, 0x9b18fa25, 0x2ae10305, 0x32477337, 0x50a49285, 0x2bea9389
.word 0x7219ff33, 0xc529922a, 0xb9451322, 0xc467814d, 0xcda50a3c, 0x738c6097, 0x06c9a4d8, 0xa5639053
.word 0x1a5fd30f, 0x888b141a, 0x860cd760, 0xd9a9878a, 0x1f8762d1, 0x7456213d, 0x9234356c, 0x2eb7889e
.word 0x010d870f, 0x48e77c40, 0xce53f6a3, 0xbe2400c7, 0x314f6b0b, 0x7dfd5e5d, 0x8df59619, 0x96ae8272
.word 0xde3a36aa, 0x1c89cb08, 0x329c3300, 0xe94b65fb, 0x812d29bb, 0xe6ecfd61, 0xe7c922d6, 0xa44b02b5
.word 0xb0c451e3, 0xbe193f61, 0xc410e4d4, 0x0c0fc780, 0x390119d8, 0xe3cb1414, 0x22fdcb36, 0x51e86f82
.word 0xda4c3483, 0x5b9aad5e, 0xed13c28c, 0x54d70524, 0x76051ac1, 0x1c4ad76d, 0xe3f05c81, 0x46f6cb09
.word 0xca1464a5, 0x5928a4df, 0xdab33e21, 0xb60860f7, 0x42a72631, 0x5c6be649, 0x8a9ebce4, 0x7324f4d6
.word 0xa0a4239b, 0x8fcae49b, 0x0c61dad8, 0xb8051fca, 0x327601e5, 0x025860e1, 0x115f2458, 0x47a3b902
.word 0x0ada2249, 0xad759619, 0x321e09aa, 0x0410bd17, 0xeefc4207, 0x8a82cf7a, 0xf7a86d41, 0x65c021db
.word 0x4dd1b01d, 0x5c95184d, 0x10645ef0, 0xb973ea7e, 0x4ac9ecfe, 0xdbd44cf1, 0xee10be37, 0x17d88d21
.word 0xcfd5630e, 0x72705ed3, 0x22172d81, 0xb625e20e, 0xc948d48e, 0x05506bfe, 0x8cde7468, 0xf14a377b
.word 0xa798158c, 0x8a82bd7a, 0x1e8497a6, 0x55cb2fb7, 0x1dc5dd90, 0x68e002ad, 0xb729be14, 0x2703fa9b
.word 0xd85c89ba, 0xd9818930, 0x3e512d60, 0x0953690e, 0xc51a7afc, 0x5582c4e6, 0x2a27336d, 0xfd443cff
.word 0x44f2aa3d, 0x4158df09, 0x701f89cf, 0x347533e1, 0x33b6f921, 0x57cbaf2f, 0x7cc3af95, 0xfc7993ea
.word 0x84a9b9f1, 0x9da1f0ab, 0x975612bf, 0x4426b487, 0x14d49b57, 0x38b6042b, 0xfc11b355, 0xaa41886c
.word 0xbb72b01c, 0xd3a2d20e, 0x11c59895, 0x680bdb53, 0x66db086e, 0xa8ed4348, 0x14a58e53, 0x61214b8d
.word 0x2d6826b2, 0xc46e7239, 0x7f348474, 0x10c9a548, 0x484539c6, 0xbf860b28, 0x6adca1dd, 0x6bcc4415
.word 0x82a0f27f, 0x3e6a444e, 0x06d40649, 0xbf6c8f23, 0xd6dfbe64, 0x24b97ac5, 0xd7299794, 0x7ef7e1da
.word 0x97488533, 0xceac8710, 0xea23c917, 0x230df620, 0xa7bcd508, 0x3b4cf452, 0xe2b1e36f, 0xbd81830c
.word 0xd61a5917, 0x9d2e8237, 0x86437392, 0x7ecdc988, 0xdb95aa75, 0xce909b26, 0x5a9e46b3, 0xc02bcdb2
.word 0xd79ca551, 0xf6ca442a, 0x8278e702, 0x411dfcf0, 0x3a29e21a, 0x139b2542, 0x69ea658e, 0x05233544
.word 0xeabeb36d, 0x83db140a, 0xe18ed9fd, 0x1a0935d6, 0xb3b68353, 0x64f7d13e, 0x0671a2b9, 0x06c695e1
.word 0x1bd44556, 0xb2cf60ad, 0x85ae3191, 0x122b4ab5, 0xa56eea6c, 0x197b7e99, 0x0253b2ef, 0x34e6e470
.word 0xb118a12e, 0x59dd7d56, 0x2bc6bb39, 0xa11e8008, 0x9361d5b0, 0x6ddc0c75, 0x73492d65, 0x99a08cc2
.word 0x1e1b5c3e, 0x8c83ffff, 0x4ab24e57, 0x538ebb69, 0xd843b2e8, 0x5cbf52a6, 0x51c9fa88, 0x4852642e
.word 0x31ce166a, 0x80b67dab, 0x2a0e644c, 0x44c35247, 0xbd37be4e, 0x7f92ee74, 0xc425bc6a, 0xb8a1c820
.word 0x81e5c63d, 0xff280822, 0xd3eb3d1b, 0xd3674dd1, 0x08b0312b, 0x9771649d, 0xa7215ec1, 0x2424027f
.word 0xed262462, 0x0933afd9, 0x1bbd8fac, 0x9ac2d056, 0x4b603c34, 0xe2727816, 0x33ff8802, 0x85f23214
.word 0xf7ddfdc7, 0x313c091b, 0x2eb42379, 0x02dbe556, 0x82602224, 0x16149b77, 0x86a17a4e, 0xa8101c58
.word 0xb413215e, 0xc9518c8c, 0xe01c5b5a, 0xacf6f6f9, 0x2528dead, 0x9791f382, 0x11ed4a98, 0x1e74d01c
.word 0x247e1a39, 0xc6ac606e, 0x83202dd2, 0xd9caf285, 0xaffc7469, 0x9d91682c, 0xaaca9e6e, 0x1e08a337
.word 0x3073f1a2, 0x0390452d, 0x70d2ad27, 0x2e1208ab, 0x5f57b046, 0xf4807c1d, 0x9538f942, 0xe31874df
.word 0x126faf3d, 0x4f7812c9, 0x229137c0, 0xc7406628, 0x8a70fad3, 0x73476e43, 0x33d057b8, 0x89157cc1
.word 0x190d870c, 0xd92959d0, 0x3ae76cae, 0xcfef3f54, 0x43469540, 0x425d90d7, 0x4f887ed7, 0x4c35a2da
.word 0xd7b38de3, 0xfcbc4408, 0x587e6294, 0xd64336cb, 0xe49e87a9, 0x01b46cfc, 0x6b0bcc17, 0x8ce90348
.word 0x4156e515, 0x5b4fc1e1, 0x801f0c1b, 0xd2d9b21f, 0xc773f817, 0x7a5f34d9, 0xb25e90fd, 0x15deac6f
.word 0xd05d2395, 0x9c583d96, 0x30c45a9d, 0xcebe73f2, 0x48934c05, 0x3aeeaaca, 0xafb499e8, 0xd022a3db
.word 0xca6ad0f5, 0x1663493e, 0x967c4486, 0xe9d9cd41, 0x7972b432, 0x51f2517c, 0xffe15aa1, 0xc7e2d2e2
.word 0x810a87f3, 0x6b726d12, 0x8be2ee91, 0x874a9d92, 0xf5de2fb3, 0x74cba1cb, 0xc850ff51, 0x0f17556d
.word 0x55f368c1, 0x7b6f2955, 0xdbc030d0, 0x14fb54ee, 0x5bd0fc11, 0xc2883163, 0x669d8218, 0x57b6ae6b
.word 0x46acf42a, 0x1b183d58, 0x1aca3099, 0x08961a08, 0x0ab166b9, 0x011273e8, 0x1349007d, 0xcd7f0919
.word 0x1ab86b12, 0x10500096, 0x9e0d4096, 0x5d4999c4
.section .region_1,"aw",@progbits;
region_1:
.word 0x0a250635, 0x43097710, 0x097eb187, 0x979f6e46, 0x63a40b24, 0xd2c2fa81, 0xbd14f017, 0xa8b87c81
.word 0x634cf5c4, 0xf70f8b8d, 0xa547090e, 0xd031a697, 0x5294e9b5, 0x9050f584, 0x431af6ec, 0x0b8c5db9
.word 0x31d9b15e, 0x6ba02097, 0x7353345d, 0x50bc94d9, 0x77ab14ed, 0xcf06cdd3, 0x4f2bcdf2, 0xbbd730f9
.word 0xa0a7aef6, 0xec38cfc7, 0x2860e80e, 0x12ad99da, 0xd63da1ca, 0xedc8fcce, 0x2a41102f, 0x7ff1ec45
.word 0x0c5a69c8, 0x9f0394c6, 0xaa6d940f, 0x2750c37c, 0xc80d453f, 0x62540931, 0xa52adb8a, 0x4395a596
.word 0x290de05e, 0x392d70ba, 0x0ac5a9d5, 0xd89985c3, 0x7e0d354e, 0xbee409fa, 0x6f16f2ad, 0x1f7ffd76
.word 0x049686e2, 0x21a62158, 0x448d3777, 0x2081ed26, 0x6157f818, 0x9efc2dca, 0xf2bd62ca, 0xce67667c
.word 0xa3d8797c, 0x69f60a35, 0xdad64a0b, 0x91bce331, 0x2c7a029b, 0xa6ebfbb6, 0xf752b6ca, 0x3b367b87
.word 0x5bce31a3, 0xaddd9774, 0xa2b97e21, 0x9ddf7c28, 0x2aefea56, 0x3ae4d72b, 0x5deeeb85, 0xd36a3bf9
.word 0xe84d079f, 0x2e63fc1a, 0x5c0e8343, 0x6518bd2b, 0x43e5bdc0, 0xe5b1563a, 0x995b9a9f, 0x2dbee6a7
.word 0x0d25d938, 0x67e360f5, 0x724e1c05, 0xd6279e60, 0xbd244328, 0x4e2079e7, 0x5be80f99, 0x944fde24
.word 0x12294a1b, 0x4f465c88, 0xdd2b01fc, 0x8fd6a57f, 0x24c082a4, 0x74facc2e, 0x5f9cfe06, 0xb60351b7
.word 0x054f1a9f, 0x0d7b4fc5, 0x9a7fc1f8, 0x7f537ab8, 0x006f051f, 0x08f31d94, 0xdeac5685, 0x5e927dab
.word 0x0a005208, 0x597b6654, 0xddf1b9ed, 0x40901457, 0xc31e962a, 0x2eb52dab, 0x7af1a133, 0xf11292db
.word 0x3f7e3dc5, 0xe191c3c4, 0x4ecd5d2c, 0xf864fb15, 0x3a5dcd71, 0x3f6b65aa, 0x6e8a1a58, 0xb5651e4c
.word 0xf4dc5eb3, 0xb99be90c, 0x1b8df9f8, 0xf8560559, 0xb83b91ef, 0x41b471ae, 0x114be919, 0xfa580a22
.word 0x5593ea2c, 0x938c11c2, 0xe41e4507, 0x85f06589, 0xf3bf6674, 0xa8a1f693, 0xbf51259a, 0x2d1560e1
.word 0x4ed04bb8, 0xf0ad5181, 0xa6097f97, 0x29e0d997, 0xda6915dd, 0xba8f5a29, 0xc344f95b, 0x410e44f0
.word 0x4d440769, 0xaee3e6da, 0xb32b666a, 0x4bf72dfc, 0x4246203f, 0x5843919c, 0x5e10055e, 0x0f364860
.word 0x70a4b7b5, 0x967132e4, 0x127d5283, 0x036dd153, 0x53bfbb7f, 0xc2e234c2, 0x09d44672, 0x1d320f07
.word 0x5d747f90, 0xa26d45f3, 0xa59a699c, 0xcfb5c89e, 0xa7b7479f, 0x0e7e7596, 0x689ca5b2, 0x00ae5f7f
.word 0x43fda551, 0x40b89ede, 0x152d69b8, 0xeee921cc, 0xd264a9d4, 0x3a5c9fdc, 0xacfbaa9b, 0x55c92599
.word 0x9d69c6db, 0x325e6f40, 0x95b497b8, 0xc12ea0f8, 0xf3810247, 0xfffb8f09, 0x38b8f8b2, 0x834f4e88
.word 0xd0aa1a76, 0x3f5ddef0, 0x55761142, 0xcdff6a35, 0xd2409253, 0xcf3bb748, 0xa7d32b08, 0xabd164d9
.word 0x007c76c7, 0xff04ccdf, 0x1fe82828, 0x277840d2, 0x1fc265dc, 0x898516b5, 0x40677872, 0x24897ff4
.word 0x036898b3, 0x5f36bdd9, 0xd3f3c49e, 0xc93a6e71, 0x1cb7137e, 0x7b49a565, 0x5ba76af4, 0x3563b797
.word 0x7a0eba12, 0xdf2e5cd8, 0x42cfe432, 0xecfc3ccf, 0x8f8b4c38, 0xf031e5ed, 0xb211030d, 0x72d5fd98
.word 0xfe6612a4, 0x153408fe, 0x3f79ad8b, 0x03307356, 0xe90b108e, 0x53836f16, 0xe75f9806, 0x0f8cd803
.word 0x58e1483f, 0x228dd7bc, 0x083cd8e5, 0x0954731c, 0x12aa42f4, 0x047aca8d, 0x2e4ee30e, 0x64f1da0e
.word 0x61702792, 0xe0fff44d, 0xe0871d4e, 0x735e46dd, 0xa0867c83, 0xb9c5727c, 0x68c3f4ae, 0xdf85f854
.word 0x33ebd0a2, 0x3037d85d, 0x545c2326, 0x6cadd89c, 0xd522cdab, 0x00640753, 0x87016bb9, 0x30d03583
.word 0xc2d7f14e, 0x36fc12f4, 0x215d6aec, 0xa8e23b4e, 0xb3f9722b, 0xafc16b81, 0x2c0be4ed, 0x218558e2
.word 0x4111ec52, 0xb07340c8, 0xa972fefc, 0xa04dbe09, 0x21d197a1, 0x50a252a7, 0xb9bebe3c, 0xfa59c976
.word 0x30ab4c16, 0xfc9b8c65, 0x8d681a28, 0xefefc52d, 0xf5ecbfd8, 0x7b13cefc, 0xfb28296e, 0xee6df785
.word 0xe79a9a2c, 0x7392e1de, 0x7156afa2, 0x08e378fc, 0xfb3b0625, 0xa549a637, 0x66ddaa97, 0x64014ff8
.word 0x2a6c5eca, 0x4c38a41e, 0xad5ed83d, 0xa1300c4f, 0xccef7e47, 0xde866a41, 0x088ab218, 0xe90eaa56
.word 0x926a172b, 0x32116a2c, 0x447a0e44, 0x396226b8, 0x54f848b3, 0x569ee5ba, 0x800cb517, 0xa89eb7cb
.word 0x54ab0c65, 0xeef8dd66, 0xaa8a8b0e, 0xb8e83930, 0xc408cefb, 0x590963c3, 0x6aa85eb6, 0x8d5bd456
.word 0x2f20dd36, 0x56a10e8a, 0x712a31d8, 0x3539e1a2, 0xbce03c45, 0x07c14ee5, 0xf2600f9f, 0xebb85df6
.word 0x37e08711, 0xd7fbdcf3, 0xa3215ca8, 0xef92e05a, 0x88df4362, 0xe77e2d82, 0xfeb676b7, 0x334c503d
.word 0xbc657f84, 0xe2680e7a, 0x5c2ebee6, 0xedd4cb09, 0x9e2d26c2, 0x6338a581, 0xcf9be54c, 0x3cb507ee
.word 0x78766743, 0x3c53fdb9, 0x04019ec0, 0x49a7d099, 0x2ad464db, 0xc8957367, 0x749ced31, 0xf5c136af
.word 0xc389e3a8, 0xa9ef9fcd, 0x2e5b5db6, 0xdffe29e5, 0x4ececa4c, 0xef4f5083, 0x8464101e, 0x5edd2e96
.word 0xac5bdfd9, 0x3a9588fd, 0xd0c6daaf, 0x01a0fa6e, 0x23ef2b65, 0x80d9fa2c, 0x32283c07, 0xfe07a0f8
.word 0x0d248a75, 0xb2386f0f, 0xac9966f9, 0x728bfe26, 0x2e0d8f88, 0x80c023b1, 0x03f4f86f, 0xa430628d
.word 0xf8346da2, 0x0efbbbc4, 0x82a825ce, 0x472018a8, 0x332da52b, 0xc5d1393b, 0x4432115a, 0x0f2f30fb
.word 0x7f18c62c, 0xfb79f48d, 0x3ef61354, 0xe8d18a17, 0xe7036521, 0xb2426594, 0x68ee6e6d, 0x5d2e3f34
.word 0x616d25aa, 0x91874e13, 0x84ab8a3f, 0xeaab88d2, 0x9e4f7797, 0x858b154f, 0xc4679292, 0xf22fcd6c
.word 0x9148fa8f, 0x2cb9e0be, 0xf308b14f, 0xd173169f, 0x8e189fdc, 0x6888dd32, 0x67aaea11, 0xd13b0aa1
.word 0xc7137b84, 0xb1257371, 0x7a772d50, 0x0fbd70ff, 0xe26ac2c5, 0x92b0abd6, 0x4f0f9626, 0x40207e0e
.word 0x15f54ea9, 0x40f04035, 0xf96c77f6, 0x8fe59e03, 0x1d2742d1, 0xc6db9d7a, 0x6113b2a8, 0x7dd70a48
.word 0x27ec3f89, 0xb141e810, 0x25d68c78, 0x8b932909, 0x52916f98, 0x8f8b9628, 0x1b52a78c, 0x49058518
.word 0x035dc8e9, 0x28562dc4, 0x73d950c7, 0x584c9e1a, 0x01208981, 0xf108ee4d, 0x7da481ab, 0x4674da41
.word 0xe86478eb, 0xe04e3d19, 0x4299d4b3, 0x1473196c, 0x1bc94435, 0xa32063a2, 0xb19537bd, 0x82e706f5
.word 0xc08d9d7e, 0x7abb5f19, 0xd7da3413, 0xc748b96b, 0x4d129468, 0xdaa5583c, 0xa3751b2c, 0x008f821f
.word 0xab544b07, 0x4b4d1748, 0x89f4bc1b, 0x76ce9d4b, 0xaee62cac, 0x1c679f92, 0x144593ac, 0x063e77de
.word 0x48cf233d, 0xaa9ae4b9, 0xf938ff0e, 0x01717ef9, 0x5b33e619, 0xa3a407c6, 0x2f271780, 0x83acdf57
.word 0x98d41f9e, 0x8ba0d147, 0x46cffbfc, 0x8c67cb48, 0xcf0a0ecf, 0x42144a46, 0xbed78961, 0xbbd7c1ec
.word 0x71d6de61, 0x9c8440d5, 0xcfce62bb, 0x6b906d83, 0xce960eec, 0x79f4bfb8, 0x88e6bee1, 0x41306824
.word 0x79af5c50, 0x37a9c7e4, 0xd2c7d1e3, 0xe3f163e9, 0xae7421c0, 0xb3cb5df7, 0xba5c79db, 0x9fc46409
.word 0x3ef19cbe, 0x4e6704f1, 0x1253678a, 0xa1dc06ba, 0x2967f336, 0x13b792f6, 0xbbaf2404, 0xc4cc59f0
.word 0xa10b773a, 0x6543685e, 0x9c61c38a, 0xcb02cdac, 0xb52974ae, 0x2de1fe74, 0xad6156a6, 0x35bb925b
.word 0x636bab4b, 0xd304ddc2, 0x4ded1908, 0xf3d9e0c8
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
                  add x19, x18, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x8, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x8, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x8, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x8, x12, ecall_handler
                  li x12, 0x1
                  beq x8, x12, instr_fault_handler
                  li x12, 0x5
                  beq x8, x12, load_fault_handler
                  li x12, 0x7
                  beq x8, x12, store_fault_handler
                  li x12, 0xc
                  beq x8, x12, pt_fault_handler
                  li x12, 0xd
                  beq x8, x12, pt_fault_handler
                  li x12, 0xf
                  beq x8, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x18, x19, zero
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
                  add x18, x19, zero
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
                  add x18, x19, zero
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
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x18, x19, zero
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
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x18, x19, zero
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
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x18, x19, zero
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
