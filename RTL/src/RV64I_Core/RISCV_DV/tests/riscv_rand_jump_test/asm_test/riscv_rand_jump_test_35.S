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
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x19, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  mret
init:             
                  li x0, 0xc40dbccf
                  li x1, 0x80000000
                  li x2, 0xf7ef027
                  li x3, 0xfeefc64a
                  li x4, 0x80000000
                  li x5, 0xf76a59b7
                  li x6, 0x1
                  li x7, 0x80000000
                  li x8, 0xf3f873d0
                  li x9, 0x80000000
                  li x10, 0x9
                  li x11, 0xa
                  li x12, 0x6
                  li x13, 0xfd31c6c9
                  li x14, 0x9a950c0c
                  li x15, 0x8
                  li x16, 0x80000000
                  li x17, 0x2
                  li x18, 0x0
                  li x20, 0x0
                  li x21, 0xfbeff7d2
                  li x22, 0xf4c16942
                  li x23, 0x0
                  li x24, 0xfaca8f60
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xf1370ab0
                  li x28, 0xab1f19f3
                  li x29, 0x2
                  li x31, 0x7
                  la x30, user_stack_end
main:             la           a3, region_1+1308 #start riscv_load_store_rand_instr_stream_2
                  andi         s7, t1, 614
                  sb           a2, 58(a3)
                  slt          t0, ra, zero
                  sb           a4, -138(a3)
                  sltu         zero, a5, t4
                  sh           s11, -146(a3)
                  lb           s1, -51(a3)
                  lbu          s1, 77(a3)
                  sb           t0, -240(a3)
                  lbu          s6, 125(a3)
                  lbu          tp, 153(a3)
                  or           t4, ra, s3
                  sw           s7, 216(a3)
                  lw           s2, 76(a3)
                  andi         zero, t6, -773
                  sb           t4, 193(a3)
                  ori          a0, s4, -743
                  sb           a0, -215(a3)
                  lbu          s6, 189(a3)
                  lbu          tp, -256(a3)
                  srli         s0, s1, 22
                  lbu          s1, 56(a3)
                  sb           s1, -158(a3)
                  slti         a1, t6, 411
                  lb           a5, 34(a3)
                  lw           t0, -220(a3)
                  lbu          a4, 217(a3)
                  xori         s1, t1, 839
                  lh           a7, -164(a3)
                  add          t2, s5, a5
                  lh           t1, -158(a3)
                  lh           s0, -50(a3)
                  lbu          a7, 166(a3)
                  lb           a1, 26(a3)
                  lb           t2, 103(a3)
                  lb           s4, 216(a3)
                  sh           s4, 30(a3) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+566 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, 47(a3)
                  sh           s1, -14(a3)
                  or           s11, t4, s0
                  or           tp, s6, s7
                  slli         t0, ra, 11
                  and          zero, a0, s7
                  ori          s10, a6, 45
                  lui          a5, 629206
                  and          zero, s2, t2
                  lb           a6, 14(a3)
                  sb           sp, 25(a3)
                  ori          t3, s5, 978
                  lbu          gp, -57(a3)
                  lbu          s11, -46(a3)
                  andi         t3, s1, -1680
                  addi         s10, t4, 1338
                  sb           s2, 11(a3)
                  sb           a4, -29(a3)
                  lhu          a2, 28(a3)
                  xori         a2, a2, 1502
                  and          a7, t1, t1
                  xor          s6, a0, s8
                  addi         t0, s7, -1576
                  xor          s8, s11, ra
                  or           t0, sp, t6
                  lbu          s8, -11(a3)
                  lbu          t6, 40(a3)
                  sb           a6, 44(a3)
                  nop
                  add          s7, t0, a4
                  add          t0, t1, a4
                  sltiu        s0, s9, -1809
                  and          t1, s7, s0
                  addi         a0, zero, -1425
                  sb           t3, 29(a3)
                  srl          t4, s8, t0
                  lb           a4, -43(a3)
                  and          s0, s5, s9
                  or           s11, s6, a3
                  addi         t2, tp, 75
                  lbu          s0, -46(a3)
                  sb           s10, 23(a3)
                  sb           s4, -35(a3)
                  addi         t0, t5, -1699
                  lh           t4, 40(a3)
                  slti         gp, s9, -1623
                  lh           t1, -60(a3) #end riscv_load_store_rand_instr_stream_0
                  nop
                  bltu         s9, s1, 13f
                  beq          s9, s2, 17f
                  auipc        gp, 300675
                  auipc        s4, 217005
                  sltu         s5, t3, a4
                  blt          sp, s8, 16f
                  bne          t4, s10, 25f
                  andi         a7, s9, -1785
                  sltu         a2, a1, t1
                  bne          s3, a0, 14f
                  slti         t3, s5, 1902
                  ori          tp, t0, 1687
13:               ori          s10, sp, 462
14:               xori         a0, gp, -851
                  srl          a7, t2, t0
16:               or           s7, a3, t4
17:               slt          zero, s8, s9
                  ori          s6, s11, -231
                  sltiu        a3, a2, -1974
                  srai         t4, a7, 25
                  srai         s6, t0, 13
                  sub          a5, t6, a1
                  addi         s6, s8, 1168
                  addi         gp, s1, -1195
25:               beq          ra, a3, 26f
26:               xor          a2, s11, gp
                  nop
                  andi         t3, t4, -177
                  slti         s11, s10, -1489
                  bltu         t6, s1, 44f
                  add          t2, s6, s11
                  and          a1, s10, a0
                  srai         a1, t5, 27
                  lui          s7, 87277
                  bge          s5, s9, 43f
                  addi         s11, a7, -1421
                  slli         a7, s5, 7
                  ori          zero, s2, 460
                  slli         s11, t3, 5
                  bge          a0, a1, 57f
                  srl          a1, t2, s3
                  slti         a1, t5, -1692
43:               bltu         a0, s1, 46f
44:               add          t2, a1, a3
                  slti         a4, t0, -1191
46:               and          a4, ra, a2
                  xor          s8, t0, a4
                  blt          a0, a7, 64f
                  addi         t2, s6, 358
                  blt          sp, a4, 61f
                  andi         s7, a7, 1949
                  blt          a7, t3, 68f
                  slti         s11, a3, 1305
                  lui          s7, 835013
                  xori         s5, sp, -1681
                  bge          s4, a1, 76f
57:               srli         s5, s9, 1
                  sltu         s2, a0, a3
                  auipc        a1, 724785
                  add          a7, s1, s5
61:               xor          t4, s6, t3
                  sltiu        a2, s3, -1184
                  bne          s1, s11, 66f
64:               xori         s0, s6, 1226
                  srli         t3, t4, 13
66:               bltu         t4, s8, 72f
                  beq          a1, t1, 80f
68:               srli         a4, a0, 18
                  sra          s7, a5, ra
                  nop
                  ori          t4, s3, 612
72:               lui          a3, 368424
                  bgeu         sp, a4, 77f
                  sub          s1, zero, t2
                  bgeu         a2, s9, 88f
76:               ori          s10, t0, -251
77:               sll          zero, s6, s11
                  slli         s10, s6, 24
                  addi         t2, t1, 1043
80:               sll          s5, tp, a3
                  sll          s9, t2, s11
                  auipc        t3, 1027503
                  bge          s3, a4, 86f
                  srai         a6, s5, 19
                  sltiu        a7, gp, 224
86:               and          a7, t5, t3
                  blt          s4, s4, 93f
88:               sub          t4, a0, s7
                  xori         a2, s3, 1662
                  sll          t6, t5, a3
                  nop
                  slli         s9, t2, 0
93:               slli         a1, t5, 17
                  sra          tp, t3, t2
                  sub          a2, a7, t0
                  xor          zero, t0, s2
                  srl          ra, s8, a2
                  and          s6, gp, sp
                  beq          s8, s6, 102f
                  sll          s6, a3, s9
                  bgeu         t2, s9, 106f
102:              xori         ra, a3, -1630
                  nop
                  nop
                  sll          t0, t3, s7
106:              xori         a4, t3, -1591
                  sra          zero, sp, zero
                  ori          a1, s11, 202
                  sub          t6, s11, s10
                  sltiu        a7, a5, 1183
                  blt          s2, s0, 112f
112:              lui          t1, 496160
                  slli         s9, a7, 9
                  bgeu         a1, a0, 126f
                  beq          a1, t3, 134f
                  srl          a0, gp, a3
                  sra          t2, a0, a0
                  lui          t6, 562211
                  xori         s9, t6, 1481
                  sra          s7, s2, s4
                  ori          t2, s8, 1185
                  ori          a5, gp, -579
                  bltu         t1, a0, 136f
                  sltiu        a7, s10, -460
                  la           s4, sub_1
                  slti         s2, a7, 1189
                  add          s6, t1, a6
                  xor          a7, s2, s4
                  srl          a5, s0, s8
                  addi         s4, s4, 803
                  add          t1, s1, tp
main_j1:          jalr         tp, s4, -802 #jump main -> sub_1
                  xor          a2, s2, ra
126:              bgeu         a3, sp, 135f
                  slli         s10, s0, 11
                  blt          a6, s9, 136f
                  bgeu         s2, ra, 132f
                  slti         s1, s2, 823
                  srl          gp, s4, t5
132:              blt          t4, s6, 137f
                  slti         a0, t0, -1468
134:              sra          a6, s2, s7
135:              sub          s7, s11, s8
136:              sltiu        a5, ra, -1818
137:              bge          a4, t3, 141f
                  andi         tp, s6, -651
                  srl          s0, t1, s1
                  sll          t1, a0, s7
141:              slt          s10, tp, t3
                  lui          a0, 244711
                  srli         a5, t4, 16
                  bge          s5, t5, 153f
                  blt          a2, s5, 148f
                  sll          s5, s3, a4
                  sltu         s9, t2, s2
148:              beq          a7, s2, 149f
149:              addi         s1, t6, 98
                  slt          gp, s8, a7
                  bne          s7, s4, 154f
                  srli         t6, sp, 30
153:              or           t0, s0, s2
154:              xor          zero, t3, t4
                  srli         gp, s0, 9
                  auipc        s2, 625536
                  bltu         s7, t3, 175f
                  nop
                  andi         s0, s3, -1429
                  slli         s4, s3, 21
                  and          tp, s11, a4
                  bltu         a1, t2, 174f
                  ori          a0, sp, 1060
                  or           ra, t1, a2
                  slti         t6, a4, 40
                  auipc        s10, 328084
                  ori          t2, a6, 55
                  auipc        s1, 816554
                  add          a1, s2, t5
                  addi         t1, s9, 673
                  and          s7, s10, s3
                  and          a7, a6, a6
                  sub          a0, s8, gp
174:              and          s2, a7, gp
175:              srai         a3, t1, 16
                  srli         t1, s5, 15
                  sub          s4, ra, s2
                  or           a7, s6, s11
                  bge          a4, s5, 182f
                  bltu         s7, a7, 199f
                  ori          t3, s4, 2037
182:              andi         s9, a3, -1441
                  addi         a0, a5, 307
                  addi         t2, t5, -1394
                  beq          a7, s8, 205f
                  add          zero, a0, s2
                  lui          s4, 326827
                  sll          a2, s1, s7
                  auipc        t0, 657793
                  xori         a1, t5, -468
                  bne          s10, s3, 194f
                  slti         s8, s3, 951
                  srai         a5, s5, 20
194:              add          s2, gp, t4
                  or           s2, t0, s9
                  and          t6, s8, s2
                  or           a4, s1, s6
                  andi         t4, zero, -1928
199:              sra          s5, a6, t6
                  or           s6, s7, s6
                  sltiu        gp, s0, -1288
                  nop
                  auipc        s4, 995482
                  add          t6, t5, t2
205:              auipc        s8, 257534
                  xor          s7, a4, a3
                  beq          a7, t6, 211f
                  slti         t1, s1, -1741
                  sub          a3, a6, ra
                  auipc        s9, 163505
211:              sra          t2, a7, s9
                  beq          zero, s8, 215f
                  xor          tp, s5, tp
                  and          a4, a0, s7
215:              srai         t6, s10, 6
                  nop
                  bltu         s9, s8, 233f
                  add          tp, sp, a4
                  slt          a5, s4, s3
                  sll          s1, a7, a2
                  addi         t3, ra, -1098
                  auipc        gp, 678701
                  sra          s10, s6, t4
                  bge          a4, gp, 236f
                  bltu         tp, gp, 240f
                  sub          t0, gp, s11
                  xori         a7, t2, -1453
                  sra          s11, s0, gp
                  xori         t3, zero, -1002
                  addi         tp, s9, 515
                  addi         tp, t3, 356
                  slti         t0, s2, 842
233:              bne          s3, t3, 241f
                  xor          s8, s9, s9
                  bge          s10, a2, 246f
236:              or           s6, a0, s6
                  bne          s5, t5, 254f
                  slti         a7, gp, 1170
                  srai         s1, s7, 12
240:              beq          s3, a7, 253f
241:              blt          s6, t5, 247f
                  lui          ra, 270170
                  xori         a6, s2, 288
                  bge          s3, a4, 257f
                  addi         t6, s0, -922
246:              add          a2, a5, t3
247:              sub          s9, s1, s10
                  nop
                  srli         t2, t5, 26
                  srli         s1, s0, 22
                  srli         s6, t6, 27
                  add          s5, t2, ra
253:              nop
254:              beq          a7, t0, 255f
255:              ori          a7, a4, -160
                  add          s7, t4, t0
257:              slli         s0, t4, 7
                  andi         s8, sp, 825
                  sub          zero, a7, t5
                  xori         a4, s9, -1469
                  srl          s11, s5, s4
                  auipc        t4, 4369
                  beq          s0, s6, 269f
                  xor          gp, tp, s4
                  nop
                  beq          s1, t5, 280f
                  srli         t1, a0, 30
                  sra          s6, s6, s3
269:              and          s9, s4, a0
                  or           t0, a1, a6
                  beq          t2, s9, 284f
                  slti         s2, t0, -7
                  add          s6, s10, s2
                  sltiu        t3, s6, -668
                  or           s6, a1, s11
                  ori          a4, s0, -956
                  sra          t4, t0, a6
                  beq          a2, s4, 288f
                  sll          s8, t3, tp
280:              blt          s3, t1, 288f
                  bge          t1, zero, 297f
                  slli         a6, a4, 15
                  or           a4, ra, a4
284:              srli         a5, t4, 25
                  sub          s4, t3, s2
                  auipc        a1, 602257
                  and          s2, s6, a1
288:              sltu         s10, a2, gp
                  add          ra, a7, a4
                  or           ra, t3, gp
                  slli         a0, s2, 2
                  blt          gp, a0, 305f
                  sra          t3, s8, gp
                  or           s6, a7, a5
                  srl          s6, zero, a0
                  add          a6, a4, s8
297:              slli         s7, a5, 29
                  add          a6, s7, t6
                  sra          s2, a2, t1
                  sltu         s10, t4, t0
                  or           t0, t4, a2
                  srli         s4, s3, 19
                  add          a1, sp, t5
                  bge          zero, s11, 305f
305:              add          s11, s1, a2
                  la           a5, region_0+1706 #start riscv_load_store_rand_instr_stream_1
                  slt          t2, a5, s10
                  lb           s0, 53(a5)
                  sll          a0, tp, s8
                  slti         zero, ra, -1454
                  lb           s2, -32(a5)
                  lb           s9, 24(a5)
                  lbu          s6, -14(a5)
                  sll          t2, s2, a2
                  xor          t1, t1, a3
                  sra          tp, s11, t4
                  srli         s1, s4, 31
                  sb           a4, 16(a5)
                  sra          a6, s3, s0
                  lb           s5, -11(a5)
                  sb           s8, 24(a5)
                  lhu          s6, 44(a5)
                  sll          t0, gp, a3
                  lbu          a2, -28(a5)
                  lbu          a4, -17(a5)
                  or           s4, t2, t3
                  lb           t0, -63(a5)
                  srai         s5, s0, 7
                  lbu          s6, -10(a5)
                  xor          gp, s1, s9
                  sll          s8, sp, s3
                  srl          t3, s6, s10
                  lbu          t0, -17(a5)
                  and          a7, s3, s3
                  slti         ra, t6, 1172
                  lbu          a2, -8(a5)
                  lbu          a0, 15(a5)
                  lbu          a4, 17(a5)
                  sb           sp, 5(a5)
                  sub          s5, sp, zero
                  lh           s0, 44(a5)
                  lbu          s2, -11(a5)
                  and          gp, s8, ra
                  lui          zero, 90059
                  sb           s3, -53(a5)
                  srl          a7, s11, s5
                  srl          ra, s10, s10
                  lbu          t4, -57(a5)
                  lbu          a4, -51(a5)
                  andi         s6, s4, -824
                  lbu          t6, -40(a5)
                  nop
                  sll          a2, a6, a7
                  lbu          s0, 57(a5)
                  lb           a1, 50(a5)
                  xor          s11, a2, t2
                  sb           s10, 33(a5) #end riscv_load_store_rand_instr_stream_1
                  nop
                  or           t0, t6, a7
                  andi         s5, s11, -440
                  bne          a5, s2, 317f
                  beq          s2, s9, 316f
                  xor          ra, a2, s4
                  ori          a2, a6, -668
                  blt          a5, s10, 316f
                  or           s4, a3, s0
                  srl          s6, t4, ra
316:              ori          tp, t3, 1769
317:              slli         s10, s9, 13
                  andi         s11, a6, 1179
                  slti         ra, ra, -470
                  srl          a0, s11, s5
                  addi         a6, t2, -90
                  addi         t2, s4, 486
                  bltu         zero, t4, 335f
                  nop
                  and          t2, a5, t3
                  slli         t4, a7, 13
                  srli         s7, a4, 2
                  slti         tp, t1, -1962
                  lui          a7, 608679
                  beq          a3, t0, 334f
                  lui          s1, 968131
                  add          s5, s3, a4
                  slli         zero, s0, 11
334:              blt          s0, s5, 354f
335:              sll          a3, t5, a3
                  andi         s10, t1, 1277
                  auipc        s5, 78594
                  sra          t1, t4, t6
                  sltu         ra, t0, a4
                  slti         s11, a2, 160
                  srli         t3, a0, 18
                  blt          a4, s5, 350f
                  ori          a3, t0, 1191
                  sltiu        ra, zero, 846
                  bge          a6, s3, 348f
                  sub          a6, s6, s1
                  bgeu         a5, t4, 348f
348:              bgeu         sp, s11, 357f
                  blt          ra, a0, 352f
350:              auipc        a0, 882818
                  sltu         a3, a5, t0
352:              sll          t6, t1, t3
                  ori          a7, a1, -1400
354:              bge          s7, zero, 359f
                  lui          t6, 569923
                  srai         s0, t4, 24
357:              ori          s10, zero, -611
                  srli         t1, a7, 3
359:              andi         s8, a1, 564
                  sltiu        a0, s1, 1695
                  slti         s1, s3, 535
                  slt          s2, s6, s8
                  auipc        s11, 365928
                  blt          t3, zero, 374f
                  sub          tp, t1, t0
                  ori          ra, s7, 48
                  nop
                  bltu         a1, a7, 381f
                  bne          s1, sp, 385f
                  beq          a3, t2, 373f
                  lui          a5, 996305
                  slti         tp, s5, -1569
373:              srai         a0, a3, 12
374:              sub          s6, t5, s4
                  srl          gp, t0, s9
                  slli         a5, t3, 24
                  or           s10, s6, sp
                  bne          s7, a5, 388f
                  bne          s4, s2, 388f
                  bne          zero, a7, 388f
381:              andi         s4, a0, 1302
                  beq          t1, s8, 388f
                  bgeu         t4, s3, 387f
                  bltu         a1, a3, 388f
385:              slt          a4, a4, s8
                  sub          s1, ra, t2
387:              beq          a5, t1, 388f
388:              or           a6, a3, t0
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         t5, t5, -28
                  srai         s4, a4, 8
                  sw           tp, 4(t5)
                  addi         s6, s11, -780
                  slli         s7, a4, 1
                  andi         t6, zero, -1264
                  slli         s5, s5, 13
                  ori          a4, tp, 251
                  la           tp, region_0+1147 #start riscv_load_store_rand_instr_stream_0
                  slli         a3, s3, 9
                  slt          s6, t4, gp
                  add          ra, a4, ra
                  lbu          s6, 376(tp)
                  sh           t4, 387(tp)
                  slti         ra, a0, -289
                  lhu          a7, -1035(tp)
                  sb           t2, 749(tp)
                  lh           ra, 805(tp)
                  lb           s1, 502(tp)
                  lui          a1, 221911
                  lb           s4, -814(tp)
                  sb           a5, -689(tp)
                  lw           s8, 785(tp)
                  sw           gp, 485(tp)
                  lbu          a2, -64(tp)
                  sb           a4, -393(tp)
                  nop
                  sb           t1, 456(tp)
                  sltu         a3, t5, zero
                  sh           t5, 685(tp)
                  lb           s8, -663(tp)
                  sb           t4, 606(tp)
                  srai         s0, a3, 29
                  nop
                  lbu          a4, 326(tp)
                  and          a6, t2, s7
                  lb           a0, -661(tp)
                  auipc        a6, 810351
                  sb           a0, 500(tp)
                  xori         s1, s8, 63
                  auipc        t0, 1026684
                  lbu          s11, 422(tp)
                  lhu          s1, 727(tp)
                  lh           s10, -247(tp) #end riscv_load_store_rand_instr_stream_0
                  and          s1, s6, t5
                  bgeu         a7, t6, 10f
                  xor          s8, s2, t1
                  sra          a3, t0, a2
                  xor          s4, s5, t4
                  bltu         s3, a0, 9f
                  blt          s5, a4, 11f
                  bge          a7, a7, 17f
                  bltu         s7, t3, 14f
9:                addi         s6, zero, -1281
10:               or           zero, s9, a7
11:               nop
                  srai         s0, s4, 26
                  sub          s2, s1, ra
14:               auipc        a6, 140546
                  xor          ra, a4, s3
                  srli         t3, tp, 7
17:               slti         gp, sp, 1503
                  sra          s9, s1, sp
                  bge          s7, a1, 39f
                  bgeu         a6, a3, 30f
                  blt          s8, a4, 29f
                  xori         t2, a0, 1632
                  bgeu         a6, t4, 31f
                  andi         a0, t6, -1381
                  add          s11, a3, ra
                  srl          a2, a4, t0
                  beq          t2, t0, 30f
                  srl          t1, a6, a4
29:               auipc        s9, 203438
30:               and          s1, s10, t6
31:               sll          ra, t3, t3
                  xori         s7, a0, 1759
                  slli         s2, s5, 14
                  ori          t1, t5, 685
                  beq          t3, a6, 46f
                  srai         t0, a5, 4
                  ori          t1, t4, -1518
                  or           t6, t4, s0
39:               auipc        s11, 534811
                  sra          a0, s10, s1
                  add          a1, a7, s7
                  lui          a7, 334215
                  bltu         t1, s9, 58f
                  blt          a1, s10, 56f
                  and          t3, s2, s0
46:               and          s6, t4, a6
                  and          t6, t0, a5
                  sll          s4, a4, gp
                  srl          t4, s7, a0
                  add          a7, sp, a3
                  andi         t6, t0, 1657
                  auipc        t3, 612519
                  lui          a0, 382143
                  andi         s5, s5, 35
                  lui          a3, 231270
56:               bltu         s8, a7, 72f
                  sub          a4, s11, zero
58:               bltu         t3, s6, 63f
                  srli         s4, ra, 28
                  sub          zero, s11, t6
                  add          a7, a6, sp
                  lui          t2, 436106
63:               slli         s5, s11, 20
                  xor          t3, s10, a5
                  slti         s7, s1, -417
                  srai         t2, s10, 26
                  sltiu        t6, t5, 1731
                  ori          t6, t6, 229
                  sub          a3, s5, tp
                  andi         s6, t4, -477
                  sltu         s11, s2, t3
72:               nop
                  xori         t0, ra, -781
                  slti         t4, s2, 601
                  or           s1, ra, s4
                  beq          t3, s11, 94f
                  bgeu         s3, s9, 93f
                  bge          a2, a0, 95f
                  sll          zero, a3, tp
                  nop
                  bge          gp, s6, 90f
                  srli         t3, a2, 7
                  auipc        s9, 494933
                  sltu         ra, s9, ra
                  srai         s6, t4, 25
                  sltiu        a1, gp, -1187
                  srl          t1, s2, s0
                  sltu         s9, s4, zero
                  ori          t2, a0, 1203
90:               add          a3, a6, s6
                  bltu         a6, t3, 98f
                  srli         s4, a1, 17
93:               bne          s9, s8, 110f
94:               nop
95:               srai         t3, t0, 4
                  sra          tp, ra, s9
                  auipc        s8, 478712
98:               sub          t1, s11, a5
                  sub          gp, s11, t4
                  lui          t6, 139243
                  ori          t1, s6, -361
                  lui          tp, 964172
                  lui          s5, 445909
                  sra          s11, t4, a5
                  slt          a3, s6, t3
                  sltu         t6, t6, s2
                  srli         a2, s11, 21
                  ori          a6, a2, -455
                  slli         a5, sp, 22
110:              or           tp, a1, s0
                  sub          a6, tp, s3
                  sll          a1, t5, a5
                  lui          a1, 181226
                  sub          s9, a6, s7
                  sll          a7, s6, ra
                  bltu         zero, tp, 134f
                  slti         s1, ra, 415
                  xor          s1, a3, ra
                  slt          a6, gp, t2
                  sub          s2, sp, s9
                  andi         a5, zero, 695
                  sll          a2, tp, a4
                  xor          s7, s6, tp
                  andi         s5, t5, 1234
                  ori          s1, s8, 1731
                  xori         t1, ra, -835
                  blt          sp, a4, 145f
                  nop
                  lui          t6, 321957
                  or           ra, s5, a7
                  sltiu        a0, t0, -207
                  nop
                  and          zero, s5, s9
134:              lui          s0, 949818
                  xori         s4, s11, -143
                  slti         s5, s6, -1272
                  sltu         s1, t5, t0
                  andi         zero, a2, -1226
                  sltiu        gp, t1, -670
                  sll          a5, s7, ra
                  blt          a6, zero, 157f
                  auipc        t0, 433833
                  slti         s9, sp, 652
                  sltiu        t3, a0, 1964
145:              beq          a3, a4, 158f
                  slli         t6, s5, 3
                  addi         gp, a7, -1041
                  add          s9, a1, tp
                  bge          s2, a7, 159f
                  ori          a7, s5, 1769
                  blt          s2, s6, 167f
                  sra          s1, s5, t5
                  srli         s11, gp, 9
                  auipc        a7, 855698
                  slti         a6, s10, 504
                  xori         zero, zero, 1939
157:              beq          a1, a0, 165f
158:              srai         a7, a3, 2
159:              nop
                  beq          s2, gp, 169f
                  nop
                  nop
                  bge          t2, sp, 178f
                  srli         t1, gp, 25
165:              sra          s1, s7, s0
                  bne          t1, a0, 178f
167:              bge          s1, t4, 172f
                  srai         t3, s2, 19
169:              sltiu        s5, sp, -1007
                  nop
                  slti         a2, gp, -78
172:              ori          s11, t1, -1409
                  srai         t6, gp, 27
                  bltu         gp, s2, 184f
                  srai         s10, s0, 14
                  slti         t6, s7, -74
                  xori         gp, tp, -1687
178:              sltu         a4, gp, s4
                  or           zero, t2, t4
                  blt          t2, s1, 197f
                  sra          s6, s10, s3
                  slt          t0, t1, s11
                  bgeu         t5, t4, 201f
184:              and          a6, s0, ra
                  xor          ra, a3, s6
                  and          s0, a5, s4
                  slt          t6, sp, t2
                  srl          a4, s10, s9
                  bgeu         s7, s10, 200f
                  ori          t1, a0, -1129
                  beq          s4, a7, 209f
                  sltiu        s9, s10, 1097
                  sll          s0, a2, t4
                  sra          zero, a6, s5
                  andi         a5, s10, -997
                  beq          a7, s7, 212f
197:              sltiu        s0, a3, 539
                  xori         s8, s11, 630
                  andi         t4, t0, 491
200:              bltu         s8, a0, 216f
201:              and          s7, t2, s2
                  bge          a2, a2, 207f
                  sra          s0, zero, a3
                  xori         a4, s11, 1100
                  srl          s4, s11, sp
                  add          s5, s10, a7
207:              ori          s4, s7, -719
                  sltiu        s8, s3, 752
209:              beq          zero, s7, 215f
                  srl          t1, a2, a1
                  slli         s11, t0, 9
212:              nop
                  slti         tp, s0, -1824
                  bne          t2, s11, 224f
215:              sll          t4, a3, s11
216:              lui          zero, 638535
                  bltu         a2, a0, 232f
                  ori          t0, s8, -233
                  slti         gp, t3, 16
                  addi         t4, s0, 39
                  or           t4, a0, s0
                  or           s9, gp, t0
                  sra          t3, t6, sp
224:              sub          a4, gp, gp
                  sltu         s6, s9, s7
                  srai         s7, tp, 25
                  sub          tp, a5, gp
                  and          t6, s1, zero
                  sub          a1, a5, s0
                  sll          t4, t2, zero
                  sltu         tp, a6, a2
232:              ori          s4, s9, 184
                  sub          s11, s6, a6
                  or           a1, t4, t2
                  lui          s0, 532415
                  auipc        t3, 910236
                  bge          s4, tp, 238f
238:              slli         s11, t5, 11
                  sltu         a5, s6, tp
                  sra          s6, s8, s1
                  slt          s2, t0, s11
                  auipc        s7, 182086
                  sub          s2, t0, ra
                  lw           tp, 4(t5)
                  slt          zero, s5, s3
                  addi         t5, t5, 28
                  ori          s2, t1, 555
                  xor          t0, t0, s11
293:              addi x31, x4, 1
293:              jalr x31, x31, 0
sub_8:            blt          ra, a7, sub_8_stack_p
                  slt          s10, s1, a2
                  srai         s2, t5, 24
                  auipc        s2, 408954
                  ori          t1, a4, 575
                  slti         s10, a7, 755
                  srl          s0, t4, s9
