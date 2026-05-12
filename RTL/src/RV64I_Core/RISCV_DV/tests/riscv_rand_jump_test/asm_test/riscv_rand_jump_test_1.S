.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x19, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x9afe855c
                  li x5, 0x3
                  li x6, 0x0
                  li x7, 0xad15dceb
                  li x8, 0xfb3ebf96
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xde25ca7b
                  li x13, 0xf18ddbd0
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xb
                  li x18, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0xf2656db3
                  li x24, 0x0
                  li x25, 0xd
                  li x26, 0x0
                  li x27, 0xf93db421
                  li x28, 0x0
                  li x29, 0xa
                  li x30, 0xc
                  li x31, 0x0
                  la x12, user_stack_end
main:             la           t6, region_1+671 #start riscv_load_store_rand_instr_stream_4
                  lbu          a0, 14(t6)
                  addi         s8, a5, -1888
                  or           s11, t3, s1
                  xor          t1, a6, t2
                  sb           s6, 2(t6)
                  auipc        tp, 939410
                  or           t0, s7, s1
                  sub          s8, s2, tp
                  lw           t5, -15(t6)
                  lb           a6, -12(t6)
                  srl          t1, sp, zero
                  sb           s10, 3(t6)
                  lb           s8, 2(t6)
                  slt          t1, s9, t0
                  lh           s9, 5(t6)
                  srli         a1, t6, 6
                  sub          a3, s6, s0
                  xor          a7, t2, t5
                  lh           gp, -1(t6)
                  sb           a2, 16(t6)
                  slti         s11, s3, -602
                  lb           s2, -12(t6)
                  sh           a0, -13(t6)
                  sltiu        s5, gp, -197
                  sb           ra, 12(t6)
                  lhu          s11, -7(t6)
                  lb           s1, -8(t6)
                  srai         s11, t4, 23
                  sb           s11, 10(t6)
                  auipc        s6, 368999
                  lb           a6, 6(t6)
                  lhu          zero, -9(t6)
                  or           s1, a0, sp
                  lbu          ra, 16(t6)
                  lb           t0, -11(t6)
                  nop
                  slt          a5, sp, s11
                  slt          a5, s5, t1
                  lbu          t4, 5(t6)
                  auipc        t2, 472527
                  sb           t2, -12(t6)
                  auipc        ra, 517652
                  auipc        t1, 907331
                  lbu          tp, -15(t6)
                  sub          a6, s1, t6
                  sltiu        s7, t0, -2018
                  sw           s10, -7(t6) #end riscv_load_store_rand_instr_stream_4
                  ori          s6, t3, -1423
                  andi         t5, tp, 626
                  srai         s1, t3, 11
                  or           t5, s9, s8
                  bgeu         a6, t3, 20f
                  sltiu        s6, s5, -858
                  bne          t0, s3, 18f
                  add          t6, a3, s11
                  and          a4, s9, t1
                  bne          s4, s6, 14f
                  addi         s8, t6, 1917
                  sltiu        s0, a5, -1630
                  beq          a2, t0, 13f
13:               slli         s2, s7, 29
14:               nop
                  bne          t1, s8, 26f
                  addi         tp, tp, 440
                  sra          t3, s11, a3
18:               blt          sp, tp, 32f
                  and          s11, s5, s10
20:               bge          t1, t6, 39f
                  bge          a0, ra, 24f
                  srl          s1, a4, s5
                  andi         s2, s1, -371
24:               ori          s8, a7, -470
                  slti         s1, s0, -1281
26:               sra          s1, a5, a0
                  sra          s2, s5, s8
                  ori          a7, s11, -1774
                  xor          t1, a4, ra
                  slli         t0, a4, 1
                  srli         a5, s2, 15
32:               ori          s4, a3, 1936
                  auipc        s7, 1007669
                  slli         t0, s0, 20
                  bge          s1, a4, 48f
                  ori          s2, t1, -1074
                  or           t2, s9, s9
                  ori          t6, t5, 352
39:               blt          sp, gp, 56f
                  xor          s5, s5, s7
                  sra          s2, a5, s11
                  and          a5, a7, s9
                  beq          a3, zero, 58f
                  sltu         s7, s5, s9
                  sra          t0, a4, t4
                  srl          t1, a0, a4
                  sra          a1, t5, ra
48:               xori         t6, s11, -478
                  srai         s9, s0, 31
                  slti         gp, zero, -240
                  srli         a7, s6, 14
                  addi         s11, tp, 1370
                  sub          t1, a1, s8
                  bne          a0, t0, 73f
                  bgeu         s6, s11, 64f
56:               beq          sp, s4, 60f
                  bgeu         a7, a2, 63f
58:               sll          t0, s10, t1
                  slli         s2, t0, 31
60:               sll          s11, t1, s3
                  bgeu         a3, s10, 68f
                  bltu         a2, t0, 78f
63:               blt          s5, s11, 76f
64:               slti         s0, sp, 399
                  bne          a2, a6, 75f
                  srai         a4, t6, 27
                  bgeu         t5, s5, 83f
68:               xori         a0, s4, 1410
                  xori         t6, a3, 749
                  slti         a4, ra, -1623
                  ori          a5, t6, 1099
                  la           a7, sub_1
                  addi         a7, a7, -5
                  bne          s1, s5, main_j1 #branch to jump instr
                  sltu         t5, sp, a4
                  slli         tp, a7, 15
                  sltu         zero, t6, s11
                  sub          sp, t1, zero
                  slt          a3, a0, a2
                  auipc        s11, 364309
                  srai         s9, a6, 4
                  sltu         s2, a6, t1
main_j1:          jalr         ra, a7, 6 #jump main -> sub_1
                  nop
73:               xor          a0, s5, t4
                  sltu         s5, t4, s1
75:               addi         s1, sp, 259
76:               ori          t6, s7, -1207
                  bgeu         s1, a3, 86f
78:               and          s11, s3, a0
                  bgeu         s6, s5, 84f
                  slti         t2, s10, 645
                  sltiu        ra, s1, 312
                  xori         s7, s8, 344
83:               auipc        s1, 749071
84:               sltiu        t1, s4, 1474
                  ori          t3, a3, -1128
86:               add          gp, s4, t3
                  xor          s7, zero, s11
                  nop
                  slt          a3, zero, gp
                  blt          t4, s11, 109f
                  lui          t3, 1010427
                  ori          a4, a0, -968
                  sltu         a1, a7, s3
                  srli         s6, t2, 4
                  or           sp, s11, s10
                  bge          s7, s0, 111f
                  beq          s8, t2, 99f
                  addi         s2, s5, -1290
99:               bge          t5, t2, 119f
                  sltiu        a1, s6, -22
                  slt          tp, t1, s0
                  slli         s1, s4, 1
                  bge          t1, a2, 109f
                  bge          a6, a1, 107f
                  bge          s10, t1, 120f
                  blt          a3, a1, 108f
107:              sub          s6, t4, t2
108:              sll          s8, s5, a3
109:              bge          s4, s3, 128f
                  slt          a7, s9, a1
111:              sll          a4, gp, t3
                  blt          zero, s9, 124f
                  blt          t0, ra, 129f
                  bltu         t5, s6, 124f
                  ori          s2, s2, 684
                  srai         s0, s7, 23
                  sra          a7, t0, gp
                  sll          s2, tp, a2
119:              srai         t6, s1, 0
120:              slt          t4, zero, s2
                  lui          t1, 333327
                  srai         a4, tp, 30
                  srl          s9, a7, a2
124:              slt          s11, sp, a0
                  or           s1, ra, sp
                  srli         s6, s0, 17
                  and          a7, a4, a4
128:              srai         a5, t3, 4
129:              andi         s7, s3, 542
                  beq          t3, sp, 141f
                  addi         a1, t5, -1838
                  xor          t1, s8, s4
                  beq          s4, sp, 142f
                  srl          a4, t1, zero
                  bne          tp, gp, 141f
                  and          s2, s10, t5
                  or           s1, a6, s9
                  ori          a4, a5, 1854
                  srli         sp, a3, 10
                  slli         s8, t4, 25
141:              sltu         a4, sp, s7
142:              slti         s9, gp, 384
                  bltu         t4, t3, 147f
                  srli         t2, ra, 0
                  xor          s1, t5, s9
                  auipc        s5, 244105
147:              slti         s0, t4, -1056
                  xor          s9, a5, a6
                  srl          t5, t3, s6
                  blt          a5, sp, 165f
                  bltu         s4, s0, 168f
                  sltu         t1, s9, s5
                  slt          t5, s3, a2
                  addi         a7, zero, -1286
                  beq          sp, s9, 168f
                  ori          a4, s11, -1017
                  sra          s4, t2, s2
                  addi         s6, a0, -856
                  slt          t3, s1, a7
                  andi         s5, s4, 1341
                  beq          t4, ra, 180f
                  bne          a2, s10, 164f
                  slt          a0, sp, a7
164:              bltu         a4, a3, 165f
165:              slti         t2, ra, 1693
                  or           a0, t6, s5
                  sltu         t0, t5, tp
168:              or           s2, s10, t5
                  sra          s9, s7, t4
                  bge          s1, s6, 186f
                  blt          gp, a4, 176f
                  sltu         t6, t1, a5
                  sub          s0, gp, s3
                  sltu         sp, a3, a0
                  bgeu         s8, a4, 178f
176:              add          sp, a3, t1
                  bltu         t4, a1, 179f
178:              sub          a3, t5, s4
179:              bne          t4, a1, 188f
180:              blt          t1, a5, 200f
                  sub          t0, a7, t0
                  lui          s7, 353450
                  sra          t5, zero, t6
                  slti         s8, ra, -1962
                  auipc        a7, 500020
186:              or           t4, a2, tp
                  sltu         ra, s11, s2
188:              auipc        t3, 523065
                  sub          s1, s11, a2
                  sub          s11, a4, s8
                  bltu         a6, t2, 197f
                  blt          s2, t3, 207f
                  andi         s11, t4, -601
                  ori          a3, a4, -852
                  sll          a5, s11, s5
                  add          s6, a2, a5
197:              sra          a3, a2, t3
                  auipc        s6, 223502
                  bge          a2, s2, 204f
200:              srl          s11, a4, a3
                  addi         s6, a2, 1241
                  bne          zero, zero, 221f
                  sltu         a1, t0, zero
204:              slli         gp, s11, 15
                  andi         s4, t5, 997
                  srai         t6, s6, 1
207:              nop
                  bge          a5, s0, 215f
                  bltu         s0, s3, 222f
                  slli         t1, s6, 30
                  sub          s8, t0, a5
                  ori          s11, a5, 1986
                  lui          a6, 919913
                  andi         a6, s8, 1270
215:              sra          t6, a5, a4
                  blt          s7, zero, 219f
                  blt          sp, s10, 233f
                  bne          ra, zero, 232f
219:              bltu         s3, s2, 234f
                  bltu         s1, t3, 223f
221:              srli         s1, a7, 1
222:              slt          a0, s1, t0
223:              slt          tp, s10, a0
                  bge          a1, a4, 230f
                  sltiu        a4, s9, -467
                  andi         a5, s5, 1579
                  auipc        a0, 118785
                  bltu         ra, s0, 237f
                  beq          s8, s4, 248f
230:              add          s6, s8, t3
                  srl          t6, gp, s8
232:              slli         a0, a0, 26
233:              sltiu        s5, sp, -790
234:              xor          a0, t0, sp
                  slti         t4, sp, 542
                  srai         s2, s7, 12
237:              lui          s8, 833746
                  xori         a1, a6, -1619
                  xor          t4, t2, a2
                  blt          gp, t6, 241f
241:              sub          a5, t1, a6
                  auipc        a0, 353321
                  addi         zero, s4, -957
                  beq          ra, a7, 257f
                  sra          a7, s2, tp
                  bltu         zero, a5, 256f
                  bne          s1, t3, 263f
248:              and          a1, t4, s3
                  sll          s5, a7, a7
                  srai         s7, t5, 10
                  sub          t1, s7, s8
                  srl          t0, t2, a6
                  sll          s9, a5, a3
                  sub          a1, ra, t5
                  sub          t1, t2, a3
256:              ori          s0, a0, 1658
257:              bgeu         t1, a2, 272f
                  bltu         t6, ra, 272f
                  slti         s6, t3, 414
                  sltiu        s9, zero, 1021
                  blt          t4, a2, 276f
                  add          a1, s5, a6
