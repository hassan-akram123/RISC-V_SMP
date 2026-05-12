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
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0xfd936068
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x7
                  li x4, 0x80000000
                  li x5, 0x5
                  li x6, 0x17264ae
                  li x7, 0xfd52a21e
                  li x9, 0x9
                  li x10, 0x80000000
                  li x11, 0xe16a2a2c
                  li x12, 0x0
                  li x13, 0xf538b1ea
                  li x14, 0x80000000
                  li x15, 0x973d672b
                  li x16, 0x80000000
                  li x17, 0xb
                  li x18, 0x80000000
                  li x19, 0x4d0e38a2
                  li x20, 0xff34e5b7
                  li x21, 0x0
                  li x22, 0xad28b11b
                  li x23, 0xc
                  li x24, 0xdd304555
                  li x25, 0x80000000
                  li x26, 0xfa0a237b
                  li x27, 0x0
                  li x28, 0xe793ba4d
                  li x30, 0x2
                  li x31, 0xe7630b6
                  la x8, user_stack_end
main:             la           sp, region_1+524 #start riscv_load_store_rand_instr_stream_0
                  slti         t5, s10, 1190
                  lb           gp, 51(sp)
                  and          t6, t5, gp
                  lbu          a3, 33(sp)
                  xori         tp, t1, 1767
                  ori          s11, s8, -1112
                  andi         t3, t2, -1183
                  addi         s2, t2, -1216
                  sll          s2, s2, s0
                  add          a6, s9, s2
                  sra          zero, t4, zero
                  sh           t1, -20(sp)
                  sb           a2, -59(sp)
                  auipc        tp, 425292
                  srl          gp, s0, a6
                  lui          s10, 152106
                  or           s3, a6, a3
                  sltiu        t6, a4, -591
                  sb           s3, 31(sp)
                  lb           a1, 62(sp)
                  lh           t2, 64(sp)
                  sb           a3, -30(sp)
                  lh           s6, -20(sp)
                  or           t6, a6, s10
                  lbu          a2, -9(sp)
                  sra          s7, sp, a6
                  xor          a7, s1, t6
                  lhu          t0, -24(sp)
                  sh           a4, -48(sp)
                  lbu          a3, 33(sp)
                  srli         s6, t0, 18
                  sb           s3, -56(sp)
                  sb           a5, 46(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+738 #start riscv_load_store_rand_instr_stream_2
                  srli         a5, tp, 5
                  and          s9, s3, s10
                  lb           s2, 214(t1)
                  lbu          a3, -24(t1)
                  lh           zero, 164(t1)
                  nop
                  ori          a7, gp, 203
                  lhu          a0, -244(t1)
                  sll          a2, a3, s7
                  sb           a1, 44(t1)
                  sb           s5, 197(t1)
                  lb           a2, -32(t1)
                  slli         s2, a3, 26
                  lh           s5, 176(t1)
                  nop
                  sb           sp, -55(t1)
                  slt          a2, t4, s2
                  and          t5, s1, t5
                  lbu          a2, 7(t1)
                  slt          sp, s11, s0
                  lb           s6, 217(t1)
                  lhu          t2, 100(t1)
                  addi         s1, s11, 1218
                  add          t6, t6, s3
                  lui          a0, 91121
                  auipc        a7, 597328
                  lui          s7, 738242
                  sb           s2, -143(t1)
                  lh           a7, -54(t1)
                  lb           a6, 107(t1)
                  lb           t5, 6(t1)
                  sw           zero, -98(t1)
                  lbu          a0, -31(t1)
                  lb           s5, -63(t1)
                  lw           a0, 70(t1)
                  lb           a2, 181(t1)
                  addi         ra, t5, -1386
                  slt          s11, t6, a1
                  lbu          s3, 163(t1)
                  sb           a2, -132(t1)
                  sb           t4, 9(t1) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+421 #start riscv_load_store_rand_instr_stream_1
                  addi         s4, ra, -642
                  sh           a2, -243(sp)
                  sb           tp, 176(sp)
                  lbu          t5, 140(sp)
                  sra          t1, s0, ra
                  slli         t3, s1, 31
                  srli         s3, t3, 14
                  ori          a0, s7, -664
                  lh           t3, -19(sp)
                  nop
                  sb           s8, -200(sp)
                  lbu          t1, 250(sp)
                  lbu          t5, 172(sp)
                  auipc        a5, 1035468
                  and          t1, s6, a7
                  sh           t0, -169(sp)
                  sb           s2, -138(sp)
                  lbu          a2, 228(sp)
                  or           zero, a0, a3
                  slli         s6, s1, 6
                  lbu          s1, 92(sp)
                  sw           s6, -69(sp)
                  lhu          a3, 81(sp)
                  lb           tp, -82(sp)
                  lbu          gp, 92(sp)
                  addi         ra, ra, 1096
                  lb           a7, -89(sp)
                  lb           t5, -82(sp)
                  lb           s9, -110(sp)
                  sub          t2, s4, tp
                  sra          a6, tp, s3
                  sh           a3, 111(sp)
                  slti         t1, a2, 346
                  xori         s10, s8, -536
                  sh           s10, 7(sp)
                  lbu          s4, -75(sp)
                  auipc        t5, 36421
                  auipc        gp, 167332
                  lb           s3, 196(sp)
                  andi         s9, s3, 1088
                  lb           s6, 150(sp)
                  slti         t3, zero, 1706
                  lhu          s10, 129(sp)
                  lbu          a7, 232(sp)
                  lb           s11, 252(sp)
                  lb           s3, 248(sp)
                  lb           t1, 98(sp) #end riscv_load_store_rand_instr_stream_1
                  andi         s6, ra, -745
                  lui          a7, 16318
                  blt          a5, a3, 5f
                  xor          a0, s4, zero
                  bne          s8, zero, 23f
                  sltu         a6, a2, gp
                  nop
                  la           a1, sub_1
                  nop
                  srl          gp, s1, t3
                  auipc        a0, 900668
                  srl          t3, a4, t5
                  slt          s10, s6, sp
                  addi         a1, a1, 454
                  bgeu         a6, a5, main_j1 #branch to jump instr
                  andi         t2, t0, -1284
                  srl          a3, ra, s0
main_j1:          jalr         ra, a1, -454 #jump main -> sub_1
5:                sll          s6, a1, s5
                  blt          s9, t3, 9f
                  lui          s5, 44814
                  and          s6, a2, zero
9:                addi         s4, t4, -930
                  bge          tp, s7, 29f
                  sll          a2, t6, s1
                  nop
                  srli         a5, s6, 18
                  sltu         zero, sp, a0
                  sra          ra, s1, t2
                  srli         s2, t2, 25
                  sltu         a1, a7, gp
                  bne          a5, s8, 33f
                  bgeu         s2, gp, 32f
                  sltiu        s10, a0, -1476
                  and          a0, s4, a6
                  sub          a2, a4, s0
23:               slti         t1, gp, -1879
                  or           t6, s3, s9
                  bne          t6, a6, 31f
                  slli         s10, a6, 5
                  slt          s11, t1, t5
                  sltu         a7, a6, t3
29:               sltu         s1, t4, s4
                  slt          s2, t3, a4
31:               slli         a0, a2, 0
32:               nop
33:               beq          s4, s8, 43f
                  srl          a3, a0, tp
                  sll          a3, s4, s10
                  add          t6, s6, a3
                  slt          t3, t2, s1
                  sra          s6, a5, a6
                  xori         t3, t5, -1918
                  srl          a1, t2, t3
                  lui          t1, 312120
                  xor          s2, a5, tp
43:               sub          t6, a6, s1
                  and          t1, s0, s7
                  slli         s6, tp, 23
                  slti         gp, t4, 1494
                  xori         t3, s11, -620
                  and          t1, s2, s3
                  andi         ra, t4, 1858
                  sltu         t6, a5, s2
                  or           t0, a3, gp
                  auipc        t6, 253580
                  sltu         a1, t1, t3
                  sltu         t3, a0, a1
                  sltu         a5, s5, t3
                  sra          t5, s6, s10
                  bge          s9, a7, 63f
                  sub          a7, a3, s9
                  sltiu        zero, gp, 1145
                  xori         s2, s11, -2000
                  nop
                  slli         a3, sp, 16
63:               slli         a5, a1, 29
                  bne          s5, s0, 73f
                  slt          s5, a5, t5
                  xori         s5, a7, 1681
                  srli         a7, a5, 11
                  bgeu         a2, gp, 70f
                  add          t1, t4, s3
70:               bltu         a5, t4, 87f
                  auipc        s3, 987502
                  bltu         zero, t1, 76f
73:               sra          a0, t4, a4
                  nop
                  srli         s5, a0, 8
76:               nop
                  ori          s8, s2, -1326
                  bne          s0, s9, 93f
                  la           a1, sub_1
                  addi         a1, a1, -238
                  andi         s2, a1, -1769
                  xori         s1, s7, -474
                  auipc        ra, 249683
                  sll          sp, s4, ra
                  nop
                  blt          a1, s2, main_j2 #branch to jump instr
                  add          a0, tp, t0
main_j2:          jalr         ra, a1, 238 #jump main -> sub_1
                  beq          a0, s8, 93f
                  and          a0, s11, sp
                  addi         zero, ra, -1035
                  bgeu         gp, t1, 102f
                  bgeu         t2, ra, 86f
                  lui          s10, 663093
                  slti         a0, a2, -1236
86:               srai         t0, a1, 25
87:               xori         s3, s5, -997
                  sra          s8, ra, tp
                  and          s10, s1, sp
                  auipc        t5, 196627
                  slti         a1, a4, 1250
                  sltiu        a6, s0, 1
93:               xori         a1, sp, -905
                  blt          s5, a5, 104f
                  sltu         t6, a3, gp
                  slt          t5, s6, zero
                  addi         a2, t2, 1458
                  auipc        sp, 825899
                  add          s3, s7, zero
                  andi         sp, s5, -688
                  lui          zero, 343364
102:              auipc        s5, 617514
                  beq          s6, a6, 120f
104:              add          tp, a7, a6
                  bne          a1, s9, 114f
                  srl          ra, s8, a6
                  sll          t2, s2, s10
                  sra          s10, a3, s8
                  sll          s11, s0, s3
                  sltiu        s10, a1, 1605
                  srl          a6, t2, t3
                  slt          a6, t1, a3
                  srai         ra, s3, 17
114:              beq          t3, s3, 130f
                  or           s9, s4, s1
                  xori         s10, t5, 256
                  sltiu        zero, a3, -59
                  slt          t1, a5, s7
                  srli         a6, s9, 10
120:              srli         tp, t4, 16
                  beq          a0, a1, 122f
122:              slti         s3, ra, 1401
                  andi         s11, t4, -1326
                  andi         a0, a1, 1387
                  bltu         gp, sp, 143f
                  and          s11, s2, s7
                  beq          s11, s0, 147f
                  add          a6, t2, t0
                  blt          a4, a1, 135f
130:              srai         s5, a6, 8
                  srai         s10, a3, 28
                  srai         t6, a2, 15
                  xori         s9, a3, 546
                  srl          s8, a5, s10
135:              srli         tp, t4, 28
                  sll          t2, t2, s10
                  xor          t6, s5, s8
                  sltiu        t0, t0, 1552
                  nop
                  bltu         s6, s10, 141f
141:              and          t1, s1, t6
                  xori         s8, ra, 1236
143:              bge          t3, t1, 151f
                  sltiu        s7, a3, 1470
                  sltiu        a6, s5, 962
                  sra          a0, s4, t4
147:              slli         a6, a1, 24
                  srai         a0, t0, 13
                  sra          s10, tp, s4
                  sltiu        tp, sp, -1345
151:              andi         s4, t3, 2029
                  nop
                  slli         s8, t3, 9
                  sltu         ra, s4, s3
                  slt          t6, a6, s2
                  bgeu         gp, a3, 164f
                  andi         ra, s9, -234
                  sra          s6, s0, zero
                  andi         s3, a3, 659
                  ori          t2, a4, -1656
                  bltu         s7, s8, 171f
                  sub          t5, a5, s1
                  beq          t5, zero, 170f
164:              lui          a7, 425883
                  sltiu        s1, s9, -1274
                  sltu         s8, s3, t2
                  bne          gp, s0, 177f
                  or           gp, a7, s7
                  sltu         s7, s3, a4
170:              sltu         a3, t6, tp
171:              or           t6, t6, s6
                  bge          s8, s1, 179f
                  ori          s10, gp, -1350
                  lui          s6, 299944
                  xor          s10, a1, tp
                  xori         a2, t0, 148
177:              add          t2, a4, t3
                  bgeu         gp, s11, 184f
179:              slt          s8, a4, zero
                  auipc        t3, 299575
                  slti         s5, s9, -513
                  sltiu        s11, a3, 2022
                  andi         t3, s9, 963
184:              sll          s8, s6, s3
                  xor          sp, s10, s8
                  or           s4, t2, s5
                  add          s4, t5, gp
                  xori         s2, a6, -1801
                  srli         s6, s2, 21
                  srli         a2, ra, 16
                  lui          s5, 96185
                  sltiu        s5, s9, 225
                  bgeu         s5, ra, 201f
                  andi         s1, a3, -873
                  sltu         a5, zero, s3
                  blt          s7, a1, 205f
                  sll          t0, a4, ra
                  beq          s0, zero, 199f
199:              andi         gp, t0, -721
                  beq          t1, t6, 209f
201:              sub          t0, a2, t0
                  or           t1, ra, s4
                  slli         s9, a3, 0
                  slt          a7, a1, t3
205:              sra          ra, a4, s6
                  slt          zero, s9, s4
                  sltiu        s7, tp, 1164
                  slti         a7, sp, -1346
209:              lui          sp, 767912
                  srl          a7, gp, s1
                  srli         s5, t3, 30
                  nop
                  ori          a6, gp, -1078
                  sra          a6, s5, tp
                  sub          t0, s5, a3
                  srai         ra, a0, 27
                  sltu         gp, s9, t4
                  andi         s3, s4, 843
                  bltu         a2, gp, 220f
220:              nop
                  bltu         s9, ra, 227f
                  sub          s5, a4, a0
                  nop
                  bgeu         s10, s6, 239f
                  nop
                  bgeu         t1, t3, 243f
227:              addi         gp, t4, -1249
                  sra          a0, a6, a6
                  bge          ra, s2, 233f
                  bne          t1, s1, 236f
                  slli         t0, s6, 27
                  andi         t6, s10, -1503
233:              sub          s5, t0, a0
                  blt          s4, s5, 251f
                  srl          ra, a5, a0
236:              addi         s2, ra, -1965
                  slt          a3, t0, zero
                  add          a5, t5, t5
239:              or           tp, s7, ra
                  beq          s5, zero, 243f
                  nop
                  slt          t5, tp, a6
243:              nop
                  slti         a7, gp, -636
                  sltiu        s8, s11, 568
                  beq          s10, t4, 256f
                  srl          gp, s10, t0
                  or           s3, s1, t4
                  sltiu        ra, s9, 345
                  sll          t0, a0, s8
251:              bne          a2, s4, 271f
                  sltiu        a3, a7, 736
                  lui          a0, 652095
                  xori         t2, gp, -1575
                  ori          s11, t1, -35
256:              sll          t5, s9, s8
                  lui          s9, 21408
                  sub          a1, t3, zero
                  addi         a5, s6, -857
                  or           t6, s7, sp
                  blt          sp, s10, 276f
                  addi         a3, a1, -365
                  bne          s5, a2, 266f
                  blt          a1, t6, 280f
                  bne          s10, t3, 284f
266:              sub          s6, a1, t2
                  xori         t5, ra, -1719
                  srai         s9, gp, 12
                  slt          a3, t5, a0
                  sll          sp, s8, a7
271:              bne          a2, s8, 284f
                  blt          s10, a1, 280f
                  bge          a3, a7, 293f
                  slt          a3, sp, ra
                  sltiu        s7, s7, -1470
276:              lui          t1, 38116
                  sra          a5, a0, a0
                  nop
                  xori         t3, t0, 236
280:              beq          s4, s10, 299f
                  sra          t5, s3, t5
                  addi         t6, t6, 1459
                  slli         ra, a6, 20
284:              bltu         a0, s10, 286f
                  bge          t4, s8, 295f
286:              beq          sp, s4, 289f
                  auipc        s11, 927705
                  auipc        tp, 821535
289:              sra          a2, s10, t3
                  blt          sp, s6, 304f
                  blt          sp, t2, 309f
                  slti         a6, s9, 834
293:              sltiu        t5, a0, 164
                  xori         ra, t0, -524
295:              andi         s3, s8, 1295
                  slti         t0, s4, 1790
                  bge          s7, t1, 304f
                  sra          s4, s9, s9
299:              srli         a1, a2, 12
                  blt          s5, s1, 303f
                  bgeu         s3, t4, 314f
                  sltu         s5, s2, s10
303:              addi         s5, t4, 1167
304:              beq          s4, t2, 307f
                  xor          t0, s9, t2
                  blt          t5, s4, 312f
307:              blt          t3, s11, 326f
                  and          s4, s10, a5
309:              auipc        ra, 648965
                  xori         s10, s9, -874
                  addi         s9, tp, -393
312:              bne          a3, s3, 316f
                  xor          a7, t5, ra
314:              beq          a0, a2, 331f
                  sra          t3, a0, a7
316:              blt          t2, t4, 325f
                  xori         s5, sp, -827
                  srli         a5, a4, 15
                  slti         s10, sp, -1017
                  slli         s6, zero, 29
                  bltu         t1, s3, 323f
                  srai         s8, s11, 9
323:              sll          s3, s11, a5
                  sll          a3, s9, t4
325:              bne          s10, a7, 331f
326:              slt          s9, sp, s1
                  srli         t2, s10, 10
                  sll          s11, a2, s2
                  blt          t3, t4, 338f
                  slt          s9, a1, a7
331:              srl          s4, s2, s5
                  and          s1, tp, s7
                  bne          gp, s10, 341f
                  bne          s11, t6, 342f
                  add          t1, ra, a4
                  bgeu         zero, a4, 337f
337:              sltu         s10, a0, s6
338:              sltiu        a2, a5, 236
                  sub          t6, a2, s8
                  slti         gp, t0, 1757
341:              srli         a6, s10, 6
342:              bge          a0, s1, 361f
                  beq          s4, s6, 363f
                  and          s1, t5, t1
                  and          s10, s10, s0
                  xor          t0, t2, s7
                  srli         s11, s7, 13
                  add          s8, t3, tp
                  and          a2, s11, a3
                  or           s1, t5, a4
                  sltiu        s10, ra, 385
                  add          s4, s11, s3
                  nop
                  bge          s3, s5, 368f
                  ori          a5, t5, 2046
                  slli         s9, a0, 17
                  andi         t2, t6, 633
                  slti         s2, s8, 943
                  bge          a2, a3, 379f
                  slt          ra, s10, s8
361:              add          s9, zero, s0
                  add          a0, a6, a3
363:              nop
                  srai         ra, t6, 1
                  bgeu         a4, a6, 375f
                  sub          sp, a3, s10
                  auipc        s2, 724695
368:              sra          sp, t6, sp
                  or           s10, a2, ra
                  add          s3, t0, s8
                  ori          tp, a2, -1669
                  xori         s3, s1, -501
                  add          a0, s6, sp
                  sub          a1, s3, s7
375:              bne          zero, t0, 390f
                  addi         s3, s4, -1372
                  srai         a0, a3, 26
                  and          a6, sp, tp
379:              xori         a6, s4, -277
                  sltiu        t5, sp, -1153
                  xori         sp, s1, 1640
                  bgeu         a4, t2, 397f
                  ori          t1, gp, 113
                  slli         a7, s10, 18
                  add          s1, a0, a3
                  srl          s8, s5, s6
                  nop
                  bgeu         ra, s9, 398f
                  bgeu         a1, t5, 407f
390:              slti         t3, a6, 1620
                  beq          s11, s11, 397f
                  lui          s11, 999620
                  blt          zero, t6, 403f
                  bne          gp, ra, 411f
                  srli         a2, ra, 29
                  sub          t0, a1, s3
397:              sll          a5, tp, a3
398:              sltiu        s3, s4, -1295
                  or           s5, sp, s1
                  blt          a7, a5, 415f
                  sub          zero, a0, s3
                  lui          s5, 592823
403:              srl          s6, a5, a1
                  sll          s7, s7, t0
                  bgeu         t6, t2, 408f
                  srai         t2, zero, 7
407:              bgeu         s10, s0, 408f
408:              ori          a1, s5, 1487
                  srai         t5, t3, 23
                  blt          s9, t4, 411f
411:              auipc        t5, 361546
                  addi         s7, s3, -987
                  slt          a7, gp, gp
                  slt          a5, sp, a4
415:              andi         a1, a1, -534
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bge          s11, s10, sub_1_stack_p
sub_1_stack_p:    addi         s0, s0, -36
                  lui          t3, 716698
                  auipc        tp, 966693
                  and          t3, t2, s8
                  sw           ra, 4(s0)
                  xori         t0, ra, 1452
                  and          a3, s0, sp
                  la           a2, sub_2
                  sltiu        a5, s2, 504
                  addi         tp, s7, 1550
                  andi         a7, s1, -124
                  sll          s9, a4, a6
                  srl          s5, s8, a5
                  addi         a2, a2, -815
                  bne          sp, a2, sub_1_j5 #branch to jump instr
                  xor          t0, sp, a7
                  add          t1, gp, tp
                  xor          a0, s1, ra
                  srli         s2, zero, 12
                  srl          t3, t2, s6
sub_1_j5:         jalr         ra, a2, 815 #jump sub_1 -> sub_2
                  la           t5, region_1+817 #start riscv_load_store_rand_instr_stream_4
                  sb           a3, 100(t5)
                  sb           s11, -194(t5)
                  lb           t2, 180(t5)
                  sb           a4, -236(t5)
                  lbu          a5, 106(t5)
                  slli         a0, s1, 23
                  sb           s9, -53(t5)
                  xor          sp, tp, t1
                  sb           a5, -200(t5)
                  lbu          s6, -202(t5)
                  add          s8, a5, s7
                  auipc        s10, 32403
                  add          a1, a3, s0
                  sltu         s8, tp, s7
                  lb           t2, -106(t5)
                  lb           a2, 123(t5)
                  lbu          t0, 163(t5)
                  sltiu        a2, a1, -215
                  lb           s9, 44(t5)
                  lh           s3, 67(t5)
                  sh           s0, 17(t5)
                  lb           a0, 42(t5)
                  sb           a1, 82(t5)
                  andi         t3, tp, -844
                  sb           s6, -114(t5)
                  sh           s4, 15(t5)
                  nop
                  sll          ra, a0, t4
                  srai         s6, s7, 7
                  lbu          s2, -140(t5)
                  sltu         s2, a5, a0
                  sb           t6, -108(t5)
                  add          s11, t0, a1
                  lbu          t6, 14(t5) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+851 #start riscv_load_store_rand_instr_stream_7
                  auipc        s4, 104452
                  sb           t6, -610(sp)
                  lbu          s2, 1114(sp)
                  add          t3, a2, sp
                  lhu          s5, 609(sp)
                  lb           s9, 1118(sp)
                  sb           t5, 816(sp)
                  sb           s3, 920(sp)
                  sb           a6, 360(sp)
                  srli         s6, s3, 26
                  lb           s10, 439(sp)
                  lbu          gp, 582(sp)
                  lbu          a5, 673(sp)
                  add          s8, ra, tp
                  lhu          a5, -201(sp)
                  auipc        t1, 974183
                  sb           t5, 599(sp)
                  sb           t6, 167(sp)
                  sb           t5, -516(sp)
                  add          t1, s5, t3
                  slti         s6, a3, 924
                  lbu          a7, -696(sp)
                  lhu          t6, 1027(sp)
                  lui          t3, 31150
                  slt          a3, s8, zero
                  lbu          s1, 930(sp)
                  andi         s7, s10, -913
                  srli         t0, s7, 16
                  lh           a7, -797(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s9, region_0+1630 #start riscv_load_store_rand_instr_stream_8
                  addi         a1, ra, 1451
                  addi         s8, a6, -1660
                  lb           s3, -162(s9)
                  srai         s8, a3, 2
                  slli         s11, a0, 14
                  lh           tp, 64(s9)
                  lui          ra, 644272
                  lui          t1, 701296
                  lhu          t1, -138(s9)
                  sll          s7, gp, s11
                  lbu          s6, -182(s9)
                  lb           tp, 64(s9)
                  nop
                  lb           t1, 81(s9)
                  slli         t6, a4, 28
                  auipc        t2, 961216
                  lbu          a7, 203(s9)
                  xor          s2, t6, s2
                  and          a2, tp, s4
                  sb           t2, -98(s9)
                  lb           s2, -198(s9)
                  xor          sp, tp, a0
                  sltu         s6, gp, s4
                  ori          s6, a7, 1609
                  lb           ra, -167(s9)
                  sb           ra, -253(s9)
                  slt          gp, t4, t3
                  sb           t3, -117(s9)
                  slti         s6, zero, 1449
                  lb           a7, -228(s9)
                  lw           sp, 246(s9)
                  sw           s5, 86(s9)
                  lbu          t6, -201(s9) #end riscv_load_store_rand_instr_stream_8
                  la           s10, region_0+911 #start riscv_load_store_rand_instr_stream_1
                  sw           s1, 13(s10)
                  slti         s7, s7, 487
                  addi         gp, s10, -563
                  lui          t5, 132157
                  xor          a3, s1, s9
                  lb           a6, 2(s10)
                  andi         a0, s10, 1656
                  slt          gp, t3, t3
                  slti         s8, s5, 1364
                  slt          tp, s11, t3
                  slli         a2, s9, 1
                  lbu          tp, -12(s10)
                  xor          s7, s7, a5
                  auipc        sp, 375247
                  andi         a7, s2, -1488
                  lhu          tp, 1(s10)
                  lbu          s5, 6(s10)
                  lh           a0, -13(s10)
                  lbu          s8, -6(s10)
                  lb           gp, -10(s10)
                  slli         s3, s2, 16
                  lhu          s3, 3(s10)
                  lbu          s4, -10(s10)
                  lbu          s2, -7(s10)
                  lbu          t0, -3(s10)
                  lhu          a6, -1(s10)
                  xor          s6, s0, t5
                  sw           s7, 9(s10)
                  slti         s5, t4, 922
                  addi         ra, sp, 1671
                  lb           a2, 1(s10)
                  lw           s3, 9(s10)
                  ori          s1, s4, 423
                  addi         s1, a2, 954
                  lb           zero, 8(s10)
                  sb           t1, -13(s10)
                  lbu          s9, 6(s10)
                  add          s5, s0, s11
                  sub          s8, s10, s0
                  add          t5, tp, t6
                  lbu          gp, 1(s10)
                  sltu         a1, s9, s4
                  add          a1, s1, tp
                  and          t0, sp, a1
                  addi         ra, t4, -62
                  lb           a6, 0(s10)
                  slli         s2, s3, 28
                  lbu          zero, -7(s10)
                  lbu          s3, -2(s10)
                  lb           t0, 7(s10)
                  sub          sp, a7, a5
                  sb           a2, 8(s10)
                  srli         s4, a6, 6
                  lb           s8, 15(s10)
                  lhu          t6, -7(s10)
                  sh           a7, -5(s10) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1822 #start riscv_load_store_rand_instr_stream_3
                  slt          a5, zero, a3
                  srai         a6, t6, 30
                  or           s7, s7, s2
                  sltiu        t3, t4, 1521
                  lb           t1, 7(sp)
                  slli         a6, sp, 25
                  sb           tp, -11(sp)
                  lb           t2, 13(sp)
                  lhu          gp, -6(sp)
                  srl          a6, s6, t6
                  lb           s8, -13(sp)
                  sb           s2, 14(sp)
                  lb           s2, -3(sp)
                  or           a2, a0, s3
                  or           s4, ra, zero
                  lh           s4, -14(sp)
                  sll          s1, a3, a1
                  slti         t1, ra, -819
                  xori         a6, s10, 72
                  xori         s5, s10, 1301
                  lbu          s2, 13(sp)
                  nop
                  lb           s1, 13(sp)
                  lbu          s2, -14(sp)
                  lbu          gp, 15(sp)
                  add          s5, gp, a3
                  nop
                  lb           a1, 1(sp)
                  sh           s10, -4(sp)
                  slli         t6, t4, 2
                  auipc        s7, 591331
                  lb           s3, -12(sp)
                  sll          s6, t4, s11
                  sltiu        t0, t6, 1508
                  sw           s6, -14(sp)
                  srl          ra, ra, t0
                  nop
                  lb           t1, -12(sp)
                  sub          s3, s1, t0
                  lbu          s6, 11(sp)
                  slti         tp, s2, 2023
                  lbu          s5, 15(sp)
                  xor          a6, sp, t5
                  or           t2, t2, s2
                  lh           gp, -14(sp)
                  auipc        ra, 250601
                  sh           a3, -6(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_1+496 #start riscv_load_store_rand_instr_stream_5
                  lbu          a0, 1478(s11)
                  ori          t3, s8, -950
                  sra          a3, zero, zero
                  xori         a0, s7, -686
                  sb           s8, -318(s11)
                  lbu          tp, -161(s11)
                  sb           t3, 1477(s11)
                  sb           sp, 1109(s11)
                  sb           s1, -185(s11)
                  lbu          ra, 1194(s11)
                  lui          s4, 522676
                  srai         a6, t4, 23
                  lhu          sp, 460(s11)
                  lbu          zero, 1451(s11)
                  sb           t5, 150(s11)
                  lb           t3, -103(s11)
                  ori          t6, s5, -1077
                  sb           s4, 1111(s11)
                  lb           sp, 39(s11)
                  and          a1, t4, t5
                  lb           s5, 233(s11)
                  slli         t5, a2, 30
                  and          s9, sp, tp
                  addi         a2, t1, 1026
                  lhu          a3, 850(s11)
                  lbu          a5, 755(s11)
                  lb           s6, -279(s11)
                  or           a1, s2, a2
                  lb           sp, 221(s11)
                  nop
                  lhu          a3, -346(s11)
                  add          zero, a5, t6
                  lb           a6, 632(s11)
                  sb           a3, 895(s11)
                  lh           t1, 462(s11)
                  lhu          t3, -492(s11)
                  lbu          s1, -75(s11)
                  sltu         s6, ra, s5
                  nop
                  lhu          t5, 356(s11)
                  lb           s1, 1276(s11) #end riscv_load_store_rand_instr_stream_5
                  la           t1, region_0+52 #start riscv_load_store_rand_instr_stream_6
                  sltu         s5, t2, t1
                  addi         tp, a2, 984
                  slti         s7, a2, -1481
                  or           t2, a6, s5
                  sltu         a1, s0, s3
                  sltu         s5, a5, gp
                  srl          ra, t0, a4
                  slti         sp, zero, 514
                  xor          s1, s2, t6
                  lbu          t2, -17(t1)
                  srai         s3, s7, 21
                  or           a2, t0, a1
                  xor          s3, a6, s6
                  nop
                  xori         a6, s11, 85
                  slt          a3, s7, s9
                  sh           tp, 44(t1)
                  srl          t0, a3, s1
                  srli         gp, a0, 11
                  srai         a2, s7, 10
                  lbu          a0, -11(t1)
                  srli         zero, a3, 28
                  lb           s2, -2(t1)
                  nop
                  lb           zero, 14(t1)
                  and          a0, s9, t4
                  lb           s10, 39(t1)
                  sw           sp, 44(t1)
                  add          ra, a0, s8
                  srli         s3, a6, 21
                  srli         tp, s2, 30
                  srli         s5, t2, 24
                  lui          t0, 690484
                  sh           t3, 46(t1)
                  and          a0, a0, t1
                  sb           a1, -39(t1)
                  srl          a1, a3, t5
                  sb           s2, -35(t1)
                  nop
                  and          a3, t2, a4
                  lb           a5, 53(t1) #end riscv_load_store_rand_instr_stream_6
                  la           s7, region_1+423 #start riscv_load_store_rand_instr_stream_11
                  xor          s3, t6, t0
                  xori         ra, t0, -468
                  and          s2, t6, a7
                  lui          s4, 561048
                  sw           a7, -11(s7)
                  sltiu        a0, a2, -71
                  sltiu        t6, t3, -658
                  or           t5, a5, s1
                  slli         a2, gp, 17
                  srli         t0, t0, 7
                  auipc        t2, 279662
                  sub          s10, t3, a2
                  sb           zero, 7(s7)
                  slt          t2, s7, s7
                  lbu          t5, -16(s7)
                  nop
                  lh           s10, 9(s7)
                  auipc        s11, 407896
                  lui          a5, 193425
                  ori          t1, a6, -463
                  lbu          a7, 11(s7)
                  lhu          a3, 1(s7)
                  sb           t3, -13(s7)
                  sb           t2, -13(s7)
                  nop
                  lbu          t0, 1(s7)
                  sub          t2, t4, a7
                  andi         a7, a7, 1189
                  addi         tp, s1, 1028
                  lh           a2, 7(s7)
                  sb           s5, 8(s7)
                  sub          s11, s8, t5
                  nop
                  sb           a3, -15(s7) #end riscv_load_store_rand_instr_stream_11
                  la           s4, region_0+241 #start riscv_load_store_rand_instr_stream_13
                  and          a2, a0, tp
                  lhu          t2, 1561(s4)
                  sb           a6, -202(s4)
                  and          ra, s8, a3
                  lb           a3, 1702(s4)
                  and          sp, s1, a2
                  srl          sp, s3, a4
                  and          a3, s8, sp
                  xor          a7, s10, s3
                  sb           t2, -206(s4)
                  sltu         a6, t0, a4
                  lb           a0, -102(s4)
                  xori         s1, a3, -808
                  or           s6, s11, t4
                  lbu          ra, 1170(s4)
                  auipc        s7, 149500
                  srli         s2, tp, 20
                  lh           s3, 157(s4)
                  lbu          gp, 1716(s4)
                  lb           s8, 1274(s4)
                  lb           s10, 414(s4)
                  sub          t1, s7, zero
                  lh           t6, 111(s4)
                  lbu          s10, 1138(s4)
                  slli         t0, s8, 19
                  sub          zero, t6, ra
                  sh           a5, 935(s4)
                  sb           t6, -60(s4)
                  sb           t1, -82(s4)
                  sb           a6, 1485(s4)
                  lbu          sp, 91(s4)
                  sw           zero, 55(s4)
                  xor          s8, s2, s0
                  sb           t1, 1474(s4)
                  add          a7, s7, s9
                  slti         a7, a1, 1315
                  lb           a2, 1735(s4)
                  lbu          s1, 764(s4)
                  srli         s9, t3, 8
                  sb           s10, 466(s4)
                  sll          s3, gp, s8
                  lbu          a6, 112(s4)
                  xor          s7, tp, a0
                  sub          t5, s10, t6
                  sh           s11, 377(s4)
                  slli         t3, t1, 5
                  sw           t5, 971(s4) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+1285 #start riscv_load_store_rand_instr_stream_16
                  addi         gp, s11, -904
                  sll          ra, s1, a0
                  lb           s7, 14(sp)
                  sra          s10, s11, s6
                  sltu         t6, a5, t3
                  andi         a5, t4, -1512
                  nop
                  srai         tp, a0, 7
                  lb           a6, 5(sp)
                  sub          a3, a2, s0
                  lui          s11, 143950
                  lui          t0, 154463
                  lhu          ra, 13(sp)
                  sub          a0, a2, zero
                  or           t1, t5, s3
                  slti         s2, s1, 240
                  andi         zero, s0, 788
                  sb           s6, 6(sp)
                  lb           t0, 10(sp)
                  slti         s10, a6, 252
                  srai         t1, s6, 30
                  andi         zero, t4, -1011
                  slli         a3, zero, 14
                  sltu         a3, s10, tp
                  addi         s3, s3, 161
                  sb           s0, 6(sp)
                  sb           s5, -1(sp)
                  slli         t3, gp, 31
                  lbu          a0, -2(sp)
                  or           s9, s7, a5
                  addi         a1, t3, 1589
                  slt          t1, t2, a5
                  or           s8, t0, t2
                  sb           gp, -10(sp)
                  lbu          ra, 1(sp) #end riscv_load_store_rand_instr_stream_16
                  la           s11, region_1+988 #start riscv_load_store_rand_instr_stream_14
                  slli         t6, s11, 15
                  ori          a2, a2, -389
                  sub          t3, s3, s11
                  xori         t2, gp, -1941
                  lb           ra, -1(s11)
                  and          t1, a1, s4
                  sh           s5, -28(s11)
                  sll          a6, s4, a3
                  auipc        t2, 355378
                  sb           sp, 31(s11)
                  lb           a0, 10(s11)
                  and          s5, a2, a5
                  sra          zero, ra, ra
                  lb           a3, -37(s11)
                  lbu          ra, 13(s11)
                  lbu          a2, 64(s11)
                  lb           t2, 39(s11)
                  lh           a3, -58(s11)
                  lb           s2, 55(s11)
                  lb           a1, 20(s11)
                  lbu          s10, -53(s11)
                  ori          s7, t4, -760
                  sb           zero, -49(s11)
                  sb           a1, 57(s11)
                  sb           s6, -4(s11)
                  lb           s10, 9(s11)
                  sb           a1, 6(s11)
                  srai         ra, a1, 5
                  lui          s9, 687546
                  sb           s6, -59(s11)
                  sra          a2, t6, s1
                  or           t3, t6, t1
                  lbu          t0, 15(s11)
                  sltu         a7, tp, gp
                  sw           zero, 28(s11)
                  lh           t5, 4(s11)
                  sb           t3, 43(s11)
                  sb           t6, 3(s11) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+974 #start riscv_load_store_rand_instr_stream_15
                  andi         s5, t4, 1091
                  or           t6, s3, t2
                  xor          a0, t2, s8
                  slt          gp, tp, gp
                  srli         s9, t5, 16
                  lh           s7, -80(sp)
                  sb           tp, 99(sp)
                  sh           s8, -186(sp)
                  add          s10, a0, a5
                  sub          gp, a2, a2
                  sh           a0, 180(sp)
                  auipc        t5, 326528
                  slti         a6, t5, 285
                  lb           s2, -121(sp)
                  sb           gp, -153(sp)
                  lbu          s10, 159(sp)
                  sh           s3, 134(sp)
                  and          a6, a0, sp
                  add          s4, a0, a7
                  sltu         t3, s9, t2
                  lb           s2, 236(sp)
                  lbu          s7, 11(sp) #end riscv_load_store_rand_instr_stream_15
                  la           s6, region_0+1704 #start riscv_load_store_rand_instr_stream_12
                  srai         a2, s10, 29
                  sub          t0, s8, a0
                  sb           a2, 147(s6)
                  srai         s8, zero, 26
                  sb           a2, -87(s6)
                  sb           s6, -204(s6)
                  sltu         s9, t4, a4
                  ori          gp, gp, -627
                  lb           t1, 67(s6)
                  andi         t5, s6, -1518
                  lbu          a5, 149(s6)
                  sh           s0, -216(s6)
                  srl          t6, s3, t5
                  sb           t2, 64(s6)
                  sw           s6, -244(s6)
                  sb           s4, -33(s6)
                  slt          s4, s3, s0
                  lb           s9, 179(s6)
                  slli         s3, s5, 28
                  sb           s5, 178(s6)
                  lbu          gp, -212(s6)
                  or           s7, a7, a5
                  sw           a4, 244(s6)
                  srai         a0, a3, 22
                  sltiu        s1, s7, -229
                  lw           a2, -108(s6)
                  lbu          t0, 131(s6)
                  sb           s5, 109(s6)
                  lhu          ra, -154(s6)
                  or           t5, s3, a0
                  lbu          tp, 71(s6)
                  sltu         ra, zero, s10
                  lbu          s2, 155(s6)
                  lbu          a2, 41(s6)
                  lb           s5, -11(s6)
                  slt          a5, a3, a0
                  lbu          t1, -191(s6) #end riscv_load_store_rand_instr_stream_12
                  la           s6, region_0+1634 #start riscv_load_store_rand_instr_stream_9
                  sb           t3, -61(s6)
                  srl          sp, a5, a3
                  slt          a5, a3, s8
                  sb           s7, -463(s6)
                  sltiu        s10, s4, 699
                  srl          s7, zero, a5
                  sub          gp, t6, t6
                  lb           s7, 131(s6)
                  sh           a1, -1250(s6)
                  lui          a0, 459901
                  and          t1, s1, a0
                  lb           s10, -1428(s6)
                  sb           s11, -223(s6)
                  slti         s1, s10, 922
                  ori          t2, t3, 134
                  sh           a5, -1170(s6)
                  lbu          s11, -312(s6)
                  lhu          zero, -636(s6)
                  lh           a7, -1450(s6)
                  slt          tp, s9, t1
                  lbu          t1, 298(s6)
                  sb           t1, -941(s6)
                  slli         gp, s1, 25
                  sb           s11, -1295(s6)
                  sltiu        ra, s3, 841
                  auipc        t1, 6824
                  srli         a1, a1, 30
                  and          a3, t0, t1
                  sltu         t0, zero, gp
                  lbu          a1, -1369(s6)
                  slli         s7, sp, 0
                  lbu          sp, 221(s6)
                  slti         zero, t6, 534
                  auipc        a3, 321005
                  lh           t2, -1444(s6)
                  lhu          t3, -514(s6)
                  lbu          s5, -607(s6)
                  lbu          a6, 153(s6)
                  andi         t3, s8, 1115
                  add          t5, a7, s4
                  or           s10, s10, s3
                  sb           a0, -998(s6)
                  lb           a3, 56(s6)
                  lb           s10, -407(s6) #end riscv_load_store_rand_instr_stream_9
                  bgeu         a1, s3, 16f
                  bltu         t3, a3, 10f
                  sub          s11, t5, t1
                  nop
                  bltu         s9, t1, 16f
                  slti         a3, s6, 724
                  and          a7, s3, s0
                  sll          a5, gp, t1
                  srli         s11, zero, 14
                  beq          s8, a4, 27f
10:               sub          a6, a4, a2
                  or           s11, s11, s10
                  xori         s1, s5, -900
                  or           gp, t3, s8
                  srai         t1, s1, 3
                  addi         t6, t1, -2022
16:               sltiu        t0, t3, -1045
                  sll          s8, sp, s11
                  bgeu         s2, t5, 31f
                  bgeu         a2, s9, 26f
                  sra          t5, t4, s4
                  nop
                  sltiu        t5, a5, -1139
                  nop
                  or           s6, a7, s4
                  sltu         tp, a5, t0
26:               and          s1, s7, a5
27:               and          a2, a1, s5
                  addi         t2, t1, 1932
                  slli         s5, s11, 29
                  bgeu         t3, s10, 35f
31:               blt          t2, s1, 49f
                  bne          s0, t2, 50f
                  bgeu         a0, s1, 38f
                  srli         s10, a3, 31
35:               sra          a3, a3, s11
                  sub          s4, a7, t1
                  bge          t3, sp, 46f
38:               srli         s3, a1, 11
                  slti         a6, ra, -642
                  sltu         a1, a4, a3
                  sltu         a2, s5, t3
                  or           t3, t5, a5
                  ori          sp, a0, 971
                  addi         s9, s3, 331
                  blt          t3, a2, 57f
46:               bge          s8, s4, 56f
                  bltu         a7, s2, 63f
                  blt          t5, s10, 59f
49:               and          a6, gp, t5
50:               srl          a3, s4, s4
                  andi         tp, t2, 1694
                  sltu         s7, t3, zero
                  nop
                  andi         t2, gp, 179
                  srl          zero, t5, a4
56:               slti         t1, sp, -575
57:               sll          a1, sp, s0
                  sltu         s6, ra, t4
59:               srli         t2, ra, 5
                  addi         s9, s3, -298
                  sub          s8, a7, s4
                  sra          t6, a1, t2
63:               sll          ra, s4, s2
                  sra          s7, a6, a2
                  slti         s7, s11, -1532
                  slli         t2, sp, 21
                  srl          s5, s2, s9
                  bltu         t0, s0, 88f
                  or           t0, tp, t3
                  nop
                  bge          t3, tp, 85f
                  bge          zero, t2, 83f
                  bltu         ra, t4, 75f
                  add          sp, s1, s2
75:               bgeu         a1, t0, 81f
                  beq          s4, tp, 92f
                  bltu         zero, s8, 88f
                  addi         s4, a1, -1188
                  auipc        t1, 823709
                  slt          tp, a1, s3
81:               slli         s2, sp, 7
                  or           s6, t4, a7
83:               andi         s1, ra, 850
                  beq          s10, s7, 86f
85:               andi         a7, t5, -199
86:               srl          s3, sp, s0
                  addi         t0, s8, 577
88:               srai         s1, tp, 11
                  srli         s4, s8, 16
                  slt          t6, tp, a6
                  sra          t1, gp, s9
92:               add          zero, s1, t1
                  srli         s10, a3, 25
                  slli         t3, s10, 25
                  bne          t0, s6, 115f
                  bge          s7, s9, 114f
                  slti         s10, a2, 168
                  slli         ra, a6, 19
                  auipc        t5, 178194
                  bne          t2, s9, 112f
                  slli         s8, a5, 29
                  bltu         sp, s2, 110f
                  addi         s6, t0, 1004
                  sra          s4, gp, a5
                  sub          t6, t5, a4
                  srai         ra, s9, 18
                  slti         s5, t4, -356
                  ori          t1, t0, 1938
                  sub          t2, ra, t4
110:              sra          s2, t6, s4
                  slt          a0, s5, s8
112:              srai         t6, a2, 0
                  beq          t5, t3, 132f
114:              srl          zero, s10, t6
115:              srli         s1, a2, 9
                  or           s2, ra, a5
                  lui          a3, 536062
                  lui          tp, 1017490
                  srli         a6, tp, 18
                  bgeu         s9, t4, 140f
                  sltiu        gp, ra, -743
                  bltu         tp, a5, 134f
                  slli         a3, t2, 13
                  slti         sp, sp, 936
                  srl          s4, t3, a4
                  sub          s11, a6, a6
                  nop
                  slt          zero, t2, s6
                  sltiu        s10, gp, 1674
                  beq          tp, tp, 148f
                  srai         s6, s5, 3
132:              add          t3, s2, t1
                  beq          s2, a3, 151f
134:              sra          sp, t6, s9
                  add          s8, s0, gp
                  slli         s7, zero, 22
                  add          s11, s6, a6
                  bltu         a5, sp, 150f
                  bne          zero, a2, 157f
140:              sltu         a1, t1, a4
                  ori          a2, a3, -1664
                  slli         s8, t3, 18
                  sra          t2, s8, sp
                  blt          s0, t5, 164f
                  slt          s11, sp, a5
                  slli         a2, ra, 5
                  sltu         a6, t0, s9
148:              srl          s4, a1, ra
                  auipc        t0, 240459
150:              addi         s9, a4, 348
151:              srai         s7, tp, 16
                  lui          gp, 425468
                  sltu         a0, s10, t5
                  slli         a3, a0, 23
                  beq          a2, a2, 167f
                  auipc        s7, 629111
157:              add          s9, s7, t2
                  bgeu         t2, s6, 163f
                  auipc        s5, 463682
                  slli         a7, a7, 16
                  lui          t2, 95079
                  sll          tp, s6, s7
163:              lui          a2, 460255
164:              xor          tp, t1, a2
                  sub          s9, a1, s0
                  nop
167:              lui          a3, 304986
                  or           t3, sp, a3
                  and          ra, t1, a2
                  srli         a3, a4, 18
                  xor          s6, zero, sp
                  ori          s9, a4, 1700
                  slt          s8, s11, gp
                  sra          t6, s8, t3
                  slti         a2, s3, -1933
                  bgeu         s11, tp, 192f
                  sub          a2, a3, a2
                  xor          a0, s7, a3
                  lui          s7, 294840
                  or           s9, a6, s10
                  ori          t5, s0, 641
                  add          sp, t4, a3
                  sra          t0, s3, s4
                  bltu         a0, t6, 200f
                  bne          a2, t1, 190f
                  sltu         t1, zero, a6
                  bgeu         a6, gp, 196f
                  bgeu         t2, t6, 202f
                  addi         s3, t4, 1016
190:              blt          t5, a7, 198f
                  auipc        t3, 971567
192:              sltiu        ra, a0, -587
                  xori         t3, s10, -1802
                  andi         s8, a1, -1290
                  beq          zero, s6, 201f
196:              bge          sp, s10, 209f
                  blt          a7, t2, 204f
198:              srai         a5, s6, 8
                  srli         s3, s9, 30
200:              add          zero, t5, a7
201:              sub          t1, s2, s7
202:              srl          a3, s7, gp
                  add          a5, a3, s6
204:              srl          a2, s8, t1
                  lui          s11, 155401
                  and          a3, s0, s0
                  srli         a2, s8, 3
                  blt          s0, s5, 228f
209:              slli         s1, t1, 13
                  bgeu         a1, a2, 219f
                  bltu         s8, s8, 221f
                  sltu         a0, a0, t2
                  auipc        s10, 333506
                  addi         s5, a3, 1445
                  srli         t3, sp, 8
                  nop
                  xori         a0, s11, -1651
                  bne          s9, s7, 236f
219:              nop
                  add          t3, sp, a3
221:              bne          a7, ra, 233f
                  xor          s3, gp, t6
                  sll          sp, a6, a2
                  xor          a2, t4, zero
                  srai         t5, a7, 29
                  sra          gp, gp, zero
                  slli         s5, a0, 5
228:              srl          s9, s9, t6
                  xori         a7, ra, -379
                  andi         a2, s11, -981
                  sll          t5, s8, t4
                  lui          s1, 472480
233:              andi         s5, s9, -316
                  srl          a3, s11, s10
                  and          ra, a6, s11
236:              add          t2, s9, a1
                  beq          s7, s11, 256f
                  beq          s10, s11, 249f
                  sltiu        s9, t3, 1740
                  sltiu        a1, t2, -1405
                  sll          ra, a2, tp
                  bgeu         s2, a3, 244f
                  auipc        a2, 290613
244:              sub          a0, s1, ra
                  srai         t6, a2, 28
                  sra          t0, s5, s3
                  slti         s7, t6, 1956
                  nop
249:              auipc        a1, 90436
                  lui          s1, 511209
                  bne          s2, tp, 262f
                  srai         t0, t1, 14
                  xor          s1, zero, s6
                  sll          s3, a2, s11
                  xori         s4, s1, 448
256:              add          s9, s3, gp
                  bne          a7, t6, 259f
                  srl          a0, s9, t0
259:              xori         s7, s9, 1713
                  bltu         t4, s3, 280f
                  srai         a6, a3, 12
262:              bltu         t0, t6, 278f
                  nop
                  sra          zero, tp, s4
                  sub          t5, t6, tp
                  lui          tp, 504009
                  or           t0, zero, a1
                  nop
                  sll          s9, t3, a6
                  or           s7, zero, s7
                  beq          a5, s6, 282f
                  add          t3, ra, s10
                  bgeu         s6, a1, 285f
                  srli         s6, a3, 27
                  and          t0, a3, gp
                  slti         tp, s7, -1965
                  xori         s9, t4, -1352
278:              ori          a0, a4, 1948
                  bne          zero, t5, 281f
280:              ori          t2, a1, 1027
281:              srli         s8, s3, 16
282:              sltiu        t2, sp, 1670
                  xori         gp, a4, 1121
                  andi         a1, a4, -96
285:              bge          a0, a4, 301f
                  bge          gp, t3, 302f
                  sll          sp, s2, t0
                  bge          t1, ra, 295f
                  slt          zero, t2, t1
                  srl          t1, t0, a4
                  bne          t0, a0, 299f
                  add          zero, a5, t4
                  slt          s7, s10, t0
                  bgeu         t0, t4, 306f
295:              sra          s6, s2, s10
                  bgeu         s6, s0, 314f
                  or           s4, s4, s0
                  bge          a5, a2, 310f
299:              sll          s9, s4, a5
                  bge          t4, a1, 313f
301:              slti         s8, t4, 458
302:              or           s4, s3, t4
                  nop
                  srl          s5, gp, a0
                  slti         s2, a6, 1742
306:              add          t5, s6, s6
                  nop
                  xor          tp, gp, a0
                  sll          t6, tp, s7
310:              sltiu        s1, t6, 1139
                  slli         s8, t5, 29
                  slti         ra, t5, 1795
313:              sub          gp, t4, s6
314:              slli         t5, t4, 27
                  nop
                  addi         t1, s3, 1491
                  bge          s4, t6, 329f
                  slt          a1, ra, s10
                  slti         s3, t3, -1150
                  addi         t3, a4, 733
                  bgeu         a4, a6, 341f
                  slli         gp, a7, 13
                  bne          t5, zero, 329f
                  bne          s5, s6, 335f
                  add          a6, s4, t2
                  slli         s6, a3, 7
                  slti         t6, s0, -808
                  slti         t6, s6, 1344
329:              blt          a2, s5, 347f
                  sub          a5, a6, s4
                  bltu         a5, a2, 349f
                  sltu         a5, s11, s11
                  sub          s8, s7, s4
                  ori          t5, s0, 499
335:              add          s8, zero, ra
                  ori          s4, a1, 46
                  sll          t1, t5, a3
                  sll          a2, t5, t4
                  ori          t0, a2, 1681
                  ori          s4, s10, 419
341:              add          s3, s9, t2
                  bgeu         s5, s4, 351f
                  sltu         a6, s0, s8
                  bgeu         a0, t0, 362f
                  slt          t0, t5, a4
                  sub          a3, tp, s9
347:              bge          s1, s1, 367f
                  bgeu         s10, s1, 359f
349:              andi         t0, s10, -1599
                  add          sp, ra, zero
351:              bltu         s5, s10, 367f
                  bne          s0, s4, 354f
                  srai         s10, ra, 9
354:              slt          s8, a2, t3
                  add          a5, s2, ra
                  xor          s11, a3, sp
                  slt          s3, a7, tp
                  sub          zero, t4, s11
359:              blt          s10, a0, 364f
                  xori         s1, gp, -233
                  bltu         t2, tp, 373f
362:              beq          a5, s8, 376f
                  lui          a2, 966847
364:              add          tp, t5, gp
                  ori          s1, t1, 1071
                  blt          s5, a1, 386f
367:              bltu         ra, t0, 372f
                  slli         a7, a6, 4
                  and          s7, s4, s4
                  and          sp, a7, s9
                  lui          s9, 889274
372:              sub          tp, t3, t6
373:              addi         t0, a7, -448
                  auipc        s6, 192492
                  sra          ra, s3, t5
376:              addi         a0, s3, 2030
                  nop
                  srai         s11, a1, 13
                  slt          a5, gp, s3
                  lui          zero, 352157
                  sra          tp, s9, s9
                  beq          gp, a0, 401f
                  slt          s5, s10, t0
                  sll          a6, s6, s5
                  blt          s5, s7, 395f
386:              sll          a5, a0, a2
                  beq          s6, a3, 396f
                  srl          s8, t1, zero
                  bltu         s8, a4, 400f
                  andi         t0, a5, -71
                  slt          a0, tp, s9
                  auipc        s10, 588431
                  slli         t1, s6, 7
                  beq          zero, a4, 404f
395:              srli         a1, tp, 12
396:              add          a3, s7, t1
                  xori         s7, ra, -847
                  bge          s8, sp, 417f
                  srai         s1, t2, 20
400:              nop
401:              andi         t6, a2, -1392
                  ori          a2, s6, 861
                  xori         tp, s3, 1295
404:              slt          s3, s6, tp
                  sra          t1, s11, t6
                  lui          s11, 61280
                  sll          t3, a3, t1
                  auipc        a5, 803090
                  bltu         s4, s5, 417f
                  andi         t1, s3, -667
                  slti         sp, s5, 435
                  sltiu        s6, s8, 424
                  sll          t1, s8, a0
                  xori         s4, a1, -1900
                  sltiu        s8, t5, 971
                  addi         s6, t2, -205
417:              srl          tp, a1, t1
                  and          gp, s9, s2
                  slti         t3, s1, -758
                  xori         s7, s3, 1744
                  xori         sp, s5, -1965
                  srai         t6, t4, 15
                  srl          ra, a4, s8
                  auipc        ra, 958415
                  srli         gp, s7, 12
                  srl          a1, t5, s11
                  slti         a5, t3, -913
                  srl          ra, s6, tp
                  ori          a3, t3, -1619
                  bge          t6, sp, 432f
                  nop
432:              slt          a0, zero, t1
                  slli         t2, ra, 0
                  srli         a3, s4, 27
                  blt          s11, t6, 444f
                  lui          t2, 956869
                  xor          a1, s4, ra
                  sra          a3, s11, ra
                  slli         t2, s9, 17
                  add          a5, gp, a1
                  srai         t3, s10, 19
                  andi         s11, gp, 1985
                  srl          gp, s2, sp
444:              blt          a4, a1, 464f
                  bge          t5, sp, 456f
                  bge          s1, a4, 452f
                  nop
                  sltiu        t5, s7, 1206
                  lui          s5, 236985
                  sltiu        tp, a7, -778
                  sltiu        a1, s3, -1287
452:              andi         s11, s5, 312
                  sra          a7, a1, t6
                  sra          a1, s10, s7
                  xor          t0, t1, s11
456:              addi         s6, s8, -1266
                  srli         tp, t6, 19
                  or           a7, s6, zero
                  srl          s11, a6, s3
                  srl          a1, t5, s10
                  bgeu         t3, sp, 473f
                  bltu         s0, s11, 464f
                  add          s3, sp, a5
464:              srai         s7, s2, 18
                  auipc        a1, 598241
                  xori         s6, s5, 1948
                  or           a0, s0, tp
                  slt          ra, s10, s4
                  ori          s3, a4, 1011
                  bgeu         s9, sp, 486f
                  slti         s2, ra, 891
                  or           ra, a7, s3
473:              sub          a7, t4, a5
                  sll          t2, a2, s5
                  srai         s2, tp, 28
                  srai         s2, t5, 22
                  addi         gp, zero, 403
                  add          t5, s11, sp
                  sra          t1, a2, a7
                  or           a5, a4, a0
                  slti         a2, tp, -1668
                  blt          t3, s6, 500f
                  andi         s8, a2, 656
                  sub          tp, a5, s9
                  bgeu         a2, t4, 501f
486:              slli         tp, a5, 31
                  addi         a2, s4, 197
                  bgeu         s1, s11, 493f
                  bge          s8, t4, 502f
                  beq          a2, s1, 504f
                  bltu         s0, ra, 502f
                  bgeu         a3, a7, 504f
493:              bgeu         t3, s10, 511f
                  addi         tp, s4, 1190
                  sub          t2, s6, s6
                  nop
                  auipc        a3, 278505
                  ori          t6, s7, 1668
                  nop
500:              auipc        s5, 457112
501:              xor          a0, a2, s0
502:              srli         t2, a7, 16
                  beq          t5, s6, 521f
504:              sra          s3, t3, a4
                  srli         s8, s0, 12
                  srl          t3, s9, s2
                  xori         t2, zero, 121
                  or           s4, s5, t0
                  or           zero, sp, s10
                  sltiu        t1, s7, -394
511:              sltu         t1, sp, a0
                  addi         a7, a0, -339
                  sub          s11, a3, s4
                  xori         tp, s9, -579
                  srai         sp, a6, 27
                  xor          ra, s7, s1
                  ori          s8, a6, 1041
                  sltu         ra, t1, a2
                  xori         s11, a1, -1681
                  srai         tp, gp, 20
521:              sltu         s9, t0, t5
                  srli         t3, s5, 0
                  srli         a1, a0, 11
                  and          t6, t2, gp
                  sll          s7, a6, tp
                  xor          s1, s9, s10
                  xori         t2, t5, 554
                  srli         ra, ra, 1
                  and          s8, s1, s5
                  slt          tp, t4, t1
                  auipc        gp, 559494
                  and          s2, a7, gp
                  srai         t5, s11, 12
                  bne          t0, a7, 539f
                  bgeu         t5, a5, 551f
                  andi         t5, a0, 1025
                  slt          a5, t4, s5
                  andi         s4, ra, 455
539:              slt          s7, a0, a3
                  sra          s3, t6, a1
                  xori         a0, a0, 52
                  lui          a1, 636852
                  nop
                  auipc        s6, 313330
                  sll          s9, s4, a3
                  bge          s5, tp, 555f
                  sub          a2, s1, s6
                  slt          t0, a3, s11
                  sra          a5, s7, a1
                  bne          s6, s0, 562f
551:              slt          t5, tp, s2
                  slt          s8, s3, s8
                  sltu         s9, t4, a1
                  and          a0, a4, s11
555:              or           s1, s6, a0
                  bgeu         a5, ra, 576f
                  bge          s8, s10, 564f
                  sra          a1, s2, a4
                  addi         a2, s5, 859
                  beq          s4, t0, 578f
                  andi         s2, a3, -1438
562:              xor          zero, t0, s10
                  sra          a0, gp, s5
564:              xor          ra, s2, t2
                  nop
                  sub          t6, ra, s7
                  lui          tp, 396465
                  slt          t3, t4, s5
                  bge          gp, t6, 581f
                  sltiu        s6, s0, -2035
                  sltiu        a3, tp, -911
                  slt          s8, t6, t1
                  lui          s8, 540787
                  bltu         s8, s10, 594f
                  blt          a0, t1, 586f
576:              sub          s7, t5, s8
                  bgeu         s1, s8, 596f
578:              add          a7, s7, s0
                  bltu         s10, tp, 590f
                  bltu         s0, a6, 592f
581:              slt          t2, sp, t5
                  add          a3, tp, zero
                  xor          s10, ra, s9
                  andi         s7, a6, 474
                  sra          a2, t2, s8
586:              andi         a6, s10, 400
                  xor          a2, t6, s5
                  or           a6, s4, t1
                  addi         s11, a6, 1358
590:              srai         s2, s4, 10
                  slt          sp, sp, a3
592:              srai         t5, a3, 27
                  sll          a2, s10, s1
594:              blt          t1, a6, 604f
                  ori          t5, tp, 527
596:              and          s1, t3, s10
                  beq          ra, t1, 603f
                  slli         s6, t1, 5
                  xor          t3, s6, t0
                  slti         gp, t4, -241
                  slli         a3, a1, 25
                  sub          s5, a4, t0
603:              auipc        a2, 379731
604:              beq          ra, t3, 606f
                  sltiu        tp, a1, 831
606:              beq          s4, s5, 619f
                  srli         t5, a7, 2
                  ori          a5, sp, 1910
                  bne          a3, a5, 627f
                  blt          ra, gp, 628f
                  lui          t0, 970908
                  bgeu         sp, s1, 628f
                  xor          a6, t6, s11
                  slt          s7, s4, s5
                  addi         ra, t1, 789
                  auipc        t2, 456371
                  srli         s3, t3, 16
                  slt          s9, s3, t1
619:              bge          s5, s11, 628f
                  sra          tp, s9, a5
                  or           sp, t1, ra
                  or           zero, s11, gp
                  slt          s4, t1, s4
                  nop
                  srai         a0, a7, 18
                  sltiu        tp, a6, 1812
627:              xor          s9, t4, t1
628:              bne          tp, s7, 648f
                  andi         s7, t0, 398
                  bne          a2, s11, 650f
                  and          zero, s3, s10
                  auipc        t0, 822167
                  bltu         s5, t3, 638f
                  bltu         s8, s9, 646f
                  ori          a3, gp, 76
                  beq          s9, t4, 648f
                  sltiu        a3, a7, 741
638:              nop
                  sltiu        a1, t6, 373
                  srli         t1, s5, 15
                  slt          s10, a5, s0
                  xor          t6, tp, s5
                  beq          t2, a3, 659f
                  slti         t0, s1, -1219
                  bne          a7, s3, 652f
646:              ori          t3, t3, 504
                  xor          s8, s8, s1
648:              auipc        s7, 902671
                  bne          zero, s0, 660f
650:              sll          ra, t3, s8
                  addi         t6, s2, 159
652:              bne          t5, a5, 668f
                  or           s8, t4, t2
                  or           s6, sp, s1
                  or           a7, s4, ra
                  blt          a4, a3, 668f
                  sub          zero, s4, t0
                  and          a0, tp, a7
659:              sltu         t1, t2, s9
660:              auipc        s5, 783245
                  bgeu         ra, s7, 675f
                  sll          t2, tp, tp
                  blt          ra, sp, 672f
                  slti         s6, s7, 1075
                  sra          s8, a5, gp
                  slt          t6, t4, t1
                  addi         s6, s6, 881
668:              and          s10, t5, s0
                  bgeu         sp, tp, 680f
                  sltiu        s4, s5, -66
                  sltu         tp, s11, t1
672:              nop
                  ori          sp, t6, -403
                  sub          t1, s6, gp
675:              xori         a7, s3, 175
                  bgeu         t3, t2, 694f
                  bne          a2, s4, 682f
                  beq          s6, sp, 696f
                  auipc        s5, 764529
680:              and          s3, t6, a1
                  ori          t1, s7, 1239
682:              blt          a0, t4, 702f
                  bgeu         t2, t0, 691f
                  lui          s8, 777208
                  sra          a7, s2, s0
                  blt          a2, ra, 688f
                  xor          s7, a2, t6
688:              or           a6, a2, a1
                  slt          a2, s4, s2
                  andi         a3, s10, -551
691:              sltiu        s7, a2, 1417
                  sub          a3, a4, s6
                  beq          a2, s7, 711f
694:              or           s10, zero, s4
                  sub          ra, a1, t5
696:              bge          a6, a1, 707f
                  andi         t3, gp, 132
                  nop
                  blt          a7, s0, 705f
                  slli         ra, t6, 2
                  lui          s2, 757215
702:              srli         a3, a6, 22
                  bgeu         t1, s8, 705f
                  slt          a6, t5, s10
705:              bltu         a6, a6, 714f
                  sll          a7, t1, a7
707:              slt          s9, t1, s1
                  xor          t2, a1, s10
                  blt          s3, a6, 728f
                  bge          s11, a7, 720f
711:              sra          a6, t5, s4
                  slli         t2, s6, 20
                  add          t6, sp, s3
714:              sltiu        s9, a0, 35
                  andi         a7, t6, -1522
                  addi         t1, ra, 1812
                  slt          a7, a4, a7
                  slt          t6, a5, s8
                  lui          a7, 492882
720:              bne          s8, s2, 731f
                  sltiu        s10, t4, 644
                  and          zero, s10, s0
                  slli         s3, a0, 16
                  beq          s4, a5, 733f
                  slt          a7, s9, s7
                  srl          s7, s6, a0
                  sltiu        s8, tp, -1738
728:              slli         s7, t2, 24
                  srai         gp, s11, 12
                  and          a1, a2, a7
731:              nop
                  bgeu         a0, a6, 752f
733:              sll          s1, ra, a7
                  nop
                  xori         t1, t1, 905
                  or           t1, s1, t1
                  beq          a0, s10, 757f
                  srl          s2, s7, s6
                  slti         s6, a6, 590
                  and          s6, tp, s0
                  bltu         s2, t5, 748f
                  slti         s6, s11, -275
                  slti         a0, s11, 1536
                  slt          a0, t0, s9
                  xor          s2, s6, zero
                  blt          t6, s0, 748f
                  andi         s8, a7, -927
748:              bge          tp, s8, 766f
                  srai         a3, a2, 4
                  srl          t3, a1, a6
                  addi         t0, a1, -1065
752:              slt          sp, t3, s0
                  add          zero, a4, t2
                  and          tp, zero, s11
                  andi         a6, a5, -505
                  sltiu        t5, t4, 65
757:              sub          s5, t2, s5
                  bgeu         s7, a0, 763f
                  srai         t0, t4, 22
                  srli         s3, s6, 19
                  add          s8, t3, t0
                  auipc        a2, 154926
763:              srl          s1, sp, a7
                  la           a3, region_1+194 #start riscv_load_store_rand_instr_stream_10
                  lb           a1, 1627(a3)
                  sll          s11, a6, s0
                  add          a6, tp, s4
                  sb           t1, 336(a3)
                  sra          t6, s11, sp
                  sb           s1, 1250(a3)
                  lbu          s10, 1759(a3)
                  sb           a5, -81(a3)
                  lbu          s11, 1550(a3)
                  lbu          t0, 129(a3)
                  xori         tp, a7, 432
                  srl          s11, s1, t0
                  xor          t0, s5, t2
                  xor          a2, a6, s1
                  auipc        tp, 838384
                  lb           t2, 106(a3)
                  lbu          s10, 1761(a3)
                  sh           s5, 1696(a3)
                  lbu          zero, 1037(a3)
                  lbu          s5, 1493(a3)
                  srl          t1, s2, a6
                  and          a7, t2, a7
                  sra          s5, s7, s4
                  lb           t1, 1217(a3)
                  sltu         s5, tp, s1
                  sltiu        s9, s0, -1003
                  sltiu        t5, a0, 179
                  auipc        t3, 329326
                  sb           s6, 1670(a3)
                  lui          a0, 847624
                  lh           s7, 1584(a3)
                  lhu          s2, -92(a3)
                  sb           s2, 1633(a3)
                  sltu         t2, s10, ra
                  sll          s2, a2, s1
                  lb           s2, 291(a3)
                  sll          s11, s8, s7
                  lbu          s11, -95(a3)
                  sltiu        s4, ra, -161
                  addi         t6, t6, -358
                  nop
                  lh           a6, 1044(a3)
                  lb           t2, 969(a3) #end riscv_load_store_rand_instr_stream_10
                  xor          s10, a5, s7
                  bge          ra, s10, 777f
766:              sltiu        s5, s10, 244
                  xor          s7, s0, s7
                  addi         t1, sp, 1081
                  bgeu         tp, s0, 785f
                  or           gp, zero, s7
                  lui          sp, 874669
                  and          s11, tp, t6
                  xor          ra, s7, s4
                  bltu         t6, s8, 787f
                  bne          a4, t1, 789f
                  addi         t0, a4, 943
777:              xori         a2, a0, 1210
                  slt          a0, s3, ra
                  srl          s7, t3, s2
                  srai         s3, a2, 10
                  nop
                  nop
                  sltu         gp, a7, tp
                  bne          s9, t2, 796f
785:              bne          s9, s10, 801f
                  sra          s8, s7, t4
787:              sltiu        t0, tp, 1620
                  addi         t6, a5, -1594
789:              slli         t1, a5, 17
                  srl          zero, a6, s9
                  nop
                  andi         s7, ra, -182
                  nop
                  sltiu        t6, s5, -727
                  or           ra, s0, a5
796:              slti         a0, s1, -829
                  srli         s7, a6, 8
                  sltu         sp, a1, s1
                  or           sp, t0, zero
                  srai         s3, ra, 31
801:              srai         s9, t4, 28
                  srli         a3, a7, 17
                  andi         tp, gp, 40
                  srl          a0, t3, zero
                  sll          t0, s4, gp
                  srli         a5, t6, 28
                  sltiu        s11, t2, 422
                  bne          s4, tp, 816f
                  bgeu         s6, s9, 825f
                  srai         s4, a1, 20
                  sltu         s10, s6, a4
                  slli         a6, t4, 18
                  srl          s5, sp, tp
                  addi         tp, s4, -1353
                  bge          s6, a4, 820f
816:              slli         a0, s0, 13
                  ori          a1, s9, -400
                  ori          t3, a1, -1354
                  slti         s7, a4, 927
820:              and          s2, sp, t4
                  add          a6, s7, t3
                  sll          s2, t2, s2
                  bge          s9, a5, 834f
                  xor          s7, s11, t2
825:              nop
                  add          s9, s7, a7
                  add          a7, sp, t0
                  srli         s2, s4, 22
                  sltiu        a0, s6, 1353
                  bltu         t5, s4, 848f
                  sra          s1, zero, a7
                  bltu         s3, a3, 844f
                  and          s4, gp, t4
834:              srai         tp, zero, 0
                  srl          s9, s9, s11
                  bltu         t4, t5, 848f
                  xori         gp, a4, 73
                  srai         zero, sp, 19
                  xori         t2, s1, 1522
                  bltu         s8, t5, 860f
                  bltu         s10, a5, 859f
                  bltu         t3, s2, 854f
                  slti         s8, ra, 1003
844:              bgeu         t3, t6, 862f
                  bge          a2, zero, 865f
                  srli         a0, t1, 2
                  slti         s1, s5, -1446
848:              auipc        s11, 918070
                  bne          a5, s4, 867f
                  sltiu        t3, s4, 1223
                  auipc        t2, 978812
                  xor          sp, t5, s9
                  slti         s11, tp, -1884
854:              ori          a2, a0, -199
                  lui          a2, 48978
                  beq          t3, s4, 875f
                  slt          a5, s7, t6
                  nop
859:              slti         ra, ra, 1775
860:              bne          a0, a7, 876f
                  add          t3, tp, t4
862:              or           s11, a1, ra
                  auipc        s9, 1002364
                  andi         s9, t4, 345
865:              sub          s1, t3, s3
                  xor          ra, s10, s10
867:              and          t3, zero, s10
                  andi         a3, s2, -392
                  sltu         t6, s3, t2
                  auipc        s1, 497228
                  blt          ra, t1, 873f
                  bgeu         s7, s2, 888f
873:              slt          t3, a5, s4
                  andi         ra, t2, 746
875:              slti         s2, t2, 650
876:              addi         s6, s3, -268
                  xori         a5, a5, 1901
                  sra          s5, s3, s10
                  nop
                  and          sp, a4, s3
                  bgeu         a1, t3, 893f
                  sll          s3, a0, a3
                  slt          t3, a7, s7
                  sra          sp, t4, s2
                  srli         a3, a0, 25
                  beq          a6, t3, 888f
                  srl          s7, t6, s3
888:              ori          t0, s7, 1748
                  andi         a3, s5, 315
                  sltiu        s10, tp, 1252
                  bltu         t2, s7, 900f
                  slli         t0, t3, 13
893:              xor          t0, t2, s10
                  andi         t3, ra, 1594
                  sltiu        ra, s9, 792
                  slt          a3, t3, s11
                  sra          s5, t6, s0
                  sra          zero, s11, ra
                  sra          a6, gp, zero
900:              sll          s10, tp, a6
                  lui          zero, 1018200
                  nop
                  ori          t0, a0, 2040
                  sll          a0, s3, s9
                  xor          sp, s8, s2
                  xori         a2, zero, 2013
                  andi         gp, s1, -124
                  bltu         sp, sp, 918f
                  sltu         s6, zero, s7
                  bge          s9, t1, 930f
                  srai         a5, zero, 14
                  srli         s4, t3, 29
                  sub          s7, s8, tp
                  nop
                  andi         s3, s0, -1361
                  slli         t1, t4, 11
                  sll          sp, a1, a4
918:              auipc        s10, 128976
                  bgeu         s11, s0, 928f
                  and          s9, a3, a2
                  ori          s7, s1, 1753
                  auipc        s9, 673066
                  bge          a7, a0, 936f
                  addi         a0, t3, 934
                  or           s2, a3, a6
                  sltu         tp, t4, zero
                  srai         t2, s9, 20
928:              bgeu         s2, t2, 939f
                  xor          a7, t3, t4
930:              sub          a5, a6, s4
                  andi         a0, sp, 858
                  bne          sp, a2, 950f
                  slt          s2, t3, t1
                  xor          s10, a6, s11
                  nop
936:              and          t0, s9, sp
                  bne          s4, s6, 951f
                  nop
939:              blt          s4, s10, 944f
                  beq          ra, a7, 946f
                  bne          ra, t0, 957f
                  slli         t0, s11, 31
                  slt          t3, a5, sp
                  xor          s4, s7, s8
                  slti         s10, s11, 1647
                  srli         s11, t0, 4
                  sll          s11, ra, a5
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  slt          s6, a2, t3
                  xor          s9, tp, sp
944:              srli         s6, a0, 5
                  sll          s11, s6, t0
946:              sll          s2, t0, s3
                  xori         sp, t0, -307
                  srai         gp, s10, 5
                  xor          t2, a7, s5
950:              lui          s3, 501020
951:              sltiu        a6, t0, -26
                  sltu         sp, a5, a0
                  add          ra, s11, t6
                  bne          a5, s9, 961f
                  srai         a6, a1, 22
                  bltu         a2, a4, 968f
957:              bne          s3, t3, 965f
                  bltu         sp, a2, 970f
                  lui          a5, 166160
                  bne          s5, s7, 978f
961:              srli         s11, s3, 2
                  bne          a6, s1, 973f
                  bltu         sp, t0, 974f
                  ori          s10, t2, -1056
965:              xor          a3, t1, s6
                  or           s10, gp, a2
                  sra          sp, a6, s2
968:              sltu         s11, s3, t3
                  and          ra, s3, t6
970:              auipc        ra, 32522
                  slti         t2, ra, -171
                  sll          t6, s10, ra
973:              bge          s1, t0, 993f
974:              lui          s9, 6300
                  bge          s8, a0, 980f
                  bge          s5, s3, 982f
                  and          a2, t4, sp
978:              sltiu        t6, a6, -146
                  add          s2, a7, t3
980:              sub          t0, ra, s6
                  add          a0, a3, ra
982:              bge          s6, a0, 1002f
                  xor          a5, sp, tp
                  sra          s11, s3, gp
                  sll          a3, s6, s9
                  auipc        s10, 653185
                  slli         t2, t4, 28
                  slt          s7, s3, t4
                  nop
                  or           a5, s9, a0
                  and          sp, s8, tp
                  xor          s5, s7, a0
993:              bge          s9, s11, 1005f
                  bgeu         s11, s0, 999f
                  sltiu        a0, s3, 822
                  xori         s8, gp, -2042
                  bge          t4, ra, 999f
                  and          t1, sp, s0
999:              nop
                  slli         t1, tp, 30
                  sub          s6, a7, a3
1002:             bne          s2, a5, 1004f
                  slti         s9, s6, 164
1004:             addi         s7, s2, -1248
1005:             or           sp, sp, s8
                  sll          s11, a4, s8
                  sltiu        t5, s0, -850
                  sltiu        a3, s0, 612
                  addi         sp, gp, 603
                  lui          s10, 747161
                  and          t3, t4, s11
                  and          tp, a2, t6
                  sra          s11, a0, t4
                  addi         s9, t5, 1687
                  blt          s5, a3, 1033f
                  beq          s7, t3, 1028f
                  nop
                  auipc        s1, 173689
                  sltu         tp, a2, t4
                  xor          t3, gp, sp
                  sll          s10, sp, ra
                  bgeu         a6, s3, 1034f
                  slli         a3, s1, 5
                  srl          zero, a2, t6
                  auipc        s2, 402376
                  slli         s1, t5, 15
                  sltu         t6, sp, s10
1028:             addi         s5, s6, 488
                  sll          gp, gp, s8
                  srl          a6, a0, a2
                  bgeu         zero, s8, 1042f
                  andi         s5, a3, -24
1033:             beq          gp, s11, 1045f
1034:             ori          a0, a5, 574
                  nop
                  slli         s4, s8, 30
                  bge          t0, s6, 1057f
                  sub          s11, t6, t1
                  ori          s6, s3, 1452
                  sltiu        a7, a7, -1793
                  and          s3, s1, s5
1042:             bltu         a0, tp, 1055f
                  addi         t2, a3, 1413
                  srai         s2, sp, 29
1045:             nop
                  nop
                  blt          t6, a1, 1063f
                  sra          t2, ra, s1
                  srli         a5, s5, 21
                  bltu         a2, s9, 1057f
                  sltiu        a0, a5, -1703
                  slli         t5, s8, 2
                  slti         a5, a7, -1279
                  or           s10, ra, ra
1055:             sll          sp, s1, s0
                  bne          s5, s2, 1074f
1057:             add          a0, s3, a3
                  sltu         t0, s7, s4
                  add          t5, s8, t3
                  bltu         s0, a2, 1065f
                  auipc        ra, 87816
                  bltu         s0, a5, 1076f
1063:             bne          s11, t6, 1071f
                  addi         a2, s0, 1542
1065:             andi         t1, tp, -1848
                  add          a2, s2, s1
                  slti         a1, s6, 537
                  and          t3, tp, s1
                  andi         ra, s9, -1231
                  lui          s7, 656267
1071:             lui          t5, 934245
                  beq          a3, tp, 1092f
                  srli         a0, s5, 31
1074:             blt          a5, s5, 1093f
                  xor          zero, t1, t6
1076:             slti         s6, s2, 341
                  auipc        t6, 674254
                  bgeu         a5, s3, 1088f
                  beq          s5, s5, 1090f
                  bltu         ra, a5, 1096f
                  blt          s4, a2, 1099f
                  bgeu         t3, t2, 1098f
                  srai         s2, s4, 17
                  addi         a6, t1, 517
                  xori         t1, a1, 1895
                  lui          s8, 686187
                  auipc        t6, 958386
1088:             andi         sp, t4, 764
                  and          s5, a4, s2
1090:             srai         a1, a2, 21
                  xori         tp, t3, 51
1092:             bne          t2, a3, 1103f
1093:             slti         s10, zero, -505
                  srl          s4, s3, gp
                  or           t1, s8, a5
1096:             beq          s7, s3, 1105f
                  slti         s6, s11, 386
1098:             lui          a5, 831434
1099:             beq          s2, s10, 1117f
                  srl          t3, s9, t4
                  bne          s9, s5, 1110f
                  srai         s3, a2, 9
1103:             sub          s1, t6, tp
                  ori          a1, s4, -318
1105:             sll          s3, t1, a6
                  lui          s3, 780255
                  and          s7, s8, t6
                  addi         t5, s0, -1180
                  slli         t5, t6, 24
1110:             or           s10, tp, t3
                  lui          t3, 89719
                  slti         t2, t1, 407
                  slti         a3, t2, 1966
                  bne          sp, s6, 1134f
                  andi         tp, zero, 1966
                  srl          s5, s4, sp
1117:             srli         a2, a7, 5
                  sub          a3, s10, s10
                  nop
                  nop
                  bne          s9, s4, 1132f
                  sra          s7, s10, t0
                  srai         t6, s2, 19
                  sll          s4, s10, s1
                  bgeu         a6, s0, 1143f
                  sra          a7, s9, t6
                  sltu         s9, a4, sp
                  sub          a3, s5, s8
                  sltiu        a0, gp, 728
                  slt          s4, s4, zero
                  sra          a7, a0, s2
1132:             bge          a4, t5, 1144f
                  slti         t0, t1, -110
1134:             sra          ra, s10, s2
                  ori          a3, gp, -1243
                  ori          t0, sp, 947
                  xori         a5, t1, -486
                  ori          s1, s1, -2043
                  slt          sp, t6, gp
                  sltu         s1, s8, ra
                  sra          zero, sp, sp
                  or           t6, a5, t5
1143:             srai         s5, t5, 25
1144:             addi         gp, s3, -1868
                  andi         t6, s11, -137
                  srl          s3, s1, t4
                  lui          sp, 407435
                  bge          a2, a6, 1153f
                  beq          t6, s9, 1151f
                  srai         s4, t0, 19
1151:             add          a7, s2, a7
                  ori          t3, t5, -1106
1153:             beq          a1, a1, 1171f
                  xor          tp, a3, t3
                  sub          gp, s3, a0
                  xor          a6, s0, t4
                  sra          t3, s10, t5
                  auipc        t3, 339350
                  bge          t6, s8, 1166f
                  xori         gp, a7, -1963
                  blt          s4, t3, 1177f
                  xori         tp, s3, -1978
                  or           s1, a1, s1
                  or           a7, a1, a2
                  nop
1166:             sra          ra, s7, a2
                  andi         s2, s1, -1939
                  xori         a3, t4, 995
                  sll          s5, a7, s4
                  srai         s4, t2, 14
1171:             bne          s3, s6, 1177f
                  addi         t6, s0, 1818
                  or           sp, s9, a0
                  add          s6, t5, t2
                  sll          t2, s10, s9
                  and          a2, a5, s3
1177:             nop
                  andi         zero, t1, 1213
                  lui          s3, 218451
                  nop
                  bltu         a4, t5, 1189f
                  andi         zero, tp, -1370
                  beq          sp, s5, 1188f
                  addi         s2, zero, -2002
                  srl          a7, tp, s3
                  srli         s8, zero, 27
                  srai         s1, s11, 27
1188:             or           t6, a7, a1
1189:             xor          a2, s5, gp
                  sub          a7, a6, a2
                  bge          s3, s10, 1209f
                  sltu         s4, ra, t3
                  addi         t1, s6, -384
                  nop
                  andi         s11, t0, -1190
                  auipc        sp, 258387
                  ori          a0, t2, -675
                  slt          a3, s11, s10
                  sltiu        gp, s2, 669
                  srl          t0, s3, t5
                  auipc        t5, 1004945
                  bgeu         zero, a1, 1218f
                  sll          s6, a5, tp
                  addi         s2, t6, -1094
                  and          s7, s10, a7
                  slli         t6, t2, 16
                  lui          s8, 753861
                  xori         s4, a4, 1084
1209:             srl          a1, a5, tp
                  sltiu        a6, s5, 1686
                  xor          a5, t3, a5
                  add          t3, zero, s10
                  slli         a6, s10, 2
                  srl          t3, ra, ra
                  nop
                  nop
                  slli         s9, s9, 29
1218:             nop
                  or           s4, s0, gp
                  lui          sp, 358529
                  and          zero, s1, s5
                  bge          a5, ra, 1233f
                  srli         a5, t1, 30
                  or           a1, a7, a2
                  bne          a6, a3, 1243f
                  auipc        s2, 682656
                  bltu         zero, s8, 1239f
                  blt          s5, a6, 1248f
                  nop
                  addi         s1, s2, -1015
                  beq          s9, s9, 1243f
                  auipc        t2, 522519
1233:             lui          s6, 1004639
                  bge          a4, s2, 1236f
                  nop
1236:             bne          tp, a1, 1255f
                  lui          sp, 518724
                  sltiu        gp, zero, -1433
                  andi         s4, s11, 1766
                  xor          zero, s6, ra
                  auipc        a3, 555992
                  srli         a7, a0, 1
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  srl          t2, s3, s3
                  nop
1239:             sltiu        s10, t6, -322
                  slti         s6, s9, 715
                  beq          a5, gp, 1261f
                  lui          s2, 114585
1243:             sll          s2, s10, tp
                  srli         a5, s8, 20
                  andi         a0, s1, 95
                  sub          s7, t2, zero
                  sll          a3, t4, s9
1248:             sltu         t5, s6, t3
                  slti         a1, a2, 1649
                  sll          s7, t1, s1
                  srli         s8, a4, 23
                  bgeu         s5, s0, 1262f
                  xori         t6, a1, 252
                  blt          a5, a1, 1263f
1255:             xor          s10, tp, s6
                  ori          t0, s5, -1521
                  bgeu         t1, s6, 1268f
                  srl          s1, s3, t0
                  slli         s3, tp, 13
                  sltu         zero, s3, t0
1261:             srai         t1, s5, 27
1262:             blt          s5, a7, 1276f
1263:             sltu         ra, s4, s11
                  slt          s6, sp, a1
                  slli         t2, a0, 13
                  addi         a3, a6, 1838
                  blt          t6, t6, 1279f
1268:             bgeu         s10, a3, 1284f
                  sltiu        zero, s8, -1421
                  sltiu        s1, ra, 1565
                  blt          t3, s3, 1280f
                  bge          t5, s6, 1285f
                  xori         zero, s7, 531
                  sra          a5, a7, s11
                  slti         a3, tp, -1003
1276:             auipc        s1, 993727
                  auipc        sp, 243639
                  auipc        t6, 633150
1279:             and          t6, a6, a5
1280:             and          a0, t6, ra
                  slti         s2, s5, 547
                  srl          a0, t4, s9
                  bge          s0, s1, 1295f
1284:             ori          sp, t1, 1548
1285:             sll          t2, s4, tp
                  xori         a3, s3, -1237
                  sll          t1, s1, gp
                  bge          zero, a6, 1300f
                  lui          t5, 286109
                  sltiu        s6, s0, 1893
                  slt          a0, t1, a6
                  slli         t5, s1, 3
                  xori         s5, a6, 602
                  srli         t5, a5, 1
1295:             srl          zero, s5, a3
                  lui          t6, 151395
                  sra          s10, s5, a0
                  srl          s8, s4, t6
                  srli         s8, t1, 13
1300:             bge          s6, a4, 1320f
                  andi         s7, s4, -121
                  addi         s7, t4, 167
                  add          s11, ra, t1
                  sra          s2, s4, s9
                  nop
                  sltiu        ra, t0, -816
                  sub          a6, ra, zero
                  srai         sp, a5, 7
                  srli         a7, a7, 13
                  sltiu        s5, s4, -351
                  srai         a7, t2, 5
                  bgeu         zero, a3, 1330f
                  sub          t3, a4, s10
                  xori         s3, a5, -952
                  bne          a6, s11, 1335f
                  lui          s1, 210803
                  sll          a3, t1, t1
                  and          s8, gp, s2
                  sra          s11, s5, a0
1320:             xori         s7, s10, -669
                  sub          s4, t2, t2
                  xor          s9, t0, t1
                  beq          s2, s3, 1332f
                  srli         zero, t3, 14
                  auipc        a5, 915126
                  sltu         t5, t2, tp
                  srai         t3, s5, 27
                  slt          s9, s5, a6
                  sub          s1, sp, s0
1330:             lui          a3, 531100
                  andi         a1, s9, -954
1332:             lui          t5, 275405
                  lui          s1, 208428
                  lui          t3, 37892
1335:             auipc        t2, 590191
                  slli         s3, s5, 16
                  sltiu        a1, s2, -2000
                  lui          s6, 1018172
                  auipc        gp, 637415
                  bne          t5, a0, 1342f
                  sra          a6, s7, s11
1342:             auipc        t3, 108090
                  addi         a6, sp, 593
                  srli         s2, a7, 24
                  srai         s5, s2, 1
                  slti         t1, s1, -932
                  slt          zero, t6, s10
                  or           s5, s7, a5
                  addi         a5, t6, 22
                  beq          s3, a2, 1361f
                  sltiu        a5, tp, 1765
                  add          a1, s10, t6
                  or           s11, s9, ra
                  bge          a0, t6, 1365f
                  bge          s7, s9, 1367f
                  sll          s1, a6, s11
                  blt          s9, sp, 1362f
                  la           s9, region_1+408 #start riscv_load_store_rand_instr_stream_0
                  lb           t5, 13(s9)
                  sw           t4, 0(s9)
                  sb           s10, -8(s9)
                  sb           t4, -9(s9)
                  lb           t2, -3(s9)
                  srai         t3, s6, 31
                  lhu          a3, -6(s9)
                  lb           t1, -7(s9)
                  sb           a3, -7(s9)
                  sh           s4, -10(s9)
                  slt          s4, t6, zero
                  lb           s8, 15(s9)
                  ori          s11, a3, -947
                  lb           t5, -11(s9)
                  slti         t6, s8, 1528
                  sb           t1, 6(s9)
                  sltiu        a7, tp, -1140
                  ori          a5, s10, 459
                  andi         s1, s9, 781
                  lbu          a5, 3(s9)
                  lw           a7, -8(s9)
                  sh           a4, 6(s9)
                  srl          a0, s2, s7
                  add          s3, a4, a4
                  lbu          gp, -14(s9)
                  andi         s4, s9, 1296
                  sltiu        s3, t0, -1396
                  sh           a1, -8(s9)
                  sb           t0, -9(s9)
                  lbu          ra, -10(s9) #end riscv_load_store_rand_instr_stream_0
                  andi         ra, s10, 1632
                  sltiu        s5, s10, 849
                  sltu         a2, s0, a2
1361:             bgeu         a3, s10, 1377f
1362:             blt          s5, s9, 1368f
                  srli         s7, s4, 28
                  srai         s3, t5, 30
1365:             slt          s3, gp, t2
                  xor          a0, s9, t1
1367:             bltu         s1, s2, 1385f
1368:             and          t6, t2, s1
                  and          sp, a4, a2
                  sll          s9, s10, t2
                  sra          s8, s6, a3
                  bltu         ra, a3, 1392f
                  bltu         t3, t0, 1384f
                  xor          s9, sp, s6
                  beq          ra, s2, 1383f
                  and          s11, s2, s2
1377:             srli         ra, s9, 19
                  bge          t5, a2, 1394f
                  xor          s4, a1, s5
                  bge          t1, s4, 1399f
                  sltiu        s2, tp, 120
                  xor          s4, a6, sp
1383:             beq          s7, t4, 1395f
1384:             auipc        s6, 183285
1385:             slti         a5, s7, 1252
                  xor          a2, s5, t3
                  srai         t6, t1, 25
                  auipc        zero, 571140
                  srli         s8, t3, 17
                  sra          t6, ra, s9
                  bltu         gp, s6, 1409f
1392:             sub          a0, t3, s6
                  auipc        t3, 357287
1394:             add          t2, s6, t0
1395:             and          s7, a0, a4
                  bgeu         s11, s5, 1401f
                  sll          a2, a7, a0
                  auipc        s3, 94161
1399:             xori         s10, s3, 869
                  ori          a6, a1, -793
1401:             auipc        t1, 1026735
                  beq          a7, a6, 1418f
                  xori         s1, s1, 136
                  and          s10, ra, s5
                  sub          a3, s6, s1
                  ori          t5, a1, 1925
                  blt          t4, s2, 1414f
                  ori          ra, a5, -415
1409:             xor          s4, t2, s5
                  blt          a5, a0, 1423f
                  sltiu        a2, s1, 1300
                  sltiu        t0, a2, -267
                  sltu         s8, sp, a7
1414:             add          t3, a3, a1
                  addi         s3, s1, 1100
                  bne          tp, t5, 1425f
                  sltu         a5, tp, s1
1418:             nop
                  sub          t1, a7, a1
                  nop
                  sra          s2, s11, a1
                  add          t6, a2, s3
1423:             or           s6, sp, s1
                  ori          sp, s5, 245
1425:             andi         s7, a4, -1679
                  srl          s2, sp, t3
                  bne          s1, t4, 1429f
                  add          s7, s9, a2
1429:             lui          a2, 393211
                  ori          t6, s2, -865
                  srai         sp, a2, 17
                  bne          s3, s9, 1450f
                  andi         sp, gp, -336
                  srai         t6, gp, 10
                  nop
                  srli         s10, ra, 22
                  and          a1, t5, t2
                  nop
                  andi         gp, a1, -486
                  sub          gp, t2, a3
                  and          s5, s7, t3
                  xori         a1, s7, 579
                  andi         a6, tp, 1194
                  add          a2, t2, t4
                  and          s11, a2, s2
                  sll          a7, ra, s6
                  sub          a2, s9, t6
                  andi         a3, t2, 1945
                  lui          a5, 293011
1450:             slti         a1, a5, -135
                  sra          s2, s5, tp
                  beq          t2, zero, 1466f
                  bne          s7, t3, 1463f
                  or           s1, t5, s1
                  sub          a0, s3, a0
                  srli         a7, s2, 10
                  sltu         a6, s10, s3
                  auipc        sp, 654248
                  blt          s11, zero, 1472f
                  srl          s3, ra, s11
                  bne          a4, t0, 1470f
                  auipc        a5, 728605
1463:             bne          s5, a0, 1475f
                  and          a7, s10, s4
                  beq          s6, s0, 1477f
1466:             bltu         s2, s8, 1482f
                  lui          s10, 660631
                  srli         t6, s5, 29
                  sltu         gp, a1, s8
1470:             bgeu         tp, a7, 1476f
                  ori          s4, a4, -1572
1472:             addi         zero, tp, 1810
                  slli         s6, s2, 6
                  sub          t3, s8, sp
1475:             bge          tp, s5, 1495f
1476:             beq          s8, t5, 1483f
1477:             slli         a1, s7, 27
                  beq          a2, s4, 1483f
                  add          tp, s1, t1
                  sub          a0, s4, s0
                  andi         s2, t5, 1545
1482:             srai         s4, t5, 0
1483:             add          s11, sp, t0
                  blt          t0, zero, 1504f
                  ori          ra, a2, 1859
                  blt          a7, ra, 1502f
                  sltu         t5, a5, t3
                  auipc        a7, 400506
                  slti         s8, s0, -1913
                  sltu         t6, a1, zero
                  srl          a3, s3, s10
                  srl          s2, a1, sp
                  slt          tp, a2, a0
                  ori          t0, a1, 646
1495:             sll          t3, s2, s2
                  sra          sp, s10, s6
                  sltu         s2, s1, a5
                  xori         sp, tp, 469
                  bge          t0, a3, 1510f
                  blt          s1, a1, 1518f
                  srli         s10, t4, 13
1502:             bge          tp, t5, 1514f
                  xor          a6, s1, a6
1504:             sltiu        t3, t2, 1959
                  sra          t0, s7, s9
                  addi         s8, zero, 1034
                  andi         ra, t0, 1352
                  srl          a5, t2, t2
                  addi         a3, ra, -487
1510:             slt          s9, t3, tp
                  auipc        tp, 249128
                  xori         t5, sp, 263
                  sltu         a3, t4, s8
1514:             sltiu        sp, t2, 183
                  bge          s10, s7, 1523f
                  add          a5, t6, s3
                  srl          sp, s2, t0
1518:             bge          s4, t4, 1536f
                  xori         s11, s0, -416
                  bgeu         s9, a7, 1536f
                  lui          sp, 780229
                  srl          gp, sp, s3
1523:             nop
                  sub          s7, t3, s4
                  beq          t4, t0, 1543f
                  and          t3, a6, t4
                  bne          t4, a1, 1546f
                  lui          s5, 361959
                  bge          t2, s0, 1538f
                  sub          zero, t5, a4
                  srli         t3, s2, 8
                  lui          t0, 716583
                  add          s6, t5, a3
                  sltiu        ra, t5, 791
                  xori         t2, a2, -1828
1536:             bgeu         t4, s10, 1550f
                  bne          zero, a3, 1548f
1538:             bltu         s4, s8, 1556f
                  sll          sp, s1, a7
                  sltiu        a5, s4, -1536
                  or           s11, s7, s3
                  sltu         s2, s9, sp
1543:             xori         s10, t4, -709
                  beq          t5, a5, 1546f
                  beq          gp, t6, 1557f
1546:             xor          sp, s3, zero
                  add          s8, t4, t3
1548:             ori          s11, t1, 835
                  nop
1550:             andi         a5, sp, 1700
                  blt          s0, s7, 1556f
                  lui          s3, 893519
                  beq          a5, a7, 1555f
                  blt          s4, s3, 1574f
1555:             srli         ra, a0, 0
1556:             sub          t5, s0, t2
1557:             ori          s10, t1, -892
                  andi         zero, a1, -2024
                  srli         s7, s7, 8
                  xor          s8, s11, s7
                  and          a1, a4, a6
                  ori          ra, a0, 1959
                  sll          a7, s7, s8
                  auipc        s7, 188168
                  sra          sp, t4, s3
                  lui          s7, 851990
                  sltiu        sp, t0, 1135
                  bne          s0, a5, 1579f
                  sra          a1, a0, s2
                  blt          s8, s6, 1580f
                  srai         a6, s3, 6
                  slti         ra, s11, -1029
                  sub          zero, sp, a5
1574:             srai         tp, a3, 13
                  bltu         a3, s6, 1582f
                  srl          a0, t2, tp
                  sltiu        a7, sp, 1888
                  auipc        tp, 191022
1579:             and          t2, s7, t3
1580:             auipc        a7, 499909
                  sltiu        a7, t6, 1198
1582:             bgeu         a6, s6, 1595f
                  sra          t0, s9, s3
                  sll          zero, t3, sp
                  and          tp, t0, tp
                  srli         a0, a0, 1
                  blt          s5, s5, 1601f
                  srli         tp, a5, 23
                  and          t0, a1, a2
                  sltu         s7, s0, tp
                  sub          a2, gp, t4
                  slli         t1, s8, 27
                  ori          t1, a3, -1304
                  srli         a1, s3, 25
1595:             lui          s3, 548017
                  nop
                  or           a0, tp, tp
                  sub          s5, t6, t3
                  beq          tp, s7, 1610f
                  srli         a3, t1, 27
1601:             nop
                  and          t5, sp, a6
                  srl          a2, a5, t2
                  sll          a0, ra, gp
                  slt          s5, a0, a3
                  srli         a3, a5, 3
                  srl          s2, a7, s3
                  slli         zero, a0, 18
                  sltu         t5, s4, s0
1610:             lui          s4, 1038292
                  nop
                  lui          a7, 857533
                  andi         t6, gp, 1211
                  nop
                  sltu         tp, sp, a1
                  blt          s4, s4, 1634f
                  slt          t0, s0, s9
                  xor          s7, s4, t0
                  blt          s7, a5, 1637f
                  beq          s8, t4, 1622f
                  sra          a7, t3, s11
1622:             and          s1, s0, s6
                  sra          a3, s2, sp
                  sra          s3, s9, s5
                  ori          s9, s3, -1248
                  or           s10, a7, ra
                  srli         a7, a5, 23
                  xori         t3, s8, 505
                  bgeu         t1, zero, 1634f
                  sll          t6, a2, a6
                  bltu         s4, tp, 1649f
                  srl          s2, s9, a6
                  slli         s4, a0, 8
1634:             sub          s9, s1, s11
                  slli         ra, a7, 3
                  bne          s6, s1, 1652f
1637:             bge          s3, sp, 1649f
                  srl          t2, a0, a6
                  xori         ra, s10, -829
                  bne          s6, gp, 1652f
                  srli         tp, s3, 24
                  bgeu         s4, t4, 1651f
                  slti         t1, t5, -1035
                  andi         t6, s5, 1880
                  xori         ra, t6, 516
                  lui          sp, 546616
                  slt          a5, a2, s7
                  ori          s3, a6, -1967
1649:             sltu         s4, a3, s10
                  xori         a5, zero, -1000
1651:             slt          s9, s10, s1
1652:             auipc        gp, 193379
                  sll          a0, gp, s11
                  sub          a7, s0, s4
                  add          a1, s4, s10
                  bne          s9, s7, 1662f
                  slt          s8, ra, t2
                  or           t6, s3, s11
                  bgeu         s11, s7, 1679f
                  sra          t0, s7, s11
                  or           t3, sp, s4
1662:             srai         t1, sp, 26
                  blt          a3, s10, 1681f
                  slt          s3, a1, gp
                  auipc        zero, 909763
                  slti         s9, s5, -1852
                  bgeu         s7, zero, 1678f
                  ori          s2, s1, -835
                  beq          s6, t4, 1685f
                  bne          t3, s9, 1678f
                  slt          ra, gp, s7
                  xor          zero, s5, sp
                  bge          a6, gp, 1682f
                  bne          t5, a5, 1676f
                  blt          t3, a0, 1686f
1676:             slt          s9, a0, a4
                  xor          a7, s0, a0
1678:             sub          s10, ra, t1
1679:             bge          s8, ra, 1689f
                  blt          s4, gp, 1700f
1681:             addi         tp, a4, -793
1682:             sll          t6, t0, t2
                  sltu         a3, t2, t5
                  xori         sp, t0, 1186
1685:             lui          t6, 179979
1686:             srl          s5, s2, s7
                  srli         zero, a1, 4
                  sltiu        t0, a0, -725
1689:             blt          t3, s6, 1705f
                  bne          a6, a7, 1702f
                  slti         s2, a0, 458
                  sltiu        s5, s11, 321
                  srai         a6, t6, 30
                  slt          ra, s6, s4
                  auipc        t2, 90571
                  ori          sp, sp, 1675
                  xori         s11, t2, -1829
                  la           sp, region_1+1461 #start riscv_load_store_rand_instr_stream_2
                  slt          tp, a4, tp
                  xor          a5, s7, s2
                  lbu          s2, 0(sp)
                  sra          t3, s0, s2
                  sltiu        t0, s0, -446
                  srai         t6, zero, 11
                  sra          tp, a1, gp
                  sll          a7, a7, s3
                  lb           tp, -15(sp)
                  addi         s4, s1, 1823
                  or           tp, sp, a7
                  and          ra, t4, s1
                  auipc        s5, 302877
                  lbu          a7, 14(sp)
                  sub          tp, a1, s0
                  lb           s2, 12(sp)
                  lb           t2, -4(sp)
                  sub          s7, sp, t4
                  lb           t2, -12(sp)
                  nop
                  xor          s9, s2, t0
                  slt          a0, s0, t4
                  and          s9, a7, a0
                  sb           tp, -2(sp)
                  lw           s3, 3(sp)
                  or           t2, gp, s10
                  sltiu        a0, s11, 682
                  sb           s1, -7(sp)
                  sb           s1, -1(sp)
                  lw           t3, 11(sp)
                  srl          zero, a4, s3
                  slti         s4, s7, -842
                  sh           a1, -15(sp)
                  nop
                  sltu         t6, s9, tp
                  lb           t1, 6(sp)
                  lui          s11, 457196
                  lw           a6, -1(sp)
                  sub          s1, a4, s4
                  sltiu        t5, t0, 1219
                  lb           s7, 2(sp)
                  srli         s3, s10, 15
                  srai         a2, a0, 10
                  sh           ra, 3(sp)
                  sub          t3, t5, t4
                  lb           a7, 10(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         a0, a3, 11
                  slti         s8, t5, 1170
1700:             bgeu         t3, s3, 1705f
                  slt          s4, a0, s6
1702:             slti         t6, a4, -322
                  lui          a1, 51812
                  sll          s10, ra, s0
1705:             sltiu        a0, a4, 1010
                  srai         a0, s10, 11
                  srl          t5, a4, a3
                  and          t2, a3, t4
                  xori         a6, sp, -1021
                  xori         tp, s7, 887
                  and          s2, a6, s3
                  auipc        s6, 975475
                  auipc        tp, 962607
                  addi         s4, a5, -1946
                  xor          s1, a3, a3
                  bge          s8, s5, 1728f
                  and          s7, s0, ra
                  slti         s6, s11, 1801
                  slli         s10, t4, 26
                  beq          sp, s8, 1740f
                  ori          s8, a5, -1042
                  or           a2, a4, t5
                  sub          a3, s1, s0
                  sll          t6, gp, a4
                  beq          t4, sp, 1744f
                  xor          s11, t3, s10
                  and          a0, a7, a7
1728:             sll          s2, s8, ra
                  lui          s2, 534954
                  andi         t3, t3, 494
                  sltiu        gp, t1, 1057
                  slti         a2, t1, 683
                  slli         s4, s10, 12
                  xor          s2, s8, s9
                  srli         ra, t6, 28
                  xori         tp, t5, 64
                  auipc        a7, 675778
                  slli         s2, s8, 17
                  nop
1740:             sra          sp, t0, s8
                  sltiu        t1, t0, -1704
                  ori          t2, s8, 1516
                  bgeu         s4, a4, 1754f
1744:             slli         s1, t3, 12
                  ori          a6, gp, -89
                  beq          s3, s11, 1762f
                  bne          s5, tp, 1767f
                  andi         s4, sp, 334
                  nop
                  lui          t0, 850686
                  slt          t2, a3, a6
                  nop
                  beq          s7, t0, 1773f
1754:             or           gp, s3, a4
                  slli         a5, t2, 28
                  or           tp, zero, s2
                  bne          a6, s0, 1764f
                  sltiu        s11, t3, 1027
                  slti         ra, ra, 1286
                  xor          a0, s9, s2
                  sll          tp, ra, ra
1762:             bne          tp, a2, 1767f
                  xor          s6, s9, s3
1764:             bne          a4, a0, 1782f
                  nop
                  srai         s9, a1, 21
1767:             srli         s10, s9, 4
                  xor          s6, t3, s7
                  sltu         a6, a4, a2
                  srai         a0, t0, 9
                  and          s11, a6, t1
                  slti         a2, s5, -1516
1773:             auipc        a5, 906733
                  nop
                  bne          s2, s8, 1793f
                  bgeu         t0, gp, 1782f
                  bltu         a6, s3, 1786f
                  blt          a3, ra, 1789f
                  sltiu        s8, s11, -74
                  bltu         a6, s1, 1793f
                  sltiu        s9, a6, -757
1782:             beq          a5, a6, 1784f
                  bne          t1, s0, 1788f
1784:             sll          gp, a3, s3
                  slti         t2, a1, 106
1786:             lui          ra, 563971
                  or           t6, gp, s10
1788:             beq          a5, a3, 1806f
1789:             slt          s2, a7, s5
                  beq          sp, s8, 1802f
                  srli         s10, s8, 25
                  srai         s4, a5, 12
1793:             bge          t5, t5, 1812f
                  blt          t0, t6, 1808f
                  andi         t6, t2, -633
                  nop
                  bne          s9, a7, 1807f
                  sub          s3, t0, s1
                  and          t2, s2, s7
                  slli         t1, s10, 1
                  and          a5, s10, a4
1802:             sltiu        s10, s11, -857
                  auipc        a0, 317865
                  slt          gp, s6, s8
                  add          a7, s4, t1
1806:             slti         tp, s8, -1157
1807:             andi         s6, s4, -1594
1808:             andi         t6, t0, -1029
                  slli         s2, t2, 12
                  andi         t0, a0, 198
                  beq          t1, s1, 1823f
1812:             srli         s5, a4, 19
                  sra          s8, s9, a6
                  nop
                  srli         ra, s3, 26
                  srai         a2, sp, 5
                  andi         s4, s6, -486
                  sub          t1, a3, a2
                  bne          s7, s11, 1830f
                  srli         s7, a4, 23
                  sub          s6, t4, s1
                  xor          s11, s6, s3
1823:             lui          s3, 900205
                  xor          ra, t0, s7
                  srai         gp, a1, 23
                  sltiu        t2, a2, 1629
                  nop
                  slt          a5, t1, t6
                  addi         t6, s9, 1340
1830:             add          s7, s8, s11
                  andi         s8, s1, 1918
                  lui          t6, 517043
                  sub          s1, s10, a6
                  sltiu        s5, zero, 410
                  bgeu         s2, sp, 1853f
                  andi         a5, s7, 1652
                  lui          s5, 434540
                  blt          s3, a3, 1858f
                  bne          s10, tp, 1841f
                  xor          s6, s5, t4
1841:             slli         t1, a3, 31
                  xor          tp, s0, a7
                  auipc        t0, 712080
                  slti         sp, t0, 1269
                  bgeu         zero, s5, 1857f
                  andi         a1, s8, 762
                  xor          t2, t5, ra
                  addi         s8, t3, 394
                  or           t0, s5, s5
                  bge          t4, s8, 1858f
                  sra          ra, a0, t4
                  srl          s3, t1, a6
1853:             or           s1, s6, s9
                  srl          s4, s8, a4
                  slt          s8, s3, s1
                  sub          a1, s10, a3
1857:             sltiu        a7, t6, -1593
1858:             beq          s0, zero, 1870f
                  ori          a6, t2, 1091
                  srai         t6, s5, 28
                  slt          a5, t1, a0
                  addi         t6, a2, 1833
                  xor          a0, zero, s10
                  srli         s8, s6, 11
                  slt          s7, s4, a1
                  ori          a2, zero, -1779
                  auipc        gp, 606476
                  lui          s8, 875364
                  add          t1, a1, a2
1870:             bne          a1, zero, 1886f
                  andi         s4, s4, 587
                  bge          zero, t5, 1881f
                  ori          s6, a7, 389
                  sub          sp, a5, a0
                  addi         t1, s3, -1821
                  bne          t4, t1, 1892f
                  lui          a2, 881652
                  ori          s8, a3, 2007
                  auipc        a7, 223764
                  and          s10, s10, a5
1881:             beq          s7, s1, 1900f
                  slti         sp, s6, 370
                  addi         s1, s11, 1532
                  add          t0, t3, ra
                  ori          ra, s9, 474
1886:             auipc        tp, 668238
                  auipc        s6, 363388
                  xor          sp, a7, s7
                  bgeu         a0, s2, 1907f
                  srl          tp, a5, t0
                  addi         t3, t4, 130
1892:             bne          a6, tp, 1908f
                  add          sp, s1, a7
                  srai         s4, s5, 17
                  bgeu         a0, a5, 1913f
                  srai         a2, a3, 6
                  sll          s8, s2, s0
                  lui          a6, 314593
                  add          zero, a3, a4
1900:             sltu         s9, s11, t0
                  slt          gp, t4, t2
                  slt          s10, t4, s1
                  lui          a1, 651655
                  xori         t2, t0, 1324
                  slli         sp, s9, 1
                  and          tp, s5, a7
1907:             xori         a2, t6, -1071
1908:             beq          t5, t4, 1921f
                  add          ra, s5, s8
                  andi         zero, s2, -1574
                  or           a5, s4, t4
                  bltu         s4, a1, 1923f
1913:             lui          a3, 340020
                  bltu         s7, t2, 1926f
                  sll          s4, a5, tp
                  bgeu         s2, s6, 1934f
                  slli         a5, t1, 25
                  andi         s1, t1, 1810
                  nop
                  bne          s0, a4, 1932f
1921:             nop
                  bne          s4, sp, 1936f
1923:             blt          ra, t0, 1935f
                  beq          s6, t0, 1930f
                  srl          t0, s6, t4
1926:             auipc        a5, 533122
                  slt          s3, s7, s6
                  sra          t2, s10, a2
                  sltu         s11, a5, s11
1930:             srai         t3, tp, 10
                  blt          t6, s8, 1942f
1932:             and          s2, s5, t5
                  bne          s4, s7, 1942f
1934:             add          t5, s11, s7
1935:             sub          t6, a6, s9
1936:             srl          a6, a4, t6
                  sltu         a0, a6, s11
                  nop
                  srai         t2, a0, 4
                  sltu         tp, zero, s4
                  srl          ra, s11, a0
1942:             beq          sp, s11, 1960f
                  addi         a2, gp, 1692
                  andi         tp, a3, 1218
                  sltiu        s7, a5, -1838
                  lui          s10, 348450
                  lui          t2, 272131
                  sll          s11, tp, ra
                  srl          tp, t6, t4
                  auipc        s9, 433783
                  sub          t3, s2, a4
                  sll          s10, s8, s1
                  beq          gp, t2, 1960f
                  addi         s5, a5, -1881
                  srl          s4, s3, t0
                  srai         a3, a1, 28
                  slli         t5, a3, 24
                  beq          t1, gp, 1978f
                  andi         t0, s6, -1399
1960:             lui          a5, 362585
                  auipc        s9, 902576
                  slli         t0, s11, 0
                  xori         a2, sp, 1770
                  slli         t2, s6, 3
                  blt          s9, sp, 1973f
                  or           s4, ra, a4
                  sub          s2, gp, t3
                  srl          s10, t1, t1
                  sltu         zero, s1, t5
                  lui          t5, 560880
                  sub          zero, t1, a5
                  bge          a0, zero, 1981f
1973:             ori          t1, t5, 1973
                  beq          a4, sp, 1994f
                  slti         s9, zero, -110
                  blt          a6, ra, 1981f
                  bge          t5, t5, 1993f
1978:             srl          t2, sp, a4
                  or           s2, a0, a3
                  addi         a7, s11, 1487
1981:             slt          t1, t3, t5
                  and          sp, a5, a6
                  bne          gp, gp, 1994f
                  sub          zero, sp, t0
                  slli         s7, s3, 0
                  ori          tp, s11, -1401
                  blt          a7, ra, 1997f
                  auipc        s9, 314652
                  xori         a1, a3, -1492
                  bne          tp, s11, 1992f
                  sll          tp, s3, s3
1992:             bltu         s2, s8, 2012f
1993:             srl          t6, t0, t1
1994:             lui          gp, 720655
                  and          a1, t1, a5
                  auipc        s9, 825031
1997:             slt          s9, s9, t2
                  auipc        sp, 1018151
                  sltu         gp, s10, s2
                  auipc        ra, 342860
                  sll          s8, a6, zero
                  slt          t2, t5, t6
                  srl          t1, a3, s11
                  addi         gp, sp, 1082
                  nop
                  sra          a5, tp, gp
                  beq          a1, a7, 2019f
                  and          t5, a1, ra
                  or           sp, s4, s9
                  slt          s9, s8, a4
                  slti         s2, a1, 470
2012:             addi         s6, a7, 1533
                  bge          tp, s4, 2018f
                  xor          s5, s8, s3
                  sub          s5, a4, t5
                  add          a0, t5, t6
                  or           t1, s2, a6
2018:             srai         s3, s10, 26
2019:             add          t1, ra, t3
                  srai         s11, s10, 24
                  lui          t3, 888015
                  lui          a7, 187493
                  lui          t2, 272191
                  bge          t2, a2, 2040f
                  sltu         s1, a0, t3
                  xor          t6, s4, s8
                  sub          t5, a6, a0
                  and          s9, s8, t1
                  sra          gp, s5, t1
                  beq          s1, t6, 2032f
                  slti         s5, t3, -777
2032:             srl          a3, a1, t2
                  slti         t1, t4, 1131
                  beq          a1, s10, 2043f
                  srli         s4, a5, 31
                  sra          zero, a4, a5
                  bge          s0, a3, 2045f
                  xor          s8, s4, s4
                  nop
2040:             srli         gp, t5, 4
                  sltiu        a7, a1, -907
                  sltiu        s10, t1, 929
2043:             bltu         t3, t2, 2059f
                  slti         t6, zero, -1966
2045:             slt          s8, a6, t6
                  slli         s9, a3, 14
                  bltu         a3, t6, 2063f
                  sra          s9, a3, s11
                  or           s2, s1, s5
                  lui          zero, 63939
                  sll          s6, s7, t3
                  ori          a3, s3, 1227
                  bge          t5, a2, 2071f
                  xor          a2, gp, a2
                  xor          s10, s2, ra
                  xori         a3, s3, -1807
                  slli         t0, tp, 27
                  sltiu        gp, s7, -2027
2059:             bltu         t6, s7, 2079f
                  sra          ra, a4, t2
                  slli         ra, s11, 22
                  bne          a1, s11, 2074f
2063:             or           a1, s10, a3
                  beq          s1, a1, 2073f
                  ori          ra, t4, -978
                  srli         s9, s4, 7
                  bltu         a1, a7, 2069f
                  sltiu        a5, a4, 1626
2069:             xor          t0, s0, a1
                  slt          ra, t4, a0
2071:             nop
                  bne          a2, t0, 2090f
2073:             xori         ra, a1, -449
2074:             slt          s6, s5, s2
                  bge          t0, a6, 2088f
                  slt          tp, t0, s1
                  slt          s3, s7, s10
                  xori         s8, sp, 1056
2079:             xori         s8, s7, 2038
                  xori         s11, t5, 1943
                  blt          s6, s10, 2091f
                  sll          tp, zero, s6
                  addi         gp, a2, 30
                  bne          tp, s8, 2100f
                  xor          s1, tp, a3
                  bgeu         a4, s2, 2104f
                  beq          s8, s3, 2093f
2088:             add          a2, s6, a7
                  auipc        s5, 1033579
2090:             auipc        s8, 282806
2091:             bge          a2, a3, 2110f
                  add          s10, zero, t4
2093:             andi         s9, s5, 32
                  slti         s11, s6, 1237
                  slt          s3, gp, s11
                  addi         s2, a1, -1493
                  nop
                  or           ra, a6, s9
                  bge          a6, a3, 2110f
2100:             or           s5, a5, s0
                  beq          s1, s5, 2113f
                  sll          s4, t3, a1
                  sub          a5, t6, t1
2104:             lui          s8, 5564
                  srl          s11, s9, a4
                  srl          s1, ra, s3
                  bltu         s0, s0, 2112f
                  bltu         t4, t1, 2128f
                  bge          s11, a4, 2116f
2110:             slt          t2, s8, a0
                  blt          s6, t1, 2131f
2112:             slt          a7, a6, s11
2113:             srli         t6, a1, 8
                  beq          s4, s5, 2119f
                  blt          s4, t5, 2117f
2116:             addi         s10, a7, -34
2117:             srai         t6, t0, 22
                  slt          a2, a3, ra
2119:             srai         a1, s2, 22
                  slli         s8, a4, 27
                  sltu         a0, s5, s6
                  andi         gp, a6, 225
                  bgeu         gp, ra, 2134f
                  ori          a6, s9, -1373
                  or           s3, s1, a7
                  add          t1, a0, a3
                  srl          gp, s3, s10
2128:             bgeu         s8, s5, 2142f
                  xor          sp, s3, t5
                  srli         a0, s8, 14
2131:             sll          s1, t1, s3
                  and          tp, s3, s5
                  slt          a1, a5, s5
2134:             sll          a3, s2, a1
                  xori         a1, t4, -1625
                  srli         t0, t3, 24
                  sub          s9, s7, tp
                  and          a7, t6, ra
                  add          s3, a2, s0
                  slli         s2, a5, 13
                  slt          s2, s9, t6
2142:             slti         s6, gp, 1195
                  lui          s7, 179206
                  auipc        t6, 34541
                  add          a1, t3, s7
                  sll          s8, s11, t0
                  andi         t2, a2, 1575
                  sll          s6, a1, ra
                  add          s3, t4, s3
                  sub          a3, s9, s5
                  bltu         a0, s0, 2163f
                  ori          tp, s3, -891
                  andi         s2, s10, -917
                  slli         s9, s3, 12
                  blt          a4, sp, 2173f
                  bne          t5, gp, 2168f
                  srai         tp, t1, 15
                  bge          t0, s10, 2169f
                  xori         s4, s8, -1320
                  blt          ra, a7, 2166f
                  srai         zero, a3, 1
                  ori          s5, t2, -574
2163:             auipc        zero, 80065
                  and          gp, s2, s3
                  sub          s8, t3, a3
2166:             bge          a1, a0, 2179f
                  xori         s1, t5, 1507
2168:             bge          gp, s7, 2186f
2169:             ori          t5, a5, 1838
                  auipc        t5, 998345
                  sra          sp, s7, s6
                  or           a5, t6, s7
2173:             beq          a0, t6, 2184f
                  sll          t2, t1, a5
                  nop
                  ori          t2, t3, 991
                  bltu         s7, a4, 2197f
                  add          zero, s3, s8
2179:             srl          s6, a0, s4
                  ori          s3, t2, 145
                  nop
                  add          s9, s7, sp
                  bltu         a4, s0, 2201f
2184:             bne          a0, t1, 2196f
                  nop
2186:             srl          t6, a1, s4
                  or           a3, a6, zero
                  bgeu         s10, a7, 2200f
                  xor          zero, s11, s7
                  srli         t1, a5, 0
                  sll          s10, a4, s10
                  slti         s4, s4, -680
                  add          t3, sp, a5
                  beq          t4, s9, 2212f
                  add          t0, a7, s9
2196:             xor          gp, sp, a0
2197:             nop
                  sll          sp, t5, a2
                  slti         a5, sp, 1315
2200:             srli         s6, a5, 15
2201:             and          ra, s11, s7
                  sll          tp, a7, a0
                  sltu         s10, gp, a4
                  srai         t2, s5, 6
                  xor          s6, s0, s0
                  bge          t4, a1, 2217f
                  lui          s7, 828609
                  ori          t0, s5, 1444
                  sll          t6, s9, a0
                  sltiu        t2, s2, 287
                  sltiu        s8, s11, -685
2212:             slt          t5, t3, tp
                  sltu         t1, a2, a2
                  slti         s10, a6, 1531
                  srai         sp, a3, 12
                  lui          s7, 583355
2217:             andi         s6, t5, 1892
                  auipc        a1, 868837
                  sltu         zero, t3, s8
                  lw           ra, 4(s0)
                  andi         s8, s10, 1868
                  slt          a0, tp, t2
                  slt          t2, ra, s0
                  slti         s8, t5, -764
                  sra          s11, sp, a7
                  addi         s0, s0, 36
                  xori         zero, a3, -32
                  srli         s9, s9, 1
                  auipc        t6, 682965
2940:             addi x5, x1, 0
2940:             jalr x5, x5, 0
sub_8:            nop
                  srli         a6, s1, 23
                  addi         s0, s0, -44
                  slli         s2, t0, 12
                  sw           ra, 4(s0)
                  and          a6, s9, s2
                  lui          a7, 228506
                  add          zero, a7, gp
                  beq          tp, t5, 1f
1:                add          t1, s1, t4
                  lui          t0, 305605
                  beq          s10, ra, 9f
                  blt          tp, t4, 9f
                  ori          s10, a4, 1813
                  srl          t6, s2, s6
                  sra          s2, a7, s0
                  slti         a2, a3, -457
9:                srl          t1, t3, s5
                  or           s11, s9, a4
                  sub          a7, s2, gp
                  slt          s10, t3, gp
                  lw           ra, 4(s0)
                  addi         s0, s0, 44
                  slti         gp, t6, -260
24:               addi x2, x1, 0
24:               jalr x2, x2, 0
sub_6:            bge          a5, s4, sub_6_stack_p
                  sll          a1, s11, a4
sub_6_stack_p:    addi         s0, s0, -44
                  add          s2, s11, s11
                  srai         s10, s10, 9
                  sw           ra, 4(s0)
                  and          s8, s7, s2
                  sra          s3, gp, s11
                  sll          s7, t5, a0
                  srl          a5, s8, s10
                  la           s8, sub_10
                  sra          s9, t5, t1
                  slti         s3, s7, -189
                  sll          a7, t2, t5
                  addi         s8, s8, 0
                  xor          t1, s9, a2
                  bge          s1, s7, sub_6_j14 #branch to jump instr
                  xori         s10, t3, 747
sub_6_j14:        jalr         ra, s8, 1 #jump sub_6 -> sub_10
                  la           t2, region_1+983 #start riscv_load_store_rand_instr_stream_0
                  add          s3, t4, s9
                  xori         a0, a1, -86
                  addi         s5, s3, 453
                  xor          a1, s10, s0
                  lb           s9, 200(t2)
                  sra          a7, s6, tp
                  lb           a1, 142(t2)
                  lb           a7, 68(t2)
                  xor          sp, s9, s1
                  sb           gp, 144(t2)
                  and          s2, a5, ra
                  slt          gp, a2, s8
                  lhu          s9, -153(t2)
                  or           s6, a3, a5
                  sb           t6, 45(t2)
                  lbu          s2, -18(t2)
                  lb           s5, 254(t2)
                  lb           s8, -212(t2)
                  sub          s3, s1, sp
                  srl          t0, a5, gp
                  sltiu        a2, a6, -1126
                  lh           s5, -189(t2)
                  slti         a2, a2, -1073
                  srai         t6, s3, 12
                  sltiu        s4, s5, 1514
                  auipc        s11, 1014338
                  xor          sp, s4, zero
                  lb           sp, -62(t2)
                  lb           t6, -249(t2)
                  lb           s10, 232(t2)
                  andi         tp, t4, 1857
                  srli         s2, a6, 2
                  sb           tp, -145(t2)
                  lbu          a2, -82(t2)
                  sb           tp, 98(t2)
                  lh           s3, -5(t2)
                  add          a7, s9, s11
                  lbu          t0, -184(t2)
                  lhu          a1, 91(t2)
                  sh           t1, -219(t2)
                  sh           a4, 55(t2)
                  sb           s3, -109(t2)
                  sb           a3, 130(t2)
                  lb           t1, 71(t2)
                  slti         a7, t4, -120
                  lhu          s4, 11(t2)
                  lb           s8, 120(t2) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_1+636 #start riscv_load_store_rand_instr_stream_1
                  lh           tp, 22(s6)
                  sb           a7, -35(s6)
                  sll          a0, sp, sp
                  andi         s2, s4, -1100
                  srai         tp, s6, 12
                  sb           s9, 40(s6)
                  or           zero, t3, a4
                  and          s2, t2, t3
                  sb           a5, 14(s6)
                  srl          t2, a7, a3
                  sltu         a2, s4, s0
                  lbu          a0, -30(s6)
                  sb           s3, 12(s6)
                  add          t5, s6, tp
                  xori         a1, a0, 1850
                  sub          ra, t6, a7
                  lbu          s4, 53(s6)
                  lbu          sp, -19(s6)
                  slti         a7, s11, 639
                  add          t5, gp, a2
                  lb           t2, 23(s6)
                  sb           a6, 17(s6)
                  or           s3, t1, t3
                  srl          a1, s7, s8
                  slt          s10, s11, t4
                  srli         s2, s8, 9
                  xori         s11, s0, 1301
                  lb           a2, 10(s6)
                  srl          t0, t1, gp
                  lbu          s2, -31(s6)
                  srli         s8, a0, 23
                  addi         s10, t3, -484
                  lbu          t2, 63(s6) #end riscv_load_store_rand_instr_stream_1
                  blt          s0, sp, 1f
1:                auipc        t6, 415632
                  xori         t0, s10, 187
                  andi         s6, a1, -577
                  bltu         a3, s7, 17f
                  sltu         s2, s5, t2
                  sltu         t1, ra, t1
                  blt          s7, s8, 12f
                  slti         s6, gp, -847
                  bgeu         s4, s0, 21f
                  sltiu        s5, t6, -1699
                  srai         s2, t6, 25
12:               lui          sp, 519379
                  sra          t3, t3, a1
                  slt          s8, s9, t3
                  slt          t0, a0, a0
                  beq          t1, a0, 34f
17:               xori         a3, zero, -206
                  add          s5, a5, s11
                  bgeu         s8, s11, 30f
                  addi         a6, s10, 200
21:               blt          a1, s11, 41f
                  lui          t6, 900303
                  blt          s11, t1, 37f
                  slli         a7, a1, 4
                  srli         t2, s8, 1
                  addi         s10, s3, 869
                  and          a7, a2, t6
                  srai         t1, t0, 26
                  auipc        a0, 93897
30:               sltiu        s10, t6, -856
                  sra          t3, a0, ra
                  andi         a6, tp, 474
                  sltu         t1, a5, a7
34:               xori         t1, a5, -1143
                  beq          sp, a3, 37f
                  blt          t3, ra, 53f
37:               lui          a2, 386623
                  srli         t0, s2, 29
                  sll          s7, a1, t5
                  slli         gp, s0, 30
41:               beq          s1, zero, 58f
                  andi         t3, s8, -1882
                  sltiu        s10, gp, -991
                  slt          a7, zero, s3
                  bne          tp, a7, 56f
                  bne          t4, a5, 62f
                  slli         t5, a3, 0
                  sub          s5, zero, s10
                  sll          a7, s9, t5
                  bltu         gp, s0, 59f
                  sub          s4, s8, tp
                  xori         s10, s3, -314
53:               srai         ra, gp, 13
                  and          t6, t1, a1
                  nop
56:               bgeu         t6, t0, 66f
                  srli         t6, gp, 13
58:               ori          s2, a1, -1410
59:               bne          a1, s2, 64f
                  sra          t0, t1, tp
                  sltiu        s3, t6, 397
62:               xori         t5, t3, 1377
                  and          s5, ra, a4
64:               bge          a3, s8, 65f
65:               or           a3, t5, a1
66:               srli         ra, s2, 24
                  bgeu         a5, a4, 85f
                  sub          s11, s9, t6
                  srl          a6, gp, a0
                  sltiu        s8, tp, -122
                  slli         s10, t5, 15
                  add          gp, t2, t5
                  xor          t3, zero, t5
                  ori          zero, s7, -553
                  ori          s7, a4, -1761
                  xori         s7, s11, -691
                  slti         a5, ra, -208
sub_6_j12:        jal          ra, sub_9 #jump sub_6 -> sub_9
                  beq          gp, zero, 89f
                  or           s10, s3, t4
                  slti         t3, s6, 1606
                  beq          s0, s7, 77f
                  nop
77:               sra          ra, zero, t6
                  bgeu         ra, s6, 89f
                  ori          s9, t3, 1025
                  sra          s11, a1, s8
                  slt          t2, t0, a2
                  srli         s1, t2, 19
                  srl          s9, s10, s8
                  or           tp, t3, a2
85:               bne          t3, a0, 102f
                  add          s4, a3, a1
                  sll          a6, s2, s7
                  bge          a3, s4, 89f
89:               srli         s11, s3, 2
                  slti         t0, a6, -141
                  nop
                  slt          sp, s3, s1
                  bge          s10, t6, 104f
                  slti         t6, s7, 716
                  bge          a2, a4, 96f
96:               bge          s4, zero, 106f
                  xori         s2, gp, 434
                  sltu         s7, a4, a4
                  bgeu         s4, t3, 109f
                  xori         s6, t3, 1045
                  auipc        zero, 791113
102:              sltiu        t3, t4, 1823
                  andi         s8, a2, -1547
104:              lui          t3, 191173
                  slli         s5, t4, 25
106:              slt          a3, ra, sp
                  nop
                  sub          sp, t2, s3
109:              ori          zero, gp, -809
                  srli         s11, t3, 26
                  bge          s9, t3, 121f
                  sltu         s1, t6, a1
                  or           s6, t5, sp
                  sltu         s7, s11, a4
                  andi         s4, s5, -1215
                  slt          tp, ra, s0
                  slli         s3, a0, 10
                  xori         t1, a1, 1955
                  add          s7, t2, tp
                  and          tp, a3, a5
121:              nop
                  slt          s1, a7, t0
                  srai         t0, a7, 25
                  ori          a2, s8, -1131
                  bne          s7, t4, 127f
                  auipc        a1, 323183
127:              sltu         s7, tp, s3
                  slt          t1, s0, s11
                  xori         a2, s2, -787
                  add          s2, a5, sp
                  xori         t1, t5, -630
                  lui          tp, 450529
                  xori         a6, a2, -1747
                  srl          s2, sp, t1
                  auipc        s9, 1032762
                  sub          s11, s8, s3
                  sll          t2, a5, s10
                  and          tp, ra, t5
                  addi         zero, t0, 1891
                  sub          s9, s7, a7
                  bge          a1, s6, 145f
                  or           s2, a7, s0
                  sub          a2, ra, t0
                  srl          s6, zero, s1
145:              slti         s11, a2, 1054
                  andi         t1, s9, 61
                  beq          t2, s4, 160f
                  bge          tp, a4, 158f
                  lui          t6, 525422
                  xori         s9, t1, -1292
                  auipc        a1, 256390
                  ori          s6, s9, 1048
                  beq          t1, t3, 157f
                  add          s8, sp, t4
                  bge          a5, a0, 169f
                  sltu         s6, s6, a6
157:              xori         sp, zero, 1018
158:              addi         s1, zero, 659
                  bne          s10, s6, 160f
160:              andi         a1, s3, -599
                  sra          tp, s10, gp
                  andi         t3, s2, -1167
                  andi         s8, a7, -1417
                  sll          t2, t1, t1
                  beq          s3, gp, 182f
                  sra          t2, s9, t2
                  xori         s10, tp, 171
                  blt          s9, s1, 185f
169:              nop
                  sll          a7, a4, a5
                  ori          s6, s9, 1025
                  auipc        s9, 367
                  sub          s9, t0, gp
                  sra          a0, a6, a3
                  bgeu         a6, t0, 186f
                  and          s2, s1, a1
                  addi         s7, s4, 1974
                  blt          t0, ra, 180f
                  or           tp, s0, ra
180:              bltu         a4, a3, 190f
                  blt          t3, s0, 199f
182:              and          t5, t0, a0
                  bltu         s4, s3, 200f
                  sltu         sp, ra, s8
185:              xor          s8, s2, s11
186:              xor          a1, s1, s9
                  andi         t1, s3, 1442
                  add          s4, t2, s11
                  lui          a7, 293482
190:              and          a1, a4, ra
                  or           t6, s4, sp
                  xor          s10, s8, s3
                  slli         s8, ra, 14
                  or           s5, t1, t4
                  bne          a5, tp, 196f
196:              bltu         s2, gp, 198f
                  andi         a7, s1, 147
198:              slt          s7, a1, t0
199:              addi         zero, a1, 746
200:              beq          sp, a1, 211f
                  blt          a0, s4, 211f
                  bge          s9, t5, 219f
                  auipc        s8, 107811
                  ori          zero, s10, -308
                  slti         s1, s6, -622
                  sll          a7, s11, s0
                  la           t6, sub_8
                  addi         t6, t6, -350
                  sra          a2, s0, t6
                  xor          s1, s3, s3
                  srli         s6, t5, 26
                  sltu         t3, t5, a3
                  sltu         s2, a7, s5
                  xori         a0, s1, 397
                  and          a7, a5, gp
sub_6_j13:        jalr         ra, t6, 350 #jump sub_6 -> sub_8
                  sub          a2, s9, t4
                  srli         t5, s9, 5
                  sub          s3, t0, t6
                  addi         t0, t0, 645
211:              xori         a3, s9, -1112
                  sub          a3, a7, s9
                  sltu         s1, a2, tp
                  addi         s1, s7, -1504
                  addi         ra, s6, 675
                  sll          t0, s5, t0
                  ori          s9, t4, 1319
                  beq          s10, a6, 238f
219:              srl          a7, s1, t2
                  bne          s3, t3, 231f
                  slt          sp, a2, a6
                  srli         s6, a5, 21
                  bgeu         t2, sp, 225f
                  srli         s6, gp, 19
225:              lui          zero, 71641
                  nop
                  or           s6, s6, tp
                  add          s1, s10, s6
                  srai         s8, zero, 9
                  srai         tp, s8, 15
231:              auipc        t2, 530434
                  ori          ra, a6, -1800
                  add          s6, a6, zero
                  sub          t3, a2, a3
                  blt          s5, t5, 240f
                  bge          a3, a1, 246f
                  srli         tp, s9, 19
238:              bgeu         t2, zero, 254f
                  bne          ra, s10, 251f
240:              lui          a7, 758197
                  sra          t3, s9, s0
                  addi         a2, s9, -1924
                  and          t5, t5, gp
                  andi         s4, a6, -404
                  bgeu         t6, t2, 254f
246:              slt          a2, s11, a7
                  andi         t3, s0, -1252
                  lui          s7, 643594
                  auipc        s1, 307909
                  nop
251:              slti         gp, s1, -142
                  auipc        gp, 152113
                  sra          tp, s0, a7
254:              and          t3, a2, t2
                  xor          s5, s11, zero
                  srli         t1, a0, 17
                  addi         t0, a3, 692
                  nop
                  auipc        t2, 464716
                  and          tp, sp, gp
                  srli         s6, a5, 1
                  xor          ra, t1, s9
                  sltu         s1, s10, t6
                  nop
                  bge          a7, s2, 266f
266:              sltu         zero, gp, ra
                  xori         a3, t4, -1974
                  bne          s3, s6, 286f
                  auipc        t5, 948181
                  bltu         a3, a7, 281f
                  auipc        t0, 740518
                  sll          s9, t3, t1
                  addi         s11, s0, 468
                  xor          a0, t2, t2
                  xor          t0, s4, s9
                  blt          zero, zero, 281f
                  and          s4, t6, t1
                  srai         t0, t3, 27
                  ori          s10, t0, 1464
                  sub          t2, a1, s10
281:              nop
                  bge          t0, s2, 283f
283:              bge          s9, a7, 284f
284:              ori          a7, s10, 1317
                  auipc        t1, 45454
286:              bgeu         a5, a0, 291f
                  blt          a0, a2, 293f
                  andi         t2, s1, 84
                  ori          s8, s0, 410
                  sltiu        t1, s0, -138
291:              blt          a4, a1, 293f
                  bge          t0, s3, 293f
293:              xori         a5, t5, 1448
                  lw           ra, 4(s0)
                  srli         a0, s2, 27
                  andi         s7, a6, 1082
                  add          t5, t1, s4
                  slti         s2, t3, 1343
                  addi         s0, s0, 44
                  ori          t5, a4, 643
419:              addi x18, x1, 1
419:              jalr x18, x18, 0
sub_4:            and          s6, s8, s5
                  ori          a7, a2, -1033
                  slt          gp, s5, a4
                  addi         s0, s0, -8
                  sw           ra, 4(s0)
                  add          t6, s8, a0
                  srl          gp, a2, t6
                  addi         t3, t6, -1519
                  slt          a0, a1, s1
                  add          s9, s9, a6
                  xori         s11, a5, 995
                  sltu         s6, s0, a5
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  xor          s5, s3, t6
                  slt          a6, a3, s0
                  xori         s7, s11, 1441
                  andi         ra, t3, 55
                  xori         t5, zero, 309
                  and          tp, a1, t4
                  sltu         t6, s4, gp
                  or           s9, s2, t0
                  nop
                  bgeu         t0, s11, sub_4_j9 #branch to jump instr
                  sltiu        zero, a1, 17
sub_4_j9:         jal          ra, sub_7 #jump sub_4 -> sub_7
                  sltu         a0, s2, gp
                  sll          s7, ra, a5
                  nop
                  srl          a5, a0, t5
                  srl          s3, a3, t4
                  addi         a1, t4, 885
                  add          a0, t0, s8
                  addi         a2, a5, 1068
sub_4_j10:        jal          ra, sub_5 #jump sub_4 -> sub_5
                  la           t2, sub_6
                  sra          s9, s1, s11
                  addi         t2, t2, -233
                  slli         t6, s0, 18
                  sub          s5, s2, t0
                  andi         s10, t1, 491
                  srl          t6, zero, t5
                  srai         s10, s3, 13
                  addi         tp, a0, -282
sub_4_j11:        jalr         ra, t2, 234 #jump sub_4 -> sub_6
                  slli         a3, s5, 13
                  add          a5, s8, s11
                  slti         a3, t2, -1416
                  srli         t0, t5, 25
                  or           a0, s6, gp
                  slt          t3, s3, a2
                  andi         s1, tp, 244
                  lui          t3, 570049
                  bltu         a6, a0, 14f
                  auipc        ra, 967254
                  bne          t4, t4, 30f
                  sra          a1, a4, a7
                  add          a1, s5, s9
                  srl          s1, s7, a2
14:               bgeu         t4, t1, 31f
                  and          s11, a4, t2
                  sltiu        s6, s3, 950
                  sll          sp, a2, s2
                  bge          t3, t2, 20f
                  auipc        a5, 219528
20:               srai         ra, zero, 13
                  srl          gp, s4, s0
                  xori         s6, t5, 195
                  sltiu        s6, sp, -591
                  sll          t3, s7, a1
                  sub          s9, s7, s2
                  xori         s2, s3, 1597
                  slli         s2, a2, 19
                  sll          a6, t4, t2
                  beq          a7, a6, 40f
30:               srli         t6, a5, 3
31:               bge          s6, sp, 38f
                  nop
                  addi         t1, ra, 954
                  slti         s9, a4, -1812
                  slli         t1, t6, 10
                  addi         a1, s7, 548
                  bltu         s0, t6, 38f
38:               sub          a3, s0, t5
                  addi         s7, a3, 1493
40:               ori          s5, s7, 1434
                  sltu         t5, s2, t2
                  and          gp, s8, a2
                  andi         a5, zero, 1474
                  xori         t6, s7, 839
                  bltu         t3, s10, 52f
                  srl          t6, gp, s5
                  slli         s10, a0, 27
                  bge          t1, t3, 52f
                  slti         s4, s6, -1187
                  xori         s9, a6, 1117
                  blt          t1, s7, 52f
52:               lui          a5, 611070
                  xor          s3, t1, s1
                  lw           ra, 4(s0)
                  addi         s0, s0, 8
                  slt          t5, s9, a6
                  srl          t5, t6, t0
102:              addi x26, x1, 0
102:              jalr x26, x26, 0
sub_10:           addi         s0, s0, -24
                  or           gp, a7, tp
                  sw           ra, 4(s0)
                  srli         a7, s0, 5
                  xori         s8, t3, -701
                  addi         s4, s10, 1437
                  la           sp, region_0+163 #start riscv_load_store_rand_instr_stream_1
                  lb           t6, 1056(sp)
                  auipc        tp, 110076
                  lb           s2, -159(sp)
                  slli         s9, a2, 22
                  ori          s4, sp, -216
                  xor          tp, a1, s0
                  sh           a5, 1121(sp)
                  srl          s9, t4, zero
                  lui          s4, 541728
                  andi         t5, s2, 1600
                  addi         gp, a6, 283
                  xor          s10, s7, t6
                  addi         a2, t0, 998
                  lbu          s7, 874(sp)
                  sb           s10, 917(sp)
                  sb           t4, 757(sp)
                  lb           s8, 722(sp)
                  and          t0, ra, s8
                  sb           a6, 454(sp)
                  lw           s4, 1349(sp)
                  lhu          t3, 1269(sp)
                  addi         a3, ra, 1459
                  lb           gp, 978(sp)
                  lb           a2, 614(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_1+798 #start riscv_load_store_rand_instr_stream_2
                  lbu          a0, -190(s3)
                  and          t0, s11, zero
                  lbu          tp, -205(s3)
                  lb           t1, 141(s3)
                  srli         t3, s4, 17
                  add          a1, t2, a4
                  sltu         a2, a1, s6
                  sb           s8, 60(s3)
                  andi         s6, tp, -2002
                  lbu          a2, -144(s3)
                  lbu          s2, -237(s3)
                  sub          a6, s5, s9
                  nop
                  lbu          t1, -50(s3)
                  lb           s1, 203(s3)
                  xori         sp, zero, -1914
                  lh           s6, -110(s3)
                  ori          tp, t4, -1858
                  nop
                  lui          a6, 911055
                  sb           s2, 45(s3)
                  lhu          t6, -72(s3) #end riscv_load_store_rand_instr_stream_2
                  add          a7, s10, s4
                  bge          a0, a0, 21f
                  beq          a1, ra, 6f
                  slt          ra, t3, s3
                  addi         s5, t2, -962
                  bgeu         a4, a0, 15f
6:                auipc        s10, 635089
                  srai         s1, t6, 16
                  nop
                  sll          a3, t1, ra
                  sltiu        tp, s10, 651
                  add          s11, t2, s7
                  sll          tp, gp, t5
                  sra          s8, s8, t3
                  xor          tp, a4, s8
15:               srl          a6, a5, a5
                  bne          s11, s6, 23f
                  srl          a1, zero, a5
                  nop
                  bgeu         t1, t1, 21f
                  or           zero, tp, a0
21:               sra          s9, t5, gp
                  xori         tp, s0, 241
23:               slli         s10, a3, 21
                  andi         sp, s4, 337
                  andi         s4, a2, -934
                  srai         a6, tp, 12
                  srai         t0, s7, 29
                  slti         a6, t0, -1889
                  add          t2, s1, s9
                  srai         s10, t4, 17
                  bne          t3, s10, 42f
                  srli         gp, tp, 25
                  sltiu        s6, a3, 955
                  lui          t5, 191937
                  bltu         a1, tp, 45f
                  add          gp, s4, s5
                  sub          a6, s2, t0
                  bgeu         a1, s7, 54f
                  and          a7, t2, s3
                  lui          tp, 574525
                  blt          ra, s7, 44f
42:               slli         s11, a5, 16
                  bge          t4, a4, 48f
44:               xori         s2, s10, 68
45:               srai         s9, t2, 5
                  xori         zero, s7, 1833
                  bltu         s9, a1, 56f
48:               sltiu        s5, s5, 192
                  sltu         t6, a0, zero
                  nop
                  xor          s1, s11, a2
                  sra          gp, s11, a5
                  andi         s2, a2, -977
54:               auipc        t6, 289829
                  sltu         a7, a1, s0
56:               bne          s8, a4, 70f
                  add          s7, s10, sp
                  bne          t1, s3, 69f
                  add          s5, t4, a1
                  sra          ra, a7, a2
                  lui          s2, 303244
                  sra          s4, s10, t5
                  sra          a6, t1, s9
                  or           gp, a4, s8
                  slti         sp, t3, -1290
                  bne          t6, s6, 73f
                  xor          s2, s0, tp
                  bltu         a5, a2, 87f
69:               sub          s7, a1, a2
70:               sll          zero, s1, a6
                  and          sp, s10, s0
                  sltu         ra, s9, t4
73:               slli         a3, s0, 20
                  sub          s10, s6, s10
                  bgeu         t4, s6, 88f
                  sra          zero, s3, a1
                  sltiu        tp, t2, -18
                  bne          t0, a3, 84f
                  and          s11, a5, t0
                  bltu         s11, a1, 97f
                  bltu         s8, sp, 101f
                  srai         a1, s8, 26
                  bgeu         s5, sp, 94f
84:               andi         s4, ra, -85
                  srai         t2, tp, 20
                  andi         tp, s3, -21
87:               andi         t5, s7, -1057
88:               nop
                  bgeu         t3, a7, 95f
                  bge          s7, t3, 106f
                  slt          s11, s8, s8
                  blt          a1, s5, 102f
                  add          ra, s7, tp
94:               xori         s4, s3, -997
95:               sra          t1, t3, t3
                  blt          s8, s5, 107f
97:               bge          s4, t0, 99f
                  andi         s4, s11, 1379
99:               or           a0, t5, t5
                  nop
101:              and          t1, t0, s3
102:              bgeu         tp, s2, 107f
                  add          s1, t3, t6
                  addi         s3, t6, -1318
                  sub          s8, a6, s7
106:              sltiu        t1, zero, 1123
107:              srli         t2, a0, 7
                  beq          t6, t1, 111f
                  and          a1, t0, t4
                  la           t5, region_1+661 #start riscv_load_store_rand_instr_stream_3
                  sra          s5, a3, s9
                  addi         a3, a0, -1514
                  xor          t6, s8, a6
                  sll          t0, a7, s7
                  lb           t3, 254(t5)
                  slli         zero, a2, 0
                  sltu         sp, gp, t1
                  sb           t6, -230(t5)
                  xor          a5, a3, s9
                  sltiu        s2, s0, 842
                  lbu          s1, 40(t5)
                  add          t2, a6, t2
                  sltiu        s7, s2, -345
                  sra          t2, a1, s8
                  slti         s1, s9, 1640
                  sub          a2, a4, s7
                  and          zero, t0, tp
                  srl          tp, t6, sp
                  nop
                  lb           a6, -199(t5)
                  lh           t2, -145(t5)
                  xor          tp, s9, a6
                  xor          t0, t0, s3
                  slt          ra, t0, a4
                  slti         s11, s9, 1858
                  lw           t6, 31(t5)
                  lb           t1, 227(t5)
                  lb           s3, -72(t5)
                  lb           a2, -176(t5)
                  lw           zero, 111(t5) #end riscv_load_store_rand_instr_stream_3
                  ori          t1, s1, -585
111:              lui          t5, 214530
                  blt          gp, a1, 125f
                  sltiu        s10, s3, 409
                  ori          s9, s5, 574
                  srai         s6, s2, 14
                  sra          t3, a1, t2
                  or           t0, a5, a3
                  sltiu        a6, a2, -1258
                  and          s3, tp, s7
                  addi         s11, a2, 711
                  slli         t5, s5, 8
                  add          a3, a0, s1
                  auipc        tp, 501213
                  sra          s7, s8, s11
125:              bgeu         s0, a4, 126f
126:              or           a6, s0, sp
                  bne          gp, s10, 134f
                  ori          s7, ra, -1016
                  srl          a3, a4, s8
                  and          s2, a3, s4
                  sll          a7, t5, t1
                  sltu         s10, gp, a6
                  or           tp, s1, t3
134:              sltu         t6, a7, a6
                  andi         a1, s3, -255
                  auipc        ra, 329289
                  bgeu         t5, s3, 146f
                  slti         t6, s7, -1643
                  sub          a2, s3, s5
                  srli         t2, t1, 4
                  bltu         a1, t1, 148f
                  srl          a7, t3, t6
                  slti         s7, sp, 1716
                  auipc        sp, 603376
                  srl          s1, a4, s2
146:              addi         a2, s2, -1099
                  slli         s10, s8, 30
148:              blt          ra, a7, 161f
                  bge          t2, ra, 160f
                  srli         s10, s6, 0
                  bge          t1, t2, 156f
                  srli         s1, s7, 12
                  srl          a2, t2, s1
                  add          a6, s9, t4
                  or           s5, s10, sp
156:              or           t6, zero, s1
                  xor          t6, s10, a1
                  slt          t0, s9, a5
                  and          sp, zero, s10
160:              slli         s1, s3, 10
161:              lui          s6, 728405
                  srli         s9, a7, 27
                  slli         t6, a1, 17
                  bge          a2, a0, 184f
                  bgeu         tp, zero, 185f
                  xori         a5, s5, -1402
                  addi         s2, a2, -648
                  lui          s1, 831093
                  xor          zero, t6, t4
                  slli         t0, s10, 31
                  auipc        s1, 199477
                  srl          sp, t6, s11
                  ori          s3, s9, -817
                  sltiu        s8, gp, 1381
                  xori         s6, sp, 1917
                  lui          s10, 990492
                  beq          s7, s0, 188f
                  bgeu         a3, a6, 184f
                  blt          s5, a0, 190f
                  andi         a2, s9, 1019
                  srl          ra, s5, zero
                  bge          t3, s11, 198f
                  bne          zero, ra, 186f
184:              beq          s3, s4, 194f
185:              or           s11, s0, s7
186:              bltu         s10, tp, 188f
                  xor          s10, a4, a5
188:              srai         a5, a1, 30
                  add          sp, s0, a6
190:              addi         a7, t5, -1423
                  sltu         t3, t0, s9
                  auipc        sp, 10038
                  bgeu         s11, a5, 198f
194:              slli         gp, sp, 4
                  la           sp, region_0+1520 #start riscv_load_store_rand_instr_stream_0
                  srli         s11, gp, 6
                  lbu          t0, -91(sp)
                  lw           s11, -28(sp)
                  lhu          t5, 132(sp)
                  lb           zero, -97(sp)
                  lbu          a0, 80(sp)
                  sltiu        zero, t0, 1520
                  srl          a1, gp, t2
                  lb           t1, -154(sp)
                  addi         a0, a3, -1778
                  lui          gp, 297669
                  lbu          s1, -143(sp)
                  sltu         s5, t4, t1
                  lb           s9, -125(sp)
                  lb           t1, 219(sp)
                  lb           s4, -176(sp)
                  srai         t6, zero, 25
                  srli         t3, a3, 9
                  srli         s1, a6, 17
                  sltiu        zero, t3, 1761
                  lhu          a6, 228(sp)
                  lh           t1, 106(sp)
                  or           a3, s10, zero
                  add          t0, a2, t4
                  lw           s6, 180(sp)
                  srli         t2, t5, 6
                  srli         a6, s1, 23
                  sltu         s8, gp, t4
                  xori         s1, ra, -1712
                  sb           s4, 62(sp)
                  sltu         s1, a3, t2
                  sb           a1, -31(sp)
                  lhu          ra, -210(sp)
                  lb           s11, 109(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          t5, s1, 206f
                  sltu         s4, gp, a5
                  andi         a6, t4, -792
198:              sll          s1, a0, t3
                  andi         s5, s8, -2021
                  sll          s1, s6, s8
                  bge          a5, t3, 203f
                  bge          zero, tp, 218f
203:              xori         zero, s4, -1973
                  lui          a2, 327832
                  bne          a1, t6, 212f
206:              sltiu        a1, a4, -56
                  andi         s11, t1, 240
                  sra          t3, t5, t1
                  add          s1, gp, t4
                  slti         t0, t0, 911
                  add          t0, sp, a0
212:              and          t6, t2, s11
                  auipc        s7, 157611
                  sltiu        s9, s1, -1971
                  sltu         s4, s10, s3
                  slti         s9, t3, 399
                  xor          a3, s5, a1
218:              sltu         s1, sp, s5
                  slli         s9, t5, 2
                  or           s6, t3, a2
                  addi         s9, t6, 505
                  auipc        ra, 233578
                  sub          s3, s6, s1
                  lui          a5, 407214
                  auipc        s7, 950162
                  srai         s10, s8, 2
                  xori         tp, s6, 1431
                  srli         s1, a4, 19
                  bltu         s6, s7, 236f
                  and          s3, s11, s2
                  sub          a2, t1, s1
                  xori         s3, sp, -1268
                  or           a6, a4, s11
                  srl          s9, s10, t3
                  andi         sp, s3, -2022
236:              nop
                  sltu         a1, tp, s10
                  sll          a2, a4, a4
                  sub          a3, t0, s1
                  xori         s10, s3, 1736
                  sra          s7, gp, s9
                  srai         t5, a1, 14
                  srli         a5, s4, 26
                  sub          s6, a2, zero
                  sltiu        s9, s8, -1488
                  sra          a7, a0, s1
                  sltu         s7, t2, ra
                  bltu         t5, s10, 254f
                  srl          s9, sp, s1
                  add          ra, a6, a3
                  add          t2, ra, tp
                  srai         a5, t6, 13
                  slt          a2, zero, s0
254:              lui          s3, 372375
                  blt          t5, sp, 259f
                  andi         s8, t3, -270
                  srl          a5, s1, tp
                  slti         t5, s10, -2008
259:              addi         t2, s4, -1932
                  srli         gp, s7, 7
                  andi         a2, s11, -607
                  bgeu         a3, t5, 263f
263:              sltu         s8, s5, s3
                  blt          s8, zero, 274f
                  sub          t0, sp, a7
                  lui          s10, 210268
                  sra          a2, s2, s5
                  bge          t4, ra, 282f
                  bltu         a5, t6, 282f
                  sltiu        a0, t5, -831
                  bne          t1, a3, 274f
                  add          t6, a6, s10
                  bltu         a5, t4, 283f
274:              slt          s9, a4, t0
                  slli         s6, s8, 27
                  or           s1, t4, t6
                  bne          s7, a2, 296f
                  slli         t5, a2, 31
                  sltiu        s1, s1, -1617
                  and          s5, s3, s10
                  andi         s2, s5, -1705
282:              sll          s9, a4, a1
283:              slli         gp, s8, 10
                  blt          a2, s6, 301f
                  srli         s8, t5, 4
                  slti         s6, a1, 928
                  srai         s2, ra, 26
                  slt          ra, t6, t2
                  lui          s7, 749612
                  srl          zero, a4, a2
                  bge          a6, tp, 293f
                  and          t5, s5, a7
293:              sll          s7, a3, sp
                  lui          gp, 89592
                  add          tp, zero, s7
296:              auipc        tp, 391466
                  sll          s9, ra, t4
                  ori          t2, sp, -1155
                  sltiu        s9, gp, -1299
                  or           s2, t0, t1
301:              beq          s8, s0, 312f
                  auipc        t2, 117962
                  slti         a3, s0, 23
                  and          s6, s0, t5
                  srli         a0, s1, 31
                  bge          zero, s11, 312f
                  sltiu        sp, a6, 810
                  bgeu         t2, a4, 311f
                  and          ra, s0, s5
                  auipc        s10, 414958
311:              add          t3, t3, sp
312:              bgeu         a7, t3, 328f
                  add          t5, s5, t5
                  slli         gp, s2, 28
                  srai         ra, s11, 26
                  bltu         zero, a3, 326f
                  bne          zero, t0, 319f
                  bltu         s10, t3, 328f
319:              nop
                  sltu         t5, ra, a0
                  lui          t6, 524256
                  xori         zero, a4, -1710
                  sll          s1, s3, s6
                  auipc        a1, 676681
                  bgeu         s5, t1, 345f
326:              bltu         gp, s9, 345f
                  sub          s7, s4, s2
328:              slti         t5, s9, -1180
                  lui          a5, 822348
                  slli         a3, a3, 30
                  srai         a6, a3, 8
                  xor          s5, a0, a6
                  xori         t1, t4, 403
                  srli         s2, s1, 3
                  srli         gp, gp, 7
                  sltu         t5, s3, tp
                  andi         a5, t3, -1350
                  bgeu         s8, s10, 349f
                  bltu         a2, a2, 359f
                  and          s10, a3, a5
                  srai         s7, tp, 14
                  add          s2, a1, tp
                  srai         gp, s2, 11
                  xor          s7, a6, t2
345:              blt          t3, s5, 349f
                  slt          a1, s9, s0
                  sll          a2, s1, sp
                  bgeu         a3, tp, 357f
349:              srli         a1, s7, 14
                  srai         s6, s4, 31
                  blt          s0, t6, 352f
352:              addi         a5, zero, -1321
                  andi         t6, s6, -1292
                  nop
                  sll          tp, a5, t3
                  srai         t3, t6, 15
357:              srli         s4, t6, 19
                  bge          s5, s6, 365f
359:              nop
                  sra          s1, t4, s8
                  sra          s6, s6, t3
                  slli         t6, s2, 31
                  bgeu         t5, s3, 379f
                  blt          tp, zero, 369f
365:              srli         ra, a4, 1
                  bne          a0, t0, 373f
                  ori          a7, a6, 889
                  add          t5, gp, a0
369:              slt          s3, gp, s10
                  beq          a6, s11, 381f
                  or           s5, a7, s5
                  srl          zero, s4, s11
373:              auipc        t3, 269397
                  sltu         s5, t4, s2
                  nop
                  slli         sp, a2, 11
                  add          s7, s2, s3
                  srli         t1, a2, 10
379:              blt          a2, a0, 386f
                  slti         gp, t3, -1093
381:              auipc        s9, 978856
                  xor          s8, t1, t1
                  bne          t5, a7, 397f
                  slti         s3, a0, -1916
                  sltu         a5, s9, a1
386:              srai         a3, s4, 25
                  beq          s2, a7, 393f
                  addi         a5, a1, -871
                  xori         s8, s6, -1899
                  addi         s8, zero, -1953
                  bne          a4, s0, 404f
                  auipc        s2, 460129
393:              nop
                  or           s10, s7, a3
                  or           s3, s3, t3
                  slti         t0, a6, -307
397:              beq          t3, a7, 408f
                  sra          t6, a7, s7
                  add          s6, sp, s6
                  slli         s5, t2, 12
                  xor          a0, s5, t6
                  sltiu        a7, gp, 1015
                  sub          t6, s3, s4
404:              bge          tp, sp, 417f
                  bge          s0, s8, 415f
                  ori          t1, s1, 564
                  bgeu         s8, t4, 410f
408:              and          a7, s4, s9
                  nop
410:              xor          s11, gp, t3
                  auipc        t3, 384060
                  beq          t0, s9, 417f
                  srai         t0, s1, 9
                  sra          s8, s2, s3
415:              bltu         a1, a4, 432f
                  sra          t2, t6, s9
417:              add          tp, a1, t2
                  sltiu        a5, t0, -757
                  or           a3, a1, zero
                  bgeu         s9, s4, 430f
                  auipc        a3, 31860
                  nop
                  sltu         t6, ra, t5
                  auipc        s11, 87907
                  auipc        s1, 636729
                  srl          a6, s5, s3
                  lui          a2, 652569
                  sll          s4, s2, s0
                  bgeu         s4, t1, 436f
430:              srai         ra, sp, 14
                  xori         s9, a0, -984
432:              sra          s9, sp, a6
                  ori          t2, s8, -1327
                  and          a6, t5, sp
                  slt          t5, s8, t5
436:              slli         a1, s0, 13
                  or           s11, a6, s6
                  or           t1, t4, t4
                  bltu         a6, s3, 459f
                  slti         a2, s10, -1995
                  addi         a1, a5, -1669
                  andi         t1, s4, -486
                  andi         s9, s6, 1792
                  slti         s4, a7, -898
                  xori         s11, s5, 443
                  sltu         a2, a5, s5
                  slli         zero, zero, 20
                  bge          s2, s0, 464f
                  or           a2, s11, t2
                  nop
                  bltu         a6, s5, 462f
                  srai         s8, zero, 29
                  sltu         t3, a2, s2
                  bge          t4, a7, 464f
                  auipc        t0, 914023
                  bne          s1, ra, 459f
                  sra          s7, s6, s1
                  xor          tp, a6, s0
459:              sub          zero, t4, t0
                  bgeu         t5, s6, 461f
461:              bge          s11, a0, 467f
462:              add          s11, s4, s3
                  xor          s2, s6, t0
464:              blt          t2, gp, 473f
                  addi         s9, s8, -1291
                  slli         ra, gp, 0
467:              auipc        s10, 367569
                  addi         t6, s3, -989
                  slti         s4, s3, -2039
                  sltiu        a5, t0, 1430
                  bgeu         t4, t0, 482f
                  sra          gp, t5, a7
473:              sra          s4, s9, t6
                  sltu         t3, a3, t2
                  slli         s10, a7, 25
                  slti         s1, s1, 1630
                  auipc        s11, 804514
                  bgeu         s9, s9, 491f
                  sltu         s11, s3, t6
                  sltiu        sp, a0, -639
                  srl          s5, a5, t2
482:              srl          s11, t4, sp
                  xori         gp, a3, 1159
                  xor          gp, s4, gp
                  beq          s1, s2, 489f
                  beq          a2, a1, 500f
                  blt          s6, s6, 492f
                  slti         t2, s4, 2014
489:              slli         s3, gp, 24
                  sltiu        s1, a6, 786
491:              srli         t2, gp, 18
492:              srai         t5, s3, 9
                  and          a3, s3, a4
                  sltu         a6, a5, s4
                  slli         s3, s1, 22
                  sra          a6, s1, s2
                  slti         a1, s4, 2018
                  addi         zero, zero, -1357
                  andi         s8, a3, 255
500:              srli         ra, s2, 3
                  sub          t3, a1, s10
                  and          s9, a5, a6
                  andi         s6, a2, -1478
                  bgeu         s0, s1, 506f
                  sub          s10, a6, s11
506:              addi         a6, tp, 1537
                  or           a2, t6, s10
                  or           s9, a5, a6
                  sll          a1, t3, s8
                  sll          zero, s3, a0
                  bge          s5, t6, 514f
                  srl          ra, s11, a1
                  slt          a2, s4, t5
514:              sltu         t6, ra, sp
                  srai         gp, s11, 4
                  or           s2, t1, t6
                  srl          t5, a4, t4
                  slti         s4, t3, 2035
                  srl          t2, sp, t5
                  slt          a3, s6, t2
                  lui          a3, 135829
                  slt          s10, s3, a6
                  slt          zero, s1, t2
                  srai         t5, sp, 18
                  bgeu         t1, s11, 531f
                  slt          a5, s5, s5
                  slli         t2, s0, 8
                  and          t6, s1, t1
                  add          zero, t6, s5
                  slli         gp, a6, 1
531:              srli         a7, s1, 23
                  sra          t5, t3, t5
                  auipc        t3, 850542
                  slti         s11, a6, -1064
                  lw           ra, 4(s0)
                  nop
                  addi         s0, s0, 24
                  srai         s11, t0, 30
659:              addi x15, x1, 0
659:              jalr x15, x15, 0
sub_5:            and          s5, a4, a2
                  andi         s4, gp, 1830
                  nop
                  addi         s0, s0, -40
                  or           s6, s5, s8
                  sw           ra, 4(s0)
                  nop
                  or           s11, s1, t1
                  xori         t0, a4, -1024
                  sll          s5, zero, s0
                  ori          s1, s3, 594
                  la           sp, region_0+1388 #start riscv_load_store_rand_instr_stream_0
                  lbu          t6, -28(sp)
                  add          a0, a1, s4
                  lbu          a2, -43(sp)
                  lhu          a7, -62(sp)
                  sltiu        s1, s6, 1355
                  lh           tp, -12(sp)
                  sw           a0, 56(sp)
                  or           ra, s10, s6
                  lb           a5, 63(sp)
                  sb           a7, 50(sp)
                  sb           t2, -41(sp)
                  sb           s3, 39(sp)
                  srai         s10, t1, 11
                  sltu         t2, a6, sp
                  lb           a6, -28(sp)
                  and          s10, s10, a1
                  lbu          s8, -24(sp)
                  lbu          t2, 59(sp)
                  lbu          s1, 1(sp)
                  lhu          a7, -60(sp)
                  sb           t2, -39(sp)
                  lbu          a7, 37(sp)
                  auipc        t6, 397296
                  andi         s11, ra, -1851
                  lb           s8, -47(sp)
                  andi         ra, a6, -692
                  add          a7, t1, a5
                  lhu          s6, -60(sp)
                  lw           s5, 36(sp)
                  sh           zero, -58(sp)
                  lbu          t1, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  xor          a3, a6, a6
                  sub          ra, s2, s9
                  lui          s2, 274169
                  srai         t3, t2, 12
                  xor          s7, s0, s5
                  bgeu         t5, a0, 23f
                  slt          t0, t0, gp
                  slli         s9, t1, 10
                  blt          zero, t5, 27f
                  nop
                  sub          tp, a5, s5
                  auipc        a7, 342155
                  slli         s9, t2, 27
                  nop
                  andi         s10, s8, -782
                  bge          a3, s4, 28f
                  bge          a0, gp, 21f
                  slli         t6, s7, 1
                  srai         t6, a4, 8
                  bgeu         a2, t4, 35f
                  addi         s10, t3, 674
21:               slt          a2, t1, zero
                  bgeu         s4, a3, 23f
23:               srl          s6, a2, ra
                  slt          t1, s5, a6
                  srl          s10, s9, a5
                  xor          sp, a4, s7
27:               beq          a1, zero, 45f
28:               lui          s1, 251535
                  slt          s1, s11, s4
                  sra          ra, t1, s2
                  ori          s11, s5, -971
                  beq          s6, s4, 43f
                  bne          t0, a7, 49f
                  beq          s7, s5, 39f
35:               ori          t0, s7, 1891
                  xor          s6, zero, t2
                  srl          a0, s9, s2
                  bge          s6, s4, 47f
39:               add          a7, t5, t0
                  add          t1, t6, a1
                  sltiu        a0, s1, -22
                  sub          a5, tp, tp
43:               srl          a0, a1, s0
                  sltiu        a5, s9, 631
45:               auipc        s1, 923772
                  xori         t2, t3, -1315
47:               slt          gp, s1, s0
                  and          s11, s1, t3
49:               or           a0, s11, a3
                  slli         s1, s7, 5
                  slti         gp, t4, -1665
                  nop
                  bltu         s8, t0, 71f
                  and          t2, s7, t5
                  sltu         a6, a6, s2
                  sra          t0, t6, a2
                  and          s9, s2, a5
                  bge          s5, s5, 63f
                  bge          a3, a6, 60f
60:               slti         s3, a2, -95
                  bltu         a1, a4, 76f
                  addi         s5, t0, 69
63:               add          gp, t2, s10
                  slti         s5, a0, 595
                  srl          a1, t2, s8
                  sub          ra, s9, s9
                  sra          s4, a1, a1
                  xori         s7, t5, 198
                  sra          s2, t3, sp
                  add          t1, s7, s1
71:               and          zero, tp, t2
                  sll          zero, zero, a4
                  srai         s9, zero, 18
                  slt          t2, s0, a2
                  beq          a3, t1, 82f
76:               add          s3, a3, s11
                  xori         t3, a7, -482
                  sra          s7, s2, tp
                  bge          t6, s9, 98f
                  slt          zero, zero, t3
                  bgeu         s11, gp, 84f
82:               ori          s7, a1, 121
                  sra          s9, a0, t4
84:               srl          t2, s7, a6
                  ori          a5, a5, 1536
                  slti         s4, t3, 1259
                  andi         a0, a3, -448
                  blt          tp, s4, 98f
                  slli         t3, t3, 13
                  addi         t2, s2, -1138
                  bltu         zero, s5, 92f
92:               auipc        s11, 327099
                  srli         a2, a3, 15
                  xor          a2, s10, t0
                  bgeu         t5, s10, 98f
                  slli         t0, s1, 28
                  sra          tp, tp, t4
98:               bne          a0, s5, 110f
                  sll          s5, sp, a5
                  beq          t0, sp, 117f
                  addi         a3, s2, 941
                  sll          t1, a1, a0
                  srl          s10, s11, a6
                  sub          t6, s8, s1
                  slli         t1, s5, 15
                  srli         s9, ra, 1
                  ori          sp, tp, -1583
                  andi         t5, a3, -433
                  xor          t6, tp, s1
110:              nop
                  bne          a7, t1, 126f
                  sltiu        s8, t4, -1717
                  srl          s9, t4, a0
                  andi         a6, s3, -1930
                  slti         s6, s5, -2000
                  bltu         zero, s4, 128f
117:              lui          s5, 198577
                  sltiu        t6, t2, 60
                  andi         s8, s4, 346
                  bge          a3, s10, 123f
                  slti         sp, a2, -1506
                  and          s4, s0, ra
123:              slti         s7, a2, -1891
                  sll          s10, tp, a3
                  srl          s7, t4, a1
126:              xori         a1, s8, -155
                  blt          a6, s9, 144f
128:              sltiu        a6, ra, -445
                  srai         s8, tp, 30
                  srl          gp, a5, s10
                  sra          s5, s3, gp
                  sra          s1, a1, s9
                  srai         t1, s7, 19
                  or           a0, a1, t5
                  and          s2, sp, a3
                  srai         a2, s11, 18
                  blt          a7, a5, 153f
                  xor          a7, t5, s5
                  or           s7, s6, a4
                  sll          t6, t6, a4
                  add          s1, s2, a5
                  sltiu        t0, t2, -439
                  ori          gp, zero, 1926
144:              addi         ra, s11, 77
                  xori         a5, a6, 1028
                  auipc        s6, 745562
                  sub          t6, s9, a7
                  and          s4, s9, t2
                  slli         s10, gp, 6
                  slli         t1, t4, 21
                  sra          zero, a2, t4
                  nop
153:              slt          a5, s0, s2
                  slli         a7, a2, 17
                  blt          t5, t2, 168f
                  nop
                  sub          s5, s6, a3
                  or           a6, ra, s5
                  or           s5, sp, t6
                  xor          s7, s0, a5
                  sub          s3, s11, s9
                  bltu         a0, s6, 177f
                  srli         t6, s8, 23
                  or           sp, t3, s2
                  xor          a7, a7, s4
                  sltu         t1, s5, s8
                  or           a7, a1, s7
168:              slti         a1, a1, 1213
                  xor          s3, t0, t3
                  slti         s2, s3, 88
                  bge          s10, t3, 190f
                  sltu         sp, t5, s11
                  srl          s1, gp, t3
                  slli         s10, a7, 29
                  srl          s4, s5, a3
                  srai         s1, t2, 6
177:              nop
                  andi         s3, t2, 875
                  sltu         sp, t4, s5
                  slli         t1, t0, 12
                  add          s8, a5, a2
                  beq          t3, t6, 194f
                  sltiu        t6, t0, 233
                  sra          zero, t4, s11
                  nop
                  and          s11, a7, tp
                  sra          s11, s3, t5
                  andi         s10, t4, -33
                  bne          sp, s1, 199f
190:              andi         a1, t4, -1361
                  xor          t3, s5, s7
                  sll          s7, t2, s8
                  sra          s7, s10, t4
194:              sltu         s2, s8, t2
                  addi         s6, a4, 234
                  add          a1, t3, sp
                  bgeu         s5, a6, 199f
                  xor          zero, s7, t1
199:              sra          a3, s10, ra
                  sltiu        a1, a1, 1429
                  andi         a3, s4, -610
                  slt          a1, t3, s5
                  sll          s9, t6, sp
                  auipc        s9, 302475
                  ori          a2, s5, 304
                  lw           ra, 4(s0)
                  srai         a6, t6, 17
                  sub          s8, s11, tp
                  sltu         s1, t5, s3
                  addi         s0, s0, 40
                  xor          t6, s2, a0
255:              addi x27, x1, 1
255:              jalr x27, x27, 0
sub_2:            addi         s0, s0, -16
                  slli         s6, a0, 31
                  sll          t1, s5, a0
                  sub          s11, tp, a5
                  sw           ra, 4(s0)
                  addi         a2, a7, -464
                  addi         a2, t0, 860
                  srli         a2, s8, 11
                  la           t1, sub_4
                  slti         s9, s3, 799
                  sub          s5, s1, s6
                  ori          a6, s2, 1575
                  addi         t1, t1, 348
                  sll          zero, s4, gp
                  auipc        s8, 758160
                  xor          s7, s2, t5
                  andi         tp, s6, -1552
sub_2_j6:         jalr         ra, t1, -348 #jump sub_2 -> sub_4
                  sub          s5, t1, t0
                  bge          gp, t0, 4f
                  bge          s0, a1, 15f
                  nop
4:                slti         a5, s5, 1732
                  nop
                  or           a2, t6, s6
                  or           a2, t3, s10
                  blt          t5, zero, 10f
                  bgeu         t1, a0, 26f
10:               sltu         s5, a1, a3
                  srli         ra, s5, 19
                  slli         a3, s2, 25
                  xor          a5, a1, s11
                  srli         t3, a1, 22
15:               andi         ra, t1, -195
                  and          s5, t2, a2
                  andi         t2, s6, -1830
                  sltu         t3, sp, s11
                  xori         t3, ra, -470
                  sra          t5, a7, s11
                  srl          s6, a7, a3
                  srl          s2, t2, s3
                  andi         tp, ra, 104
                  srl          a3, a2, a1
                  slti         t2, s6, -957
26:               addi         s6, a4, -1207
                  sltiu        a3, s11, 555
                  xori         a6, t2, -1240
                  bgeu         a2, gp, 34f
                  beq          a2, sp, 45f
                  bne          s1, ra, 46f
                  slt          s3, s1, gp
                  srli         s4, s7, 20
34:               add          s10, t4, s10
                  auipc        ra, 76688
                  slt          a6, s10, a1
                  slli         a5, a7, 19
                  andi         s2, t0, -816
                  bgeu         sp, t3, 53f
                  or           a1, a4, tp
                  slli         a0, t1, 13
                  and          ra, s6, a6
                  bne          t2, t3, 57f
                  bltu         a4, s5, 63f
45:               xor          a1, s3, s5
46:               srai         s10, s5, 7
                  sra          a0, a7, a3
                  sltiu        gp, a0, 556
                  slti         s2, a3, -1832
                  sra          s9, t4, s2
                  sltiu        ra, t4, 1587
                  andi         zero, t3, -859
53:               blt          a6, t2, 54f
54:               beq          s10, s7, 59f
                  xor          t3, s5, a0
                  sltu         tp, a1, a7
57:               lui          a1, 878484
                  bge          zero, s11, 61f
59:               blt          s2, a0, 66f
                  srai         a5, s7, 10
61:               blt          gp, t1, 72f
                  srl          s4, sp, s3
63:               or           t0, s8, a7
                  sra          s6, zero, s8
                  sltiu        tp, s1, 1521
66:               sra          s5, s6, s7
                  or           sp, s9, s8
                  add          t0, s6, a2
                  srai         ra, s7, 20
                  slt          t6, s7, tp
                  xori         tp, s11, -1619
72:               beq          s5, a7, 74f
                  srai         s11, a6, 5
74:               auipc        s4, 974337
                  beq          t3, s10, 76f
76:               sltu         s2, a5, zero
                  sltiu        tp, s10, 178
                  lw           ra, 4(s0)
                  addi         s0, s0, 16
                  lui          a5, 17023
                  or           t3, t3, a6
                  sll          s10, t0, a5
                  sub          s9, a2, ra
102:              addi x24, x1, 1
102:              jalr x24, x24, 0
sub_3:            xori         sp, zero, 228
                  blt          a5, ra, sub_3_stack_p
                  auipc        s6, 210888
sub_3_stack_p:    addi         s0, s0, -20
                  sw           ra, 4(s0)
                  ori          s5, t3, -1206
                  la           t2, region_1+1869 #start riscv_load_store_rand_instr_stream_0
                  sb           sp, -147(t2)
                  sltiu        t5, s7, 1613
                  sltiu        s6, a4, 1750
                  lh           a1, -143(t2)
                  lhu          sp, 69(t2)
                  lbu          s5, -80(t2)
                  sll          s9, t6, t2
                  lbu          s1, -252(t2)
                  sltu         s9, t6, s1
                  srai         s7, s4, 31
                  lh           s8, -181(t2)
                  sb           t2, -206(t2)
                  sw           zero, 119(t2)
                  lhu          s1, -203(t2)
                  sltiu        s2, a4, -1469
                  srl          a2, s9, gp
                  lh           s11, 7(t2)
                  sra          t1, a0, s10
                  ori          s4, s2, 1649
                  sw           t1, 99(t2)
                  srai         t5, sp, 17
                  slt          sp, zero, s6
                  sub          s8, s1, t6
                  sb           s1, -166(t2)
                  andi         t0, t2, -1468
                  sll          s8, t1, t5
                  sub          a7, t3, ra
                  srl          s6, s5, t0
                  lb           s5, -82(t2)
                  sb           s7, -126(t2)
                  lw           s8, -197(t2)
                  lhu          t1, 99(t2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1205 #start riscv_load_store_rand_instr_stream_2
                  srl          s11, s0, s7
                  slti         tp, a2, -847
                  sub          s11, a5, s6
                  lhu          a0, -11(sp)
                  lui          a3, 28599
                  auipc        s5, 353213
                  addi         a0, sp, -1259
                  lhu          t1, -15(sp)
                  sh           t3, -3(sp)
                  xor          s3, s8, s5
                  and          zero, s5, t5
                  lbu          s6, 6(sp)
                  lh           a2, -9(sp)
                  lh           a5, -5(sp)
                  lw           a1, -9(sp)
                  slt          zero, sp, t5
                  sra          zero, s1, t3
                  srli         a3, gp, 23
                  ori          s10, t4, 1991
                  lh           s4, 5(sp)
                  sb           s4, 16(sp)
                  lbu          a6, 14(sp)
                  sb           a5, -6(sp)
                  lb           ra, 11(sp)
                  sltiu        a0, s5, -1866
                  sh           a7, -5(sp)
                  lbu          s6, 13(sp)
                  addi         s6, zero, -828
                  sb           tp, 5(sp)
                  lhu          s8, 7(sp)
                  lbu          s5, -12(sp)
                  slli         ra, t1, 5
                  lbu          t6, 9(sp)
                  slt          a3, t1, a0
                  auipc        s3, 693207
                  auipc        a5, 323862
                  ori          s11, t2, -936
                  sb           sp, 5(sp)
                  sll          s6, s7, s2
                  or           a5, s11, ra
                  sb           a6, -2(sp)
                  xori         s8, s11, -1319
                  sh           s10, -15(sp)
                  sra          s5, zero, t6
                  lb           t0, 0(sp)
                  lui          gp, 864279
                  sb           sp, -4(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1813 #start riscv_load_store_rand_instr_stream_1
                  xor          t2, s4, s7
                  and          t5, a4, s10
                  srai         t5, a7, 30
                  sb           a1, -524(sp)
                  srai         a3, tp, 8
                  lbu          s5, -600(sp)
                  sltu         s10, t3, a5
                  slti         s2, s2, 1180
                  slli         t5, s5, 25
                  sh           a4, -1235(sp)
                  or           s4, s1, s10
                  sb           s6, -482(sp)
                  addi         t3, a6, -1073
                  srl          t3, s1, s2
                  lb           a5, -1407(sp)
                  xor          t5, s2, ra
                  sh           a6, -1451(sp)
                  sra          t3, s9, s3
                  or           s2, s1, s1
                  andi         t3, a5, 1168
                  sb           s1, -1718(sp)
                  lbu          s9, -1197(sp)
                  sltu         tp, gp, a4
                  or           a5, s0, t1
                  xor          s6, s10, s5
                  or           s6, s9, t3
                  sltu         s7, a6, a6
                  and          s9, t5, s0
                  addi         zero, s3, 971
                  sh           t0, -361(sp)
                  or           s11, tp, sp
                  addi         tp, s2, -1277
                  slt          t6, ra, sp
                  auipc        s7, 641717
                  lb           t1, -547(sp) #end riscv_load_store_rand_instr_stream_1
                  srai         sp, s7, 0
                  slt          t2, ra, t4
                  bltu         a1, s8, sub_3_j7 #branch to jump instr
                  add          t2, tp, a4
                  slt          a0, a2, a2
                  sltiu        s7, s9, 525
                  sra          a6, s6, t0
                  slti         s3, s6, -745
                  sra          s8, t4, s6
                  sra          t6, sp, a4
sub_3_j7:         jal          ra, sub_4 #jump sub_3 -> sub_4
                  auipc        a3, 335947
                  beq          s5, s6, 3f
3:                srl          s5, s2, a1
                  xor          sp, gp, s8
                  ori          s4, t1, -393
                  add          a5, s3, t6
                  add          a1, s4, a1
                  slt          t2, s11, t4
                  bne          gp, t3, 11f
                  srli         s9, t3, 2
11:               or           s9, t0, a7
                  bge          s1, a2, 27f
                  andi         s1, zero, 182
                  bne          a5, t2, 23f
                  addi         s8, s2, 1224
                  lui          a2, 518310
                  beq          a0, t4, 20f
                  andi         s11, a4, 374
                  or           s4, a1, t5
20:               sll          t2, a0, a5
                  nop
                  or           a0, t5, s9
23:               ori          gp, s4, -140
                  xor          s3, s3, t5
                  beq          s3, s4, 37f
                  bne          s8, t3, 43f
27:               addi         s4, a6, 1415
                  slti         s5, a0, 712
                  sub          a1, s3, ra
                  xor          a5, s5, s4
                  bgeu         a7, a2, 38f
                  xor          zero, t1, s6
                  sltiu        s11, tp, 1687
                  sll          a2, a1, s0
                  srai         a7, s1, 22
                  slt          s2, s1, t2
37:               sub          s6, a3, a2
38:               sll          a6, t2, a0
                  andi         t5, t4, -418
                  srli         a0, a4, 5
                  bne          s11, a1, 46f
                  sra          s9, s0, tp
43:               blt          s7, ra, 61f
                  srai         t5, a4, 26
                  slt          s9, t0, t2
46:               sltu         s4, s11, s3
                  srli         a1, t3, 22
                  add          a6, s9, a6
                  sll          s7, t2, s8
                  addi         s1, s7, 105
                  auipc        a7, 646188
                  srl          sp, s4, zero
                  beq          s10, t1, 57f
                  auipc        s3, 17207
                  sltiu        s2, a3, 724
                  xori         sp, s11, 503
57:               sll          a7, tp, t5
                  blt          a3, s2, 76f
                  blt          s10, t2, 72f
                  add          t2, a2, tp
61:               sltiu        s5, t2, -1776
                  sltu         a5, s5, s5
                  srli         a5, s2, 7
                  sra          t1, sp, s6
                  auipc        a7, 59526
                  bne          a7, s9, 71f
                  srl          a5, s0, s7
                  nop
                  bgeu         ra, t1, 75f
                  xori         zero, a5, 347
71:               sra          t6, s8, s11
72:               add          s10, a5, s1
                  beq          a7, t0, 83f
                  beq          tp, a4, 91f
75:               andi         tp, a0, -1422
76:               srai         s2, s7, 27
                  sltiu        t3, s7, 923
                  sra          s6, zero, a4
                  srl          s8, s3, t4
                  bge          s11, tp, 85f
                  xor          s2, s7, s7
                  sltu         s10, t5, a4
83:               bne          a0, a4, 86f
                  sra          t0, a1, a1
85:               lui          t0, 247111
86:               auipc        t1, 949535
                  bgeu         zero, t1, 88f
88:               and          s2, a0, gp
                  addi         s7, t0, -661
                  xor          s2, a6, s8
91:               srl          s11, a7, t6
                  slli         s11, s9, 4
                  beq          gp, a3, 106f
                  sra          s7, sp, t5
                  slli         zero, a3, 1
                  xori         a2, t2, 432
                  srai         tp, s9, 19
                  addi         s4, s9, 1100
                  sll          t3, tp, tp
                  bltu         s7, t0, 120f
                  bgeu         a4, t3, 118f
                  ori          a2, s10, -680
                  bgeu         s7, a6, 121f
                  bgeu         s11, t5, 119f
                  srl          zero, a7, s6
106:              sub          tp, a6, tp
                  lui          s4, 487519
                  slt          tp, gp, s8
                  srl          s10, a0, a1
                  slli         s10, gp, 7
                  slt          t3, s1, s3
                  sltiu        s10, tp, -1454
                  beq          sp, s2, 131f
                  sltiu        s7, a0, -1344
                  slli         t0, s8, 12
                  sltiu        t3, s2, -1416
                  slt          s9, s8, a2
118:              bne          a5, s7, 132f
119:              beq          t2, t2, 134f
120:              sll          t0, t5, t2
121:              auipc        a1, 666115
                  sltu         tp, zero, a0
                  sra          s6, s1, a0
                  blt          t4, s6, 125f
125:              bne          s11, s10, 145f
                  xor          a6, s4, s10
                  sra          gp, zero, t6
                  andi         ra, a5, 1889
                  and          t3, a0, a6
                  xori         s9, t3, -1720
131:              xori         s5, s3, -1025
132:              blt          s0, s8, 146f
                  sltu         ra, t4, s4
134:              sub          t6, s5, a2
                  auipc        s6, 246517
                  or           t1, s5, s9
                  sll          s9, t6, s5
                  and          a3, s0, ra
                  xor          ra, tp, s0
                  addi         s3, s6, -598
                  bne          s11, t5, 144f
                  bltu         s9, s0, 159f
                  or           s3, s5, gp
144:              sltiu        s9, s10, 1683
145:              ori          a2, t6, 1406
146:              ori          a7, a5, 1356
                  nop
                  srai         a5, s4, 8
                  bltu         tp, a5, 154f
                  and          ra, s8, a0
                  slti         s2, t0, -283
                  slt          tp, a6, t1
                  and          t6, t6, s0
154:              srli         s3, s10, 24
                  ori          s2, s11, -1838
                  srl          s11, t0, a3
                  xor          t1, t1, s0
                  sub          s9, s7, a0
159:              andi         s9, t5, -1652
                  ori          s1, a4, -1673
                  xori         t3, s1, 20
                  sra          s7, t0, t6
                  addi         a0, t2, 1052
                  slt          ra, t0, zero
                  bne          s6, s2, 177f
                  and          a7, t3, s11
                  beq          t3, a1, 184f
                  or           a6, a0, s5
                  auipc        a6, 144834
                  beq          t3, s2, 173f
                  andi         gp, a6, 1393
                  bltu         zero, s8, 190f
173:              addi         s3, s2, 1945
                  bgeu         s7, s4, 184f
                  beq          s6, t4, 188f
                  xori         a7, s10, 1357
177:              sra          t0, s4, t0
                  sra          tp, a3, t3
                  xori         s4, t4, 1654
                  add          s4, s9, a4
                  slti         a1, s0, 541
                  andi         zero, t1, 1898
                  slli         a1, s7, 28
184:              sltu         s11, s10, gp
                  auipc        t1, 231973
                  sltu         s2, t0, s3
                  slli         t1, a0, 26
188:              sltiu        t0, tp, -127
                  bne          a0, a2, 209f
190:              srli         t1, s11, 22
                  lui          tp, 353395
                  sub          sp, t5, s9
                  beq          t1, a7, 211f
                  srai         s6, a4, 20
                  nop
                  slt          a5, t2, t4
                  nop
                  xori         t3, t3, -2043
                  srai         s4, t4, 24
                  nop
                  slli         ra, a0, 14
                  beq          a1, s1, 219f
                  srl          zero, s2, s9
                  srai         t0, s6, 1
                  lui          s8, 290752
                  sra          s9, gp, a1
                  sll          s9, s7, s4
                  srl          s4, t2, ra
209:              bne          a3, s7, 213f
                  auipc        zero, 36912
211:              slti         gp, a5, 96
                  slli         s6, t1, 16
213:              beq          t1, t2, 214f
214:              bgeu         a1, s8, 229f
                  srai         t0, s2, 10
                  srli         t0, t0, 16
                  ori          s1, s5, -147
                  sltu         t3, s1, a1
219:              add          sp, a2, s10
                  sub          a7, s3, a5
                  xori         s5, s1, -1323
                  sub          s5, t5, tp
                  sll          t5, ra, a2
                  sub          t6, a4, s8
                  sltu         t3, a3, tp
                  bne          t5, t5, 228f
                  slti         gp, a1, -794
228:              bltu         t0, s5, 233f
229:              addi         tp, a0, -759
                  srl          s8, a5, a5
                  and          t6, a7, t3
                  xor          s9, tp, s7
233:              nop
                  auipc        s7, 347294
                  bgeu         t1, s6, 253f
                  sub          gp, a7, t1
                  sltiu        sp, s0, 502
                  xor          t5, t5, a3
                  slli         s5, s7, 12
                  srli         a3, s10, 19
                  xor          a3, s5, s11
                  blt          a5, t3, 249f
                  andi         s3, t4, -1861
                  lui          a3, 185223
                  bgeu         s7, a3, 246f
246:              xor          s1, s10, t2
                  slt          a5, s10, a0
                  bge          t1, t5, 266f
249:              beq          s0, s11, 255f
                  slti         t3, t2, 39
                  sltu         t1, t4, t4
                  nop
253:              sltu         s11, a3, a7
                  blt          a4, a0, 255f
255:              ori          s10, a5, 1341
                  srai         t6, t1, 1
                  or           s9, a7, a3
                  srai         s3, s1, 8
                  sltu         s10, a1, s2
                  sll          s10, s7, s7
                  lui          s11, 436376
                  blt          s3, t5, 271f
                  or           a6, t6, a6
                  beq          a4, t5, 279f
                  bgeu         s2, s4, 285f
266:              srl          a2, s5, a7
                  beq          s8, a5, 280f
                  sra          a7, a6, a7
                  bne          a5, a6, 274f
                  blt          t6, s4, 285f
271:              bne          t1, t2, 284f
                  xori         a2, s5, -1580
                  nop
274:              blt          a7, a7, 278f
                  slli         t6, s5, 13
                  blt          sp, sp, 289f
                  srai         a0, gp, 3
278:              slt          a6, t2, s8
279:              nop
280:              sub          s3, s9, s10
                  srai         t1, a4, 12
                  srl          s9, s3, s5
                  xor          s8, s1, a5
284:              sltiu        tp, a5, 404
285:              beq          s6, s4, 302f
                  srli         t5, a3, 16
                  addi         t2, s2, -153
                  andi         a0, s3, -1426
289:              sll          t1, s11, s1
                  slli         t2, s11, 23
                  sltiu        s5, t3, -1781
                  srl          gp, s5, s9
                  srl          a1, s5, t1
                  sub          s5, s10, s5
                  beq          s8, s10, 304f
                  addi         s4, s4, 917
                  bge          t4, t1, 298f
298:              addi         s4, a6, 1291
                  slt          t5, a4, s3
                  xori         a1, t0, -1296
                  blt          s7, s7, 318f
302:              beq          s7, t3, 307f
                  and          s11, s3, s6
304:              nop
                  nop
                  beq          sp, t0, 309f
307:              bne          a0, gp, 322f
                  and          a1, s1, t5
309:              beq          zero, a3, 329f
                  srai         s11, a6, 30
                  andi         a0, t5, 1082
                  bge          a1, t3, 330f
                  bgeu         a0, s5, 323f
                  and          s8, s5, s0
                  bltu         a5, t5, 316f
316:              sra          s8, s9, s1
                  ori          ra, s4, 1312
318:              slti         a7, s9, -592
                  blt          s6, gp, 324f
                  srl          s1, s6, a0
                  nop
322:              slti         t3, t4, -284
323:              slti         s3, gp, -477
324:              xori         a7, s6, 909
                  xor          tp, s6, zero
                  bgeu         s10, a3, 328f
                  bgeu         t1, gp, 344f
328:              sltu         s7, s11, s9
329:              ori          t6, sp, -1583
330:              xor          a7, t0, s10
                  or           t3, s5, a3
                  beq          s0, s9, 352f
                  bgeu         a6, s8, 339f
                  sltiu        t2, gp, 1146
                  slt          tp, s11, s5
                  add          s1, zero, a2
                  or           a1, s2, a6
                  srli         t1, s11, 0
339:              srl          s3, gp, s7
                  sll          tp, a3, s2
                  andi         s3, s1, -1509
                  sll          s8, t1, s7
                  and          a2, a0, a5
344:              bgeu         t4, sp, 358f
                  addi         ra, s3, 1335
                  sub          a2, s10, s2
                  xori         s11, t4, -1418
                  bgeu         zero, gp, 353f
                  lui          zero, 353066
                  xor          t1, s7, a5
                  andi         t0, a5, 904
352:              srli         s2, s2, 4
353:              bne          s4, s2, 371f
                  sll          s5, zero, t5
                  sltiu        s8, ra, -1537
                  andi         s6, t6, 1354
                  beq          t1, a6, 369f
358:              bne          s1, s8, 373f
                  bgeu         a2, s4, 366f
                  bge          t6, s3, 361f
361:              and          t2, t1, a3
                  sub          s11, a5, s3
                  lui          t6, 681312
                  xor          t2, s4, s7
                  lui          t1, 822430
366:              beq          s1, t0, 381f
                  and          tp, s7, t5
                  xori         ra, t4, 1054
369:              add          a1, s6, t0
                  blt          a0, t6, 373f
371:              beq          s6, zero, 389f
                  sub          s5, tp, a2
373:              add          zero, a4, ra
                  add          t0, a2, s8
                  nop
                  sll          a2, t1, t2
                  auipc        s10, 46856
                  sra          s6, t2, a6
                  and          a1, t1, s6
                  and          zero, a1, a1
381:              and          a5, s8, a0
                  sub          a7, s10, s3
                  bgeu         a4, a3, 401f
                  bne          tp, s3, 404f
                  auipc        s2, 425934
                  andi         s9, t5, 1523
                  auipc        a3, 723664
                  auipc        t0, 236194
389:              auipc        s6, 499204
                  lui          zero, 684708
                  and          t6, t2, a5
                  sra          s7, t1, t1
                  and          gp, s5, s6
                  sltiu        s2, a2, -706
                  sra          s1, s10, s7
                  add          s8, a6, s0
                  xori         a5, s11, 1168
                  beq          s6, ra, 418f
                  bltu         s4, s3, 417f
                  sltiu        a1, a7, 101
401:              bltu         sp, s5, 419f
                  addi         gp, t0, -1673
                  sll          a6, s8, s7
404:              slti         tp, a3, -772
                  andi         a7, tp, 568
                  sra          t0, s6, s2
                  srli         sp, s4, 18
                  add          tp, s2, t3
                  bgeu         s7, a4, 414f
                  srli         s10, s4, 30
                  blt          s4, tp, 416f
                  blt          a7, s6, 427f
                  andi         s8, sp, 305
414:              xori         a1, a3, -1555
                  or           s1, s2, sp
416:              xor          s6, a5, s7
417:              lui          s6, 686868
418:              or           s8, a5, s3
419:              bgeu         s6, a1, 432f
                  andi         t1, a2, -493
                  addi         s4, s10, -81
                  slti         t6, gp, 1668
                  sub          s1, s6, s10
                  bltu         t4, t0, 427f
                  sll          s10, ra, s8
                  sll          t0, s9, s8
427:              nop
                  ori          a3, a1, 902
                  add          a7, t2, a4
                  nop
                  bltu         s11, s9, 435f
432:              slli         sp, s0, 7
                  beq          ra, s4, 435f
                  and          s1, s8, t2
435:              sll          a3, s8, t0
                  xor          s6, a0, t6
                  sltu         s4, t3, s7
                  slti         s9, t3, -1554
                  sub          a1, a1, s11
                  sltiu        a7, a0, 1128
                  sltu         a6, a1, s7
                  srai         s1, s9, 13
                  lw           ra, 4(s0)
                  addi         s0, s0, 20
                  nop
                  sll          s9, s2, t0
580:              addi x9, x1, 0
580:              jalr x9, x9, 0
sub_7:            addi         s0, s0, -16
                  srli         s10, s5, 27
                  sltu         gp, s5, t4
                  slti         a0, ra, 19
                  sw           ra, 4(s0)
                  slti         a7, tp, 464
                  sra          a7, t1, ra
                  sub          s6, s7, s3
                  la           a2, region_0+1922 #start riscv_load_store_rand_instr_stream_0
                  srai         sp, t6, 3
                  srli         a1, s11, 9
                  srai         a3, t3, 0
                  lb           a5, 9(a2)
                  lb           t6, -5(a2)
                  lbu          s2, 3(a2)
                  sb           sp, -14(a2)
                  lui          s1, 545527
                  addi         ra, gp, 745
                  lh           s10, -16(a2)
                  and          sp, a5, s10
                  lhu          s4, 4(a2)
                  lhu          s7, -12(a2)
                  sb           a4, -7(a2)
                  sh           s10, 16(a2)
                  sltiu        a6, a7, -1053
                  ori          s1, t2, 1475
                  sw           t6, 10(a2)
                  lb           a0, -15(a2)
                  lb           s1, -12(a2)
                  xori         t3, a4, -825
                  sb           s8, -11(a2)
                  sb           t3, 12(a2)
                  sra          ra, s3, s4
                  lh           s10, -10(a2)
                  sh           t4, -6(a2)
                  slt          t1, s5, t5
                  lh           s9, 12(a2) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+618 #start riscv_load_store_rand_instr_stream_2
                  lb           gp, 42(s7)
                  sb           s7, -3(s7)
                  addi         s10, s5, 546
                  lbu          a0, -17(s7)
                  lb           t0, 4(s7)
                  sb           s8, 3(s7)
                  add          a5, gp, t1
                  addi         gp, a5, 156
                  addi         zero, s5, -1876
                  sll          s6, t0, s8
                  sb           gp, 4(s7)
                  lb           t3, -28(s7)
                  slt          a6, a4, t4
                  lw           s9, -58(s7)
                  sb           tp, -14(s7)
                  lh           s8, -18(s7)
                  lb           a7, -55(s7)
                  xori         t3, s8, 21
                  add          t3, s10, a4
                  auipc        sp, 606904
                  lh           sp, -52(s7)
                  srai         t1, a2, 2
                  lui          zero, 670712
                  lbu          t1, 33(s7) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+793 #start riscv_load_store_rand_instr_stream_3
                  sb           a6, 155(a7)
                  lbu          tp, -480(a7)
                  srl          s6, t5, t5
                  nop
                  lh           s8, 1161(a7)
                  srli         s1, a0, 20
                  srl          a5, s10, ra
                  ori          a1, a1, -1857
                  srli         tp, s9, 12
                  auipc        a6, 244456
                  auipc        s11, 451238
                  lbu          a5, 586(a7)
                  lb           tp, 888(a7)
                  lb           a0, 260(a7)
                  sw           t0, 743(a7)
                  lbu          s11, 574(a7)
                  lbu          t0, 234(a7)
                  sh           s2, 571(a7)
                  andi         a5, s8, 875
                  add          t2, s1, gp
                  lbu          s6, 770(a7)
                  nop
                  srai         s2, t3, 12
                  sll          a1, s9, ra
                  slti         t1, s1, 654
                  lb           t3, -211(a7)
                  sltu         gp, a4, a3
                  lhu          tp, 153(a7)
                  sb           t4, 353(a7)
                  lbu          a5, -376(a7)
                  sb           t2, 736(a7)
                  srli         tp, s8, 13
                  lw           a2, 923(a7)
                  or           sp, s10, tp
                  and          tp, a2, t1
                  lb           a1, 1088(a7)
                  sb           s7, 322(a7) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_0+923 #start riscv_load_store_rand_instr_stream_4
                  nop
                  sra          s9, s1, s9
                  slli         gp, a1, 2
                  lb           a0, 39(s11)
                  lhu          t5, -225(s11)
                  add          ra, t4, s4
                  lui          a2, 142866
                  sub          t6, a0, t2
                  lbu          zero, 128(s11)
                  ori          s7, a2, -844
                  andi         a3, t3, -569
                  lb           gp, 244(s11)
                  sra          a5, a4, a6
                  lb           s1, -112(s11)
                  auipc        s6, 655905
                  sub          a0, t4, s8
                  xor          sp, ra, s3
                  sra          a0, a6, a6
                  srl          s7, t6, zero
                  xori         s8, s0, -748
                  lb           s3, 23(s11)
                  lbu          t1, 179(s11)
                  sb           t4, -37(s11)
                  sh           s4, -65(s11)
                  add          a1, s8, s3
                  sltiu        s3, a7, -785
                  addi         t2, t3, -422
                  lhu          a2, 219(s11)
                  lh           s7, -157(s11)
                  lb           s10, 16(s11)
                  lui          tp, 194432
                  sb           a6, 224(s11)
                  slti         t3, gp, -862
                  lw           zero, 129(s11)
                  lh           s1, 221(s11)
                  sub          s6, a1, a1
                  sll          t6, s1, a2
                  lh           s9, 133(s11)
                  slt          s5, s11, s3
                  or           t3, s1, s6
                  ori          s3, s1, -1936
                  sra          sp, s2, a6
                  xori         s10, a0, -872
                  lh           ra, -169(s11) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+438 #start riscv_load_store_rand_instr_stream_1
                  srl          t2, s2, t3
                  sh           s3, -8(sp)
                  lbu          tp, -242(sp)
                  lw           a7, -42(sp)
                  lhu          s3, 130(sp)
                  sub          t6, t5, t2
                  srli         s11, s8, 27
                  lui          s2, 157743
                  sb           s11, 109(sp)
                  sb           t1, 133(sp)
                  and          a0, a1, s5
                  lui          s10, 720580
                  nop
                  lb           a1, -109(sp)
                  slti         t1, t5, 1492
                  sb           t2, 222(sp)
                  lbu          a5, -239(sp)
                  sb           s4, -39(sp)
                  lw           t3, 242(sp)
                  sb           s11, -93(sp)
                  sb           s6, 19(sp)
                  srai         t5, a1, 30
                  lw           a1, 102(sp)
                  lb           s8, -193(sp)
                  lui          s8, 21651
                  sub          s3, a6, t6
                  sb           s7, 29(sp)
                  sll          s2, t0, s6
                  lbu          s11, -220(sp)
                  sb           a0, -87(sp)
                  ori          a6, a7, -859
                  lb           tp, 149(sp)
                  lhu          s6, -128(sp)
                  lbu          gp, -251(sp)
                  lb           s10, -95(sp)
                  slli         s11, s10, 10
                  sw           a7, -126(sp)
                  lb           s10, 47(sp)
                  sltiu        t5, s4, 536
                  sw           t5, -230(sp)
                  srli         t5, t6, 27
                  srli         a0, t0, 8
                  sub          a6, s0, t6
                  srl          t3, a5, s10
                  sb           t0, 103(sp) #end riscv_load_store_rand_instr_stream_1
                  sra          sp, s11, gp
                  slli         t2, sp, 13
                  addi         ra, t5, -1544
                  bne          a0, s8, 18f
                  bgeu         s3, a1, 6f
                  bge          s5, t2, 10f
6:                xori         a5, s3, -484
                  srli         a7, s8, 21
                  sltiu        s10, s11, 836
                  sra          s11, t0, t0
10:               blt          a7, t4, 27f
                  or           a0, s5, t2
                  lui          s1, 603149
                  or           s8, s7, t0
                  srli         s6, t4, 10
                  blt          s7, a6, 32f
                  and          t0, a1, t1
                  beq          s6, t6, 22f
18:               sll          t3, s8, s1
                  beq          s7, s10, 37f
                  blt          t5, sp, 39f
                  srli         a0, t4, 6
22:               sll          s4, s1, s8
                  addi         t0, t2, -1469
                  xori         s9, s11, 35
                  bne          t0, t0, 37f
                  nop
27:               xori         s7, sp, 1920
                  blt          s3, a4, 44f
                  sra          t6, gp, sp
                  nop
                  sltu         t6, s6, a5
32:               sub          s11, s0, a7
                  sra          ra, t1, a1
                  ori          s5, a7, -52
                  slli         a1, s11, 20
                  xor          a1, s8, s4
37:               xori         a2, t2, -745
                  bgeu         a6, s6, 42f
39:               slli         gp, t4, 5
                  auipc        s7, 641150
                  auipc        a6, 235038
42:               lui          s3, 119187
                  or           a6, s11, t1
44:               srl          s9, tp, a6
                  sltu         a6, t3, t2
                  auipc        s1, 83509
                  srl          s2, s3, t1
                  sll          t2, a7, a7
                  andi         s9, t0, 917
                  sltu         s3, s0, s1
                  srai         s10, a6, 13
                  auipc        t5, 398699
                  sub          s5, t4, sp
                  slti         ra, t5, -429
                  add          a6, a1, sp
                  or           a2, a1, zero
                  lui          s1, 755698
                  sra          a6, t2, sp
                  sltiu        s11, s3, -382
                  bge          t4, t3, 67f
                  andi         s1, t5, -1805
                  sra          s9, a3, t5
                  sll          t6, s1, t5
                  or           ra, s0, s10
                  srai         a5, s8, 18
                  slt          t3, s3, gp
67:               bne          s5, ra, 71f
                  add          zero, a3, s8
                  andi         a5, t2, 425
                  sltiu        a2, s3, -452
71:               slt          t6, a0, s8
                  add          tp, a0, t2
                  xor          s6, s3, s5
                  sub          a5, s8, a4
                  srl          s5, a3, s6
                  and          a6, a2, a7
                  srai         a7, s4, 11
                  bltu         t6, s11, 98f
                  srai         a2, t0, 13
                  bne          a2, s0, 100f
                  sll          a2, s2, t0
                  lui          a3, 751215
                  bltu         t6, t0, 100f
                  slti         a6, t5, -1284
                  slt          t3, t2, s9
                  nop
                  blt          tp, s5, 89f
                  sltu         t6, a7, s2
89:               nop
                  sra          t1, s11, sp
                  add          gp, a4, t5
                  andi         t2, zero, 298
                  srl          s4, a1, gp
                  xor          t1, a3, t6
                  bne          a7, a3, 103f
                  slt          zero, s5, a2
                  bne          s6, s3, 113f
98:               nop
                  sltu         tp, t0, s4
100:              srli         t5, t1, 19
                  slt          s5, s8, s5
                  andi         a2, t0, 1208
103:              blt          sp, t0, 110f
                  auipc        s2, 313885
                  sub          ra, a7, s10
                  sra          a6, t2, t4
                  sltiu        a5, s3, -1289
                  xori         s9, t2, -1513
                  sltu         s11, t3, s6
110:              beq          a2, tp, 111f
111:              bgeu         tp, s9, 119f
                  sll          a6, a0, s5
113:              lui          a1, 27390
                  or           t5, s3, a7
                  ori          ra, s3, 1437
                  bgeu         a7, a4, 135f
                  blt          a2, a7, 131f
                  xor          s9, t2, tp
119:              srl          t3, ra, s11
                  blt          s8, s10, 136f
                  bge          a3, s6, 139f
                  slt          zero, s4, a2
                  nop
                  xor          s10, t3, s1
                  nop
                  slti         a5, s10, -1217
                  auipc        a0, 628549
                  srli         sp, t4, 1
                  sll          ra, a5, t4
                  sub          a0, t1, s7
131:              sltu         t2, a2, s1
                  slti         t5, s2, -1863
                  sltu         zero, s1, gp
                  xori         s2, sp, -1628
135:              xori         s1, s2, 519
136:              srl          ra, s9, sp
                  slt          a7, a6, a2
                  bne          a7, a7, 157f
139:              andi         s8, s10, -213
                  add          a6, a1, t3
                  xor          a5, t1, zero
                  sll          s3, s6, s9
                  ori          s4, s10, -1004
                  beq          zero, t4, 149f
                  auipc        t3, 942441
                  xori         t0, t6, 931
                  addi         t1, a0, 1766
                  sll          t2, s10, s1
149:              blt          s0, sp, 166f
                  srli         a6, s4, 1
                  blt          s4, t3, 162f
                  bltu         t6, a7, 159f
                  sltiu        a2, s3, 1271
                  srli         a7, s9, 17
                  xori         tp, a0, -722
                  srai         a1, s8, 7
157:              sltiu        t5, s8, 1533
                  bge          tp, s9, 159f
159:              lui          s5, 386599
                  srl          s6, s10, t5
                  addi         s5, t6, -1516
162:              ori          tp, s11, 972
                  sub          s5, a2, t4
                  bgeu         sp, a4, 184f
                  sra          s9, a2, a7
166:              sra          t1, tp, s1
                  beq          zero, t0, 186f
                  bge          tp, t6, 173f
                  bgeu         a1, a6, 187f
                  xori         tp, t0, 1123
                  add          t6, a5, s6
                  srai         t1, s4, 27
173:              xori         t6, s2, 1567
                  and          a0, ra, a3
                  slt          s8, t1, t2
                  slli         a2, gp, 21
                  sltu         zero, sp, a4
                  srl          s6, a6, ra
                  and          s3, gp, t6
                  add          a0, t3, s0
                  bgeu         t4, a1, 198f
                  beq          ra, t2, 190f
                  ori          s9, s2, -771
184:              sll          s9, ra, s7
                  ori          s2, s4, -1156
186:              sra          a5, ra, a1
187:              nop
                  or           tp, a4, s7
                  ori          a0, a6, 1144
190:              beq          tp, a1, 207f
                  lui          ra, 774933
                  bge          s11, s11, 204f
                  slt          s6, t4, s7
                  bgeu         a6, sp, 199f
                  bltu         t4, a5, 211f
                  xor          a6, s6, a3
                  bgeu         s3, t5, 199f
198:              slti         s6, t4, -837
199:              add          a1, a7, t5
                  and          gp, ra, s3
                  beq          a5, ra, 208f
                  xori         t0, s10, -1241
                  slti         s8, s6, -1518
204:              and          t5, s8, t6
                  srl          s2, a1, zero
                  xori         t6, t4, 1032
207:              andi         s11, ra, -15
208:              sub          t5, t6, a5
                  xor          s11, a6, s11
                  auipc        a0, 448531
211:              bltu         s11, s1, 215f
                  slli         s9, a1, 15
                  bge          t6, tp, 227f
                  xor          t1, s9, a5
215:              nop
                  bgeu         tp, t2, 233f
                  add          zero, a2, a4
                  sub          s9, sp, s0
                  bne          s11, zero, 235f
                  bge          t4, ra, 231f
                  xori         a3, s8, -1722
                  nop
                  srli         tp, zero, 27
                  xor          a7, zero, a4
                  ori          a6, a6, -1004
                  xori         s8, s7, -1776
227:              sltiu        t5, a4, -1563
                  blt          zero, tp, 244f
                  sll          t3, gp, ra
                  bge          s8, t6, 249f
231:              andi         t5, t5, 1736
                  add          a0, t0, zero
233:              slt          t2, gp, s9
                  ori          a2, a1, 905
235:              sltu         s10, s8, a1
                  srl          s4, s6, t5
                  or           zero, s4, s11
                  bltu         a0, a5, 242f
                  or           s5, s9, s2
                  bne          zero, t6, 258f
                  sub          s1, a6, a5
242:              bltu         a7, s7, 261f
                  sub          a1, a3, a7
244:              addi         s2, a3, -853
                  xor          s3, t4, a3
                  bgeu         t5, zero, 261f
                  beq          a7, sp, 249f
                  bltu         a6, a7, 268f
249:              or           tp, a7, tp
                  auipc        a1, 586741
                  slti         s2, a6, 1914
                  bne          a5, gp, 269f
                  sltiu        a1, s10, 1485
                  andi         gp, s10, 663
                  add          a6, ra, sp
                  sub          t6, s8, s10
                  addi         zero, gp, 1237
258:              bge          ra, t5, 263f
                  beq          s6, zero, 267f
                  srai         a3, t5, 29
261:              srl          t0, a3, a7
                  slli         a0, s6, 25
263:              sltiu        tp, s0, -1175
                  xori         t0, a2, 1841
                  slti         a1, a4, -398
                  slli         a7, a5, 14
267:              slti         t2, a5, 903
268:              beq          s1, s8, 284f
269:              sltu         s1, s9, a3
                  sub          sp, s6, a2
                  srai         a7, t5, 3
                  slli         zero, a6, 25
                  addi         s8, t5, -971
                  or           sp, t2, s5
                  and          tp, tp, a3
                  bltu         s5, s6, 283f
                  blt          a5, t3, 282f
                  sub          ra, a7, a3
                  lui          a2, 311506
                  xori         a7, t2, 563
                  sub          s3, s1, a0
282:              bne          t5, a0, 289f
283:              bge          s11, s3, 291f
284:              beq          s6, zero, 286f
                  bgeu         s8, a5, 297f
286:              bltu         a2, sp, 305f
                  addi         s4, a6, -924
                  bltu         t6, s9, 305f
289:              ori          s9, s7, -65
                  bgeu         t2, s9, 307f
291:              bne          a5, s4, 311f
                  srl          s8, s10, s5
                  bltu         t2, s11, 312f
                  srl          t6, t5, tp
                  addi         t2, s0, -627
                  slti         s3, ra, 882
297:              andi         t2, zero, 89
                  sll          s11, zero, t5
                  sltu         s10, s9, a5
                  sra          s6, s4, ra
                  xori         s5, a1, -202
                  bgeu         s1, t4, 310f
                  sub          tp, s3, a1
                  bge          a1, t5, 318f
305:              slt          s3, t0, t4
                  ori          a6, s10, 1730
307:              xori         a5, s1, 1630
                  and          a2, a1, a6
                  bne          t0, sp, 314f
310:              nop
311:              srl          zero, t4, t4
312:              slli         t0, s4, 31
                  sra          a5, s0, s5
314:              andi         s10, s6, -26
                  beq          t5, s9, 331f
                  bge          s3, gp, 332f
                  xor          t3, s4, s1
318:              addi         a6, t4, 1208
                  nop
                  slti         t1, s0, 1722
                  bne          s3, s5, 326f
                  nop
                  and          s1, a0, t2
                  bge          t1, sp, 341f
                  sub          t0, t3, a3
326:              bne          t0, s9, 341f
                  beq          s3, a0, 346f
                  bne          t4, t0, 332f
                  sra          s8, a2, t5
                  sltiu        s11, s10, 1978
331:              sub          gp, t3, t5
332:              nop
                  xori         s4, zero, -108
                  srl          s11, a1, a2
                  lui          tp, 972590
                  beq          t1, a3, 347f
                  ori          a7, a5, 1631
                  slli         s10, s2, 21
                  beq          gp, t0, 356f
                  ori          ra, a4, 256
341:              beq          t0, tp, 359f
                  lui          t0, 405720
                  sra          s3, t2, sp
                  sll          a2, a0, a4
                  slli         s4, s8, 9
346:              xor          a2, ra, s6
347:              add          s5, sp, a4
                  srai         t5, s5, 15
                  blt          s6, t0, 369f
                  slti         t5, t1, 1368
                  lui          s8, 127309
                  auipc        tp, 892661
                  xor          zero, s9, zero
                  auipc        t3, 1011079
                  srl          t0, t1, a0
356:              xor          t6, a4, ra
                  and          t0, t6, s6
                  lui          ra, 116383
359:              sub          ra, t5, a2
                  slti         ra, ra, 571
                  sra          t6, s1, a3
                  sll          t1, s4, gp
                  slti         a5, a1, 786
                  and          a0, s6, sp
                  xor          s4, s1, zero
                  srli         t6, s9, 14
                  or           s2, s8, s6
                  sra          a1, tp, gp
369:              addi         a2, sp, 450
                  addi         s4, s10, -892
                  xori         a5, s6, 854
                  srli         s1, t4, 16
                  srl          s5, s9, a6
                  and          s9, a7, s0
                  xor          zero, s2, tp
                  ori          a7, a2, -326
                  auipc        s5, 408111
                  slli         t0, a3, 30
                  beq          t2, a2, 380f
380:              ori          s8, a3, -729
                  add          t5, s5, a7
                  addi         a5, t6, -1971
                  xori         s3, a5, 1360
                  nop
                  or           zero, zero, a2
                  andi         s2, sp, 490
                  sra          s1, s11, a4
                  sra          a2, s6, zero
                  slt          a2, t2, s5
                  and          s3, ra, gp
                  bltu         a7, t6, 395f
                  beq          t3, s10, 410f
                  nop
                  srai         s6, a3, 3
395:              andi         sp, t3, 807
                  add          a2, s4, t5
                  beq          a0, t2, 399f
                  sub          zero, sp, a5
399:              ori          tp, s0, 1051
                  slti         s1, a1, -892
                  bne          zero, s10, 416f
                  addi         s8, s10, 1309
                  sra          s11, t4, tp
                  beq          a7, s2, 412f
                  andi         ra, a1, 1138
                  sra          t2, a0, a7
                  blt          s2, s5, 427f
                  auipc        s3, 484095
                  xori         ra, sp, 573
410:              sra          s6, s3, s3
                  ori          s9, a5, 1664
412:              lui          a7, 273710
                  srl          a2, s3, zero
                  ori          a5, s5, -794
                  or           a6, s8, t2
416:              nop
                  slti         s10, tp, 307
                  bge          tp, a7, 429f
                  or           s6, s4, s7
                  and          sp, s0, s0
                  sll          a3, t2, a6
                  bltu         s1, s3, 438f
                  nop
                  ori          s6, t1, -1574
                  beq          t6, s5, 432f
                  bge          a5, t6, 445f
427:              bge          a1, sp, 431f
                  slt          s3, s0, s7
429:              lui          s5, 639503
                  xor          s9, s5, a2
431:              bltu         s7, s8, 448f
432:              slli         tp, a5, 29
                  slli         s8, a7, 28
                  nop
                  andi         sp, t2, 604
                  sltiu        zero, gp, 1379
                  blt          s8, a3, 454f
438:              beq          s1, t3, 456f
                  sltu         a3, tp, t3
                  xor          t1, s2, s8
                  add          a5, a4, a2
                  bge          t6, t4, 449f
                  srl          s6, sp, t1
                  sra          t2, tp, a4
445:              nop
                  or           t5, s1, s9
                  and          t1, s4, s2
448:              and          t5, a3, a3
449:              bltu         a5, ra, 465f
                  slli         t0, gp, 23
                  xor          t0, s2, a5
                  add          s11, a5, zero
                  xori         s2, s3, -454
454:              srl          t6, s11, t4
                  andi         sp, a3, -801
456:              and          s3, s6, a4
                  bne          s8, s5, 476f
                  sra          t3, a6, s10
                  xori         t0, s2, 738
                  sltiu        zero, a3, -1715
                  and          t1, ra, gp
                  beq          s2, t3, 476f
                  bgeu         s4, a6, 471f
                  slti         a0, s11, 468
465:              slti         t0, a0, 467
                  slti         s9, s10, 790
                  addi         s8, ra, -1590
                  xori         s5, t5, -233
                  xori         a0, t5, -1046
                  bltu         t6, s4, 475f
471:              srai         t0, t0, 23
                  slti         a6, s3, 1171
                  xori         s1, t0, 684
                  slt          a0, a4, a4
475:              nop
476:              sltiu        a0, s0, -142
                  xor          a5, gp, a1
                  nop
                  sltiu        s9, a6, 1220
                  nop
                  auipc        s8, 83607
                  sltiu        s5, t3, 8
                  sltiu        zero, a6, 991
                  srai         gp, s3, 27
                  sll          t0, a5, s9
                  lui          a5, 543588
                  srli         s6, s0, 26
                  bge          gp, s7, 505f
                  beq          s3, a5, 493f
                  bne          t4, t3, 508f
                  slt          a0, t5, s8
                  ori          sp, s4, 818
493:              sll          a3, t3, s1
                  andi         s6, s7, 438
                  lui          zero, 343298
                  sra          a2, sp, s1
                  bne          s4, gp, 499f
                  bge          s3, tp, 503f
499:              sltiu        gp, t5, 788
                  and          s5, a0, t2
                  add          a2, t6, s2
                  srl          a5, zero, t3
503:              addi         a3, a5, 776
                  beq          s6, t3, 523f
505:              and          a3, s9, t4
                  slti         s7, a1, -1958
                  or           t3, t6, a2
508:              sub          t2, t1, t0
                  or           s9, a0, sp
                  addi         gp, ra, -1071
                  bltu         sp, a1, 531f
                  xor          t5, a1, a1
                  addi         a2, ra, -406
                  blt          s7, ra, 530f
                  blt          a3, s2, 516f
516:              srli         tp, t0, 23
                  add          s4, s6, a4
                  lui          a5, 895991
                  nop
                  or           a1, t4, t5
                  bltu         s9, a6, 538f
                  bne          t0, a2, 534f
523:              bgeu         t6, t1, 525f
                  slt          t3, t3, t2
525:              sll          a0, s7, s0
                  or           s5, tp, sp
                  slt          t3, a2, t3
                  bltu         sp, s0, 533f
                  beq          s10, gp, 546f
530:              sra          s10, a1, s7
531:              beq          a2, t2, 550f
                  sltu         s7, a0, tp
533:              srl          t6, t4, gp
534:              srli         a0, s1, 7
                  slti         a3, s1, -762
                  sll          s3, a1, sp
                  srli         s2, t3, 28
538:              lui          t1, 1018822
                  addi         t1, s3, -198
                  auipc        s4, 708671
                  nop
                  beq          s8, a0, 550f
                  addi         a6, gp, -1939
                  nop
                  addi         ra, a0, 745
546:              slti         a1, s3, 1528
                  slli         s7, s2, 18
                  lui          a0, 309355
                  srai         s6, s0, 11
550:              or           s11, s8, ra
                  sub          a1, s5, t4
                  beq          zero, s5, 569f
                  add          t6, a2, t3
                  sltiu        ra, t1, 1909
                  bne          s8, t3, 571f
                  slti         a5, s9, -181
                  srl          tp, zero, t5
                  sra          t6, t0, s11
                  nop
                  add          a1, s2, s7
                  xori         a7, s10, -2021
                  sltu         s7, a1, t6
                  srai         a7, s7, 19
                  bgeu         s1, s2, 572f
                  andi         s3, a7, 493
                  bgeu         t6, s1, 584f
                  ori          s2, s2, 1481
                  and          gp, t1, t6
569:              sub          zero, s6, gp
                  slli         s9, ra, 10
571:              blt          t2, t4, 591f
572:              or           gp, s1, t2
                  auipc        s6, 581556
                  ori          s3, t6, -708
                  srl          ra, a7, s3
                  nop
                  bgeu         t2, s6, 597f
                  xori         tp, t0, 220
                  sll          s8, t5, ra
                  blt          sp, s5, 581f
581:              sll          a7, a7, s2
                  bltu         gp, t1, 584f
                  andi         t3, s2, 1615
584:              xori         t1, a0, 39
                  ori          s6, s3, -1200
                  auipc        t6, 750568
                  xori         gp, s5, -778
                  sll          t0, s2, t1
                  slti         s9, t2, -607
                  addi         s1, s9, 949
591:              slt          sp, a0, s8
                  sub          gp, t0, a0
                  srl          t6, t2, s8
                  bltu         s11, zero, 613f
                  or           s6, s8, a3
                  slli         t2, t3, 14
597:              and          s11, s5, s11
                  slti         a2, s4, -821
                  sll          a2, zero, t6
                  srai         s4, t4, 1
                  bne          s7, s5, 608f
                  andi         a6, t4, 1384
                  slli         s4, a6, 20
                  sltu         s9, gp, t6
                  bge          t6, a1, 610f
                  slt          s2, s4, a3
                  sltu         s2, s11, t2
608:              xor          s2, a7, t1
                  lui          t1, 730132
610:              bge          a5, t0, 627f
                  sll          ra, t1, s8
                  addi         s9, t0, -787
613:              srai         s3, a2, 10
                  andi         t1, a0, 181
                  addi         sp, a6, 1850
                  srl          s11, a3, zero
                  slti         t2, a3, 360
                  bne          a0, t2, 634f
                  sltiu        t6, t4, -13
                  auipc        s5, 808872
                  bge          t6, s3, 628f
                  andi         s4, t5, 361
                  ori          t3, s4, -1143
                  slt          s5, s3, s5
                  sll          s10, s2, a1
                  sll          s2, s11, a1
627:              sltu         tp, a3, ra
628:              and          t3, s2, tp
                  add          sp, s11, t1
                  sll          a5, a2, a5
                  bltu         s7, a0, 648f
                  bne          a7, s10, 648f
                  sltu         t6, t1, a4
634:              sltu         t1, zero, t5
                  xor          t1, tp, s3
                  bltu         ra, sp, 654f
                  srli         s11, sp, 16
                  srai         s2, t4, 17
                  ori          a6, gp, -1545
                  add          s4, s7, t1
                  sll          s1, ra, t4
                  srl          s1, t4, a6
                  bltu         a3, a1, 648f
                  or           a5, s0, t1
                  sltiu        ra, a7, 1601
                  bgeu         s7, a6, 650f
                  or           s11, s5, sp
648:              sltiu        s11, s9, 1586
                  lui          t1, 67944
650:              slti         sp, a2, 890
                  bgeu         a1, tp, 653f
                  sub          zero, zero, a2
653:              sltu         s7, a7, s5
654:              auipc        a0, 624774
                  bgeu         s4, s1, 674f
                  beq          tp, t5, 671f
                  slli         t0, s11, 23
                  ori          s2, t1, -995
                  or           s11, a2, zero
                  nop
                  srli         s4, s0, 21
                  blt          s9, t1, 666f
                  srl          s11, s4, t0
                  lui          a6, 14752
                  slli         s7, s5, 5
666:              addi         t6, t2, -1651
                  nop
                  blt          a6, s5, 679f
                  or           t5, ra, a0
                  bge          s10, a5, 682f
671:              xori         s10, a2, -1869
                  auipc        s8, 853829
                  addi         a5, ra, 1540
674:              slti         t5, a4, 986
                  srai         s8, gp, 5
                  and          t0, a2, t4
                  lui          zero, 851918
                  andi         zero, ra, 1880
679:              xori         a5, s9, 1399
                  sub          t6, tp, gp
                  and          s4, s7, t5
682:              slti         a2, t2, -2019
                  slt          s1, s0, s3
                  sltiu        s8, s8, 1202
                  blt          a6, s1, 690f
                  addi         s7, a0, -1378
                  bne          a0, tp, 701f
                  beq          s4, s11, 692f
                  slli         a5, a5, 1
690:              sltu         tp, t6, a4
                  sltiu        a3, t4, -486
692:              sub          a0, tp, s11
                  srai         s9, t5, 9
                  bgeu         t3, s11, 710f
                  addi         a5, s9, -1258
                  bltu         s6, s8, 712f
                  bgeu         s9, t2, 716f
                  srl          s5, a5, a1
                  bge          t2, s1, 706f
                  srai         s11, t1, 28
701:              and          s11, s11, a0
                  sub          s8, s11, s2
                  slli         s8, t4, 13
                  sltu         t1, s5, s7
                  sltu         zero, a4, a1
706:              and          tp, t5, s3
                  blt          a3, t5, 724f
                  xor          a0, s4, tp
                  add          s9, t6, zero
710:              sub          s1, t5, sp
                  addi         s8, gp, -881
712:              ori          t2, s3, -461
                  and          gp, a7, a1
                  slti         sp, t1, -1169
                  slli         s4, a7, 1
716:              ori          a5, s1, 1380
                  blt          t5, a6, 731f
                  sll          a5, t2, sp
                  nop
                  sub          a3, s11, s0
                  srai         a7, a6, 2
                  beq          t0, a5, 724f
                  slt          s3, s0, s3
724:              or           a7, a5, a2
                  ori          a0, tp, -1728
                  sltu         s2, a3, ra
                  srai         s3, zero, 18
                  nop
                  bge          s4, s3, 730f
730:              sltu         gp, a3, t2
731:              bne          gp, s4, 741f
                  bltu         gp, s1, 737f
                  bge          zero, s11, 741f
                  sll          t1, a7, t4
                  blt          a4, ra, 741f
                  ori          s3, s11, -2011
737:              slti         s8, t4, 673
                  slti         s10, tp, 1570
                  xori         a2, s11, -1473
                  addi         s1, a6, 134
741:              or           sp, sp, s11
                  sub          s1, s7, s3
                  add          t6, a7, t5
                  xori         t2, s7, -1086
                  lw           ra, 4(s0)
                  addi         s0, s0, 16
                  auipc        s6, 141876
                  and          t0, s2, a2
                  srl          zero, s3, t0
941:              addi x4, x1, 0
941:              jalr x4, x4, 0
sub_9:            auipc        s9, 634153
                  beq          s4, s5, sub_9_stack_p
sub_9_stack_p:    addi         s0, s0, -16
                  nop
                  sw           ra, 4(s0)
                  lui          gp, 536608
                  slti         t2, s4, -534
                  slli         s7, tp, 3
                  addi         t0, s7, 1295
                  addi         a2, zero, 1629
                  sub          s10, t2, s1
                  sll          s3, a0, s10
                  xor          gp, a2, s0
                  bltu         t6, t2, 17f
                  or           a3, s8, s7
                  xor          a6, a2, s0
                  slli         s2, a3, 0
                  andi         t6, t5, -134
                  srli         a6, s9, 13
                  srai         gp, a2, 19
                  slt          s3, gp, t5
                  srl          a5, s0, t6
                  sra          a5, t1, s0
                  srl          tp, s0, s6
17:               addi         s4, zero, -950
                  or           a7, s7, tp
                  lw           ra, 4(s0)
                  addi         s0, s0, 16
                  nop
                  slt          s4, s5, s7
                  sltiu        t3, s11, -1972
                  and          a2, a7, tp
                  or           a7, a2, gp
33:               addi x19, x1, 1
33:               jalr x19, x19, 0
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
mmode_intr_vector_1:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x14, test_done
                  jalr x0, x14, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x29, x8, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x15, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x15, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x15, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x15, x12, ecall_handler
                  li x12, 0x1
                  beq x15, x12, instr_fault_handler
                  li x12, 0x5
                  beq x15, x12, load_fault_handler
                  li x12, 0x7
                  beq x15, x12, store_fault_handler
                  li x12, 0xc
                  beq x15, x12, pt_fault_handler
                  li x12, 0xd
                  beq x15, x12, pt_fault_handler
                  li x12, 0xf
                  beq x15, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x8, x29, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