sub_8_stack_p:    addi         t5, t5, -20
                  sw           tp, 4(t5)
                  add          t0, s5, a1
                  auipc        t1, 26315
                  or           t0, s1, a4
                  sra          s8, a2, a2
                  bgeu         gp, zero, 11f
                  auipc        zero, 871712
                  bne          zero, s7, 11f
                  bltu         t4, s3, 6f
                  srai         a6, t1, 31
                  addi         s5, s4, -345
6:                beq          tp, t6, 10f
                  xor          t3, a2, s4
                  srai         s4, a4, 17
                  sra          s7, s7, s4
10:               xori         ra, s2, 1549
11:               slti         s1, s9, 1467
                  nop
                  lw           tp, 4(t5)
                  lui          s0, 21873
                  sll          a2, gp, a7
                  addi         t5, t5, 20
                  add          s8, s5, s8
                  and          s1, s8, gp
                  slli         s11, sp, 17
                  lui          zero, 761571
                  addi         t2, s10, 845
                  sra          s2, a0, t5
36:               addi x3, x4, 1
36:               jalr x3, x3, 0
sub_2:            addi         t5, t5, -52
                  lui          a2, 234676
                  add          zero, a2, s5
                  xor          a7, s11, s2
                  andi         s4, s1, 555
                  and          s4, sp, t5
                  andi         t2, t2, 1310
                  sw           tp, 4(t5)
                  auipc        a0, 294078
                  slt          a7, a7, s1
                  la           t6, region_1+1269 #start riscv_load_store_rand_instr_stream_0
                  sh           s2, -5(t6)
                  sb           a3, 37(t6)
                  lbu          t3, 21(t6)
                  lbu          t0, -42(t6)
                  xor          t3, sp, a0
                  ori          a6, s4, -1094
                  lbu          t3, -17(t6)
                  sltiu        t0, s10, 1069
                  or           a0, t5, s11
                  lw           s5, -245(t6)
                  lbu          t1, -115(t6)
                  add          s9, a1, a0
                  srai         s8, sp, 1
                  lbu          s1, -4(t6)
                  lh           t4, 163(t6)
                  slli         s6, s8, 2
                  lui          a4, 692343
                  lbu          tp, 201(t6)
                  lb           a4, -164(t6)
                  lb           a0, -102(t6)
                  lb           gp, -71(t6)
                  sh           s7, -149(t6)
                  lhu          s2, 253(t6)
                  sltiu        t4, s1, 1453
                  sb           s2, -26(t6)
                  and          a0, zero, s9
                  lh           tp, 223(t6)
                  sb           s5, 202(t6)
                  lb           tp, 175(t6)
                  slt          s5, a4, t3
                  sb           a7, 12(t6)
                  auipc        s1, 777373
                  xori         a0, s3, 528
                  sltu         s11, t5, sp
                  lhu          a4, 241(t6)
                  lw           a2, -65(t6)
                  lbu          ra, -252(t6)
                  sh           t6, -217(t6)
                  lb           s8, 18(t6)
                  sltiu        gp, t1, 1846
                  srl          t4, a4, sp
                  ori          s5, s5, -1965
                  lb           s1, 216(t6)
                  sb           gp, -72(t6)
                  auipc        zero, 100004
                  lbu          s5, -7(t6)
                  sltiu        s6, t0, -1701
                  lw           s0, 75(t6)
                  lb           ra, 164(t6) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1458 #start riscv_load_store_rand_instr_stream_1
                  lb           s1, 213(t3)
                  lbu          a2, 68(t3)
                  slt          s9, a3, s5
                  lbu          s1, 189(t3)
                  lb           a2, 223(t3)
                  slli         a5, s8, 27
                  lbu          t4, 159(t3)
                  addi         a3, s10, 922
                  lb           t1, -77(t3)
                  sh           s6, 104(t3)
                  or           s0, s3, s4
                  srai         a0, a3, 27
                  sb           gp, 256(t3)
                  lb           a3, -19(t3)
                  sltiu        t2, a3, 416
                  sw           gp, -186(t3)
                  srai         s4, t3, 22
                  srai         t6, t5, 26
                  slli         s1, t5, 31
                  srl          s10, s11, sp
                  xor          s4, s7, a3
                  auipc        a2, 377483
                  lb           s0, -249(t3)
                  sll          s1, sp, s1
                  lbu          s4, 249(t3)
                  sb           zero, -33(t3)
                  lw           t4, -46(t3)
                  lb           s0, 196(t3)
                  sub          s1, gp, s11
                  lh           s11, -96(t3)
                  lb           zero, -221(t3) #end riscv_load_store_rand_instr_stream_1
                  slli         a2, t4, 5
                  nop
                  bge          s0, s0, 18f
                  add          s4, t5, a0
                  lui          a0, 970881
                  srai         a5, s3, 10
                  srl          t0, t4, tp
                  nop
                  beq          s5, s2, 15f
                  add          a3, t0, gp
                  andi         t6, a7, -1868
                  xori         a1, sp, 1554
                  andi         tp, t1, 411
                  ori          gp, s0, 1462
                  srai         ra, s1, 25
15:               or           t4, a4, s1
                  bgeu         ra, s8, 23f
                  slt          s6, a3, s9
18:               xor          t2, s9, t4
                  slti         s7, a4, -536
                  bne          a4, s3, 39f
                  slti         s0, s3, 1057
                  sltu         t0, a5, a0
23:               xori         s8, t5, -1809
                  srli         gp, a6, 4
                  blt          s0, a0, 39f
                  auipc        a5, 921655
                  beq          t5, s1, 46f
                  sltiu        t0, a2, -276
                  xor          ra, s2, s8
                  beq          a4, s11, 37f
                  blt          gp, s6, 44f
                  xor          s11, a1, a5
                  nop
                  ori          a3, t6, 125
                  andi         t6, t1, 1049
                  auipc        a4, 434542
37:               or           a7, s1, s8
                  srl          s0, zero, s7
39:               sll          gp, a2, tp
                  sub          a3, s9, s7
                  slti         s11, s4, 921
                  srai         t3, zero, 3
                  xori         a5, t2, -962
44:               nop
                  sltu         a1, a2, gp
46:               sll          s1, s8, a3
                  ori          a3, a4, 1299
                  slt          s10, a1, s4
                  bne          sp, s1, 57f
                  sltu         s8, tp, t0
                  beq          t6, t6, 70f
                  addi         s6, s9, -1255
                  sll          gp, s6, t5
                  srl          s0, ra, t5
                  xor          s10, a7, gp
                  auipc        gp, 836984
57:               bge          t4, s8, 68f
                  sub          s0, s1, sp
                  ori          a2, s2, 1142
                  sll          a7, s4, a6
                  slt          t0, t3, s1
                  beq          s7, t4, 68f
                  bne          a1, s11, 68f
                  sltu         t4, t0, a2
                  xori         a0, sp, 1176
                  sll          a0, a6, t0
                  addi         zero, t2, 28
68:               blt          s2, s2, 85f
                  or           t3, a4, sp
70:               slli         zero, tp, 3
                  sll          a1, gp, s4
                  or           s0, sp, a0
                  or           s8, s1, s2
                  sra          t6, t0, s2
                  bgeu         s3, a3, 85f
                  bgeu         gp, s6, 79f
                  or           s1, t4, t6
                  and          s11, a1, s4
79:               blt          a0, s4, 88f
                  srai         t1, s6, 29
                  bne          t1, a0, 89f
                  or           t3, gp, a1
                  xor          s7, t4, ra
                  srai         t3, t5, 23
85:               lui          ra, 134552
                  slti         s11, t4, -268
                  blt          tp, t1, 90f
88:               bltu         s2, t0, 97f
89:               add          s2, a0, s5
90:               slli         s10, gp, 16
                  sra          s10, a6, a3
                  slti         s8, a3, 1295
                  xor          t3, t6, s8
                  add          s7, a2, s9
                  bltu         t2, t1, 98f
                  add          gp, s1, zero
97:               sltu         s7, t2, t5
98:               beq          t3, t5, 113f
                  sra          a4, a0, t2
                  srai         s8, a4, 0
                  bge          t3, a4, 117f
                  srli         a2, a7, 11
                  lui          s2, 972073
                  add          s9, s1, a5
                  bge          s6, s4, 116f
                  bgeu         a0, t4, 123f
                  sra          t6, s8, ra
                  lui          s11, 169308
                  nop
                  sub          s7, a4, gp
                  sll          s6, a6, tp
                  bne          s3, t6, 115f
113:              ori          s8, a3, -772
                  sltiu        tp, zero, 1109
115:              slli         a2, s7, 5
116:              sra          a6, a3, gp
117:              xori         s8, a5, -273
                  sra          t0, a1, t5
                  sll          zero, t2, t3
                  srli         a3, a7, 10
                  slti         gp, a7, 228
                  bltu         sp, s7, 133f
123:              xor          s9, sp, s2
                  lui          t4, 279289
                  auipc        a7, 652125
                  bge          s5, s9, 146f
                  sltu         s5, t5, gp
                  andi         a4, a1, -1330
                  srai         a4, s6, 27
                  or           t4, s5, s5
                  add          s10, a4, s7
                  and          s0, t6, s4
133:              sra          a7, s2, s6
                  slt          s2, s5, t4
                  slli         s0, t5, 14
                  slli         s1, s3, 31
                  sra          a3, a4, a2
                  lui          a3, 675865
                  nop
                  bne          s9, t5, 150f
                  srai         ra, a1, 30
                  slli         a0, s8, 20
                  slli         s9, s10, 23
                  add          s0, s6, s8
                  slt          t3, s7, sp
146:              sra          s0, t4, a1
                  bne          s5, t1, 156f
                  add          s2, a7, s6
                  add          t4, a3, a4
150:              bge          sp, a1, 164f
                  auipc        s2, 984851
                  or           gp, s6, a1
                  slli         s4, gp, 6
                  srli         a7, a4, 6
                  slti         a5, sp, 467
156:              and          s4, s0, sp
                  slti         t4, t4, 1346
                  ori          t6, a0, 1795
                  addi         a5, s10, 232
                  bge          t0, a3, 180f
                  add          gp, s0, s2
                  beq          sp, tp, 175f
                  bltu         s11, t2, 180f
164:              xori         s0, sp, 4
                  srli         s0, s4, 9
                  ori          zero, a4, 890
                  slli         a4, s0, 11
                  ori          s11, tp, 1206
                  or           s5, a2, t2
                  lui          t6, 485236
                  lui          t1, 107998
                  beq          s3, zero, 191f
                  sub          t4, s3, a4
                  bge          t0, s7, 185f
175:              srli         a5, a6, 0
                  srl          s8, a6, a0
                  sltu         a0, s10, s10
                  srli         zero, s9, 16
                  or           s4, t0, zero
180:              bgeu         t4, s10, 191f
                  srai         t6, s10, 4
                  addi         a0, sp, 943
                  bltu         a5, s7, 200f
                  sltiu        s5, s0, 1426
185:              sub          a3, t1, s3
                  bgeu         a0, s5, 193f
                  srli         a7, t3, 25
                  sltiu        s1, s7, -1355
                  auipc        s10, 357742
                  bgeu         t5, a4, 201f
191:              add          a1, t5, s4
                  bltu         sp, s7, 202f
193:              xori         a6, a3, 1806
                  bgeu         s3, a6, 203f
                  add          s5, t5, s5
                  slt          a6, a7, s9
                  beq          t1, s7, 204f
                  srli         gp, s0, 9
                  lui          a1, 409841
200:              srli         a1, a4, 21
201:              srl          s5, zero, zero
202:              lui          tp, 313979
203:              srai         a1, s6, 31
204:              bltu         a0, gp, 207f
                  or           s7, s1, s6
                  blt          sp, t1, 209f
207:              beq          t0, t0, 213f
                  sra          zero, t3, t5
209:              slti         t2, s6, 236
                  bgeu         a6, s10, 215f
                  slti         t3, s0, 549
                  bne          t6, t3, 228f
213:              blt          a4, ra, 228f
                  srl          a0, s2, s3
215:              auipc        a3, 832772
                  slt          s5, t6, s11
                  and          s9, t2, t3
                  ori          tp, t2, -332
                  xor          tp, s6, sp
                  addi         a2, s0, 419
                  slt          ra, a5, s5
                  sll          a7, t6, t4
                  add          s7, s5, tp
                  xori         a5, s7, -549
                  andi         t2, a3, 1305
                  beq          t6, zero, 234f
                  bne          t5, s9, 246f
228:              auipc        t3, 338455
                  blt          a1, a4, 237f
                  sltu         zero, s0, t1
                  srai         t6, tp, 18
                  sltiu        zero, s10, 1152
                  bgeu         s3, s9, 243f
234:              auipc        a0, 337707
                  sra          a4, s1, s1
                  xor          a6, s4, t1
237:              lui          a2, 670488
                  slt          a2, gp, sp
                  sltiu        s5, s6, -1040
                  sltu         s8, t0, s0
                  beq          a6, s11, 244f
                  ori          t1, a6, -190
243:              sltu         a4, s9, t6
244:              slti         ra, zero, 1598
                  bne          a3, a5, 264f
246:              nop
                  slli         t1, a7, 31
                  auipc        a6, 347436
                  bge          t3, t3, 265f
                  sra          s0, s6, a5
                  bgeu         s2, zero, 254f
                  sltiu        t2, s0, 1362
                  xori         s1, a4, 1497
254:              lui          zero, 710532
                  addi         tp, t1, 772
                  slt          s6, t6, t3
                  bne          s5, s8, 266f
                  xor          s9, t3, s2
                  beq          tp, s6, 266f
                  or           t2, s2, sp
                  srl          a7, s2, sp
                  xor          s8, a1, a2
                  addi         a2, gp, -135
264:              sra          s4, s1, s6
265:              bltu         zero, a3, 274f
266:              sltu         s9, t5, s11
                  sra          s6, t5, a0
                  slli         a5, a7, 19
                  addi         t1, a1, 1032
                  bltu         a0, s8, 289f
                  bltu         s3, s0, 290f
                  slli         a7, a6, 0
                  auipc        a4, 581376
274:              ori          s2, a2, 178
                  bgeu         s10, tp, 286f
                  and          s5, a3, s9
                  slti         t4, s5, -117
                  srli         zero, a0, 14
                  andi         gp, s8, 449
                  sub          s10, s7, s10
                  and          zero, tp, sp
                  slt          s1, t6, s3
                  sltiu        s1, t0, 307
                  auipc        s7, 147897
                  add          a2, s10, gp
286:              sltu         ra, t6, a7
                  sltiu        s8, t0, 1012
                  ori          a2, tp, 857
289:              srai         s7, a0, 29
290:              xori         gp, a5, 1832
                  sra          s8, tp, t4
                  bgeu         a5, zero, 299f
                  beq          s6, ra, 308f
                  auipc        s9, 170866
                  beq          s6, gp, 311f
                  bgeu         gp, t5, 301f
                  srai         s7, a6, 7
                  slt          a1, t0, ra
299:              addi         s11, t1, 199
                  srli         s4, s1, 21
301:              sub          ra, s2, a3
                  xor          a0, t4, zero
                  addi         a4, a6, -837
                  bge          sp, s5, 310f
                  la           s9, region_0+196 #start riscv_load_store_rand_instr_stream_2
                  srai         a0, s10, 22
                  lb           gp, 13(s9)
                  lbu          a5, -15(s9)
                  addi         t4, t0, -1413
                  slt          s5, a2, gp
                  lb           t3, 7(s9)
                  sll          t0, a1, tp
                  sub          a5, t6, s4
                  srai         a4, ra, 8
                  xori         s0, t1, 1891
                  sub          a0, s1, t3
                  srl          t3, a7, a5
                  lb           s11, -6(s9)
                  addi         gp, s0, 1587
                  andi         s7, t4, -1096
                  srli         t6, t4, 17
                  addi         t0, s5, -208
                  auipc        s6, 71746
                  ori          t1, t5, 1652
                  auipc        t1, 194084
                  sltiu        s2, t4, 1202
                  lb           ra, 3(s9)
                  lb           s8, 16(s9)
                  or           s0, a2, a3
                  sh           a6, -16(s9)
                  lui          s4, 484580
                  xor          a5, s3, a7
                  ori          a4, s1, 540
                  lb           s7, -7(s9)
                  lbu          gp, 2(s9)
                  srli         a1, s7, 1
                  lb           a3, 1(s9)
                  slli         s11, s2, 4
                  lb           s5, -7(s9)
                  sll          s4, sp, s1
                  or           s2, a2, s7
                  addi         s5, s9, 1487
                  lui          a4, 755870
                  sb           ra, 10(s9)
                  sb           t2, -3(s9) #end riscv_load_store_rand_instr_stream_2
                  slt          t4, a6, gp
                  lui          s7, 400397
                  xor          s9, t6, s5
308:              bltu         a7, s5, 315f
                  sll          s6, t1, s6
310:              sltu         a0, s3, sp
311:              nop
                  and          zero, s3, a3
                  la           a6, sub_5
                  sub          t4, s10, a0
                  srl          t3, a2, a0
                  srli         a3, s9, 30
                  addi         a6, a6, 679
                  bne          s5, a0, sub_2_j5 #branch to jump instr
                  xor          a1, gp, s4
sub_2_j5:         jalr         tp, a6, -678 #jump sub_2 -> sub_5
                  srl          s5, t5, s3
                  bge          a5, a5, 320f
                  auipc        a5, 136525
315:              ori          t6, a5, -1169
                  srai         a2, t2, 10
                  nop
                  andi         t6, a5, 1312
                  sra          s4, a0, s10
320:              slt          s0, s2, s5
                  srai         t0, a7, 11
                  sltu         t6, a1, t0
                  beq          zero, a3, 336f
                  bltu         s11, t6, 333f
                  lui          a0, 321417
                  slli         t4, a7, 7
                  sub          zero, zero, a3
                  ori          a6, t2, -511
                  and          s7, s10, t0
                  srl          s11, a7, s5
                  addi         s2, t4, 410
                  slt          zero, a6, t1
333:              auipc        a2, 119975
                  sub          ra, t4, t6
                  srai         zero, s11, 17
336:              lui          s6, 967858
                  blt          sp, tp, 345f
                  and          s8, a5, a6
                  srai         gp, s3, 20
                  bne          s10, s9, 343f
                  beq          tp, sp, 344f
                  addi         t0, a6, 900
343:              addi         a5, a5, -1374
344:              bltu         a1, gp, 360f
345:              bltu         a2, a2, 364f
                  andi         s6, t1, 597
                  addi         s6, s3, -1178
                  slt          t6, tp, t6
                  sra          zero, s6, a6
                  beq          s0, s9, 359f
                  srai         s10, sp, 28
                  addi         t3, a3, -166
                  bne          s9, s4, 370f
                  blt          s0, gp, 365f
                  nop
                  slli         t2, s2, 3
                  slt          t1, t2, s6
                  sll          tp, s0, s6
359:              sltiu        a7, a7, 1978
360:              slt          s10, s11, s11
                  addi         t1, t2, 1834
                  and          t4, a6, s8
                  beq          s4, t6, 377f
364:              bge          s10, zero, 384f
365:              sltiu        a3, a5, 79
                  sub          s9, s6, a7
                  srli         zero, t2, 19
                  bge          s2, s11, 385f
                  ori          zero, a5, 1534
370:              ori          ra, s11, 408
                  sltiu        a2, t0, 1611
                  sll          t6, a2, s11
                  andi         t2, sp, 682
                  sra          t6, t5, s8
                  sub          s6, a5, zero
                  ori          s0, t5, -867
377:              bne          a1, a6, 380f
                  andi         a3, t1, -1704
                  ori          a3, tp, -1023
380:              xor          t4, s8, t5
                  blt          s4, t0, 389f
                  sltu         s0, gp, s5
                  xor          s5, s3, sp
384:              sltu         a0, a4, sp
385:              xor          t3, a3, a0
                  addi         a0, s11, -1831
                  sltu         a4, t5, s1
                  slti         t0, s11, 1795
389:              and          t1, s4, t1
                  xori         a0, t1, -1536
                  sll          t0, s4, s1
                  ori          t4, s8, 867
                  bne          t5, t6, 402f
                  bgeu         s6, ra, 397f
                  sltiu        s11, zero, 1618
                  lui          s6, 125149
397:              bgeu         a0, s9, 408f
                  sltu         a5, zero, zero
                  bne          a5, s11, 409f
                  xori         t1, s5, -221
                  sltu         ra, s0, a0
402:              xor          s6, a2, zero
                  sltiu        s9, s11, -812
                  srli         s6, t4, 6
                  slli         s10, tp, 15
                  auipc        s5, 516236
                  sll          ra, ra, a1
408:              srl          zero, s7, a4
409:              lui          ra, 601169
                  bge          a2, s0, 420f
                  sltiu        s11, zero, -1218
                  bgeu         s3, s5, 417f
                  slt          s5, s10, s5
                  sra          t1, gp, s0
                  bgeu         zero, a0, 424f
                  xor          s7, s3, t0
417:              srai         s0, s9, 17
                  blt          s0, a3, 428f
                  slti         a2, a3, 865
420:              slti         s11, t0, 523
                  or           t4, t5, t1
                  xori         a5, t2, -29
                  slt          a4, ra, sp
424:              lui          s7, 168622
                  xori         gp, s1, 516
                  nop
                  andi         s4, t1, 506
428:              slt          t0, a6, a5
                  sltu         s10, t3, s2
                  sltiu        s4, s2, -614
                  xori         a3, t5, 1683
                  auipc        s7, 154665
                  bge          s6, s8, 439f
                  auipc        s2, 33199
                  lui          s7, 701071
                  ori          s6, t0, -1684
                  slli         s2, t1, 11
                  srli         a2, ra, 21
439:              andi         a0, t3, 410
                  add          a4, zero, a3
                  or           s1, s3, a3
                  andi         t4, sp, 1474
                  srai         a2, a0, 2
                  srai         s11, a7, 21
                  slt          s8, gp, s10
                  sub          gp, gp, t3
                  sltu         s4, s0, a4
                  add          s10, t4, t5
                  srli         s0, t0, 17
                  and          s9, t0, s2
                  bne          s4, a3, 461f
                  lui          a6, 97640
                  blt          s5, s4, 461f
                  ori          a1, t6, 1421
                  sub          a6, s10, s0
                  nop
                  add          ra, gp, sp
                  srai         s8, s8, 19
                  blt          a7, a5, 461f
                  slli         s4, s6, 31
461:              addi         s6, t1, -2036
                  lw           tp, 4(t5)
                  slt          a4, t1, s5
                  addi         t5, t5, 52
                  and          t3, t5, t1
                  auipc        t0, 188885
609:              addi x23, x4, 1
609:              jalr x23, x23, 0
sub_7:            srli         s0, ra, 1
                  xor          s1, s8, s7
                  sltiu        s6, s7, -47
                  xori         a3, s4, 1839
                  sub          t1, s0, a2
                  slt          s0, s2, gp
                  auipc        s9, 524766
                  sltiu        s1, t0, 962
                  addi         t5, t5, -40
                  sw           tp, 4(t5)
                  sltu         t0, t5, t4
                  la           s8, region_1+1443 #start riscv_load_store_rand_instr_stream_0
                  lb           s11, 7(s8)
                  lb           s2, 11(s8)
                  andi         s6, t1, 1938
                  lb           a6, -9(s8)
                  lbu          t3, 11(s8)
                  srli         a0, a6, 4
                  xori         s6, s3, 56
                  ori          a3, s7, 1438
                  and          s5, a5, s0
                  xori         gp, gp, 1952
                  slt          ra, tp, s0
                  sb           s2, 13(s8)
                  auipc        a0, 785936
                  sltu         gp, s3, zero
                  sb           t0, -6(s8)
                  lbu          a3, 2(s8)
                  lh           s9, -3(s8)
                  sb           s0, 11(s8)
                  add          s4, s0, s3
                  and          a4, a1, a2
                  slt          s11, t0, s9
                  srli         t6, gp, 20
                  ori          a0, s1, -748
                  nop
                  sll          s9, a7, s11
                  srl          t6, a7, t1
                  slli         s10, t2, 5
                  sb           s1, -1(s8)
                  sb           s4, -7(s8)
                  auipc        s6, 874326
                  or           a4, t1, t1
                  sltiu        t1, gp, 900
                  sll          tp, t0, s6
                  srl          s11, a1, a1
                  sw           s1, -15(s8) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_0+1032 #start riscv_load_store_rand_instr_stream_1
                  lb           s0, -558(s9)
                  lbu          s8, -21(s9)
                  sb           a2, 450(s9)
                  sb           s10, -5(s9)
                  sb           t5, 144(s9)
                  lui          s1, 738913
                  sb           s0, 945(s9)
                  andi         zero, t2, -475
                  auipc        s10, 428196
                  lb           t1, 207(s9)
                  lhu          t4, 6(s9)
                  lbu          t0, -82(s9)
                  auipc        s2, 43537
                  lbu          a2, -857(s9)
                  lb           ra, -571(s9)
                  srl          s6, s8, t1
                  lbu          a0, 438(s9)
                  sltu         s8, a2, s3
                  lb           s6, -907(s9)
                  lb           s5, 671(s9)
                  sb           s4, -273(s9)
                  ori          s6, s9, -2012
                  add          tp, a4, zero
                  lb           t6, 553(s9)
                  addi         a5, a2, -1928
                  lh           t0, -144(s9)
                  sb           t0, -89(s9)
                  srli         tp, s6, 11
                  lh           a4, -422(s9)
                  lbu          t6, -667(s9)
                  addi         gp, s9, -279
                  lw           t1, 796(s9) #end riscv_load_store_rand_instr_stream_1
                  addi         a0, s1, 1325
                  bne          a0, s9, 6f
                  sra          s10, t5, a1
                  slli         s7, a2, 23
                  slti         tp, s7, -1999
                  slti         t6, sp, 802
6:                sltiu        t6, s6, 1520
                  beq          a0, a4, 13f
                  beq          a2, s10, 9f
9:                bltu         s0, s4, 22f
                  or           s5, s1, a0
                  sltiu        a4, gp, 1367
                  auipc        t4, 458215
13:               xor          t4, a2, s9
                  and          a3, a0, t6
                  bge          t6, s1, 20f
                  sltiu        s8, t3, -1887
                  auipc        tp, 981630
                  add          s11, s9, a2
                  sll          gp, s5, zero
20:               addi         s10, s8, 523
                  andi         s11, t0, -474
22:               addi         a5, s9, 813
                  or           a7, s7, t4
                  addi         a0, t5, -1607
                  sltiu        s8, t1, 272
                  addi         t4, sp, -370
                  blt          t2, sp, 43f
                  beq          tp, t4, 33f
                  xori         t3, a4, -823
                  bge          t0, t1, 42f
                  and          s7, a5, gp
                  bltu         t4, s8, 48f
33:               srli         s2, s6, 14
                  beq          t2, a4, 38f
                  lui          a5, 246453
                  andi         a1, a0, -663
                  srli         s8, s0, 25
38:               srai         zero, a0, 21
                  xori         a6, s9, 1144
                  and          a5, a1, t2
                  xor          t0, a1, s5
42:               beq          s1, a2, 44f
43:               srli         s7, zero, 26
44:               sltiu        a2, t5, -1831
                  lui          s11, 362015
                  sub          a5, s0, t1
                  auipc        a2, 154071
48:               bge          a5, s11, 63f
                  xori         a5, s9, 1160
                  blt          t2, t1, 51f
51:               or           s1, s8, a4
                  bgeu         s2, t1, 60f
                  srli         a2, t0, 6
                  blt          t6, t6, 70f
                  bge          a7, s1, 59f
                  slli         t2, a2, 12
                  andi         t6, s11, 1350
                  slt          s9, s9, tp
59:               srli         a0, s2, 21
60:               add          zero, s11, s9
                  slt          s8, t4, a5
                  bltu         a3, t3, 67f
63:               slti         ra, a4, 346
                  beq          a7, s2, 78f
                  and          t3, a3, a5
                  blt          s7, a2, 83f
67:               xori         a3, s4, -1159
                  sltu         s4, t0, t1
                  srli         s1, t5, 21
70:               bgeu         t4, s6, 72f
                  ori          s4, sp, -1561
72:               add          s1, s5, ra
                  bne          s2, s10, 84f
                  sltiu        gp, a7, 1388
                  blt          a0, sp, 93f
                  sll          s9, t6, t2
                  andi         s5, s0, 1642
78:               auipc        gp, 645227
                  bltu         t6, s10, 92f
                  xor          t0, s0, t6
                  sltu         t1, a1, s2
                  lui          s6, 742029
83:               xori         a1, t2, -453
84:               add          a6, t6, s3
                  add          s5, a2, s10
                  ori          t1, s3, 2037
                  and          tp, a3, sp
                  blt          zero, s9, 98f
                  sltu         t3, t2, s0
                  xori         a4, t2, 575
                  bltu         s8, s1, 104f
92:               bne          s0, s7, 111f
93:               addi         tp, a0, -1899
                  bge          s9, s10, 105f
                  sll          s6, t6, ra
                  la           a5, region_0+1393 #start riscv_load_store_rand_instr_stream_2
                  nop
                  lhu          a4, 45(a5)
                  ori          s9, t5, 1980
                  sb           a5, 52(a5)
                  lw           s0, -9(a5)
                  slli         a4, t3, 0
                  sw           a5, -29(a5)
                  lbu          a6, -25(a5)
                  lb           gp, -62(a5)
                  lb           zero, 16(a5)
                  sh           t5, 3(a5)
                  or           t6, a3, s3
                  sll          zero, t6, s6
                  lh           t4, 15(a5)
                  lh           s11, -41(a5)
                  nop
                  andi         ra, t2, -1844
                  lbu          a4, 14(a5)
                  lb           s1, -32(a5)
                  slti         gp, s4, 600
                  srli         zero, s11, 11
                  lhu          t4, 5(a5)
                  sh           a4, -19(a5)
                  xori         a6, a2, -873
                  slti         s2, a4, -1957
                  lw           t0, -37(a5)
                  lb           s4, -41(a5)
                  lhu          a3, -1(a5)
                  lhu          t3, 39(a5)
                  sb           t4, 3(a5)
                  lbu          t6, 8(a5)
                  lb           a0, 58(a5)
                  sb           s9, 34(a5)
                  sltiu        s10, s4, 82
                  lhu          s0, 37(a5)
                  sb           s5, -31(a5)
                  sltu         a2, s0, s2
                  lbu          a6, -16(a5)
                  lb           gp, 34(a5)
                  lb           s7, -17(a5) #end riscv_load_store_rand_instr_stream_2
                  addi         t0, t1, -415
                  sltu         t3, a4, s0