263:              bge          s7, s11, 275f
                  andi         s5, s3, 1911
                  bgeu         a5, s4, 267f
                  la           sp, region_1+1345 #start riscv_load_store_rand_instr_stream_2
                  lbu          t1, -15(sp)
                  lb           t5, 6(sp)
                  lb           s5, 10(sp)
                  lbu          t4, 6(sp)
                  slli         zero, t6, 23
                  addi         a6, t5, -286
                  lui          a1, 640148
                  lb           s9, 6(sp)
                  sra          tp, a6, s10
                  add          gp, s10, a5
                  lbu          a0, -2(sp)
                  and          s9, s5, a7
                  lb           zero, -7(sp)
                  lui          s0, 202867
                  lb           a6, -14(sp)
                  sb           sp, 12(sp)
                  sb           a7, -4(sp)
                  andi         t1, a3, -899
                  srl          t4, s4, s10
                  lbu          a0, -2(sp)
                  sltiu        s4, gp, 1406
                  lb           a0, 16(sp)
                  sb           s1, -8(sp)
                  lh           zero, -11(sp)
                  lbu          s7, 4(sp)
                  slti         s4, a0, -1360
                  xori         s0, s2, -1012
                  slli         s5, s0, 2
                  sb           s4, 16(sp)
                  sra          s8, t3, s2
                  sb           s6, -12(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         a0, a3, 28
267:              or           a3, a3, t2
                  addi         s11, t6, 233
                  auipc        a5, 636193
                  sltu         tp, s1, s11
                  xor          a7, a2, t1
272:              blt          s8, a7, 278f
                  bgeu         s6, zero, 284f
                  addi         a4, s2, 490
275:              bgeu         tp, a2, 282f
276:              sltiu        a7, t0, -1899
                  addi         a7, t3, 908
278:              sltu         t0, s3, a6
                  bgeu         a3, a4, 295f
                  slt          s1, s2, s6
                  blt          t4, gp, 286f
282:              bgeu         s4, a4, 298f
                  slt          a3, s6, a2
284:              sub          a3, ra, s1
                  lui          a6, 1027206
286:              andi         zero, s10, 153
                  sub          tp, t0, s10
                  bltu         s7, s1, 293f
                  nop
                  auipc        t5, 341228
                  sll          s1, a7, t3
                  srl          a0, s8, s4
293:              sltiu        a7, a5, 1085
                  sltiu        s0, sp, -1750
295:              ori          t4, a2, 1373
                  slli         s6, t2, 25
                  nop
298:              slt          a7, sp, a4
                  andi         t5, zero, 190
                  auipc        t0, 777317
                  xor          s4, gp, t3
                  beq          t5, s0, 317f
                  sltu         t5, a0, s7
                  xori         t3, a0, -441
                  srli         s7, t3, 20
                  add          gp, s6, s9
                  and          s6, s8, a6
                  ori          s7, t5, -879
                  slt          gp, gp, s5
                  slt          s11, a6, a2
                  nop
                  sub          a4, a3, s7
                  ori          a4, a0, -2
                  sltiu        s11, s2, 1048
                  xori         s11, s7, 266
                  srl          a7, zero, s2
317:              xor          s11, a5, tp
                  slt          s1, sp, zero
                  bge          s8, a6, 328f
                  sub          t5, s6, a4
                  xor          t5, a5, t3
                  srl          s7, t1, s11
                  slli         s1, a1, 23
                  slli         s9, s10, 31
                  bge          s2, sp, 338f
                  sra          a1, a4, t3
                  blt          s10, t4, 346f
328:              add          t1, t0, a5
                  lui          a7, 894469
                  srl          sp, tp, s8
                  srai         s4, s6, 21
                  add          gp, sp, ra
                  add          t3, a2, s3
                  beq          s11, s11, 337f
                  bne          a3, t1, 339f
                  ori          t4, zero, 13
337:              sra          sp, s8, s2
338:              sra          s0, s10, tp
339:              beq          a5, t6, 341f
                  srli         s4, s0, 11
341:              lui          t6, 803807
                  slli         t2, tp, 31
                  bge          t3, s6, 360f
                  and          t4, gp, s9
                  sltu         tp, s5, t1
346:              bge          t3, t6, 365f
                  srl          zero, t6, t3
                  bne          zero, s1, 368f
                  bge          tp, a4, 360f
                  xori         s1, t5, 713
                  la           sp, region_0+1681 #start riscv_load_store_rand_instr_stream_3
                  lb           a5, -606(sp)
                  sw           a3, -917(sp)
                  andi         t6, a2, 43
                  lbu          t5, -1294(sp)
                  add          a0, a5, s10
                  sb           a4, -538(sp)
                  slti         s4, t4, -1611
                  slli         s5, s10, 19
                  add          t2, a7, sp
                  xor          s7, s11, t2
                  lhu          t3, -1317(sp)
                  lui          s4, 1041805
                  lhu          t3, -1553(sp)
                  xor          t1, s1, t3
                  sb           t5, -244(sp)
                  and          s2, t6, tp
                  xori         a1, s5, 798
                  and          s5, t6, s4
                  slli         a1, s3, 27
                  sb           s6, -762(sp)
                  auipc        t0, 817904
                  slt          zero, a0, s7
                  srli         a3, s0, 16
                  sltiu        a4, s6, 1050
                  ori          zero, gp, 404
                  slli         s5, t5, 16
                  lbu          a7, 240(sp)
                  lb           s1, -467(sp)
                  sh           s6, -1083(sp)
                  lb           a3, -41(sp)
                  sb           a0, -958(sp)
                  sh           t3, -1075(sp)
                  srl          t2, t4, sp
                  sb           s1, -987(sp) #end riscv_load_store_rand_instr_stream_3
                  nop
                  bge          ra, ra, 357f
                  srli         t6, s10, 30
                  sub          t2, s8, a4
                  bltu         t3, s0, 370f
                  sltiu        s2, s11, -1605
357:              srl          a7, s2, t4
                  and          a0, a0, ra
                  or           a7, a1, a7
360:              andi         t5, s4, 1494
                  lui          s9, 526504
                  sub          a1, s6, a5
                  xori         sp, s4, -1099
                  bne          t0, a7, 381f
365:              nop
                  xori         t6, t4, -168
                  sll          t4, s5, s0
368:              srai         ra, zero, 3
                  add          s5, s5, s3
370:              slt          tp, s6, s3
                  srai         t3, gp, 19
                  sra          t1, s11, gp
                  bgeu         a1, t0, 375f
                  sltu         zero, tp, ra
375:              addi         a0, t0, -240
                  sltu         t1, s3, a5
                  xor          s1, s5, a7
                  bge          tp, a3, 397f
                  bltu         a1, t6, 386f
                  slt          a3, t6, s9
381:              beq          s9, zero, 400f
                  sltiu        t6, s3, -172
                  sub          gp, t6, tp
                  sll          s4, a1, a6
                  bltu         s6, a4, 390f
386:              slt          a0, s9, ra
                  bge          s3, tp, 400f
                  auipc        s11, 933192
                  bge          a0, a4, 405f
390:              srl          t4, a5, t3
                  sltu         a7, s10, tp
                  srai         s5, a3, 9
                  and          s7, tp, a2
                  sll          s5, a5, gp
                  srli         s1, sp, 21
                  xori         s6, zero, 1787
397:              blt          t5, a7, 407f
                  or           t1, t5, tp
                  sltiu        s5, gp, 774
400:              ori          a4, s0, 1176
                  sra          t0, a6, s7
                  sra          a0, s8, s7
                  sra          a4, sp, s5
                  or           a5, a2, zero
405:              add          a7, gp, a4
                  sltu         s5, s2, a7
407:              or           a5, tp, ra
                  srai         t5, a4, 11
                  sub          tp, s11, t2
                  bltu         s3, t1, 411f
411:              addi         t0, a5, -648
                  srli         t0, a0, 5
                  srai         t0, tp, 12
                  andi         a3, a2, 1730
                  auipc        a3, 730888
                  sra          t4, s9, a7
                  addi         a7, s7, -1425
                  ori          t6, s8, -303
                  addi         a1, s11, -1797
                  addi         s1, t2, -99
                  bge          a6, a1, 433f
                  beq          s4, s11, 438f
                  beq          s11, s10, 442f
                  lui          a5, 678307
                  slt          s11, tp, s0
                  bltu         a4, ra, 441f
                  nop
                  or           t0, s7, t3
                  srai         zero, a6, 16
                  xor          a4, s11, s2
                  blt          a2, a2, 434f
                  auipc        s5, 39038
433:              xor          a0, s1, t4
434:              ori          s6, s5, 524
                  auipc        tp, 423749
                  add          s4, t0, a4
                  bltu         a6, s7, 440f
438:              xori         s6, t5, 1687
                  addi         t6, t2, -1823
440:              xor          s6, t0, ra
441:              and          s7, s9, t3
                  la           sp, region_1+1252 #start riscv_load_store_rand_instr_stream_1
                  andi         gp, s2, 653
                  lb           s11, -10(sp)
                  ori          t2, s9, -1159
                  srai         a6, s1, 10
                  lb           t6, -202(sp)
                  sb           t2, 29(sp)
                  xori         a0, zero, -1720
                  lbu          s4, 67(sp)
                  sltu         s2, zero, sp
                  xor          t0, a1, t0
                  srli         t5, t1, 12
                  lb           t1, -182(sp)
                  sh           a6, 66(sp)
                  sltu         t0, t3, s6
                  srai         a3, s2, 0
                  lb           a5, -53(sp)
                  sb           ra, 29(sp)
                  addi         s2, s11, 919
                  sub          s2, t5, s0
                  ori          s11, t4, -358
                  lw           s4, -96(sp)
                  ori          a7, gp, 850
                  sll          s5, a0, s5
                  srai         t6, a3, 3
                  srli         t0, s10, 28
                  slti         ra, gp, -12
                  sltiu        a7, s5, 411
                  sb           s0, 75(sp) #end riscv_load_store_rand_instr_stream_1
442:              sll          a0, t4, a0
                  sltiu        a6, s11, 867
                  bge          a4, zero, 453f
                  beq          ra, s1, 447f
                  bgeu         tp, s1, 452f
447:              srai         a4, a3, 16
                  slt          t4, tp, a4
                  addi         a3, s7, 1215
                  slt          s0, t3, s0
                  addi         t5, s5, -489
452:              auipc        s5, 387369
453:              bge          s7, sp, 467f
                  sltu         t4, t1, s5
                  xori         s9, a3, 1529
                  lui          s5, 429003
                  sltu         s8, t1, a2
                  blt          t5, sp, 474f
                  beq          s4, s8, 474f
                  srl          s5, s9, tp
                  sra          s2, s1, t2
                  auipc        t3, 517734
                  bge          s1, sp, 476f
                  bge          t0, s5, 473f
                  srli         tp, s10, 26
                  srai         ra, t3, 10
467:              xori         s1, t1, -1664
                  slti         t6, zero, 1886
                  add          zero, t5, a4
                  add          a4, t6, a1
                  bne          s9, a2, 477f
                  addi         s0, s4, 1707
473:              or           a3, ra, t5
474:              sub          s8, t5, gp
                  sra          t6, a0, a3
476:              ori          t2, s0, -918
477:              bge          s5, s2, 497f
                  ori          a5, s8, 1217
                  sltu         a5, a3, a7
                  sltiu        a0, t1, 1813
                  srli         t2, s11, 0
                  sltiu        t5, a4, 1438
                  srai         s0, s0, 0
                  xori         tp, s1, 473
                  auipc        a0, 430243
                  srl          a4, a6, s6
                  andi         s7, tp, -335
                  or           ra, t3, zero
                  lui          gp, 492131
                  bgeu         s7, a7, 494f
                  or           s11, s6, s3
                  slli         t6, a3, 25
                  nop
494:              blt          s11, t3, 499f
                  sub          a6, s1, sp
                  blt          s8, t6, 500f
497:              srli         s6, a3, 15
                  sub          t5, s0, a7
499:              and          s0, t2, t4
500:              bltu         s10, a4, 515f
                  sra          a0, a3, t0
                  auipc        s4, 136326
                  srl          a7, s4, s4
                  bgeu         s7, t2, 510f
                  nop
                  bltu         a1, a1, 511f
                  addi         a5, s7, -1391
                  add          s6, s6, a7
                  add          a6, s1, s11
510:              srl          ra, s1, a3
511:              slt          s9, t4, sp
                  srai         t3, a3, 26
                  sub          a7, t4, s10
                  add          s5, s8, t0
515:              blt          sp, s7, 521f
                  sltiu        tp, s0, -723
                  andi         s2, s6, 1016
                  sll          a5, gp, t1
                  and          s8, a3, a0
                  beq          s11, s4, 535f
521:              srli         s5, tp, 31
                  bne          a3, a3, 538f
                  sltu         s4, a3, s2
                  beq          s5, s7, 536f
                  ori          a3, s4, -1656
                  srl          a3, t1, s4
                  sll          a7, sp, a7
                  bne          sp, t0, 544f
                  slli         t1, zero, 28
                  ori          ra, sp, 1559
                  sub          a7, s0, sp
                  slti         t0, zero, -1235
                  ori          t4, s5, -1254
                  srai         t2, t1, 2
535:              or           s6, zero, ra
536:              slt          s7, s4, gp
                  srl          a7, a3, s11
538:              add          s2, s9, gp
                  bgeu         t3, s2, 542f
                  auipc        sp, 736152
                  beq          t3, t6, 543f
542:              sub          t0, s0, a7
543:              srli         t6, t2, 23
544:              beq          t1, a7, 555f
                  slti         gp, zero, -1138
                  nop
                  beq          a4, a0, 560f
                  sub          s4, s11, s3
                  bgeu         t3, zero, 550f
550:              beq          s7, t3, 560f
                  beq          s2, t5, 553f
                  srl          ra, a2, tp
553:              bge          s9, a3, 562f
                  xor          s0, s4, s8
555:              srai         zero, tp, 31
                  auipc        s11, 878469
                  srai         t4, s8, 12
                  sub          gp, a6, s10
                  xori         s7, gp, 602
560:              bgeu         a4, s4, 579f
                  bgeu         t1, a3, 576f
562:              lui          a6, 20205
                  sltiu        s11, a2, -73
                  auipc        t0, 725991
                  ori          t2, t5, 1304
                  ori          s11, s3, 741
                  xori         a1, t3, -697
                  ori          a0, a5, 1674
                  bltu         t0, s1, 589f
                  or           a5, a2, s6
                  lui          t4, 930184
                  sll          t6, s0, a0
                  sll          s4, zero, a6
                  andi         a6, a0, -1066
                  xori         sp, s6, 1291
576:              blt          tp, a4, 589f
                  sub          s5, t6, a0
                  nop
579:              bge          a5, t4, 593f
                  andi         a3, a2, -416
                  blt          t0, t2, 588f
                  andi         a0, a1, -1279
                  beq          a7, s1, 602f
                  bltu         t3, s11, 601f
                  and          t3, s8, s9
                  srai         tp, s9, 2
                  slli         t3, s10, 11
588:              srli         t2, s1, 17
589:              addi         a5, a3, 1008
                  or           s8, t6, s9
                  or           a5, tp, sp
                  sra          t1, s11, a3
593:              nop
                  andi         s0, s1, 478
                  srl          sp, s10, ra
                  srli         s7, s1, 24
                  sub          t6, s2, s4
                  and          t3, s2, sp
                  la           sp, region_0+1629 #start riscv_load_store_rand_instr_stream_0
                  andi         t3, s9, -1104
                  lbu          s9, -146(sp)
                  lbu          ra, 176(sp)
                  xor          a4, a2, t5
                  lb           s4, 125(sp)
                  sub          s4, tp, s8
                  srl          a3, t5, a5
                  sub          a3, s1, t3
                  lbu          a5, -57(sp)
                  lb           t0, 160(sp)
                  lbu          t0, 100(sp)
                  lh           a0, -215(sp)
                  nop
                  xori         t2, s9, 1979
                  srai         a4, t0, 7
                  slti         t3, s9, -1154
                  sh           t1, 1(sp)
                  lbu          t4, 21(sp)
                  sltiu        s9, gp, 1596
                  lw           s2, -161(sp)
                  auipc        s2, 962532
                  slli         t3, a4, 23
                  and          t2, s7, t4
                  srli         a6, s6, 20
                  sltu         s9, t5, s9
                  lh           s9, 55(sp)
                  sb           s2, -183(sp)
                  ori          a1, a0, -302
                  lb           s6, 252(sp)
                  lbu          ra, 74(sp)
                  sll          s8, zero, t6
                  srl          s11, tp, a5
                  slli         s8, a0, 4
                  and          a6, s7, s10
                  srli         tp, a0, 16
                  lbu          s1, -178(sp)
                  lui          a3, 329596
                  andi         s8, s5, -1619
                  sb           s3, 4(sp)
                  ori          s11, t6, -1342
                  sll          t3, s7, s2
                  andi         s7, ra, 1112
                  sw           s4, 155(sp)
                  sb           zero, -62(sp)
                  andi         s11, a4, -1568
                  sra          s4, s8, a4
                  lb           a7, 8(sp)
                  lw           s0, -245(sp)
                  ori          t1, t1, -860
                  addi         s7, a6, 72
                  lb           t5, 219(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         s9, s8, 602f
                  bltu         s6, t2, 619f
601:              sub          t2, s4, s5
602:              sll          s6, s5, s4
                  auipc        t0, 984154
                  lui          s7, 923529
                  ori          ra, zero, -419
                  sll          s5, s5, a1
                  andi         a4, t1, -1233
                  sltu         zero, a0, s7
                  lui          sp, 460147
                  sll          sp, s2, t6
                  srli         t4, t6, 24
                  slti         s5, t1, 991
                  sltiu        a5, s8, -263
                  ori          gp, sp, 551
                  sltiu        s7, t0, 1588
                  and          t2, s7, s11
                  ori          s9, s2, 1289
                  bgeu         t4, a2, 627f
619:              bgeu         gp, s6, 635f
                  blt          s7, a7, 640f
                  bltu         s11, gp, 636f
                  and          a7, a3, s1
                  bltu         s4, s3, 632f
                  sll          s11, t6, t2
                  sra          t5, a7, gp
                  andi         s8, s5, -530
627:              sltiu        t1, a1, 1447
                  sra          t6, a7, s4
                  and          t2, zero, s9
                  ori          t0, t3, 1998
                  sltiu        gp, s9, 485
632:              lui          s0, 293582
                  xor          sp, s4, s11
                  and          sp, t1, ra
635:              or           s4, t3, ra
636:              xor          a0, a6, s7
                  andi         t0, t5, 53
                  sltiu        a4, s11, 920
                  xori         t1, s3, 821
640:              sltiu        t4, sp, 624
                  bltu         a5, s10, 660f
                  srai         s7, s6, 27
                  srli         s4, tp, 28
                  bltu         a5, s5, 660f
                  bgeu         sp, t6, 651f
                  bne          t3, s3, 662f
                  bltu         a4, t3, 663f
                  auipc        s6, 124473
                  lui          ra, 244748
                  and          t1, s9, a1
651:              or           a1, a7, tp
                  slti         s4, t1, -1256
                  and          t2, a0, t6
                  sll          s9, gp, s11
                  andi         a6, s5, 1868
                  slt          s9, s1, s7
                  bltu         s7, t3, 669f
                  sll          tp, a0, a3
                  srl          s4, a1, s6
660:              sltu         t1, a6, t6
                  srl          s1, sp, a3
662:              sub          zero, a5, t4
663:              slt          s1, s8, t5
                  bge          tp, t5, 679f
                  bltu         a1, s4, 674f
                  auipc        gp, 704489
                  beq          t5, t6, 678f
                  srai         s0, t2, 14
669:              addi         a7, ra, 1089
                  srai         zero, gp, 27
                  srli         a3, tp, 14
                  andi         s8, s1, 2038
                  slli         t0, s4, 19
674:              bge          a4, t2, 693f
                  and          s5, s7, a7
                  sltiu        ra, s6, 862
                  sub          s4, a1, s2
678:              sltu         s5, t2, tp
679:              nop
                  andi         s7, s1, -1240
                  lui          t4, 558444
                  beq          s4, s6, 686f
                  srai         t0, s0, 14
                  sltu         t3, a7, sp
                  srli         s9, s8, 17
686:              xori         s11, s5, 840
                  srli         a5, s3, 2
                  bne          t1, t4, 707f
                  beq          t1, gp, 696f
                  bltu         s9, t3, 704f
                  slli         s11, a6, 10
                  srli         s11, s9, 13
693:              nop
                  sra          a6, gp, tp
                  bge          t1, a3, 698f
696:              add          t4, tp, s5
                  ori          t3, t0, 970
698:              nop
                  and          t2, a5, s2
                  bltu         s8, a1, 703f
                  ori          t0, s0, -1918
                  addi         ra, zero, -1365
703:              bge          a5, s5, 718f
704:              sra          s7, s9, a5
                  srl          s5, a4, a2
                  srl          s7, a7, s8
707:              bltu         t6, s0, 717f
                  xori         a5, t5, 1061
                  bgeu         a0, sp, 714f
                  bgeu         tp, t3, 712f
                  sll          a3, s4, t6
712:              bne          a4, a3, 725f
                  or           zero, s0, s5
714:              add          s11, a5, ra
                  xor          t2, s3, s10
                  srli         s6, a6, 29
717:              nop
718:              ori          a6, s6, 161
                  lui          ra, 321052
                  slli         a6, t0, 8
                  nop
                  sub          s7, t2, s0
                  slti         gp, a3, 323
                  nop
725:              addi         s6, t4, -1638
                  srai         a3, tp, 16
                  sltiu        sp, s1, -1161
                  srl          s8, s5, t5
                  bltu         s4, a1, 735f
                  nop
                  slli         tp, t1, 26
                  slt          s9, s7, gp
                  slti         a4, t4, -1762
                  sltiu        t2, t2, 1917
735:              auipc        s1, 46187
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            blt          s8, a1, sub_2_stack_p
                  slt          s6, s0, tp
sub_2_stack_p:    addi         a2, a2, -20
                  nop
                  sltu         s0, t5, a6
                  or           t4, a5, s4
                  and          t2, s1, t2
                  slt          s4, t3, s5
                  sw           ra, 4(a2)
                  sll          s0, s9, s5
                  srli         t0, tp, 9
                  ori          t0, a5, -42
                  auipc        s4, 115333
                  add          s2, t1, a5
                  sra          s1, a3, s0
                  xor          t1, t3, a4
                  srl          t1, s9, s10
                  sub          gp, s7, sp
sub_2_j4:         jal          ra, sub_6 #jump sub_2 -> sub_6
                  auipc        a0, 54870
                  la           s0, sub_3
                  srl          s5, s9, t6
                  auipc        s11, 691961
                  addi         s0, s0, 805
                  bge          s1, s3, sub_2_j5 #branch to jump instr
                  srl          s6, sp, sp
                  sltiu        s9, sp, 1571
                  addi         s6, t1, 275
                  lui          s2, 1042964
                  sll          s4, t2, s8
                  xor          a5, a5, s3
                  sra          gp, a0, s4
sub_2_j5:         jalr         ra, s0, -805 #jump sub_2 -> sub_3
                  sltiu        t2, t3, -1826
                  and          zero, a3, s10
                  beq          ra, a6, sub_2_j6 #branch to jump instr
                  andi         a3, gp, 654
                  lui          a5, 182860
                  sub          t5, s11, s5
sub_2_j6:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  lui          t0, 572899
                  srl          gp, s7, t5
                  addi         a3, s2, -1098
                  la           s2, sub_4
                  addi         t2, s0, 1531
                  slt          s4, s9, a1
                  andi         tp, a7, 375
                  or           a4, t1, t0
                  xor          s1, a6, s5
                  addi         s2, s2, -106
                  srai         s6, s2, 14
sub_2_j7:         jalr         ra, s2, 106 #jump sub_2 -> sub_4
                  srai         a5, s8, 28
                  add          a7, t1, sp
                  sltiu        s1, a5, 863
                  andi         t6, ra, -325
                  slt          s8, s3, s10
                  xor          a3, sp, a7
                  addi         t2, s11, 1885
sub_2_j9:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  la           s11, region_1+99 #start riscv_load_store_rand_instr_stream_0
                  srai         s0, gp, 13
                  lb           ra, -2(s11)
                  sltiu        t4, t1, -1529
                  sltiu        s1, sp, 413
                  sw           s1, 61(s11)
                  sb           zero, 18(s11)
                  slli         t2, t1, 31
                  srai         a5, s10, 5
                  nop
                  andi         a5, t1, 1694
                  sltiu        gp, ra, 1536
                  auipc        t5, 195629
                  and          s6, t0, gp
                  lb           s2, 59(s11)
                  srl          s2, s1, a4
                  lh           zero, 31(s11)
                  sh           a7, -59(s11)
                  andi         tp, gp, 1123
                  lbu          s4, -13(s11)
                  add          a7, zero, s3
                  sb           sp, 57(s11)
                  slti         a1, s10, 1561
                  sub          s2, s7, a6
                  sb           s8, -28(s11)
                  sb           s0, 12(s11)
                  xor          s0, s2, t3
                  lb           tp, -64(s11)
                  or           a7, a6, s10
                  sb           a7, -37(s11)
                  xor          s4, gp, a3
                  srai         t3, t2, 19
                  sb           tp, 62(s11)
                  lh           s2, -41(s11)
                  lb           tp, -32(s11)
                  sub          s4, ra, gp
                  and          t5, s3, t1
                  lh           a6, -33(s11)
                  and          tp, s5, t6
                  addi         a5, gp, -1534
                  sra          s4, s1, sp
                  lh           a0, -7(s11)
                  slli         t5, t5, 3
                  srli         a7, gp, 24
                  sb           gp, -18(s11)
                  sh           s7, 43(s11)
                  srli         ra, s4, 4
                  add          s9, t4, s11
                  sll          t5, ra, t1
                  lbu          s8, 16(s11)
                  sb           a5, -12(s11)
                  srai         a0, s6, 5
                  lb           zero, 42(s11)
                  lw           a3, -27(s11)
                  lbu          a0, 37(s11) #end riscv_load_store_rand_instr_stream_0
                  bne          s7, zero, 15f
                  beq          s2, a4, 16f
                  slti         a3, t5, 351
                  ori          a3, a5, -1592
                  sub          s7, s9, s0
                  slt          a3, s3, s5
                  sltu         sp, a7, a2
                  bne          s3, t1, 16f
                  slli         s7, s11, 22
                  xor          a0, zero, a2
                  bge          t1, s7, 19f
                  slti         ra, s11, 1683
                  sub          s11, s9, t1
                  sll          a4, t0, s8
                  sra          s11, s8, t3
15:               slt          s1, s11, tp
16:               bltu         a5, gp, 27f
                  bne          t3, tp, 31f
                  and          sp, t3, t0
19:               xori         t4, a0, -1051
                  add          sp, s9, tp
                  ori          ra, t2, 1427
                  bne          s0, a6, 29f
                  addi         t4, t5, -942
                  ori          s7, s0, -1685
                  sltiu        s11, s1, 1573
                  sltu         s11, t6, s11
27:               srli         s4, a4, 14
                  sll          t4, a5, a0
29:               sltiu        t5, t6, 966
                  slli         a3, a2, 31
31:               slli         s6, s11, 29
                  sub          s0, a6, a4
                  or           zero, s1, t3
                  auipc        s5, 946328
                  blt          s7, a7, 39f
                  sub          t6, t3, a2
                  slt          t0, s11, s8
                  lui          a5, 922214
39:               blt          s11, s2, 45f
                  srai         sp, t2, 29
                  blt          a2, sp, 48f
                  srli         s7, t1, 1
                  ori          t4, a7, -432
                  sltiu        t4, t6, -1723
45:               srli         s5, s0, 30
                  add          s6, s7, tp
                  add          s5, a0, t0
48:               slti         s4, s0, 239
                  sra          gp, a4, sp
                  beq          t6, ra, 59f
                  sub          t0, s7, a4
                  andi         a1, s10, -288
                  or           tp, t1, s8
                  beq          a1, t5, 71f
                  sub          s1, t4, s6
                  bgeu         t1, s9, 75f
                  slti         s9, s7, 74
                  la           s7, sub_7
                  and          s5, gp, tp
                  sltiu        s1, tp, 67
                  addi         s7, s7, -261
                  ori          a6, a3, 343
                  bltu         gp, s1, sub_2_j8 #branch to jump instr
                  addi         a6, sp, -657
                  lui          t3, 316938
                  slti         t3, t3, 133
sub_2_j8:         jalr         ra, s7, 262 #jump sub_2 -> sub_7
                  srli         t0, s2, 25
                  bne          s1, a4, 77f
59:               bne          a3, a6, 79f
                  srli         t3, tp, 10
                  sll          sp, t3, s8
                  sll          t5, a0, a2
                  xori         s5, t5, -2028
                  bgeu         t1, s5, 76f
                  bne          t4, s5, 71f
                  srl          a4, a3, s2
                  slti         t4, a3, 654
                  beq          s9, a6, 86f
                  lui          a0, 719773
                  slli         t2, tp, 25
71:               slt          s1, s10, a4
                  nop
                  nop
                  and          t0, s4, s11
75:               auipc        t1, 579230
76:               bltu         s0, s3, 83f
77:               ori          s11, s6, 1730
                  xori         t0, s1, 1483
79:               bge          a5, s3, 81f
                  addi         t4, t2, 855
81:               blt          t1, a2, 87f
                  sltu         t2, t5, a1
83:               auipc        gp, 542277
                  sltiu        a0, s4, -70
                  bgeu         ra, s1, 105f
86:               sltiu        s11, s11, -363
87:               bgeu         a0, a4, 95f
                  beq          s8, s6, 94f
                  bne          gp, s11, 96f
                  sll          s4, s0, a7
                  slt          ra, s6, ra
                  andi         s9, zero, -1441
                  andi         tp, a3, -760
94:               bge          s7, s9, 108f
95:               slt          a1, ra, s7
96:               bge          tp, sp, 114f
                  slti         zero, ra, -443
                  xor          s6, a6, s3
                  xor          sp, ra, s11
                  auipc        s5, 651918
                  srli         gp, gp, 19
                  bge          s1, s0, 117f
                  srai         s2, sp, 18
                  bltu         a0, a3, 108f
105:              sub          gp, s5, t5
                  srai         s11, s8, 14
                  slti         sp, s5, 753
108:              sltiu        zero, s0, -223
                  xori         t2, s4, 290
                  lui          a6, 790306
                  xor          a3, a1, s0
                  srl          t1, a4, s10
                  bgeu         a0, s2, 114f
114:              nop
                  srai         ra, a1, 17
                  sltiu        t1, ra, 1949
117:              slt          t4, gp, t0
                  slli         a0, t1, 24
                  slli         tp, a7, 19
                  and          t1, t0, a4
                  sltiu        zero, a6, -1221
                  nop
                  lui          s4, 318411
                  addi         gp, t2, 616
                  andi         a6, sp, 839
                  srli         s11, s7, 7
                  ori          s0, s9, -2048
                  and          s5, a1, tp
                  nop
                  nop
                  srl          a3, zero, a6
                  srli         t4, t1, 13
                  nop
                  bltu         s10, t2, 149f
                  bgeu         t3, s6, 155f
                  slli         s7, t2, 23
                  slti         zero, s7, 826
                  xori         zero, s1, 813
                  auipc        t4, 644215
                  sltu         a3, s10, s9
                  lui          s6, 679689
                  sltu         a6, ra, t6
                  xori         a7, t0, -591
                  addi         s9, ra, -582
                  sll          t0, s6, s1
                  xor          s11, sp, s11
                  add          s8, s7, s11
                  srli         a7, s3, 20
149:              or           t3, a5, s7
                  slli         a5, s6, 3
                  srli         t5, t2, 8
                  auipc        t5, 920577
                  srai         s5, sp, 19
                  sll          a7, t1, t0
155:              sll          t4, t5, zero
                  lui          s6, 324183
                  auipc        t4, 837235
                  sll          ra, a1, s8
                  sll          t5, a3, s7
                  ori          t2, t3, 818
                  bltu         sp, tp, 170f
                  lui          t3, 485703
                  or           s9, s11, a3
                  srl          a3, s2, s11
                  beq          a0, a4, 182f
                  addi         s0, s7, -1178
                  bge          s0, a4, 182f
                  andi         t5, s8, 1132
                  bgeu         sp, t3, 181f
170:              nop
                  sll          s8, s8, tp
                  sltu         a5, a3, s11
                  xor          s7, s6, s10
                  sub          ra, a3, s0
                  srl          gp, t4, s10
                  bge          s9, a0, 183f
                  xori         t5, gp, -951
                  lui          t0, 629351
                  srl          s8, zero, t3
                  auipc        t6, 775603
181:              lui          t4, 997213
182:              xori         a4, ra, -1552
183:              srl          a6, a5, t3
                  sltiu        s5, s1, -72
                  beq          s7, s9, 205f
                  sltu         a7, t0, t5
                  sll          gp, s0, a6
                  ori          s11, zero, 2027
                  bne          tp, s5, 197f
                  auipc        t4, 80479
                  srl          a5, ra, s1
                  and          s5, zero, s9
                  sltiu        a5, a6, -953
                  srai         a0, s3, 8
                  ori          a0, tp, -1341
                  and          s6, t2, a5
197:              slt          gp, t4, gp
                  add          ra, zero, t2
                  or           s4, s8, a5
                  bgeu         t5, ra, 209f
                  ori          zero, a3, 1846
                  bne          s11, ra, 221f
                  sll          s4, sp, t0
                  sltu         s2, s1, a1
205:              sltiu        s2, t1, 1029
                  srl          s9, s7, s3
                  blt          s6, t5, 213f
                  srl          s2, s4, a1
209:              ori          tp, s8, -1893
                  add          s1, s3, s8
                  andi         t5, s5, 497
                  nop
213:              xor          a1, t2, a1
                  bgeu         s0, a6, 221f
                  add          s4, a7, a6
                  slt          a3, s7, s2
                  bge          a5, t3, 219f
                  auipc        s0, 797845
219:              bne          s10, s9, 233f
                  sub          s0, a3, s6
221:              bne          s11, s9, 230f
                  srai         tp, gp, 14
                  srl          s0, t0, ra
                  sltiu        a6, a4, 1784
                  slti         t2, a0, 822
                  bgeu         tp, ra, 237f
                  srai         t2, s2, 15
                  srai         s11, a0, 9
                  nop
230:              beq          a5, s2, 237f
                  sltu         t2, s2, s4
                  bltu         sp, s2, 236f
233:              bge          zero, s0, 242f
                  slt          s0, gp, s11
                  bgeu         a1, s10, 242f
236:              slt          s5, a1, t4
237:              slli         zero, gp, 14
                  srl          s6, a4, a2
                  slli         t0, s2, 24
                  sll          s11, s8, gp
                  slli         s5, ra, 17
242:              srai         t1, s6, 20
                  lw           ra, 4(a2)
                  srli         t6, s5, 12
                  sltiu        t0, s0, -1817
                  sub          a6, s1, t6
                  sll          a5, t6, a7
                  addi         a2, a2, 20
                  sub          s4, a4, tp
                  lui          t5, 976247
377:              addi x14, x1, 1
377:              jalr x14, x14, 0
sub_10:           srli         s4, s11, 29
                  xor          s8, s4, s9
                  slti         s7, a6, -1731
                  add          s7, t4, tp
                  addi         a2, a2, -40
                  sw           ra, 4(a2)
                  srli         t2, s7, 26
                  srli         s8, t3, 0
                  slli         a3, s10, 16
                  slt          tp, a3, a4
                  xori         t2, s10, -1916
                  srai         zero, s7, 29
                  sub          t6, s6, s8
                  slti         s11, a1, -1870
                  bgeu         s1, s7, 9f
                  bgeu         s0, t0, 9f
                  bgeu         s9, a0, 9f
9:                and          t0, a2, s7
                  sra          s11, t2, sp
                  lw           ra, 4(a2)
                  srli         s2, zero, 11
                  addi         a2, a2, 40
                  slt          a0, s9, a3
                  ori          a4, zero, -1818
24:               addi x5, x1, 1
24:               jalr x5, x5, 0
sub_5:            sra          sp, t5, t4
                  add          a6, s7, gp
                  addi         a2, a2, -28
                  lui          t3, 647227
                  auipc        s6, 215102
                  addi         t0, a7, 49
                  xori         a0, t1, -1061
                  sw           ra, 4(a2)
                  ori          a7, a3, 1206
                  nop
                  la           t4, region_0+251 #start riscv_load_store_rand_instr_stream_1
                  lb           a0, -27(t4)
                  lb           s8, -15(t4)
                  srai         t3, s9, 25
                  auipc        s11, 524369
                  lb           s4, 24(t4)
                  addi         s8, a2, -51
                  lb           s7, -34(t4)
                  lb           zero, -16(t4)
                  srli         a3, a3, 31
                  ori          t1, s1, -1306
                  lhu          s8, 57(t4)
                  srli         a6, s7, 3
                  slli         s4, t3, 17
                  lbu          s6, 8(t4)
                  sltu         t3, s2, s2
                  lw           a5, -35(t4)
                  sb           a3, -61(t4)
                  sb           s5, -43(t4)
                  or           s4, s1, t5
                  lui          t1, 871468
                  sb           a3, 59(t4)
                  xori         s1, t5, -1522
                  sb           s8, 7(t4) #end riscv_load_store_rand_instr_stream_1
                  bne          ra, s8, 4f
                  addi         s6, a1, 807
                  or           ra, sp, s6
                  slt          t6, s1, s0
4:                srai         s11, s4, 15
                  srli         a3, zero, 15
                  or           a6, ra, s10
                  sll          s9, t0, t6
                  bgeu         sp, s3, 9f
9:                sll          a4, t3, a6
                  auipc        t1, 1034135
                  slti         t3, tp, -1251
                  srli         s11, a7, 30
                  xori         a0, s3, 476
                  lui          s6, 150808
                  and          t3, a5, s10
                  sub          s9, a3, a5
                  srl          s7, a3, a0
                  nop
                  xor          ra, s3, a3
                  xori         t5, t1, 1679
                  sltiu        t5, s1, -1840
                  slli         a0, zero, 21
                  slti         t2, s6, -1702
                  ori          s6, s0, -11
                  xor          t6, s9, tp
                  srai         s2, s10, 30
                  bge          s5, s2, 46f
                  bne          s11, a4, 30f
                  bltu         a5, t6, 35f
30:               lui          t0, 603957
                  srai         t5, s9, 12
                  sra          a4, a4, tp
                  srli         s5, a4, 19
                  bltu         t3, s11, 42f
35:               nop
                  add          s5, a3, s10
                  slt          s9, ra, ra
                  srli         tp, s6, 16
                  sub          t3, tp, s4
                  slt          ra, t0, s10
                  slt          ra, s5, s1
42:               bltu         s7, s1, 48f
                  srl          s11, s6, a3
                  add          gp, ra, a4
                  xori         t6, a4, -1921
46:               slt          t1, sp, t0
                  srl          t2, s10, a3
48:               slli         a4, s9, 1
                  nop
                  sub          s9, t4, t6
                  srli         a0, s7, 17
                  bltu         a1, t4, 64f
                  xor          s1, s10, s7
                  xori         s9, s10, -1289
                  add          t1, a1, ra
                  xori         a5, s3, 1321
                  sub          t6, zero, t3
                  auipc        s7, 781741
                  bge          t6, tp, 65f
                  slti         t2, zero, -497
                  slti         t1, s11, 472
                  slli         s1, s7, 6
                  nop
64:               srli         s2, t2, 18
65:               auipc        a5, 507527
                  bne          t4, zero, 70f
                  bgeu         s5, s10, 85f
                  srli         s8, s5, 28
                  or           t6, a1, s3
70:               sll          a3, a2, s6
                  addi         s7, s6, 1654
                  bne          sp, a2, 89f
                  sltu         a6, sp, s5
                  sra          zero, s8, s7
                  slt          s5, a6, zero
                  slli         ra, a7, 10
                  xori         t6, a1, 683
                  xor          a7, tp, a7
                  sll          a3, a3, t1
                  and          a5, s8, s1
                  slti         t1, a6, -1
                  beq          tp, s4, 90f
                  auipc        a0, 72841
                  ori          ra, a2, 1156
85:               srai         a1, t4, 21
                  bne          t1, s8, 87f
87:               blt          t2, sp, 95f
                  slli         s8, t4, 10
89:               bgeu         s5, t4, 91f
90:               srl          t5, t2, s6
91:               bltu         gp, a6, 100f
                  nop
                  sltu         t2, s4, s0
                  bge          t5, s1, 102f
95:               addi         a7, s4, 118
                  blt          t4, t1, 104f
                  addi         a6, t4, -1570
                  bgeu         s2, a1, 101f
                  beq          s6, s1, 118f
100:              srai         s1, ra, 20
101:              ori          t5, s11, -1031
102:              sll          t0, t4, t0
                  slli         a1, s11, 14
104:              bltu         ra, s7, 122f
                  xori         s1, a1, -1825
                  sltu         t4, s1, a3
                  lui          s1, 1012211
                  slli         a4, zero, 18
                  srl          a4, s0, s3
                  slt          t4, s2, zero
                  srl          s7, a2, a6
                  andi         s5, tp, 564
                  srli         a0, t2, 24
                  slti         s8, t1, 1762
                  srl          zero, a4, s7
                  srai         s7, a0, 26
                  xor          a3, s2, s3
118:              sll          t6, t0, a4
                  nop
                  xor          a5, t0, a6
                  bge          zero, s1, 130f
122:              andi         s5, s0, -534
                  xori         zero, s1, -1433
                  sll          s7, s2, s9
                  slti         s5, gp, -578
                  xori         s5, a5, 1704
                  bge          a1, a5, 132f
                  bltu         s11, a6, 143f
                  and          a4, s0, a1
130:              and          t0, t4, t3
                  lui          t2, 281875
132:              ori          a0, t3, 197
                  xor          s8, t0, t0
                  or           ra, s6, a2
                  auipc        s6, 252398
                  sltu         t6, sp, s6
                  sltiu        t0, tp, -1816
                  srli         a7, t2, 15
                  xori         s1, a5, 244
                  or           t4, s3, a5
                  xor          t5, s1, s9
                  xor          s6, s3, s1
143:              bgeu         t3, s2, 145f
                  add          t2, t0, tp
145:              nop
                  bge          t1, t1, 165f
                  srl          s4, s8, t4
                  add          s11, ra, s10
                  slti         s7, t0, 1154
                  nop
                  bgeu         a1, t6, 153f
                  srli         sp, a6, 22
153:              slti         a1, a7, 1003
                  slti         s11, t2, 1703
                  auipc        s6, 327186
                  srli         s2, tp, 23
                  xor          a5, ra, s3
                  bgeu         s7, s8, 176f
                  blt          t3, s3, 173f
                  xori         s4, s3, -1549
                  nop
                  beq          t5, s0, 170f
                  andi         t0, s11, 1088
                  blt          t1, a3, 166f
165:              andi         s9, t3, -1340
166:              auipc        t3, 415308
                  slt          tp, a1, t3
                  bge          s2, s8, 170f
                  and          a3, s7, ra
170:              slli         a5, a6, 23
                  srai         s1, sp, 1
                  or           a5, s11, s4
173:              ori          a4, s2, -1306
                  srli         a0, s5, 2
                  sra          t6, t0, a2
176:              sltiu        gp, s3, -906
                  slti         s4, ra, -675
                  slli         a0, t2, 9
                  auipc        t0, 872815
                  srl          a1, a4, s1
                  sltu         s0, ra, a7
                  nop
                  blt          s5, s5, 192f
                  bge          s7, s1, 192f
                  blt          tp, a5, 194f
                  blt          a2, a0, 194f
                  sll          s8, s2, gp
                  srai         a4, s8, 11
                  sltu         a3, t0, s8
                  lui          s7, 283174
                  bge          a0, a1, 203f
192:              xori         a7, t5, 1726
                  add          a3, a6, s6
194:              slli         s9, t0, 19
                  andi         s0, t5, -1515
                  bgeu         a5, ra, 204f
                  blt          sp, s3, 205f
                  slti         s2, a0, -887
                  xori         a5, s6, -1779
                  srl          a7, s9, t4
                  srl          s4, s8, s9
                  andi         s7, t1, 1887
203:              nop
204:              bltu         t4, zero, 223f
205:              blt          zero, a7, 211f
                  sltu         t2, a7, s11
                  beq          t5, s4, 211f
                  ori          t5, s9, 721
                  xor          s6, ra, sp
                  xori         t0, t0, -328
211:              sub          t2, t0, s4
                  bgeu         s9, s8, 218f
                  slli         t3, a6, 14
                  slt          a6, t5, t1
                  auipc        t4, 462222
                  lui          t2, 797586
                  bgeu         s0, s4, 219f
218:              sltu         s0, sp, s2
219:              slli         s6, s9, 18
                  sll          t1, a0, s6
                  xori         t1, tp, -1366
                  sltu         t0, t5, s0
223:              ori          s8, a3, 937
                  lui          s8, 915194
                  and          s7, t5, s7
                  bge          t6, a3, 231f
                  slli         a1, gp, 27
                  srai         gp, gp, 20
                  sra          tp, t4, t0
                  bne          s7, a5, 245f
231:              bne          s8, s11, 235f
                  lui          tp, 882767
                  sll          a5, zero, a2
                  add          t6, s8, t6
235:              blt          a2, t1, 236f
236:              sra          a4, zero, t3
                  srli         t4, t0, 8
                  or           s1, a6, t0
                  sltu         zero, gp, sp
                  sll          a6, a4, t5
                  slt          t2, s4, s7
                  bne          a4, s4, 260f
                  ori          s6, a7, 1358
                  and          s0, s4, s2
245:              lui          t0, 76889
                  sltu         sp, a5, s9
                  bge          a1, t6, 265f
                  sll          t1, a7, tp
                  srl          a4, t3, t0
                  addi         a0, ra, 122
                  slli         s8, t5, 6
                  xori         ra, s4, -1677
                  or           sp, t3, a2
                  blt          a5, s2, 255f
255:              xori         a6, t2, -1691
                  bge          t4, t6, 270f
                  nop
                  sll          tp, a7, ra
                  xor          a3, ra, a1
260:              sub          a6, s9, tp
                  sltiu        s8, a1, -1223
                  bgeu         a5, a6, 279f
                  addi         t5, t3, 123
                  slt          sp, a0, ra
265:              add          zero, s9, s8
                  xori         sp, t4, 1021
                  slti         s8, a7, -1693
                  andi         a5, a1, -1227
                  sltiu        s8, a1, -348
270:              andi         s1, s3, -370
                  beq          a4, t6, 273f
                  blt          s7, t5, 291f
273:              or           s2, a0, a0
                  slli         s8, s10, 23
                  auipc        a7, 797083
                  bltu         a2, t6, 279f
                  andi         t1, ra, 1135
                  and          a1, s5, s9
279:              bltu         gp, s4, 297f
                  xori         s5, a0, -757
                  xor          s1, zero, s8
                  or           ra, a0, a0
                  auipc        t3, 555543
                  addi         t1, sp, -769
                  auipc        s1, 520025
                  srl          s1, ra, t1
                  add          t2, s7, a7
                  sub          t6, tp, s0
                  srai         tp, s4, 3
                  or           a5, s11, s1
291:              xori         s0, t0, 86
                  bge          t0, a1, 298f
                  beq          t6, t4, 312f
                  ori          t0, s5, 1577
                  sltu         s9, t4, a3
                  bltu         t1, s2, 302f
297:              xori         a4, t1, 1256
298:              slt          s4, a3, sp
                  sll          s0, s11, tp
                  bne          zero, a3, 302f
                  auipc        s2, 768334
302:              addi         s9, s10, 635
                  bgeu         s2, ra, 307f
                  bgeu         s5, s1, 312f
                  xori         tp, a4, 1945
                  sltu         s4, t1, t0
307:              addi         s6, a1, -1926
                  lui          t6, 330939
                  bge          t2, a2, 318f
                  slt          s2, a7, s0
                  slt          t5, t1, a1
312:              xor          t0, a2, s4
                  lui          s4, 38008
                  add          s5, s1, s4
                  sll          a6, a1, a7
                  lui          a7, 248144
                  srai         a6, s9, 18
318:              beq          a7, a0, 337f
                  srli         s1, t1, 3
                  sll          ra, zero, s10
                  xor          a4, s1, s10
                  beq          zero, s4, 340f
                  lui          s1, 49923
                  addi         s8, t4, 477
                  slli         t0, t5, 28
                  blt          s4, a5, 344f
                  sra          a4, a6, s11
                  slt          t2, a2, ra
                  lui          t4, 932283
                  sltu         s4, s7, s8
                  srai         a5, s3, 16
                  srl          s7, t2, a6
                  srli         t2, t6, 22
                  slti         zero, ra, -1506
                  nop
                  xori         t4, a0, -1426
337:              blt          a7, zero, 351f
                  bne          s5, a2, 342f
                  sll          gp, t2, t3
340:              xor          s0, s4, s11
                  sltiu        ra, s4, -633
342:              bltu         s1, s5, 345f
                  blt          a1, t2, 344f
344:              ori          t6, t4, -632
345:              xor          a7, a7, t6
                  sra          s11, s6, s3
                  bne          s2, a4, 352f
                  bne          t2, t0, 356f
                  srai         s2, a5, 13
                  beq          sp, s5, 351f
351:              and          a5, s4, a5
352:              sub          a1, s3, s2
                  slt          gp, t2, s11
                  add          a4, s9, t4
                  or           a6, zero, s8
356:              slli         t5, a4, 28
                  bne          zero, ra, 359f
                  beq          s1, s11, 373f
359:              addi         a5, zero, 275
                  sub          s6, zero, s4
                  bge          a3, a2, 367f
                  beq          a6, tp, 364f
                  and          a4, s10, t3
364:              srl          s8, t5, a1
                  sub          t1, t0, s11
                  and          s5, a5, s10
367:              srl          t2, a1, a4
                  srl          s1, a3, a6
                  sltu         s4, a0, a0
                  xori         a4, t5, 820
                  bne          t4, s7, 389f
                  slt          s0, a1, s11
373:              slti         tp, a3, 1877
                  sll          s8, t2, t5
                  sra          s7, s7, s2
                  addi         tp, s4, 1123
                  add          zero, t4, a6
                  slli         sp, a0, 2
                  auipc        a0, 188542
                  srl          a0, t5, a4
                  xori         t0, a2, -545
                  addi         t1, s0, -398
                  sltiu        t3, s5, -251
                  srai         s5, s8, 26
                  auipc        a4, 653150
                  slti         a5, gp, 538
                  blt          zero, s4, 404f
                  bne          t3, a6, 397f
389:              srl          ra, a5, a7
                  sltiu        ra, s0, 669
                  sltiu        gp, s1, -2030
                  ori          t6, a0, 1180
                  and          a0, a5, s0
                  la           t1, region_0+1154 #start riscv_load_store_rand_instr_stream_0
                  lbu          s9, 415(t1)
                  addi         a3, a4, 80
                  xori         gp, tp, 472
                  srl          a7, ra, a1
                  ori          sp, t4, 489
                  slt          s6, tp, t1
                  andi         tp, s9, -1288
                  and          ra, a4, a6
                  srai         sp, gp, 3
                  auipc        s6, 436557
                  srl          s6, s1, a2
                  lb           s0, 293(t1)
                  srl          t6, s0, s4
                  srli         a1, t0, 5
                  srai         a7, a1, 25
                  sh           s4, -250(t1)
                  sb           a3, 676(t1)
                  and          a6, s1, s8
                  lbu          s0, 703(t1)
                  sltu         t3, ra, ra
                  slli         s11, t5, 28
                  lb           a1, 199(t1)
                  srl          a5, t3, a4
                  slli         s0, s10, 14
                  nop
                  srai         s11, s6, 19
                  slt          s0, s4, a5
                  lbu          a3, -837(t1)
                  sra          a5, zero, t5
                  srai         ra, s8, 4
                  lb           ra, 658(t1)
                  or           a3, s2, s3
                  add          gp, a5, t6
                  and          zero, t1, s0
                  lb           s9, -945(t1)
                  slti         tp, t2, 652
                  sub          s11, zero, t5
                  xori         s9, a2, 114
                  lhu          a1, 482(t1) #end riscv_load_store_rand_instr_stream_0
                  or           s0, tp, a0
                  sra          a7, s1, s9
                  srai         s9, gp, 23
                  la           t4, region_1+365 #start riscv_load_store_rand_instr_stream_2
                  lh           zero, -35(t4)
                  lhu          s9, 249(t4)
                  sll          a7, a5, s3
                  xor          a1, s9, s3
                  andi         s8, s5, 447
                  slti         t0, s11, 0
                  lb           s7, 134(t4)
                  sltiu        s11, s9, -61
                  lh           t0, 125(t4)
                  or           t0, a1, t1
                  lb           t5, -246(t4)
                  lbu          sp, -113(t4)
                  sub          t0, t1, s1
                  nop
                  xori         a6, t6, 188
                  sh           a6, 245(t4)
                  nop
                  lbu          t5, 169(t4)
                  sb           s11, -196(t4)
                  lb           a0, -146(t4)
                  slti         a5, a3, 148
                  lui          zero, 536895
                  lbu          zero, 11(t4)
                  srl          t1, t5, zero
                  sh           s1, 69(t4)
                  sub          s7, s11, s6
                  add          s1, ra, a5
                  lb           ra, -93(t4) #end riscv_load_store_rand_instr_stream_2
397:              bltu         ra, s3, 416f
                  sltiu        s4, t6, 460
                  auipc        zero, 989598
                  add          a0, s7, a4
                  bge          a5, a0, 409f
                  bge          zero, a2, 421f
                  xori         sp, zero, -358
404:              slti         gp, a4, 1709
                  nop
                  lui          s2, 958178
                  slt          s5, s4, t0
                  xor          s5, s0, t1
409:              srl          t6, s8, s9
                  or           s2, t0, ra
                  sltiu        t2, t1, 76
                  bltu         a5, zero, 420f
                  bne          a0, s10, 419f
                  sub          t0, s7, a0
                  addi         a5, s6, -911
416:              sltiu        ra, s2, -987
                  xori         s0, a3, 1628
                  srl          t2, a5, s2
419:              auipc        s1, 139732
420:              slli         s1, s10, 10
421:              srl          a5, s0, s8
                  ori          s1, a2, 1259
                  bgeu         t4, t4, 425f
                  andi         s5, tp, 586
425:              addi         ra, t5, -1921
                  andi         a3, s10, 1427
                  addi         ra, t6, -688
                  sra          s5, s10, a5
                  bgeu         s7, t1, 441f
                  bgeu         ra, a6, 438f
                  slti         tp, s6, 1477
                  nop
                  slli         s6, s10, 31
                  srai         t5, s5, 27
                  nop
                  srai         s4, sp, 10
                  srli         a5, a6, 14
438:              addi         s2, s11, -1624
                  bgeu         s0, ra, 447f
                  and          t2, a0, s0
441:              sltu         s11, s8, s11
                  sub          zero, s11, s5
                  or           s5, t0, t4
                  slt          t0, s0, gp
                  bltu         a6, a5, 460f
                  or           s11, a5, zero
447:              slli         gp, s9, 0
                  beq          zero, a0, 449f
449:              sll          s11, s5, s9
                  sltiu        s1, s2, 1617
                  lui          gp, 207832
                  bgeu         s6, t5, 460f
                  bltu         a5, gp, 460f
                  srai         zero, tp, 14
                  bge          a3, t5, 457f
                  bltu         s3, a0, 460f
457:              addi         a0, ra, 128
                  srai         s8, s4, 13
                  bgeu         s4, a0, 460f
460:              srl          t0, t4, t6
                  lw           ra, 4(a2)
                  sub          t0, s9, s10
                  addi         a2, a2, 28
                  addi         s6, s9, 1341
                  slli         s2, t3, 14
                  addi         s7, t6, 1942
                  lui          t0, 756209
                  nop
572:              addi x5, x1, 0
572:              jalr x5, x5, 0
sub_7:            bltu         s9, t3, sub_7_stack_p
                  sltiu        s11, t6, 1340
sub_7_stack_p:    addi         a2, a2, -28
                  slli         a1, ra, 8
                  and          s7, s2, t5
                  and          s9, zero, zero
                  srli         a4, t5, 31
                  sw           ra, 4(a2)
                  srli         sp, s8, 15
                  sub          t5, s7, a2
                  add          zero, t5, a1
                  la           ra, sub_8
                  and          gp, t4, a5
                  addi         ra, ra, -723
                  slli         s6, t2, 21
                  slt          a4, t2, a7
                  andi         t0, s0, 1708
                  beq          s0, s9, sub_7_j10 #branch to jump instr
                  sll          t3, s5, a0
                  xori         gp, a0, 78
                  ori          s1, sp, 31
sub_7_j10:        jalr         ra, ra, 723 #jump sub_7 -> sub_8
                  lui          sp, 63930
                  srl          t6, a3, t4
                  andi         t0, s3, 2028
                  blt          a3, gp, 20f
                  and          s9, s9, zero
                  add          t3, s5, a0
                  slti         s4, a0, -1443
                  bltu         tp, a5, 25f
                  andi         s1, t3, 123
                  lui          t2, 190569
                  bgeu         a0, a2, 23f
                  sltiu        t3, s5, 1122
                  and          s2, zero, gp
                  ori          t0, a4, -378
                  ori          tp, s2, -1025
                  sll          s11, a7, sp
                  bltu         ra, t4, 30f
                  lui          s9, 290648
                  sll          s4, a1, a6
                  bne          a4, s10, 27f
20:               xori         t6, t2, 1473
                  slt          a5, a2, a2
                  andi         tp, a1, 1286
23:               sll          a4, zero, a6
                  andi         ra, s3, -28
25:               add          gp, a1, tp
                  andi         s4, ra, -1126
27:               bne          s1, t0, 29f
                  slt          t6, a2, t3
29:               slt          t6, ra, a4
30:               xor          a3, s5, a2
                  lui          a7, 329180
                  srai         sp, t2, 11
                  blt          s2, a5, 50f
                  srli         a6, a7, 9
                  nop
                  slli         s8, ra, 1
                  addi         t4, gp, 624
                  or           a5, s10, s8
                  blt          a1, s11, 58f
                  nop
                  slt          s6, a7, t1
                  sltiu        a4, ra, 1081
                  andi         s8, t2, -569
                  ori          a4, s10, -1048
                  and          s8, s7, gp
                  bgeu         t1, t2, 59f
                  bgeu         zero, t1, 57f
                  bne          a5, t6, 54f
                  sll          t4, a1, s9
50:               xor          a0, t3, s6
                  sll          s0, t0, s10
                  xori         t1, s9, 1613
                  beq          a7, s8, 68f
54:               slti         a4, a3, -1115
                  blt          s11, a5, 62f
                  or           ra, zero, t1
57:               slli         sp, sp, 28
58:               sub          sp, a7, gp
59:               or           ra, a4, t4
                  xori         s7, s0, -165
                  andi         s5, a4, 1551
62:               srai         t5, t3, 3
                  slli         t5, s0, 26
                  sltu         a6, s9, s1
                  beq          a1, a2, 74f
                  auipc        s6, 355935
                  sltu         gp, s11, t4
68:               auipc        a0, 988443
                  ori          s0, s7, 887
                  and          s8, a6, t4
                  beq          s11, t3, 89f
                  srai         s7, s1, 26
                  or           t3, zero, s4
74:               sltu         s2, s2, s7
                  xori         zero, tp, -592
                  ori          t0, s3, -998
                  bne          a4, a3, 90f
                  lui          a5, 412271
                  bgeu         a5, s2, 92f
                  nop
                  sll          s7, s6, s6
                  bgeu         t0, sp, 99f
                  slli         zero, s10, 1
                  xori         s0, ra, -843
                  xori         t4, tp, 452
                  andi         s11, a7, 49
                  srli         a1, s9, 21
                  auipc        ra, 435519
89:               blt          s6, tp, 96f
90:               sltiu        sp, t0, 1351
                  auipc        tp, 364697
92:               blt          a6, zero, 95f
                  auipc        s1, 82365
                  sub          s7, gp, a7
95:               bne          t0, ra, 106f
96:               srai         sp, s5, 24
                  and          a4, s6, zero
                  bne          s2, t2, 114f
99:               bge          s5, a6, 104f
                  bgeu         gp, t2, 114f
                  slt          t1, ra, s3
                  sra          s7, a4, a3
                  sub          a3, t5, t6
104:              slli         t3, t2, 14
                  andi         s4, s1, -1859
106:              and          ra, a4, ra
                  auipc        s7, 187921
                  xor          s0, a2, ra
                  bge          a3, s3, 114f
                  lui          s6, 100774
                  blt          a2, zero, 114f
                  sltu         s2, a2, a2
                  slli         s11, a5, 10
114:              nop
                  andi         s8, a2, 1150
                  srai         t1, a3, 18
                  lw           ra, 4(a2)
                  and          t4, t2, zero
                  xori         a4, a1, -510
                  addi         a2, a2, 28
                  slli         a3, t3, 25
                  sltiu        s7, t1, -1014
                  sll          a1, s5, s0
146:              addi x24, x1, 0
146:              jalr x24, x24, 0
sub_3:            slt          s2, a2, a2
                  addi         a2, a2, -36
                  sw           ra, 4(a2)
                  and          s2, a0, t3
                  ori          tp, sp, -13
                  andi         tp, s11, 1975
                  slti         a4, s4, -1057
                  bge          ra, s5, 14f
                  sltiu        s9, a7, 1687
                  bltu         a0, a0, 11f
                  slti         a6, s4, 275
                  and          t2, t1, gp
                  auipc        s5, 75501
                  ori          s11, s9, 863
                  addi         a6, t6, 733
                  ori          a6, s7, 990
11:               srai         t1, s2, 3
                  blt          t2, s11, 16f
                  addi         ra, t3, -981
14:               bge          s0, a6, 16f
                  sltu         ra, gp, sp
16:               srl          t5, t3, s3
                  sub          tp, ra, s4
                  lw           ra, 4(a2)
                  add          s4, s4, s3
                  xor          t5, s5, gp
                  xor          t3, s9, s8
                  addi         a2, a2, 36
                  addi         gp, s6, 1653
29:               addi x20, x1, 1
29:               jalr x20, x20, 0
sub_6:            nop
                  xori         s1, t2, 1559
                  addi         a2, a2, -44
                  or           t2, a0, tp
                  lui          t0, 675487
                  addi         zero, a0, -671
                  sw           ra, 4(a2)
                  slti         s0, a4, -706
                  la           sp, region_1+1284 #start riscv_load_store_rand_instr_stream_4
                  add          t5, t5, t5
                  sltiu        s11, a2, -1658
                  lb           ra, 19(sp)
                  lbu          t5, -680(sp)
                  nop
                  lbu          t3, 429(sp)
                  sub          a0, gp, s11
                  lui          t6, 132355
                  sb           s6, 186(sp)
                  lb           t0, -397(sp)
                  lb           gp, 343(sp)
                  sb           s6, -393(sp)
                  sb           s10, -1279(sp)
                  and          t3, gp, t0
                  xor          s6, ra, a5
                  sltiu        s11, t4, -405
                  sltu         ra, sp, a5
                  sltu         a5, s1, a6
                  nop
                  auipc        zero, 502007
                  slti         zero, s4, 1512
                  slti         t0, t6, -1838
                  lbu          s0, -866(sp)
                  sll          zero, s3, s11
                  lhu          s2, -322(sp)
                  srai         t3, s5, 4
                  andi         s6, a1, 376
                  addi         s4, t4, 1836
                  sltiu        gp, t6, -1394
                  lui          t4, 78751
                  sh           t1, -206(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a3, region_0+425 #start riscv_load_store_rand_instr_stream_3
                  xor          s5, gp, a6
                  srl          a1, zero, t4
                  lbu          s8, -16(a3)
                  slli         gp, t1, 29
                  sw           s5, 47(a3)
                  xori         s11, a3, 372
                  auipc        zero, 740552
                  slli         s9, s7, 0
                  lui          t6, 295708
                  sltu         t4, sp, s0
                  sltiu        t2, s2, 1572
                  lbu          a6, -42(a3)
                  sll          t4, t2, a2
                  sh           zero, 31(a3)
                  xori         t0, t1, -455
                  xori         a4, t5, -2002
                  sh           s9, 25(a3)
                  or           t6, a2, a5
                  lhu          sp, -13(a3)
                  lbu          a4, 7(a3)
                  lb           s6, 41(a3)
                  lbu          a6, 16(a3)
                  add          s8, a4, t4
                  lhu          t6, -9(a3)
                  lb           sp, 29(a3)
                  lui          a4, 192305
                  srli         a6, a2, 1
                  sltiu        s9, a2, 771
                  lbu          t3, 35(a3)
                  or           sp, ra, s4
                  slt          a4, s7, t3
                  sra          t3, t6, t4
                  srl          sp, zero, t0
                  lb           s9, 40(a3) #end riscv_load_store_rand_instr_stream_3
                  la           t3, region_0+1652 #start riscv_load_store_rand_instr_stream_1
                  xori         t0, t2, -1225
                  slt          gp, gp, s6
                  sb           t5, -29(t3)
                  srai         t6, gp, 11
                  or           s1, a1, s2
                  sh           ra, -26(t3)
                  lbu          gp, -48(t3)
                  sb           zero, -34(t3)
                  srai         a0, s8, 28
                  lbu          t0, -15(t3)
                  and          s5, a6, s7
                  xor          s0, t0, s1
                  and          t5, tp, t2
                  lbu          t0, -1(t3)
                  sw           s9, 4(t3)
                  sltiu        t2, s10, 1356
                  auipc        s7, 597689
                  lhu          s1, 48(t3)
                  sw           s5, -44(t3)
                  slt          s5, t5, t1
                  lbu          t2, -53(t3)
                  lb           a4, -63(t3)
                  srli         t6, s7, 17
                  xori         s11, t5, 916
                  sltu         s11, s1, a1
                  slti         t4, zero, -571
                  ori          s1, a7, -1716
                  sb           s9, 43(t3)
                  and          a6, s8, a4
                  slli         s4, tp, 19
                  sb           s5, 42(t3)
                  lb           a1, 9(t3)
                  sltiu        a6, t1, -971
                  or           a4, a0, s11
                  lh           s8, -58(t3)
                  sra          t0, s7, s3
                  lbu          s0, 43(t3)
                  lui          s2, 467356
                  lhu          s0, 8(t3)
                  andi         s11, s5, 444
                  and          s6, s4, a1
                  lb           t0, 17(t3)
                  lbu          tp, -37(t3)
                  slt          sp, a1, a5
                  lb           a5, 46(t3)
                  xori         gp, ra, 856
                  sb           t3, -11(t3)
                  sb           a3, 21(t3)
                  andi         ra, s4, 921
                  lui          s1, 540050
                  lb           s8, -56(t3)
                  sra          tp, a2, s1
                  lb           zero, 57(t3)
                  lb           s1, 22(t3)
                  lb           s6, -63(t3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+440 #start riscv_load_store_rand_instr_stream_0
                  sra          t1, s11, t4
                  sub          a1, zero, tp
                  andi         s1, t4, -1527
                  slt          a3, s4, tp
                  lhu          gp, 514(sp)
                  add          a0, a3, a0
                  or           s11, a7, a7
                  srl          ra, s6, a7
                  srai         s0, tp, 28
                  slli         a6, s6, 28
                  or           a6, s10, t4
                  srl          zero, s10, t2
                  lb           t4, 906(sp)
                  sltu         a0, t6, a6
                  lb           t5, -337(sp)
                  sb           s10, 1181(sp)
                  and          s9, zero, t6
                  lh           s1, 710(sp)
                  addi         s0, t4, -181
                  lh           t6, 832(sp)
                  addi         s0, s6, 1945
                  lbu          s7, 31(sp)
                  lb           gp, -353(sp)
                  lbu          s9, -11(sp)
                  addi         gp, s10, -706
                  sb           sp, 1282(sp)
                  lb           s2, 560(sp)
                  sb           zero, 1488(sp)
                  slli         gp, tp, 31
                  add          t6, s3, s7
                  lb           tp, 1289(sp)
                  sltiu        s0, s8, -1197
                  slti         s0, t2, 31
                  addi         a6, s3, -1332
                  lbu          t3, -291(sp)
                  lw           s5, 508(sp)
                  xori         a5, s0, -876
                  lbu          a4, 1181(sp)
                  lbu          a0, -161(sp)
                  lw           s7, -400(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+1955 #start riscv_load_store_rand_instr_stream_2
                  lbu          a6, 16(t1)
                  and          s11, ra, a2
                  add          s0, a5, t0
                  sb           a1, -4(t1)
                  sb           gp, 2(t1)
                  andi         s4, s10, -589
                  sb           t1, 10(t1)
                  srl          zero, t6, s0
                  andi         a1, a3, -925
                  lw           ra, 1(t1)
                  lh           s11, -1(t1)
                  xori         t5, t1, -1440
                  sb           t2, 9(t1)
                  lhu          s11, -11(t1)
                  sll          a4, sp, s2
                  nop
                  sltu         a3, a7, s3
                  lbu          s8, 16(t1)
                  lb           s5, 12(t1)
                  slti         a0, t0, -1758
                  srai         a6, a5, 24
                  ori          t3, s9, 546
                  lhu          s9, -1(t1)
                  nop
                  sb           s3, 0(t1)
                  lb           s5, 4(t1)
                  sltiu        t4, a7, 1626
                  sb           s11, -11(t1)
                  sh           t0, -11(t1)
                  slli         t0, s4, 9
                  sw           zero, 13(t1)
                  andi         s5, s10, 1236
                  slt          s4, a5, a7
                  lb           t5, 1(t1)
                  nop
                  srli         ra, a0, 2
                  sb           a1, -12(t1)
                  sb           a0, 14(t1)
                  lh           s1, -13(t1)
                  srai         a1, s5, 27
                  sb           ra, -2(t1)
                  sra          a5, ra, s4
                  sb           gp, -12(t1)
                  sra          a3, s8, s1
                  sb           zero, 6(t1)
                  sb           s9, 11(t1)
                  sll          s1, a3, s11
                  slt          a5, ra, s6
                  srl          tp, a5, s0
                  sb           t6, 10(t1)
                  lbu          a3, 15(t1)
                  srli         t5, ra, 0
                  sb           t4, 1(t1)
                  lbu          s7, 8(t1)
                  lw           t6, 9(t1) #end riscv_load_store_rand_instr_stream_2
                  sltiu        t2, t5, -1294
                  srai         t1, zero, 23
                  bne          a6, t2, 5f
                  slti         t6, s10, 173
                  beq          ra, s8, 11f
5:                ori          t4, a4, -1870
                  slti         a7, a1, 906
                  xor          s9, t4, a7
                  auipc        a5, 675946
                  auipc        s0, 958238
                  slli         a1, tp, 2
11:               andi         tp, t6, 1664
                  bne          a6, t1, 31f
                  andi         a5, s10, 1405
                  srli         a1, zero, 9
                  nop
                  lui          s6, 860973
                  xor          s11, a0, s9
                  nop
                  blt          a6, a7, 31f
                  bgeu         s3, a2, 35f
                  nop
                  sub          sp, t0, t6
                  slli         s6, s0, 21
                  xor          a3, a6, a5
                  srai         s1, t0, 19
                  bne          a1, s3, 37f
                  auipc        a7, 95032
                  addi         s9, s7, -1646
                  bge          a6, s7, 42f
                  or           s9, s10, t4
31:               srl          s2, t1, s2
                  blt          s11, s1, 38f
                  sra          a7, s7, t3
                  add          zero, a6, a7
35:               bne          gp, s3, 50f
                  bltu         ra, a3, 49f
37:               sub          a0, s7, a3
38:               and          s7, gp, tp
                  nop
                  srl          s1, gp, tp
                  srai         s4, zero, 27
42:               sra          a1, s11, sp
                  auipc        s7, 460614
                  xor          a4, s0, s1
                  or           t2, a7, ra
                  bltu         s6, t0, 57f
                  blt          s7, a3, 65f
                  slti         s9, t4, 1691
49:               beq          a5, s11, 54f
50:               sra          a6, s10, s2
                  sltiu        a1, s9, 592
                  sll          gp, t0, t2
                  sltu         t0, t5, s11
54:               bltu         s4, t6, 64f
                  sra          s0, a1, t4
                  andi         s2, t0, 1866
57:               srli         s1, t6, 22
                  bltu         ra, s3, 68f
                  and          t4, s8, a2
                  slt          tp, s5, s7
                  sltiu        t3, s1, 579
                  bgeu         s2, t6, 71f
                  xori         t2, t4, 789
64:               add          t1, zero, t4
65:               slt          s4, s0, s3
                  beq          s0, a2, 67f
67:               bltu         s10, t5, 80f
68:               bgeu         t2, tp, 85f
                  andi         s7, s8, 1991
                  bltu         a0, s10, 79f
71:               auipc        s2, 78825
                  nop
                  add          a1, s8, s2
                  beq          s9, a0, 83f
                  sll          a7, s4, s10
                  bne          t4, s4, 89f
                  xor          t3, t0, a3
                  slli         ra, s5, 14
79:               slli         s4, s9, 30
80:               bgeu         s0, a7, 84f
                  sltiu        s11, a0, 1682
                  sltiu        s0, t1, 886
83:               srli         t1, sp, 23
84:               sub          s2, t1, s4
85:               slt          gp, a1, s10
                  sll          s1, sp, t3
                  bltu         t0, a3, 96f
                  bge          a2, tp, 102f
89:               bne          a0, t5, 107f
                  slt          s9, a0, s6
                  srai         s11, a2, 4
                  bne          a1, s6, 97f
                  sltiu        gp, s3, 1484
                  sll          t5, a4, t6
                  nop
96:               slli         a7, s10, 0
97:               sltu         t3, sp, s10
                  srl          t2, a0, a5
                  lui          s1, 31669
                  auipc        s6, 234024
                  addi         s1, s4, -997
102:              sltiu        s1, zero, -1781
                  bgeu         s0, s9, 117f
                  auipc        t1, 538102
                  slli         s7, sp, 7
                  or           s4, t1, s3
107:              srli         s11, a4, 17
                  sltiu        ra, a6, 180
                  sltu         a7, s1, t1
                  srl          t5, t1, a2
                  bltu         a3, a7, 113f
                  sra          s11, s11, s4
113:              addi         a4, s2, -619
                  srli         t6, s8, 27
                  sub          s9, s8, s6
                  or           s7, s11, a7
117:              xor          t0, a7, s6
                  sltiu        s5, s7, 341
                  sub          a3, t6, a0
                  xori         t3, s8, -565
                  sll          s9, a2, t1
                  bne          s6, s10, 127f
                  auipc        t3, 362502
                  srai         a1, gp, 26
                  auipc        t5, 623409
                  beq          s11, s6, 132f
127:              addi         s7, t3, -464
                  nop
                  sltu         s4, a1, s11
                  sltu         s8, gp, sp
                  or           t2, a7, t5
132:              xori         s2, t0, -1953
                  or           a0, t3, ra
                  srli         a6, sp, 22
                  andi         t4, s4, 209
                  bge          zero, s9, 153f
                  xor          s1, s7, s8
                  xor          t6, t5, t6
                  slti         s7, s1, -50
                  bgeu         ra, a7, 155f
                  sll          s8, a5, a0
                  sltu         s8, s0, a7
                  sra          s6, s5, s2
                  xori         s2, s1, 1402
                  addi         tp, s4, 287
                  nop
                  lui          zero, 560725
                  blt          ra, a1, 159f
                  xori         s2, s8, -452
                  ori          s8, a6, -764
                  addi         t2, t1, 1515
                  sltu         s9, a5, t0
153:              blt          s0, s0, 162f
                  auipc        t5, 556955
155:              sltu         s8, s0, s11
                  sltu         s9, s1, gp
                  andi         a4, a4, 1797
                  bge          a4, a5, 177f
159:              srl          a7, s2, s10
                  sra          a6, ra, s2
                  lui          a0, 979471
162:              srai         a0, s11, 28
                  sub          s0, tp, t5
                  nop
                  or           s1, a7, sp
                  slt          t6, t2, sp
                  slli         a7, a7, 5
                  bne          s11, t3, 181f
                  sra          zero, s4, s0
                  srai         s9, a5, 6
                  sll          tp, s1, s8
                  nop
                  blt          a1, s0, 184f
                  srli         t6, ra, 10
                  and          t6, s6, a5
                  auipc        t6, 785495
177:              and          s7, zero, s1
                  sub          s1, a6, s2
                  srl          s1, a7, s8
                  sltiu        s6, a2, 1527
181:              nop
                  srl          s4, t3, a5
                  sra          s7, t3, s6
184:              nop
                  add          a5, s6, t5
                  sub          s8, tp, s8
                  sub          s6, s6, t1
                  sltiu        s11, a1, 162
                  slt          s1, a4, gp
                  srai         t3, s4, 6
                  nop
                  xor          s4, tp, a3
                  sll          t4, s2, a6
                  beq          t1, s10, 199f
                  slli         a5, s0, 26
                  slti         t3, s0, 1640
                  sltiu        t1, s11, -582
                  sra          sp, t4, a7
199:              bltu         s0, s4, 209f
                  bne          a5, s4, 218f
                  bgeu         s6, a0, 213f
                  bltu         s10, a0, 211f
                  slli         s1, a1, 23
                  srli         a5, t6, 15
                  srai         s8, gp, 7
                  xor          t4, t1, a1
                  srli         s4, ra, 15
                  nop
209:              ori          t5, s3, -1267
                  lui          a0, 541708
211:              sra          a6, a3, t1
                  sltiu        a3, a0, -1292
213:              beq          a1, gp, 228f
                  blt          s10, sp, 221f
                  slti         s7, a1, 1092
                  beq          s5, t4, 221f
                  slli         t0, a2, 13
218:              xor          ra, s10, t6
                  xor          t5, a2, s1
                  auipc        a0, 697156
221:              sra          a0, s4, s10
                  bltu         a2, sp, 231f
                  xor          ra, s3, sp
                  auipc        s9, 513495
                  bne          t5, s9, 228f
                  slli         a7, t0, 2
                  sltiu        t1, gp, -1912
228:              ori          t4, s4, 784
                  slt          t3, t5, ra
                  and          a5, a6, s3
231:              andi         s1, s1, -1746
                  xori         a3, s4, -839
                  xor          t2, a6, t2
                  srai         a1, t4, 25
                  and          sp, a7, a1
                  or           t2, s2, zero
                  and          t0, sp, a6
                  addi         s8, a0, -1854
                  and          t3, zero, s5
                  sub          a6, t6, t5
                  beq          s3, s0, 246f
                  sltiu        zero, a3, -1147
                  sra          gp, a1, t2
                  or           s5, sp, a0
                  slli         s11, t3, 25
246:              slti         s0, t1, 394
                  and          t2, gp, s0
                  xori         s9, s7, -1061
                  srl          s11, t0, s4
                  sub          a0, a1, ra
                  bne          a1, s3, 269f
                  bltu         s8, s11, 265f
                  add          a5, a5, t2
                  bne          s6, s5, 264f
                  andi         t4, t0, -273
                  srli         zero, a5, 18
                  bgeu         sp, s10, 266f
                  beq          gp, a1, 259f
259:              slli         t0, a3, 6
                  blt          s1, a4, 273f
                  bge          sp, s9, 265f
                  slli         s1, gp, 23
                  bltu         zero, a6, 265f
264:              addi         t0, s10, 1461
265:              andi         zero, s7, -1089
266:              lui          t5, 45269
                  sltu         s1, s9, s6
                  sra          t3, a0, t2
269:              ori          t4, s1, 1796
                  srli         s5, s0, 10
                  sra          t5, s11, ra
                  lui          s1, 162547
273:              sltu         a3, s6, s10
                  nop
                  sll          s5, t4, s8
                  addi         s0, s4, -1707
                  sub          a3, t2, a6
                  ori          t1, s5, -485
                  xor          s2, a4, a0
                  bgeu         s10, a1, 293f
                  srai         s1, tp, 14
                  beq          a4, tp, 296f
                  xor          t4, a7, zero
                  bge          a4, s10, 298f
                  blt          tp, a2, 295f
                  auipc        s4, 179966
                  blt          t5, a3, 293f
                  bltu         s10, s1, 290f
                  xori         t0, a2, -2025
290:              auipc        s7, 859323
                  sra          s7, t5, s8
                  sll          s0, a6, t0
293:              srl          tp, t5, s10
                  srai         t3, t6, 8
295:              srli         a4, t4, 14
296:              slti         t4, s5, 1544
                  sra          tp, a1, a1
298:              sub          tp, s0, s5
                  andi         a6, tp, 1123
                  auipc        t3, 793203
                  bge          a4, s10, 312f
                  addi         t2, s11, 201
                  srl          a1, zero, t2
                  slti         sp, a7, -297
                  or           a3, t1, a4
                  srl          a1, a3, s3
                  slti         t6, a5, -216
                  bgeu         a6, t1, 320f
                  blt          a6, s9, 314f
                  slli         s2, s2, 6
                  xori         t4, t0, -877
312:              andi         t1, s6, -1553
                  ori          t6, gp, 1425
314:              and          a0, ra, sp
                  sltiu        gp, s6, -918
                  srli         s0, s4, 22
                  slt          s9, t6, a6
                  blt          s10, zero, 329f
                  ori          t1, s6, -947
320:              slli         zero, gp, 13
                  slt          t3, a3, sp
                  blt          a7, t1, 339f
                  bltu         ra, t2, 337f
                  srl          s2, sp, tp
                  addi         gp, zero, 1969
                  add          s8, s3, a5
                  srl          s7, s9, t2
                  add          a5, t2, gp
329:              xor          s8, s1, s11
                  or           a0, t2, a7
                  srl          t2, t4, s0
                  ori          a7, s8, 2001
                  blt          a4, gp, 351f
                  nop
                  blt          s1, a0, 342f
                  bgeu         t2, a1, 349f
337:              nop
                  bge          a0, s8, 353f
339:              bne          s3, tp, 353f
                  bgeu         s4, ra, 353f
                  andi         sp, s10, 1559
342:              sltiu        t6, a1, -1616
                  srli         s6, s11, 17
                  lui          s8, 340848
                  srli         t1, gp, 14
                  sra          a1, a6, a5
                  lui          ra, 564830
                  bltu         s2, t4, 367f
349:              andi         gp, s2, 174
                  srai         s6, t0, 30
351:              sra          zero, tp, s8
                  lui          s1, 4258
353:              sltiu        a5, sp, 1201
                  slli         t3, s10, 24
                  sra          s0, s5, gp
                  srli         t3, sp, 10
                  sltiu        s0, s7, 445
                  lui          zero, 466919
                  addi         ra, s9, -629
                  and          t1, sp, s11
                  beq          s9, a5, 365f
                  slti         t6, a3, -291
                  add          gp, t6, s1
                  srli         s5, t5, 11
365:              andi         s0, s5, 1488
                  slli         t1, t1, 31
367:              blt          zero, a3, 376f
                  bne          s1, a3, 373f
                  add          a6, t1, t5
                  addi         sp, s4, -1901
                  sll          s7, ra, a4
                  ori          gp, a6, -723
373:              or           a6, a4, s8
                  blt          zero, a3, 383f
                  add          tp, s7, a1
376:              srl          t4, a2, gp
                  or           ra, sp, gp
                  bgeu         a2, t3, 388f
                  slti         t6, s1, -487
                  lui          sp, 746799
                  blt          a0, sp, 396f
                  bne          s11, a0, 400f
383:              srl          s6, s1, a2
                  bltu         s11, a1, 397f
                  sltiu        s8, s3, 1473
                  sra          s9, s6, t0
                  lui          t5, 904558
388:              bgeu         s8, t3, 391f
                  addi         a0, s5, 723
                  sltu         tp, zero, s7
391:              or           a3, t6, tp
                  addi         s1, s11, -1805
                  srli         s9, a0, 25
                  bne          ra, s3, 407f
                  slti         s4, a2, 1389
396:              sll          t4, s7, s4
397:              nop
                  sltu         gp, s7, t1
                  addi         s1, t2, -1828
400:              blt          s10, zero, 409f
                  sltiu        sp, ra, -13
                  nop
                  bge          zero, s8, 404f
404:              or           s2, s7, t6
                  and          s4, sp, s9
                  srli         t5, s6, 14
407:              srai         zero, s4, 31
                  sltiu        ra, s8, -1539
409:              add          a5, s4, a4
                  andi         s9, s8, 1054
                  sra          s1, s10, s8
                  srl          a3, sp, s6
                  bne          a7, s8, 418f
                  bge          a4, t1, 423f
                  lui          t5, 33096
                  sll          s1, a3, a2
                  sltiu        s11, a3, -1598
418:              andi         a1, a7, 1601
                  bltu         t5, a1, 431f
                  xori         a1, ra, 1090
                  auipc        a6, 692572
                  blt          a6, zero, 440f
423:              beq          s7, t1, 425f
                  bltu         t4, s3, 434f
425:              addi         a4, t0, -120
                  slli         t4, s5, 1
                  bne          a3, a3, 432f
                  beq          sp, t2, 432f
                  slti         t5, t5, -294
                  bne          a7, a5, 436f
431:              ori          s6, sp, -938
432:              lui          s0, 731925
                  xori         s1, s6, -1236
434:              and          s2, s2, a7
                  ori          s2, gp, -441
436:              srli         sp, s5, 5
                  xori         tp, t0, 967
                  add          t6, ra, s1
                  blt          a5, a1, 444f
440:              addi         tp, a5, 55
                  beq          a0, s4, 446f
                  slli         zero, a0, 15
                  and          ra, s6, a5
444:              bltu         t3, s6, 453f
                  lui          sp, 1013407
446:              andi         sp, t4, -140
                  slli         gp, t0, 21
                  beq          tp, gp, 461f
                  andi         s8, gp, 1878
                  add          a6, zero, s2
                  add          gp, a7, s6
                  addi         t6, a0, 260
453:              sra          s0, gp, t1
                  sll          s6, t1, a0
                  andi         s4, t6, -208
                  add          a0, t2, a3
                  andi         a6, a3, -77
                  bge          zero, tp, 471f
                  sub          s2, s8, a3
                  bne          s4, t4, 469f
461:              bge          s5, a3, 462f
462:              or           s1, t2, a4
                  sra          a6, s9, s2
                  and          s4, s10, s3
                  auipc        s1, 898333
                  sll          s4, a2, s1
                  xori         t1, s2, -527
                  blt          s3, s3, 483f
469:              ori          a7, a7, 438
                  srl          s7, s6, t5
471:              sub          a4, sp, a0
                  ori          ra, ra, -573
                  srl          zero, s11, a2
                  srl          s1, s8, t6
                  beq          a4, s5, 488f
                  or           t3, s1, s8
                  sltu         a5, s9, a6
                  sub          a3, a5, s2
                  ori          a3, s7, -1724
                  auipc        a0, 860198
                  bne          a7, t1, 494f
                  xori         s7, sp, -1157
483:              sltu         a0, s2, a2
                  blt          t3, a7, 501f
                  sltiu        sp, t1, 1632
                  andi         sp, t0, 925
                  nop
488:              or           s11, t6, s0
                  lui          a6, 342710
                  or           a4, s0, ra
                  blt          s4, tp, 501f
                  sub          t5, t4, a2
                  auipc        s5, 214099
494:              lui          s8, 279691
                  srl          s2, zero, a7
                  sltiu        sp, t5, -1816
                  nop
                  srai         a0, a4, 6
                  slti         t5, s1, -432
                  xor          t0, a2, s8
501:              slli         ra, a2, 11
                  srli         gp, a7, 22
                  sll          gp, s7, sp
                  addi         t1, t0, 847
                  sltiu        s7, t5, 468
                  addi         sp, t3, 194
                  slt          s7, a2, sp
                  srli         a5, a6, 1
                  srl          s5, t6, t3
                  sltiu        t4, t5, -1732
                  xor          a5, s7, a0
                  lui          t3, 472918
                  auipc        t3, 814444
                  andi         s6, s10, -2044
                  addi         t6, t0, 749
                  xori         s4, s6, 217
                  sll          a7, s4, t5
                  andi         tp, a2, -1526
                  slti         t3, a4, 632
                  or           tp, ra, s11
                  slli         t5, t5, 4
                  sra          a6, s6, ra
                  bgeu         a7, a6, 534f
                  sra          a7, a4, s8
                  xori         t0, s0, -1302
                  sll          sp, s1, tp
                  or           s2, s11, t6
                  beq          gp, sp, 542f
                  slli         s6, a5, 21
                  sltiu        s8, a6, -1728
                  auipc        s4, 65202
                  addi         s5, a7, -286
                  srli         s4, t2, 2
534:              sltu         t2, a2, a7
                  blt          a4, a5, 544f
                  and          s4, s7, s6
                  nop
                  auipc        t6, 637030
                  srai         gp, t0, 14
                  sltu         t4, s9, t6
                  lui          tp, 93944
542:              sra          s11, ra, s3
                  lui          a3, 402160
544:              sll          gp, tp, s0
                  beq          s3, t0, 564f
                  bltu         a4, t1, 557f
                  bgeu         t3, s1, 554f
                  addi         s5, t0, 819
                  add          s7, s3, a1
                  nop
                  sltu         s6, zero, t0
                  bltu         t0, t5, 561f
                  addi         a1, t4, 1213
554:              ori          t1, t5, 1882
                  or           s4, a6, s8
                  beq          t6, sp, 559f
557:              auipc        t6, 445101
                  blt          s4, a2, 576f
559:              beq          s10, s11, 574f
                  slli         a0, a1, 3
561:              xor          s0, s0, s11
                  sll          t1, s5, s3
                  blt          s1, s6, 577f
564:              bge          s5, tp, 577f
                  sra          a5, a4, s11
                  slti         s9, t4, 883
                  bltu         a7, t4, 573f
                  sltu         t3, s7, t3
                  beq          a4, t3, 573f
                  ori          s11, s2, 1657
                  bge          s11, s8, 586f
                  blt          a0, s1, 574f
573:              and          a6, t2, sp
574:              sub          s0, s1, s5
                  xor          t0, t2, tp
576:              sra          gp, s5, s3
577:              xori         s8, s6, 1029
                  add          t1, s1, s4
                  add          s2, a3, t3
                  beq          s10, s9, 595f
                  srl          a5, t2, t1
                  auipc        a3, 201309
                  beq          s9, s9, 597f
                  lui          zero, 932826
                  slti         a6, s9, 628
586:              srli         t3, ra, 2
                  sltu         t3, zero, sp
                  nop
                  lui          t0, 840539
                  srai         a7, a1, 10
                  nop
                  bgeu         a2, s2, 603f
                  xori         s8, t2, 2019
                  srl          t4, s6, s10
595:              slli         s9, s10, 29
                  srl          s2, t2, a2
597:              beq          a7, t1, 600f
                  bltu         s7, t2, 603f
                  slt          tp, t0, sp
600:              sra          a1, s10, s7
                  and          s8, s5, t0
                  and          t0, t4, t3
603:              and          t3, s9, s10
                  xor          a0, a0, t4
                  srli         s1, s3, 12
                  lui          s8, 607665
                  lui          s9, 120636
                  srli         t1, zero, 21
                  slt          s5, a6, a0
                  bltu         a6, s3, 622f
                  nop
                  slt          s6, t2, gp
                  srli         t1, s6, 13
                  xori         t3, t6, 333
                  ori          t6, s7, 61
                  slti         t1, s5, 774
                  blt          s1, s2, 626f
                  xori         gp, ra, 1005
                  sub          s7, s6, s11
                  sltu         a7, s3, zero
                  slli         s5, ra, 17
622:              slti         s11, a3, -244
                  sub          a1, t0, a0
                  auipc        t0, 258611
                  blt          t4, a4, 638f
626:              bltu         s4, zero, 645f
                  and          s9, ra, s6
                  srl          gp, s9, sp
                  auipc        s1, 464010
                  srl          t5, a6, a6
                  slt          a6, t2, t0
                  auipc        a0, 909148
                  nop
                  sub          s2, a6, s10
                  srli         zero, s0, 8
                  slt          sp, s8, s1
                  sub          tp, ra, t2
638:              blt          a6, a1, 648f
                  or           a4, t0, t1
                  bge          s4, s7, 657f
                  bgeu         t4, zero, 646f
                  slt          s8, a0, t3
                  sltiu        s4, a2, -1163
                  sltu         t4, t2, s11
645:              or           a3, t3, a3
646:              bge          s3, zero, 664f
                  or           s5, sp, t2
648:              xor          a4, s4, s9
                  xor          s5, s1, ra
                  bne          s3, s0, 668f
                  lui          gp, 412409
                  blt          t3, a7, 666f
                  srl          t6, t5, s8
                  slli         s7, a7, 22
                  or           s0, s7, s11
                  or           a7, ra, s3
657:              and          a7, a7, a6
                  sltu         t2, t5, a3
                  srli         s5, s2, 19
                  srai         gp, s5, 24
                  ori          s0, sp, -1663
                  sra          t6, t5, a0
                  slli         ra, s3, 31
664:              sub          tp, s7, s2
                  bgeu         t6, sp, 670f
666:              slli         ra, s8, 5
                  ori          a1, a1, 520
668:              xor          a3, a6, a2
                  auipc        s9, 264469
670:              xori         s0, a5, 2013
                  blt          s3, t0, 678f
                  bge          t4, t1, 685f
                  and          ra, t2, s4
                  bltu         s0, a5, 684f
                  sub          ra, a0, a6
                  sub          a0, sp, s10
                  addi         s9, a0, -500
678:              bge          zero, a6, 679f
679:              bge          a4, s2, 688f
                  auipc        s5, 794804
                  bgeu         a6, s9, 694f
                  and          s6, s5, s6
                  lui          a0, 714710
684:              bne          tp, a1, 694f
685:              sll          t6, s10, t3
                  lui          a0, 889478
                  srai         tp, a0, 22
688:              andi         zero, a3, 2016
                  andi         t2, a7, 886
                  blt          zero, s3, 694f
                  xor          s9, t3, a3
                  addi         ra, s11, 585
                  slli         s11, s6, 0
694:              srl          t2, sp, zero
                  xori         s9, a4, 624
                  add          gp, s3, s11
                  lw           ra, 4(a2)
                  nop
                  sltu         s2, s1, zero
                  sra          a5, a6, a3
                  addi         a2, a2, 44
                  xor          t1, t4, s0
                  srai         s11, s11, 1
                  slt          t1, a2, a6
                  xori         t1, s7, -240
                  sra          zero, s9, s2
935:              addi x25, x1, 0
935:              jalr x25, x25, 0
sub_4:            add          s1, s3, s3
                  sub          s9, t6, a0
                  addi         a2, a2, -44
                  sw           ra, 4(a2)
                  lui          tp, 71214
                  xor          a1, a3, s7
                  add          s2, gp, s7
                  auipc        t3, 503421
                  and          s8, s8, s9
                  srli         s2, t5, 23
                  addi         a7, t4, -1801
                  sra          s0, a7, s11
                  lui          a7, 964240
                  bne          s0, s5, 7f
                  addi         zero, a5, 85
7:                sub          tp, a1, t5
                  add          zero, a1, t3
                  lui          t0, 440452
                  and          a1, t1, s1
                  beq          s6, t0, 23f
                  bne          zero, s5, 24f
                  slti         s9, a5, -1915
                  xori         t3, a1, -147
                  sltu         ra, s9, a3
                  sub          s9, s10, ra
                  ori          t2, a3, -1507
                  srli         s4, s3, 6
                  srli         a3, s7, 17
                  bge          s9, s1, 31f
                  bltu         a7, t1, 27f
                  slt          t4, s7, a2
23:               bgeu         s6, t6, 33f
24:               srli         s4, gp, 30
                  srl          a4, a1, t4
                  sll          s4, a2, s7
27:               ori          s9, ra, -1850
                  xori         a5, a0, -1077
                  beq          a6, t5, 32f
                  bltu         s11, s1, 40f
31:               lui          tp, 147794
32:               addi         a6, s11, -1360
33:               sub          a4, s4, s9
                  auipc        a5, 130289
                  beq          a6, a1, 38f
                  blt          s1, s1, 49f
                  blt          t5, zero, 57f
38:               beq          a0, s0, 39f
39:               srli         s11, a7, 3
40:               srai         t0, a5, 21
                  xor          gp, a4, s8
                  andi         t2, s0, -1135
                  auipc        t6, 396591
                  bne          s1, s1, 48f
                  slli         t3, a3, 30
                  bge          t2, t5, 59f
                  srli         s9, a4, 15
48:               blt          a7, tp, 64f
49:               addi         t1, a3, 608
                  add          t4, a3, gp
                  beq          s11, s5, 64f
                  andi         t3, a3, -350
                  nop
                  or           a3, t1, ra
                  sub          a6, s0, s7
                  bne          a0, a1, 68f
57:               blt          a2, t2, 65f
                  add          t1, gp, tp
59:               bgeu         ra, t0, 68f
                  ori          sp, s0, -1163
                  and          gp, gp, a4
                  slli         t1, s1, 2
                  sltu         s7, a5, a4
64:               andi         gp, s10, -1444
65:               srli         a0, s3, 18
                  sltu         a4, s10, t3
                  auipc        a6, 337350
68:               slti         s6, s4, 564
                  sll          s5, s0, sp
                  lw           ra, 4(a2)
                  sltu         t4, s0, s3
                  sra          tp, a5, a3
                  addi         a2, a2, 44
                  ori          s6, s0, 1276
                  slt          s2, a2, a1
84:               addi x10, x1, 1
84:               jalr x10, x10, 0
sub_8:            xori         zero, s9, 1564
                  lui          tp, 173806
                  ori          a1, s10, 1462
                  sub          s1, s11, t1
                  andi         t1, s2, -1396
                  sub          s4, s6, t1
                  bltu         gp, a1, sub_8_stack_p
sub_8_stack_p:    addi         a2, a2, -16
                  sw           ra, 4(a2)
                  and          t0, s1, s7
                  add          a5, t1, s2
                  andi         a7, a2, -128
                  sltu         t1, s6, s6
                  la           s7, region_0+1306 #start riscv_load_store_rand_instr_stream_1
                  xor          a4, s0, a1
                  lui          s8, 202958
                  add          s4, a6, s8
                  xori         t6, t0, 150
                  addi         tp, t3, 934
                  lbu          t6, 1(s7)
                  sub          t0, s8, a1
                  andi         t3, a6, 1064
                  andi         a4, s1, 1053
                  sb           s9, 14(s7)
                  lh           t3, -8(s7)
                  addi         t2, t0, 390
                  sltiu        t4, a5, -799
                  ori          a7, s10, 904
                  lw           t4, 10(s7)
                  lb           s8, 15(s7)
                  auipc        t2, 726007
                  sb           a2, 13(s7)
                  or           a5, s10, s0
                  sub          tp, s3, tp
                  slti         t1, s5, 1644
                  slli         t0, a1, 30
                  lh           s8, -10(s7)
                  xori         a6, s9, -1640
                  sb           zero, 10(s7)
                  slt          s1, t2, tp
                  addi         a7, s8, -1876
                  sb           t0, -3(s7)
                  xori         s4, s2, -1572
                  auipc        t6, 834152
                  lbu          t2, -13(s7)
                  lbu          zero, 6(s7)
                  slt          a3, s11, s5
                  lw           a6, 10(s7)
                  sb           s10, -8(s7) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_0+1504 #start riscv_load_store_rand_instr_stream_2
                  sb           s8, -507(s2)
                  andi         s11, s3, -1789
                  srai         a1, gp, 15
                  srl          ra, s11, ra
                  xori         tp, s7, 562
                  addi         t1, a1, -758
                  slt          s9, s3, t1
                  lb           s6, -207(s2)
                  add          s0, sp, s6
                  lbu          ra, -788(s2)
                  slli         a6, s9, 9
                  srl          a7, s2, s2
                  slt          t0, a7, t4
                  slti         a7, t5, 1314
                  or           a0, s2, a5
                  sub          a7, a1, a3
                  sltu         t2, t6, t3
                  lb           t3, -1334(s2)
                  nop
                  sll          a5, tp, t0
                  add          s9, s4, a2
                  lhu          ra, -1064(s2)
                  lbu          a3, -567(s2)
                  nop
                  sb           sp, -699(s2)
                  lw           ra, -172(s2)
                  sb           s0, -560(s2)
                  sub          s8, tp, t3
                  nop
                  ori          a6, gp, 19
                  sb           a5, 324(s2)
                  slti         a1, s10, -1810
                  sltiu        s0, a2, 1042
                  xor          s0, t5, a5
                  and          s9, t6, zero
                  xor          tp, ra, a0
                  srl          a4, s9, s4
                  sb           s7, -445(s2)
                  or           zero, s8, s7
                  sb           t5, -1076(s2)
                  lb           t2, -435(s2) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_0+564 #start riscv_load_store_rand_instr_stream_3
                  lb           gp, 1167(s5)
                  lbu          t3, 697(s5)
                  lh           ra, 552(s5)
                  lw           sp, -396(s5)
                  nop
                  lh           s6, 208(s5)
                  addi         t4, tp, 1735
                  and          s4, a4, tp
                  sb           sp, -559(s5)
                  sb           a7, -286(s5)
                  sb           zero, -179(s5)
                  lh           a7, 590(s5)
                  lb           gp, 1155(s5)
                  auipc        s6, 80629
                  srai         a1, t5, 8
                  sltu         t4, t3, a7
                  lbu          gp, 1243(s5)
                  lw           zero, 772(s5)
                  lhu          sp, 284(s5)
                  lbu          a5, 1289(s5)
                  lbu          t6, -479(s5)
                  srli         a0, a5, 28
                  lb           t2, 340(s5)
                  slt          a0, s11, s2
                  sub          t1, a7, s0
                  lb           t6, 405(s5)
                  lb           t2, -101(s5)
                  lh           gp, -264(s5)
                  andi         s4, a5, -483
                  lbu          t4, 794(s5)
                  srli         zero, t6, 11
                  sb           t6, 940(s5)
                  auipc        a1, 940208
                  sb           gp, -283(s5)
                  or           zero, t2, a2
                  andi         s11, s0, -1177
                  sh           a5, 308(s5)
                  nop
                  sb           s11, 1101(s5) #end riscv_load_store_rand_instr_stream_3
                  xori         t6, a5, -1201
                  srli         sp, zero, 27
                  bge          a7, a2, 22f
                  and          s8, tp, s3
                  lui          s5, 632299
                  xori         a1, sp, 731
                  bgeu         a6, a2, 8f
                  slt          a3, a3, s0
8:                bge          s7, s2, 11f
                  sltiu        zero, s10, -1867
                  lui          ra, 254610
11:               srli         s9, s0, 27
                  sub          t4, t3, t6
                  add          t4, s2, a3
                  sltiu        a0, a5, 540
                  xori         s5, s4, -807
                  sltu         s11, s6, s4
                  lui          s8, 588766
                  bgeu         s0, t6, 28f
                  bgeu         s11, a5, 32f
                  add          s8, a7, a6
                  sltu         s0, gp, zero
22:               srai         s4, s11, 4
                  sra          t5, t3, s2
                  slt          t4, s3, a2
                  srli         tp, t5, 1
                  bgeu         s1, s7, 34f
                  bge          a7, a0, 37f
28:               slli         s1, s3, 4
                  auipc        s6, 145565
                  nop
                  bltu         t6, t1, 46f
32:               ori          a7, gp, 1701
                  beq          t4, a6, 48f
34:               xor          s6, s10, t2
                  ori          a4, t4, 70
                  bltu         t0, t0, 45f
37:               addi         ra, a3, -2035
                  slli         a6, a7, 3
                  auipc        t0, 198588
                  and          a4, t2, t2
                  srli         s0, gp, 12
                  and          a4, a3, s11
                  srl          s11, s10, s11
                  sll          a6, t3, tp
45:               and          t0, tp, s6
46:               blt          a1, tp, 53f
                  nop
48:               sra          gp, t2, s9
                  bltu         sp, a2, 66f
                  srl          s4, s10, t6
                  sll          sp, a4, a6
                  addi         s0, t5, -1561
53:               sll          s9, t6, s8
                  ori          t6, s2, 340
                  auipc        a6, 675027
                  sltu         a0, tp, gp
                  sltiu        t4, t2, -46
                  sub          zero, t2, s4
                  bge          a0, s2, 71f
                  bgeu         s11, a0, 78f
                  beq          s9, sp, 81f
                  bltu         a4, zero, 81f
                  nop
                  add          zero, a4, ra
                  nop
66:               xor          s5, s1, t2
                  ori          s2, s8, 1768
                  srl          t1, s9, t1
                  or           s8, s3, s4
                  addi         s2, t0, -889
71:               bgeu         s11, t1, 74f
                  xor          ra, zero, t4
                  xori         s9, s11, 1644
74:               sltu         s4, s2, ra
                  bgeu         s2, zero, 91f
                  sub          a0, s6, a4
                  andi         s7, a2, 271
78:               or           s8, s11, a7
                  srl          tp, s5, s7
                  sub          a5, a2, t6
81:               bgeu         ra, a7, 99f
                  bltu         s2, t2, 95f
                  lui          t6, 747737
                  bge          a7, a4, 97f
                  lui          s4, 433861
                  bgeu         s3, s6, 91f
                  and          s7, tp, t3
                  sra          s9, s0, t1
                  add          ra, s6, t1
                  auipc        s1, 380088
91:               ori          t2, sp, -1803
                  addi         s7, s7, 1346
                  bgeu         t4, gp, 103f
                  bge          t2, t1, 104f
95:               bge          s5, t0, 96f
96:               xor          s7, a0, t6
97:               xor          t4, a1, t0
                  or           s9, sp, zero
99:               lui          ra, 93986
                  xor          s4, zero, t6
                  bne          s8, a3, 114f
                  blt          zero, gp, 104f
103:              slli         s7, a5, 24
104:              srl          s6, a1, s6
                  lui          a1, 481077
                  bltu         s1, s1, 119f
                  beq          a4, sp, 119f
                  beq          a0, a4, 118f
                  blt          sp, t5, 126f
                  srli         t6, gp, 0
                  beq          s3, s8, 114f
                  bltu         s8, t6, 120f
                  srli         t0, s6, 16
114:              ori          s7, t1, 1139
                  srl          s2, t4, t2
                  bge          s0, t0, 136f
                  bltu         ra, t1, 122f
118:              nop
119:              sub          s6, a1, t2
120:              xori         s4, a7, 994
                  sra          tp, zero, tp
122:              slti         gp, sp, 754
                  sub          t3, t2, tp
                  ori          t5, sp, 1169
                  add          t6, zero, s2
126:              xori         s8, gp, 1442
                  nop
                  or           gp, s6, s9
                  lui          tp, 598264
                  add          s1, s11, t6
                  sra          a3, s9, sp
                  addi         s0, s8, -50
                  sub          a7, t1, s8
                  bltu         s3, s8, 144f
                  sltu         t4, t6, s10
136:              bne          a6, a4, 149f
                  andi         t5, t2, -1655
                  blt          s1, t1, 145f
                  sra          t4, a1, s6
                  sra          a5, a4, t0
                  slli         s7, s11, 9
                  and          t0, zero, s4
                  and          t5, a4, sp
144:              sltiu        t4, a1, 1748
145:              bge          a3, zero, 155f
                  srl          t0, s2, a4
                  srl          zero, a1, t1
                  bne          sp, s9, 150f
149:              bge          sp, s8, 168f
150:              bgeu         a4, a0, 162f
                  sra          gp, a6, s6
                  sltiu        tp, tp, -1085
                  bne          s5, s10, 165f
                  bge          a0, t3, 174f
155:              sltu         t4, s2, s6
                  sub          s5, t4, t4
                  beq          s6, s3, 170f
                  lui          s9, 688869
                  xor          sp, t6, zero
                  srl          s4, s11, sp
                  bge          s11, a6, 179f
162:              or           t3, s10, s11
                  srai         a6, gp, 17
                  or           s0, a6, a3
165:              xor          t1, s9, s8
                  blt          sp, s7, 179f
                  and          t6, a6, sp
168:              sltiu        ra, a7, -488
                  add          s2, s7, s1
170:              ori          s2, gp, -723
                  and          s7, s7, a7
                  auipc        s8, 208647
                  sltiu        sp, a4, -96
174:              add          a7, a3, t2
                  ori          a6, s0, -15
                  ori          a6, t6, -917
                  bltu         tp, a1, 187f
                  or           t6, s5, a1
179:              bge          zero, t1, 194f
                  srl          t6, s7, sp
                  xori         t5, a4, 2045
                  nop
                  beq          t4, t0, 196f
                  bltu         s3, a7, 199f
                  ori          s2, s2, 1427
                  slti         s11, gp, -906
187:              srli         s6, a4, 19
                  bne          s0, a7, 204f
                  andi         s2, a0, 1968
                  xor          a4, t5, s4
                  slt          a5, s2, sp
                  blt          a7, s2, 193f
193:              sub          t0, t3, s7
194:              lui          s9, 164264
                  srl          t5, s9, gp
196:              slti         t4, s0, 1797
                  srl          t6, s10, s8
                  sra          s9, s7, t6
199:              xor          a3, t3, s10
                  addi         a4, s8, -1462
                  sltu         s7, t2, t6
                  andi         tp, a7, -88
                  srl          t4, a1, a1
204:              sltu         t5, gp, a3
                  lui          a6, 1032600
                  andi         t4, a2, 465
                  bne          tp, s2, 209f
                  auipc        t2, 229430
209:              auipc        a1, 138956
                  xor          a4, a0, tp
                  ori          t5, t5, -26
                  bltu         tp, a2, 225f
                  nop
                  bgeu         s1, t2, 223f
                  lui          a6, 259639
                  or           s2, s2, s2
                  slli         s7, t6, 27
                  lui          s4, 631290
                  srli         ra, s11, 15
                  slli         gp, s1, 4
                  and          t2, a6, a5
                  srl          t6, a6, s4
223:              sltiu        a5, a5, 2016
                  xor          s0, s6, t2
225:              srl          ra, a6, s10
                  sra          a4, s3, a0
                  andi         s2, a2, -1400
                  addi         s1, t4, 1112
                  and          s0, s9, s1
                  xor          zero, t4, t2
                  sra          zero, a4, a4
                  sltiu        gp, zero, 1148
                  addi         s8, a1, 917
                  sub          s4, a2, gp
                  bgeu         s7, s3, 238f
                  srai         ra, s8, 11
                  ori          s11, s0, 526
238:              auipc        ra, 41779
                  sll          s9, t1, t1
                  slti         a4, s5, 321
                  slti         s0, ra, 1549
                  sub          sp, a2, s10
                  sll          t1, t1, a2
                  blt          a6, t4, 254f
                  lui          s5, 453541
                  srli         s4, t6, 19
                  srai         gp, t1, 27
                  srai         s1, t5, 28
                  blt          a6, s9, 267f
                  bge          a5, s7, 260f
                  auipc        a3, 613687
                  slti         a5, s3, 813
                  sltiu        a7, sp, 670
254:              slli         t3, a5, 6
                  slli         s1, a2, 21
                  sltu         t6, ra, a4
                  sub          t5, t0, t1
                  sub          t3, s6, t6
                  sltu         s11, a3, a2
260:              lui          zero, 47996
                  bgeu         a7, gp, 276f
                  bne          s10, a3, 269f
                  and          a4, s5, t6
                  andi         t5, a3, -341
                  auipc        a0, 608623
                  sra          tp, ra, s0
267:              sub          sp, zero, s4
                  add          t3, s8, a3
269:              bgeu         t3, s8, 279f
                  nop
                  ori          s11, s2, -344
                  sll          s5, s6, a6
                  or           s0, gp, s10
                  la           s7, sub_10
                  auipc        t0, 715003
                  sub          a3, t6, zero
                  addi         s7, s7, -888
                  sub          a5, s10, s8
sub_8_j12:        jalr         ra, s7, 888 #jump sub_8 -> sub_10
                  slt          ra, a7, sp
                  sra          a5, a0, s1
                  bgeu         s10, s1, 275f
275:              bne          t3, a5, 285f
276:              nop
                  andi         sp, s3, 1309
                  and          t2, s5, s3
279:              andi         s5, s5, -160
                  sll          s2, s7, a1
                  srl          t0, sp, sp
                  ori          a5, a5, -1097
                  addi         a1, s5, 1578
                  sltiu        t3, s6, 1862
285:              xor          a3, s0, t4
                  nop
                  sub          gp, t4, t2
                  sub          a6, s4, a4
                  bge          s11, s1, 304f
                  and          s9, s8, s5
                  sub          t5, t1, a4
                  bne          gp, s1, 305f
                  ori          s5, t2, -690
                  sra          gp, s11, zero
                  srli         zero, a2, 3
                  andi         s7, t2, 1976
                  slti         sp, t0, 1302
                  lui          s7, 170641
                  ori          s0, s2, -895
                  lui          s11, 769336
                  bgeu         s0, s7, 319f
                  bne          a2, a7, 319f
                  bne          sp, t6, 315f
304:              andi         s1, s2, 1875
305:              ori          t2, a4, 1419
                  addi         s2, s11, 720
                  ori          tp, t0, -1558
                  srai         a0, s2, 0
                  srl          s11, t6, tp
                  beq          t2, t1, 319f
                  add          s7, s8, sp
                  slti         t0, zero, 102
                  bne          gp, t5, 323f
                  and          a1, a5, sp
315:              bge          s11, gp, 335f
                  addi         a0, s8, -684
                  xor          a7, a0, s3
                  addi         t4, s5, -1028
319:              bne          t6, a6, 332f
                  xori         a0, s5, 1113
                  xor          a0, a7, s6
                  lui          t1, 291764
323:              slt          s2, s7, a6
                  srai         tp, s7, 7
                  sltu         s11, s3, tp
                  bltu         gp, a2, 339f
                  xori         a1, tp, -1090
                  addi         ra, s7, 105
                  bltu         s10, gp, 342f
                  xor          s8, zero, a2
                  bge          t0, t1, 333f
332:              bge          s5, t4, 351f
333:              addi         ra, t1, -1167
                  slli         a5, gp, 20
335:              bgeu         a4, t5, 351f
                  srai         s5, ra, 30
                  or           a7, t6, a0
                  nop
339:              sra          a0, a7, a1
                  srli         s8, a3, 20
                  xori         t5, a1, 1792
342:              srl          t3, t3, gp
                  bge          a2, s5, 353f
                  add          s6, t0, ra
                  or           gp, s0, s6
                  srai         t5, gp, 29
                  add          t0, s1, a1
                  srl          s9, ra, t5
                  srl          s0, a2, a5
                  slli         sp, s9, 27
351:              sltu         s1, a0, t3
                  sll          t6, a7, s1
353:              andi         tp, s9, 1699
                  add          s9, s5, t2
                  sra          s2, s7, gp
                  sltiu        a6, sp, 1095
                  slt          ra, a6, a2
                  xori         t0, a2, 960
                  slti         s5, s0, -713
                  srl          t1, s9, t1
                  xori         s2, a0, -317
                  bge          s5, t5, 382f
                  bltu         s1, a0, 381f
                  slli         s2, a7, 13
                  xori         tp, zero, 1004
                  xor          sp, t4, s4
                  sltu         a0, a7, t5
                  sltiu        tp, a1, -1394
                  srli         s11, t4, 24
                  slti         a4, s9, 2038
                  or           s7, s5, a0
                  bne          a1, s9, 375f
                  slti         a0, sp, 1462
                  slt          t5, zero, t1
375:              bltu         sp, s8, 388f
                  slt          t3, a4, gp
                  blt          zero, t1, 382f
                  or           s4, s9, s5
                  add          t6, s9, t4
                  bltu         s11, a0, 388f
381:              nop
382:              slli         a7, ra, 26
                  ori          a4, t0, 1718
                  addi         s5, a6, -702
                  bltu         s7, t3, 395f
                  or           s5, t6, s8
                  sltiu        gp, t1, 1582
388:              sll          s6, s0, s6
                  slli         s8, s0, 5
                  srai         a4, t4, 1
                  and          s7, tp, s3
                  bgeu         tp, t1, 394f
                  sltu         a1, s5, t5
394:              xori         t6, t5, -202
395:              bgeu         a1, gp, 398f
                  or           ra, a6, s0
                  slt          a0, s1, s1
398:              slti         s2, t5, -233
                  andi         a4, gp, -1226
                  srli         zero, s0, 10
                  sub          t1, a6, s9
                  srli         a3, zero, 30
                  xori         t0, t2, 1472
                  srai         s6, s11, 23
                  srli         s0, s5, 23
                  sub          s4, a0, s2
                  slt          s11, s7, a5
                  and          s9, a1, s0
                  slt          s1, t1, s9
                  ori          ra, s10, 824
                  auipc        t2, 442817
                  ori          a6, a5, 1156
                  xor          s11, s6, s10
                  or           t3, t0, t0
                  srai         t0, t4, 11
                  slt          tp, s4, tp
                  sltiu        s9, tp, 1747
                  bne          a4, t6, 430f
                  bge          a5, tp, 429f
                  bgeu         a6, t3, 432f
                  sra          t0, a1, s11
                  blt          s3, t1, 432f
                  and          s9, t6, a0
                  slt          s7, a4, a1
                  add          a5, t1, s4
                  slt          s9, a2, a3
                  slli         s5, t2, 5
                  slli         s9, s9, 14
429:              srli         a4, s4, 8
430:              sltu         t5, a4, s2
                  slti         s6, a1, 1636
432:              slti         t2, a2, 278
                  sra          s1, s5, ra
                  srai         s4, t5, 9
                  add          s2, a7, a2
                  lui          ra, 873101
                  slli         t1, a3, 19
                  andi         s8, s2, 819
                  sra          a3, s8, zero
                  srli         t2, sp, 24
                  bltu         t6, t0, 459f
                  xori         a0, a2, -1720
                  slt          a5, ra, s3
                  lui          ra, 671397
                  bgeu         s1, t2, 455f
                  sub          a3, s0, s9
                  andi         t0, a3, -1115
                  and          a1, s2, s3
                  srli         t4, t2, 11
                  slti         s5, t5, -827
                  add          t6, ra, sp
                  and          tp, s7, tp
                  nop
                  slli         s2, sp, 4
455:              slli         s4, s11, 3
                  xori         a1, s10, -647
                  bgeu         t6, s7, 467f
                  xori         s7, a1, 1164
459:              sra          a7, t3, t5
                  srl          gp, a5, ra
                  bne          a1, t5, 474f
                  blt          t3, s7, 475f
                  srl          a5, s7, a2
                  beq          tp, a6, 473f
                  ori          s11, t2, -1440
                  bge          sp, tp, 479f
467:              bgeu         a5, t2, 469f
                  bgeu         s10, t3, 475f
469:              xor          zero, s3, t6
                  addi         s8, s0, 311
                  sll          s11, s4, a2
                  xor          s5, t6, t3
473:              auipc        zero, 537193
474:              and          t4, t1, a5
475:              bge          s4, s1, 493f
                  nop
                  srl          t2, t2, s1
                  srai         t6, tp, 9
479:              srai         s11, a7, 3
                  slt          s7, a4, s10
                  slti         s1, t0, -486
                  bge          ra, t0, 490f
                  beq          t4, t6, 496f
                  xori         a3, s0, 1275
                  and          s11, s8, a5
                  sltiu        t6, t2, 895
                  blt          a6, s1, 502f
                  sra          sp, s2, t0
                  nop
490:              srai         gp, s4, 24
                  lui          s7, 501539
                  srli         a0, t6, 2
493:              sub          t4, a7, s6
                  bge          s0, s3, 506f
                  sltu         s5, a5, t6
496:              bltu         a1, ra, 516f
                  xor          t5, a6, t5
                  bgeu         a6, sp, 513f
                  sra          s5, a7, s11
                  lui          s9, 740932
                  xor          a0, a1, s6
502:              bgeu         s0, s5, 518f
                  sltiu        s7, s10, 559
                  srai         t2, t5, 5
                  blt          a0, s6, 507f
506:              ori          s9, a1, -450
507:              auipc        s1, 1033110
                  slli         t5, t1, 11
                  beq          s5, a4, 528f
                  auipc        a5, 387557
                  slti         s6, s5, 1104
                  slt          s9, t5, t2
513:              add          t3, s7, zero
                  slti         t6, a7, 1357
                  beq          ra, a3, 516f
516:              sub          ra, t4, s11
                  slt          gp, s5, gp
518:              beq          s4, s4, 521f
                  ori          s11, s6, -800
                  lui          t6, 280684
521:              bne          s1, t6, 524f
                  xor          sp, t5, zero
                  bge          a0, s9, 543f
524:              ori          s4, s1, 431
                  bltu         s6, s11, 542f
                  blt          s2, gp, 536f
                  addi         t3, t6, -1937
528:              nop
                  sra          s7, a0, t3
                  bgeu         t0, s7, 535f
                  add          a3, sp, s0
                  srl          s11, t4, a7
                  sub          tp, s7, s6
                  auipc        s5, 989586
535:              slli         t0, a3, 31
536:              and          a0, s4, s6
                  blt          tp, s11, 550f
                  sub          t2, a5, s10
                  bge          s4, a3, 544f
                  bne          a6, t0, 550f
                  sltiu        s0, t0, -579
542:              xor          a4, a5, t1
543:              beq          a3, t2, 560f
544:              auipc        a6, 566847
                  sra          t0, a2, a1
                  blt          a7, t0, 556f
                  slli         a0, s7, 26
                  srai         a7, s10, 6
                  sll          a5, t6, s5
550:              andi         t3, t2, -414
                  bltu         t4, t1, 560f
                  bge          s10, a1, 572f
                  sll          a5, s10, s5
                  ori          a0, s9, 1309
                  la           s5, region_0+679 #start riscv_load_store_rand_instr_stream_4
                  sub          gp, a3, t1
                  srli         zero, sp, 19
                  slli         zero, s2, 19
                  sh           a1, 41(s5)
                  xor          a5, t2, s6
                  lh           s6, -45(s5)
                  srli         t6, a6, 8
                  or           t0, s5, a2
                  sltu         zero, s11, a4
                  sb           t1, 24(s5)
                  lhu          a1, -59(s5)
                  sltu         s0, a0, gp
                  lh           a4, -35(s5)
                  lbu          s8, -60(s5)
                  sh           ra, -13(s5)
                  lb           s9, -35(s5)
                  sb           s0, 5(s5)
                  sltu         s1, s11, s2
                  lbu          tp, -18(s5)
                  lbu          s1, 26(s5)
                  lbu          a0, -19(s5)
                  andi         a1, a2, 2004
                  andi         a5, ra, -788
                  lui          tp, 484387
                  lbu          a3, 36(s5)
                  sb           a5, 24(s5)
                  add          a1, s11, a2
                  add          s11, s4, t1
                  nop
                  lbu          a5, -22(s5)
                  slt          a4, gp, a7
                  sh           s1, 35(s5)
                  slt          s7, s2, s0
                  sb           a5, 20(s5)
                  lbu          zero, -56(s5)
                  add          t4, s6, a3
                  sb           s10, 4(s5)
                  sltiu        a4, s10, -1628
                  lb           t1, -61(s5)
                  sll          s2, t4, s11
                  nop
                  slt          s1, s0, t6
                  lui          a6, 347985
                  sb           a6, -18(s5)
                  lbu          gp, -6(s5)
                  lb           s7, 21(s5) #end riscv_load_store_rand_instr_stream_4
                  bne          s9, ra, 573f
556:              srl          s2, a1, s0
                  bltu         s5, t3, 570f
                  sub          t4, s7, s3
                  and          a4, zero, t0
560:              add          t3, s2, t5
                  srli         t3, a3, 30
                  slli         a3, s2, 2
                  slti         t1, s11, 1546
                  beq          s8, sp, 572f
                  sltu         s8, t3, t2
                  bgeu         s1, a4, 567f
567:              srai         zero, s1, 23
                  xor          a0, s10, t2
                  srli         s0, a1, 13
570:              slli         a6, ra, 2
                  srai         a7, a6, 8
572:              srai         t3, a5, 23
573:              srai         s0, gp, 9
                  xor          a3, gp, s7
                  or           s8, t1, s2
                  add          s9, a4, s0
                  srai         s8, t2, 9
                  blt          s9, t5, 581f
                  xori         t4, s1, -1621
                  xor          a7, a4, tp
581:              bne          s4, tp, 593f
                  xori         a0, sp, -614
                  srli         t1, tp, 29
                  blt          a3, s8, 586f
                  lui          tp, 620020
586:              or           t5, zero, gp
                  sub          s2, s5, s9
                  sltiu        a3, t1, 104
                  blt          t5, s7, 592f
                  slti         tp, a6, -345
                  bne          s10, s4, 606f
592:              sra          a4, a1, a1
593:              lui          s11, 753633
                  sll          s5, a7, s9
                  sra          t2, s9, s8
                  srl          a6, s3, a1
                  auipc        s0, 889422
                  bgeu         s7, s9, 611f
                  sltiu        t1, s3, -1807
                  addi         a0, sp, -1099
                  sub          s5, s8, s5
                  and          t4, a6, s11
                  bge          zero, a5, 613f
                  srl          sp, zero, a1
                  sra          s2, t1, zero
606:              blt          a6, s2, 619f
                  srl          s4, a5, s11
                  add          tp, a7, s3
                  sub          s1, a0, t3
                  sra          ra, s11, t3
611:              slti         a5, a7, 1623
                  beq          zero, sp, 627f
613:              sub          tp, s3, s5
                  srai         t5, s5, 20
                  bne          s1, t6, 628f
                  bne          a7, a2, 636f
                  and          ra, zero, s6
                  bltu         a7, s8, 634f
619:              sll          tp, a1, a4
                  srli         s9, tp, 4
                  nop
                  xori         t5, a1, 2007
                  blt          s2, s7, 636f
                  srli         s7, s3, 14
                  xori         s5, s7, 141
                  andi         s2, s2, -1699
627:              sltu         s7, sp, a0
628:              srai         a7, a0, 17
                  andi         gp, a2, -1846
                  slti         s7, a5, -920
                  sll          a6, a4, t2
                  xori         a0, s9, -1912
                  add          t1, s7, tp
634:              slt          a5, tp, s6
                  auipc        s6, 844929
636:              add          ra, s7, zero
                  bltu         s1, s8, 656f
                  ori          zero, s4, -1705
                  sub          t2, t3, a3
                  srai         s5, s5, 2
                  srli         s8, s0, 6
                  slti         a6, a0, -1919
                  slt          a7, zero, s5
                  lui          s8, 878042
                  addi         t0, t1, -603
                  sltu         ra, s7, ra
                  slt          gp, s10, s4
                  slti         s6, s4, 914
                  andi         s7, s10, -1929
                  add          a5, s4, s4
                  auipc        s9, 23556
                  nop
                  and          a1, a7, s10
                  bltu         s3, s7, 666f
                  ori          t4, s5, 1545
656:              beq          zero, a2, 658f
                  slti         s11, t3, -906
                  lui          t6, 470766
                  or           sp, t6, t1
                  sub          gp, s1, s5
                  srai         s7, tp, 25
                  xori         t0, a2, -367
                  and          s9, gp, a6
sub_8_j11:        jal          ra, sub_9 #jump sub_8 -> sub_9
658:              sub          zero, sp, t2
                  la           s0, region_1+539 #start riscv_load_store_rand_instr_stream_0
                  lh           t1, 5(s0)
                  sh           t2, 9(s0)
                  lbu          zero, 14(s0)
                  sltu         a1, tp, s8
                  lbu          s5, -1(s0)
                  lbu          a0, 16(s0)
                  auipc        s6, 1030638
                  sb           s1, 14(s0)
                  lb           t5, -12(s0)
                  lbu          s11, 14(s0)
                  lh           a1, 5(s0)
                  srai         t5, s5, 14
                  sll          s8, a0, s9
                  xor          s1, s3, s0
                  lb           s2, -6(s0)
                  lbu          s9, -16(s0)
                  lbu          s7, 16(s0)
                  lh           t0, -9(s0)
                  lh           ra, 7(s0)
                  sltiu        a1, a3, -1037
                  addi         s8, s4, -96
                  sb           t0, -14(s0)
                  andi         t0, s1, 155
                  nop
                  srli         s5, sp, 9
                  sb           t2, -6(s0) #end riscv_load_store_rand_instr_stream_0
                  beq          t3, a4, 677f
                  add          a6, s11, tp
                  bgeu         t2, a6, 671f
                  sltiu        t5, t0, -202
                  sll          sp, s0, s5
                  ori          t6, s11, -1834
                  beq          t3, t1, 672f
666:              and          t6, s4, s3
                  slti         a0, a6, 321
                  srli         t4, s10, 30
                  addi         t0, s0, -361
                  sra          s1, tp, s7
671:              addi         t1, s0, -346
672:              slli         s7, t2, 22
                  andi         s11, s10, 416
                  auipc        s7, 39780
                  add          a3, ra, sp
                  or           s1, t5, a0
677:              blt          tp, tp, 687f
                  srli         a4, s9, 25
                  bltu         t6, ra, 697f
                  bltu         s1, tp, 682f
                  srai         s7, s4, 30
682:              sltu         s1, t4, s3
                  xor          a6, t6, sp
                  ori          s6, s0, -1819
                  slt          ra, a0, s3
                  srli         t2, a0, 30
687:              and          t0, s5, sp
                  blt          t6, s10, 708f
                  srai         t5, a5, 14
                  andi         t3, a1, -1450
                  srli         t4, gp, 22
                  blt          s1, s9, 695f
                  slti         s5, s4, -1932
                  sltiu        sp, a6, -1333
695:              bgeu         s11, s1, 708f
                  blt          s10, t6, 712f
697:              slt          a6, s6, a3
                  slli         a4, gp, 14
                  bge          a2, s5, 716f
                  xor          t5, gp, sp
                  srl          a1, a1, t6
                  nop
                  or           s6, s0, t3
                  beq          s10, t4, 717f
                  bltu         s10, s10, 712f
                  addi         s9, s4, -911
                  srai         a7, a5, 0
708:              sra          tp, a4, t6
                  andi         a6, s4, 800
                  srl          sp, t6, a5
                  slli         a7, a6, 17
712:              auipc        a6, 435471
                  sra          sp, s7, s1
                  xori         sp, t2, 1455
                  srli         s8, t4, 31
716:              add          s6, t1, a0
717:              auipc        s0, 85993
                  srai         t4, t3, 5
                  add          t0, s3, s9
                  sltiu        t6, s10, -919
                  xori         t0, a0, -1948
                  xor          s7, s9, a1
                  lui          a7, 73855
                  and          s2, s3, sp
                  lw           ra, 4(a2)
                  sll          a0, a3, sp
                  addi         a2, a2, 16
                  nop
949:              addi x29, x1, 0
949:              jalr x29, x29, 0
sub_9:            addi         a2, a2, -48
                  slt          a1, s3, a3
                  srli         t2, gp, 7
                  sw           ra, 4(a2)
                  auipc        t6, 862813
                  sra          a7, sp, t3
                  lui          t6, 371257
                  la           sp, region_0+1057 #start riscv_load_store_rand_instr_stream_6
                  srai         s6, t3, 24
                  slt          a0, s3, ra
                  and          a1, zero, tp
                  sltu         s4, a5, t2
                  and          a7, s1, t1
                  sh           s8, -287(sp)
                  and          zero, t4, s7
                  sb           t2, -82(sp)
                  add          t6, a3, a5
                  andi         ra, s11, -223
                  xori         s0, t2, -407
                  lhu          s6, 55(sp)
                  lbu          s4, -302(sp)
                  sb           s9, -272(sp)
                  sb           s4, 334(sp)
                  lb           s11, -762(sp)
                  sb           t1, -532(sp)
                  slt          s7, s7, t3
                  lbu          a5, 98(sp)
                  sh           sp, 349(sp)
                  srai         s2, a2, 3
                  xori         s5, t4, 1320
                  lbu          a6, -322(sp)
                  slli         a3, a1, 24
                  sb           t6, -1004(sp)
                  slti         s11, t2, 161
                  sb           ra, 580(sp)
                  sb           ra, -1056(sp)
                  sltiu        t6, s4, -1298
                  slti         a0, s5, -1192
                  sb           t0, 640(sp)
                  lb           s11, -238(sp)
                  sb           s1, 113(sp)
                  sh           a0, -657(sp)
                  sll          s8, s6, t3
                  srli         t4, tp, 6
                  xori         s6, a2, -259
                  lb           zero, -956(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_1+1441 #start riscv_load_store_rand_instr_stream_2
                  sb           t6, -13(a5)
                  lui          t2, 337839
                  lw           a0, -1(a5)
                  lui          s2, 880922
                  sb           tp, -5(a5)
                  and          t5, t6, t5
                  slli         a1, s7, 18
                  sh           s9, 1(a5)
                  lw           zero, -1(a5)
                  lh           s11, 3(a5)
                  sh           t6, 13(a5)
                  and          s7, s5, s2
                  lhu          t1, 11(a5)
                  sra          sp, s1, zero
                  ori          a0, a6, 1571
                  add          tp, a3, a6
                  auipc        a7, 182693
                  sub          t3, sp, s2
                  ori          t3, a3, -1882
                  sb           s11, 12(a5)
                  sb           a2, 10(a5)
                  lbu          a7, -1(a5)
                  lbu          tp, -15(a5)
                  lb           s1, 12(a5)
                  add          s0, sp, s9
                  addi         sp, t6, 339
                  nop
                  lui          tp, 329357
                  lui          s2, 395387
                  srai         s8, a5, 7
                  sb           a6, -4(a5)
                  add          ra, t2, s11
                  lbu          t5, 12(a5)
                  slli         s0, ra, 11
                  xori         s1, t3, 1479
                  sra          tp, s4, s6
                  lbu          s6, 12(a5)
                  lb           t4, 13(a5)
                  sb           s8, -5(a5) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_0+144 #start riscv_load_store_rand_instr_stream_10
                  srai         s11, a0, 25
                  srl          a5, s6, s2
                  xori         a5, s9, -1106
                  lbu          sp, 23(t2)
                  lb           a1, 86(t2)
                  lb           t6, -68(t2)
                  or           a3, a7, a6
                  sltiu        s2, t0, -72
                  lb           t5, -93(t2)
                  ori          s4, s1, 138
                  sltiu        s7, t1, -1431
                  slli         a5, t6, 21
                  slt          s6, s8, s1
                  lb           t0, 251(t2)
                  lbu          a5, 239(t2)
                  sltiu        s4, s7, 1709
                  sb           s1, -47(t2)
                  ori          s2, tp, -923
                  lb           t1, -9(t2)
                  and          s5, s2, a0
                  sll          t1, a7, s2
                  lhu          s4, 216(t2)
                  srl          ra, t0, tp
                  sb           a6, -124(t2)
                  sltiu        a3, t5, -1362
                  sltiu        s8, s4, 918
                  lb           t0, 85(t2)
                  add          t3, a5, t2
                  lbu          s6, -73(t2) #end riscv_load_store_rand_instr_stream_10
                  la           s8, region_0+651 #start riscv_load_store_rand_instr_stream_0
                  srai         s0, tp, 11
                  xori         gp, s2, 225
                  lb           a5, -15(s8)
                  lui          s6, 123927
                  ori          t0, s1, -1271
                  lhu          a6, 21(s8)
                  sb           t3, 0(s8)
                  add          t6, t6, s0
                  sb           a6, -30(s8)
                  and          t1, t3, a3
                  lbu          a0, 28(s8)
                  slt          a1, a0, s10
                  lb           s5, 6(s8)
                  lbu          s9, 32(s8)
                  sb           a3, 46(s8)
                  sb           s4, 55(s8)
                  lh           a5, 35(s8)
                  lb           a4, -48(s8)
                  addi         s11, s2, -1131
                  lbu          a6, -14(s8)
                  lh           t6, 61(s8)
                  lh           t6, -5(s8)
                  lhu          s7, -15(s8)
                  ori          t1, s11, -1119
                  lb           a4, -41(s8)
                  lui          t1, 618021
                  auipc        a1, 29665
                  sb           ra, 28(s8)
                  sb           s8, -48(s8)
                  nop
                  lh           a0, -11(s8)
                  sh           t1, -45(s8)
                  sb           s9, 30(s8)
                  lui          s9, 308409
                  slti         s5, s10, -343
                  lb           a1, 3(s8)
                  lbu          a3, -8(s8)
                  lhu          s1, -25(s8)
                  nop
                  lbu          t1, 10(s8)
                  sltu         s7, s3, a2
                  lui          t3, 472910
                  sltiu        a7, s5, -1567
                  slt          t4, s11, s5
                  sh           t2, -7(s8)
                  sltu         a7, a5, t0
                  ori          s0, s2, 1943
                  lh           gp, -53(s8)
                  sra          a3, a4, a6
                  lui          a1, 479690
                  sub          a5, s11, a2
                  lbu          a4, 50(s8)
                  sub          s2, a1, s4
                  sh           a1, -29(s8)
                  lhu          a1, -59(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+647 #start riscv_load_store_rand_instr_stream_7
                  lw           s2, 1(sp)
                  and          ra, a5, s0
                  srli         s7, s2, 9
                  lb           s5, 11(sp)
                  lbu          t1, 10(sp)
                  lhu          s7, -11(sp)
                  or           a1, s9, s8
                  sltu         t1, s5, a0
                  sltiu        a4, s1, -465
                  sb           s11, -11(sp)
                  slli         s11, t5, 21
                  auipc        a1, 682708
                  slti         s2, a1, 1448
                  slli         t2, s8, 9
                  slti         a5, s5, -1322
                  addi         a7, t1, -1986
                  auipc        s1, 170484
                  sb           a6, -4(sp)
                  xori         a5, a2, 1637
                  sw           s10, 5(sp)
                  nop
                  sra          s8, s8, gp
                  lbu          gp, -12(sp)
                  xori         tp, s8, -445
                  sw           a1, 13(sp)
                  lbu          s7, 6(sp)
                  sub          s1, t3, t5
                  lb           s6, -14(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1698 #start riscv_load_store_rand_instr_stream_9
                  srl          s1, a0, s10
                  add          t3, a6, s5
                  lb           t6, 0(sp)
                  sltiu        s9, s8, 1639
                  auipc        a7, 833843
                  auipc        s6, 159523
                  xori         t4, s2, -877
                  lb           t0, 5(sp)
                  lb           zero, 7(sp)
                  sll          a1, s7, a0
                  srai         s7, ra, 16
                  addi         s11, tp, 190
                  lhu          s6, 0(sp)
                  sub          a6, zero, a1
                  sub          a3, s10, ra
                  xori         a1, ra, 393
                  srl          s6, t0, t0
                  srli         s5, s9, 8
                  lb           s2, -11(sp)
                  ori          a5, a7, 1670
                  and          s8, s5, sp
                  sll          t1, s5, a0
                  ori          s2, a0, 1463
                  srl          t1, t5, a5
                  sub          a6, a5, s9
                  lhu          s5, -8(sp)
                  sb           a1, -16(sp)
                  nop
                  lui          s11, 278935
                  lui          zero, 286103
                  or           tp, gp, a6
                  srai         s11, s5, 5
                  xori         t2, t5, -2047
                  add          a4, s9, t5
                  slt          a5, s10, a7
                  sb           t2, 10(sp)
                  sh           s8, 8(sp)
                  lh           t4, 8(sp)
                  lhu          s2, 4(sp)
                  slt          s6, t0, s9
                  sh           zero, -10(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1957 #start riscv_load_store_rand_instr_stream_8
                  sh           t1, -79(sp)
                  slli         s9, a0, 6
                  sra          a0, s4, gp
                  xor          t4, a5, ra
                  srai         ra, a1, 22
                  slti         s8, a7, -1396
                  sh           a1, -71(sp)
                  sb           t3, -116(sp)
                  slli         a7, s8, 9
                  sb           a6, 38(sp)
                  lhu          a6, -237(sp)
                  lb           t1, -118(sp)
                  srli         a3, t4, 6
                  srl          a5, s3, s2
                  sub          a1, s3, t1
                  lb           a6, -246(sp)
                  lbu          zero, -222(sp)
                  slti         zero, s3, 1430
                  slti         t0, s2, -1362
                  sh           zero, -107(sp)
                  add          s0, tp, ra
                  xori         a3, s4, 474
                  and          a4, s5, s9
                  slti         a1, s3, 603
                  slti         s11, s8, -1306
                  add          a5, s1, t6
                  add          s5, s2, a7
                  and          a1, a3, t2
                  sh           a5, -49(sp)
                  nop
                  sb           a1, -82(sp)
                  lbu          a6, -134(sp)
                  sb           t0, 2(sp)
                  sltiu        a7, zero, 1176
                  sll          a3, zero, s1
                  sltu         a7, zero, s7
                  sltiu        t5, a0, 595
                  lhu          t5, 1(sp)
                  lb           t4, -94(sp)
                  srai         zero, s2, 2
                  lb           s6, -99(sp)
                  xor          ra, a0, a5
                  sh           s11, -151(sp)
                  slti         a1, s2, -1093
                  lhu          t0, -199(sp)
                  auipc        s4, 51862
                  or           a1, s5, ra
                  lbu          t3, -204(sp) #end riscv_load_store_rand_instr_stream_8
                  la           t1, region_1+210 #start riscv_load_store_rand_instr_stream_4
                  lh           s4, 4(t1)
                  sub          t5, s1, a1
                  lhu          a3, 8(t1)
                  or           s5, s10, a3
                  lb           t2, 9(t1)
                  addi         s5, a6, 91
                  lui          s9, 770357
                  srli         a1, tp, 5
                  slt          t2, t4, s2
                  sltu         a6, a6, gp
                  sb           s6, 1(t1)
                  add          a1, a1, s0
                  sb           s8, 9(t1)
                  ori          t5, t0, -177
                  lhu          t2, 12(t1)
                  sb           s2, 11(t1)
                  or           s7, s7, s9
                  slli         s11, s10, 11
                  sll          a5, s3, a6
                  slt          a7, t3, s7
                  lb           s8, -15(t1)
                  lbu          gp, -6(t1)
                  sw           a4, -6(t1)
                  andi         s7, t1, -1894
                  lb           s2, 11(t1)
                  slti         zero, t5, 299
                  lbu          s9, -1(t1)
                  lbu          s5, 1(t1)
                  srli         s8, s9, 0
                  nop
                  slli         a6, a6, 2
                  sb           t1, -5(t1)
                  ori          tp, s7, 1579
                  lbu          s9, 9(t1)
                  slt          a0, a4, a0
                  sb           a4, 1(t1)
                  add          a4, s3, a4
                  sh           ra, -4(t1)
                  srli         s2, tp, 22
                  xor          s9, s5, s6
                  sb           a0, 5(t1)
                  slt          t0, a6, t5
                  srai         s5, a6, 14
                  sb           a5, 13(t1) #end riscv_load_store_rand_instr_stream_4
                  la           a7, region_1+670 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, 0(a7)
                  sub          t5, a1, a4
                  sb           t0, 16(a7)
                  lb           a6, -7(a7)
                  srai         sp, t1, 28
                  sb           t2, 13(a7)
                  lb           a6, -10(a7)
                  addi         tp, a6, 98
                  auipc        tp, 980344
                  srai         t5, t4, 22
                  addi         tp, a0, -1638
                  sw           t5, 2(a7)
                  slti         s11, s2, 864
                  lhu          s9, -10(a7)
                  lbu          s4, 7(a7)
                  sb           s0, -2(a7)
                  sb           s11, 13(a7)
                  srl          t0, s11, s0
                  lbu          t6, 9(a7)
                  lbu          t2, -11(a7)
                  sh           a0, -4(a7)
                  lh           s11, -8(a7)
                  lb           a6, 1(a7)
                  lhu          t2, 2(a7)
                  sb           a1, 5(a7)
                  sb           a4, 12(a7)
                  lw           t0, 10(a7)
                  sb           s10, 1(a7)
                  lhu          ra, 2(a7)
                  auipc        ra, 530693
                  lb           a1, -4(a7)
                  lb           zero, -10(a7)
                  slti         t0, s7, 643
                  sh           s6, 2(a7)
                  lbu          a3, 3(a7)
                  lhu          t0, 6(a7)
                  lb           a1, 13(a7) #end riscv_load_store_rand_instr_stream_1
                  sll          t3, zero, tp
                  ori          s4, a4, -1686
                  bne          s4, a3, 18f
                  xor          a4, s6, a1
                  addi         s4, s9, 1486
                  srai         gp, t1, 7
                  sltiu        s1, t1, -1436
                  beq          t5, t3, 20f
                  and          s4, s4, t5
                  bge          a3, s10, 15f
                  xori         s6, a2, -1439
                  andi         a0, s4, -1880
                  sub          t4, s0, gp
                  slti         s11, s5, -683
                  ori          a3, s2, -1685
15:               or           t1, a4, t1
                  xori         t1, gp, 1103
                  and          gp, ra, a4
18:               addi         s2, gp, -993
                  auipc        a4, 352706
20:               sub          s2, s8, a6
                  srli         zero, sp, 7
                  andi         t4, a4, -239
                  sra          s0, s9, s4
                  srl          t5, a6, s9
                  sub          t0, t6, s8
                  bge          t0, a2, 42f
                  and          s4, s10, gp
                  slli         zero, ra, 31
                  and          t3, t5, s9
                  bltu         t5, zero, 45f
                  xori         tp, t3, -635
                  and          a3, a6, t3
                  add          s1, s2, a0
                  bne          s3, t4, 45f
                  xori         t6, s3, 286
                  srl          sp, s1, s11
                  bne          s4, s7, 57f
                  nop
                  bge          s0, a1, 58f
                  beq          s3, a5, 48f
                  add          tp, s8, s8
42:               and          s8, s4, a1
                  srai         tp, t2, 1
                  sll          t0, a6, s1
45:               auipc        s1, 237507
                  srai         t6, s1, 7
                  or           t6, s1, s0
48:               and          zero, s5, t3
                  sltu         s9, a6, a7
                  add          a3, s2, s2
                  sltu         a5, t6, a0
                  ori          a3, s2, 227
                  addi         a6, s7, -2030
                  bgeu         zero, zero, 63f
                  bgeu         t1, t3, 68f
                  sltiu        a5, s6, -513
57:               beq          s7, s0, 75f
58:               ori          gp, s4, 0
                  ori          t2, a3, 1474
                  bltu         t5, s3, 79f
                  slti         gp, s3, -310
                  slti         a0, t4, -1373
63:               or           t1, t2, s0
                  xor          t3, s10, s6
                  srai         s11, s8, 22
                  xori         t6, a7, 997
                  sub          s4, s11, t3
68:               bge          s5, tp, 83f
                  bne          s11, t3, 83f
                  sltiu        t3, a4, -146
                  slt          zero, gp, s3
                  ori          a7, s6, 741
                  bge          t1, a7, 84f
                  ori          a5, s2, 1391
75:               bgeu         s9, t6, 81f
                  slti         s11, a4, -232
                  srai         s8, ra, 24
                  or           s1, sp, zero
79:               add          s11, t4, gp
                  andi         s5, t4, 60
81:               sra          t4, a2, t4
                  auipc        t0, 189740
83:               lui          t1, 217492
84:               nop
                  srl          t1, ra, s2
                  auipc        gp, 245639
                  sub          zero, s9, a6
                  xor          t5, s0, s10
                  ori          t3, s11, -2030
                  sll          t3, s8, t4
                  andi         a4, zero, 237
                  srl          t0, gp, ra
                  blt          s0, a4, 112f
                  add          a3, s8, s10
                  xori         t0, s0, 1594
                  srli         a4, t5, 31
                  add          s6, s8, s5
                  srli         t4, tp, 18
                  or           t1, a0, a4
                  xori         a1, s6, -1253
                  srl          gp, s0, a2
                  srli         a5, t5, 20
                  beq          s10, sp, 123f
                  slt          t4, t5, a4
                  or           t3, t3, zero
                  andi         s5, t2, -660
                  ori          s5, t6, 501
                  bgeu         s4, s0, 126f
                  bge          t4, a1, 112f
                  auipc        ra, 354166
                  slli         ra, s2, 25
112:              and          a3, t0, a4
                  slli         s8, t3, 11
                  slti         s5, a1, 118
                  slti         a0, s11, -13
                  sra          a1, s5, t0
                  lui          a5, 231807
                  slti         ra, t2, 647
                  bge          t1, s3, 129f
                  andi         t5, sp, -1086
                  slli         t3, t1, 3
                  addi         gp, t0, -1101
123:              srai         a4, s4, 9
                  bltu         a0, a7, 127f
                  slli         a1, a4, 20
126:              add          a4, a0, a2
127:              bgeu         s4, gp, 130f
                  or           a0, s10, t5
129:              beq          zero, s8, 148f
130:              or           a7, a1, t1
                  ori          s8, t3, -864
                  srai         a6, s10, 5
                  auipc        s5, 870867
                  slli         tp, s9, 21
                  nop
                  sra          t5, s1, sp
                  srl          ra, t4, t5
                  xor          s9, a4, t3
                  slli         a0, a7, 18
                  slt          a6, zero, s8
                  beq          t6, s7, 156f
                  slti         t6, s2, 1439
                  sll          t3, zero, s6
                  srli         s5, a4, 6
                  or           t6, a1, s7
                  xor          s2, a5, t5
                  add          a7, s11, a2
148:              beq          s1, ra, 157f
                  sub          gp, t4, a5
                  xor          a0, s8, s10
                  slti         a6, t2, -1809
                  auipc        t6, 335375
                  srl          s2, s6, s9
                  bge          a0, a0, 168f
                  bne          s10, t5, 162f
156:              add          ra, t0, a2
157:              andi         t6, s8, -1691
                  xori         s1, sp, -1338
                  auipc        a7, 744373
                  add          zero, s10, s1
                  srli         t4, t6, 9
162:              srl          s11, s2, t3
                  add          a3, a5, t6
                  srai         t0, a4, 16
                  blt          a1, s2, 171f
                  or           a7, s2, s4
                  ori          a1, s0, 81
168:              slti         a1, tp, 386
                  slt          t4, ra, s10
                  slli         a4, t6, 2
171:              addi         sp, s0, 1027
                  beq          a2, s2, 187f
                  slt          t4, a2, zero
                  slli         s1, s5, 1
                  sub          t6, a3, s1
                  slt          s1, a0, s5
                  sra          s9, s7, s7
                  slli         a7, s6, 25
                  andi         a7, s5, 325
                  slti         t0, t4, 819
                  sltiu        t3, ra, -1298
                  slli         s0, s2, 23
                  ori          s11, gp, -1897
                  bne          a7, t4, 194f
                  sra          a3, s0, s7
                  slli         s9, zero, 17
187:              auipc        tp, 737744
                  sltu         t3, s1, a2
                  blt          ra, s3, 208f
                  sll          a0, sp, t3
                  sra          t1, s5, a6
                  add          t6, s10, a1
                  ori          s0, zero, 1305
194:              sll          s7, s7, s1
                  or           gp, t2, zero
                  sltu         s6, a7, a5
                  and          a3, ra, t5
                  xor          t0, a5, s3
                  nop
                  nop
                  slt          t3, a1, ra
                  or           a7, t4, s10
                  sub          t6, t5, s7
                  auipc        t2, 919698
                  blt          a5, ra, 214f
                  sll          t6, zero, t0
                  sra          s7, s5, s4
208:              bgeu         a2, a3, 216f
                  slti         t6, s4, 1300
                  srai         t0, gp, 9
                  bltu         zero, s11, 226f
                  auipc        s4, 395800
                  sra          s6, s6, s9
214:              lui          s2, 30857
                  ori          a3, zero, -403
216:              sll          zero, t0, s1
                  srl          s0, s0, s8
                  slli         zero, ra, 9
                  blt          t0, s7, 228f
                  slt          sp, s0, t4
                  auipc        ra, 459244
                  sub          s0, t0, t4
                  bgeu         gp, t5, 241f
                  and          t0, a3, s9
                  slli         s0, gp, 28
226:              ori          s5, tp, -272
                  bgeu         zero, t1, 247f
228:              bge          s4, s1, 235f
                  sll          s11, t4, ra
                  sltu         ra, a6, a0
                  sltiu        a1, a7, -1521
                  sll          a6, s9, a2
                  xor          a4, ra, ra
                  nop
235:              slti         t5, t4, -382
                  bge          a2, t6, 242f
                  sub          t0, s8, t5
                  xor          s7, s10, t3
                  slt          a7, s4, s8
                  xori         t1, t4, -1220
241:              bltu         a1, gp, 260f
242:              sub          s5, a5, s8
                  bltu         a0, t1, 259f
                  or           s9, ra, t6
                  auipc        a0, 123118
                  nop
247:              srai         t0, t0, 13
                  lui          t0, 672388
                  sra          a6, t3, a0
                  slt          a6, a5, s5
                  srli         s0, tp, 31
                  slti         s6, s6, -1119
                  sltiu        t2, sp, -1509
                  nop
                  srl          a0, s3, s5
                  nop
                  add          gp, a7, s4
                  srli         s5, zero, 0
259:              sll          t4, t2, s1
260:              bltu         a6, s6, 273f
                  sltu         s0, a2, s3
                  beq          sp, s10, 281f
                  sub          s7, s0, t6
                  sub          a7, t1, t0
                  beq          s7, a0, 285f
                  andi         t0, s1, -889
                  slt          a6, zero, a0
                  addi         s7, s11, 355
                  auipc        s2, 702686
                  lui          sp, 802068
                  sra          s11, a4, s3
                  ori          a6, a2, 1257
273:              blt          s6, s0, 288f
                  sra          t3, a3, s9
                  slli         s11, s8, 15
                  xor          s6, sp, sp
                  xor          sp, s6, t0
                  beq          a4, a1, 292f
                  bne          s2, t1, 298f
                  sltiu        a6, s0, -91
281:              srl          a4, t0, t4
                  slt          s5, a2, t3
                  sll          ra, a0, a0
                  addi         s5, t0, 130
285:              slti         ra, a2, 722
                  sltu         t5, s11, s2
                  sub          s0, s6, gp
288:              ori          zero, s1, -1729
                  auipc        t4, 149312
                  blt          tp, t4, 296f
                  bne          s11, s6, 297f
292:              auipc        s4, 411211
                  andi         a7, a5, -557
                  sll          a3, t1, ra
                  addi         zero, a0, 1689
296:              blt          t6, tp, 299f
297:              srl          tp, a0, tp
298:              slli         s9, s7, 7
299:              xori         a1, a2, -815
                  bge          a7, a4, 314f
                  add          s11, ra, a2
                  sra          t5, s9, ra
                  ori          s0, s4, 1667
                  nop
                  slti         t6, a0, -268
                  bge          s6, s5, 309f
                  slt          a5, s7, s11
                  slti         a5, t0, -555
309:              add          s8, s4, s0
                  andi         s9, s10, 1940
                  srai         t6, a4, 18
                  bgeu         s5, a2, 328f
                  sltu         s2, t6, s3
314:              sll          s4, s7, a4
                  nop
                  sub          a4, a5, s5
                  srl          sp, s0, a7
                  slt          s8, t4, s10
                  sltu         s11, s1, a6
                  addi         t4, a1, -859
                  srli         t2, s3, 5
                  beq          s8, s3, 333f
                  lui          a4, 353585
                  and          t3, t3, s7
                  slti         sp, sp, 1505
                  addi         t4, ra, -858
                  bne          s7, s2, 338f
328:              xor          t2, ra, s9
                  and          a3, tp, s0
                  slti         s6, a4, -1991
                  blt          s3, a0, 344f
                  xor          s1, t4, t0
333:              xori         gp, s3, 1471
                  slli         t5, zero, 24
                  srli         s7, a2, 11
                  andi         s0, s4, -1636
                  slli         t3, a5, 1
338:              add          s9, a7, s6
                  bgeu         s5, s11, 357f
                  sltu         s7, s4, t0
                  bne          a3, t6, 344f
                  slti         s8, t0, -1367
                  ori          s0, a3, -1399
344:              slli         s2, a0, 30
                  xori         ra, t2, 960
                  beq          t2, s5, 366f
                  auipc        t4, 953783
                  bgeu         s6, a4, 357f
                  addi         t3, s4, -12
                  sra          zero, s7, s2
                  srli         s5, a0, 17
                  slt          s8, a0, t2
                  slti         t2, s2, 906
                  bgeu         a1, t3, 367f
                  sltiu        a7, a7, -664
                  beq          ra, a4, 359f
357:              slti         a5, ra, -1849
                  xori         s7, t6, 1534
359:              andi         zero, ra, 1705
                  srli         s5, zero, 5
                  la           sp, region_0+1748 #start riscv_load_store_rand_instr_stream_5
                  and          s1, s11, s10
                  lb           t5, 196(sp)
                  sb           a3, -115(sp)
                  andi         s6, s1, -552
                  andi         a1, s6, -1453
                  lbu          zero, 234(sp)
                  add          s7, gp, a1
                  sb           t2, -1255(sp)
                  lh           zero, -1162(sp)
                  slli         s7, s8, 18
                  sltiu        s9, s0, 1241
                  sh           a6, -628(sp)
                  xor          t3, gp, s9
                  sw           s10, -1464(sp)
                  lhu          gp, -702(sp)
                  addi         t5, sp, -1882
                  slli         a4, a1, 3
                  lbu          s7, -1393(sp)
                  srli         s0, a1, 27
                  lb           tp, 41(sp)
                  lbu          zero, -88(sp)
                  sltiu        s9, a5, 553
                  sb           a0, -711(sp)
                  auipc        a6, 983029
                  sra          zero, a0, tp
                  slt          s0, t6, t4
                  srl          zero, a4, t3
                  lh           ra, -92(sp)
                  auipc        t5, 960374
                  sb           s6, -1028(sp)
                  lb           t4, -1261(sp)
                  sb           a3, -143(sp) #end riscv_load_store_rand_instr_stream_5
                  addi         s11, s11, -806
                  sltiu        a5, a6, -566
                  xori         a7, a6, -1114
                  and          t6, ra, t5
                  srli         t3, s1, 17
366:              srai         t4, gp, 31
367:              sltu         zero, a1, a5
                  xor          t0, t2, ra
                  beq          t6, t0, 388f
                  xori         a6, a4, 715
                  sub          a4, s2, gp
                  srli         ra, tp, 4
                  slti         zero, a6, 1127
                  ori          s5, t4, -349
                  ori          zero, a7, -1883
                  add          t4, a6, a3
                  andi         a1, s5, 1664
                  blt          sp, a5, 389f
                  slt          s8, a7, s5
                  slt          t3, ra, t6
                  bge          t3, a2, 387f
                  nop
                  srl          t0, s1, s7
                  blt          s8, s9, 403f
                  sltu         t1, s5, t4
                  srai         t1, s11, 17
387:              nop
388:              sra          s1, s6, s2
389:              slli         t6, sp, 28
                  bltu         a6, t0, 408f
                  sub          t6, s10, t3
                  bgeu         t5, tp, 395f
                  srli         s7, s4, 28
                  lui          a3, 788624
395:              andi         a7, a6, 1206
                  bne          tp, a5, 410f
                  sub          sp, s9, t5
                  nop
                  bne          s2, s5, 408f
                  srli         a5, gp, 12
                  srai         a1, a5, 12
                  nop
403:              nop
                  beq          s1, gp, 410f
                  sub          gp, t3, t2
                  auipc        a5, 603518
                  bne          zero, t5, 422f
408:              srai         s11, s2, 21
                  sub          a7, t2, t2
410:              sub          a5, zero, s10
                  andi         a6, a5, 1103
                  lui          sp, 515268
                  add          a6, zero, s5
                  blt          sp, s10, 427f
                  bge          a2, s8, 425f
                  bne          t6, t1, 422f
                  nop
                  slli         zero, t3, 29
                  addi         t4, t5, -1454
                  slti         a5, t3, 603
                  srli         a4, s8, 13
422:              ori          s11, s11, -74
                  addi         t0, t2, 1226
                  slli         s9, s5, 17
425:              bgeu         sp, a7, 441f
                  andi         s11, a3, 1413
427:              sltu         t6, s5, s0
                  srli         s7, s2, 21
                  bltu         t4, s7, 447f
                  sub          t2, s6, t0
                  la           sp, region_0+175 #start riscv_load_store_rand_instr_stream_3
                  sltu         s5, s5, s10
                  srai         s4, s2, 25
                  and          tp, s5, zero
                  add          a1, s4, s2
                  slli         ra, a6, 29
                  lh           s11, -89(sp)
                  sb           a6, 101(sp)
                  nop
                  lb           tp, -118(sp)
                  sltu         t5, t2, a2
                  sb           t5, -66(sp)
                  lw           s9, 97(sp)
                  lhu          t0, -123(sp)
                  slt          gp, s2, zero
                  lb           a0, 195(sp)
                  lbu          s4, 246(sp)
                  sltu         t1, tp, s5
                  lh           a5, -141(sp)
                  sltu         t1, a1, a7
                  lb           t6, -152(sp)
                  lbu          a5, 130(sp)
                  lh           zero, -53(sp)
                  sltiu        s6, s8, -1023
                  sltu         a1, s10, s1
                  srai         t0, gp, 2
                  slti         s9, s3, 1383
                  sltiu        s7, s0, 368
                  sh           s9, -101(sp)
                  sb           ra, 70(sp)
                  sb           t5, 12(sp) #end riscv_load_store_rand_instr_stream_3
                  srai         a4, ra, 16
                  sltiu        s4, a4, -274
                  srli         s8, a6, 0
                  slli         t2, t5, 21
                  srl          a3, s8, zero
                  bne          t2, s9, 443f
                  lui          a0, 987931
                  beq          t4, t0, 446f
                  srai         t4, s1, 2
                  ori          s6, a6, -1778
441:              sltu         t1, t4, t2
                  sltu         t6, a6, a0
443:              sra          ra, ra, tp
                  addi         ra, s7, -955
                  add          s9, s6, gp
446:              bge          s7, t2, 462f
447:              xori         t0, t6, 1853
                  nop
                  srli         a0, t4, 8
                  slt          s0, ra, s10
                  xor          t2, s1, s1
                  bge          s9, t4, 467f
                  sltu         sp, s5, t5
                  nop
                  bge          s7, s3, 469f
                  add          a5, t0, t5
                  beq          t2, s8, 477f
                  slti         tp, t3, -798
                  slt          a0, s3, gp
                  xori         a5, s5, -432
                  slt          ra, a7, a7
462:              srai         t0, t4, 1
                  xor          a6, t3, gp
                  nop
                  srli         s9, s3, 14
                  and          s9, a6, t6
467:              sltu         s0, sp, a4
                  and          s11, a1, s10
469:              srli         t0, a3, 22
                  and          t0, a2, s8
                  srli         t4, s4, 19
                  or           s6, a5, t5
                  slli         t6, t4, 10
                  bge          s4, s11, 493f
                  lui          tp, 411825
                  ori          a6, t3, -993
477:              xor          a6, a5, s2
                  add          s7, ra, t5
                  srl          gp, gp, s10
                  slti         a0, s5, 312
                  add          a7, s8, a4
                  sub          a4, s8, s1
                  bne          sp, t3, 486f
                  beq          s6, s1, 495f
                  sll          s6, s2, s6
486:              auipc        tp, 329055
                  sra          s11, s5, s1
                  srli         a6, s5, 20
                  slli         t5, a7, 19
                  or           t3, a7, s5
                  sltiu        s2, a4, -559
                  slt          s0, a2, t6
493:              lui          s1, 379407
                  slt          a5, a7, t6
495:              bltu         t5, s7, 510f
                  slti         a0, sp, -1676
                  sltu         tp, zero, a0
                  lui          a0, 455748
                  bgeu         zero, a6, 518f
                  xori         a4, a2, -12
                  auipc        t5, 209175
                  slli         s4, s6, 3
                  andi         t5, tp, -813
                  srai         s1, s11, 20
                  sub          t0, a1, s4
                  sll          s8, zero, a5
                  or           a6, s9, a0
                  blt          s6, gp, 527f
                  auipc        t0, 55230
510:              add          s2, s9, s3
                  add          a3, t3, s1
                  blt          s11, t0, 525f
                  addi         gp, a5, -920
                  lui          a3, 31419
                  blt          a0, a0, 529f
                  beq          s7, s3, 519f
                  or           t5, s7, gp
518:              sltu         t2, t3, t6
519:              andi         sp, s4, 895
                  sll          s2, s5, s6
                  xori         sp, a0, 1415
                  bltu         a7, s10, 533f
                  slli         s1, s6, 9
                  bge          gp, s11, 544f
525:              sll          s9, s11, t6
                  lui          ra, 85254
527:              sub          a4, a1, s8
                  bne          s3, t1, 544f
529:              lui          s5, 439876
                  sll          t2, s4, s10
                  slt          s4, s3, s4
                  andi         t6, s10, -533
533:              auipc        s1, 806538
                  auipc        s9, 252425
                  nop
                  auipc        a7, 710416
                  and          zero, sp, s0
                  sub          a6, a7, a6
                  bne          t1, t6, 547f
                  sub          t5, zero, s9
                  xori         sp, tp, 935
                  sltu         t2, a0, t0
                  sll          s8, s6, a3
544:              addi         s8, a6, 1802
                  or           s4, s2, s0
                  bge          t5, zero, 549f
547:              andi         t6, a5, 1389
                  sll          a6, s4, s8
549:              nop
                  add          s8, s1, tp
                  bge          ra, s0, 569f
                  xor          sp, sp, sp
                  add          s0, ra, s8
                  bltu         ra, ra, 564f
                  ori          a0, tp, 545
                  ori          tp, tp, 365
                  xor          gp, s10, s6
                  sltiu        a6, s3, -596
                  bltu         a3, s10, 574f
                  and          zero, a2, t6
                  bltu         t6, a5, 564f
                  sll          s7, s3, a5
                  sra          s6, a6, t2
564:              andi         a3, a2, 762
                  ori          ra, t1, 1482
                  sltu         s1, s11, tp
                  slt          a3, s0, t3
                  xori         s6, s10, -221
569:              slti         a0, a5, 1684
                  bltu         a0, a2, 589f
                  slti         t1, s11, 843
                  srai         a3, s2, 15
                  andi         s5, s1, -925
574:              sra          s5, t3, a6
                  sub          s1, s5, s6
                  nop
                  beq          s1, t6, 590f
                  srl          s11, t1, a6
                  srai         a6, s8, 11
                  bne          s9, s1, 589f
                  xori         a4, a0, 960
                  and          s11, t4, a7
                  slt          t6, tp, s1
                  sll          s6, s1, a7
                  slli         s4, s9, 14
                  and          t4, t2, a7
                  sltu         a1, s4, a6
                  slti         s2, sp, -487
589:              xor          a4, zero, a6
590:              xori         ra, a2, -1088
                  srl          s5, t0, s7
                  bgeu         s7, s6, 601f
                  blt          s10, a3, 607f
                  and          s8, s0, t5
                  auipc        a6, 844252
                  sub          s9, s8, ra
                  slti         a6, s3, -23
                  bge          s9, s8, 604f
                  srai         ra, t4, 5
                  xor          ra, s0, s3
601:              sra          s9, s9, s5
                  bne          t3, t5, 617f
                  slti         a3, a0, -1727
604:              blt          s9, s3, 615f
                  xori         s1, t1, -1555
                  bne          s2, a7, 613f
607:              lui          a1, 69273
                  add          s1, s7, s11
                  andi         s8, t3, 1845
                  auipc        a7, 757300
                  lui          s5, 193051
                  slt          a4, s7, s4
613:              bge          a2, a2, 633f
                  and          a5, s2, a6
615:              sltu         s4, s11, s10
                  slti         s8, t6, 1987
617:              srli         s2, a3, 13
                  sub          s4, a2, a6
                  slti         t3, a1, -1207
                  andi         zero, s6, -1657
                  addi         s0, s0, 1075
                  srl          s9, s0, a4
                  xor          a1, t2, s7
                  slt          a7, t5, t0
                  bne          t0, s9, 640f
                  or           ra, s0, a7
                  xor          s5, zero, t6
                  bgeu         t0, t1, 647f
                  slt          s7, s4, s8
                  slt          s7, s10, t2
                  blt          s0, a5, 637f
                  sub          gp, s5, s8
633:              sub          s2, a4, t5
                  ori          tp, gp, 1845
                  slti         a7, sp, 155
                  bne          t6, sp, 652f
637:              sltiu        t5, a7, -1094
                  xor          ra, a7, a0
                  blt          s1, s4, 657f
640:              slli         t1, zero, 28
                  auipc        zero, 842091
                  xori         s9, t3, -1518
                  auipc        s11, 882543
                  sra          s1, a0, t5
                  slt          a3, t3, a6
                  sltiu        a1, a4, -645
647:              add          a5, t4, a6
                  xor          ra, s3, s1
                  sub          t6, a0, a4
                  bge          t3, s1, 669f
                  srl          s4, t5, s3
652:              blt          sp, ra, 658f
                  srl          s4, a4, a2
                  slt          s2, s8, t5
                  srl          s4, t0, s8
                  lui          t5, 338887
657:              srl          sp, s11, tp
658:              sll          t5, t3, t1
                  srl          s0, s10, a4
                  bge          t5, s9, 668f
                  bge          s10, t3, 667f
                  xor          s1, a1, s6
                  and          tp, t1, a6
                  srai         t5, a1, 5
                  srli         zero, gp, 22
                  bgeu         s9, a4, 672f
667:              ori          a4, s9, 1542
668:              nop
669:              or           t1, a7, t1
                  sltiu        a5, s1, -43
                  addi         t0, a5, 833
672:              lui          t3, 302087
                  ori          t3, s0, 1992
                  slli         a4, zero, 15
                  and          a1, s0, tp
                  bge          s2, s7, 691f
                  bge          s7, a4, 696f
                  xor          t6, s0, s8
                  xori         a0, a2, -810
                  xori         t6, t2, -1638
                  andi         zero, s8, 2002
                  slli         t4, a6, 9
                  xor          s1, t6, zero
                  slt          s8, s9, a7
                  slli         a3, t0, 24
                  sub          t6, s11, s8
                  auipc        s1, 234480
                  nop
                  sra          t5, t5, s9
                  add          t2, sp, t5
691:              auipc        s8, 660252
                  andi         s7, s7, -94
                  and          sp, a3, t6
                  auipc        s1, 298076
                  srai         s4, t3, 13
696:              srli         ra, t0, 19
                  sll          s1, s3, s9
                  blt          s4, sp, 713f
                  blt          s2, t6, 710f
                  ori          t0, t6, 719
                  ori          ra, s1, 820
                  sra          t3, ra, s5
                  blt          s8, s1, 722f
                  lui          a3, 943109
                  slt          gp, s7, t6
                  bgeu         t0, sp, 709f
                  and          s6, s8, a0
                  auipc        s7, 968690
709:              sub          a0, s10, s8
710:              bgeu         s0, s4, 720f
                  xori         a5, gp, 1799
                  andi         t4, s11, 2013
713:              or           t5, s1, s6
                  slli         gp, a5, 19
                  addi         t0, t0, -1182
                  sra          a0, t1, s5
                  beq          t6, zero, 720f
                  nop
                  bne          s3, s6, 728f
720:              slli         a0, t0, 13
                  xor          ra, a0, a1
722:              sltiu        t0, a0, -1892
                  srli         s2, s10, 17
                  lui          a0, 250680
                  addi         s0, s0, -185
                  srl          sp, t2, s0
                  or           s4, a1, t6
728:              bgeu         sp, s9, 739f
                  slli         s2, ra, 19
                  sra          t0, s10, s0
                  auipc        a1, 581781
                  srai         ra, s4, 5
                  sltu         a5, ra, ra
                  lui          a7, 607269
                  slti         s6, a0, -1397
                  sltu         s0, a2, a1
                  sltu         gp, a5, s10
                  andi         t6, s7, -27
739:              slli         s0, ra, 15
                  srl          t4, a1, s8
                  or           s11, t5, t0
                  srl          a3, t2, a0
                  srai         sp, a4, 8
                  lui          tp, 320598
                  bltu         a3, t4, 761f
                  andi         s6, a6, 817
                  or           s9, a2, a3
                  bgeu         tp, s5, 764f
                  xori         s1, tp, 1416
                  and          t3, s7, a4
                  bge          s3, t6, 757f
                  bltu         s7, t3, 759f
                  bltu         a5, a5, 773f
                  bge          s1, s10, 767f
                  slt          zero, t4, zero
                  slt          t1, a4, t1
757:              slti         s4, a4, -1240
                  sub          s1, s11, s4
759:              nop
                  slli         t1, s11, 13
761:              ori          a3, s6, 653
                  xor          t5, s3, a1
                  addi         a7, tp, -1206
764:              sra          t5, t6, a6
                  auipc        a0, 86183
                  slti         a4, t3, 934
767:              blt          s0, t1, 770f
                  addi         sp, s9, -286
                  slti         s9, a3, -1932
770:              bge          t6, t1, 783f
                  slli         t1, gp, 31
                  blt          a4, s7, 781f
773:              addi         t2, s1, 1483
                  sll          s7, t2, a7
                  srli         t6, a3, 16
                  slt          t0, zero, gp
                  bgeu         s6, sp, 797f
                  slti         zero, zero, -635
                  add          t2, s3, s11
                  sll          ra, t1, a6
781:              sltu         t6, sp, gp
                  xori         s4, s3, 1475
783:              sub          a3, s11, t1
                  slti         t4, a2, 820
                  andi         a0, s1, -1400
                  sltu         t4, a1, a2
                  beq          gp, t5, 801f
                  bge          s6, sp, 807f
                  sub          a3, s3, t5
                  slli         s0, s2, 29
                  bne          a6, a2, 809f
                  and          s11, s10, s1
                  or           gp, t0, a6
                  auipc        a3, 156701
                  addi         a4, s9, 608
                  bne          a3, a5, 811f
797:              xor          t3, t2, s6
                  sltu         zero, gp, gp
                  slti         s6, t1, -87
                  ori          a6, a1, -1041
801:              srai         a5, t0, 0
                  nop
                  auipc        s1, 830305
                  lui          gp, 984043
                  bgeu         a0, t3, 823f
                  srli         sp, t2, 15
807:              bge          s10, t5, 821f
                  bltu         s8, s1, 827f
809:              bne          t6, s3, 825f
                  xori         t1, zero, 1403
811:              bne          t0, t1, 831f
                  sltu         s4, t2, s0
                  blt          s11, a2, 826f
                  srai         s9, s1, 31
                  auipc        s9, 210770
                  and          zero, s11, sp
                  sltu         s0, t1, s3
                  srl          a3, s8, t3
                  lui          a5, 572801
                  sub          s4, s6, s1
821:              srl          s8, s11, s5
                  srli         t4, t6, 12
823:              xor          s9, gp, s5
                  xor          s7, a1, s10
825:              ori          s8, t4, 1108
826:              ori          s1, s1, 1401
827:              bne          a2, sp, 842f
                  bge          t1, a4, 847f
                  or           s2, ra, ra
                  slti         s9, s7, 1598
831:              add          s6, t3, ra
                  auipc        t5, 655558
                  sra          gp, sp, s3
                  sra          a5, sp, a3
                  srl          s8, s9, a4
                  sll          gp, s6, t0
                  slli         t5, a1, 2
                  srli         s9, t1, 24
                  bltu         s3, s6, 858f
                  beq          sp, s6, 843f
                  srai         zero, a1, 26
842:              bne          a1, s7, 856f
843:              bgeu         t4, a4, 854f
                  ori          s1, t0, -950
                  add          t6, a5, s6
                  beq          a1, a0, 866f
847:              blt          a1, gp, 861f
                  sll          a4, s6, a4
                  sll          sp, t1, s2
                  slti         ra, t5, -1809
                  slt          t2, s7, a1
                  sltiu        s2, ra, -850
                  or           t3, t3, a2
854:              beq          s8, gp, 865f
                  srli         t5, a6, 12
856:              sll          a4, a0, s8
                  sub          s7, s6, s0
858:              addi         a1, s7, 1242
                  auipc        a7, 7326
                  srl          tp, s3, t0
861:              slt          a1, s3, s3
                  srl          s5, a0, tp
                  lui          s6, 129555
                  blt          t4, s5, 883f
865:              lui          a6, 544442
866:              or           t5, s0, s7
                  bgeu         s6, gp, 876f
                  xori         sp, t0, 728
                  xori         zero, s6, 1235
                  andi         t1, tp, 758
                  srli         s1, s1, 20
                  sltiu        a1, t4, 1614
                  bltu         a5, t4, 886f
                  slli         s7, s7, 22
                  sub          t0, ra, s5
876:              addi         s11, a7, -447
                  blt          gp, s1, 885f
                  and          s2, s11, a1
                  xor          s6, s9, s2
                  sll          t6, s6, a2
                  slli         s4, tp, 24
                  auipc        a6, 696783
883:              ori          s2, ra, -983
                  andi         t3, a5, -1610
885:              addi         s2, ra, -1047
886:              or           t3, zero, sp
                  lui          s0, 598680
                  bge          t1, t3, 907f
                  bge          ra, s11, 895f
                  blt          t6, s6, 897f
                  addi         tp, sp, -1001
                  and          s7, s11, t1
                  sltiu        t5, s1, 1600
                  sra          tp, t3, t3
895:              sub          s4, a1, s9
                  nop
897:              sll          s5, a2, ra
                  bgeu         a0, sp, 904f
                  bgeu         a1, s3, 914f
                  xori         t4, s3, 539
                  slt          t6, s10, s5
                  srli         t5, a6, 2
                  beq          sp, s11, 909f
904:              srli         s6, tp, 3
                  sltu         a1, s4, t3
                  sub          a7, t4, s10
907:              lui          a1, 155924
                  sll          a7, s7, tp
909:              add          s9, s3, a2
                  bgeu         ra, a3, 928f
                  slt          a0, a2, s0
                  slti         ra, s6, 1839
                  addi         s0, s3, -1373
914:              auipc        t3, 896746
                  ori          s4, t3, -115
                  slti         s11, sp, -605
                  slt          t3, a1, s4
                  addi         t4, a5, 1679
                  auipc        gp, 470387
                  xor          a6, s6, t3
                  bge          t3, s1, 924f
                  sra          t2, s3, s6
                  auipc        s1, 903637
924:              slt          s7, t4, s6
                  sltu         a4, t6, s7
                  addi         t4, s0, -950
                  slti         s8, s7, -1836
928:              ori          t3, t5, 251
                  beq          s7, s10, 947f
                  slt          t6, s5, a5
                  addi         ra, s0, 441
                  xori         a5, s2, -980
                  bge          a0, a5, 943f
                  bgeu         ra, a0, 950f
                  sub          t6, gp, s8
                  srai         sp, s9, 21
                  and          s6, a6, tp
                  bne          s9, a3, 941f
                  lui          a4, 272606
                  ori          t1, t2, 1416
941:              srai         t3, a6, 31
                  bge          t5, s4, 951f
943:              sub          s7, sp, ra
                  sra          s1, s3, s10
                  bltu         ra, s11, 960f
                  and          s4, s2, tp
947:              bltu         t3, s4, 966f
                  srl          s0, a0, a2
                  sltiu        t0, s2, 1884
950:              slti         t4, a7, 1247
951:              sltu         a3, t0, a6
                  slli         s7, s8, 11
                  slti         tp, gp, 1565
                  srli         s0, a5, 2
                  or           a0, sp, a0
                  or           zero, t2, a6
                  and          a7, a4, gp
                  bltu         t5, s5, 964f
                  auipc        zero, 146543
960:              auipc        s8, 99927
                  bgeu         t0, sp, 968f
                  auipc        a4, 422562
                  ori          s9, s10, -888
964:              and          s2, a5, tp
                  srli         a3, s1, 10
966:              sra          s8, a1, a4
                  srli         s0, s8, 8
968:              bgeu         tp, s5, 979f
                  and          s11, s8, sp
                  add          a3, a4, a7
                  addi         s1, ra, -1307
                  addi         s0, zero, 1445
                  bne          s1, a1, 976f
                  srai         tp, s0, 22
                  bge          s9, t0, 984f
976:              ori          t1, s7, 695
                  sll          s7, tp, a5
                  slli         a7, s7, 0
979:              sltiu        s0, sp, -1670
                  and          t6, s2, s4
                  xori         s7, s6, -1184
                  srai         gp, sp, 26
                  lui          s7, 72176
984:              srai         s1, ra, 2
                  auipc        tp, 847244
                  sub          zero, t0, a6
                  addi         s8, s5, 1468
                  blt          s4, s11, 991f
                  srl          s2, a6, s6
                  slt          s2, t3, s1
991:              bne          t5, s4, 1004f
                  srai         zero, s3, 2
                  bge          s8, a1, 1008f
                  beq          s3, a6, 1004f
                  blt          s5, a6, 1008f
                  bge          sp, s8, 1014f
                  sll          s9, a5, a5
                  slt          a4, t4, s6
                  sll          t0, tp, s2
                  sra          t4, a7, s10
                  add          s4, zero, t3
                  sltiu        a6, tp, -487
                  andi         t0, t2, -750
1004:             bgeu         s3, t0, 1023f
                  nop
                  blt          s10, a5, 1017f
                  andi         a6, s0, 1610
1008:             auipc        a5, 711919
                  bge          t0, s5, 1025f
                  bgeu         tp, t3, 1025f
                  slti         a4, s1, -1581
                  auipc        a5, 150564
                  nop
1014:             slli         s1, a5, 30
                  sltiu        gp, s4, 309
                  sra          s2, zero, a1
1017:             andi         s8, a2, 627
                  nop
                  bltu         a7, t2, 1037f
                  sll          s4, t5, a2
                  xor          t1, s1, a3
                  bltu         s1, s4, 1030f
1023:             srli         a7, s9, 31
                  bge          t2, s3, 1044f
1025:             blt          s8, t6, 1039f
                  auipc        s5, 213900
                  ori          t1, a0, -21
                  add          s11, s1, tp
                  bne          a0, t1, 1032f
1030:             xor          t4, sp, t6
                  bgeu         t2, a5, 1040f
1032:             slli         a7, tp, 25
                  sltiu        t6, s2, -225
                  bne          s11, gp, 1054f
                  srai         s8, t1, 11
                  slti         zero, a7, 102
1037:             srli         a7, s7, 24
                  srli         s2, t1, 16
1039:             slli         s9, a0, 7
1040:             addi         s0, t3, 2019
                  srli         a6, a6, 0
                  or           t4, t3, s4
                  bltu         a7, ra, 1062f
1044:             blt          s11, a3, 1060f
                  slti         s7, a3, 936
                  and          sp, s10, s10
                  or           t3, s6, t3
                  slt          s1, s5, s9
                  xori         ra, s4, 874
                  slti         a7, ra, -726
                  bgeu         t2, t0, 1065f
                  sltiu        t0, a7, -942
                  bge          sp, ra, 1059f
1054:             bge          t3, s1, 1073f
                  and          s2, a3, s6
                  lui          s9, 882714
                  add          a7, ra, s7
                  xori         t3, s7, -812
1059:             bge          a2, a4, 1074f
1060:             srli         s6, a2, 0
                  bgeu         gp, a1, 1067f
1062:             andi         s6, a5, -1110
                  srai         t0, s6, 13
                  and          s1, t6, gp
1065:             bne          t2, s10, 1071f
                  sll          zero, a1, t1
1067:             slli         t2, t1, 20
                  add          s7, s6, s7
                  blt          tp, a4, 1082f
                  bgeu         t1, s5, 1089f
1071:             srl          s1, s5, s8
                  xori         ra, t4, -180
1073:             auipc        zero, 157632
1074:             bltu         a7, s3, 1083f
                  ori          s11, s11, 1916
                  bne          s6, s0, 1092f
                  add          sp, s3, t2
                  beq          a0, t1, 1097f
                  nop
                  slt          zero, a4, s2
                  srl          s9, sp, a6
1082:             sll          s2, a7, t2
1083:             ori          ra, t0, 1045
                  bgeu         s5, a1, 1092f
                  add          s8, s8, tp
                  and          s4, s3, t6
                  ori          s0, a2, 1094
                  srai         ra, s8, 24
1089:             lui          s9, 925805
                  addi         ra, s10, -1250
                  andi         a1, zero, -82
1092:             slt          s6, s10, s8
                  slli         t0, s5, 4
                  xor          t6, a5, s4
                  sra          a4, s2, tp
                  blt          a5, t3, 1111f
1097:             lui          s0, 505523
                  nop
                  slli         s4, s3, 29
                  and          a6, ra, gp
                  ori          s2, s11, 1834
                  bltu         s10, a5, 1112f
                  sll          s2, s9, s8
                  srli         s9, a0, 28
                  nop
                  xor          s7, a5, a6
                  sra          t4, s11, sp
                  add          t5, t6, a0
                  sll          t5, t3, s0
                  xori         s0, s9, 1576
1111:             slli         s9, s6, 18
1112:             bltu         a1, s8, 1123f
                  xori         gp, a2, 744
                  slti         s1, a7, -1253
                  sra          zero, t1, t3
                  sltiu        s9, t0, -1145
                  slti         a1, s6, -712
                  bne          s11, a6, 1121f
                  bne          sp, s8, 1125f
                  auipc        t2, 103173
1121:             nop
                  andi         a4, tp, -1655
1123:             beq          t4, s0, 1139f
                  xori         a6, tp, 1401
1125:             sra          tp, t0, s9
                  auipc        ra, 516016
                  auipc        tp, 107456
                  ori          gp, s8, -1302
                  slt          sp, a0, a5
                  bge          gp, t6, 1133f
                  andi         tp, s3, -1125
                  bgeu         t3, a0, 1150f
1133:             sub          t0, s11, a6
                  andi         tp, s0, -1129
                  addi         s2, sp, 561
                  sltiu        t2, t4, 1038
                  bltu         s8, s2, 1157f
                  addi         t0, ra, -1263
1139:             slti         t2, a5, 1635
                  bne          s11, a0, 1159f
                  sltu         t1, t0, a3
                  sltu         s4, s10, t5
                  andi         ra, s11, -1996
                  addi         gp, s2, 1945
                  xori         s4, a7, -264
                  blt          s3, a5, 1160f
                  sra          tp, s1, ra
                  xor          a0, a1, a4
                  srli         s6, s9, 28
1150:             nop
                  srai         ra, t3, 20
                  srli         s7, ra, 10
                  sll          s11, s9, a2
                  srli         s5, a4, 17
                  bge          s7, t0, 1166f
                  srai         sp, a0, 13
1157:             srli         s0, s7, 27
                  slli         t5, s10, 8
1159:             bge          a3, tp, 1179f
1160:             bge          a2, s2, 1166f
                  sltu         t3, t2, s3
                  sub          a1, a7, t4
                  lui          tp, 869813
                  srai         s4, s2, 18
                  and          gp, a6, t2
1166:             or           t6, t1, sp
                  or           s4, s5, gp
                  lui          s7, 15421
                  lui          tp, 853080
                  xori         ra, s11, 1595
                  beq          a7, t6, 1185f
                  sltiu        a3, s3, 1356
                  srl          t6, t6, a7
                  lui          gp, 636986
                  sra          t4, t1, zero
                  blt          t1, t2, 1185f
                  slt          s8, s7, t3
                  slti         tp, a7, -257
1179:             slt          t1, s8, a4
                  slt          s5, t2, s8
                  and          a6, s9, s9
                  sll          s4, s2, tp
                  and          sp, s6, sp
                  ori          s6, t6, 985
1185:             slti         s9, t1, 196
                  andi         zero, a2, 302
                  sub          s0, s7, a0
                  sll          a3, sp, a3
                  bge          gp, s9, 1192f
                  and          s2, sp, t5
                  sltu         sp, t4, zero
1192:             lui          s7, 476162
                  slli         a3, s4, 24
                  sltu         s9, s1, ra
                  bne          tp, a6, 1213f
                  nop
                  ori          t4, a2, -1826
                  blt          ra, s11, 1211f
                  or           a4, s6, ra
                  and          a6, s11, s4
                  bne          a1, t6, 1208f
                  add          a6, sp, s6
                  sra          sp, s6, s4
                  blt          s9, s5, 1223f
                  xori         s7, t5, -1595
                  bge          t0, s4, 1221f
                  bgeu         t0, t4, 1222f
1208:             xor          tp, s10, tp
                  auipc        t5, 163458
                  slt          t1, s11, s4
1211:             sll          a5, s1, s7
                  ori          gp, t5, 1708
1213:             srai         t1, a5, 15
                  sltu         s8, tp, t4
                  sub          a0, s0, s3
                  bgeu         t0, t4, 1236f
                  srli         t1, ra, 17
                  bgeu         s2, s10, 1237f
                  sltiu        tp, a4, 2025
                  srai         a3, t3, 21
1221:             sll          t6, t3, a4
1222:             add          a4, s8, t0
1223:             bne          t5, a4, 1231f
                  sltiu        a1, sp, 290
                  addi         t2, t3, 763
                  sub          s4, t4, a7
                  srai         s7, a7, 11
                  add          t3, s2, s11
                  sltu         s1, a2, s7
                  sltiu        t6, t6, -1038
1231:             srai         s11, a7, 6
                  sub          a5, sp, zero
                  add          zero, a6, s6
                  bne          t4, t5, 1245f
                  slti         s0, a7, 202
1236:             bne          t4, t5, 1252f
1237:             add          s6, s8, s9
                  srl          s11, a6, s0
                  srli         gp, a2, 31
                  sra          ra, s0, s3
                  and          t6, t6, s1
                  sll          s6, t6, s4
                  ori          s4, t1, -316
                  srai         gp, sp, 0
1245:             or           s1, gp, s0
                  sub          s8, a0, s6
                  slti         t5, a4, -926
                  andi         sp, a7, -1506
                  slli         s8, sp, 25
                  srl          s1, a7, s4
                  and          zero, gp, s9
1252:             ori          t2, s6, 1182
                  srli         s11, s5, 24
                  blt          s4, t1, 1264f
                  srai         t2, a7, 9
                  srli         t3, a5, 20
                  srl          a3, s11, ra
                  add          a6, ra, s9
                  add          t4, s5, a0
                  bltu         a3, a4, 1267f
                  bgeu         s6, s2, 1276f
                  bgeu         ra, a5, 1282f
                  auipc        s11, 439947
1264:             or           t4, gp, a2
                  ori          a1, a5, -559
                  sub          s2, t3, a4
1267:             srli         tp, t5, 29
                  sltu         s7, a6, a3
                  bge          a0, s11, 1288f
                  andi         a4, a4, 387
                  sltu         a3, s0, a1
                  sltiu        s9, t5, 1533
                  nop
                  add          a3, s7, a6
                  beq          t3, s3, 1289f
1276:             slti         zero, t0, 1878
                  auipc        s7, 25773
                  bne          a3, t3, 1293f
                  slt          t3, zero, a1
                  xor          s1, s3, t3
                  andi         a4, s0, 1045
1282:             bltu         a6, a1, 1291f
                  xori         t3, s1, 1825
                  blt          ra, a7, 1287f
                  sltu         t0, s7, a0
                  srl          s1, s0, t1
1287:             bge          a5, t6, 1293f
1288:             xor          a3, t4, t0
1289:             sltiu        zero, gp, -385
                  bne          t4, s6, 1308f
1291:             bge          zero, s8, 1310f
                  auipc        gp, 36804
1293:             slli         sp, zero, 8
                  sltu         t2, s9, s8
                  auipc        sp, 629562
                  xor          t2, a3, a1
                  addi         s6, tp, 1781
                  and          sp, s0, gp
                  sltiu        t2, t3, 211
                  sra          t0, a1, t0
                  xor          s1, s11, t2
                  sltiu        tp, t1, 265
                  andi         s11, t5, -1595
                  srl          t6, s10, s10
                  auipc        t3, 700927
                  sub          s5, sp, a2
                  srl          t4, s11, s7
1308:             beq          s0, t5, 1319f
                  ori          gp, s7, -1102
1310:             ori          s1, s7, -387
                  sltu         s5, s1, s7
                  slti         s6, s4, -92
                  srl          a0, a1, zero
                  and          zero, a2, t6
                  srli         tp, s4, 5
                  srai         t5, a3, 26
                  bge          s5, gp, 1323f
                  andi         ra, t3, -1595
1319:             srl          t2, a3, tp
                  xori         t4, a4, -2005
                  or           t2, s3, t3
                  slti         a1, t6, 1649
1323:             srli         s8, t2, 31
                  auipc        t3, 801018
                  ori          s1, s9, -1376
                  sra          a4, sp, s9
                  beq          gp, s1, 1330f
                  and          s6, s9, s6
                  srai         t0, s9, 15
1330:             sra          t4, s5, t1
                  auipc        tp, 167446
                  addi         t6, s8, 1533
                  slli         gp, t3, 25
                  or           tp, s6, a7
                  ori          s4, t5, -632
                  beq          s5, a6, 1339f
                  andi         sp, t5, -981
                  bgeu         s1, s0, 1352f
1339:             srl          s9, a0, a6
                  ori          gp, s7, -1964
                  sll          t4, a4, s10
                  bne          a5, a2, 1355f
                  bge          t6, a4, 1361f
                  bltu         a1, s9, 1360f
                  sltiu        ra, s1, -271
                  nop
                  slt          tp, s1, a6
                  blt          a5, a3, 1354f
                  sll          s0, t1, sp
                  bgeu         t1, s4, 1365f
                  sub          a5, t2, t1
1352:             srl          s11, s5, s8
                  lui          a6, 882724
1354:             xor          s6, ra, ra
1355:             add          s8, ra, sp
                  bne          t3, sp, 1369f
                  srl          a4, t4, t6
                  slti         t1, t0, 1605
                  slt          sp, gp, s2
1360:             and          s0, t1, s8
1361:             or           t3, s6, t1
                  bne          t0, s2, 1378f
                  slt          tp, a2, a3
                  slli         t0, s8, 30
1365:             andi         a7, s0, -1119
                  or           s2, s9, t3
                  beq          t0, a4, 1376f
                  auipc        a6, 100136
1369:             bgeu         s4, a6, 1378f
                  srai         s8, s2, 18
                  bge          t1, a7, 1378f
                  srai         a4, s8, 17
                  srai         s6, t6, 14
                  andi         t5, a1, -2048
                  beq          a5, s6, 1378f
1376:             slli         sp, a1, 15
                  blt          s11, s9, 1378f
1378:             slli         a1, a1, 1
                  lw           ra, 4(a2)
                  xor          t4, t0, s10
                  sltiu        t0, ra, -103
                  andi         s5, s11, 1208
                  ori          s7, s5, 1830
                  xor          a1, sp, a1
                  or           s4, a0, s11
                  srl          s11, s8, a5
                  addi         a2, a2, 48
                  and          a4, t5, a2
1828:             addi x5, x1, 1
1828:             jalr x5, x5, 0
sub_1:            auipc        a1, 1008792
                  slli         a4, a7, 11
                  bltu         t0, gp, sub_1_stack_p
                  or           s2, a5, a0
                  sltu         a1, s1, s11
                  slt          a4, s4, t0
sub_1_stack_p:    addi         a2, a2, -32
                  xori         s11, s11, 698
                  sw           ra, 4(a2)
                  slt          s7, ra, sp
                  xori         ra, s10, -1951
                  sltiu        s8, s6, -1706
                  la           gp, sub_2
                  slt          a4, tp, a0
                  addi         gp, gp, -427
                  sll          t4, a4, t2
                  lui          s5, 609212
                  ori          s7, t0, 1519
                  bgeu         s1, s7, sub_1_j2 #branch to jump instr
                  addi         t0, s0, -603
                  slt          a0, a5, s4
sub_1_j2:         jalr         ra, gp, 428 #jump sub_1 -> sub_2
                  la           t2, region_1+693 #start riscv_load_store_rand_instr_stream_2
                  sw           t4, 931(t2)
                  xori         s7, t6, -921
                  or           ra, t2, tp
                  xor          s1, a5, s7
                  addi         t0, s8, 1044
                  sll          s11, gp, t6
                  lb           s8, -13(t2)
                  xori         t0, zero, -606
                  sltu         a3, s6, gp
                  sb           t1, -357(t2)
                  sb           a3, -112(t2)
                  xori         gp, t0, -1800
                  andi         s4, zero, 389
                  srai         ra, s8, 25
                  sb           gp, 632(t2)
                  lbu          s0, -182(t2)
                  lb           s6, -296(t2)
                  sw           t3, -517(t2)
                  lb           a4, 1268(t2)
                  srli         s2, t4, 16
                  sll          a7, t5, s4
                  lb           zero, 1126(t2)
                  sb           s4, 910(t2)
                  lb           t6, 914(t2)
                  ori          t0, s11, -427
                  sw           ra, 459(t2)
                  slt          t4, t6, s11
                  lbu          a3, 849(t2)
                  lw           t3, -65(t2)
                  sb           t0, 724(t2) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_0+296 #start riscv_load_store_rand_instr_stream_0
                  lb           t6, -251(s4)
                  sb           t6, 784(s4)
                  lbu          t2, 1199(s4)
                  slli         a4, gp, 20
                  sltiu        ra, ra, 603
                  sw           s4, 1304(s4)
                  sb           t3, -164(s4)
                  sb           s9, 445(s4)
                  slti         a1, tp, -541
                  sb           a0, 846(s4)
                  lbu          t4, -272(s4)
                  lb           s8, 479(s4)
                  lb           s2, 223(s4)
                  or           s6, s1, s11
                  lui          sp, 206503
                  slli         a1, s10, 12
                  and          tp, a3, a3
                  srai         sp, t2, 6
                  sh           s6, 1594(s4)
                  lh           tp, -226(s4)
                  lh           sp, 1444(s4)
                  sb           tp, -103(s4)
                  sub          s0, gp, t3
                  lui          s6, 882987
                  lbu          a5, 1603(s4)
                  lb           t1, 769(s4)
                  lui          s11, 643769
                  slli         s6, s5, 17
                  slli         t3, s11, 6
                  lbu          t3, 540(s4)
                  lw           t5, 96(s4)
                  and          tp, a3, s4
                  lbu          t5, 1219(s4)
                  or           t5, a4, s4
                  xor          t6, a2, s5
                  lbu          a6, 1199(s4)
                  slti         t4, t5, 971
                  sb           t3, 571(s4)
                  sw           t3, 720(s4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1994 #start riscv_load_store_rand_instr_stream_3
                  sb           sp, 1(sp)
                  lb           t6, -33(sp)
                  addi         s4, s9, -789
                  auipc        a0, 218988
                  sw           t0, -18(sp)
                  andi         t6, a5, -1656
                  sh           a0, -6(sp)
                  lb           s5, -39(sp)
                  nop
                  lb           s7, -19(sp)
                  sub          gp, sp, tp
                  sltiu        s8, s5, -1516
                  srli         zero, s11, 17
                  lb           s7, -21(sp)
                  nop
                  andi         s2, a0, 1453
                  srai         a0, a0, 28
                  slti         s2, zero, 515
                  lui          s5, 844201
                  auipc        tp, 939598
                  lbu          t6, -45(sp)
                  lbu          gp, -30(sp)
                  lb           a0, -47(sp)
                  slli         t2, ra, 22
                  lb           a7, -32(sp)
                  auipc        s4, 39861
                  lb           ra, -5(sp)
                  xor          s8, a3, a3
                  lw           s8, -54(sp)
                  sb           zero, -29(sp)
                  nop
                  sb           s3, -48(sp)
                  addi         tp, t2, 267
                  lh           a6, -60(sp)
                  lw           t6, -18(sp)
                  slti         ra, t1, 858
                  xor          t5, s8, s0
                  sb           s11, 5(sp)
                  sh           s0, 2(sp)
                  lb           a7, -24(sp)
                  nop
                  sb           a0, -40(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+1108 #start riscv_load_store_rand_instr_stream_1
                  lhu          tp, -100(a0)
                  nop
                  xori         gp, s10, 1481
                  lh           t5, 252(a0)
                  lb           zero, 147(a0)
                  sb           a1, 197(a0)
                  lui          s9, 941979
                  sra          t6, t5, t5
                  srl          s1, t3, ra
                  andi         t0, s0, 1217
                  or           ra, a0, t6
                  lh           t5, 246(a0)
                  lh           t5, -236(a0)
                  lbu          t2, 211(a0)
                  lh           a3, -148(a0)
                  auipc        t6, 88944
                  lb           s9, 162(a0)
                  xori         t0, a0, -892
                  sll          s6, s10, s8
                  lb           zero, 105(a0)
                  sb           a2, 251(a0)
                  sb           a3, 129(a0)
                  sh           s0, -214(a0)
                  nop
                  slti         t3, zero, -234
                  sh           a2, 120(a0) #end riscv_load_store_rand_instr_stream_1
                  andi         t5, a1, -2046
                  lui          s0, 769567
                  sub          s6, a5, s0
                  auipc        s5, 331481
                  xor          s2, t6, t0
                  sll          zero, a4, a5
                  or           gp, a4, s3
                  sra          s2, t3, ra
                  or           a6, sp, s8
                  add          t5, tp, sp
                  slti         t5, s7, 1843
                  sltu         s4, s0, s4
                  auipc        gp, 855761
                  xori         sp, s10, -190
                  sub          t4, gp, a6
                  lui          t5, 677994
                  auipc        sp, 565068
                  bgeu         t5, t6, 35f
                  slti         s11, s3, 1244
                  bgeu         s9, s0, 32f
                  slt          s1, t2, s5
                  slti         t2, a7, -1010
                  auipc        t5, 707157
                  sltiu        sp, s3, -1388
                  or           ra, t3, t0
                  lui          s2, 412139
                  beq          a6, t1, 37f
                  xori         t1, a7, -711
                  slli         t2, a2, 29
                  slt          a1, sp, a2
                  addi         t5, t1, -1581
                  bne          a2, s6, 36f
32:               bne          t0, s9, 46f
                  sll          s11, s5, s2
                  beq          s1, s0, 47f
35:               nop
36:               srai         t5, a7, 19
37:               sltiu        s9, s8, 1470
                  nop
                  xori         a1, zero, 543
                  blt          t4, t6, 50f
                  bge          tp, t1, 60f
                  bgeu         s5, s3, 47f
                  slti         a3, s11, 619
                  ori          t2, a0, 1365
                  slti         zero, s3, -395
46:               bltu         s3, s8, 61f
47:               sltu         t0, a4, a4
                  slt          s5, a5, s7
                  bgeu         s0, s8, 53f
50:               or           s9, ra, a5
                  slt          s9, s7, t4
                  and          tp, s0, s10
53:               slt          a1, t0, t5
                  slti         s11, s2, -609
                  slt          a4, s5, s5
                  xor          t1, t6, s3
                  sltu         t3, t1, s11
                  sltiu        a1, t3, 825
                  addi         t1, sp, 1387
60:               blt          s7, a3, 64f
61:               sub          a7, gp, t5
                  lui          tp, 81058
                  add          sp, sp, s1
64:               nop
                  lui          t2, 400077
                  and          a1, a5, s5
                  and          s6, a4, a7
                  addi         t0, t3, 365
                  add          t6, t4, a1
                  andi         t2, t1, -139
                  bge          t5, s1, 91f
                  slti         t5, s10, 660
                  sub          gp, a2, sp
                  add          a3, s10, a7
                  andi         s5, a4, 33
                  srl          a6, s11, t4
                  or           s4, ra, s10
                  sltiu        zero, s3, -1133
                  xor          s2, t3, gp
                  slti         t6, tp, 489
                  ori          t5, s6, -322
                  bltu         a0, s0, 99f
                  and          a1, s5, a4
                  slli         a3, zero, 24
                  add          t5, tp, gp
                  sll          s7, t1, t6
                  add          a4, s6, s10
                  addi         a3, s7, 1324
                  srai         s7, s7, 0
                  xor          a1, a4, s1
91:               add          a6, t0, a4
                  nop
                  auipc        t0, 932007
                  ori          t0, t0, 587
                  xor          s11, s6, s7
                  slti         s11, zero, -250
                  or           t2, sp, s7
                  addi         a7, s1, -1364
99:               blt          t0, gp, 114f
                  srai         sp, ra, 16
                  beq          s8, s3, 114f
                  sltu         s7, t2, ra
                  addi         t6, t2, 1973
                  sub          zero, a1, t6
                  srai         t4, s7, 10
                  bltu         a1, t2, 115f
                  sub          zero, a3, t4
                  xori         s4, s9, 1567
                  or           a6, s2, a6
                  beq          a7, a7, 123f
                  xor          s6, zero, ra
                  addi         s6, s5, -1115
                  srai         s9, a6, 29
114:              srai         t5, s0, 11
115:              bge          tp, s5, 116f
116:              sra          s1, s11, zero
                  slti         s5, s10, 466
                  sll          s5, s1, s6
                  srli         s11, zero, 14
                  bgeu         s1, s6, 123f
                  andi         gp, a1, -1720
                  sltiu        t4, s5, -627
123:              sll          t2, s1, gp
                  or           a0, ra, s7
                  srli         t2, a1, 13
                  or           t4, t1, a3
                  sub          t2, a3, tp
                  blt          a7, s8, 136f
                  slli         a0, a5, 4
                  slti         t5, s4, 862
                  srl          s7, s11, s10
                  addi         s4, gp, 1954
                  bne          t0, t5, 137f
                  ori          s2, s2, -1936
                  andi         s7, t1, -1343
136:              srl          sp, t6, t4
137:              and          t1, s1, zero
                  blt          zero, a3, 152f
                  xor          s0, s1, a7
                  sra          s9, a2, a6
                  srl          s8, t1, s5
                  sll          s6, a2, a6
                  srl          s4, s11, s6
                  auipc        s8, 410618
                  xor          t1, a2, a5
                  lui          t3, 724176
                  bltu         s6, a5, 161f
                  bgeu         t4, zero, 159f
                  slt          s6, a2, s7
                  or           a4, sp, s0
                  add          a5, s2, s3
152:              srli         a0, s8, 10
                  srli         tp, t3, 13
                  addi         tp, t3, 1280
                  addi         s5, sp, -105
                  sub          t5, s8, t4
                  bne          a7, a6, 158f
158:              slti         t5, tp, -589
159:              bge          t5, zero, 176f
                  auipc        t4, 172160
161:              srli         tp, t5, 10
                  bltu         t0, gp, 171f
                  sub          zero, a5, ra
                  slti         s6, a4, -347
                  srl          s7, a4, a0
                  or           ra, s1, s9
                  srai         s1, a2, 16
                  sltiu        s2, a1, 94
                  srai         ra, a7, 0
                  slt          t6, s8, sp
171:              auipc        t2, 24475
                  add          s7, s10, s2
                  and          t6, t5, gp
                  sub          s8, ra, s2
                  bne          t1, a0, 183f
176:              addi         t5, s3, 719
                  bne          a6, gp, 195f
                  and          s0, a1, t5
                  addi         tp, a4, 903
                  xor          a4, s6, a5
                  sll          gp, t1, tp
                  slt          gp, t1, ra
183:              sll          a6, a0, s6
                  add          s5, tp, s7
                  andi         s9, zero, -255
                  addi         a0, s3, 24
                  xori         s5, s6, -256
                  sltiu        s11, s8, -1025
                  srai         gp, a5, 29
                  bgeu         s9, a4, 208f
                  add          a0, s2, t4
                  srli         a7, t6, 17
                  blt          s5, a0, 198f
                  sll          a5, t3, t0
195:              xori         s4, t0, -1661
                  srli         gp, a2, 16
                  bltu         a2, s3, 201f
198:              bge          a0, a5, 212f
                  sub          a3, s7, t5
                  ori          a3, t0, 466
201:              sltu         a1, t3, s10
                  sra          t4, gp, tp
                  xori         gp, s7, 2033
                  srli         s5, s6, 2
                  sub          tp, a1, a1
                  srl          t6, a6, t3
                  beq          a3, gp, 210f
208:              srli         s7, a2, 13
                  slt          s11, a1, a6
210:              bgeu         s2, a4, 223f
                  srli         s6, s7, 20
212:              blt          a7, s1, 227f
                  nop
                  srl          t4, s9, t3
                  lui          t0, 239103
                  sltiu        t0, t2, -163
                  addi         a6, t0, -664
                  nop
                  auipc        s5, 583787
                  addi         s1, s11, -406
                  bgeu         s0, t6, 232f
                  blt          t2, a6, 226f
223:              slli         t4, a1, 14
                  add          a1, s0, s4
                  nop
226:              sll          s9, a1, s5
227:              sll          s0, s7, s6
                  srai         s1, t2, 14
                  srai         t0, a0, 1
                  slli         s5, s0, 24
                  sltu         s9, t6, t2
232:              bltu         s11, t3, 251f
                  bgeu         s3, s1, 237f
                  bltu         t0, s11, 235f
235:              add          s8, s7, s1
                  sll          a3, a7, t1
237:              and          s4, s4, s9
                  xor          a7, s8, t4
                  and          a5, t2, a2
                  sltu         ra, t6, s7
                  auipc        s8, 95056
                  or           t6, t2, t1
                  slt          ra, s2, a0
                  or           a7, sp, a3
                  and          t1, s1, s10
                  sltiu        zero, s3, -992
                  xor          a7, t5, t5
                  nop
                  add          a7, s3, a1
                  ori          t1, a5, -1368
251:              srl          a0, a7, s0
                  xor          a4, s0, a7
                  slt          s8, a3, ra
                  nop
                  sra          t6, t5, s7
                  xor          s1, s8, s3
                  slt          t2, t2, t0
                  slli         s8, a2, 25
                  bge          t1, t0, 269f
                  and          t2, tp, s6
                  beq          t0, t0, 274f
                  srl          s5, s9, s10
                  srl          t1, t4, s6
                  slt          s4, a1, t4
                  srli         s6, s0, 17
                  xor          a5, t6, s2
                  slli         t0, s7, 28
                  ori          t0, a4, -1821
269:              slti         s6, s4, -498
                  slti         t3, a3, 482
                  lui          s9, 890212
                  and          gp, a1, t6
                  sltiu        t4, a5, 1800
274:              sub          t5, a4, t1
                  xor          s2, a6, s0
                  add          t0, t5, t3
                  ori          s6, s0, -196
                  ori          a4, a2, 273
                  auipc        a3, 962455
                  slli         s2, s6, 1
                  add          t3, s10, s4
                  andi         a7, sp, 599
                  srli         a0, s11, 6
                  xor          a0, tp, t3
                  srl          a6, s11, s3
                  srl          a1, ra, s3
                  srl          s11, s0, s4
                  slti         s9, s11, 917
                  slt          s4, a1, a7
                  srl          s0, a4, a1
                  bltu         s11, s10, 308f
                  andi         a1, tp, -727
                  and          a5, s5, s9
                  addi         a5, a3, 455
                  bge          s6, gp, 309f
                  slt          t6, a1, s11
                  lui          gp, 506354
                  bltu         a7, a7, 318f
                  slli         s1, t2, 25
                  sll          a4, s6, t3
                  auipc        t2, 632436
                  slti         s4, s4, -719
                  bltu         t1, t3, 312f
                  bltu         t2, s6, 312f
                  slt          t6, a2, s0
                  sltu         t4, s8, s7
                  bge          s7, s9, 321f
308:              bgeu         s11, t0, 317f
309:              bltu         a4, t4, 320f
                  slli         t4, s4, 15
                  nop
312:              addi         s7, s8, -1153
                  bgeu         t0, t1, 330f
                  srai         ra, ra, 22
                  slti         t5, a7, 1983
                  srl          a6, a0, s9
317:              nop
318:              ori          t1, a5, -1816
                  srl          s7, s1, s4
320:              srai         s7, s4, 9
321:              srai         t1, a2, 29
                  bge          a7, t3, 330f
                  slt          a1, a0, t3
                  lui          tp, 479050
                  xori         a4, a4, -999
                  slti         gp, zero, -1135
                  srai         t4, a6, 8
                  slt          a5, a6, sp
                  nop
330:              slti         t3, t2, 1350
                  sll          t3, tp, t4
                  srl          s5, ra, t0
                  srai         s2, t0, 27
                  srli         s7, ra, 28
                  xor          t4, s10, a0
                  bge          a1, s7, 337f
337:              sll          s1, a4, a1
                  bge          t6, s10, 351f
                  ori          t1, t6, -139
                  or           s0, s5, s0
                  srl          s2, t4, a7
                  addi         s9, t4, -1694
                  srl          s4, s4, s3
                  lui          a0, 952328
                  nop
                  bgeu         a6, s11, 359f
                  addi         s7, a3, -1391
                  nop
                  sub          s4, t0, t5
                  blt          s3, s5, 368f
351:              srli         a4, s11, 9
                  nop
                  sltu         s7, s1, sp
                  bgeu         ra, s9, 359f
                  slli         s0, s11, 18
                  slli         s2, t3, 8
                  sub          a5, tp, s8
                  srli         a7, t1, 7
359:              srl          s11, t6, t6
                  slti         s5, t6, 421
                  srl          t6, s11, t1
                  xor          t6, a0, a2
                  slt          a1, s0, a5
                  slt          s1, zero, t1
                  lui          t1, 877831
                  srl          ra, a2, a0
                  add          s7, t4, sp
368:              ori          s1, zero, -1573
                  xori         a1, t2, -588
                  andi         s4, a6, -1343
                  sub          a5, t5, s11
                  sll          s7, t0, s10
                  add          t6, s5, t6
                  slli         s11, s3, 5
                  addi         s6, zero, 170
                  sra          ra, s10, s10
                  add          s9, zero, gp
                  sltu         s6, tp, s11
                  bne          a1, t1, 394f
                  nop
                  ori          a4, t5, -471
                  addi         t2, s2, 1510
                  slt          a1, sp, t6
                  addi         zero, sp, 313
                  slli         a7, s2, 4
                  nop
                  srl          t3, a5, a2
                  bne          s11, sp, 403f
                  nop
                  slli         s6, a6, 29
                  xori         sp, gp, 557
                  and          zero, s3, a0
                  sltiu        s7, sp, 1947
394:              bltu         a7, s0, 407f
                  xor          s6, s2, s7
                  auipc        a6, 997171
                  beq          s0, a5, 415f
                  sub          s8, t3, s7
                  lui          ra, 412535
                  bge          s2, s5, 404f
                  auipc        sp, 28404
                  nop
403:              srli         a1, s0, 30
404:              nop
                  sltu         t1, a1, s3
                  sltu         t5, t6, s11
407:              xor          a5, s10, zero
                  bltu         a4, s5, 411f
                  and          s7, s4, zero
                  bgeu         s5, t3, 411f
411:              sub          t5, a0, a4
                  blt          a0, a2, 431f
                  lui          zero, 512915
                  srli         t0, gp, 7
415:              bge          t1, s6, 425f
                  sll          t6, a4, s11
                  or           a6, s0, a4
                  sll          s4, t1, a4
                  sub          zero, s7, t2
                  bne          s1, a7, 431f
                  nop
                  beq          s9, a1, 431f
                  nop
                  srl          a3, s6, t4
425:              slti         tp, s2, -1227
                  add          s11, a7, s1
                  bge          s5, t6, 447f
                  bltu         t0, s10, 445f
                  auipc        a4, 981556
                  sra          t0, s4, t4
431:              srli         t2, s3, 20
                  beq          s6, a2, 437f
                  sltiu        t6, s1, 319
                  bgeu         zero, s9, 442f
                  ori          t5, s4, -1511
                  xor          t5, s3, a6
437:              srli         s2, s6, 31
                  blt          s10, a7, 451f
                  sltu         a1, s1, a7
                  sltu         s9, s4, gp
                  blt          zero, s10, 452f
442:              sltiu        sp, sp, 149
                  sltu         a1, ra, a6
                  andi         a4, a7, 680
445:              sltu         t4, zero, t0
                  bge          ra, s11, 447f
447:              addi         s1, ra, -802
                  and          t6, a0, t6
                  add          gp, t6, t3
                  sltu         tp, t2, a5
451:              bgeu         a6, t6, 464f
452:              ori          t1, t2, -1953
                  srai         s9, gp, 18
                  or           s7, s11, s6
                  add          a4, s7, sp
                  beq          a1, s2, 470f
                  add          ra, s8, s9
                  ori          s6, s6, -813
                  addi         a1, ra, -1445
                  add          s6, s4, s5
                  sll          a0, s7, a2
                  sll          tp, t4, t5
                  auipc        s2, 43381
464:              sub          s9, t4, s3
                  addi         t1, a2, -123
                  bltu         t2, t0, 471f
                  or           t0, gp, zero
                  srl          a1, s5, a6
                  ori          a5, tp, 1841
470:              ori          a4, t3, 1103
471:              srai         s7, a0, 9
                  bne          ra, sp, 486f
                  bgeu         s0, a7, 487f
                  or           a0, s7, a7
                  auipc        t5, 756807
                  sltu         tp, s7, t6
                  bltu         t1, ra, 492f
                  addi         s11, ra, 902
                  add          a5, tp, s11
                  bgeu         s8, s3, 493f
                  srl          a1, a7, t4
                  sra          t3, a3, sp
                  sra          t0, a0, t4
                  sltiu        s2, t5, -1567
                  bne          t1, t6, 503f
486:              blt          a5, gp, 494f
487:              bge          s4, t3, 491f
                  sub          s7, a5, t5
                  bge          t3, s7, 506f
                  blt          a7, a0, 499f
491:              sltu         s0, s7, s8
492:              and          t5, s1, s10
493:              auipc        s0, 251365
494:              srl          sp, a3, a6
                  and          tp, a0, t5
                  addi         a7, a4, 1137
                  slli         a4, s10, 29
                  auipc        s4, 86411
499:              srai         gp, t0, 19
                  srl          s7, a7, a2
                  srai         s9, a5, 12
                  blt          a5, a0, 506f
503:              addi         s9, s6, -1949
                  blt          a3, s8, 509f
                  sra          t6, s3, s11
506:              sub          s11, a0, a1
                  slt          s9, tp, s6
                  andi         s2, ra, 1960
509:              ori          a6, a4, 1656
                  auipc        sp, 904062
                  xor          t2, s6, a3
                  bne          s9, t2, 520f
                  sltu         t0, s3, s2
                  andi         sp, s0, -724
                  sltiu        sp, a1, 79
                  auipc        a4, 584551
                  nop
                  sub          s2, s5, s9
                  nop
                  auipc        ra, 224013
                  andi         a0, s6, -1998
                  bne          t1, s11, sub_1_j3 #branch to jump instr
                  auipc        s1, 907130
                  slli         t5, s7, 24
                  slt          sp, s6, sp
                  or           s0, ra, sp
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  sltu         s1, t0, t2
                  blt          t4, s7, 536f
                  add          t6, t4, ra
520:              and          t2, t6, a0
                  sub          zero, t2, s11
                  addi         s7, tp, -1444
                  sra          a7, t3, s2
                  addi         t0, a7, -486
                  bne          s5, a0, 540f
                  bgeu         s8, s3, 540f
                  srli         a3, a2, 2
                  srl          s7, s6, s6
                  ori          zero, a1, -1924
                  slli         s7, t6, 10
                  slt          t2, s5, s7
                  sltu         a7, s1, a0
                  add          s0, tp, s8
                  andi         s4, t6, 2030
                  and          t6, s11, ra
536:              ori          t6, t2, -529
                  bgeu         s10, s0, 545f
                  xori         s0, t6, -1978
                  slli         t0, a0, 31
540:              sltu         s8, zero, s11
                  add          a0, s11, sp
                  sra          s4, t5, t1
                  nop
                  ori          a6, s10, 1276
545:              auipc        t1, 983832
                  add          t3, s5, s8
                  ori          t5, s6, 967
                  addi         s1, a0, 441
                  lui          s6, 74741
                  auipc        s9, 998903
                  slli         a4, s8, 6
                  lw           ra, 4(a2)
                  nop
                  lui          t4, 792148
                  addi         a2, a2, 32
                  slt          zero, a4, s6
                  andi         a7, s7, 1918
                  srl          a5, a2, a7
                  srli         s5, sp, 26
734:              addi x14, x1, 0
734:              jalr x14, x14, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x19, x12, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x4, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x4, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x4, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x4, x28, ecall_handler
                  li x28, 0x1
                  beq x4, x28, instr_fault_handler
                  li x28, 0x5
                  beq x4, x28, load_fault_handler
                  li x28, 0x7
                  beq x4, x28, store_fault_handler
                  li x28, 0xc
                  beq x4, x28, pt_fault_handler
                  li x28, 0xd
                  beq x4, x28, pt_fault_handler
                  li x28, 0xf
                  beq x4, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x12, x19, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