98:               beq          a6, t1, 115f
                  and          a5, a2, a5
                  slli         s10, s3, 30
                  slti         ra, s3, -453
                  sll          a6, t6, ra
                  srli         tp, a6, 25
104:              sub          a0, a0, ra
105:              blt          gp, a5, 109f
                  srl          zero, a4, s5
                  bgeu         s2, a3, 113f
                  auipc        a2, 591868
109:              auipc        t2, 572655
                  beq          gp, ra, 123f
111:              bne          s1, gp, 119f
                  sra          ra, a0, a6
113:              xori         t1, s1, -1098
                  srai         ra, s4, 13
115:              bge          s7, s4, 131f
                  nop
                  bge          t5, t0, 122f
                  or           tp, s0, s4
119:              add          s4, s1, s9
                  add          tp, ra, sp
                  sra          ra, t4, a3
122:              sll          ra, gp, gp
123:              blt          t0, s10, 140f
                  bne          a7, t3, 134f
                  sra          a2, t3, a0
                  srai         a0, t4, 31
                  bgeu         sp, s6, 142f
                  bgeu         sp, t0, 144f
                  slt          s0, s3, a3
                  xor          t1, t1, tp
131:              srli         s10, t3, 2
                  sll          a6, s2, s2
                  sll          s4, gp, t1
134:              srl          s10, t2, s2
                  lui          a7, 149945
                  sltiu        zero, s11, -1252
                  srli         s7, a7, 12
                  xori         s6, t2, -547
                  bgeu         t2, gp, 151f
140:              andi         s9, t5, 1031
                  or           s6, s5, s5
142:              blt          a5, a4, 148f
                  srli         s5, a5, 25
144:              and          s11, t2, s2
                  and          t2, t0, a0
                  bne          t4, s7, 163f
                  slti         s4, s5, -1914
148:              nop
                  bge          s8, tp, 154f
                  sll          t4, ra, s7
151:              or           a7, s10, t3
                  xor          s0, a1, s8
                  and          zero, sp, t0
154:              srai         s0, s8, 22
                  bge          t2, s5, 174f
                  sra          zero, s10, tp
                  xori         s1, s5, 1021
                  slt          s6, ra, s0
                  and          t2, s2, s0
                  xor          s9, s0, a6
                  add          a1, a0, s9
                  xori         s11, t5, 1116
163:              slli         s5, sp, 16
                  bge          sp, t6, 168f
                  and          a2, a0, s4
                  sltu         t1, s8, s9
                  addi         s10, a5, -1134
168:              andi         t0, t1, -1366
                  srli         gp, a2, 24
                  blt          t6, a2, 172f
                  or           a5, s1, s2
172:              bne          s7, zero, 176f
                  addi         s0, t2, 1667
174:              slli         s6, t1, 2
                  sub          t3, s5, gp
176:              nop
                  sll          a7, a6, s8
                  ori          t1, a0, 1157
                  bltu         a2, gp, 192f
                  slt          a1, s3, a6
                  andi         a1, s1, 1588
                  sltiu        t3, a5, -871
                  lui          s11, 608061
                  and          s7, s4, a0
                  slli         s0, a1, 3
                  sra          s5, a2, a4
                  xor          zero, s1, s1
                  bge          a6, a1, 189f
189:              ori          t2, zero, 1781
                  sltiu        ra, s8, 345
                  bltu         t4, tp, 193f
192:              sll          a3, t3, s4
193:              bne          s9, a3, 207f
                  srl          a5, gp, s9
                  slli         a3, a0, 4
                  or           a2, s4, a0
                  andi         s8, a4, -658
                  sub          a3, s7, t6
                  ori          s1, a4, 899
                  beq          s1, s8, 204f
                  bne          s3, s0, 217f
                  add          s9, a6, s8
                  slti         s11, t0, -387
204:              bge          t6, zero, 215f
                  slt          s2, s4, tp
                  add          a4, t5, a3
207:              bltu         s2, s0, 218f
                  sub          s4, s11, t1
                  sra          s11, sp, a4
                  sub          a7, tp, a0
                  lui          ra, 405902
                  sll          t2, sp, sp
                  blt          s7, s1, 231f
                  and          a6, sp, a6
215:              slli         s8, s11, 19
                  bge          sp, ra, 217f
217:              blt          t4, a6, 222f
218:              andi         t6, s11, -879
                  sra          a2, t2, t4
                  sltu         s7, a7, s11
                  nop
222:              slti         a3, gp, -1881
                  nop
                  addi         s9, a6, -386
                  beq          a5, ra, 231f
                  sub          s10, s5, t2
                  add          s0, a3, ra
                  slli         s7, s10, 19
                  sll          a7, zero, s0
                  xor          t0, s7, s1
231:              slli         zero, s10, 24
                  and          s4, s0, s8
                  ori          s8, zero, -1451
                  add          s1, t0, a7
                  nop
                  xori         s5, a4, -1926
                  sltiu        ra, t1, 1570
                  sra          t1, ra, t4
                  blt          t0, t4, 244f
                  addi         s9, a6, -1963
                  slt          t2, t4, s11
                  srl          zero, a7, s6
                  sub          s8, a5, tp
244:              andi         s6, t0, -869
                  sltu         s5, s11, s0
                  sra          s0, t2, t6
                  srl          s1, t0, sp
                  or           s10, a0, a4
                  srl          s9, s1, t3
                  srli         s9, s0, 8
                  nop
                  bgeu         s1, s5, 265f
                  sub          t3, t0, gp
                  xori         t1, zero, -397
                  bltu         a4, t1, 257f
                  bltu         s7, s1, 264f
257:              andi         s8, a0, -1445
                  sltu         t4, s8, t1
                  auipc        s4, 406417
                  ori          a5, s3, -675
                  bltu         t5, a5, 278f
                  bne          a4, a0, 266f
                  sra          s4, t2, a1
264:              auipc        s11, 152685
265:              bltu         a5, s10, 266f
266:              srli         s5, t5, 9
                  nop
                  srli         t0, s2, 7
                  sltu         a0, s6, t3
                  bne          a1, s4, 289f
                  bge          s7, s2, 287f
                  sll          s0, t3, a5
                  xori         a7, s1, 1347
                  addi         s11, s1, 1923
                  addi         t4, t1, 1191
                  sltu         s1, s1, s6
                  andi         a7, a6, -78
278:              ori          t4, s3, 1707
                  and          ra, t1, s6
                  sltu         s6, gp, s9
                  xor          a2, t1, a3
                  sll          s7, s8, a7
                  blt          t6, a0, 284f
284:              bltu         s4, s10, 289f
                  bltu         a5, s11, 291f
                  sltu         a2, gp, a7
287:              srl          gp, s8, ra
                  xori         s10, s3, -827
289:              andi         t1, zero, -14
                  andi         s10, s11, 918
291:              add          s4, a4, s8
                  sub          a1, a1, ra
                  andi         a2, t3, 99
                  or           ra, a5, s11
                  bne          s9, gp, 300f
                  srli         a1, t5, 26
                  beq          s10, a3, 310f
                  bne          s11, a5, 310f
                  addi         s2, s6, -532
300:              sltu         ra, s10, gp
                  andi         a6, s7, -1519
                  slli         a2, s1, 9
                  bgeu         t3, s4, 307f
                  andi         s8, s4, 1391
                  nop
                  sltu         s6, s9, s4
307:              sll          s8, t3, a6
                  blt          s10, tp, 319f
                  auipc        s11, 639377
310:              sub          t6, s7, s3
                  bltu         t0, tp, 326f
                  beq          zero, s8, 326f
                  srai         a4, s7, 16
                  srl          zero, s9, t5
                  beq          s6, a7, 326f
                  bne          t2, s5, 334f
                  bne          a4, s2, 330f
                  beq          t6, ra, 320f
319:              sub          t2, a3, a2
320:              bge          s6, s10, 336f
                  sra          s9, ra, t6
                  lui          s9, 11567
                  xor          ra, s9, s9
                  xor          s0, s11, tp
                  bge          s4, a1, 330f
326:              add          s4, t4, t2
                  or           t2, s7, s3
                  sltu         zero, s1, tp
                  xori         s6, s8, -76
330:              srli         ra, a0, 15
                  sltu         s2, t1, a6
                  lui          zero, 771287
                  and          a0, t3, a0
334:              add          s1, t6, s1
                  xori         a4, s6, -103
336:              sub          s2, a0, a4
                  sltiu        s6, s5, -1681
                  srli         t1, a0, 3
                  add          s9, s3, s2
                  sub          s10, a5, a1
                  sll          a2, s10, s9
                  lui          s10, 1010387
                  bgeu         s6, a6, 347f
                  sltu         s10, t3, sp
                  or           s9, s9, a4
                  srai         a5, s10, 0
347:              srl          s2, s2, s5
                  bltu         gp, a4, 365f
                  nop
                  bge          s5, s7, 355f
                  sub          s6, t6, s7
                  sltiu        s9, sp, 436
                  srai         zero, a0, 23
                  slli         t0, gp, 25
355:              sll          t3, s6, ra
                  add          a3, s5, s1
                  xori         ra, t2, 395
                  srl          a7, s10, a7
                  ori          ra, ra, 94
                  addi         a4, a7, 1576
                  blt          s8, s3, 367f
                  srai         s10, t4, 11
                  sub          s10, a5, s3
                  bgeu         a1, gp, 377f
365:              srli         tp, a6, 18
                  nop
367:              sll          t6, s7, s10
                  sltiu        s7, tp, -718
                  sltu         s6, t1, a4
                  srl          a7, sp, s6
                  srli         s11, sp, 14
                  slli         s8, s4, 19
                  lui          s11, 795983
                  bne          t1, zero, 381f
                  bltu         a7, s8, 381f
                  srl          a2, a4, ra
377:              sltiu        gp, a1, 543
                  xor          s11, t3, s9
                  bne          ra, t4, 381f
                  or           a3, s1, s7
381:              auipc        t2, 949826
                  lw           tp, 4(t5)
                  addi         t5, t5, 40
                  sll          ra, s4, a7
                  or           a3, a1, a1
                  nop
                  auipc        a7, 893596
                  srai         t0, s4, 23
                  srai         s5, s1, 26
511:              addi x28, x4, 1
511:              jalr x28, x28, 0
sub_6:            bltu         gp, t5, sub_6_stack_p
                  xori         t4, a5, 107
                  slli         s5, tp, 30
sub_6_stack_p:    addi         t5, t5, -56
                  slti         t1, t0, 1768
                  slt          s1, s8, sp
                  sltu         s2, zero, s4
                  sw           tp, 4(t5)
                  srli         a7, a7, 29
                  sll          t6, a4, a1
                  and          zero, t6, a6
                  bltu         t5, a2, sub_6_j10 #branch to jump instr
                  slt          s10, gp, t6
                  and          a7, s2, t1
                  slt          s1, a0, t2
                  sub          a1, gp, s1
                  sra          a0, s1, a4
sub_6_j10:        jal          tp, sub_8 #jump sub_6 -> sub_8
                  sltiu        a1, s9, -1477
                  slt          s5, sp, s6
                  la           a3, sub_9
                  sll          tp, t2, a4
                  addi         a3, a3, 440
                  sltu         zero, s5, t4
                  xor          a2, a5, s2
sub_6_j11:        jalr         tp, a3, -439 #jump sub_6 -> sub_9
                  la           t4, region_1+911 #start riscv_load_store_rand_instr_stream_10
                  sb           s7, 538(t4)
                  lb           t3, -818(t4)
                  lhu          ra, -413(t4)
                  sb           t1, -58(t4)
                  nop
                  lbu          ra, 672(t4)
                  addi         s0, a7, 1549
                  sub          gp, a0, s7
                  srl          a5, a1, s3
                  lbu          a3, -293(t4)
                  add          a1, t0, a1
                  lb           a1, -226(t4)
                  sltiu        a7, t3, 331
                  slti         t2, s6, -2007
                  sub          s11, ra, t0
                  sb           a5, -775(t4)
                  slti         a7, s10, -1703
                  or           a7, s2, t4
                  xori         s5, ra, -32
                  lbu          a7, -194(t4)
                  sb           t1, 932(t4)
                  srai         s7, ra, 21
                  slti         ra, zero, -1001
                  lw           a2, 701(t4)
                  lbu          ra, -308(t4)
                  srai         s4, a3, 3
                  lh           a7, -39(t4)
                  addi         s2, sp, 260
                  sltiu        gp, s11, -526
                  sltu         a2, s10, a6
                  auipc        a2, 1013725
                  lbu          a4, -201(t4)
                  lbu          tp, -587(t4)
                  lb           t6, 1042(t4)
                  sb           t5, -316(t4)
                  lb           s10, 420(t4)
                  lbu          s5, -442(t4)
                  lh           s9, 81(t4)
                  lb           s10, -438(t4)
                  sb           t1, -508(t4)
                  lhu          s5, 589(t4)
                  lb           a2, 490(t4)
                  nop
                  srai         t3, t5, 3
                  slt          s7, t3, a3
                  slti         a1, s10, -1398
                  sb           t1, -21(t4)
                  or           a4, s9, s5
                  slt          s5, a0, s2
                  lh           t2, 481(t4) #end riscv_load_store_rand_instr_stream_10
                  la           s8, region_1+1079 #start riscv_load_store_rand_instr_stream_14
                  sub          a1, sp, t6
                  lbu          a6, -20(s8)
                  xor          s7, a7, a6
                  lbu          t4, 45(s8)
                  sb           t0, 22(s8)
                  sll          a3, s9, t6
                  lh           tp, 23(s8)
                  lhu          t0, 3(s8)
                  lb           zero, -64(s8)
                  add          s2, s3, s2
                  lb           a1, -1(s8)
                  lh           a6, -27(s8)
                  lbu          t0, -7(s8)
                  lbu          zero, 60(s8)
                  srai         s5, gp, 1
                  or           s5, s9, t6
                  lbu          a1, -40(s8)
                  sb           s4, 57(s8)
                  lb           t0, -62(s8)
                  auipc        s10, 561190
                  sh           s1, -61(s8)
                  srai         s1, s8, 6
                  lui          a4, 296471
                  sltu         zero, a5, s4
                  lbu          a1, 34(s8)
                  lbu          a5, 61(s8)
                  lbu          s2, -30(s8)
                  sb           zero, 8(s8)
                  add          s4, a3, s3
                  lbu          s2, 46(s8)
                  add          t0, s5, gp
                  lbu          a4, -31(s8)
                  sb           t1, -24(s8)
                  sb           t6, 47(s8)
                  lb           a3, 18(s8)
                  lbu          s0, 49(s8)
                  auipc        a0, 500821
                  sw           a2, 41(s8) #end riscv_load_store_rand_instr_stream_14
                  la           a6, region_1+877 #start riscv_load_store_rand_instr_stream_7
                  nop
                  sltu         s7, s3, s8
                  lhu          s1, -275(a6)
                  lb           s1, -672(a6)
                  addi         a2, a0, 1726
                  srl          t4, a0, s9
                  lb           s0, -566(a6)
                  addi         t4, s5, 1957
                  lbu          a2, -588(a6)
                  lb           a5, -828(a6)
                  srai         s0, s4, 23
                  lbu          s5, 148(a6)
                  slli         a4, sp, 19
                  andi         s1, t1, -406
                  srai         zero, s4, 18
                  nop
                  sb           s6, -512(a6)
                  sb           t4, 340(a6)
                  sltiu        s0, s5, -184
                  lbu          a5, -534(a6)
                  lbu          s4, 422(a6)
                  sb           s4, 464(a6)
                  lbu          a4, -282(a6)
                  sh           a2, 1061(a6)
                  lb           a5, -555(a6)
                  addi         zero, sp, -750
                  lhu          a4, 669(a6)
                  srai         zero, a3, 26
                  lhu          t3, 617(a6)
                  sra          a2, s5, a0
                  slti         ra, s8, -261
                  srli         a3, ra, 30
                  lw           s4, 163(a6)
                  lh           a7, -139(a6)
                  add          a2, s9, s3
                  sw           t2, -129(a6)
                  auipc        s4, 252976
                  slli         s0, s11, 25
                  sw           s11, 771(a6)
                  lui          s1, 887559
                  sb           s11, 813(a6)
                  lbu          a4, 377(a6)
                  add          ra, a3, gp
                  slli         s11, a5, 26
                  sltu         s8, s0, s3
                  ori          s9, zero, -984
                  lbu          s1, -577(a6) #end riscv_load_store_rand_instr_stream_7
                  la           s11, region_0+912 #start riscv_load_store_rand_instr_stream_11
                  sub          t1, t1, gp
                  sw           a2, 240(s11)
                  slli         s8, gp, 27
                  srl          s9, s5, s0
                  add          t0, t5, t0
                  srai         a0, a0, 23
                  sb           zero, 77(s11)
                  slt          a0, a1, t4
                  sb           s8, -118(s11)
                  lb           t0, -49(s11)
                  sltu         s8, gp, a4
                  nop
                  slti         a0, tp, -1884
                  xor          a3, t1, s9
                  lb           s8, -164(s11)
                  sltiu        t0, a3, -1216
                  lui          a7, 773581
                  or           t3, a4, s9
                  sub          t2, t1, t1
                  sb           s1, 211(s11)
                  lb           gp, -195(s11)
                  sltu         a6, s11, t1
                  sub          zero, s10, s11
                  lb           s7, 256(s11)
                  sw           a4, 64(s11)
                  ori          s10, a0, 819
                  sh           tp, 34(s11)
                  andi         s9, t3, -445
                  lui          s7, 839029
                  lb           tp, -205(s11)
                  lb           s4, -180(s11)
                  sltu         s0, s0, s11
                  slt          t1, a2, ra
                  lbu          a4, 91(s11)
                  sb           t0, 145(s11)
                  sltu         a5, t4, tp
                  xori         s0, tp, 1653
                  nop
                  sw           t1, -24(s11)
                  lbu          a3, -171(s11)
                  sltiu        a3, s1, 1148
                  sb           t5, 60(s11)
                  slt          gp, s10, s2
                  addi         a7, s9, -1727
                  sltu         a6, s2, t6
                  slli         tp, a3, 6
                  lb           a0, -171(s11)
                  sh           t2, -78(s11)
                  sb           zero, -96(s11) #end riscv_load_store_rand_instr_stream_11
                  la           a5, region_1+928 #start riscv_load_store_rand_instr_stream_4
                  lbu          a6, 35(a5)
                  srli         ra, t1, 13
                  addi         s8, a7, 1594
                  sltu         a6, s6, s2
                  lbu          s0, -38(a5)
                  lui          s9, 536222
                  andi         s10, s7, -852
                  lbu          t4, 8(a5)
                  sb           t5, 32(a5)
                  auipc        a1, 685342
                  sll          a3, tp, s2
                  sltu         t1, a2, t0
                  sb           a7, -59(a5)
                  and          s7, t2, t3
                  add          a0, zero, a1
                  lb           s2, -43(a5)
                  slt          s1, t4, s1
                  lbu          t2, 34(a5)
                  lb           tp, 61(a5)
                  lbu          s2, 34(a5)
                  lbu          t1, 47(a5)
                  sra          t0, zero, t6
                  lb           a7, -32(a5)
                  slt          a0, a0, t2
                  slt          s6, a6, s8
                  srai         s5, gp, 0
                  sll          a1, s9, a0
                  sub          a4, t6, t5
                  lb           a4, -47(a5)
                  srli         s9, tp, 31
                  auipc        tp, 500083
                  lbu          ra, 37(a5) #end riscv_load_store_rand_instr_stream_4
                  la           t0, region_0+29 #start riscv_load_store_rand_instr_stream_16
                  lbu          s11, -4(t0)
                  nop
                  slt          t2, a6, s9
                  sh           s0, 63(t0)
                  lh           tp, 51(t0)
                  lb           t6, 14(t0)
                  add          a4, ra, a7
                  sb           s9, 44(t0)
                  srai         ra, s0, 19
                  lb           t1, -28(t0)
                  sub          s10, t0, s7
                  nop
                  lhu          a2, -9(t0)
                  lb           s7, 19(t0)
                  lb           t4, 36(t0)
                  lbu          s10, -4(t0)
                  srai         t6, s2, 4
                  lbu          a3, 48(t0)
                  lh           s5, -3(t0)
                  sh           s8, 31(t0)
                  lb           ra, -25(t0)
                  sw           s6, -25(t0)
                  lbu          s11, -16(t0)
                  xori         t3, a1, 790
                  auipc        a4, 878696
                  lbu          s2, 56(t0)
                  lhu          s9, 47(t0)
                  sb           s10, -10(t0)
                  lb           a6, -16(t0)
                  lui          a2, 808578
                  srli         a7, a3, 15
                  lb           s9, 1(t0)
                  xor          s0, a5, s4
                  ori          t2, t1, 1059
                  lhu          tp, 21(t0)
                  lb           a2, 14(t0)
                  srai         a5, a3, 29
                  lbu          a7, 34(t0)
                  lb           s9, 29(t0) #end riscv_load_store_rand_instr_stream_16
                  la           a4, region_1+1228 #start riscv_load_store_rand_instr_stream_5
                  or           tp, s8, s10
                  lbu          gp, -20(a4)
                  sh           s1, -32(a4)
                  srli         tp, s1, 29
                  lbu          t3, 60(a4)
                  lb           t3, 47(a4)
                  and          s8, s10, sp
                  srl          tp, a2, sp
                  sb           s2, 23(a4)
                  sb           a3, 43(a4)
                  lb           a6, -57(a4)
                  lb           a7, 53(a4)
                  lhu          tp, -8(a4)
                  sb           s2, -15(a4)
                  lbu          t2, 5(a4)
                  auipc        t1, 410615
                  srl          t6, s7, t5
                  sb           tp, -37(a4)
                  lh           s1, -6(a4)
                  lb           t2, 63(a4)
                  lbu          a3, 44(a4)
                  ori          s5, a5, 622
                  nop
                  sb           s11, 35(a4)
                  sltu         tp, a1, s0
                  srl          s0, a0, a6
                  sh           a0, -46(a4)
                  sub          a5, t4, s0
                  and          t6, ra, a2
                  lbu          s1, 17(a4)
                  lb           ra, -38(a4) #end riscv_load_store_rand_instr_stream_5
                  la           s2, region_1+175 #start riscv_load_store_rand_instr_stream_1
                  lb           s0, 40(s2)
                  xor          a4, t1, s0
                  lb           t2, 51(s2)
                  sb           a7, -46(s2)
                  slli         tp, s2, 23
                  and          t2, a4, s3
                  sltu         tp, t0, s2
                  nop
                  lb           s11, -24(s2)
                  lbu          s9, -4(s2)
                  lb           a0, -41(s2)
                  lb           a6, -62(s2)
                  lui          a5, 557653
                  sub          s1, t6, s1
                  sb           s4, 54(s2)
                  sb           gp, -18(s2)
                  lbu          s5, -14(s2)
                  lbu          a0, -27(s2)
                  sh           a1, 49(s2)
                  lw           s7, -7(s2)
                  srai         s6, t4, 11
                  andi         s4, ra, -1814
                  lui          t6, 909445
                  lbu          t2, -11(s2)
                  lb           s11, -32(s2)
                  lb           zero, -39(s2)
                  lb           t6, 39(s2)
                  sb           s9, 34(s2)
                  sb           zero, 16(s2)
                  xor          a0, tp, a3
                  lbu          t6, -50(s2)
                  lbu          t3, -26(s2)
                  sltu         a1, ra, a6
                  srli         t2, t5, 13
                  nop
                  sh           gp, 43(s2)
                  lh           s5, -27(s2)
                  lb           s9, 26(s2)
                  sll          s5, s8, t1
                  lb           t1, 39(s2)
                  sub          a6, s6, s2
                  sb           a7, 59(s2) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+674 #start riscv_load_store_rand_instr_stream_6
                  srli         t2, s9, 10
                  sb           s0, 1322(t3)
                  addi         s7, s7, -434
                  slti         s8, a0, -1162
                  srli         s1, tp, 12
                  addi         a7, t0, 1264
                  xori         a1, s11, 982
                  xor          s11, a5, s10
                  slti         s1, a7, 390
                  slt          gp, a6, t6
                  nop
                  lb           gp, -173(t3)
                  srai         a4, s4, 15
                  sb           sp, -585(t3)
                  slti         a0, s4, -1857
                  slti         t0, a3, -1018
                  slti         s7, t3, 693
                  andi         gp, s11, -393
                  addi         a4, s7, 300
                  sltiu        s7, s11, 427
                  lb           s8, -164(t3)
                  sb           t4, 403(t3)
                  slti         a4, a3, -829
                  sltu         a1, s11, t0
                  srl          t2, s1, s4
                  lw           t2, 1002(t3)
                  xor          s6, s4, tp
                  sb           s2, -629(t3)
                  slli         s7, t4, 3
                  sra          t6, gp, zero
                  sltiu        s8, s10, 2008
                  nop
                  lhu          ra, -86(t3)
                  lb           a6, 249(t3)
                  xori         t4, t0, 260
                  and          a5, s3, a7
                  addi         s1, s11, 1341
                  sub          gp, t4, s4
                  addi         tp, a3, 1585
                  lbu          ra, 467(t3)
                  sb           s6, -15(t3) #end riscv_load_store_rand_instr_stream_6
                  la           s6, region_0+1660 #start riscv_load_store_rand_instr_stream_2
                  srl          a1, a3, ra
                  lhu          ra, -1538(s6)
                  lw           s4, -884(s6)
                  sb           a0, -147(s6)
                  lhu          s7, -500(s6)
                  slti         a3, a4, -1617
                  srli         a3, s6, 16
                  lb           zero, -122(s6)
                  and          t0, s1, tp
                  ori          t1, a6, -817
                  sb           t1, -129(s6)
                  xor          a5, t2, s2
                  lb           s7, -1385(s6)
                  srai         t3, s0, 7
                  lbu          t6, -1561(s6)
                  sltiu        s11, a6, 308
                  xori         gp, a4, -954
                  sb           s2, -1609(s6)
                  addi         a5, t3, 1361
                  sll          a0, a0, s11
                  and          t0, a2, a0
                  slti         a0, a0, -1577
                  lbu          t6, 109(s6)
                  ori          s1, s2, 541
                  lbu          a2, -493(s6)
                  lbu          s2, -1176(s6)
                  slti         s10, gp, -1817
                  lh           t0, -656(s6)
                  lbu          t4, -1585(s6)
                  nop
                  sub          t4, tp, t4
                  sll          s5, s10, s0
                  nop
                  sb           sp, -1315(s6)
                  lb           s2, -763(s6)
                  lbu          a2, -989(s6)
                  nop
                  ori          ra, s5, 714
                  lhu          t6, -6(s6)
                  lbu          a5, -31(s6)
                  lb           a6, -374(s6)
                  sw           zero, -1416(s6)
                  sb           s10, -947(s6)
                  slti         s9, s1, -1280
                  andi         a6, a6, -969
                  lbu          s2, -565(s6)
                  sb           s7, -217(s6)
                  ori          t3, s2, 672
                  sub          a0, a0, a0
                  and          zero, a3, s6
                  sb           s3, -376(s6) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_1+1956 #start riscv_load_store_rand_instr_stream_8
                  sub          a6, a5, a1
                  sb           a1, -1769(s2)
                  sb           s7, -1531(s2)
                  lh           ra, -102(s2)
                  add          a6, s9, a4
                  lbu          s10, -158(s2)
                  add          a6, a0, s5
                  lb           a7, -1713(s2)
                  sb           gp, -1572(s2)
                  nop
                  sra          s9, a2, a7
                  add          s1, s10, t5
                  srli         a1, s10, 10
                  lb           s4, -1035(s2)
                  lbu          gp, -787(s2)
                  sb           a0, -1553(s2)
                  sra          a6, t0, s1
                  nop
                  sb           a1, -1773(s2)
                  lb           s5, -170(s2)
                  lb           s5, -1380(s2)
                  sb           t0, -1430(s2)
                  add          tp, t2, a7
                  lbu          tp, -70(s2)
                  lhu          t6, -1142(s2)
                  sh           s4, -1316(s2)
                  sb           t4, -1108(s2)
                  sltu         s8, s11, t0
                  lb           s10, -917(s2)
                  lb           t3, -1032(s2)
                  lb           a3, -1619(s2)
                  sb           t6, -491(s2) #end riscv_load_store_rand_instr_stream_8
                  la           a5, region_1+1840 #start riscv_load_store_rand_instr_stream_12
                  lui          a2, 196277
                  lb           s11, -37(a5)
                  sb           t3, -57(a5)
                  lb           t6, -33(a5)
                  sb           s8, 27(a5)
                  or           s4, a3, s6
                  lh           t1, 14(a5)
                  lb           t2, 37(a5)
                  lb           a1, 25(a5)
                  sltiu        t2, s1, -2018
                  lb           t4, 25(a5)
                  and          s11, s10, t2
                  or           a1, tp, a1
                  lb           t6, 43(a5)
                  lui          t6, 321287
                  lb           t6, 15(a5)
                  lw           t0, -60(a5)
                  nop
                  lbu          t0, 29(a5)
                  ori          a0, t5, 466
                  slti         s7, a5, -938
                  sb           s6, 7(a5)
                  srl          gp, a1, t1
                  sh           s11, 56(a5)
                  sh           a6, -14(a5)
                  lb           s5, -21(a5)
                  sb           s4, 7(a5)
                  lb           s9, 43(a5)
                  lbu          a7, 11(a5)
                  srai         t2, t5, 17
                  lbu          gp, -61(a5) #end riscv_load_store_rand_instr_stream_12
                  sll          a0, a2, s6
                  sll          t6, ra, t6
                  and          a4, s6, a4
                  bltu         sp, s10, 6f
                  srai         a1, s1, 8
                  add          t6, s0, t6
6:                slli         s2, s3, 24
                  andi         s9, a2, -1347
                  lui          ra, 449233
                  slt          s2, sp, s10
                  sltiu        s4, s8, 1672
                  or           a1, s6, s7
                  addi         t3, a2, 1195
                  slt          s4, t3, t6
                  add          t3, t2, s2
                  and          s2, s11, a3
                  bltu         a4, s3, 17f
17:               lui          ra, 932920
                  nop
                  sub          s11, s4, a0
                  add          t2, sp, t6
                  xori         t0, s2, -1659
                  bltu         zero, s5, 31f
                  slt          t3, s2, s7
                  nop
                  lui          zero, 117021
                  lui          a3, 161253
                  xor          a5, gp, a4
                  srl          s7, s5, t4
                  lui          ra, 841756
                  sltiu        a5, s4, 487
31:               srai         s10, sp, 2
                  srl          s0, t2, a5
                  bgeu         tp, t5, 41f
                  bge          a6, a4, 37f
                  slli         s11, s1, 22
                  srli         t4, s8, 22
37:               beq          t0, s10, 42f
                  sub          s10, s10, s11
                  srli         a4, s2, 23
                  auipc        t1, 877587
41:               or           a3, a1, gp
42:               ori          s1, s9, -1488
                  addi         s0, t2, -1466
                  bgeu         gp, a7, 52f
                  beq          t5, a3, 48f
                  srl          a0, t2, sp
                  srli         tp, a2, 20
48:               sub          a3, t1, ra
                  srai         t6, a6, 16
                  sra          s5, a4, a1
                  slli         a6, tp, 17
52:               srli         a5, s10, 17
                  sub          s7, s11, s4
                  sra          s11, t2, a0
                  xor          a6, ra, a6
                  slti         t0, a2, 657
                  slt          t6, sp, a7
                  ori          s2, t2, 1348
                  bltu         a1, s7, 71f
                  auipc        s0, 974261
                  bne          s3, a3, 72f
                  xor          s0, a6, sp
                  srl          t6, ra, sp
                  srai         a2, t4, 14
                  sra          a3, s2, t1
                  ori          tp, a6, 1484
                  slti         a0, t3, -1241
                  addi         ra, t4, 1882
                  add          s9, a2, sp
                  bge          t6, s6, 71f
71:               or           a6, t6, a6
72:               slt          t1, s2, t2
                  srl          a0, a3, ra
                  srai         a7, s4, 7
                  xor          a4, ra, s3
                  sltu         s8, t3, s6
                  or           s0, tp, t1
                  auipc        s6, 111459
                  auipc        t0, 303492
                  sra          s0, tp, t6
                  bne          t5, ra, 86f
                  sltu         s0, s3, t6
                  srai         a4, t2, 18
                  slli         s0, t4, 12
                  sltiu        a2, s7, 1885
86:               sll          tp, a3, a6
                  srai         t4, zero, 7
                  sub          a2, t4, gp
                  or           a2, a6, tp
                  slti         a2, s6, 108
                  srli         a3, s2, 14
                  srai         a1, a4, 28
                  sra          a4, a2, s0
                  lui          s5, 842316
                  srl          s7, a7, a5
                  bltu         ra, a4, 100f
                  bltu         a7, a0, 106f
                  xor          t0, s8, a3
                  sll          zero, s8, t0
100:              sub          s10, t0, tp
                  bge          s1, gp, 121f
                  slli         a7, s2, 14
                  slt          tp, gp, t5
                  srai         s2, a6, 17
                  srai         a0, tp, 25
106:              sub          a1, s2, a3
                  sub          t2, a3, a4
                  srai         s11, s7, 28
                  sltiu        s2, t6, -1129
                  xor          s4, s1, t5
                  or           a3, t4, a2
                  auipc        t6, 573369
                  sll          tp, a2, s7
                  xor          s5, s2, a1
                  srl          a1, t3, a2
                  addi         t3, a6, -487
                  srl          ra, s5, t4
                  bge          a1, a0, 132f
                  srl          s11, a6, a7
                  bltu         ra, s2, 125f
121:              beq          a0, t3, 139f
                  slt          s4, ra, a5
                  xori         a5, s4, -995
                  bgeu         a6, zero, 135f
125:              ori          s5, s8, 1297
                  sltu         t6, t0, s1
                  bgeu         t6, t1, 136f
                  srl          a0, tp, s10
                  nop
                  bgeu         s3, s8, 146f
                  auipc        s1, 243991
132:              srli         tp, zero, 28
                  srai         s2, a2, 28
                  slt          s1, s4, t6
135:              bltu         a6, s2, 138f
136:              bgeu         s3, a0, 140f
                  beq          t2, t1, 147f
138:              slti         gp, a5, -1666
139:              srli         a6, s1, 25
140:              slli         t3, a4, 25
                  ori          t4, s3, -1710
                  sltiu        s0, t3, -688
                  lui          s2, 684956
                  srl          s7, s9, gp
                  nop
146:              slt          t2, sp, tp
147:              ori          t1, s3, 1659
                  or           s11, a1, tp
                  slt          a3, a5, t1
                  sltu         t2, s11, ra
                  blt          s4, sp, 164f
                  xori         ra, a4, 611
                  srl          s7, a7, sp
                  bgeu         t0, s11, 174f
                  srai         s0, s6, 18
                  addi         s4, t5, 1047
                  sltiu        gp, t3, 49
                  srl          a4, a1, s9
                  bltu         a5, t6, 179f
                  bltu         a4, a7, 180f
                  bge          s4, s5, 163f
                  sra          zero, s9, s3
163:              bne          a6, gp, 165f
164:              sub          s2, a5, s6
165:              sltiu        s2, s4, 555
                  bltu         t4, t0, 174f
                  xori         t2, a0, -1552
                  or           a0, s6, t5
                  blt          s6, zero, 178f
                  xor          s8, a5, ra
                  sll          a4, s11, a5
                  slt          gp, t3, a0
                  srai         a4, sp, 13
174:              beq          s9, a3, 178f
                  lui          a6, 390451
                  bne          t5, a0, 186f
                  srai         s8, tp, 16
178:              and          t6, s9, a6
179:              sll          s9, t2, s9
180:              beq          a0, s0, 183f
                  ori          ra, s5, 747
                  lui          a7, 217757
183:              slt          a3, t0, ra
                  xor          s7, a7, t1
                  la           a2, region_0+1009 #start riscv_load_store_rand_instr_stream_3
                  srai         ra, sp, 9
                  auipc        s1, 151046
                  lbu          a3, 277(a2)
                  lb           t1, -214(a2)
                  nop
                  sub          a3, s4, s11
                  lhu          s8, -815(a2)
                  lb           a3, 271(a2)
                  sb           t1, 562(a2)
                  sb           zero, 551(a2)
                  srai         s1, s9, 2
                  srli         gp, s6, 20
                  srl          a7, t5, t4
                  sb           a3, -852(a2)
                  lb           tp, -497(a2)
                  lhu          t0, -455(a2)
                  xori         t0, t4, -1114
                  nop
                  sb           s8, 934(a2)
                  lb           a1, 374(a2)
                  srli         s10, t4, 14
                  lb           t0, -747(a2)
                  sh           s1, 741(a2)
                  lh           s9, 663(a2)
                  sb           s11, -799(a2)
                  sb           zero, -934(a2)
                  lbu          s8, -13(a2)
                  lb           s0, 806(a2)
                  sh           s5, 663(a2)
                  lb           a5, -922(a2)
                  or           a6, t3, t0
                  lh           a1, 901(a2) #end riscv_load_store_rand_instr_stream_3
                  and          s4, s9, t6
186:              auipc        s2, 818788
                  bgeu         a4, s6, 207f
                  beq          s5, sp, 201f
                  srai         t0, t4, 22
                  slli         a7, a1, 29
                  bltu         t0, s10, 193f
                  or           t1, t3, a4
193:              blt          a6, s11, 198f
                  sltu         s0, s1, s9
                  srl          t2, s3, s6
                  sub          a4, s4, t6
                  srai         zero, tp, 10
198:              bltu         s1, ra, 210f
                  and          a0, a5, s0
                  srl          s0, a5, s7
201:              nop
                  beq          a6, a5, 211f
                  xor          s9, a0, s9
                  sub          a0, a6, s5
                  srli         ra, s7, 15
                  bltu         t1, s2, 226f
207:              xori         t4, s3, -834
                  ori          s2, a5, -1185
                  sub          t3, t6, s11
210:              nop
211:              slt          a4, s11, s0
                  sub          t6, t0, s8
                  bge          zero, a2, 218f
                  addi         a6, s3, 1153
                  sub          a5, s0, s5
                  ori          s9, s9, 428
                  bgeu         t1, s4, 237f
218:              srai         a4, s5, 15
                  sltu         a0, t0, s6
                  sll          t2, s3, a2
                  auipc        t0, 450462
                  slti         ra, tp, -91
                  srai         a7, s2, 11
                  sltiu        t3, t6, 1171
                  addi         a6, s5, -858
226:              bltu         t5, a4, 229f
                  lui          a4, 439318
                  blt          zero, s9, 246f
229:              srl          t1, t4, s0
                  bltu         a5, ra, 238f
                  or           t3, s3, a7
                  slt          zero, a4, a4
                  lui          tp, 734385
                  or           s7, a6, s6
                  bgeu         t4, s2, 244f
                  add          t2, a5, ra
237:              nop
238:              add          gp, s1, s7
                  nop
                  xori         s6, t0, 1267
                  or           a1, a5, t4
                  and          t4, s11, sp
                  sll          a3, t2, t5
244:              srli         zero, tp, 2
                  xori         s4, s2, -590
246:              addi         a4, t0, 1636
                  sub          s2, a2, s5
                  nop
                  sub          s10, s10, sp
                  xor          s0, ra, t4
                  sltiu        s11, t6, 1843
                  sub          s10, s2, sp
                  sra          s5, sp, t5
                  srl          a2, gp, t5
                  add          t3, s1, s3
                  bltu         s7, s8, 267f
                  slt          s5, s5, t5
                  auipc        s1, 303734
                  srl          a4, s2, ra
                  slti         t1, s1, 1205
                  xor          s0, t1, t5
                  bltu         a4, s4, 265f
                  slti         s5, t0, -217
                  auipc        t6, 375749
265:              sra          s10, a3, a2
                  addi         s7, t4, 1642
267:              add          a5, s2, a0
                  or           s11, t2, gp
                  bltu         s5, a4, 272f
                  or           t0, a0, a3
                  auipc        s1, 526906
272:              beq          a3, a5, 277f
                  xori         a1, s0, 1111
                  sra          s10, s8, t3
                  lui          a4, 163414
                  and          tp, a7, t2
277:              andi         s5, s7, -1005
                  bne          s4, a6, 292f
                  bne          a6, t4, 299f
                  sra          t6, s0, t0
                  sll          a4, ra, a1
                  lui          s6, 83671
                  beq          t1, s0, 294f
                  sll          s1, sp, a6
                  bgeu         s2, s3, 286f
286:              slli         t4, a2, 3
                  addi         a3, ra, -1859
                  bgeu         t5, s0, 292f
                  slt          s0, tp, s5
                  sub          zero, s1, gp
                  xori         t0, s3, 352
292:              beq          a2, ra, 308f
                  sra          s5, zero, tp
294:              bgeu         a1, gp, 296f
                  slli         a5, ra, 31
296:              sltiu        s6, gp, -209
                  beq          s7, a6, 298f
298:              bgeu         s6, a6, 302f
299:              bge          t4, zero, 304f
                  sra          a5, s7, s0
                  lui          s7, 515317
302:              sll          a3, t3, s1
                  andi         s1, s0, -569
304:              blt          s5, ra, 306f
                  nop
306:              add          s5, t5, s4
                  add          s2, s3, t6
308:              sltiu        gp, a3, -641
                  bne          a7, s11, 312f
                  bgeu         s10, tp, 323f
                  sltu         a6, s6, t2
312:              slti         s5, t6, 982
                  andi         s0, a0, 836
                  slli         s0, tp, 25
                  add          a4, t2, s1
                  sltu         s4, t1, t6
                  andi         tp, a6, -691
                  lui          tp, 438438
                  lui          s2, 750244
                  slli         t6, a1, 21
                  or           s4, a1, s5
                  sra          s1, t5, t4
323:              blt          s7, a7, 337f
                  nop
                  bge          s9, ra, 334f
                  srl          s0, s5, zero
                  nop
                  sll          a7, a2, t5
                  bne          a6, a3, 349f
                  auipc        t4, 983108
                  and          a3, t0, zero
                  bltu         s6, a4, 352f
                  srli         s11, s1, 15
334:              andi         s7, a1, 15
                  bgeu         a6, s2, 353f
                  ori          s9, a5, -1021
337:              and          zero, s4, a5
                  sra          s10, t5, a1
                  bge          s11, s1, 359f
                  srai         s7, s10, 29
                  sra          s11, t0, t2
                  srl          s7, s11, sp
                  sra          gp, a2, sp
                  srai         tp, s4, 15
                  srai         tp, a7, 27
                  slti         t0, sp, 1633
                  slt          t0, t4, s2
                  srl          s5, s0, a1
                  la           t2, region_0+1765 #start riscv_load_store_rand_instr_stream_13
                  xor          t0, s5, t2
                  lb           a0, 7(t2)
                  sb           s11, -12(t2)
                  sb           s2, 8(t2)
                  sb           ra, 6(t2)
                  auipc        s8, 262945
                  andi         s7, s4, 1539
                  sb           t2, -8(t2)
                  and          t4, sp, s5
                  lh           zero, 13(t2)
                  lbu          s5, 10(t2)
                  lbu          t4, 12(t2)
                  sra          s8, s1, a3
                  lh           t3, 1(t2)
                  lbu          a3, -14(t2)
                  lb           s7, -2(t2)
                  sb           a6, -6(t2)
                  andi         s9, t6, 1697
                  lb           ra, -8(t2)
                  ori          s0, t6, -694
                  lui          s6, 483989
                  sb           a7, -4(t2)
                  sb           tp, 8(t2)
                  sw           t6, 15(t2)
                  sb           a7, 4(t2)
                  xor          a4, s10, gp
                  sb           t2, 0(t2)
                  sltu         s7, t0, a3
                  slli         ra, t6, 8
                  lbu          a3, 3(t2)
                  slti         a2, s8, 538
                  sub          s6, tp, s3
                  add          s4, zero, a2
                  lbu          t0, 15(t2)
                  lb           s4, 2(t2)
                  lbu          t6, 14(t2)
                  lb           s11, 3(t2) #end riscv_load_store_rand_instr_stream_13
349:              andi         ra, t0, 1889
                  bgeu         s1, a7, 353f
                  slli         s11, s2, 19
352:              srli         gp, s3, 14
353:              blt          s5, a3, 358f
                  srl          zero, a4, s9
                  add          t3, a4, s4
                  sub          a0, t3, s3
                  beq          s10, a7, 365f
358:              andi         a3, t5, -425
359:              blt          t5, s2, 370f
                  bltu         s10, a5, 380f
                  bltu         s1, t2, 373f
                  slt          s0, a6, tp
                  sub          a5, tp, s1
                  add          ra, a6, s5
365:              andi         a3, t2, -1333
                  sltu         t3, s10, a4
                  sra          t2, ra, s4
                  sub          t1, s11, t2
                  srli         a7, s6, 25
370:              andi         t0, s4, 1453
                  xor          s5, s7, t5
                  addi         s8, sp, -813
373:              sub          s0, a6, s2
                  srl          t1, t6, a5
                  andi         s5, ra, -714
                  slli         tp, t2, 5
                  sltu         a4, a4, t5
                  sll          t6, a5, a2
                  srli         t4, s2, 1
380:              srai         ra, t2, 12
                  and          s2, a5, s11
                  or           s1, a1, t5
                  srl          a5, sp, s0
                  slt          a3, sp, s10
                  xor          s1, ra, gp
                  slti         s10, s9, 1071
                  slti         gp, a4, -82
                  beq          t4, a0, 390f
                  andi         t6, sp, 557
390:              sub          t2, t3, tp
                  slti         s2, a1, 1738
                  or           t1, s2, a0
                  slti         s11, a1, 1945
                  beq          t0, sp, 398f
                  add          tp, a5, s7
                  xor          a0, sp, a1
                  addi         a7, a3, -35
398:              bge          t1, a1, 414f
                  bge          ra, t5, 410f
                  sub          t1, a1, t5
                  nop
                  srai         a3, s3, 20
                  slti         a0, t2, 1948
                  bge          a3, s8, 413f
                  srl          t6, t1, s7
                  or           t1, a2, t5
                  or           s0, t2, t3
                  bgeu         a5, gp, 413f
                  bne          a0, a1, 410f
410:              xori         a1, t6, -1440
                  slti         a4, s4, -665
                  srli         t3, s10, 29
413:              slt          t3, t6, t1
414:              slli         a5, a5, 23
                  add          s11, gp, a1
                  andi         s4, t4, 1969
                  slli         t6, t4, 4
                  nop
                  auipc        t1, 695810
                  beq          a0, s7, 430f
                  bge          sp, s2, 422f
422:              bge          s11, s1, 430f
                  ori          a1, a0, -285
                  bltu         zero, t3, 427f
                  srl          zero, t5, s11
                  bne          a2, gp, 429f
427:              sltiu        t4, ra, -84
                  sltu         a7, s10, a7
429:              bltu         t5, t0, 438f
430:              slt          t0, a2, s8
                  lui          s7, 555812
                  and          s8, t0, sp
                  srli         s9, t6, 16
                  or           s7, a5, tp
                  bge          s5, s3, 445f
                  andi         t3, a7, -1042
                  bltu         t4, a1, 442f
438:              srl          a3, t1, s3
                  slti         s11, s11, 416
                  or           s8, tp, a5
                  srai         s6, t2, 11
442:              bltu         a2, t5, 460f
                  sltiu        tp, s1, 593
                  sll          a1, a4, a1
445:              andi         t4, a7, 645
                  bgeu         sp, s0, 455f
                  bltu         t3, s9, 450f
                  sll          s2, t1, tp
                  blt          a4, a0, 453f
450:              bltu         t1, t3, 451f
451:              sra          tp, ra, tp
                  blt          t6, s4, 472f
453:              ori          t6, a6, 259
                  xor          t4, s0, s3
455:              ori          s5, s10, 424
                  slt          a3, t3, a0
                  xor          s8, s2, a0
                  add          a5, s10, a5
                  srai         a0, t3, 13
460:              srl          s7, s9, s8
                  xor          s1, s1, s5
                  add          a7, t5, s10
                  bgeu         t1, t3, 471f
                  srai         ra, a3, 16
                  bne          a2, s4, 474f
                  srl          t6, s9, a4
                  andi         s8, zero, -445
                  slt          a1, s2, a3
                  bge          s10, s6, 489f
                  nop
471:              bgeu         s7, a2, 473f
472:              slli         gp, t4, 21
473:              srai         a3, a4, 10
474:              addi         t0, a1, 1312
                  srl          s8, sp, a0
                  srl          t4, a7, s6
                  lui          t3, 1029121
                  xor          gp, a6, t5
                  slti         s2, a6, -1444
                  or           t6, s3, a3
                  nop
                  nop
                  xor          s5, a0, s3
                  srai         t2, t2, 9
                  ori          a5, t2, -330
                  nop
                  or           ra, a3, gp
                  andi         tp, ra, -1804
489:              xori         t0, a2, -1203
                  sub          t1, s9, a0
                  blt          s9, a5, 504f
                  srl          t1, s7, s4
                  xor          a6, t4, a7
                  andi         t4, a7, -633
                  lui          s6, 385465
                  and          s11, s9, a5
                  sltu         s0, s7, s7
                  andi         s10, a0, -664
                  ori          a6, t3, 1593
                  srli         t6, ra, 6
                  slt          s11, gp, s4
                  srli         zero, s4, 24
                  blt          s11, sp, 512f
504:              sub          s9, a5, a4
                  slt          s7, a2, t0
                  sra          t6, a6, s1
                  srl          s10, gp, t3
                  xori         s9, a4, -485
                  nop
                  srai         s10, sp, 5
                  blt          a4, a2, 531f
512:              bge          sp, t0, 526f
                  addi         ra, tp, -874
                  bgeu         sp, a1, 530f
                  bne          a2, ra, 526f
                  lui          gp, 936270
                  or           s1, s11, a2
                  slti         t4, a1, -1315
                  bge          s8, t1, 522f
                  lui          s1, 384169
                  auipc        s6, 554301
522:              bltu         s0, t3, 523f
523:              beq          gp, a2, 535f
                  bltu         a6, tp, 529f
                  srl          a4, s1, s9
526:              blt          t6, s2, 529f
                  nop
                  sltiu        s1, ra, -523
529:              beq          s0, ra, 533f
530:              srai         a2, s3, 24
531:              sll          a6, t1, a0
                  bgeu         s5, s11, 552f
533:              andi         s0, a5, 1166
                  slt          s5, t5, sp
535:              bne          gp, a7, 538f
                  sub          a4, tp, s3
                  sll          s5, t0, s11
538:              slti         s11, a6, 1361
                  bltu         t4, sp, 547f
                  andi         s1, s8, 92
                  srli         a5, t1, 28
                  and          s11, t4, s9
                  add          t4, zero, t3
                  sll          a4, gp, a5
                  ori          t1, s9, -340
                  xori         a5, s1, -1752
547:              nop
                  sll          t3, s9, s4
                  nop
                  sll          s7, a2, a5
                  beq          a5, t2, 556f
552:              bltu         s8, t5, 563f
                  bge          t6, a6, 555f
                  sltiu        s9, t3, 1398
555:              nop
556:              srai         s0, s3, 14
                  slli         a0, t2, 9
                  bltu         t1, s8, 567f
                  slli         t3, t2, 5
                  sltu         a7, s7, a0
                  andi         a2, s2, -798
                  sll          gp, s11, s10
563:              ori          s9, ra, 1184
                  srli         t2, s6, 9
                  srli         s10, a3, 4
                  srli         t4, s10, 10
567:              addi         s7, a4, -829
                  and          t0, s4, s8
                  xor          zero, a3, t6
                  blt          gp, s5, 571f
571:              sltu         zero, a1, t4
                  sub          gp, s11, a5
                  sub          tp, s8, zero
                  bltu         t4, t1, 584f
                  sltiu        s10, t3, 1051
                  bltu         t3, s7, 596f
                  blt          tp, sp, 597f
                  slt          a4, s9, a6
                  sltiu        s10, s1, -1298
                  sltiu        zero, s10, -1913
                  srli         s4, s7, 26
                  srai         a4, t4, 24
                  slt          s6, s4, a2
584:              sll          a6, s2, t1
                  addi         a5, s7, 1089
                  sub          gp, s7, t1
                  beq          s2, s1, 599f
                  and          t6, s3, ra
                  bltu         ra, s11, 592f
                  slt          ra, s0, a4
                  add          s0, t3, t1
592:              or           s5, s8, s4
                  xor          a5, t3, a4
                  nop
                  auipc        s1, 424245
596:              bgeu         a1, s5, 605f
597:              or           tp, s11, s5
                  bne          ra, sp, 618f
599:              srai         s7, t2, 17
                  ori          t3, s11, 970
                  slt          s6, s0, tp
                  bgeu         tp, s6, 604f
                  beq          a5, t0, 612f
604:              addi         s6, a1, 1378
605:              and          t1, t6, gp
                  bge          s6, gp, 624f
                  xori         tp, t1, -1352
                  xor          a5, t0, t2
                  slli         s10, t5, 10
                  slt          s11, zero, s6
                  andi         a2, a3, 352
612:              andi         s5, a6, 249
                  lui          t3, 360868
                  xori         s5, a2, -2028
                  slt          s6, t4, gp
                  andi         a1, a5, -1136
                  or           s8, a1, s1
618:              auipc        a7, 629011
                  and          s5, s3, t3
                  srai         a5, a4, 23
                  sub          t3, a7, t6
                  auipc        ra, 293394
                  slli         a1, gp, 9
624:              sll          a2, tp, t3
                  add          s7, s9, s11
                  sltu         t3, a6, s6
                  la           a1, region_0+1525 #start riscv_load_store_rand_instr_stream_15
                  ori          s4, t0, 1862
                  xor          s2, gp, tp
                  sub          a3, s0, a0
                  lh           t1, 17(a1)
                  or           a3, sp, s7
                  sb           zero, 42(a1)
                  lui          zero, 47422
                  srai         a5, a3, 0
                  xori         s10, tp, -1149
                  sltu         s0, s2, s11
                  srai         s4, s4, 12
                  auipc        tp, 1043858
                  slti         a0, gp, -167
                  sltu         s4, t1, s6
                  and          t3, t1, gp
                  slt          a4, a3, zero
                  lb           s0, 176(a1)
                  slt          tp, t2, t5
                  lh           s4, -31(a1)
                  and          s10, zero, a7
                  add          tp, a3, sp
                  lbu          s2, 78(a1)
                  lb           s4, -170(a1)
                  andi         a5, a2, -103
                  srl          t2, s7, t0
                  lh           t2, -87(a1)
                  xori         s5, sp, 220
                  lb           t6, 156(a1)
                  lb           t6, 82(a1)
                  sll          t4, a7, a7
                  xori         a7, a6, 475
                  lb           a7, -171(a1)
                  sltiu        s7, s4, -300
                  sltiu        s1, a4, -1617
                  srli         t3, t2, 9
                  sltu         s0, s4, t6
                  auipc        s1, 510209
                  sltu         s9, a1, a2
                  sll          s4, s3, t4
                  lbu          s10, 241(a1)
                  lb           s4, -170(a1)
                  sb           a2, -219(a1)
                  lhu          tp, -37(a1)
                  lbu          t3, 64(a1)
                  lbu          a0, -146(a1) #end riscv_load_store_rand_instr_stream_15
                  lui          s2, 1018204
                  bgeu         a5, s1, 636f
                  srl          s9, s8, s9
                  srl          a6, a2, a5
                  blt          t3, a5, 636f
                  sra          a2, a4, s3
                  sub          zero, a4, t3
                  slti         s4, s8, -1938
                  addi         s10, s9, -962
636:              addi         a1, s1, 924
                  slti         a4, s4, 2
                  add          s2, s6, a4
                  bne          t0, s3, 642f
                  sub          s2, zero, t1
                  addi         s4, sp, -15
642:              lui          t6, 974705
                  srai         t1, s3, 8
                  srai         s8, a1, 10
                  bne          s10, s2, 650f
                  srli         t3, tp, 4
                  nop
                  andi         s4, t1, 231
                  xor          gp, a6, a2
650:              blt          a6, s4, 653f
                  blt          a1, t5, 653f
                  sub          s0, s4, s1
653:              and          s0, s10, a1
                  xori         s10, t5, 1160
                  and          s2, sp, s10
                  sub          t0, s1, sp
                  sltiu        tp, a5, 2001
                  and          s2, t0, s8
                  sll          s10, a3, a7
                  addi         a0, a4, -1601
                  sub          a3, a0, s8
                  auipc        s4, 29840
                  srli         a5, s2, 21
                  srli         gp, s6, 25
                  bge          gp, t5, 669f
                  nop
                  addi         a1, s0, -840
                  bge          t3, gp, 676f
669:              slli         t6, t1, 27
                  or           t4, t4, t6
                  bne          ra, t1, 674f
                  addi         s10, a3, -356
                  sra          a4, gp, gp
674:              or           t4, t6, t0
                  blt          s4, t0, 686f
676:              sub          s9, a6, s11
                  slli         a2, a0, 10
                  sltu         a2, t5, a1
                  addi         zero, s9, -445
                  bgeu         t3, a0, 684f
                  sra          s4, ra, s1
                  auipc        gp, 1009427
                  lui          s9, 996112
684:              slti         ra, gp, 395
                  xori         s4, t2, -967
686:              lui          t6, 323226
                  slti         a1, t2, 1962
                  srai         t0, t3, 13
                  xor          s1, gp, sp
                  xor          s10, s4, t3
                  addi         a6, s5, 1673
                  sra          t6, s5, a0
                  bge          a1, t5, 698f
                  andi         s4, t3, 989
                  auipc        a3, 1016944
                  srai         a0, s4, 12
                  slli         s8, t4, 2
698:              sra          s1, s0, tp
                  xori         s7, sp, -100
                  slt          s8, a0, a0
                  slt          a3, s7, s8
                  sltiu        a5, t1, 1158
                  sltiu        tp, s6, 106
                  andi         t6, a4, -1037
                  ori          a7, s6, -1753
                  srai         a5, tp, 19
                  slt          t4, s3, gp
                  sll          t4, s10, a1
                  xori         a0, s6, 1322
                  addi         s4, s9, 1914
                  or           a2, t1, t3
                  sra          tp, t1, s0
                  addi         a0, a6, 1616
                  srl          a4, a0, s5
                  slti         zero, s11, 1717
                  slti         a7, a7, -183
                  sra          s6, t0, s0
                  lui          a5, 537866
                  lui          s7, 117987
                  sll          s1, s6, s8
                  add          ra, ra, gp
                  bltu         sp, a6, 735f
                  andi         s10, s5, 48
                  xori         s11, t0, -836
                  xor          t4, a7, a5
                  ori          s11, a3, -1334
                  srl          a1, t1, a0
                  blt          tp, s5, 742f
                  or           s8, t4, s11
                  beq          s11, a7, 731f
731:              slt          gp, t0, t2
                  lui          s10, 595970
                  blt          a2, t3, 749f
                  ori          t2, tp, 1367
735:              sub          a2, sp, s5
                  addi         a3, t6, 1138
                  srl          a7, s1, a7
                  andi         s2, s8, -2040
                  bgeu         sp, a3, 750f
                  bltu         s1, a4, 760f
                  srli         t0, a6, 16
742:              srl          t2, t0, s10
                  sll          a7, t5, a7
                  and          zero, tp, zero
                  andi         a7, t1, -1096
                  slli         s11, t1, 14
                  slt          s0, s2, a4
                  blt          t2, t2, 749f
749:              bne          t6, t4, 769f
750:              add          s7, a7, ra
                  or           a0, gp, t6
                  bne          s3, s5, 763f
                  addi         gp, t1, -176
                  bne          t2, a6, 759f
                  srai         a5, sp, 11
                  bltu         t4, a0, 759f
                  srl          a7, s11, s9
                  sll          a6, a7, zero
759:              blt          a3, s5, 769f
760:              xor          t6, t6, t6
                  beq          t2, t2, 764f
                  ori          t4, s5, -1106
763:              bgeu         t1, tp, 783f
764:              srli         s4, a1, 8
                  sra          s9, s6, a0
                  beq          zero, t6, 767f
767:              ori          t3, tp, -814
                  auipc        tp, 584605
769:              auipc        s10, 483779
                  bgeu         s2, a3, 774f
                  xor          zero, t6, t6
                  addi         a4, t5, 1994
                  or           a2, t5, t2
774:              sra          a7, s9, zero
                  slt          s5, tp, s9
                  sltiu        tp, t4, 796
                  add          t2, t0, sp
                  sltiu        s4, t1, -412
                  slli         t3, sp, 24
                  srli         a6, t6, 31
                  sltu         t1, tp, s11
                  add          a3, s8, zero
783:              addi         t0, s8, 1098
                  sltu         a6, s8, zero
                  andi         a2, a2, 1239
                  ori          s7, a4, 1741
                  sltu         t6, s8, s3
                  beq          s7, t3, 804f
                  bgeu         ra, a5, 809f
                  srl          s1, s6, t0
                  sltu         a0, s3, t5
                  and          a5, gp, s1
                  auipc        s8, 369613
                  srl          s1, a7, a5
                  auipc        ra, 313906
                  and          a7, ra, t6
                  slti         tp, a1, -145
                  srli         s1, t0, 9
                  lui          t0, 477983
                  sltiu        s7, t1, 1
                  sra          s9, a0, t5
                  beq          t5, a4, 814f
                  andi         s10, tp, 580
804:              auipc        s0, 767107
                  sra          gp, a6, s7
                  sub          t1, t4, a4
                  bgeu         a7, a2, 816f
                  bltu         a4, a3, 811f
809:              sll          a0, a0, t2
                  xori         s9, s7, 1040
811:              slt          s1, a7, a3
                  bne          s11, s5, 816f
                  andi         s10, a1, 56
814:              beq          s10, a2, 825f
                  slli         a2, s10, 9
816:              add          tp, s5, gp
                  bge          t3, gp, 831f
                  srl          a7, a0, a1
                  beq          sp, t2, 828f
                  nop
                  addi         t6, t1, 979
                  or           s11, a0, a0
                  beq          s10, t2, 828f
                  bltu         s9, a1, 832f
825:              bgeu         a5, a4, 827f
                  bltu         s9, a7, 844f
827:              add          s0, zero, s11
828:              ori          a5, t2, -509
                  slti         a2, s9, -1766
                  srli         a6, a1, 3
831:              sltu         a3, a7, t2
832:              slti         a2, a6, 1775
                  andi         s9, a7, -648
                  and          s8, t2, t3
                  slti         t3, a3, -791
                  addi         t2, s5, -1814
                  sra          t0, t3, a5
                  add          tp, s7, t6
                  xori         a3, s11, -1546
                  or           s5, s5, a5
                  srli         t6, a0, 2
                  xor          s0, zero, a7
                  sra          t3, a0, s9
844:              sll          ra, s8, s3
                  slli         s9, a1, 27
                  slli         tp, s6, 13
                  srai         a4, s0, 11
                  bltu         a7, t2, 850f
                  sltiu        t2, t4, -1700
850:              srai         a1, a4, 10
                  sltiu        t4, s6, -1976
                  bge          t3, t1, 865f
                  slti         gp, zero, 1454
                  sra          s6, a5, t0
                  bltu         t1, a3, 864f
                  xori         a7, t0, -470
                  add          tp, t5, t0
                  add          a6, s10, zero
                  slti         tp, s1, -1385
                  srai         t3, t0, 18
                  slt          t0, t1, s5
                  add          gp, zero, t1
                  la           t1, region_0+817 #start riscv_load_store_rand_instr_stream_0
                  andi         a5, s6, -1256
                  lbu          s1, 18(t1)
                  lbu          t2, -26(t1)
                  sh           s0, -45(t1)
                  slt          t4, a4, s2
                  lbu          a6, -44(t1)
                  addi         s10, s4, -2039
                  addi         a2, t6, 804
                  sb           a7, -47(t1)
                  lbu          t0, -30(t1)
                  and          s11, zero, s1
                  auipc        a4, 937291
                  lb           a3, 16(t1)
                  srai         s0, t1, 15
                  and          s8, zero, gp
                  sb           s11, -8(t1)
                  sb           a3, 27(t1)
                  sh           t5, 35(t1)
                  auipc        s1, 900978
                  lb           t4, 46(t1)
                  nop
                  slli         a7, t0, 3
                  sltu         zero, a7, s2
                  sh           zero, -53(t1)
                  ori          s2, gp, 295
                  sltiu        s8, t6, -1275
                  sb           gp, -35(t1)
                  srl          t6, t4, gp
                  sb           s11, 36(t1)
                  sb           gp, -33(t1)
                  ori          a7, gp, 569
                  sb           s0, -34(t1)
                  sb           s10, -14(t1)
                  sltiu        a7, s9, 163
                  sll          t4, s8, a6
                  lhu          t6, 47(t1)
                  sb           s3, -20(t1)
                  lbu          tp, 34(t1)
                  sb           s2, 61(t1)
                  nop
                  sll          zero, s8, s3
                  sb           tp, -30(t1)
                  lb           a1, 40(t1)
                  lb           a6, 64(t1)
                  sb           a6, 18(t1)
                  addi         a0, s1, -646
                  xor          s9, ra, a0
                  sh           s1, -19(t1)
                  lui          ra, 265801
                  lw           a5, 47(t1)
                  lb           t6, 39(t1) #end riscv_load_store_rand_instr_stream_0
                  sll          a4, a1, s8
864:              srl          gp, tp, a7
865:              srai         tp, tp, 31
                  addi         a5, zero, 1261
                  or           s6, t3, gp
                  slt          a7, a4, s5
                  andi         t3, sp, -1156
                  blt          t5, s4, 878f
                  bne          s8, s0, 876f
                  andi         s5, s7, -886
                  nop
                  nop
                  srl          a1, s2, s9
876:              slt          t2, a7, a2
                  ori          a3, s7, -864
878:              andi         a3, t4, -344
                  nop
                  andi         s1, s5, 1809
                  add          t6, t4, t6
                  bltu         s2, s6, 885f
                  bne          a0, a1, 903f
                  sll          s2, ra, gp
885:              auipc        t4, 973906
                  beq          s0, a7, 895f
                  andi         t1, s5, -1237
                  srai         s5, sp, 10
                  sra          a0, s11, s6
                  auipc        s4, 165492
                  ori          s7, a4, 1912
                  srl          a2, s2, a4
                  srl          s10, s6, a0
                  sra          a1, s8, a2
895:              sltu         a6, s7, s7
                  slti         s6, a6, 1714
                  bge          s2, s0, 917f
                  lui          t3, 336229
                  srai         s10, a7, 7
                  sltiu        s11, s8, 1868
                  add          zero, a4, zero
                  or           gp, s4, s7
903:              beq          a0, a1, 906f
                  addi         a7, s9, -2001
                  slli         a7, t1, 1
906:              lui          a2, 340997
                  xori         a3, s4, -789
                  bne          t1, s6, 911f
                  lui          t3, 305334
                  add          a2, a2, ra
911:              lui          t1, 37015
                  ori          t3, a4, 1324
                  nop
                  slt          s5, a6, s10
                  sra          t3, s11, s11
                  sub          s5, sp, t5
917:              bge          s2, t5, 928f
                  xor          s5, s5, s0
                  sltu         s10, s2, s1
                  xori         gp, a1, -1549
                  sltu         a2, s5, sp
                  andi         s7, t4, 721
                  slli         t2, a5, 23
                  and          tp, s9, s6
                  sub          a7, s3, t4
                  xori         a6, t0, 303
                  slt          s7, t2, t1
928:              andi         a2, a7, -973
                  bltu         s5, t0, 940f
                  bne          s6, a6, 934f
                  srli         s10, t6, 19
                  lui          a0, 358540
                  slli         a5, a3, 12
934:              srai         s11, t0, 19
                  bge          t2, t4, 938f
                  andi         s9, t0, 26
                  slli         t1, s1, 9
938:              andi         a5, a6, 103
                  sub          s9, s7, t4
940:              srl          s7, s2, a5
                  sll          s0, t4, a5
                  slli         a5, s2, 23
                  blt          gp, s6, 952f
                  and          a5, a1, t1
                  xor          t1, s4, s6
                  andi         a6, s6, 1768
                  slli         s0, s1, 11
                  sltu         s7, s11, s0
                  sltiu        s2, s0, -1200
                  blt          s1, s4, 966f
                  slli         s9, s2, 18
952:              bgeu         a4, t6, 970f
                  bltu         s4, a3, 962f
                  bne          ra, a4, 958f
                  xor          t2, a5, t0
                  slli         ra, s1, 0
                  bltu         s2, s0, 959f
958:              andi         a7, a3, 1067
959:              add          s8, sp, a2
                  bge          s2, a6, 980f
                  sub          t6, s2, tp
962:              and          s8, sp, sp
                  xor          a1, s2, a5
                  bge          s7, s5, 969f
                  sub          t6, a1, s1
966:              auipc        s9, 574561
                  blt          a3, t2, 981f
                  sltu         t2, a6, s0
969:              beq          zero, sp, 989f
970:              slt          s11, gp, t6
                  sll          s6, a1, s7
                  ori          s11, s7, 1723
                  xor          s8, a7, a2
                  nop
                  xori         s2, s4, -1584
                  bne          s4, t6, 988f
                  xor          s5, s5, s6
                  or           t1, t4, a5
                  srl          s2, s1, s9
980:              sltiu        a7, s11, -1609
981:              and          a6, s10, s7
                  slt          zero, s3, sp
                  slt          s10, t2, t5
                  srai         s5, zero, 22
                  bne          a1, s3, 990f
                  bgeu         a1, t1, 991f
                  sltiu        tp, tp, -1891
988:              and          a7, t2, gp
989:              sltu         s2, s10, t6
990:              sra          a1, t3, ra
991:              bge          s10, s6, 999f
                  srli         s8, s11, 19
                  ori          a1, t3, 569
                  add          s8, s11, tp
                  slt          a6, a5, a4
                  beq          t1, t1, 997f
997:              andi         t0, t2, -1110
                  andi         a3, a1, -699
999:              srli         gp, tp, 19
                  blt          t6, s8, 1008f
                  xor          t1, a2, a2
                  blt          t0, a1, 1005f
                  ori          a1, s0, -1442
                  bne          s9, gp, 1005f
1005:             lui          t4, 1023322
                  beq          s9, s6, 1008f
                  blt          s7, a3, 1027f
1008:             bgeu         tp, s1, 1021f
                  sltu         s4, sp, s4
                  bltu         t6, s6, 1020f
                  sra          t2, ra, s10
                  sltiu        tp, a5, 889
                  srli         s8, a3, 2
                  srli         s6, a4, 11
                  sll          t0, s6, s9
                  srli         s1, s10, 8
                  bgeu         s6, t1, 1021f
                  lui          s5, 320947
                  xori         a4, s11, 795
1020:             slli         s11, s6, 30
1021:             sub          s4, s7, sp
                  slt          a6, ra, s6
                  bltu         s8, s3, 1043f
                  slli         s8, t0, 12
                  sub          a1, t4, s11
                  slli         s6, a5, 20
1027:             sub          tp, sp, s8
                  sll          t2, gp, a2
                  or           a5, a7, s5
                  and          zero, gp, s7
                  andi         t4, a4, -240
                  or           a2, t1, s10
                  auipc        s4, 1028319
                  sltu         t0, s0, t6
                  auipc        zero, 259661
                  blt          s5, a2, 1037f
1037:             and          t3, a1, t6
                  sub          a5, t0, s2
                  srai         a6, s4, 31
                  beq          t0, t0, 1049f
                  sra          a7, t0, t2
                  bgeu         gp, s2, 1044f
1043:             xor          t3, s2, ra
1044:             sltu         t4, tp, s3
                  slli         a5, gp, 21
                  xor          s2, sp, t5
                  srli         a2, a0, 28
                  auipc        zero, 11247
1049:             andi         a0, t0, -45
                  slt          a4, a3, t6
                  sltiu        t2, t5, -836
                  sll          s10, s9, a5
                  sub          s1, t0, a7
                  addi         s4, a3, 664
                  bne          gp, s10, 1058f
                  slt          a3, tp, a5
                  slli         s1, a4, 30
1058:             xori         a7, tp, -2005
                  xor          s6, s2, s3
                  beq          gp, s4, 1068f
                  slti         gp, t3, 217
                  addi         a7, a7, -990
                  slt          gp, s2, s2
                  lui          t1, 528301
                  srai         t3, a3, 6
                  xori         t6, sp, -382
                  addi         s5, a1, 48
1068:             add          s8, t0, t4
                  ori          zero, s11, 1801
                  slt          a1, a0, t6
                  bltu         t4, zero, 1083f
                  addi         a6, s9, -471
                  addi         s2, ra, -93
                  xor          s10, s2, gp
                  xori         a6, t5, 380
                  sltiu        s8, a3, -1701
                  srli         t4, zero, 15
                  bltu         zero, s10, 1079f
1079:             bltu         s0, s7, 1088f
                  srai         gp, ra, 7
                  auipc        a1, 504251
                  ori          t6, s10, 825
1083:             andi         t0, s4, 1521
                  andi         a1, sp, -1301
                  addi         t0, s11, 1793
                  slli         a3, t0, 6
                  sub          s11, s10, gp
1088:             srai         s10, t4, 30
                  srli         s1, t2, 27
                  xor          s5, a0, s8
                  sra          a2, a2, a5
                  sltiu        s5, t6, -1782
                  slt          tp, t1, a4
                  sltiu        s2, a2, -1542
                  ori          a4, s0, -316
                  bltu         t0, sp, 1114f
                  auipc        zero, 743468
                  srl          s4, s5, zero
                  and          s0, t2, gp
                  addi         s0, a1, 550
                  and          t1, s11, a6
                  sltu         s6, t0, s8
                  slti         a2, gp, -1785
                  sra          a0, ra, ra
                  and          a6, s4, a4
                  xor          a2, a4, t1
                  add          a3, s9, s8
                  or           zero, gp, tp
                  srli         s1, tp, 23
                  slt          zero, s0, tp
                  bne          a0, ra, 1122f
                  slti         s1, a1, -1595
                  xor          a1, sp, s8
1114:             nop
                  ori          s10, s1, 135
                  srai         s0, a6, 6
                  sll          s5, t0, sp
                  auipc        s10, 780510
                  and          t6, a5, t5
                  xor          a5, ra, a1
                  sltu         a1, s6, a3
1122:             beq          s7, ra, 1135f
                  lui          s2, 71567
                  xor          a4, t1, t6
                  srl          t2, t4, t6
                  bgeu         s0, s6, 1131f
                  ori          s10, t0, 1907
                  sll          t3, s3, s7
                  sltiu        s4, a1, -1192
                  bgeu         t4, t4, 1139f
1131:             andi         ra, s11, -1109
                  srai         s4, tp, 12
                  sra          t3, ra, a4
                  or           a5, s5, t5
1135:             srli         a0, a1, 17
                  blt          s7, a0, 1141f
                  srli         s11, a7, 29
                  sll          s1, t4, t6
1139:             bge          gp, s10, 1143f
                  add          s0, s5, a0
1141:             beq          s2, a0, 1144f
                  blt          t2, t3, 1147f
1143:             bltu         a4, s4, 1145f
1144:             addi         t6, t3, -1446
1145:             bge          t0, a0, 1153f
                  bne          s10, a3, 1166f
1147:             ori          s6, a4, 1241
                  auipc        t0, 20006
                  addi         s0, a0, 232
                  lui          t3, 265219
                  slt          s11, t4, a7
                  and          s6, gp, t0
1153:             slli         t3, a0, 1
                  lui          a7, 145005
                  srli         t4, t0, 11
                  ori          t4, s3, 1690
                  slt          s4, s7, a1
                  add          s7, s9, s7
                  ori          gp, s4, 1675
                  blt          s10, zero, 1180f
                  nop
                  lui          a3, 244397
                  slli         t4, s2, 9
                  ori          t4, a1, 347
                  sltu         s2, t5, s11
1166:             srli         s8, s0, 2
                  slt          t6, a3, a0
                  srl          zero, a7, t1
                  srai         a4, gp, 1
                  srai         a2, s9, 0
                  or           t3, a7, zero
                  slti         t1, t5, -111
                  nop
                  srl          a3, s4, tp
                  srli         s11, t0, 14
                  and          t2, s6, a1
                  nop
                  slti         s2, a3, -1172
                  ori          a0, tp, 801
1180:             bne          s1, t5, 1191f
                  sub          s10, t1, t1
                  lui          a1, 702181
                  xori         gp, s6, -1328
                  srli         t1, a4, 11
                  bne          a5, t2, 1195f
                  bgeu         t5, s8, 1189f
                  bltu         t3, s11, 1203f
                  nop
1189:             xor          t2, a7, t1
                  and          s0, a3, t2
1191:             xori         s11, a0, 658
                  sub          s0, s1, s8
                  and          s2, a3, s0
                  xori         s8, ra, -44
1195:             srl          a5, a7, t4
                  or           s2, s7, a6
                  add          ra, a6, s5
                  sra          tp, a4, s0
                  xor          s10, a7, t0
                  sltu         a0, a4, s1
                  slt          s1, tp, s9
                  or           a4, a5, s4
1203:             bge          t5, a6, 1206f
                  srai         zero, t2, 14
                  beq          s5, t0, 1219f
1206:             beq          a5, s10, 1226f
                  slt          s10, t4, s7
                  xori         a3, s10, 1277
                  srai         s2, a2, 1
                  andi         a1, ra, 2034
                  slt          t2, t5, s2
                  slti         s6, s6, 521
                  and          s5, s7, a5
                  sra          t1, s3, a4
                  nop
                  slt          a4, a3, tp
                  bne          s7, t6, 1228f
                  bltu         t0, s6, 1220f
1219:             ori          ra, t2, -2036
1220:             beq          s2, s3, 1229f
                  addi         s11, s11, 966
                  slli         t1, t3, 20
                  or           tp, t3, a5
                  addi         s8, s2, 1067
                  srai         t6, s0, 20
1226:             bge          a6, t3, 1229f
                  bltu         s10, s1, 1231f
1228:             sll          t3, s7, a6
1229:             xori         s8, a6, -723
                  and          tp, t1, a0
1231:             bge          s11, a2, 1234f
                  or           a5, a2, a1
                  srli         a7, a7, 27
1234:             sra          s10, a5, s7
                  xor          s6, a0, t6
                  sltiu        s10, a0, -795
                  srai         a2, t3, 7
                  sub          s5, a5, a6
                  or           a1, t0, a2
                  bltu         t6, a4, 1254f
                  and          zero, tp, s3
                  auipc        s1, 56015
                  sra          t3, a7, ra
                  addi         a2, a7, -1091
                  bgeu         zero, t6, 1265f
                  slt          a2, tp, t6
                  ori          s4, s8, -758
                  addi         t0, s7, 1667
                  lui          s8, 253148
                  lui          s4, 772914
                  bgeu         s11, a6, 1259f
                  and          s11, s10, s1
                  ori          t0, s5, -1419
1254:             srai         s6, s1, 27
                  bne          a6, s7, 1256f
1256:             ori          s7, t0, 1375
                  bgeu         t0, tp, 1277f
                  andi         t6, ra, 218
1259:             lui          a6, 33247
                  srai         gp, s3, 20
                  slti         ra, s2, -1815
                  slt          t3, t3, a0
                  lui          tp, 495681
                  bgeu         t4, t5, 1266f
1265:             or           a4, a3, a5
1266:             sra          t0, t6, t5
                  sll          tp, t4, zero
                  bne          t6, a3, 1281f
                  nop
                  slti         s0, ra, -547
                  bne          t4, s5, 1275f
                  sltu         gp, tp, s5
                  sltiu        t1, t0, -1377
                  sll          s2, s2, s6
1275:             slti         tp, a2, 1263
                  xor          s4, a3, gp
1277:             add          s6, s6, s3
                  bltu         s4, a5, 1283f
                  slt          t3, a3, s8
                  ori          a4, a6, 1283
1281:             lui          s7, 456325
                  add          a3, t6, a3
1283:             bge          a7, a1, 1303f
                  sll          t6, a5, a0
                  ori          a1, t5, -125
                  blt          s1, s5, 1289f
                  and          gp, ra, t4
                  slti         s5, a5, 118
1289:             srl          s8, t6, t5
                  ori          ra, s1, 1609
                  slli         t0, s6, 5
                  sra          a5, a4, a1
                  blt          a2, a4, 1309f
                  nop
                  andi         s5, s2, 1620
                  xor          ra, a0, s6
                  add          zero, s11, s10
                  xor          s11, t2, a7
                  sltiu        a7, s1, -129
                  sll          a2, s10, a4
                  srli         a6, a3, 11
                  sub          s1, t1, t5
1303:             sltu         zero, s9, s9
                  add          a2, s8, a4
                  andi         s0, s9, -514
                  auipc        a5, 717642
                  and          t6, t2, zero
                  beq          s5, s7, 1313f
1309:             sltiu        a1, s0, 1394
                  add          a3, s4, t4
                  lui          s9, 637482
                  bge          s8, a5, 1322f
1313:             xori         ra, tp, -1793
                  slti         s5, t2, -816
                  xori         s7, ra, 1842
                  andi         s11, s1, 1215
                  srai         a6, a2, 27
                  bge          s5, s9, 1330f
                  srai         tp, t2, 22
                  srl          a6, a1, zero
                  nop
1322:             sub          s8, t4, gp
                  sltu         s9, t5, t2
                  slt          a3, ra, t4
                  and          t6, s11, gp
                  addi         a3, t1, 609
                  auipc        a1, 374454
                  srai         zero, a4, 31
                  bltu         t5, t2, 1332f
1330:             nop
                  xor          a7, s7, t4
1332:             sltu         a6, s2, a2
                  bge          s9, s10, 1342f
                  sra          t2, a5, ra
                  beq          a3, zero, 1340f
                  addi         gp, s2, -567
                  xor          t0, ra, t4
                  bne          s7, gp, 1347f
                  xor          t6, s11, t0
1340:             and          a0, s7, s3
                  auipc        s7, 460203
1342:             lui          tp, 41944
                  slt          s2, s5, a1
                  bne          s1, s7, 1364f
                  xor          s9, a5, s6
                  auipc        a7, 924074
1347:             bge          sp, t6, 1365f
                  srl          s9, gp, s11
                  lui          t2, 79571
                  bltu         s8, gp, 1351f
1351:             slti         t3, s6, 461
                  slt          a5, t1, s6
                  xor          ra, s4, a2
                  bltu         s5, s2, 1362f
                  ori          a2, t2, -578
                  slli         tp, a0, 2
                  sll          gp, s8, a2
                  ori          s5, tp, 1490
                  addi         a4, a7, -1986
                  nop
                  sra          s8, a5, s8
1362:             andi         a5, tp, -319
                  sub          s5, gp, a2
1364:             add          tp, t3, ra
1365:             bge          s8, a4, 1376f
                  bne          s9, a4, 1380f
                  bne          t0, a6, 1375f
                  and          tp, a5, a2
                  sltiu        s4, tp, -1096
                  srai         zero, s7, 11
                  blt          s5, t3, 1374f
                  bne          t1, t4, 1381f
                  srai         s8, a6, 20
1374:             blt          s7, a5, 1394f
1375:             sltiu        t6, a5, -506
1376:             slt          s0, a3, a7
                  addi         s8, a3, -1462
                  xori         a3, s2, -1521
                  add          zero, a2, s4
1380:             ori          t0, s4, -654
1381:             and          s9, sp, a2
                  ori          ra, tp, 905
                  add          s11, a5, s5
                  sra          t4, a0, s9
                  bne          a0, ra, 1386f
1386:             sra          a4, a3, a5
                  xor          a0, t4, a2
                  add          a2, s2, sp
                  lui          a3, 817636
                  auipc        a7, 901272
                  bltu         a1, a5, 1393f
                  srai         s9, s11, 7
1393:             bgeu         sp, a6, 1404f
1394:             srl          t6, s10, gp
                  bgeu         t4, s9, 1397f
                  xor          a7, a4, zero
1397:             and          s9, zero, s9
                  srai         s5, t6, 28
                  addi         t4, t3, -1907
                  bltu         s11, a6, 1412f
                  bgeu         ra, s1, 1417f
                  add          a2, s9, a7
                  xor          a6, s4, ra
1404:             lui          a5, 1043261
                  bne          t5, a2, 1406f
1406:             slti         a0, t0, -1786
                  slt          s9, s8, s1
                  slti         zero, t4, 749
                  lui          s11, 559902
                  xor          t6, t2, a7
                  srl          s5, s11, a0
1412:             bge          t6, s2, 1416f
                  bne          s5, t3, 1417f
                  add          t0, t2, s1
                  bne          s7, tp, 1420f
1416:             sra          s2, a3, s10
1417:             lui          s7, 869061
                  nop
                  bltu         a5, a1, 1429f
1420:             or           a7, t6, tp
                  slt          s6, a7, s1
                  ori          s4, s5, 629
                  sub          s5, s9, tp
                  sra          a7, t2, a5
                  beq          a1, ra, 1428f
                  sll          ra, t4, a0
                  lui          s1, 255310
1428:             bge          s10, a3, 1448f
1429:             blt          a4, s0, 1437f
                  bge          sp, s0, 1433f
                  add          t1, t6, a6
                  xori         zero, t6, -1555
1433:             lui          tp, 470917
                  andi         a0, a1, 295
                  beq          t6, s4, 1455f
                  sub          s7, s0, tp
1437:             sltiu        a3, a3, -1497
                  xor          a2, t0, a4
                  andi         tp, t2, 1617
                  sra          s4, t4, t6
                  blt          s5, t1, 1446f
                  sub          gp, s5, s3
                  srli         s5, t1, 28
                  srl          s7, gp, tp
                  sll          s4, ra, a2
1446:             and          s5, s5, a5
                  slli         s6, s9, 29
1448:             or           a0, ra, t6
                  srai         ra, a5, 7
                  beq          t0, s5, 1463f
                  blt          s10, ra, 1454f
                  srai         a0, s6, 15
                  sra          a4, t3, t2
1454:             ori          t1, ra, 836
1455:             blt          a7, a2, 1466f
                  slti         a3, s2, 513
                  srl          s11, s11, t0
                  bgeu         a0, s1, 1467f
                  ori          s2, a3, -1630
                  lui          zero, 991080
                  blt          a3, tp, 1466f
                  beq          t2, a1, 1471f
1463:             andi         a1, a6, 1141
                  andi         a4, zero, -1334
                  ori          gp, s6, 1437
1466:             slt          a1, s4, sp
1467:             and          a7, t3, t1
                  sll          a3, s6, t0
                  xori         t1, sp, 712
                  nop
1471:             srli         zero, zero, 28
                  auipc        a1, 320185
                  sub          s5, a1, gp
                  nop
                  bltu         s10, s2, 1495f
                  bgeu         gp, s6, 1494f
                  srai         s4, t0, 22
                  add          a4, s8, s11
                  or           a0, s5, gp
                  blt          s4, s10, 1482f
                  sll          a5, sp, sp
1482:             blt          s4, s0, 1502f
                  bgeu         gp, a3, 1492f
                  sll          t2, zero, s9
                  lui          s11, 65990
                  and          s5, s11, s4
                  sltu         tp, a3, a6
                  sub          a4, sp, a0
                  addi         zero, s0, 1823
                  bne          gp, a2, 1504f
                  addi         a3, t5, -1849
1492:             slt          s9, t5, s10
                  andi         ra, t2, 1268
1494:             sltiu        s9, a6, -1525
1495:             auipc        a2, 231470
                  slti         a3, s0, -1194
                  sub          t4, sp, zero
                  srl          a5, t4, s1
                  sltiu        s6, t2, 538
                  sltiu        s7, ra, 749
                  srl          t6, sp, s3
1502:             bgeu         zero, s2, 1507f
                  ori          a5, sp, 312
1504:             sltiu        a2, tp, 1818
                  sll          s1, a2, s5
                  ori          t4, s3, -787
1507:             lui          a2, 314061
                  auipc        s1, 506110
                  srai         s10, ra, 8
                  lui          s1, 1033283
                  bne          s2, a2, 1516f
                  sltu         a2, s5, t2
                  sra          s0, gp, s9
                  and          s7, zero, t1
                  beq          a5, t0, 1535f
1516:             bge          t2, a1, 1536f
                  addi         a4, t5, 674
                  ori          a7, a2, -690
                  nop
                  bge          a7, s11, 1523f
                  bne          t1, s10, 1539f
                  sltiu        s2, s0, -943
1523:             beq          s2, a1, 1527f
                  xori         ra, s9, 266
                  slti         t6, s1, 976
                  addi         zero, t0, -1776
1527:             nop
                  sltu         t4, s5, tp
                  and          s4, s6, s5
                  lui          a1, 333613
                  auipc        s8, 1002774
                  bge          s0, t3, 1543f
                  auipc        a6, 498069
                  blt          s6, t0, 1537f
1535:             ori          a2, gp, -1626
1536:             beq          t5, s6, 1544f
1537:             xori         zero, a7, 1585
                  srli         a4, a4, 12
1539:             addi         t6, s11, 457
                  nop
                  beq          a6, s6, 1542f
1542:             sltiu        s8, t2, -380
1543:             sub          s1, s5, s4
1544:             slli         a1, ra, 16
                  sltiu        s0, t5, 1447
                  bge          sp, s10, 1549f
                  sltu         ra, s5, a3
                  and          a0, s11, a2
1549:             bltu         a5, s10, 1561f
                  sra          a0, sp, a2
                  sltiu        s6, a5, -72
                  or           s6, zero, zero
                  slti         s10, s0, -97
                  slt          gp, t2, s8
                  add          t2, s1, t0
                  beq          a3, a6, 1566f
                  addi         t3, s3, -915
                  andi         s10, s2, -180
                  xor          ra, sp, s0
                  srai         t6, t1, 22
1561:             sltu         zero, sp, s8
                  beq          ra, sp, 1564f
                  bgeu         s5, t2, 1572f
1564:             bltu         s3, zero, 1577f
                  beq          a3, s0, 1573f
1566:             xori         s11, a2, 1025
                  bge          s5, tp, 1587f
                  or           a4, tp, t5
                  or           s11, s9, s1
                  nop
                  xori         t0, s9, 1191
1572:             xor          t1, a5, a1
1573:             add          s6, gp, a6
                  sub          t1, a3, ra
                  srli         a3, a7, 3
                  sra          t1, ra, zero
1577:             bltu         a4, ra, 1580f
                  bne          sp, s8, 1589f
                  bgeu         t5, s3, 1580f
1580:             slt          t1, s7, s6
                  or           s7, a7, a6
                  beq          a4, t5, 1598f
                  addi         s0, t5, 1456
                  srai         t6, s8, 10
                  and          tp, s5, s0
                  auipc        s8, 817324
1587:             and          a4, a5, t5
                  or           s0, s1, s5
1589:             auipc        ra, 710830
                  slti         a0, s11, 254
                  andi         a5, t1, -633
                  or           a6, t4, s11
                  srl          a3, s11, a4
                  xori         gp, zero, 1464
                  bne          t2, a6, 1600f
                  srl          s9, t4, t5
                  slti         a2, t2, -1150
1598:             sltiu        s1, tp, -816
                  bne          zero, a4, 1608f
1600:             andi         s1, s7, 1652
                  xor          s1, s4, s6
                  slt          a4, s10, s6
                  or           s1, s6, s11
                  bne          a4, s4, 1608f
                  srli         gp, a5, 26
                  xori         s1, a2, -70
                  nop
1608:             xor          gp, a1, a6
                  add          s1, s5, t1
                  slli         s10, a2, 20
                  nop
                  sra          ra, a1, a4
                  sub          a4, s8, t1
                  sltiu        a1, t6, -756
                  auipc        s4, 1035801
                  or           t3, s4, t2
                  srai         a2, zero, 21
                  lui          tp, 520913
                  addi         zero, tp, 755
                  ori          a3, sp, 877
                  auipc        s8, 5608
                  sltiu        s9, ra, 1099
                  sll          a3, t4, t4
                  ori          gp, t0, -277
                  ori          a0, s11, 1583
                  andi         s8, gp, 867
                  bgeu         ra, s10, 1647f
                  bgeu         s6, s7, 1648f
                  beq          sp, t1, 1633f
                  ori          s10, t3, -276
                  bltu         a4, a7, 1632f
1632:             add          t6, t0, s3
1633:             or           t0, t1, s6
                  nop
                  sub          s11, t1, t1
                  srli         s2, s2, 14
                  slt          t1, t5, a0
                  sra          t1, tp, a6
                  bltu         t1, s7, 1653f
                  sra          tp, t1, s7
                  srai         s0, s9, 23
                  blt          a5, t4, 1651f
                  xor          t3, t2, a3
                  addi         t3, s3, 1921
                  xori         s1, s9, -518
                  andi         s7, t3, -244
1647:             andi         t3, a7, -2002
1648:             bgeu         a1, s11, 1658f
                  andi         s11, s4, -411
                  blt          a1, a7, 1654f
1651:             sltu         s8, gp, s8
                  or           a1, gp, s4
1653:             bgeu         gp, a1, 1666f
1654:             sll          a6, tp, s6
                  srli         a0, a3, 13
                  and          tp, zero, s8
                  srai         s9, a7, 14
1658:             add          s2, s8, s10
                  sll          tp, s1, s10
                  addi         s11, s8, -166
                  slt          a5, a0, a0
                  xor          s4, a4, sp
                  slti         a3, a0, 660
                  sll          a1, t1, a1
                  or           t3, s0, t4
1666:             ori          a3, t6, -1698
                  auipc        s10, 581140
                  lui          a5, 208501
                  bne          a6, s1, 1674f
                  slti         a7, ra, -1077
                  or           tp, a1, t0
                  xor          a0, t3, t0
                  srli         t1, t6, 18
1674:             slt          a1, a5, tp
                  sltiu        s7, s2, -367
                  bne          t4, s2, 1687f
                  andi         tp, gp, -684
                  bgeu         a6, s4, 1696f
                  bgeu         a7, s1, 1684f
                  slt          s6, a7, s11
                  bge          s5, gp, 1684f
                  slli         s9, s2, 4
                  bge          sp, a5, 1703f
1684:             nop
                  slli         t1, a7, 30
                  lui          s7, 493459
1687:             and          a6, a1, a0
                  blt          s9, s0, 1708f
                  sll          s7, s7, s10
                  add          t2, s7, tp
                  sub          s1, sp, a4
                  sub          a7, t0, t6
                  srl          a2, s5, s6
                  bltu         a4, s7, 1695f
1695:             slli         t6, s8, 3
1696:             bge          a0, gp, 1699f
                  sltu         a6, t4, a0
                  sub          t3, t5, t3
1699:             addi         a6, a3, -1805
                  srli         s8, a1, 1
                  bgeu         s11, s0, 1710f
                  bge          s8, a5, 1705f
1703:             sra          s8, ra, sp
                  srl          a2, s9, a0
1705:             beq          t5, sp, 1708f
                  sub          a3, a5, t6
                  ori          a3, s0, 1135
1708:             xor          s11, t3, t3
                  slt          a1, a4, ra
1710:             lui          a4, 575082
                  srli         a6, t2, 9
                  ori          a6, s4, -1038
                  blt          tp, gp, 1722f
                  add          t2, t1, a2
                  xori         a3, s7, 1053
                  slt          s9, s1, s10
                  nop
                  slt          s10, a0, a6
                  xori         t0, s2, 1828
                  bltu         t0, tp, 1722f
                  bltu         t2, s8, 1726f
1722:             sltu         t0, a2, zero
                  sltu         s7, ra, s11
                  add          s7, t2, sp
                  nop
1726:             and          s8, a1, t0
                  and          zero, t1, t2
                  andi         ra, t5, -106
                  xori         s9, t6, 1513
                  xori         ra, t4, 678
                  xori         s5, a4, -1350
                  nop
                  xor          s4, a0, a5
                  srai         s8, t5, 22
                  srli         t6, tp, 14
                  auipc        a1, 407477
                  ori          t6, s9, -1913
                  beq          t1, a3, 1749f
                  sltiu        a2, s4, 1078
                  slli         t1, s2, 15
                  auipc        s4, 151885
                  bgeu         a3, s11, 1750f
                  sra          s1, s1, t0
                  nop
                  bne          t4, s0, 1747f
                  slt          a4, a2, a1
1747:             sltu         s4, s5, s8
                  xor          a7, s11, s1
1749:             sll          a2, t6, a7
1750:             nop
                  sub          s2, s3, a5
                  srli         a6, gp, 25
                  sltiu        s5, a1, -161
                  nop
                  sltiu        a6, s5, 1149
                  xor          s0, s9, s6
                  sll          s7, a6, s0
                  beq          s10, a7, 1774f
                  andi         t4, s4, 1838
                  slti         gp, a4, 1555
                  auipc        tp, 46222
                  bgeu         a6, a0, 1770f
                  srl          a1, s6, s10
                  addi         s6, t2, 382
                  slt          t2, a3, s11
                  ori          a2, s4, 204
                  add          t0, a6, s6
                  slt          t1, t3, a2
                  srai         zero, tp, 4
1770:             sll          a6, s8, ra
                  bltu         gp, s2, 1783f
                  srl          s0, t1, t3
                  bltu         t3, s3, 1793f
1774:             sub          a1, s2, s0
                  and          s1, a6, ra
                  bge          s8, s8, 1789f
                  ori          t3, gp, 1557
                  addi         s7, t5, -559
                  srli         t0, s2, 0
                  slti         zero, a7, -1173
                  srli         s7, tp, 30
                  bge          t2, s1, 1786f
1783:             bgeu         s1, t1, 1791f
                  slli         s6, t0, 28
                  srai         a5, s10, 17
1786:             bne          s0, a3, 1791f
                  bltu         s11, a7, 1796f
                  lui          t3, 115396
1789:             xor          s7, a0, a1
                  bge          s5, s4, 1795f
1791:             and          t1, t3, zero
                  xori         t3, a5, -1327
1793:             srai         s0, ra, 24
                  add          a6, a0, s5
1795:             slli         s9, a7, 19
1796:             slli         ra, s11, 18
                  srli         t4, s9, 3
                  sub          s2, s6, t2
                  addi         s11, gp, -565
                  beq          gp, ra, 1808f
                  nop
                  xori         a2, sp, 1572
                  andi         ra, t3, -132
                  bge          t2, s5, 1818f
                  slt          t3, t4, a3
                  nop
                  add          s6, a0, tp
1808:             slt          s10, a0, a2
                  sra          tp, a4, s1
                  or           zero, s4, s7
                  sltiu        ra, a1, 1739
                  slti         a5, t5, 1608
                  auipc        a4, 734453
                  slli         s2, t6, 12
                  bne          s4, a5, 1833f
                  srli         s1, s5, 6
                  bltu         s5, a7, 1819f
1818:             ori          t2, s8, 1333
1819:             addi         s1, s2, 1907
                  sll          s0, t0, s8
                  slt          t0, s0, s11
                  bgeu         a7, s6, 1832f
                  sra          a0, a0, a4
                  slti         s11, a7, 128
                  srli         s1, t1, 27
                  srl          tp, t3, t5
                  blt          s8, t0, 1831f
                  bge          s9, t2, 1831f
                  ori          s4, s11, -1041
                  xor          s2, a1, s3
1831:             srl          s2, a6, a7
1832:             beq          s1, gp, 1843f
1833:             slti         t2, gp, 1898
                  andi         s11, a0, 1209
                  xor          a1, s6, s5
                  sub          s5, t5, gp
                  add          s7, a1, s2
                  srl          a6, a0, tp
                  xor          tp, t4, zero
                  sltiu        s4, a7, 1699
                  xor          s10, s2, a3
                  bltu         t6, s9, 1862f
1843:             srli         s2, ra, 6
                  beq          s11, a3, 1855f
                  xori         s5, t0, 1619
                  beq          zero, t5, 1847f
1847:             bge          ra, s4, 1863f
                  slt          a5, a2, s0
                  slt          s0, a2, a0
                  srai         tp, s4, 21
                  srai         t6, s3, 19
                  beq          t5, s0, 1855f
                  slli         zero, a0, 27
                  la           t3, region_0+927 #start riscv_load_store_rand_instr_stream_9
                  lw           t4, 37(t3)
                  lbu          s4, -53(t3)
                  sw           s6, 9(t3)
                  srai         s1, tp, 10
                  addi         a7, s3, -698
                  lbu          s10, -51(t3)
                  addi         t6, s2, 975
                  sb           s5, 24(t3)
                  lhu          s11, -31(t3)
                  lw           t6, 9(t3)
                  sltu         s9, s8, a5
                  lbu          a7, 10(t3)
                  ori          s7, s0, 1468
                  sb           zero, 50(t3)
                  sb           s10, -5(t3)
                  sh           s8, 17(t3)
                  sra          s11, s8, a3
                  sb           a6, 12(t3)
                  lb           zero, -1(t3)
                  slt          s0, zero, s6
                  srl          t6, a5, a6
                  lw           gp, 17(t3)
                  xori         t1, a1, 1479
                  lhu          s7, -23(t3)
                  lb           t1, -6(t3)
                  xor          s9, a0, t1
                  lbu          t0, 40(t3)
                  auipc        a1, 152481
                  lb           a3, 28(t3)
                  add          t0, s10, s3
                  srl          s10, t0, s2
                  xor          t1, s11, t6
                  lbu          a1, -27(t3)
                  lw           gp, -51(t3)
                  lbu          s6, 14(t3)
                  lh           s10, -63(t3)
                  lb           gp, -5(t3)
                  lb           s0, -52(t3)
                  lb           t2, -56(t3)
                  lh           t0, -1(t3)
                  sb           s6, 32(t3)
                  lb           s10, -15(t3)
                  lw           s2, 5(t3) #end riscv_load_store_rand_instr_stream_9
                  sltiu        s5, t5, 1816
1855:             srli         t2, s3, 13
                  beq          t1, a1, 1859f
                  and          tp, s9, a2
                  and          t0, tp, s3
1859:             bne          sp, s4, 1864f
                  sra          t3, s5, s4
                  srli         zero, s3, 1
1862:             or           a6, a4, s2
1863:             or           a7, s9, s3
1864:             bltu         s6, s0, 1865f
1865:             slti         a0, s1, -1317
                  slti         t3, s0, -1457
                  slt          t2, s2, t4
                  sll          t0, t1, s4
                  add          s4, a3, a2
                  ori          s7, t0, -121
                  addi         s10, t4, -713
                  sub          a3, s11, ra
                  and          s5, s10, gp
                  and          tp, a5, a2
                  slti         a1, t1, -1183
                  slti         t6, s2, 489
                  sltiu        s10, zero, -1873
                  or           tp, a0, s5
                  srai         s6, a6, 2
                  beq          s5, tp, 1889f
                  auipc        a2, 387952
                  lui          s10, 862404
                  auipc        t0, 761264
                  srl          ra, a6, t4
                  xor          gp, a3, s10
                  sra          t6, t0, tp
                  or           s2, a7, s0
                  bne          a4, a4, 1908f
1889:             sra          s2, s10, t5
                  xor          a6, t6, t0
                  addi         s7, ra, -1734
                  bgeu         s5, a3, 1904f
                  srli         s2, tp, 10
                  nop
                  or           s2, s11, a0
                  srli         a3, a3, 13
                  srl          s7, t3, a6
                  bge          a7, a7, 1907f
                  bltu         a0, sp, 1902f
                  sub          a0, t1, t4
                  blt          s11, s4, 1921f
1902:             srai         s11, t2, 22
                  andi         s4, t1, -1863
1904:             sll          t0, t4, s2
                  bgeu         s7, a6, 1907f
                  and          gp, a2, ra
1907:             bge          t2, s5, 1927f
1908:             slli         s10, t1, 25
                  beq          s1, a0, 1923f
                  sltiu        t6, sp, 1502
                  nop
                  slt          s10, a4, gp
                  bgeu         t6, s1, 1915f
                  bgeu         a5, gp, 1918f
1915:             slli         ra, t3, 22
                  slli         a2, a2, 25
                  xor          a4, t5, s1
1918:             nop
                  srai         zero, s8, 27
                  srli         a0, a1, 2
1921:             andi         s6, gp, -972
                  xori         s0, s6, -1471
1923:             bge          s10, s2, 1932f
                  xori         s8, t3, -238
                  sltiu        s4, t5, 1675
                  xor          s11, a1, sp
1927:             and          t0, a1, s2
                  blt          sp, s9, 1948f
                  blt          s1, s6, 1932f
                  or           t4, ra, t2
                  srai         s10, a0, 30
1932:             sltu         a3, s0, a5
                  xor          ra, s2, a0
                  ori          t1, a6, -1586
                  xor          t3, a4, a7
                  srl          s9, s7, a2
                  srli         t0, s7, 31
                  sub          s7, s9, a6
                  lui          s0, 907502
                  and          a0, t4, a3
                  srli         s7, gp, 8
                  slti         s7, t1, -320
                  beq          tp, a1, 1947f
                  bge          sp, t2, 1964f
                  sll          s10, a4, s8
                  lui          a2, 134278
1947:             sll          t0, a4, s0
1948:             sltiu        a4, s4, 1655
                  bge          a5, sp, 1952f
                  xor          a6, a7, a5
                  bgeu         ra, s4, 1959f
1952:             slt          a4, s5, zero
                  bgeu         s11, tp, 1971f
                  nop
                  nop
                  add          t0, s1, a5
                  xori         t1, s11, 265
                  beq          a6, a0, 1963f
1959:             lui          s1, 569996
                  sltiu        a0, a2, -1619
                  sltiu        t2, s2, -1630
                  bltu         zero, sp, 1974f
1963:             bgeu         a5, s11, 1974f
1964:             auipc        zero, 550912
                  slti         a0, a0, 1574
                  sltu         ra, s2, s5
                  auipc        s6, 369641
                  or           a1, gp, a4
                  sltiu        s1, t3, -1535
                  slt          t6, t0, s11
1971:             beq          s9, t2, 1979f
                  slli         a2, s9, 17
                  sltu         s8, t1, t1
1974:             blt          t3, tp, 1976f
                  and          s11, a6, s4
1976:             addi         s5, t0, 1532
                  slt          s11, s8, a7
                  nop
1979:             sltu         a7, t6, a4
                  slli         a6, a0, 3
                  nop
                  slti         t6, a1, 264
                  slli         s6, s2, 3
                  bge          s3, t5, 2004f
                  lui          tp, 765557
                  srli         ra, t6, 4
                  and          a3, a1, t6
                  srli         t1, s4, 4
                  sub          t4, sp, t2
                  sra          a7, tp, s3
                  add          s10, t5, s5
                  and          a0, t1, sp
                  bne          a0, s11, 1998f
                  bge          t2, s3, 2004f
                  slt          s8, s10, t6
                  beq          a5, s9, 2005f
                  slt          s6, s0, t0
1998:             srli         a1, s1, 15
                  blt          a2, s9, 2000f
2000:             srli         a1, a5, 16
                  and          s5, a7, s0
                  sltiu        s7, a3, -1517
                  xori         s10, t2, 423
2004:             bne          s3, s7, 2005f
2005:             bltu         a5, tp, 2014f
                  sltiu        s6, a7, -1763
                  bltu         s10, s2, 2010f
                  addi         a4, t2, 466
                  xor          s7, s0, s0
2010:             xori         a6, a5, -549
                  beq          zero, ra, 2016f
                  slt          ra, t0, s10
                  sll          t0, a4, zero
2014:             blt          s6, a0, 2025f
                  andi         s10, t3, -1568
2016:             sltiu        a5, s9, -276
                  bge          s1, s10, 2033f
                  addi         s7, s4, -1594
                  lui          s8, 308203
                  xor          s11, s7, s0
                  slt          s6, s10, a0
                  srl          s6, s7, s3
                  ori          tp, t0, -1856
                  slli         s10, s5, 16
2025:             sra          s0, t3, ra
                  sub          a5, a6, tp
                  slt          zero, t4, t2
                  blt          t3, s5, 2041f
                  bltu         s11, sp, 2032f
                  slli         a1, t2, 29
                  addi         s2, s10, 1541
2032:             bgeu         s9, s7, 2052f
2033:             add          s5, t2, a2
                  blt          s5, s9, 2039f
                  slli         a7, s9, 20
                  slt          s10, a5, sp
                  xori         s5, t4, -86
                  srli         a2, s3, 9
2039:             sra          s5, a6, t2
                  andi         s1, s6, -711
2041:             sll          s0, s0, a5
                  add          s10, a6, t2
                  or           a6, s4, t6
                  addi         s1, a2, -2030
                  andi         t4, sp, -262
                  or           a1, s11, s10
                  srli         a7, s2, 9
                  and          s9, a2, s11
                  bgeu         a1, s5, 2059f
                  sll          t2, a5, ra
                  beq          t0, s0, 2060f
2052:             srl          a6, s7, s8
                  sra          a4, t0, t0
                  blt          s2, s9, 2074f
                  srli         s5, a5, 27
                  sll          ra, tp, gp
                  slti         t3, t1, -95
                  ori          a6, s5, -645
2059:             sra          s2, s2, t5
2060:             or           s11, s5, t2
                  srl          tp, s6, t4
                  bne          t4, s2, 2064f
                  sub          a6, t4, tp
2064:             srai         tp, a5, 22
                  srl          ra, a4, t5
                  bge          t6, t2, 2071f
                  ori          t0, s0, 1334
                  srl          s11, zero, a4
                  srli         t0, a1, 3
                  lui          s8, 197012
2071:             andi         s9, s2, 1379
                  auipc        s4, 33273
                  nop
2074:             srl          tp, s6, sp
                  srl          t4, t6, s6
                  sub          t3, a3, s0
                  srl          a7, s11, s4
                  addi         a1, s8, -1940
                  blt          a6, gp, 2099f
                  ori          a5, s10, -1616
                  lui          a4, 118555
                  and          a4, s3, a0
                  ori          s5, s6, -1110
                  andi         a0, a6, 1455
                  xori         s10, a6, -649
                  auipc        s2, 579223
                  addi         t0, s9, 928
                  nop
                  xor          s9, s7, t3
                  xor          t4, s7, sp
                  xori         a0, t2, -1308
                  andi         a4, zero, 301
                  sltiu        a6, s0, -1291
                  or           a5, gp, sp
                  or           tp, s5, s1
                  addi         a7, s0, 438
                  slt          t3, tp, a0
                  bgeu         s10, s8, 2101f
2099:             andi         s1, gp, 1658
                  auipc        t2, 845643
2101:             xor          s0, t3, s11
                  slti         s8, t1, 1700
                  add          a7, t2, s6
                  sll          ra, t6, a7
                  srl          tp, a5, a0
                  slti         t3, t1, -1244
                  slti         t6, s0, -1018
                  sll          t3, ra, a5
                  andi         s2, s3, -1249
                  srli         t4, ra, 12
                  srai         s4, ra, 3
                  addi         zero, s6, -1910
                  bgeu         s10, t6, 2124f
                  slli         a3, t3, 14
                  sll          a0, s1, a2
                  srl          s11, s0, s10
                  sltu         a1, s6, tp
                  sub          s8, t5, t5
                  ori          s1, s3, -1361
                  slli         s0, s11, 2
                  slti         s5, s3, 1805
                  srai         gp, t5, 2
                  sltiu        s6, s10, -1411
2124:             bge          s3, s6, 2128f
                  sltiu        t6, t3, -1417
                  sll          t0, s11, s6
                  srli         t3, a4, 10
2128:             xor          t4, gp, sp
                  lui          s4, 331402
                  bne          tp, s4, 2133f
                  xor          t3, s7, a0
                  slti         a3, a3, 1660
2133:             nop
                  sra          s11, s7, zero
                  slt          gp, s4, a4
                  andi         tp, s5, -80
                  beq          s9, s10, 2138f
2138:             auipc        s4, 978703
                  nop
                  sltiu        s9, t6, 1746
                  lw           tp, 4(t5)
                  andi         s0, s2, -1988
                  addi         t5, t5, 56
                  slt          s11, s2, a6
                  andi         a3, a0, -1307
2880:             addi x24, x4, 0
2880:             jalr x24, x24, 0
sub_5:            beq          s3, s4, sub_5_stack_p
sub_5_stack_p:    addi         t5, t5, -12
                  sra          a6, s3, s7
                  sw           tp, 4(t5)
                  slt          t6, a4, s9
                  or           t0, s11, sp
                  sltu         s9, ra, s2
                  sltiu        t6, s5, -1918
                  sll          a6, s7, a4
                  addi         a3, a3, -1455
                  lui          a5, 665295
                  srai         ra, a1, 24
                  la           t4, sub_6
                  slli         s4, t0, 9
                  addi         t4, t4, 460
                  slti         tp, s7, 1459
sub_5_j9:         jalr         tp, t4, -459 #jump sub_5 -> sub_6
                  la           t0, region_0+454 #start riscv_load_store_rand_instr_stream_4
                  sb           s8, 141(t0)
                  auipc        t3, 314441
                  or           a3, s9, t4
                  add          t3, gp, a5
                  andi         s11, s5, 1611
                  srl          a7, t6, s5
                  lbu          s6, -252(t0)
                  andi         tp, s8, -1846
                  slti         tp, s2, 1345
                  or           t3, a4, s8
                  lbu          s0, -111(t0)
                  lb           a1, 67(t0)
                  srl          t4, t5, zero
                  auipc        a4, 1006754
                  add          gp, s5, t4
                  lbu          tp, -3(t0)
                  slli         a3, t2, 31
                  lbu          a6, -149(t0)
                  and          s11, s10, ra
                  lbu          s7, 208(t0)
                  lui          zero, 615203
                  auipc        t2, 321335
                  srli         a0, s1, 7
                  lb           s5, 255(t0)
                  sb           t5, -102(t0)
                  nop
                  lbu          gp, 231(t0)
                  srai         t1, a6, 12
                  lb           gp, -103(t0)
                  lbu          s10, -60(t0)
                  or           s6, a3, s0
                  sb           s10, 172(t0)
                  lb           s4, -203(t0)
                  sb           t6, 156(t0)
                  sh           a7, 184(t0)
                  lb           gp, -234(t0)
                  addi         t6, a7, 42
                  slt          ra, a3, s7
                  sb           s8, 147(t0)
                  sb           t0, -65(t0)
                  lhu          s7, -80(t0)
                  addi         a6, a1, 1620
                  lbu          s11, 32(t0) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_0+833 #start riscv_load_store_rand_instr_stream_2
                  lb           a1, -9(s10)
                  lhu          t3, -141(s10)
                  srli         t0, t0, 19
                  sb           s2, 122(s10)
                  lbu          t6, -80(s10)
                  sb           t4, 118(s10)
                  lb           t2, -60(s10)
                  lb           s9, 91(s10)
                  sb           zero, -236(s10)
                  lb           s5, -91(s10)
                  sb           a5, 130(s10)
                  nop
                  lh           t2, 23(s10)
                  lbu          a0, 24(s10)
                  lb           t2, 25(s10)
                  sb           t1, -131(s10)
                  lb           s0, -168(s10)
                  lh           s6, -139(s10)
                  slli         t2, a7, 29
                  xor          zero, zero, t6
                  and          a5, s9, a4
                  lbu          a1, -216(s10)
                  srai         a7, a5, 22
                  lb           a2, 43(s10)
                  lbu          s9, 100(s10)
                  sb           a3, -33(s10)
                  lbu          s1, 78(s10)
                  add          s7, t3, s11
                  lui          a5, 804890
                  srai         s9, s5, 18
                  lhu          s4, -81(s10)
                  lh           t0, -251(s10)
                  lb           zero, 165(s10)
                  slli         s11, t5, 20
                  sb           s7, -36(s10)
                  lui          zero, 690459
                  xor          s9, t0, s0
                  and          ra, s10, gp
                  lui          s9, 843783
                  sb           s7, 68(s10) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_0+1311 #start riscv_load_store_rand_instr_stream_7
                  lbu          a1, -54(s4)
                  sub          t4, sp, tp
                  sltiu        s6, t5, -1428
                  or           zero, a0, gp
                  add          s8, gp, s11
                  lh           a2, 27(s4)
                  lb           s8, -32(s4)
                  sh           s0, 31(s4)
                  sb           a3, -49(s4)
                  or           a0, a5, t2
                  sh           a7, 55(s4)
                  lbu          s10, 42(s4)
                  slti         zero, s9, 775
                  xori         t1, s5, -923
                  lbu          a1, -47(s4)
                  lw           t2, 49(s4)
                  sll          t2, s5, s5
                  sb           s11, -45(s4)
                  sltiu        a4, a2, 1857
                  lw           a0, 45(s4)
                  sb           s3, 14(s4)
                  sb           a4, -1(s4)
                  sltu         s5, s0, a2
                  sh           a7, -61(s4)
                  srai         s1, a6, 9
                  slli         a7, s0, 23
                  slt          tp, a2, t0
                  slti         ra, sp, 206
                  lb           t1, -33(s4) #end riscv_load_store_rand_instr_stream_7
                  la           a5, region_0+22 #start riscv_load_store_rand_instr_stream_3
                  or           t2, s7, s4
                  sltiu        ra, s9, 267
                  addi         s4, t5, -265
                  addi         s2, sp, -1516
                  sltu         gp, a2, s8
                  add          t2, s10, a6
                  andi         tp, a6, 262
                  lb           a1, -13(a5)
                  lb           s5, -5(a5)
                  lb           s2, -11(a5)
                  slti         zero, a6, 373
                  xori         gp, s9, 1396
                  auipc        a1, 342544
                  sltiu        t2, s6, 490
                  srl          gp, a5, a6
                  lb           t6, -13(a5)
                  sub          a6, s1, s1
                  lbu          s10, -14(a5)
                  ori          s5, a0, -1971
                  lhu          a0, 2(a5)
                  or           t3, a0, s5
                  xori         s0, t1, 1460
                  add          s10, s0, s9
                  lhu          t6, -4(a5)
                  or           t4, s10, t3
                  lh           a7, 4(a5)
                  add          a7, t5, t4
                  addi         t2, s5, -849
                  lb           s5, -8(a5)
                  sltiu        s7, t1, 1581
                  lbu          s4, -13(a5)
                  lhu          s9, 0(a5)
                  lhu          s4, 10(a5)
                  nop
                  andi         tp, a1, 1176
                  sb           s5, -13(a5)
                  slt          t0, a6, s0
                  sb           s5, 15(a5)
                  lb           tp, -15(a5)
                  lbu          s8, 7(a5) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+1754 #start riscv_load_store_rand_instr_stream_6
                  sb           t4, -37(a6)
                  sltiu        gp, s0, -439
                  sb           s2, -53(a6)
                  ori          s1, s4, 2035
                  slt          a0, t0, s4
                  andi         t3, gp, -177
                  lb           t3, -145(a6)
                  slt          t3, a6, s10
                  lb           s5, -45(a6)
                  lh           s9, 178(a6)
                  slt          a7, s10, a6
                  andi         a3, t4, 424
                  sb           t4, -139(a6)
                  sltiu        a2, t5, -605
                  lhu          t4, 174(a6)
                  sb           t5, 84(a6)
                  lh           t4, -68(a6)
                  sh           a4, 82(a6)
                  sra          a1, s3, a1
                  sw           a0, 74(a6)
                  auipc        s10, 313521
                  sh           tp, 132(a6)
                  lbu          a1, -60(a6)
                  lui          s11, 1024784
                  lb           tp, -247(a6)
                  sltu         a4, s1, a4
                  sw           s2, 2(a6)
                  sh           zero, -180(a6)
                  lb           a0, 158(a6)
                  sb           t6, 47(a6)
                  srli         t0, t1, 2
                  sh           s8, 0(a6)
                  lb           t6, 219(a6)
                  andi         s1, ra, -509
                  lh           s0, -18(a6)
                  andi         s7, s4, -883
                  lb           s10, 189(a6)
                  lhu          s4, -86(a6) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_0+320 #start riscv_load_store_rand_instr_stream_0
                  sll          a5, t4, s11
                  addi         s8, s10, -674
                  sltu         s5, s10, zero
                  sb           a6, -53(t6)
                  andi         s10, a7, 353
                  slli         s8, s6, 9
                  lh           t2, -248(t6)
                  lb           a6, -187(t6)
                  addi         t3, a6, 11
                  add          a4, gp, t1
                  lb           ra, -13(t6)
                  sra          ra, t2, s8
                  srl          t0, a1, a3
                  lbu          s11, -249(t6)
                  lbu          a7, 224(t6)
                  sw           t4, -204(t6)
                  lbu          a7, 203(t6)
                  srl          t2, s6, t4
                  sh           s0, 242(t6)
                  and          t2, s7, zero
                  srai         gp, s9, 17
                  lhu          a3, -114(t6)
                  lw           s9, 200(t6)
                  xori         s1, a3, -672
                  lw           s4, -252(t6)
                  lb           s6, -17(t6)
                  lbu          t4, -217(t6)
                  xor          a6, s7, a5
                  sltu         tp, s10, s8
                  sra          t1, s0, a0
                  sll          a1, t2, a7
                  lw           t4, -100(t6)
                  lb           a5, 209(t6)
                  sb           a4, -103(t6)
                  lb           s5, -110(t6)
                  lui          t4, 438758
                  auipc        s11, 590982
                  sb           tp, 153(t6)
                  auipc        tp, 343285
                  ori          t1, a1, -564
                  lbu          gp, 231(t6)
                  sb           a0, 161(t6)
                  lbu          a4, -70(t6)
                  slti         s2, s2, 586
                  slt          s8, s11, t3
                  lbu          a1, -107(t6)
                  lb           zero, -219(t6)
                  sra          gp, a4, a3
                  sh           s5, -8(t6)
                  slt          s8, s11, s4
                  sra          s1, a5, s10
                  lb           t4, 215(t6)
                  slti         s4, a7, -1376
                  lbu          zero, 233(t6)
                  srl          a2, gp, s8
                  auipc        zero, 637001
                  lbu          s9, 21(t6)
                  lbu          a4, -175(t6) #end riscv_load_store_rand_instr_stream_0
                  or           s8, s10, s2
                  bne          a4, s5, 11f
                  blt          a0, a3, 5f
                  xor          s11, s4, s6
                  xor          gp, s9, a5
5:                auipc        a5, 53746
                  srli         s9, t2, 5
                  lui          a3, 952903
                  and          t4, s2, s0
                  xor          t3, a6, t5
                  srli         a3, tp, 25
11:               blt          s1, t3, 16f
                  auipc        zero, 411007
                  xor          a4, tp, t6
                  srl          a7, s5, a1
                  bne          s1, sp, 17f
16:               beq          s11, s8, 24f
17:               nop
                  or           s10, s11, s6
                  srli         s0, s8, 5
                  sra          s5, t1, a1
                  slli         a1, sp, 3
                  and          t0, s0, sp
                  lui          a2, 381905
24:               beq          t2, t5, 26f
                  sll          s1, a0, t4
26:               ori          a5, s4, 1552
                  xori         a7, s3, -107
                  bgeu         s4, s11, 31f
                  sltu         s1, a4, s3
                  bgeu         s0, s2, 50f
31:               bgeu         t0, tp, 42f
                  beq          s7, zero, 49f
                  bltu         t6, s10, 41f
                  sra          s1, s11, s3
                  beq          a3, ra, 43f
                  srai         t6, a4, 14
                  slti         a5, t1, -1072
                  xori         s10, a5, -2026
                  sra          a0, t1, s1
                  srl          s9, t0, sp
41:               slti         s10, s2, -780
42:               sub          t1, a2, a4
43:               sltiu        s9, s9, -1285
                  auipc        s10, 767533
                  ori          t6, s5, 157
                  srl          gp, a6, a7
                  or           ra, a0, s0
                  sll          t2, a4, t5
49:               srl          s5, a1, s10
50:               srai         a3, s1, 0
                  bge          zero, s2, 64f
                  slti         tp, a2, 224
                  lui          s10, 514073
                  bne          s2, a3, 64f
                  auipc        t3, 197840
                  auipc        s5, 231838
                  sub          ra, zero, sp
                  bne          t0, t6, 75f
                  and          a0, a2, s0
                  srai         s4, s0, 19
                  bne          t0, ra, 66f
                  and          s7, s8, sp
                  slt          zero, sp, a2
64:               srli         s6, a7, 27
                  andi         gp, t2, 623
66:               xori         s2, s10, -1246
                  beq          a1, s4, 78f
                  srl          zero, gp, s8
                  sll          s1, s3, s0
                  sltu         a1, a6, t3
                  sltu         s1, a0, tp
                  andi         zero, a5, -1888
                  sll          s0, s4, s8
                  blt          t0, a3, 83f
75:               sll          t2, s11, sp
                  nop
                  sra          s6, a2, a0
78:               bgeu         a6, s0, 87f
                  slt          s0, a3, a1
                  slt          t3, a1, a2
                  ori          a7, ra, -204
                  bltu         a7, t6, 100f
83:               beq          a6, t4, 96f
                  bge          a5, tp, 87f
                  bne          t2, t3, 91f
                  sub          gp, t5, s0
87:               blt          t0, s0, 107f
                  slt          t6, s8, gp
                  slli         s5, a7, 30
                  add          t4, s6, t6
91:               bgeu         tp, tp, 108f
                  add          s6, a6, t6
                  sra          s8, a2, a3
                  ori          s2, gp, 1044
                  sltiu        t6, a3, -2048
96:               srai         s0, t5, 20
                  andi         a2, a1, 1473
                  srai         s8, a0, 10
                  beq          a3, a3, 104f
100:              nop
                  sltu         s1, t5, ra
                  lui          zero, 126102
                  bltu         a3, a6, 114f
104:              lui          a1, 317994
                  sra          t1, a4, s4
                  slt          s1, a3, t3
107:              slti         tp, s10, 619
108:              slt          gp, s7, t2
                  bltu         a1, a0, 117f
                  addi         t2, sp, 690
                  beq          s3, t2, 112f
112:              xor          gp, s7, a2
                  addi         zero, t6, -1729
114:              auipc        s2, 39448
                  nop
                  slti         s5, a4, 1689
117:              srli         a6, s6, 4
                  lui          a5, 846802
                  bge          t1, t5, 128f
                  addi         s4, a6, -1255
                  and          a4, t6, s3
                  sub          a1, sp, a6
                  xor          a1, s8, t6
                  srl          a1, gp, a3
                  lui          a2, 860022
                  ori          s4, s3, 1830
                  bltu         a3, s4, 130f
128:              sltu         zero, a4, s11
                  bgeu         s7, a3, 146f
130:              slli         tp, t2, 20
                  sll          a6, a2, t3
                  sra          a0, t6, t4
                  slt          t0, a7, s7
                  and          s2, s10, a4
                  and          s7, a7, s1
                  addi         s7, a4, 622
                  blt          a2, a2, 146f
                  sltiu        s9, s6, 96
                  xori         s1, s11, -870
                  add          ra, t0, zero
                  auipc        zero, 312496
                  srai         a1, s10, 5
                  bge          t3, ra, 148f
                  sra          t4, ra, a1
                  andi         ra, a5, -787
146:              slti         s11, s3, -1137
                  add          zero, s2, a4
148:              srai         s11, a4, 2
                  and          zero, s7, s10
                  slt          s4, a0, s5
                  addi         s8, a5, 1186
                  sll          tp, t1, s9
                  xor          s0, gp, t5
                  bltu         s10, t3, 162f
                  slli         s0, gp, 14
                  sll          t2, a6, s7
                  sub          s6, a4, s1
                  slli         t2, s9, 17
                  sub          t4, t0, a0
                  andi         tp, t1, -1896
                  slti         s5, a7, 1780
sub_5_j7:         jal          tp, sub_7 #jump sub_5 -> sub_7
                  nop
                  xori         s9, ra, -1648
                  sra          s9, a0, t6
                  xori         a7, gp, -355
                  auipc        s4, 391344
                  srli         s4, s9, 28
162:              beq          t3, gp, 179f
                  and          a1, t4, t2
                  blt          s2, sp, 166f
                  bgeu         t6, t1, 170f
166:              slli         a3, s2, 5
                  slli         ra, s5, 31
                  auipc        ra, 291950
                  xor          s9, s3, zero
170:              bne          ra, a4, 178f
                  or           t4, s0, t2
                  bge          s0, t3, 185f
                  slli         t4, a3, 13
                  srl          a3, s8, gp
                  srl          s11, s4, s0
                  or           t6, sp, a3
                  xori         a6, t4, 509
178:              slt          t4, s7, ra
179:              slt          t0, s6, a1
                  srai         a4, s4, 1
                  lui          s0, 899988
                  lui          a0, 225308
                  beq          t4, t3, 193f
                  slti         t6, t3, 479
185:              addi         s8, a7, 1159
                  ori          s4, t6, -288
                  or           s6, s9, a5
                  sltiu        s2, s8, 535
                  srl          s0, s8, s4
                  auipc        s11, 715934
                  srli         s4, ra, 27
                  srl          a3, s0, t0
193:              bgeu         s3, a5, 202f
                  addi         s6, ra, 244
                  slli         s5, gp, 29
                  nop
                  auipc        ra, 871751
                  lui          t2, 957964
                  nop
                  bltu         a3, s0, 211f
                  bne          s11, s11, 218f
202:              nop
                  ori          t2, t0, -430
                  sra          s6, t4, s6
                  auipc        s4, 414278
                  and          ra, t1, t4
                  sll          t2, a2, a3
                  lui          a7, 707033
                  slti         a2, zero, -316
                  addi         s5, t5, -1853
211:              xori         s11, t6, 2018
                  xori         s0, s2, -1257
                  bltu         a3, t3, 226f
                  srl          t2, a0, s3
                  bltu         s2, gp, 223f
                  srl          s2, t4, a0
                  beq          t5, a3, 225f
218:              sll          s4, s10, s7
                  beq          t5, gp, 237f
                  sll          s0, a4, a0
                  slt          s9, s2, s9
                  blt          s6, t1, 233f
223:              andi         ra, a3, -1207
                  srli         t6, t4, 17
225:              sltiu        s7, a7, -1768
226:              add          a4, t0, s6
                  or           gp, t0, t6
                  bge          s4, ra, 239f
                  bgeu         t5, s11, 249f
                  auipc        s2, 656138
                  addi         tp, a3, -1879
                  lui          s7, 470482
233:              srl          t3, s6, t2
                  nop
                  bltu         t6, a3, 245f
                  beq          t1, zero, 256f
237:              bltu         t5, a4, 240f
                  blt          s8, s4, 244f
239:              slt          a0, sp, s11
240:              srai         t1, s7, 1
                  add          s5, a1, gp
                  sra          tp, s8, s3
                  ori          t1, a0, 1781
244:              sltiu        gp, t5, -1484
245:              xor          s1, t3, s8
                  nop
                  bne          a0, ra, 250f
                  slt          a0, a0, t1
249:              lui          a5, 557228
250:              slt          a0, t1, a3
                  sltu         a5, a1, t3
                  bgeu         s4, s9, 261f
                  xor          zero, s3, s10
                  sub          tp, t5, tp
                  sltu         a0, a2, t2
256:              sltiu        t1, t5, -1063
                  or           a0, s4, zero
                  beq          ra, a7, 263f
                  sll          s0, a3, a4
                  or           s1, a0, a7
261:              bgeu         s9, s3, 262f
262:              add          a6, s2, s6
263:              add          t3, s2, a4
                  sltu         ra, s4, tp
                  addi         a5, gp, -1436
                  sltiu        t0, a0, -1786
                  beq          s9, gp, 269f
                  sra          t0, a4, t6
269:              srai         s1, s9, 7
                  slli         s8, s10, 27
                  slli         zero, s5, 11
                  slt          tp, s4, a5
                  srli         s11, a1, 8
                  sltiu        s9, zero, 910
                  blt          a4, zero, 278f
                  bltu         t3, ra, 281f
                  xori         a6, t3, -1944
278:              bne          t2, s11, 283f
                  sll          t4, s0, a0
                  srl          s9, t1, t3
281:              slt          t0, s6, t1
                  sub          t6, s4, a6
283:              or           a2, t6, t1
                  add          t4, a6, a3
                  nop
                  sra          a7, tp, s4
                  ori          s2, t5, -1512
                  addi         s7, t0, 1202
                  bgeu         a6, s9, 295f
                  sll          t1, t2, s10
                  sra          s1, t2, a1
                  srli         t1, ra, 23
                  or           s2, s0, s10
                  addi         s4, sp, 402
295:              bge          a2, t4, 315f
                  and          s5, a2, s7
                  auipc        a5, 345856
                  blt          sp, a6, 300f
                  bltu         s0, s2, 316f
300:              ori          t0, tp, -908
                  sub          zero, a2, t6
                  sub          s7, a5, s11
                  sltiu        a4, t4, 1440
                  ori          a5, a2, 1553
                  sub          t1, a7, s8
                  and          ra, a6, s10
                  sltu         ra, t1, s4
                  bltu         t2, a3, 318f
                  srli         a7, s9, 10
                  blt          s7, t3, 318f
                  sll          t3, t2, a5
                  sltu         ra, s8, t4
                  slt          s9, s8, s0
                  slli         t0, zero, 10
315:              srli         t0, a5, 3
316:              bne          t6, t1, 319f
                  bltu         t1, s11, 334f
318:              or           s4, a3, a6
319:              bltu         tp, s7, 330f
                  or           t1, a6, t0
                  addi         a6, a0, 902
                  ori          t6, s8, -1266
                  sra          s10, s6, sp
                  ori          s7, t0, -1218
                  lui          s9, 975920
                  sll          t0, s11, gp
                  srai         a1, s7, 2
                  xori         tp, a7, 1610
                  bne          t6, s1, 334f
330:              sltu         s10, s11, a4
                  sll          s10, s4, t0
                  andi         t1, a2, -43
                  andi         a3, s6, -1565
334:              add          s9, t3, t6
                  bge          t4, zero, 346f
                  srai         s5, t5, 5
                  blt          a0, t3, 346f
                  sll          s4, s1, a2
                  sltu         t6, a1, a0
                  ori          a7, zero, 586
                  xori         s6, s10, -1614
                  slli         s5, s4, 21
                  sltiu        a4, s8, 889
                  addi         t0, s0, -1998
                  lui          t4, 112010
346:              xori         s0, t0, 635
                  sltu         t0, gp, t6
                  srai         s1, a5, 18
                  or           tp, a3, s3
                  addi         s8, a1, 643
                  sltiu        s7, a0, -55
                  and          s8, s8, t3
                  sltu         s2, t4, a3
                  blt          a4, t4, 363f
                  bne          s6, t4, 363f
                  xor          s9, zero, t3
                  beq          t0, a4, 375f
                  slli         s11, s6, 15
                  sll          tp, s7, a1
                  srai         t1, a0, 10
                  beq          a7, s7, 370f
                  lui          s8, 70627
363:              blt          a1, sp, 365f
                  bltu         zero, zero, 381f
365:              bne          t1, a7, 376f
                  lui          zero, 446795
                  auipc        a0, 628287
                  slti         a7, a5, -1358
                  xor          s0, s10, t3
370:              sll          t2, s6, tp
                  lui          t4, 611584
                  sltiu        s0, t4, -1582
                  bltu         t3, a5, 376f
                  bne          s4, s7, 384f
375:              bne          a2, t3, 388f
376:              slt          s0, s6, zero
                  xor          a0, s7, ra
                  srli         t2, s4, 17
                  beq          ra, t4, 387f
                  bne          a6, a2, 388f
381:              xor          a0, s5, s5
                  slli         t4, s9, 3
                  beq          s6, tp, 396f
384:              srli         s9, a1, 24
                  auipc        t2, 328031
                  slli         t3, s3, 7
387:              slti         s4, s5, -31
388:              xori         s2, s9, -1045
                  slti         t6, a3, 1970
                  addi         s9, a3, 1932
                  sltu         zero, a2, a3
                  add          s5, t2, s8
                  andi         a0, a4, -1162
                  andi         t4, t1, -1309
                  srl          t4, a4, s8
396:              blt          t0, s8, 416f
                  blt          gp, s1, 398f
398:              bne          a3, t4, 415f
                  bltu         t1, a5, 402f
                  auipc        s2, 987032
                  beq          zero, s4, 409f
402:              beq          a2, a0, 419f
                  la           t0, region_0+899 #start riscv_load_store_rand_instr_stream_5
                  lh           s1, -413(t0)
                  lbu          a1, 897(t0)
                  lbu          a0, 1024(t0)
                  lbu          a4, 904(t0)
                  sh           s9, 913(t0)
                  sltu         a6, t1, zero
                  sh           s8, 801(t0)
                  srl          s0, s2, s0
                  sb           a3, -564(t0)
                  lb           t4, 109(t0)
                  or           a3, t1, zero
                  lb           s1, 788(t0)
                  lbu          s7, 309(t0)
                  srl          t2, s2, t5
                  sll          s10, s3, t1
                  andi         a6, s1, 1521
                  lhu          tp, 593(t0)
                  auipc        s1, 202792
                  lhu          a3, 91(t0)
                  lbu          s11, -881(t0)
                  lh           s0, -277(t0)
                  lbu          s9, 964(t0)
                  lw           t2, -559(t0)
                  sb           s9, 23(t0)
                  add          tp, a3, gp
                  lbu          s6, 372(t0)
                  addi         s9, s2, -1490
                  sub          s5, a3, gp
                  sltiu        gp, s2, 489
                  lui          t6, 746865
                  sb           ra, -644(t0)
                  lh           ra, -385(t0)
                  lbu          ra, 6(t0)
                  lbu          ra, 458(t0)
                  sra          tp, s6, a7
                  sh           s9, 71(t0)
                  sh           s7, 87(t0)
                  sh           s10, 835(t0)
                  add          a2, zero, s10
                  sb           s11, 477(t0)
                  ori          s9, s10, -1751
                  lb           s6, 704(t0)
                  or           zero, s7, t3
                  lbu          a3, -361(t0)
                  andi         tp, s11, 1726
                  lb           t4, -394(t0)
                  srli         a4, t4, 25
                  sb           t1, 257(t0) #end riscv_load_store_rand_instr_stream_5
                  slli         s5, s4, 26
                  sub          a3, a0, s1
                  ori          s4, s8, -384
                  slt          t0, s11, s11
                  lui          t1, 411234
                  sra          zero, s6, sp
409:              srli         t4, t3, 1
                  slti         s6, t3, -1440
                  or           zero, s4, s4
                  bge          t2, s9, 423f
                  sltu         s0, t4, s7
                  sub          t6, a0, t0
415:              nop
416:              srl          t1, s4, a4
                  slli         ra, s5, 27
                  blt          t6, a0, 436f
419:              bgeu         a6, t2, 422f
                  nop
                  sll          s11, ra, s2
                  srai         t2, gp, 3
                  ori          s1, s0, 1496
                  srai         a3, s10, 13
                  xori         a4, t3, -54
                  add          a3, s2, s1
                  nop
sub_5_j8:         jal          tp, sub_7 #jump sub_5 -> sub_7
                  or           a3, a0, a7
422:              slt          a0, s7, s10
423:              slt          a3, s4, s5
                  blt          s9, a7, 429f
                  bge          a4, zero, 435f
                  beq          a1, sp, 431f
                  or           s11, s2, tp
                  blt          s7, sp, 430f
429:              bge          a1, tp, 440f
430:              andi         ra, t6, 102
431:              andi         a5, t2, 1793
                  ori          gp, a1, -1712
                  bne          s4, a7, 450f
                  add          a0, sp, s2
435:              srl          s10, t6, gp
436:              blt          s1, s9, 446f
                  sltu         a3, t5, tp
                  sub          a4, s10, s3
                  sra          ra, s3, s7
440:              add          s7, s0, a3
                  beq          a7, s5, 449f
                  ori          s7, a7, 399
                  xor          t6, a2, a2
                  bgeu         t2, a6, 449f
                  ori          t6, a5, 1503
446:              slt          t1, a2, tp
                  and          s0, t3, s6
                  or           s7, t1, t1
449:              slti         a0, s10, -1020
450:              beq          a6, a4, 453f
                  andi         a4, a1, 1971
                  srli         a7, s8, 14
453:              auipc        s4, 898564
                  bne          a0, t5, 463f
                  blt          s2, s4, 461f
                  ori          ra, s1, -144
                  addi         a5, t6, -566
                  and          a6, s7, t5
                  bne          t1, a2, 460f
460:              blt          s2, a7, 469f
461:              bne          t2, t4, 481f
                  sltu         zero, a6, t5
463:              srli         a0, s8, 27
                  and          s2, a3, a2
                  sra          t6, ra, t3
                  addi         a2, tp, -1805
                  sll          gp, zero, a6
                  nop
469:              lui          s2, 693670
                  srli         gp, a4, 15
                  xori         s9, a4, 698
                  srl          ra, s1, s11
                  nop
                  xori         zero, sp, -1125
                  sll          s1, a1, s7
                  xori         s5, s6, -908
                  sra          tp, s7, t0
                  xor          a5, a7, sp
                  sub          s0, t1, a2
                  beq          s6, sp, 488f
481:              lui          s1, 373848
                  slt          tp, s3, a1
                  nop
                  lui          t2, 545454
                  and          t6, a1, t0
                  or           s11, t5, a4
                  ori          s11, s9, 28
488:              ori          s7, s4, -1005
                  blt          s10, zero, 509f
                  sltu         t1, s0, a5
                  sltiu        a6, s8, -1241
                  add          ra, s7, s1
                  sltu         a4, s5, s10
                  beq          s1, s7, 496f
                  sltiu        s7, t5, 1969
496:              xor          t0, tp, s4
                  sra          s4, s0, t4
                  lui          t1, 196821
                  beq          a2, t0, 512f
                  bltu         tp, s2, 509f
                  bgeu         t0, t5, 514f
                  srai         s2, s6, 9
                  nop
                  andi         a2, gp, -1288
                  sub          s4, s5, a4
                  blt          s1, t5, 517f
                  sltiu        s5, t4, 1657
                  sra          s4, s0, t6
509:              or           a7, s3, t2
                  srai         t2, sp, 24
                  lui          t0, 437769
512:              srli         zero, a2, 31
                  bgeu         t4, s11, 521f
514:              add          a4, s3, a2
                  srli         s2, a7, 10
                  sra          s2, a4, a2
517:              slti         a5, t0, -1004
                  nop
                  andi         a3, tp, -386
                  add          s1, s1, s4
521:              auipc        s6, 836277
                  srli         t1, t5, 11
                  sub          s0, t3, sp
                  bne          t5, a2, 541f
                  bgeu         s3, t4, 545f
                  xori         t1, t4, -136
                  and          s6, t1, s10
                  blt          ra, gp, 539f
                  xori         a0, t1, 66
                  add          a4, s0, s8
                  sll          s10, t1, zero
                  slli         s10, s1, 1
                  srai         t1, zero, 26
                  or           zero, s6, ra
                  lui          a5, 526101
                  ori          a6, s11, -34
                  xor          a7, s0, a4
                  sll          gp, t0, sp
539:              bne          s6, sp, 556f
                  srai         s10, t6, 23
541:              sub          s0, a7, s1
                  sub          t6, t5, s8
                  sll          gp, s11, gp
                  and          t1, s8, a6
545:              blt          t4, a2, 553f
                  srai         ra, t3, 27
                  bge          t4, gp, 552f
                  slti         a5, s7, -1134
                  slt          tp, a2, a1
                  bltu         a0, s5, 559f
                  srai         t0, tp, 20
552:              slli         s8, t2, 24
553:              srai         a0, a7, 23
                  nop
                  sltiu        t1, zero, -397
556:              slli         a1, s11, 21
                  bgeu         t6, s1, 560f
                  sltu         gp, a5, a6
559:              xor          s6, t0, a6
560:              beq          t0, a1, 573f
                  andi         a7, a2, -1307
                  bltu         t4, sp, 568f
                  ori          s5, a3, 1414
                  srl          t1, s7, s9
                  sltiu        a2, t5, 1783
                  sll          t4, t2, s10
                  bltu         a7, t6, 576f
568:              sltu         s7, sp, t4
                  bne          a6, ra, 580f
                  bltu         tp, zero, 588f
                  slt          s11, s11, a4
                  srai         a7, a0, 9
573:              beq          s8, s8, 581f
                  sll          s5, t5, a4
                  sltu         s0, s0, a6
576:              slt          s9, a6, sp
                  xori         s6, a3, -1428
                  srl          a3, gp, s5
                  and          t6, s10, a2
580:              sltiu        a1, a1, -1154
581:              xori         s5, s1, 984
                  beq          a2, a0, 595f
                  slt          ra, t1, s5
                  bltu         t0, s9, 592f
                  add          a2, ra, a7
                  sltiu        s11, t2, -518
                  srl          s6, gp, s4
588:              xor          a3, t0, a4
                  slli         s7, s8, 23
                  nop
                  ori          s10, a1, 857
592:              or           s2, s11, a1
                  addi         t4, a1, -427
                  slti         tp, sp, 1084
595:              auipc        s7, 608375
                  andi         t3, zero, -1658
                  ori          s8, s4, -1153
                  bgeu         t4, t5, 609f
                  nop
                  auipc        s11, 35349
                  srai         gp, sp, 15
                  xor          a4, s7, t2
                  addi         t2, a5, 1301
                  beq          ra, s11, 621f
                  xori         s8, gp, 1709
                  sll          a3, t3, t6
                  slti         t0, a4, 471
                  andi         a0, s5, 668
609:              bne          t4, t5, 614f
                  xori         a4, s0, 394
                  sltiu        a0, a7, -734
                  andi         tp, s10, 1100
                  add          t4, s2, a5
614:              or           a2, t6, t3
                  bge          a3, a5, 618f
                  slli         s9, t1, 13
                  and          ra, t4, s11
618:              beq          ra, a3, 623f
                  add          s11, t5, s10
                  and          s4, s9, gp
621:              addi         a4, a4, -277
                  nop
623:              xor          a1, s2, s8
                  addi         t2, s6, 1955
                  bltu         s9, a3, 635f
                  srli         a4, a7, 19
                  slt          gp, t2, a5
                  bge          s2, tp, 638f
                  or           a7, s1, a2
                  srai         s1, s4, 21
                  beq          a7, s11, 632f
632:              bgeu         t5, t5, 640f
                  xor          a2, t6, s6
                  sra          gp, a5, s7
635:              and          s1, s11, s1
                  beq          t2, t1, 656f
                  blt          a5, tp, 646f
638:              nop
                  slli         s1, a3, 25
640:              sll          t2, a5, a0
                  blt          s11, s11, 643f
                  addi         zero, t2, -674
643:              auipc        t1, 717861
                  xor          t0, s1, ra
                  or           a5, tp, s11
646:              add          ra, t5, s8
                  bltu         ra, a5, 650f
                  slt          a2, s3, a7
                  andi         s7, a0, 556
650:              addi         tp, t1, -1550
                  ori          s11, zero, 2011
                  nop
                  add          a3, t4, a1
                  sll          s10, a1, s10
                  bge          a2, a6, 657f
656:              srai         gp, zero, 12
657:              lui          a3, 650499
                  sra          a4, s9, t1
                  srli         t0, t4, 20
                  xori         s10, a5, 435
                  slt          s9, tp, a2
                  sltiu        s4, s3, -326
                  xor          s10, s7, sp
                  slti         a2, s3, 679
                  bge          tp, s5, 675f
                  andi         s11, a0, 151
                  beq          a1, t0, 669f
                  sub          a4, a2, a7
669:              auipc        zero, 79974
                  addi         s10, s9, 220
                  slt          a4, t6, a0
                  beq          s4, t1, 678f
                  bge          s0, s4, 676f
                  blt          t3, sp, 679f
675:              sub          t6, t6, s0
676:              srai         s7, ra, 8
                  or           a6, a3, s8
678:              blt          sp, t5, 683f
679:              and          tp, t4, gp
                  sltu         s10, a0, ra
                  nop
                  xor          a1, t5, sp
683:              bltu         s5, sp, 692f
                  slti         s8, t3, 823
                  bltu         s2, s5, 702f
                  blt          a6, a0, 706f
                  slli         s11, a4, 5
                  addi         a1, t6, -1709
                  nop
                  sltu         a3, s1, s7
                  lui          s10, 678571
692:              ori          t3, t5, 1815
                  sra          t4, s4, a7
                  or           t3, s9, gp
                  sltu         s8, t2, sp
                  bge          t2, t6, 709f
                  sra          a5, s9, sp
                  sll          a5, a2, tp
                  sll          gp, s9, s3
                  add          s1, s1, s11
                  sra          a3, ra, s4
702:              bge          s4, t1, 703f
703:              slti         s11, s6, -574
                  sltu         s8, s11, s7
                  or           t3, a6, s9
706:              xor          t6, s3, s7
                  srai         t1, t3, 3
                  auipc        t6, 713343
709:              auipc        a5, 602365
                  sll          a3, ra, a3
                  bltu         s6, s2, 720f
                  and          s1, a1, a0
                  srai         a4, s8, 2
                  bltu         t6, s5, 717f
                  ori          gp, a2, 97
                  slli         s8, s6, 29
717:              sll          t2, ra, s10
                  sra          ra, s7, s10
                  or           s9, s8, t3
720:              slti         a3, a5, -1370
                  bgeu         s6, t4, 730f
                  bge          t3, a5, 739f
                  sltiu        t2, a3, 71
                  or           a0, s5, ra
                  slt          s10, t1, a3
                  lui          s0, 275348
                  slti         s0, t6, -377
                  xor          s0, t4, a1
                  bge          t0, t1, 740f
730:              sub          s8, t2, t3
                  ori          t2, s0, 1967
                  xor          s2, s7, a4
                  srli         t0, t5, 31
                  slli         s0, s9, 26
                  sltiu        s11, zero, 1234
                  nop
                  bne          s8, a7, 740f
                  bltu         sp, s6, 746f
739:              blt          s6, gp, 749f
740:              add          s5, a3, sp
                  srai         s0, zero, 7
                  srai         t6, t2, 26
                  sltiu        s10, a0, 1235
                  addi         s11, s11, -912
                  srai         a0, sp, 24
746:              bltu         tp, s1, 766f
                  blt          t3, gp, 755f
                  slli         t1, gp, 29
749:              sltu         t3, s7, tp
                  xori         a2, a5, 1503
                  bgeu         t2, sp, 762f
                  auipc        a1, 721892
                  srai         s5, t4, 4
                  slt          s0, a1, a4
755:              and          a5, s2, t3
                  srl          a1, a6, a7
                  xor          zero, a3, t5
                  srl          a0, s9, t2
                  srli         a6, a1, 19
                  bge          a0, zero, 768f
                  sll          t0, gp, s4
762:              andi         s1, s7, -1204
                  slti         a3, s8, -156
                  sra          a2, a1, gp
                  slt          s10, s2, s0
766:              bne          t5, s8, 777f
                  blt          t4, a1, 785f
768:              slt          t3, zero, s11
                  and          a1, t2, s0
                  bgeu         s7, s6, 778f
                  srli         a7, t6, 20
                  sra          t0, s11, zero
                  slli         s11, sp, 29
                  beq          s10, tp, 779f
                  xori         tp, t2, -281
                  lui          s4, 105073
777:              srl          t0, s7, a5
778:              bgeu         t4, t2, 780f
779:              bgeu         t5, s4, 792f
780:              lui          t3, 667194
                  and          a6, sp, t1
                  sltiu        s4, a4, 625
                  bltu         s9, zero, 800f
                  andi         s1, s0, -1131
785:              ori          s2, t3, 1431
                  sll          t2, s1, t1
                  bge          ra, ra, 793f
                  sltiu        ra, t0, 1993
                  beq          gp, a1, 799f
                  srli         s10, s9, 3
                  andi         zero, a4, -165
792:              xor          a5, zero, t4
793:              xor          t6, t5, t2
                  addi         s0, t4, 1590
                  andi         s9, t3, -1801
                  or           a4, s7, a1
                  and          t4, t0, tp
                  slti         s8, s3, 494
799:              auipc        t6, 663200
800:              sltiu        a2, a7, -873
                  and          t3, s2, tp
                  lui          a2, 510276
                  slti         a7, a5, -1206
                  beq          s1, s6, 812f
                  sltu         a1, s1, a6
                  sltu         s11, gp, s9
                  srl          tp, t0, s6
                  and          t4, s6, s5
                  nop
                  nop
                  sltu         a2, a4, s9
812:              slt          s0, a5, t5
                  blt          t0, t1, 831f
                  auipc        gp, 528744
                  xori         ra, t3, 1319
                  sltiu        s7, s10, -1347
                  srai         s8, s9, 24
                  slt          s11, gp, a6
                  sub          s1, ra, s5
                  sll          s11, s6, sp
                  addi         a6, s10, -632
                  sub          s5, a2, ra
                  slt          s8, a3, s6
                  lui          s10, 487993
                  srai         t1, a3, 27
                  srai         t4, a0, 27
                  andi         gp, t5, -23
                  sra          a2, t0, s7
                  xor          s9, t3, s6
                  sra          s9, s2, s5
831:              blt          t1, a4, 840f
                  xori         s8, sp, -594
                  slt          s5, s5, s5
                  auipc        t6, 965769
                  sltu         s10, s11, zero
                  blt          a7, tp, 838f
                  bne          a5, t2, 845f
838:              sltu         t1, s2, t6
                  beq          a5, s11, 856f
840:              sltu         t2, t1, s11
                  bgeu         s7, s10, 844f
                  sltu         a4, a0, tp
                  slli         t3, s1, 15
844:              sll          t3, s3, s6
845:              srli         s10, a3, 5
                  sltiu        s9, t3, 1746
                  bge          a7, s1, 852f
                  add          s8, t6, t2
                  and          s7, a4, a0
                  bge          s2, ra, 861f
                  bge          a7, t0, 860f
852:              sltu         s8, s2, ra
                  add          s10, s4, a3
                  sltu         a4, t2, s11
                  srai         ra, sp, 10
856:              sltu         tp, gp, sp
                  or           s10, a4, a1
                  sltiu        t3, t3, 386
                  sll          s10, a0, tp
860:              blt          s2, a1, 873f
861:              sub          a4, a2, s0
                  bge          s1, a4, 879f
                  bgeu         s1, a1, 868f
                  bgeu         a2, a7, 869f
                  lui          s7, 9646
                  lui          ra, 683841
                  srli         a4, a2, 29
868:              srl          a7, ra, s0
869:              srai         tp, t3, 27
                  bgeu         a7, ra, 873f
                  sll          t1, s1, a3
                  add          s6, a2, gp
873:              xori         gp, a4, -736
                  andi         s1, t1, 1747
                  addi         gp, a0, 420
                  sltu         s10, t0, s9
                  bne          s5, gp, 879f
                  bne          s8, t3, 898f
879:              andi         a4, t0, -1193
                  sll          gp, s2, t2
                  bne          s2, t1, 890f
                  bge          t6, ra, 883f
883:              and          s9, t3, s6
                  sltu         s10, sp, a2
                  sra          s6, s6, s3
                  srai         a1, s10, 3
                  lui          a1, 1030566
                  or           a6, s2, a2
                  bge          s6, ra, 892f
890:              bge          a0, zero, 901f
                  sra          s9, ra, s0
892:              xori         a7, s1, 1057
                  or           s9, s8, a1
                  bltu         t6, s8, 904f
                  or           s1, a3, a7
                  auipc        a4, 356654
                  lui          s0, 827286
898:              beq          a1, s6, 906f
                  nop
                  srai         a7, t2, 17
901:              or           s4, tp, t5
                  sltiu        zero, s1, -1297
                  slti         s9, a0, 1946
904:              or           a2, sp, t3
                  sltiu        t4, t0, 443
906:              bltu         gp, a1, 923f
                  nop
                  bge          gp, a1, 916f
                  bgeu         a5, a5, 920f
                  slli         s10, ra, 26
                  andi         s9, t4, 738
                  blt          a3, t2, 932f
                  slti         tp, a3, -749
                  or           gp, tp, s4
                  srl          a3, a0, s1
916:              auipc        t2, 1026407
                  slti         zero, t1, -613
                  srl          a6, s10, a4
                  sll          t3, t1, t0
920:              auipc        t6, 90169
                  and          a0, tp, s10
                  sltiu        s2, gp, 1066
923:              or           t4, a5, s11
                  add          s10, s8, a3
                  addi         s11, t6, -1374
                  sub          t4, t6, t3
                  add          a0, s4, a2
                  add          s11, s3, t6
                  and          s10, s1, t3
                  andi         s1, a3, -1477
                  lui          zero, 445260
932:              auipc        s10, 930882
                  xori         ra, t4, 233
                  xor          s5, a7, a4
                  slt          a0, s8, a3
                  srli         s10, s1, 26
                  or           zero, s8, t4
                  beq          s11, a2, 951f
                  srli         s0, t3, 27
                  srai         t3, t2, 0
                  slli         t4, t6, 3
                  srai         t6, s6, 9
                  bltu         s10, zero, 952f
                  sll          a0, t3, s2
                  sltu         a6, gp, tp
                  addi         s7, gp, 1951
                  or           a3, t4, a1
                  srl          a0, a0, s1
                  la           s10, region_0+843 #start riscv_load_store_rand_instr_stream_1
                  sb           a7, 6(s10)
                  addi         zero, s7, -67
                  srl          t0, s1, a7
                  lbu          a1, -14(s10)
                  srai         a2, s8, 7
                  xori         s5, tp, 670
                  slt          a0, s8, a4
                  lbu          t3, -15(s10)
                  sb           a7, -8(s10)
                  xori         t2, a3, -1549
                  lhu          s4, -5(s10)
                  lbu          t1, 12(s10)
                  auipc        t6, 435561
                  sltiu        s5, s11, 1520
                  lb           a4, 12(s10)
                  slt          a3, sp, ra
                  and          a4, t4, t5
                  lb           s2, 16(s10)
                  nop
                  lb           ra, -4(s10)
                  lbu          s5, 13(s10)
                  lh           a2, 7(s10)
                  auipc        t3, 574781
                  slt          ra, t1, gp
                  srai         s6, s4, 31
                  sb           t6, -6(s10)
                  sb           t3, 14(s10)
                  ori          s4, zero, 1005
                  slli         s6, t3, 5
                  and          ra, a7, a1
                  sb           a6, -15(s10)
                  xor          t6, sp, a1
                  sra          gp, s7, a7
                  lb           t2, -14(s10)
                  srai         a1, s11, 15
                  xor          s0, a2, a5
                  sb           ra, -2(s10)
                  lh           t6, 15(s10)
                  auipc        tp, 621988
                  srai         a4, s11, 30
                  sltiu        t2, sp, 1507
                  sb           s7, -5(s10)
                  or           ra, t0, t3
                  sra          a4, t3, s3
                  lbu          s2, 13(s10)
                  lui          t2, 467312
                  and          s6, a6, s4
                  srai         s5, s8, 1
                  sltu         t0, sp, zero
                  sb           t6, -5(s10) #end riscv_load_store_rand_instr_stream_1
                  add          s8, s4, zero
                  ori          t1, gp, 1601
951:              srl          t2, t5, s2
952:              beq          ra, s4, 965f
                  andi         a3, a2, 1451
                  auipc        t4, 211382
                  xor          s6, s2, zero
                  xor          zero, s11, a6
                  andi         a5, s0, -1355
                  and          s9, s0, a7
                  srai         s0, tp, 28
                  and          a3, t6, s10
                  bne          tp, t2, 966f
                  and          a0, a1, s10
                  bne          t6, s6, 971f
                  srai         ra, tp, 1
965:              xor          s11, s6, s6
966:              nop
                  sub          t6, ra, a6
                  srl          a4, s2, s3
                  auipc        a2, 85149
                  sra          s0, t2, a7
971:              srl          t1, t1, s5
                  bne          s4, zero, 992f
                  sra          s0, t1, s11
                  bltu         t2, s7, 982f
                  bge          t2, t3, 986f
                  sra          zero, t4, a5
                  or           s6, a6, s4
                  bne          gp, s6, 984f
                  sltu         t2, t5, s10
                  ori          t2, a5, 1427
                  beq          s9, t3, 983f
982:              xor          a5, s5, s11
983:              ori          s10, t5, -1129
984:              bge          t1, s5, 992f
                  nop
986:              addi         t0, s7, 97
                  blt          gp, s9, 997f
                  slti         t3, sp, 1392
                  sub          s0, a0, s0
                  sltu         s8, s9, s10
                  sll          a5, s8, s4
992:              sltiu        a3, a7, 796
                  sra          t6, a2, s1
                  addi         tp, s7, 583
                  xori         a0, tp, 1635
                  auipc        a1, 600379
997:              and          gp, a1, s10
                  slt          s6, a3, s1
                  andi         s7, s3, 30
                  or           s9, ra, s11
                  sll          a3, s3, s4
                  and          a2, s3, a1
                  beq          s0, s0, 1006f
                  srli         gp, a0, 14
                  sll          a6, s11, s2
1006:             blt          a4, s1, 1015f
                  add          s5, s4, a5
                  bne          a7, t4, 1019f
                  add          a3, s3, zero
                  bgeu         s5, s1, 1030f
                  srl          a4, t6, t4
                  slti         s0, t5, -1866
                  bgeu         t0, a1, 1023f
                  bgeu         ra, zero, 1031f
1015:             or           s5, a2, s2
                  srl          a2, t5, a7
                  sll          s6, s7, a3
                  sltu         a2, s1, s6
1019:             slt          t1, s7, a4
                  sltu         t6, s7, s1
                  bltu         a6, s2, 1029f
                  xori         s10, t6, 1280
1023:             sll          gp, t2, t6
                  sltu         s0, s7, s1
                  srl          s11, a3, s6
                  srai         t2, s2, 10
                  and          tp, s0, gp
                  slli         s1, t5, 21
1029:             sltiu        gp, s0, -1878
1030:             add          a5, s4, s6
1031:             slt          t3, s8, t1
                  sra          t2, s0, sp
                  nop
                  bge          a2, a6, 1043f
                  lui          s4, 640211
                  slti         s8, s7, -725
                  lui          s5, 766433
                  blt          gp, s7, 1041f
                  andi         t1, s8, -435
                  or           s4, t5, s2
1041:             ori          ra, s6, -1946
                  or           a5, s8, t0
1043:             andi         t1, s6, -881
                  bge          s7, s11, 1045f
1045:             sll          s8, sp, t1
                  andi         s8, s6, 1051
                  sra          ra, t6, a4
                  slti         s9, t4, -101
                  srl          s2, s10, gp
                  sltu         a1, tp, t1
                  slt          a1, s2, gp
                  add          a3, s1, s2
                  bge          a1, s1, 1070f
                  xori         a0, gp, 2013
                  bltu         t6, tp, 1072f
                  sll          a2, a1, a1
                  or           a4, s6, s10
                  addi         a3, a4, 1829
                  bgeu         a2, a3, 1064f
                  beq          s5, zero, 1063f
                  beq          t1, s2, 1072f
                  blt          s1, a7, 1064f
1063:             sra          t0, sp, s0
1064:             slli         a0, s2, 29
                  auipc        t6, 690344
                  or           a4, zero, s1
                  sra          ra, a6, ra
                  srli         s2, a3, 13
                  bgeu         s4, s5, 1076f
1070:             auipc        s0, 184178
                  nop
1072:             xori         s2, t4, -1090
                  nop
                  slti         s7, t5, 1142
                  slli         a6, t5, 12
1076:             and          zero, a1, s1
                  lw           tp, 4(t5)
                  slt          s10, s5, a5
                  lui          s1, 997655
                  srli         s10, a0, 2
                  addi         s1, s5, -1480
                  addi         t5, t5, 12
                  ori          a3, t4, 915
                  nop
                  sub          s8, s3, t5
1472:             addi x21, x4, 1
1472:             jalr x21, x21, 0
sub_10:           addi         t5, t5, -52
                  addi         a2, t2, -988
                  nop
                  sltiu        s5, t5, 1873
                  sw           tp, 4(t5)
                  srl          s8, a7, a3
                  slti         s9, t0, 2011
                  la           s8, region_1+274 #start riscv_load_store_rand_instr_stream_0
                  lw           s10, 1230(s8)
                  slti         s0, a0, -1302
                  sb           s0, 9(s8)
                  sb           t2, 698(s8)
                  lb           gp, 1507(s8)
                  sltiu        s1, a1, 690
                  lbu          a7, 505(s8)
                  andi         t4, s6, 293
                  lb           t4, 237(s8)
                  lbu          s1, 683(s8)
                  sra          t4, t2, s2
                  lbu          a6, 1637(s8)
                  lb           a6, 655(s8)
                  srli         s10, a2, 1
                  slli         s5, sp, 0
                  auipc        s6, 1047832
                  lw           t4, -242(s8)
                  lbu          a5, 346(s8)
                  lb           a5, 1205(s8)
                  sb           s1, 509(s8)
                  auipc        a7, 706044
                  ori          s11, a6, 1877
                  sb           t3, 179(s8)
                  lb           t3, 470(s8)
                  lbu          t6, 514(s8)
                  sb           s3, 1226(s8)
                  sb           t3, 113(s8)
                  sb           t0, 1345(s8)
                  lb           t4, 674(s8)
                  lh           s4, -240(s8)
                  lbu          t1, 1605(s8)
                  sh           t3, 1518(s8)
                  lh           zero, 584(s8)
                  or           s5, a0, s3
                  lw           s0, 114(s8)
                  srai         a3, ra, 10
                  sra          s11, s11, a3
                  sb           a5, 201(s8)
                  lb           tp, 309(s8) #end riscv_load_store_rand_instr_stream_0
                  ori          t6, a1, -1449
                  add          s0, ra, s10
                  srai         zero, s4, 21
                  andi         a7, ra, -1570
                  xori         s11, t3, 171
                  xori         t4, s2, -372
                  lui          a5, 201882
                  slli         a2, t2, 7
                  slti         a3, t1, -1270
                  sll          t1, a6, a7
                  sra          t3, s11, zero
                  bltu         s4, t5, 21f
                  srl          a7, t4, a6
                  slt          a4, t2, a0
                  srai         s11, a5, 28
                  srl          a4, t5, gp
                  auipc        a1, 576611
                  bge          s0, zero, 27f
                  slt          a6, a7, s1
                  bgeu         t5, a0, 29f
                  srai         gp, a2, 2
21:               ori          a6, s9, 288
                  addi         t2, s5, 1900
                  xor          s5, a2, a5
                  blt          gp, sp, 39f
                  or           a5, t5, s6
                  slli         a1, a4, 11
27:               ori          s4, s5, -1208
                  srl          s9, sp, s3
29:               sll          a2, t2, a4
                  nop
                  beq          ra, t0, 48f
                  bgeu         t3, a2, 50f
                  sltu         s2, s3, a4
                  slli         a2, a6, 23
                  addi         a5, a3, 55
                  addi         s7, a3, 1929
                  nop
                  bge          s5, s7, 53f
39:               add          t1, s10, zero
                  slti         ra, a0, 648
                  sub          s1, a2, s2
                  xori         gp, t0, -561
                  slti         s8, t6, -1749
                  add          a1, a3, s1
                  lui          a2, 55544
                  ori          t6, s4, -1196
                  bne          a4, t3, 49f
48:               srli         zero, a6, 13
49:               sra          s10, s3, ra
50:               bgeu         zero, sp, 60f
                  slli         tp, s5, 1
                  sltu         t0, t4, s7
53:               auipc        ra, 71131
                  slli         s7, s3, 28
                  and          a5, gp, t3
                  srli         s1, a6, 15
                  bge          s4, zero, 66f
                  nop
                  srai         t4, t2, 1
60:               slt          s4, s3, t5
                  xori         s2, s9, -1666
                  blt          s10, t5, 69f
                  srl          s8, a5, sp
                  sll          t3, s3, t0
                  andi         t4, ra, 530
66:               nop
                  sll          s1, t0, t4
                  add          a1, a6, a7
69:               srl          a4, a0, a6
                  srli         a1, t3, 27
                  slti         ra, s9, 946
                  srl          a1, t0, a4
                  slt          zero, a3, t6
                  slli         ra, tp, 22
                  sltu         a3, s3, t3
                  sll          s7, s6, t6
                  or           t4, s5, tp
                  and          t0, s1, a7
                  bgeu         sp, a7, 83f
                  sra          ra, a4, ra
                  lui          s4, 366173
                  lui          s9, 873796
83:               slli         a7, t5, 9
                  addi         t3, s5, 1013
                  srai         a4, a2, 18
                  srli         s8, a4, 4
                  or           zero, s6, t1
                  bgeu         s7, a1, 107f
                  andi         t2, a1, 1419
                  bge          t0, t3, 106f
                  sltiu        s7, s6, 926
                  sltu         a3, s3, a1
                  srli         s10, tp, 29
                  sltiu        a3, a2, 1690
                  srai         s2, sp, 18
                  and          a1, s9, t4
                  sltu         a4, a4, s0
                  sra          a0, s4, t3
                  sra          s11, t2, s0
                  add          tp, gp, t3
                  xori         s9, tp, -286
                  addi         s2, t1, 612
                  addi         tp, s1, 1658
                  beq          zero, a1, 122f
                  ori          a3, a3, -274
106:              lui          s7, 592901
107:              srl          ra, tp, t5
                  bgeu         s7, a4, 123f
                  srai         a1, a0, 8
                  bge          gp, s6, 128f
                  nop
                  lui          a3, 769167
                  addi         a1, s6, -330
                  bltu         s5, s8, 123f
                  sra          a7, zero, t2
                  sll          a3, s7, s4
                  srli         a7, sp, 30
                  srl          s9, t2, s9
                  andi         s0, t1, 1872
                  and          tp, a5, s8
                  srli         a2, s4, 17
122:              xori         t2, a2, 636
123:              addi         s9, a4, -214
                  sll          t3, t1, t0
                  srai         s0, s5, 4
                  srli         tp, a7, 20
                  nop
128:              slli         gp, a2, 23
                  srli         s6, a4, 28
                  slli         t6, a6, 17
                  lui          t6, 82083
                  sltiu        s9, s8, 7
                  nop
                  and          ra, t6, tp
                  sub          s7, t6, sp
                  sll          a3, s6, tp
                  sltu         s4, sp, a4
                  srai         a0, sp, 7
                  sub          a2, s11, s3
                  srli         t2, s0, 17
                  sll          s5, tp, gp
                  beq          s1, s3, 159f
                  slti         s7, t6, 1995
                  slt          gp, s7, a5
                  add          s2, s3, a0
                  beq          s3, s9, 164f
                  slli         t6, a4, 13
                  slti         tp, s7, 1227
                  bge          s1, s5, 160f
                  auipc        a6, 907901
                  sra          a2, a0, s4
                  sra          s5, s9, a2
                  sra          t2, s5, s0
                  slti         t2, t2, 1753
                  sll          a0, s5, t5
                  sub          s10, s6, t4
                  and          s11, t4, ra
                  sub          a5, t4, t5
159:              lui          t0, 810899
160:              addi         s9, a1, -409
                  sra          gp, a4, s6
                  lui          t0, 212220
                  sltiu        t6, a4, -1727
164:              xor          s7, a7, ra
                  lui          a5, 990694
                  bge          s11, t1, 167f
167:              slt          t3, s2, a6
                  lw           tp, 4(t5)
                  sltu         t4, a6, t6
                  sub          t2, tp, zero
                  addi         ra, s8, -1120
                  sll          a5, a3, tp
                  andi         gp, s8, 293
                  addi         t5, t5, 52
                  slti         a7, a3, -1772
                  sub          t0, s11, a4
                  srai         t6, t2, 9
225:              addi x8, x4, 0
225:              jalr x8, x8, 0
sub_4:            addi         t5, t5, -52
                  sll          s10, s11, a2
                  ori          a5, a3, 1675
                  sw           tp, 4(t5)
                  lui          s8, 477881
                  auipc        t1, 789595
                  and          s10, s11, s8
                  slli         a4, t5, 1
                  or           s5, s6, a7
                  bltu         s2, t6, 14f
                  srli         s5, a7, 1
                  bge          a2, s8, 10f
                  auipc        s10, 524573
                  blt          s8, s11, 21f
                  slli         a4, tp, 3
                  lui          s2, 52901
10:               sub          s8, a3, s8
                  ori          tp, a5, 70
                  srli         s6, s9, 7
                  xor          s11, s3, t2
14:               nop
                  nop
                  bne          s8, t1, 34f
                  auipc        a4, 60505
                  xor          a7, s8, t1
                  bge          a5, a0, 39f
                  andi         t6, s9, 446
21:               sll          s6, s2, s8
                  bge          a7, t0, 37f
                  bltu         s1, zero, 39f
                  xori         a6, s1, -1064
                  beq          s0, s0, 29f
                  auipc        a3, 648773
                  bge          s8, s6, 44f
                  bge          t6, a2, 33f
29:               andi         zero, t0, 1359
                  ori          a3, sp, -331
                  slt          s2, a6, a2
                  addi         zero, a5, 533
33:               andi         t3, a5, -1025
34:               sll          a4, a3, a4
                  xor          s4, a3, a0
                  lui          ra, 415876
37:               and          s4, t2, t5
                  bne          tp, s4, 53f
39:               auipc        t3, 712472
                  beq          zero, t2, 47f
                  slli         s4, a2, 12
                  andi         s10, s6, 1252
                  sra          s0, t6, gp
44:               srli         t2, t0, 0
                  srl          s9, a4, a3
                  xor          s4, s11, t6
                  addi         t4, s8, -1081
                  add          a0, s8, a1
                  addi         a0, a2, -964
                  lui          a4, 559935
                  la           s2, sub_5
                  srai         t0, a5, 24
                  addi         s2, s2, -464
                  srli         s9, tp, 26
sub_4_j6:         jalr         tp, s2, 465 #jump sub_4 -> sub_5
47:               sltu         a7, t4, a6
                  sll          gp, s10, s6
                  sra          s11, t0, tp
                  bne          s2, s11, 59f
                  addi         a6, s3, -1891
                  slt          s0, t6, a2
53:               andi         s10, a0, 1300
                  slli         gp, gp, 14
                  sub          ra, s9, s10
                  bgeu         s5, s7, 59f
                  bge          t5, s3, 59f
                  andi         a1, s10, 1297
59:               add          a7, a3, s11
                  nop
                  sll          gp, a2, s10
                  sll          t4, s2, t6
                  auipc        zero, 991613
                  lw           tp, 4(t5)
                  addi         s2, t5, 1037
                  addi         t5, t5, 52
                  ori          s7, s4, 1692
83:               addi x6, x4, 0
83:               jalr x6, x6, 0
sub_9:            slti         s10, s8, 16
                  addi         t5, t5, -56
                  add          a2, a6, t4
                  sw           tp, 4(t5)
                  sll          s10, t1, s2
                  sltu         s8, s10, t2
                  nop
                  slli         a2, sp, 9
                  sltiu        s6, s2, -146
                  sltu         t2, t4, t2
                  la           s10, sub_10
                  sub          tp, a4, a3
                  slt          s0, a4, s1
                  add          a0, a1, a1
                  xori         a3, sp, 1537
                  slli         a4, s8, 5
                  lui          s0, 264147
                  ori          a2, sp, 1492
                  addi         s10, s10, 604
                  sltiu        t2, t5, 1578
                  bge          ra, s5, sub_9_j12 #branch to jump instr
                  andi         t1, s7, 1453
sub_9_j12:        jalr         tp, s10, -604 #jump sub_9 -> sub_10
                  srli         s4, s6, 11
                  bge          s11, s6, 6f
                  addi         a5, a7, -474
                  sra          a6, a0, gp
                  blt          tp, a1, 23f
                  beq          a2, a2, 19f
6:                blt          t1, gp, 18f
                  blt          ra, a5, 12f
                  sub          t1, a7, t6
                  srli         tp, a1, 5
                  beq          s10, s8, 14f
                  bne          s10, t2, 20f
12:               and          s6, a1, a5
                  srai         a1, a7, 10
14:               slti         a4, s9, -1116
                  addi         a1, a3, -168
                  andi         s10, s9, -1520
                  srli         s6, a0, 16
18:               add          s5, t6, s3
19:               xori         s8, a3, -1403
20:               or           a2, zero, s5
                  slli         t6, s3, 9
                  slli         a4, t6, 9
23:               sltiu        s10, s11, 1825
                  sub          s10, sp, a7
                  andi         a0, s8, 1362
                  srl          s4, s0, s11
                  lui          a0, 685186
                  add          gp, s4, s10
                  sub          s11, tp, a7
                  xor          gp, t4, a0
                  bge          a1, s8, 38f
                  auipc        s1, 33652
                  lui          a5, 1041456
                  srl          s2, tp, t3
                  addi         a4, t4, 1762
                  ori          t6, t3, 390
                  sll          a4, s9, a2
38:               nop
                  bge          s11, s4, 53f
                  xori         s4, a7, 925
                  srl          s1, s2, s5
                  sra          s0, s2, s1
                  bltu         tp, a6, 52f
                  slti         a6, s0, -735
                  ori          a3, sp, 423
                  srli         s10, s11, 14
                  xori         s1, a7, 1327
                  lui          a2, 908303
                  blt          a5, a3, 56f
                  bge          a2, a0, 56f
                  bgeu         t0, a5, 54f
52:               xori         a7, a7, -1160
53:               bgeu         a1, a2, 56f
54:               lui          a4, 951096
                  addi         t6, s0, -1664
56:               slti         t3, a5, 787
                  addi         t4, t6, 426
                  or           s11, s10, s10
                  and          ra, a6, a4
                  srl          s11, s8, s10
                  sra          s2, a1, a2
                  srai         t4, t4, 31
                  addi         a1, s7, -884
                  lw           tp, 4(t5)
                  sll          gp, s2, s3
                  addi         t5, t5, 56
                  sll          s8, t0, a7
                  addi         s7, t6, 1179
92:               addi x10, x4, 1
92:               jalr x10, x10, 0
sub_1:            srli         t6, s3, 9
                  srl          s9, s4, ra
                  addi         t5, t5, -24
                  nop
                  slli         gp, gp, 20
                  srl          t4, s10, t3
                  addi         s9, s2, 834
                  addi         s6, s9, 1531
                  sw           tp, 4(t5)
                  auipc        t6, 143895
                  slti         t1, s11, 697
                  lui          s1, 460
                  slti         s11, s0, 1587
                  xor          a7, s7, s9
                  andi         s4, s11, 1473
                  lui          a1, 897623
                  bgeu         a7, t3, sub_1_j2 #branch to jump instr
                  addi         t0, zero, 1729
sub_1_j2:         jal          tp, sub_3 #jump sub_1 -> sub_3
                  la           a0, sub_2
                  add          a5, s0, s11
                  addi         a0, a0, -519
                  andi         s0, t2, 176
                  srl          t6, a2, a5
                  sub          t2, s2, s1
                  andi         t2, t0, 1889
                  bge          s8, a2, sub_1_j3 #branch to jump instr
                  lui          s8, 112887
                  or           t1, t3, s2
                  sub          s9, t0, t1
                  slli         a4, t1, 9
sub_1_j3:         jalr         tp, a0, 519 #jump sub_1 -> sub_2
                  lui          t0, 735996
                  xori         s4, a4, -1572
                  sltiu        gp, s6, -354
                  slli         gp, zero, 30
                  slti         s1, a7, -179
                  auipc        a6, 207524
                  sub          t1, s9, t1
                  srai         s5, t1, 8
sub_1_j4:         jal          tp, sub_4 #jump sub_1 -> sub_4
                  lui          t6, 288154
                  auipc        t0, 12128
                  beq          a6, s2, 9f
                  sub          t0, a2, zero
                  sll          s2, a7, a6
                  xor          t2, sp, s0
                  srli         s11, t0, 12
                  sll          s6, t3, s7
                  or           s4, a7, s4
9:                sub          a4, a2, s7
                  slti         ra, s2, -1683
                  srl          s11, t2, t2
                  addi         s7, t6, 181
                  lw           tp, 4(t5)
                  slti         zero, s2, 1786
                  addi         t5, t5, 24
                  lui          s1, 376508
                  nop
                  addi         a0, s5, -126
                  nop
61:               addi x9, x4, 0
61:               jalr x9, x9, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  add x19, x30, zero
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x18, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x18, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x18, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x18, x13, ecall_handler
                  li x13, 0x1
                  beq x18, x13, instr_fault_handler
                  li x13, 0x5
                  beq x18, x13, load_fault_handler
                  li x13, 0x7
                  beq x18, x13, store_fault_handler
                  li x13, 0xc
                  beq x18, x13, pt_fault_handler
                  li x13, 0xd
                  beq x18, x13, pt_fault_handler
                  li x13, 0xf
                  beq x18, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x30, x19, zero
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
                  add x30, x19, zero
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
                  add x30, x19, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x30, x19, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x30, x19, zero
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
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x30, x19, zero
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
