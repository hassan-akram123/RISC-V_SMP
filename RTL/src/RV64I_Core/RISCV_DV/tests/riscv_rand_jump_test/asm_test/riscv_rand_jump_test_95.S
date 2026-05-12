.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
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
                  li x0, 0x0
                  li x1, 0xfcf07ebd
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x3
                  li x6, 0xad8fbdfc
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x9
                  li x10, 0xfc2efd91
                  li x11, 0x0
                  li x13, 0xd
                  li x14, 0xfc500e2c
                  li x15, 0xc06a91df
                  li x16, 0x93917ffe
                  li x17, 0xffd33792
                  li x18, 0x80000000
                  li x19, 0xf9e8747f
                  li x21, 0x80000000
                  li x22, 0xf3a3877a
                  li x23, 0x3
                  li x24, 0x80000000
                  li x25, 0xf
                  li x26, 0x6
                  li x27, 0x80000000
                  li x28, 0xfa1e059f
                  li x29, 0xf13cb7cd
                  li x30, 0x82088413
                  li x31, 0x5253ef63
                  la x12, user_stack_end
main:             la           a3, sub_1
                  xori         s8, s1, -1859
                  nop
                  andi         s2, s0, -451
                  sub          a7, a7, t1
                  addi         a3, a3, 348
                  addi         t4, t6, -1751
                  xori         zero, s10, -2013
main_j3:          jalr         t5, a3, -348 #jump main -> sub_1
                  la           sp, region_1+1059 #start riscv_load_store_rand_instr_stream_2
                  slti         t2, ra, 474
                  slli         s11, a3, 3
                  lw           s1, -35(sp)
                  xori         t1, s6, 599
                  or           s3, a3, s3
                  lb           t1, -124(sp)
                  add          s1, s3, a4
                  srli         t1, ra, 22
                  xori         t0, zero, -671
                  xori         gp, a2, 730
                  sra          ra, a3, s6
                  lbu          t4, 160(sp)
                  andi         a0, a3, 1602
                  lh           s10, -159(sp)
                  sll          t0, s1, ra
                  sltiu        t4, s4, -663
                  andi         s8, a1, -1713
                  and          s8, s9, gp
                  sub          t5, t1, s2
                  lb           s5, 32(sp)
                  sh           t4, -147(sp)
                  add          s1, s3, s9
                  lbu          s9, 82(sp)
                  lui          s6, 129588
                  or           zero, a7, t5
                  sw           a6, -111(sp)
                  sh           s8, -21(sp)
                  lbu          t4, -11(sp)
                  slli         s1, t1, 17
                  lb           zero, -137(sp)
                  lbu          a7, -248(sp)
                  sh           s2, -91(sp)
                  lhu          a5, -137(sp)
                  sra          s2, s11, a2
                  ori          t5, a6, -1206
                  sb           a7, -6(sp)
                  sb           t5, 115(sp)
                  slli         t0, ra, 3
                  sh           a4, 247(sp)
                  sb           t2, -223(sp)
                  sb           s3, -183(sp)
                  sb           s1, 131(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1400 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -12(sp)
                  lb           a3, 8(sp)
                  lbu          s5, 13(sp)
                  lb           s8, -6(sp)
                  slt          s9, s6, tp
                  andi         s9, a3, -519
                  xori         s2, s7, 58
                  addi         t1, s6, -45
                  sw           a7, 4(sp)
                  sb           sp, 11(sp)
                  xor          t0, a5, sp
                  slti         a5, a1, 1533
                  slli         zero, a3, 31
                  lbu          t1, 1(sp)
                  lbu          s6, 6(sp)
                  auipc        s2, 270678
                  sra          t0, s2, a1
                  lbu          s11, 2(sp)
                  srai         t3, zero, 24
                  lui          s9, 928316
                  sb           a1, -1(sp)
                  lb           ra, 10(sp)
                  lb           tp, -13(sp)
                  lh           s0, 14(sp)
                  lh           t6, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  or           a7, tp, s11
                  bltu         a6, t5, 10f
                  sub          ra, s6, t4
                  sub          s0, tp, gp
                  sra          s11, s11, ra
                  addi         s5, tp, 1256
                  ori          t6, s0, 1995
                  ori          a3, gp, 1255
                  or           s7, a1, s3
                  sll          a5, t3, t5
10:               bltu         a1, s9, 18f
                  bgeu         t1, s11, 28f
                  beq          sp, a5, 13f
13:               sltu         s9, a4, sp
                  slti         t3, ra, 201
                  andi         s11, t5, -1343
                  sub          ra, a1, s5
                  sra          a7, t4, t2
18:               sltiu        s8, s2, 795
                  srli         s1, a2, 17
                  bne          a5, t4, 32f
                  xori         a4, s7, -1601
                  srai         s1, t3, 10
                  sltiu        a5, a2, -1630
                  andi         gp, zero, -710
                  srl          sp, s8, t1
                  slti         gp, tp, -1681
                  lui          s1, 127224
28:               beq          a7, a3, 45f
                  srli         t1, t6, 9
                  lui          a7, 686296
                  bne          s2, t3, 50f
32:               ori          s8, s9, -147
                  addi         t4, s4, -1038
                  srai         s5, s1, 5
                  bne          s10, s3, 39f
                  addi         s3, t0, -752
                  srai         t4, s11, 18
                  sra          gp, a3, a6
39:               beq          t0, a7, 59f
                  xori         t0, s9, 1533
                  srai         s7, s9, 12
                  xor          s5, s3, a2
                  sltiu        s10, t3, 857
                  and          s6, t3, a0
45:               sll          t4, gp, a3
                  sltiu        t0, t6, 512
                  andi         a6, s9, 1177
                  sub          s10, a3, t5
                  sra          s1, sp, a3
50:               sra          t4, a2, a5
                  slt          s11, s1, s2
                  sltu         t3, t5, t3
                  slli         zero, s4, 15
                  auipc        t6, 527096
                  xori         a4, a4, 611
                  nop
                  sltiu        a7, s10, -387
                  sltu         s6, t1, a3
59:               sra          tp, a4, tp
                  andi         sp, a1, 1164
                  or           t0, zero, s9
                  srai         zero, t0, 21
                  sra          s8, a7, s4
                  slli         s1, a3, 19
                  or           t0, a1, t0
                  sra          a0, t4, s8
                  sltiu        s8, t5, 920
                  bne          a3, t0, 82f
                  sltu         t4, t4, t2
                  bge          s3, t3, 75f
                  bge          s7, a1, 81f
                  bgeu         t1, t3, 90f
                  bltu         t2, a7, 80f
                  ori          t5, s9, -651
75:               ori          sp, s2, -818
                  lui          s0, 311942
                  sltiu        t3, a2, -199
                  srli         tp, s11, 14
                  sll          s3, a4, s5
80:               bne          s11, a7, 89f
81:               slti         t5, a2, 1350
82:               ori          t2, a4, 711
                  sll          t1, a6, s10
                  sll          s11, s1, s2
                  add          tp, t6, gp
                  nop
                  andi         a6, a4, -224
                  srai         a6, s6, 12
89:               xor          ra, a1, s11
90:               and          s6, a6, s0
                  sll          a5, ra, a4
                  srai         t0, s3, 26
                  addi         s1, t5, 2022
                  srai         s3, s4, 17
                  ori          tp, s8, -1497
                  srl          zero, sp, a7
                  sra          t0, sp, t4
                  or           s0, t2, t6
                  sll          gp, t6, s4
                  addi         s5, a2, 752
                  slli         a4, t0, 2
                  auipc        a7, 961420
                  sltu         a5, s3, s8
                  sub          ra, sp, s10
                  srli         sp, s5, 17
                  or           a7, a1, t3
                  blt          s1, t4, 108f
108:              sll          t2, a0, tp
                  add          ra, t6, a0
                  auipc        t1, 588847
                  sll          zero, a1, t2
                  bgeu         t6, s9, 113f
113:              sltu         t6, tp, ra
                  sub          s7, a7, a4
                  bge          t3, a2, 125f
                  and          s7, a3, a2
                  add          ra, s0, sp
                  and          t0, t6, t1
                  or           t2, s11, a1
                  bltu         s4, s3, 134f
                  srai         s2, a6, 14
                  sll          t0, t5, tp
                  sll          a4, sp, zero
                  beq          s6, a5, 139f
125:              auipc        t4, 632973
                  and          s5, sp, t1
                  addi         gp, s7, -221
                  andi         a0, t5, -1785
                  srli         s9, t4, 24
                  srai         zero, a6, 14
                  bne          s10, s0, 147f
                  sub          gp, t0, ra
                  bne          a7, a6, 136f
134:              lui          a6, 837865
                  xori         t3, a7, 632
136:              sll          t1, t3, t5
                  bltu         s0, s0, 146f
                  nop
139:              andi         gp, t3, -470
                  andi         tp, s9, 1915
                  addi         s1, t2, 917
                  add          a0, s10, t2
                  slt          s6, a2, t0
                  ori          s6, a0, -764
                  lui          t0, 36963
146:              nop
147:              auipc        zero, 570309
                  slli         s10, a7, 0
                  sll          zero, t3, a0
                  sltu         s7, sp, a0
                  bltu         a3, a1, 168f
                  srai         a4, s10, 21
                  lui          t3, 612169
                  andi         sp, a6, -17
                  and          t3, s3, s0
                  srl          a3, a6, a4
                  sub          t5, t2, s5
                  srli         t0, s5, 21
                  slti         s0, s5, 895
                  blt          a3, s4, 163f
                  add          a7, s11, ra
                  sll          s2, t3, t0
                  la           gp, sub_1
                  xor          s9, a6, a7
                  slt          a5, s4, t4
                  add          s7, sp, s4
                  addi         gp, gp, -500
                  nop
                  sltu         a7, s3, sp
                  add          s10, t4, ra
                  sub          s8, a1, a6
main_j1:          jalr         t5, gp, 501 #jump main -> sub_1
                  sll          t0, t4, a2
                  slti         t1, a7, -1212
163:              auipc        ra, 229964
                  bltu         t1, t4, 166f
                  sll          a0, t4, ra
166:              nop
                  sll          sp, s3, a2
168:              bltu         s6, s5, 178f
                  ori          t2, s6, -770
                  auipc        a7, 1015159
                  slli         s7, sp, 3
                  andi         a4, s2, 1864
                  sra          a6, s0, s11
                  sub          s9, t0, t3
                  blt          t3, t5, 178f
                  ori          s11, t6, -1586
                  sll          t1, t1, s1
178:              ori          s5, sp, 1595
                  srl          a5, a2, s5
                  blt          a4, s5, 196f
                  slti         s9, ra, -1805
                  addi         s5, gp, 1213
                  srl          a3, s7, s7
                  bltu         a0, a0, 193f
                  xor          s9, s0, sp
                  bge          a4, s8, 195f
                  bgeu         a3, s3, 188f
188:              sll          s1, a3, a5
                  slt          a0, a2, gp
                  nop
                  sra          s6, s2, t6
                  slli         ra, t6, 21
193:              blt          a4, t0, 210f
                  bltu         zero, t6, 198f
195:              sra          s9, t4, a0
196:              lui          ra, 621979
                  srl          t4, a4, tp
198:              sltiu        a5, s7, 570
                  addi         s11, t0, -1981
                  xori         s11, s2, -1432
                  nop
                  sltiu        t5, s2, -1148
                  sub          s3, a5, s10
                  or           t2, gp, s2
                  slti         t3, t3, 300
                  andi         t5, t3, 1061
                  la           sp, region_0+1256 #start riscv_load_store_rand_instr_stream_1
                  add          s0, s2, s8
                  srai         t0, ra, 4
                  lb           t6, 11(sp)
                  sub          s11, s3, tp
                  lbu          s9, 14(sp)
                  lb           gp, -5(sp)
                  srl          tp, s4, t3
                  slli         t2, a4, 3
                  lbu          s0, 7(sp)
                  andi         a5, a5, -112
                  add          t6, s3, t0
                  sll          a0, gp, tp
                  slt          t3, a0, a3
                  lbu          s6, 15(sp)
                  sb           s5, 5(sp)
                  sb           a7, -10(sp)
                  sb           zero, -14(sp)
                  addi         a6, s5, 642
                  sb           t0, 0(sp)
                  xori         t2, zero, 374
                  lb           t6, 5(sp)
                  slti         s9, t4, -1450
                  xor          a5, a3, a1
                  lbu          a7, -15(sp)
                  xori         s11, s3, 1315
                  lhu          s1, -14(sp)
                  sb           s2, 6(sp)
                  sltiu        zero, s11, 810
                  sb           s0, 8(sp)
                  xor          s0, s0, t4
                  slti         zero, t4, 1200
                  lh           t3, -6(sp)
                  sb           a7, -4(sp)
                  xori         a4, s9, 1392
                  andi         ra, t2, 1932
                  lb           s2, 7(sp)
                  ori          s3, a0, 1173
                  slti         s10, t2, -410
                  lb           a4, -7(sp)
                  sb           t1, 13(sp)
                  sb           t4, 5(sp)
                  sltiu        s9, a6, 1150
                  srl          s2, t1, s5
                  srl          ra, sp, s0
                  sra          a0, s4, ra
                  lui          t4, 717219
                  xor          t1, a2, a6
                  lbu          s5, 1(sp)
                  lhu          s11, -6(sp) #end riscv_load_store_rand_instr_stream_1
                  sltu         s9, sp, a3
                  sub          s0, a6, s11
                  sltu         a6, t5, a5
210:              lui          t4, 703420
                  bgeu         t2, gp, 212f
212:              bne          a2, a0, 220f
                  sra          s6, t3, t4
                  slli         t3, t2, 29
                  andi         a5, t6, 1948
                  bgeu         t0, a6, 233f
                  srli         s1, s8, 15
                  sll          s11, a2, s8
                  srl          s11, s4, a3
220:              slli         t3, s2, 23
                  xor          t3, sp, a1
                  srai         s1, a2, 1
                  bltu         gp, s10, 232f
                  add          s11, s0, t3
                  xori         gp, s7, 569
                  or           tp, s7, s9
                  xor          t0, s9, s1
                  add          s0, a1, sp
                  lui          a4, 101830
                  srli         t2, t4, 0
                  xor          t0, a7, ra
232:              srai         t5, t3, 6
233:              srl          s8, s2, ra
                  slt          t4, s4, s11
                  sra          s5, ra, sp
                  srl          s7, a4, tp
                  xor          s0, s3, s10
                  addi         t4, s4, -2006
                  ori          s8, s8, -1516
                  xori         sp, sp, -1142
                  sll          s11, gp, s6
                  ori          a3, tp, -1552
                  nop
                  andi         a0, sp, -214
                  andi         t2, a7, -174
                  beq          sp, s9, 249f
                  sltu         s3, s5, t1
                  ori          a0, t1, -1118
249:              bltu         t3, t2, 266f
                  bne          a5, s4, 253f
                  srai         s3, t2, 12
                  and          t3, s9, s11
253:              bne          t3, t5, 263f
                  bge          a1, t4, 269f
                  and          t6, a5, a5
                  srli         s10, t6, 26
                  lui          s9, 674076
                  auipc        zero, 329845
                  sltu         a3, s10, s8
                  sub          s11, a7, a2
                  bgeu         a1, s0, 280f
                  xori         ra, s0, -450
263:              or           s7, a0, s7
                  beq          s11, s7, 274f
                  bgeu         s2, s3, 275f
266:              andi         s3, s4, -1072
                  srai         s9, s3, 11
                  or           t1, a6, a4
269:              bgeu         s8, a5, 271f
                  xori         t0, s2, 1017
271:              bgeu         t2, s7, 283f
                  sltu         s1, s2, t1
                  ori          a3, s2, 580
274:              xori         t0, s10, 68
275:              addi         s1, t2, -1878
                  blt          s4, ra, 292f
                  srl          a3, a1, t1
                  bge          s1, a3, 281f
                  bgeu         s8, a3, 293f
280:              ori          t6, s10, -572
281:              srli         s5, s10, 8
                  ori          a4, s1, 16
283:              add          s5, zero, a2
                  srli         t0, a0, 16
                  sra          s8, s11, a0
                  sltu         s0, a0, a0
                  bltu         a4, s4, 296f
                  srli         gp, sp, 14
                  or           t3, s11, s2
                  la           tp, sub_2
                  addi         tp, tp, 300
                  srli         gp, tp, 30
                  xori         a6, s2, -695
                  slti         s9, s3, 624
                  andi         t4, a2, -1215
                  sltu         s7, t5, a1
                  sltiu        s1, s2, -67
                  sll          s10, gp, sp
                  ori          t4, s5, -212
main_j2:          jalr         t5, tp, -300 #jump main -> sub_2
                  sub          t2, s1, t4
                  slli         s0, s0, 2
                  bge          a6, s4, 307f
292:              and          t3, ra, t2
293:              blt          s0, s4, 311f
                  sra          ra, a4, s3
                  bgeu         a1, s5, 304f
296:              and          s6, s5, ra
                  slli         s6, a0, 6
                  lui          s1, 588215
                  andi         s3, s9, 514
                  sltu         gp, t1, zero
                  bne          ra, t1, 302f
302:              sub          s6, a2, a7
                  slti         t2, s7, -1111
304:              bltu         t3, t0, 318f
                  srli         s11, a2, 6
                  bne          a0, t3, 313f
307:              srl          t1, a2, t2
                  sltiu        ra, s3, 288
                  or           s9, s1, a5
                  auipc        s6, 691366
311:              lui          s1, 858247
                  add          s1, s1, t6
313:              srl          s3, t3, t6
                  bge          s6, a4, 334f
                  and          s1, a1, s9
                  slli         zero, t4, 23
                  or           zero, a7, t2
318:              sltiu        sp, tp, 993
                  srli         a4, a3, 26
                  add          s6, s1, s7
                  slt          t5, tp, t3
                  srli         t5, t4, 26
                  bge          s8, a7, 328f
                  sll          a7, sp, s9
                  blt          s1, s7, 329f
                  sub          a3, zero, s5
                  andi         s8, s7, -265
328:              addi         sp, t6, 623
329:              beq          s6, s4, 343f
                  slli         t2, s10, 30
                  sll          t0, t0, s4
                  sltu         t1, ra, t6
                  sltiu        ra, s2, -2042
334:              blt          t1, s5, 341f
                  beq          t6, a6, 344f
                  blt          ra, tp, 346f
                  and          t2, s2, s5
                  srli         a7, s7, 1
                  bgeu         t2, s8, 342f
                  addi         gp, t4, -1384
341:              srl          t1, s11, s2
342:              auipc        s2, 172222
343:              sltu         t1, a2, a2
344:              srli         a5, t6, 31
                  sltiu        s7, a4, -1832
346:              bgeu         a3, tp, 363f
                  bltu         s4, a7, 364f
                  sltu         s5, ra, s10
                  slli         t5, t4, 14
                  auipc        s8, 667552
                  srl          s1, t6, s3
                  bltu         t1, ra, 354f
                  xori         t2, a2, -805
354:              slt          zero, t4, s3
                  or           a0, t6, t1
                  blt          a7, s2, 366f
                  bgeu         t2, t1, 377f
                  sll          t1, a0, t1
                  nop
                  sub          a7, tp, s0
                  bne          s7, a7, 370f
                  xor          s6, s4, s2
363:              sll          sp, s1, s7
364:              lui          s5, 401694
                  sll          a7, s9, a3
366:              ori          t0, t6, 534
                  sltiu        t4, s11, -848
                  addi         tp, t0, -1650
                  srli         t5, s8, 22
370:              sltiu        t0, t1, 1649
                  sltiu        gp, a4, -409
                  bgeu         zero, t6, 373f
373:              and          a4, t1, t3
                  xori         s11, a0, -702
                  srli         ra, s10, 12
                  xori         a7, t1, -377
377:              slti         t6, a2, -1907
                  srl          t1, a4, t3
                  bltu         a6, zero, 382f
                  addi         t3, t6, 136
                  nop
382:              and          t1, a2, a4
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            blt          sp, gp, sub_3_stack_p
                  sll          s6, t1, t0
                  slti         s7, zero, -635
                  sll          a3, t0, a2
sub_3_stack_p:    addi         a2, a2, -64
                  addi         t6, tp, 1871
                  slt          a6, t5, t1
                  sw           t5, 4(a2)
                  ori          t2, s7, 1272
                  slti         a4, s1, 1136
                  sltiu        t4, a3, -453
                  bltu         gp, s10, sub_3_j5 #branch to jump instr
                  auipc        s8, 339049
                  lui          a6, 990731
                  xor          s0, a7, t6
                  sltu         s2, s11, a5
sub_3_j5:         jal          t5, sub_4 #jump sub_3 -> sub_4
                  ori          t6, a5, -1143
                  bne          s5, s4, 5f
                  xori         t0, sp, -1323
                  bne          tp, zero, 7f
                  ori          a6, a4, -1954
5:                sub          tp, s5, s5
                  srli         t4, a6, 2
7:                nop
                  lw           t5, 4(a2)
                  sra          t2, s1, a7
                  addi         a2, a2, 64
                  or           gp, t2, s11
                  and          s5, t3, a1
                  addi         zero, tp, -2014
                  addi         s9, a7, 1402
32:               addi x15, x30, 0
32:               jalr x15, x15, 0
sub_1:            ori          s8, zero, 1681
                  srli         tp, t4, 22
                  addi         a2, a2, -32
                  sltu         s11, s7, a7
                  sltiu        s7, t5, -1222
                  lui          t3, 766063
                  slt          tp, gp, s10
                  auipc        a6, 427337
                  sw           t5, 4(a2)
                  add          a7, s7, tp
                  la           t6, sub_3
                  slti         s2, sp, 424
                  sltiu        a4, t6, -991
                  lui          s2, 21936
                  addi         t6, t6, -514
                  slt          t3, s3, ra
                  add          a6, a5, ra
                  add          tp, s6, t0
                  srai         a4, a6, 5
                  sll          s8, a2, tp
                  srai         t2, t1, 25
sub_1_j4:         jalr         t5, t6, 514 #jump sub_1 -> sub_3
                  srai         gp, s9, 11
                  sra          a7, s7, s9
                  auipc        s0, 837101
                  ori          t0, a5, 1818
                  slt          tp, ra, s4
                  xor          gp, a3, a1
                  slti         s2, a7, -1281
                  beq          t0, t0, 19f
                  bne          sp, s11, 18f
                  bltu         t2, s1, 28f
                  bltu         gp, tp, 21f
                  bne          a3, t1, 14f
                  srai         s1, a6, 16
                  sltiu        s2, s8, 1109
14:               andi         s6, s5, -190
                  bltu         s10, t0, 32f
                  slt          t4, s4, gp
                  addi         s0, tp, -1403
18:               xori         s8, t0, -540
19:               nop
                  slti         t0, t6, 1752
21:               sra          t4, a5, a6
                  sltiu        a5, t1, 597
                  and          t1, s3, s6
                  sltu         s11, zero, a1
                  srli         t6, s7, 5
                  sub          a6, a7, s8
                  slti         t1, s11, 1627
28:               addi         t4, s11, -882
                  srai         a7, t0, 13
                  and          a0, t0, a4
                  sltiu        s0, sp, -1427
32:               srl          zero, t6, a5
                  nop
                  sll          tp, s3, a5
                  slti         sp, a2, -790
                  sltiu        s2, ra, -314
                  slti         s1, t5, 1820
                  addi         a5, gp, 1875
                  srli         zero, s6, 9
                  sra          ra, s4, s10
                  ori          tp, a1, 1644
                  slti         a4, a4, 987
                  slt          gp, a7, gp
                  lw           t5, 4(a2)
                  addi         a2, a2, 32
                  sll          s0, sp, s5
                  sltiu        s2, tp, -829
70:               addi x24, x30, 0
70:               jalr x24, x24, 0
sub_9:            bge          a2, s2, sub_9_stack_p
sub_9_stack_p:    addi         a2, a2, -48
                  or           s10, s8, a2
                  slli         ra, s2, 26
                  sub          a3, a2, zero
                  sw           t5, 4(a2)
                  sra          s0, tp, a0
                  sll          s3, t2, tp
                  andi         t4, s10, -1867
                  andi         s8, a5, -1352
                  lui          s8, 452909
                  slli         s8, s5, 29
                  sltu         t1, s0, s10
                  bge          tp, a6, 11f
                  andi         a6, s7, -1248
                  bltu         a3, zero, 23f
                  slt          s2, zero, zero
                  bne          zero, s4, 22f
                  addi         s7, a1, 64
                  lui          s6, 828659
                  add          s5, t0, s4
                  blt          zero, s0, 21f
11:               bne          s0, a2, 26f
                  bne          s10, t5, 31f
                  bgeu         s2, gp, 33f
                  sub          s5, s8, t1
                  sll          t4, s3, a4
                  sub          s0, s7, zero
                  xori         zero, t2, 1304
                  sra          s6, a4, t6
                  slt          tp, a0, a2
                  blt          s10, a0, 39f
21:               bltu         zero, s9, 31f
22:               sltiu        t4, t6, -1321
23:               xor          s9, s7, t4
                  xori         s10, t6, 1581
                  blt          s11, s10, 40f
26:               slti         t1, a0, 550
                  beq          t5, s10, 35f
                  addi         tp, tp, 1205
                  sub          a3, a5, s3
                  sltiu        t1, s5, 1301
31:               bne          s2, a5, 35f
                  slli         gp, s9, 26
33:               srli         a7, t1, 10
                  andi         a0, a5, 941
35:               sub          s3, t1, gp
                  andi         s0, s6, 1130
                  sub          s6, s7, t3
                  slti         t5, s10, 1510
39:               or           a0, s8, t5
40:               blt          s6, s7, 59f
                  add          sp, gp, gp
                  add          a3, s9, s4
                  srli         s1, s2, 0
                  addi         s0, t5, 220
                  sltu         s7, t1, s4
                  srli         s8, s2, 2
                  auipc        sp, 738800
                  add          s0, t4, s9
                  sltiu        gp, a3, -23
                  xor          t5, s6, a0
                  srai         s5, t4, 4
                  or           s8, t1, s8
                  nop
                  srl          t4, t6, s5
                  or           s11, a1, s8
                  blt          zero, a1, 60f
                  beq          sp, s1, 68f
                  bltu         s1, s5, 66f
59:               slti         t2, s10, -1714
60:               srai         s11, a1, 12
                  sub          s0, a0, a5
                  andi         s7, a2, 1663
                  or           a4, s7, t3
                  bge          a1, ra, 65f
65:               sra          tp, s4, zero
66:               slli         s5, s7, 15
                  bltu         s2, a5, 68f
68:               addi         t1, s11, -1281
                  sltiu        t4, t4, 945
                  srl          s7, t4, a2
                  lw           t5, 4(a2)
                  xor          s8, a2, s9
                  addi         a2, a2, 48
                  sub          ra, s8, t1
86:               addi x14, x30, 0
86:               jalr x14, x14, 0
sub_2:            or           s10, a1, s10
                  and          t1, s4, s11
                  sltu         s6, s3, a5
                  beq          a2, s10, sub_2_stack_p
                  sub          a7, a6, a4
sub_2_stack_p:    addi         a2, a2, -36
                  sltu         s7, t4, s8
                  sw           t5, 4(a2)
                  and          ra, a3, a4
                  la           s2, region_1+170 #start riscv_load_store_rand_instr_stream_2
                  add          t2, tp, s0
                  auipc        a0, 839082
                  sll          s10, s8, s10
                  lbu          a7, 50(s2)
                  ori          a3, t1, 1836
                  lhu          s5, 168(s2)
                  sb           s3, -125(s2)
                  sb           t4, 231(s2)
                  srli         ra, s7, 7
                  srai         a5, tp, 21
                  sra          a6, s0, ra
                  slti         t5, a1, 1621
                  lb           t0, 49(s2)
                  sh           t0, 246(s2)
                  auipc        s11, 291847
                  lb           t0, -123(s2)
                  sub          sp, s0, tp
                  lhu          s1, -152(s2)
                  sltiu        gp, s7, 398
                  lhu          t4, 214(s2)
                  lh           a6, 156(s2)
                  slti         tp, gp, 675
                  auipc        a5, 362235
                  srl          s8, gp, s10
                  sra          a7, s7, s5
                  addi         ra, t4, 351
                  ori          t0, s9, -1870
                  ori          zero, ra, -1419
                  sw           gp, 42(s2)
                  lb           a4, 66(s2)
                  lb           zero, -29(s2) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+1985 #start riscv_load_store_rand_instr_stream_1
                  srai         t3, t6, 27
                  lbu          a6, -50(s1)
                  nop
                  lbu          s11, -29(s1)
                  lb           t2, -12(s1)
                  lh           gp, -141(s1)
                  lbu          t0, -188(s1)
                  lhu          s5, -123(s1)
                  srli         a5, s1, 19
                  lbu          t0, -200(s1)
                  lb           t1, -50(s1)
                  xor          zero, s5, s4
                  lb           s2, 10(s1)
                  lw           s10, -137(s1)
                  auipc        sp, 837626
                  sltu         t3, a3, ra
                  sltu         t3, a5, s0
                  sh           a1, -253(s1)
                  srai         sp, t0, 8
                  lhu          t3, -57(s1)
                  slti         s10, s3, -1225
                  xori         t4, a3, 2047
                  lh           s3, -39(s1)
                  lh           s2, -177(s1)
                  nop
                  lw           s0, -145(s1)
                  lh           s10, -9(s1)
                  sh           s7, -163(s1)
                  lb           t4, -9(s1)
                  lhu          s10, -55(s1)
                  lhu          s0, -39(s1)
                  lb           t1, -224(s1)
                  lb           a4, -34(s1)
                  lbu          t4, -25(s1)
                  sb           t2, -252(s1)
                  slti         s8, a7, -343
                  lbu          t5, -242(s1)
                  xori         zero, a3, -27
                  lbu          s5, -160(s1)
                  lb           tp, -91(s1)
                  lbu          a0, 2(s1)
                  lb           s10, -3(s1)
                  lw           t1, -21(s1) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+1307 #start riscv_load_store_rand_instr_stream_4
                  xor          ra, t0, s10
                  sub          t0, t2, zero
                  or           a3, t0, t4
                  lbu          s8, -1(t3)
                  auipc        s9, 652013
                  sb           a2, -13(t3)
                  auipc        s6, 128694
                  srl          s5, s4, a0
                  xori         s8, t6, -545
                  lb           a7, -9(t3)
                  sw           s5, -15(t3)
                  slli         t4, t3, 25
                  sll          a4, a4, t3
                  lw           s6, -15(t3)
                  or           s0, s0, t0
                  auipc        s11, 607516
                  sh           a2, -13(t3)
                  sb           a6, -12(t3)
                  srl          sp, s11, ra
                  sra          s11, s3, ra
                  lbu          a7, -2(t3)
                  auipc        s7, 548572
                  sb           zero, 13(t3)
                  sh           a7, -1(t3)
                  lbu          s5, -16(t3)
                  slt          zero, t0, a6
                  slt          s6, s5, s11
                  addi         t4, s7, -807
                  lhu          a7, 13(t3)
                  sh           t2, 11(t3)
                  srl          t0, a7, a4
                  auipc        s5, 577971
                  lhu          t0, 1(t3)
                  lh           ra, 11(t3)
                  sll          tp, a6, s2
                  lb           s8, 13(t3)
                  andi         sp, ra, 1222
                  sb           t1, 4(t3)
                  sb           s10, -6(t3)
                  nop
                  xor          t1, a7, t5
                  srli         t6, zero, 9
                  add          t2, sp, t6
                  and          t4, a7, ra
                  lb           s10, -9(t3)
                  lb           a4, 0(t3)
                  lbu          s8, -14(t3)
                  lhu          s8, -13(t3)
                  sb           s7, 10(t3) #end riscv_load_store_rand_instr_stream_4
                  la           t0, region_1+884 #start riscv_load_store_rand_instr_stream_0
                  lui          a7, 56070
                  lui          t5, 531188
                  slt          a3, t3, s1
                  lhu          t1, 204(t0)
                  sll          ra, s7, sp
                  sb           t6, 175(t0)
                  srai         a0, s7, 17
                  sb           s4, 207(t0)
                  sb           s3, 199(t0)
                  lb           a5, 178(t0)
                  sb           s9, 171(t0)
                  lh           s11, -204(t0)
                  sra          t3, s10, s8
                  lb           s6, -171(t0)
                  slt          sp, s9, t3
                  sub          a7, a5, sp
                  srli         s7, s5, 26
                  andi         t5, t0, -1883
                  sub          a6, t5, t0
                  sltu         a0, a3, s9
                  andi         a0, t2, 1654
                  slti         t3, t2, -393
                  lh           t1, -222(t0)
                  lbu          s11, 171(t0) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+1882 #start riscv_load_store_rand_instr_stream_5
                  sh           s0, 10(s10)
                  lw           s11, -6(s10)
                  sb           t2, -16(s10)
                  add          t3, s8, t2
                  lbu          t0, 16(s10)
                  and          a6, s6, a3
                  srli         s11, zero, 28
                  sra          s3, s9, s5
                  sltiu        s11, s11, -1023
                  sh           s5, -2(s10)
                  andi         s1, a0, -299
                  lhu          t1, 10(s10)
                  sb           s8, 5(s10)
                  sb           zero, -13(s10)
                  sh           s8, 0(s10)
                  lh           ra, -8(s10)
                  lhu          s8, -16(s10)
                  xor          t4, s7, t3
                  auipc        zero, 405806
                  ori          s5, s4, 556
                  andi         s6, a5, -1452
                  andi         zero, s0, 79
                  sb           sp, -11(s10)
                  lbu          s6, -14(s10) #end riscv_load_store_rand_instr_stream_5
                  blt          s8, s8, 4f
                  bgeu         a7, s8, 6f
                  sll          a5, t1, s2
                  nop
4:                slt          t0, t4, a2
                  andi         s7, s0, -1701
6:                sub          t5, s1, sp
                  slli         s3, t3, 7
                  bne          s1, zero, 21f
                  sub          t6, s1, zero
                  add          s1, t0, t5
                  ori          s10, s9, 954
                  addi         a7, tp, 1875
                  sll          s1, s3, t3
                  srli         gp, s3, 28
                  addi         a7, t5, 1592
                  sra          t0, s0, s2
                  ori          t5, t4, 617
                  slt          t2, t6, ra
                  bge          s3, s9, 32f
                  sll          t4, a7, s7
21:               slti         a0, zero, -1968
                  xor          a0, s2, s11
                  beq          s1, t0, 38f
                  xor          t2, t2, s2
                  addi         t1, a4, 908
                  slti         s8, s5, -712
                  sra          s1, s4, t0
                  sra          tp, s4, a2
                  addi         s0, s1, 1587
                  sltu         s2, s11, s7
                  srl          s6, s7, a0
32:               srli         s1, t5, 13
                  slti         a3, a3, -1941
                  xor          s10, a3, zero
                  blt          s6, s8, 36f
36:               srai         s9, s8, 22
                  addi         a4, s4, -1279
38:               xor          t2, t5, gp
                  auipc        s10, 828667
                  slli         s2, s6, 9
                  srli         ra, a0, 14
                  slt          s1, s4, a5
                  sub          s11, t2, s9
                  bge          s6, t5, 60f
                  bgeu         t4, t0, 62f
                  ori          a4, a1, -1310
                  sra          a0, a3, a3
                  slt          t5, a5, s8
                  xori         s9, a4, -660
                  xor          sp, s10, t0
                  addi         s6, s8, -163
                  nop
                  sltu         t3, s3, s2
                  bne          s2, s7, 69f
                  srl          s0, s5, s0
                  srl          t6, a1, t4
                  sll          s0, a2, zero
                  sltiu        s8, t2, -1828
                  ori          s1, ra, -1352
60:               or           a6, tp, tp
                  add          gp, a6, a3
62:               ori          tp, s2, 110
                  nop
                  bge          a7, s11, 71f
                  auipc        t4, 285839
                  slt          a5, s7, a5
                  bne          a5, a5, 69f
                  ori          a7, gp, -809
69:               xor          a5, t4, s11
                  slt          ra, a7, s5
71:               auipc        t4, 113162
                  sub          a4, a0, a3
                  srl          ra, s5, s11
                  xori         t4, gp, -1550
                  auipc        a4, 931077
                  beq          zero, t5, 79f
                  nop
                  srai         ra, zero, 17
79:               sltiu        t4, s4, -1787
                  sltu         a6, s3, a6
                  nop
                  slti         t1, s4, 1379
                  lui          a0, 246814
                  auipc        s6, 576458
                  and          t1, a2, s3
                  sll          a0, sp, s6
                  andi         a4, s10, 1996
                  bltu         s3, t3, 108f
                  xori         s5, s0, 354
                  slti         s7, sp, -1060
                  andi         a7, zero, 1691
                  srl          t2, t3, ra
                  auipc        zero, 946230
                  bne          s3, s3, 111f
                  or           t6, a4, ra
                  sltiu        t3, a6, 636
                  addi         gp, a6, 1830
                  sub          a0, s11, t1
                  sub          s8, s4, t3
                  sra          t0, s11, a6
                  beq          t2, s6, 115f
                  sub          a6, s0, t5
                  srli         s6, t0, 6
                  auipc        s11, 591831
                  srai         s3, t3, 11
                  sub          s10, s1, t4
                  xor          s6, a4, s6
108:              bne          t5, tp, 120f
                  blt          tp, s3, 125f
                  beq          s10, zero, 124f
111:              sltu         ra, t3, t6
                  sltiu        s3, gp, 1911
                  bgeu         t0, a0, 125f
                  blt          a6, s3, 118f
115:              xori         a6, s8, 269
                  or           t4, s5, a1
                  slti         t2, ra, 198
118:              sll          tp, a3, s9
                  srl          s11, a4, s9
120:              auipc        t2, 970558
                  lui          s6, 1013857
                  and          s6, s2, t2
                  add          a0, t2, a6
124:              addi         s6, gp, 167
125:              sltu         t4, t4, a5
                  andi         t1, tp, 802
                  srli         gp, t4, 28
                  slt          sp, t2, t2
                  slti         a4, a2, -2033
                  srai         s1, ra, 5
                  sll          t5, s9, a3
                  slti         s11, s6, 1419
                  andi         s6, ra, 2000
                  blt          a3, a7, 150f
                  bne          a5, a7, 152f
                  auipc        a7, 53574
                  sltu         s8, t5, s0
                  sub          gp, s11, a2
                  slli         s6, a0, 25
                  xori         t2, a6, 1728
                  bge          t2, a3, 143f
                  blt          a4, zero, 148f
143:              auipc        s9, 530660
                  ori          zero, a2, 325
                  sll          t4, sp, a1
                  slli         a3, t5, 29
                  srl          t0, s2, s1
148:              nop
                  srli         a3, a2, 10
150:              slt          t1, s11, a6
                  add          s11, t6, tp
152:              srai         s2, s5, 18
                  slti         t1, t6, -876
                  sltu         s2, ra, s11
                  slti         zero, t2, -693
                  addi         s0, s2, 627
                  or           t0, gp, s5
                  slti         s1, s3, -336
                  add          zero, t1, s7
                  slt          s9, s0, a3
                  srai         s7, a3, 10
                  auipc        s1, 546519
                  sltu         a4, t4, a5
                  sub          zero, a5, s11
                  srli         s7, t5, 29
                  sra          s6, s3, s2
                  xor          t1, a2, s11
                  bltu         t4, s10, 175f
                  la           sp, region_0+1332 #start riscv_load_store_rand_instr_stream_3
                  lh           s11, 44(sp)
                  nop
                  sll          ra, s10, s10
                  lw           a7, -256(sp)
                  sra          s3, s2, a7
                  andi         a7, t4, -625
                  lb           tp, -236(sp)
                  andi         t1, a1, -1089
                  add          tp, s8, t3
                  sb           s5, 140(sp)
                  andi         s5, s10, -558
                  lb           zero, -148(sp)
                  and          tp, a2, s0
                  sh           a2, 248(sp)
                  sltiu        t0, a7, 432
                  sb           a5, -11(sp)
                  lbu          t1, -145(sp)
                  sb           t5, -127(sp)
                  sb           s3, -130(sp)
                  and          t3, t6, s7
                  lbu          a4, -204(sp)
                  sltiu        a6, t1, 923
                  addi         s6, s2, -1655
                  srli         s10, a3, 22
                  srli         t2, s3, 10
                  add          s2, a4, gp
                  lbu          a4, 67(sp)
                  sb           t2, 239(sp)
                  addi         t1, t4, 378
                  sb           s6, -183(sp)
                  sub          s5, t0, s9
                  addi         s9, ra, 602
                  sw           a5, 44(sp)
                  add          gp, s2, s6
                  xori         s6, t6, 295
                  lb           s10, -4(sp)
                  sb           s2, -215(sp)
                  sb           s3, 19(sp)
                  lb           ra, 225(sp)
                  sltu         s2, t5, s9
                  andi         gp, a0, 956
                  nop
                  add          s3, a2, s8
                  srli         a0, s5, 31
                  lb           gp, -113(sp)
                  srli         t6, t0, 26
                  lbu          s0, -229(sp)
                  sb           a6, -244(sp)
                  lb           tp, 176(sp)
                  lbu          s5, 127(sp)
                  slli         s1, s6, 28
                  lbu          a5, 178(sp)
                  sw           a6, 32(sp)
                  sb           s10, 73(sp)
                  sltu         a5, ra, a3
                  lbu          s7, -53(sp)
                  auipc        a7, 412938
                  sb           a2, -65(sp) #end riscv_load_store_rand_instr_stream_3
                  slt          a4, sp, a0
                  xor          a4, s7, a2
                  bltu         s8, gp, 175f
                  beq          gp, s2, 187f
                  bltu         a1, a0, 188f
                  sub          s0, a1, gp
175:              sltu         s3, t4, tp
                  or           sp, a4, s0
                  bgeu         s8, t6, 194f
                  and          a7, s11, s3
                  slli         gp, a1, 8
                  bge          s4, s9, 186f
                  xori         tp, t2, 290
                  srl          s10, s4, tp
                  addi         t0, s5, 1031
                  bge          t0, a3, 190f
                  addi         a6, s6, -1921
186:              and          sp, s10, a6
187:              nop
188:              srai         s3, s7, 13
                  srl          s6, s5, tp
190:              srli         t1, s9, 3
                  addi         s3, a6, -539
                  slti         t3, t0, -910
                  andi         s9, s10, -917
194:              sra          s2, gp, t3
                  or           s3, a6, a2
                  sltu         a5, s8, a5
                  xori         t1, a6, 275
                  xor          t0, a1, t3
                  slt          gp, a0, a5
                  sltiu        a7, s1, 442
                  auipc        s6, 599293
                  sll          s3, s4, zero
                  and          gp, a2, a6
                  sltiu        a7, a5, -1602
                  blt          s11, sp, 210f
                  andi         a0, t0, -1882
                  sra          a6, s4, s9
                  slti         s1, a2, 99
                  addi         a7, a4, -26
210:              sltiu        t1, a5, 676
                  ori          t2, t4, -1762
                  andi         a3, s11, -1510
                  srl          a3, s6, s1
                  srli         t4, s7, 6
                  ori          t5, t2, -1860
                  srli         s7, s1, 9
                  bltu         t1, a1, 234f
                  slti         gp, t0, -523
                  srli         a6, t6, 3
                  xor          s8, s5, t2
                  beq          t3, t3, 233f
                  and          sp, s2, t5
                  add          t0, t4, a3
                  bge          t2, tp, 228f
                  srai         a7, s1, 2
                  ori          a7, t5, 416
                  nop
228:              add          s2, t4, zero
                  beq          a3, gp, 230f
230:              auipc        t4, 596507
                  srl          t6, zero, t2
                  sltu         s6, a0, s2
233:              srli         s0, zero, 31
234:              sltu         s2, t3, s3
                  srl          s2, a0, ra
                  slt          tp, s0, s3
                  sub          s1, s2, a0
                  bne          s3, t2, 251f
                  sltu         t0, a3, tp
                  slt          a0, a0, s1
                  srl          t0, s5, gp
                  xori         a5, s6, 482
                  lui          s0, 297877
                  sub          s0, s0, s5
                  nop
                  sll          a3, zero, s6
                  slt          gp, a3, a3
                  add          t3, t0, s4
                  bltu         t1, gp, 256f
                  beq          s0, s9, 267f
251:              xori         a3, t0, -177
                  bne          s7, s0, 268f
                  bltu         a5, tp, 266f
                  ori          a7, s2, 1368
                  lui          s10, 975930
256:              srli         a6, s10, 23
                  sub          s11, s10, t4
                  auipc        t3, 330194
                  srli         t0, s11, 17
                  srli         s11, s7, 21
                  add          t4, t2, gp
                  add          tp, s1, t2
                  slt          ra, s7, t1
                  sltiu        a5, a2, 212
                  andi         t2, s6, 212
266:              blt          s1, a0, 282f
267:              slti         a4, s5, 1331
268:              beq          s8, s9, 283f
                  bltu         s3, s7, 275f
                  xor          s2, t6, t2
                  lui          s7, 478829
                  auipc        t6, 364765
                  bge          zero, t4, 277f
                  xori         a5, a1, 616
275:              lui          t6, 881234
                  bne          t2, t2, 290f
277:              xori         t5, tp, 1233
                  bge          s10, a0, 295f
                  srai         t4, t6, 16
                  nop
                  and          t4, gp, s1
282:              bne          ra, gp, 289f
283:              slti         sp, t6, -1618
                  sltu         a4, t3, ra
                  sltiu        t5, s10, -1420
                  sltiu        t2, a4, 1014
                  nop
                  bge          s1, t3, 308f
289:              sra          t6, t1, s4
290:              add          a4, a7, ra
                  nop
                  slt          t1, ra, s7
                  bne          s2, s3, 295f
                  nop
295:              sub          s11, a3, t3
                  xori         ra, a6, -339
                  slt          t1, a5, a0
                  sra          t3, s3, zero
                  nop
                  bge          gp, a3, 315f
                  ori          tp, a4, -1119
                  add          a5, t1, t3
                  ori          tp, gp, -1023
                  srai         tp, a2, 15
                  bge          a7, s3, 320f
                  slli         a5, s8, 24
                  srli         t1, t6, 17
308:              bgeu         t0, t5, 312f
                  sll          t6, s4, t0
                  bgeu         s2, s9, 325f
                  ori          s11, a7, -1117
312:              lui          a3, 783534
                  lui          tp, 514185
                  sltu         a7, a5, a0
315:              srl          t1, s9, sp
                  slli         a4, zero, 18
                  bne          s9, s4, 319f
                  bne          s11, s2, 332f
319:              sll          s5, sp, a5
320:              sub          t0, t5, s11
                  sltu         s2, tp, s6
                  sra          s0, a0, a3
                  and          t4, gp, t4
                  srai         s1, ra, 4
325:              srli         a4, tp, 17
                  sltu         t1, sp, zero
                  lui          a4, 203747
                  srli         s2, s10, 5
                  nop
                  sub          s2, a3, t4
                  beq          a0, a0, 334f
332:              beq          zero, zero, 348f
                  beq          tp, s9, 345f
334:              sltiu        a5, tp, -1252
                  srai         s1, s4, 0
                  nop
                  sub          tp, t5, t2
                  sltiu        a3, s9, 1769
                  auipc        s7, 368176
                  bge          a2, s8, 357f
                  nop
                  slli         s5, ra, 26
                  addi         s0, t4, 321
                  and          zero, sp, t5
345:              beq          s8, a2, 351f
                  bltu         s6, s10, 361f
                  andi         a6, a7, -1767
348:              srl          t5, t2, s11
                  srai         s8, s5, 4
                  andi         s2, ra, -2003
351:              srli         t0, a3, 21
                  sltu         zero, a2, a6
                  slli         s9, s0, 6
                  or           s7, s11, ra
                  blt          a1, s3, 362f
                  slt          t6, t5, s10
357:              or           t4, s0, gp
                  sra          a5, t1, tp
                  beq          s8, t0, 371f
                  andi         s5, s4, -1515
361:              xor          s7, s11, t4
362:              srl          a3, s6, gp
                  nop
                  srl          t6, s7, s7
                  bgeu         t0, sp, 380f
                  slti         s11, a6, -599
                  and          a5, s3, a2
                  nop
                  ori          a5, a5, -1738
                  or           s10, a2, s9
371:              slli         t6, s0, 0
                  auipc        a3, 108386
                  xor          sp, a1, t4
                  slli         s11, t6, 20
                  sltiu        t1, a5, 1385
                  sltu         s11, s3, s9
                  lui          a6, 265110
                  slti         s7, a3, 1519
                  sra          s0, zero, t0
380:              bge          t4, s7, 397f
                  bne          t1, a2, 397f
                  blt          t2, a4, 383f
383:              slli         t1, s7, 12
                  lui          s11, 607203
                  bne          t2, s10, 400f
                  sltiu        s6, s2, -233
                  auipc        t0, 463786
                  sub          zero, zero, t0
                  slti         s0, t5, -102
                  sra          a6, s9, a3
                  or           s7, a1, sp
                  auipc        s0, 632092
                  srai         s0, s8, 16
                  sub          s2, t3, s5
                  bltu         a0, zero, 412f
                  andi         gp, s7, -1138
397:              sra          t5, s10, s3
                  andi         t5, sp, 1423
                  lui          gp, 193879
400:              srl          a5, t6, ra
                  sltu         tp, a1, s9
                  slti         s5, s0, -1667
                  sra          a0, a3, t4
                  srl          s5, s6, zero
                  slt          s2, s5, t0
                  bge          t5, t0, 420f
                  sltu         t6, a2, s2
                  bne          s10, a2, 421f
                  or           s0, a1, t1
                  nop
                  auipc        t6, 1019934
412:              srli         gp, sp, 28
                  ori          ra, t2, -406
                  lui          ra, 274478
                  sra          a5, s5, a3
                  beq          s9, s10, 433f
                  bltu         gp, t6, 433f
                  bltu         a7, a1, 435f
                  srai         a6, a5, 15
420:              beq          a6, zero, 427f
421:              srli         a7, s7, 23
                  sll          a6, t6, a7
                  srli         s8, s4, 12
                  beq          s2, a0, 440f
                  bge          a2, gp, 430f
                  andi         a5, tp, 1521
427:              beq          a2, s2, 431f
                  bne          t4, s2, 448f
                  sll          s11, a4, s6
430:              nop
431:              bltu         s3, s7, 435f
                  bgeu         s7, t3, 438f
433:              addi         t6, s2, -43
                  slli         ra, s10, 17
435:              slt          s3, t0, tp
                  and          s3, a4, a1
                  xor          s3, s1, a3
438:              andi         a3, t6, -565
                  blt          a4, a2, 442f
440:              bltu         s4, a4, 444f
                  beq          s9, sp, 443f
442:              lui          s5, 591442
443:              sltu         t1, t4, s3
444:              srli         ra, a6, 21
                  ori          a4, t4, -178
                  srli         s7, a5, 16
                  nop
448:              slti         s8, s7, -2013
                  srl          a4, a4, a3
                  lui          zero, 119006
                  srai         s2, ra, 4
                  bgeu         a5, t3, 464f
                  bgeu         s3, gp, 467f
                  sra          s10, s2, s9
                  blt          a3, s8, 468f
                  slti         t2, s2, -125
                  bltu         t2, a4, 472f
                  ori          t0, t5, 709
                  srl          a4, tp, s8
                  auipc        tp, 398302
                  xor          zero, ra, a4
                  sub          t2, a0, s6
                  beq          tp, t5, 465f
464:              addi         s10, tp, 612
465:              or           a7, a6, t1
                  lui          a0, 692552
467:              bltu         s3, a0, 473f
468:              auipc        s6, 953283
                  lui          s11, 154645
                  lui          s1, 615041
                  xor          s3, zero, s10
472:              slli         t2, zero, 30
473:              slli         s8, a1, 15
                  blt          t0, a7, 480f
                  sll          ra, s0, a0
                  slt          t4, t3, sp
                  srli         s8, t4, 11
                  lui          zero, 858203
                  and          t5, s7, a6
480:              bge          s2, a6, 487f
                  slli         s9, s2, 6
                  srl          s1, a7, s11
                  xor          t3, s8, s1
                  xori         s6, a2, 181
                  xor          a0, a1, t3
                  bgeu         s5, a6, 506f
487:              blt          t4, s6, 503f
                  lui          t4, 897762
                  andi         t4, t3, 1745
                  bgeu         s6, s8, 503f
                  sltiu        a5, s4, -1242
                  and          t2, t5, s7
                  and          s5, tp, t0
                  sub          s7, zero, zero
                  addi         tp, t0, -732
                  sltu         t1, s8, sp
                  blt          s10, s7, 499f
                  sll          s11, s5, t0
499:              bge          zero, s6, 513f
                  sll          s0, sp, s5
                  sll          s10, s4, t2
                  sra          t1, t4, s10
503:              slti         a5, s10, -1534
                  ori          zero, s1, -1022
                  srai         t4, a5, 26
506:              srli         s7, t2, 6
                  beq          t3, s6, 523f
                  lui          a5, 610543
                  sub          t3, a1, ra
                  lui          a4, 403986
                  or           s2, s6, sp
                  slli         ra, ra, 20
513:              or           t6, s9, t6
                  srl          s6, t4, a4
                  or           ra, s1, t2
                  add          a6, t1, ra
                  xori         s8, a5, 167
                  sll          t5, a6, s10
                  slli         s8, s4, 3
                  bltu         s4, s6, 533f
                  lui          s1, 94354
                  sltu         s6, s1, a1
523:              bge          t0, t6, 535f
                  bltu         a1, t5, 541f
                  or           t3, t4, sp
                  srli         a6, zero, 24
                  blt          a6, t5, 534f
                  add          a4, s8, s2
                  slti         s0, a3, 835
                  xori         t4, s6, 1879
                  xor          sp, a6, t4
                  ori          t4, s9, -1406
533:              sub          a4, a5, a0
534:              bge          gp, gp, 551f
535:              sltu         a7, gp, s8
                  sltiu        s1, s5, -553
                  bltu         t2, s1, 540f
                  bltu         s1, a1, 542f
                  ori          sp, t1, 1387
540:              blt          t3, s2, 557f
541:              bne          a5, s10, 543f
542:              and          s2, a6, s7
543:              lui          s10, 96224
                  sra          a5, t5, t3
                  sub          zero, s9, sp
                  slli         a3, s4, 15
                  xori         t4, s6, 53
                  bgeu         t3, s10, 563f
                  bgeu         zero, s5, 564f
                  ori          a0, a5, -47
551:              addi         a3, s4, 704
                  blt          t4, gp, 569f
                  slti         a5, gp, -1077
                  lui          t3, 648082
                  xor          t6, gp, a7
                  nop
557:              nop
                  sltu         s9, t3, s5
                  or           t1, tp, t3
                  bgeu         s5, s11, 576f
                  slli         t4, t6, 16
                  sub          s8, s9, s3
563:              beq          a5, t2, 577f
564:              slt          s2, a3, s11
                  srai         s11, s2, 31
                  blt          a5, a5, 581f
                  bltu         t5, t5, 568f
568:              bltu         ra, s7, 572f
569:              sra          t2, a1, sp
                  addi         tp, ra, 1262
                  slti         a5, s1, 1398
572:              slt          s1, gp, sp
                  sltiu        s7, gp, 2025
                  slti         s5, t5, 1924
                  slli         a4, sp, 3
576:              sra          s5, t4, s4
577:              blt          ra, s11, 581f
                  add          s5, s7, a6
                  bge          a1, s4, 584f
                  slli         a4, s10, 5
581:              bgeu         t6, t3, 593f
                  bgeu         a3, s9, 597f
                  sra          a0, s6, a2
584:              ori          s11, t4, -1710
                  slti         s1, s8, 1309
                  xori         s6, a6, -1424
                  lui          s9, 749439
                  beq          a2, s11, 595f
                  slt          t5, s6, t2
                  andi         sp, a5, -1794
                  blt          s10, s7, 598f
                  nop
593:              lui          ra, 218600
                  sltu         t6, ra, a7
595:              bgeu         t3, s9, 610f
                  andi         t5, t2, 1767
597:              sub          s5, s1, t5
598:              xori         a6, s10, 1630
                  andi         t4, s4, 634
                  xori         t2, s7, -1776
                  sltiu        a0, a0, -1892
                  blt          t5, s5, 604f
                  andi         t6, s2, 1972
604:              sltu         a4, tp, t4
                  bne          s9, s8, 607f
                  blt          ra, s10, 623f
607:              andi         t6, t5, -101
                  auipc        a3, 492212
                  slli         s0, s2, 12
610:              xori         s5, a3, -763
                  bgeu         ra, s8, 631f
                  xori         a7, tp, 1296
                  or           s6, gp, s1
                  sub          s11, s11, a6
                  addi         a0, gp, -1566
                  sra          ra, s0, a4
                  bgeu         a5, a6, 631f
                  lui          t6, 677659
                  xor          s0, t2, t1
                  bge          t5, s8, 633f
                  srl          gp, t6, t3
                  lui          t5, 312964
623:              slti         s11, s3, -271
                  sub          t0, s3, s10
                  add          t4, a0, s1
                  blt          t6, a6, 631f
                  slli         s11, a0, 7
                  blt          a0, t3, 645f
                  xor          s1, t1, t0
                  addi         a3, a4, -709
631:              srl          s0, a5, sp
                  and          t0, t2, s10
633:              sll          tp, s8, a0
                  srli         t6, t3, 31
                  nop
                  slli         ra, a2, 24
                  andi         ra, ra, -1097
                  add          a3, s11, tp
                  sltu         t2, s6, s4
                  slli         t1, sp, 5
                  lui          t0, 239261
                  slti         sp, s10, 1883
                  sub          s3, s0, a4
                  slli         a7, zero, 12
645:              nop
                  bltu         s2, a4, 663f
                  bge          gp, t6, 663f
                  sltu         s10, t0, s8
                  bgeu         a0, t2, 664f
                  blt          a5, t3, 651f
651:              ori          s0, s4, 0
                  sub          t4, t6, s11
                  sltu         s10, s1, t6
                  slti         zero, s2, 1915
                  auipc        s6, 898024
                  sra          t4, a5, sp
                  and          s2, sp, t3
                  or           sp, t5, s8
                  bne          s4, s2, 673f
                  slti         s1, a5, -424
                  sltu         t3, s11, t4
                  sra          ra, t1, a4
663:              srli         tp, a3, 13
664:              lui          s5, 859986
                  bgeu         t6, t6, 680f
                  or           s7, a0, s6
                  and          ra, a7, t1
                  xor          a7, t6, ra
                  sub          t5, a0, a4
                  sra          t1, s3, a7
                  srl          s6, s4, s5
                  sltu         a0, sp, t1
673:              auipc        zero, 582965
                  slti         a6, a5, -44
                  bne          s1, a2, 691f
                  ori          t1, ra, 1261
                  and          s2, t1, s8
                  sltiu        t5, a1, -1769
                  slti         t3, s6, 1308
680:              sll          t6, s9, s3
                  or           s9, a3, t2
                  slt          t5, t0, t2
                  srli         a0, a3, 2
                  srli         t5, a7, 4
                  srl          t2, a7, s11
                  slt          tp, sp, a2
                  and          a4, t3, a1
                  nop
                  addi         s3, a3, 451
                  lui          s0, 564500
691:              lui          s11, 1036449
                  blt          a6, s7, 698f
                  sll          t6, s2, s4
                  srai         s2, a2, 31
                  and          t1, s10, a3
                  srl          a4, t2, t4
                  or           s1, s7, t1
698:              sub          s5, tp, gp
                  and          s1, t5, zero
                  xor          a5, s3, s5
                  and          t2, t0, a2
                  auipc        t0, 826124
                  bne          t6, a3, 706f
                  sra          s9, a7, a6
                  xori         s7, s4, 1994
706:              bgeu         s4, s4, 721f
                  xor          a4, s7, a4
                  ori          t0, a1, -1322
                  srai         t3, s4, 22
                  bne          t4, s9, 722f
                  srai         t6, a7, 2
                  nop
                  blt          ra, s11, 725f
                  beq          a1, s3, 720f
                  slti         t5, a3, 806
                  slt          s6, s8, s10
                  slli         t0, s2, 28
                  auipc        gp, 426752
                  lui          a6, 749582
720:              sra          s3, s5, s7
721:              sltiu        s7, t6, 742
722:              sll          s0, a7, ra
                  slt          t2, t6, t4
                  sll          s7, gp, s11
725:              sra          s6, a1, s11
                  srai         a4, s8, 21
                  andi         s8, s4, 1731
                  xor          t2, s10, s2
                  addi         a7, a7, -1446
                  slt          s9, a5, s1
                  ori          s2, s3, 203
                  srai         t4, s1, 0
                  beq          ra, a1, 746f
                  srai         s11, t4, 27
                  sll          gp, a0, s1
                  xori         s2, s10, 346
                  sltiu        a6, s10, -1544
                  add          t6, t0, tp
                  sra          s1, zero, s0
                  srli         s11, gp, 3
                  bgeu         gp, s7, 758f
                  bge          ra, zero, 746f
                  bltu         s11, t6, 747f
                  sltu         s7, gp, s6
                  lui          s8, 69987
746:              srai         tp, s11, 19
747:              nop
                  auipc        s5, 172990
                  srli         t6, t5, 3
                  bne          s1, ra, 754f
                  addi         ra, t5, -647
                  andi         s11, a6, 1323
                  srl          tp, a2, a3
754:              slti         ra, t1, -633
                  nop
                  sra          tp, t3, a1
                  and          s9, a0, s5
758:              sll          tp, a1, s9
                  beq          zero, zero, 775f
                  and          t2, ra, sp
                  sltiu        t1, s0, 653
                  ori          t0, s0, 568
                  nop
                  lui          s11, 547012
                  sltu         zero, s2, s11
                  bne          a0, ra, 778f
                  sltu         t2, sp, a3
                  andi         a4, a1, -822
                  sltu         a0, t5, t2
                  slt          a0, sp, s0
                  bne          t0, a4, 777f
                  or           s6, t3, s3
                  or           s11, a3, s2
                  srli         t2, t0, 7
775:              lui          s0, 923355
                  srl          t4, a5, t6
777:              slt          gp, s11, s7
778:              bltu         s10, gp, 793f
                  srai         a3, t1, 1
                  addi         gp, a4, 326
                  andi         t1, s5, -1945
                  add          t4, s2, s1
                  srl          a5, s7, zero
                  bltu         s1, t5, 787f
                  or           ra, s2, a7
                  lui          ra, 47825
787:              bge          t3, s2, 800f
                  sll          t1, t0, a6
                  sltu         t5, s6, a0
                  andi         s3, s6, -1824
                  lui          sp, 860085
                  beq          t0, t2, 799f
793:              andi         a3, s10, 1994
                  bge          s11, ra, 805f
                  bne          s7, t2, 805f
                  sub          gp, s5, tp
                  andi         sp, s8, -382
                  sltu         a5, a5, ra
799:              add          t6, gp, t6
800:              slti         t0, sp, -1095
                  and          s11, s11, gp
                  addi         s6, t2, 157
                  srl          s9, t5, a5
                  bltu         s3, s9, 805f
805:              xor          s1, a3, a1
                  srai         s7, s8, 28
                  lui          a6, 953763
                  andi         s10, s9, 695
                  slt          s7, gp, a5
                  lw           t5, 4(a2)
                  or           s3, s8, s7
                  addi         a2, a2, 36
                  slti         s3, s6, 399
                  nop
                  srli         a3, s2, 7
                  xor          s7, s3, zero
1061:             addi x28, x30, 0
1061:             jalr x28, x28, 0
sub_10:           addi         a2, a2, -12
                  andi         zero, s3, 779
                  auipc        a6, 283760
                  ori          s6, tp, 488
                  srai         zero, gp, 6
                  srl          a0, a1, s4
                  slt          a3, t5, s11
                  sw           t5, 4(a2)
                  sltu         s11, t5, zero
                  bltu         s9, s1, 7f
                  auipc        s5, 808946
                  xori         t6, t3, 1331
                  andi         tp, s9, -1692
                  ori          s9, t1, -1939
                  srai         s3, a3, 19
                  and          s11, s9, t1
7:                blt          s1, a0, 23f
                  srai         a6, a0, 11
                  bltu         s5, a7, 26f
                  slti         s9, t2, -569
                  sltiu        s2, s9, 1184
                  bge          s3, s9, 24f
                  sltu         a4, s4, s10
                  lui          sp, 486740
                  bne          s2, s6, 17f
                  addi         t5, a2, 735
17:               andi         s1, a3, -1287
                  sltu         s3, a4, a5
                  sltu         s8, s11, s0
                  bne          sp, t0, 40f
                  addi         t3, t4, -889
                  add          s2, a7, gp
23:               xor          t0, gp, s1
24:               and          a7, s6, s4
                  sltiu        a5, s9, -520
26:               bgeu         s5, s7, 37f
                  bne          s8, a6, 29f
                  bne          tp, s6, 48f
29:               beq          t4, a6, 31f
                  sltiu        gp, s0, 1735
31:               or           s10, a6, s9
                  auipc        s0, 374538
                  bge          s11, sp, 47f
                  slti         a4, s6, -2003
                  sltu         a7, s1, tp
                  addi         a7, s1, -1398
37:               add          a3, s8, s6
                  sll          t4, a5, a1
                  srai         a6, ra, 24
40:               addi         t2, a3, -395
                  lui          t3, 174265
                  beq          t0, a0, 54f
                  bltu         a7, t5, 54f
                  sltiu        t0, t2, -1685
                  bgeu         s6, s7, 54f
                  sltu         s10, s9, s7
47:               srli         s1, s1, 19
48:               xori         s10, a5, -509
                  blt          sp, s10, 54f
                  bltu         s5, s3, 54f
                  sll          a7, t1, sp
                  xor          s11, a4, s8
                  sltiu        s1, t4, 1944
54:               sll          s7, t3, t4
                  srl          a7, a7, a3
                  xori         s5, t0, -1530
                  add          t1, s11, s11
                  auipc        t6, 1012954
                  lw           t5, 4(a2)
                  nop
                  slli         t0, a2, 29
                  addi         a2, a2, 12
                  srl          gp, a7, s10
73:               addi x27, x30, 1
73:               jalr x27, x27, 0
sub_8:            and          a4, s2, t0
                  lui          s2, 26599
                  addi         a2, a2, -28
                  ori          s11, s11, -1781
                  srl          s0, a7, t6
                  sw           t5, 4(a2)
                  sltu         t4, t5, s11
                  xori         t1, zero, -760
                  la           sp, region_1+591 #start riscv_load_store_rand_instr_stream_0
                  andi         s10, t3, 146
                  sb           zero, -14(sp)
                  and          s9, s3, s2
                  auipc        a5, 757574
                  sll          a5, sp, t6
                  sb           t3, 4(sp)
                  sh           s2, 11(sp)
                  auipc        a7, 845889
                  ori          gp, s3, -1845
                  srl          a5, zero, s1
                  lb           s10, 9(sp)
                  slt          gp, t1, ra
                  sltiu        t3, t6, -1518
                  sb           s9, 2(sp)
                  slt          s9, s8, s11
                  lhu          s0, 5(sp)
                  lbu          s8, 15(sp)
                  lbu          a6, -12(sp)
                  srai         s7, gp, 8
                  sub          t2, s2, sp
                  sub          a4, a5, t4
                  sb           s2, 2(sp)
                  srli         a3, t6, 4
                  lb           t5, -15(sp)
                  xori         t0, a1, -1750
                  srai         s11, s0, 0
                  sb           a4, 1(sp)
                  auipc        s5, 897322
                  sub          t3, tp, t2
                  lbu          a4, 16(sp)
                  sb           s9, 8(sp)
                  srai         t1, a3, 20
                  lbu          gp, 7(sp)
                  nop
                  slli         t5, a1, 12
                  sw           a6, 5(sp)
                  or           a5, a6, s9
                  sh           s4, -3(sp)
                  lb           ra, -8(sp)
                  sra          ra, a1, a4
                  or           t1, t4, s5
                  auipc        t3, 728616
                  lbu          gp, -6(sp)
                  add          tp, t5, t3
                  slt          s2, zero, a5
                  slti         s10, tp, 1605
                  add          ra, a5, gp
                  slt          s3, t0, a3
                  lbu          s1, 0(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         t3, s1, 16f
                  sub          t2, t0, s4
                  sll          a6, s0, s5
                  slli         t2, a2, 17
                  slti         t0, gp, -884
                  bne          s5, s2, 24f
                  sll          sp, s7, s1
                  beq          s2, s8, 15f
                  lui          s11, 150540
                  srl          zero, s11, a2
                  xor          a7, s8, a0
                  sltu         s2, s10, s5
                  nop
                  srai         s11, ra, 2
                  srli         ra, tp, 8
15:               nop
16:               auipc        t3, 503595
                  lui          s6, 219361
                  srl          gp, zero, a5
                  beq          a6, t3, 22f
                  nop
                  nop
22:               or           s10, s4, s11
                  bge          s4, s11, 34f
24:               bge          s1, s9, 36f
                  or           s7, a4, t5
                  xor          a0, s0, s4
                  bltu         a2, zero, 40f
                  bgeu         s11, s5, 38f
                  xori         a3, a5, -322
                  slt          s1, s1, t5
                  andi         t3, zero, -565
                  srl          s1, a1, t6
                  andi         t1, a3, -1683
34:               addi         zero, sp, -1546
                  bne          tp, gp, 55f
36:               beq          s10, s11, 55f
                  slli         t4, zero, 4
38:               nop
                  nop
40:               beq          s6, ra, 45f
                  bne          t3, a4, 43f
                  or           s1, s8, s3
43:               bge          a5, s9, 57f
                  bgeu         ra, zero, 51f
45:               slti         a5, t6, 372
                  bltu         t4, a3, 60f
                  and          t5, s10, s1
                  xori         s2, a7, 71
                  slti         a0, s0, 296
                  bgeu         s9, s1, 70f
51:               addi         t0, t0, 1056
                  sub          a4, tp, s1
                  slli         zero, s5, 16
                  srli         a7, s9, 11
55:               ori          gp, a3, 988
                  sll          s2, zero, t5
57:               bgeu         s4, gp, 75f
                  slti         tp, tp, 817
                  sra          a5, sp, s3
60:               add          a0, s7, t3
                  andi         t4, t1, 815
                  nop
                  bne          sp, a5, 64f
64:               beq          s7, s0, 80f
                  or           ra, s11, t3
                  and          s2, gp, s10
                  sub          s2, t0, s5
                  andi         ra, s4, -420
                  xor          t6, s9, tp
70:               slli         s2, s4, 31
                  xor          s8, t0, a3
                  slt          s7, a5, ra
                  xor          s9, s7, s5
                  xor          t1, t3, sp
75:               bge          t5, a0, 94f
                  bne          s5, t1, 83f
                  and          s9, s4, s0
                  srli         s11, s6, 12
                  sltiu        t1, s1, 597
80:               sub          s1, gp, s0
                  add          a5, s1, tp
                  bge          s9, a2, 88f
83:               srli         s6, s8, 21
                  nop
                  slt          a5, t1, s4
                  bltu         s9, a2, 102f
                  sltu         s6, t0, t6
88:               bltu         s9, s8, 102f
                  sll          s0, s10, t1
                  nop
                  ori          gp, s1, -1473
                  srl          s5, s11, a2
                  bge          s1, a2, 113f
94:               bge          s5, t6, 102f
                  bltu         t6, a0, 109f
                  xor          ra, a6, s9
                  xor          tp, zero, ra
                  bne          t6, t3, 117f
                  lui          s10, 982782
                  sub          s7, zero, gp
                  sll          s6, t3, s2
102:              andi         a6, s11, 1974
                  xori         s0, t6, 390
                  bge          a3, a1, 116f
                  addi         zero, s2, -2018
                  sub          t2, s9, s10
                  ori          s10, t3, 1020
                  xor          ra, s10, t4
109:              sltiu        s3, s6, -390
                  andi         a4, zero, 1213
                  bgeu         t2, s8, 116f
                  blt          s7, a1, 115f
113:              srl          s10, s1, s3
                  sra          s3, s1, s8
115:              bne          s5, ra, 122f
116:              srli         sp, t5, 11
117:              lui          t6, 537579
                  auipc        tp, 47842
                  add          a6, s7, ra
                  and          s9, ra, s5
                  sltu         s9, s3, s8
122:              srl          s0, a3, a3
                  beq          zero, s5, 139f
                  ori          s3, a2, -1878
                  blt          a5, s1, 137f
                  lui          s8, 770434
                  slti         s1, a2, 48
                  lui          a5, 160890
                  or           s11, sp, t2
                  srli         a4, s5, 25
                  srl          s5, s7, t4
                  bne          ra, a6, 139f
                  addi         s9, a4, -1454
                  addi         s8, s2, -1932
                  sra          s8, s0, a3
                  sll          a3, s10, a3
137:              andi         s5, zero, -1301
                  srl          t1, s11, gp
139:              sra          t6, sp, a0
                  bge          sp, t0, 154f
                  slti         a0, t2, 395
                  bltu         gp, a5, 156f
                  slt          t4, t0, s8
                  slt          zero, s11, s7
                  addi         s7, tp, 1427
                  ori          a7, s6, -746
                  andi         gp, s10, -1674
                  xori         tp, zero, 1420
                  or           a0, a0, a0
                  srl          t2, a7, a1
                  blt          gp, s6, 170f
                  srli         a5, s8, 6
                  nop
154:              sra          tp, ra, zero
                  andi         t1, s7, -406
156:              sltiu        s1, s7, -1779
                  beq          s2, a5, 168f
                  srl          t6, s4, t5
                  sltu         sp, a4, s4
                  ori          s2, t6, 174
                  or           t1, s1, a7
                  blt          a1, t1, 178f
                  bne          s11, t4, 173f
                  srl          s9, zero, a6
                  bge          zero, t5, 184f
                  sll          t1, s10, s1
                  srli         t6, a1, 25
168:              and          t2, s2, s10
                  srli         a4, a0, 24
170:              sltiu        tp, tp, 891
                  bltu         s7, a4, 179f
                  addi         t5, t6, 1248
173:              slt          t3, s3, s4
                  andi         tp, a1, 1901
                  slli         t0, a0, 11
                  sra          t1, s2, a6
                  add          sp, s10, s10
178:              auipc        t2, 104842
179:              srl          s6, s7, a4
                  and          s3, t0, ra
                  slli         s0, a6, 7
                  la           sp, region_1+909 #start riscv_load_store_rand_instr_stream_1
                  lbu          t3, 170(sp)
                  srli         zero, s7, 20
                  sb           t0, 29(sp)
                  lb           t6, 256(sp)
                  lb           t4, -245(sp)
                  sb           s4, -210(sp)
                  andi         gp, t5, 756
                  lh           s10, -145(sp)
                  srai         t1, s3, 6
                  lbu          tp, -117(sp)
                  lbu          s5, 102(sp)
                  addi         a4, s10, 783
                  sltu         s1, a2, s5
                  lh           t0, 131(sp)
                  lhu          s1, 239(sp)
                  lb           tp, -204(sp)
                  ori          t4, s5, 1636
                  lw           s11, -129(sp)
                  lhu          t0, 73(sp)
                  lb           a3, 61(sp)
                  srl          t3, sp, t0
                  lh           zero, 229(sp)
                  lbu          t0, 193(sp)
                  xori         s11, s7, -1400
                  lb           t3, -137(sp)
                  sltiu        a6, s8, 1777
                  sra          t2, s4, s11
                  lbu          t1, -108(sp)
                  lbu          t3, 32(sp)
                  lbu          s6, -223(sp)
                  slti         s2, t6, 1295
                  addi         s0, t5, -112
                  lh           t1, 135(sp)
                  lh           s11, 125(sp)
                  lw           s3, 11(sp) #end riscv_load_store_rand_instr_stream_1
                  sltu         s2, t1, ra
                  sll          t1, a0, a7
184:              and          s2, t2, s1
                  srai         s5, s10, 12
                  bgeu         s9, t1, 199f
                  beq          s5, s11, 206f
                  nop
                  addi         a4, s9, 1482
                  addi         s0, s7, 336
                  srai         s1, t4, 1
                  bne          a6, t2, 204f
                  srli         t3, s11, 29
                  srai         gp, s8, 6
                  sub          s2, s3, s1
                  andi         s5, t2, -1693
                  and          s2, a1, gp
                  bne          t0, zero, 206f
199:              sltiu        s6, t4, 269
                  addi         t6, t2, 1210
                  auipc        zero, 270454
                  sltiu        t5, s5, 1630
                  bgeu         s3, a6, 204f
204:              srl          s0, gp, a4
                  slt          s3, s10, t6
206:              bge          t1, s8, 225f
                  xori         a3, s3, 1161
                  sub          a0, ra, a2
                  addi         t1, t3, -532
                  add          t2, s6, a5
                  bgeu         a2, a4, 231f
                  slti         a0, s6, -225
                  ori          t3, s5, -1344
                  srai         zero, s6, 11
                  sltu         s1, t5, t6
                  bne          s2, s8, 218f
                  bne          t2, s1, 222f
218:              andi         s10, s9, -1219
                  bge          s2, s11, 224f
                  sub          t1, a6, sp
                  auipc        t2, 734365
222:              andi         gp, s9, 1215
                  nop
224:              srli         s7, a3, 5
225:              nop
                  sub          a7, s8, a6
                  beq          a7, a3, 241f
                  slli         t6, a5, 6
                  srl          s8, tp, a3
                  nop
231:              slt          s7, s4, s11
                  sub          gp, s5, a5
                  addi         a4, s2, 1503
                  xori         s5, t1, 1000
                  xori         s2, s7, -906
                  andi         s0, t2, 307
                  slt          s7, s2, a6
                  sltu         sp, a3, s8
                  and          t0, a3, a6
                  and          s10, ra, s7
241:              sub          a3, a6, t6
                  sltiu        t6, s10, -277
                  sub          t5, s2, a6
                  sltiu        t2, a2, -1327
                  sub          ra, t5, a5
                  sra          s10, a2, t1
                  bne          t6, t3, 260f
                  sub          a7, a3, sp
                  lui          s1, 450680
                  slti         s8, a6, -1016
                  and          tp, s10, s5
                  sltu         sp, a7, t0
                  lui          s5, 170185
                  srl          a3, a3, s5
                  blt          s9, s7, 260f
                  bge          a3, t3, 260f
                  xori         s5, t6, 1564
                  slli         s5, zero, 19
                  srli         s5, a1, 20
260:              add          s11, s8, t1
                  lw           t5, 4(a2)
                  slti         s3, a6, -32
                  xori         s6, t0, 549
                  addi         a2, a2, 28
                  slti         a5, t6, -1028
                  srli         t1, t3, 0
                  xor          s10, s11, tp
362:              addi x10, x30, 0
362:              jalr x10, x10, 0
sub_7:            sub          t4, ra, s1
                  srai         gp, t5, 17
                  addi         a2, a2, -28
                  add          t6, a2, zero
                  slli         gp, s11, 3
                  sw           t5, 4(a2)
                  sra          s11, s0, t6
                  la           sp, region_1+100 #start riscv_load_store_rand_instr_stream_2
                  sb           gp, 1459(sp)
                  lhu          a4, 286(sp)
                  lb           s2, 11(sp)
                  sra          s9, gp, a0
                  lbu          a6, 189(sp)
                  sb           s1, 1685(sp)
                  sub          s11, t3, t5
                  sh           a7, 670(sp)
                  lh           a4, 456(sp)
                  lw           s1, 612(sp)
                  srli         gp, a5, 11
                  sb           tp, 1228(sp)
                  lw           a3, 1380(sp)
                  lh           t1, 254(sp)
                  sb           s1, 173(sp)
                  sltu         s5, gp, s0
                  sb           s1, 1851(sp)
                  sra          s2, t6, t0
                  lb           t3, 211(sp)
                  srai         t2, a2, 17
                  sltu         a7, t6, s6
                  sb           t2, 438(sp)
                  lw           s6, 1276(sp)
                  lbu          s8, -12(sp)
                  lb           s6, 1149(sp)
                  srli         s5, tp, 11
                  auipc        a3, 340260
                  xor          a4, s8, s10
                  slt          gp, s1, a6
                  sb           t2, 1393(sp)
                  and          s1, zero, s11
                  lh           s7, 546(sp)
                  xori         ra, s2, -781
                  lhu          ra, 80(sp)
                  auipc        s1, 489077
                  and          s7, s9, t6
                  lhu          gp, 1166(sp)
                  sh           s2, 782(sp)
                  srli         tp, a6, 14
                  lbu          a7, 1605(sp)
                  lb           t1, 119(sp)
                  sra          t1, s6, t4
                  lhu          zero, 1628(sp)
                  srai         t4, t5, 23
                  ori          a4, a0, 2027
                  xori         s7, s0, 464
                  sltu         tp, a3, tp
                  lbu          a7, 578(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1574 #start riscv_load_store_rand_instr_stream_1
                  lb           a7, -273(sp)
                  xori         a6, a3, 600
                  sb           gp, 419(sp)
                  andi         a6, s6, 1727
                  sltiu        a5, gp, 1340
                  lbu          a7, 43(sp)
                  slli         ra, t1, 27
                  srl          t1, s11, gp
                  srl          t1, s4, s2
                  sb           a4, -605(sp)
                  sra          t0, t1, a6
                  lb           t1, 317(sp)
                  sltu         gp, zero, a4
                  nop
                  sb           sp, -41(sp)
                  lbu          a4, 148(sp)
                  sub          a5, zero, t3
                  lhu          t1, -16(sp)
                  sb           sp, -1081(sp)
                  lbu          a3, -235(sp)
                  sll          t2, a3, s2
                  lb           t2, -111(sp)
                  lbu          a7, -95(sp)
                  sw           sp, -78(sp)
                  lb           t6, 364(sp)
                  lbu          tp, -385(sp)
                  lh           s6, -1038(sp)
                  addi         s10, a7, -456
                  slli         t1, a7, 14
                  sh           s10, -508(sp)
                  sb           a2, -47(sp)
                  sh           tp, -178(sp)
                  or           t2, a3, a7
                  xor          ra, a2, a1
                  sb           a3, -191(sp)
                  nop
                  lhu          tp, -746(sp)
                  nop
                  lb           s11, -1073(sp)
                  srai         s5, s2, 13
                  sltiu        a0, sp, 1141
                  lw           t2, -1354(sp)
                  srl          t4, s4, t4
                  lui          zero, 791131
                  lbu          s5, -278(sp)
                  sb           s10, 242(sp)
                  sb           gp, -83(sp)
                  lb           s7, -1231(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_1+1005 #start riscv_load_store_rand_instr_stream_0
                  lbu          s7, -11(s1)
                  lh           s5, -5(s1)
                  xor          zero, t2, t4
                  sll          t3, gp, a1
                  sltu         t5, a1, s0
                  lb           t5, 6(s1)
                  sra          sp, a0, s9
                  andi         a0, s1, 57
                  add          t1, s5, t2
                  xori         a6, s7, 1023
                  srl          a7, s7, s3
                  nop
                  sltiu        s2, s7, 1312
                  ori          t1, t2, -484
                  slli         a4, s3, 25
                  slti         a5, t0, 944
                  xori         s9, s2, 1847
                  addi         zero, zero, -1119
                  sb           t4, -4(s1)
                  srai         t3, s0, 15
                  xori         s11, s4, 644
                  lh           a0, 15(s1)
                  lbu          a4, 10(s1)
                  slti         s10, s10, -911
                  sltu         s9, s8, sp
                  lh           ra, 3(s1)
                  ori          tp, a6, 1597
                  sb           s8, 10(s1)
                  sb           s3, 16(s1)
                  lw           t0, 15(s1)
                  lbu          a7, -3(s1)
                  or           s8, s8, a6
                  nop
                  ori          s0, t3, -957
                  lbu          s2, -16(s1)
                  srl          s7, tp, t0
                  andi         s7, a4, -1990
                  lh           a0, 11(s1) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+316 #start riscv_load_store_rand_instr_stream_3
                  sb           s3, -128(s8)
                  and          t1, a0, a3
                  slti         tp, a7, 1276
                  lb           tp, 24(s8)
                  sb           zero, -142(s8)
                  sb           a5, 201(s8)
                  lb           s2, -191(s8)
                  lbu          a7, -109(s8)
                  lbu          s7, -148(s8)
                  lbu          a0, -33(s8)
                  lb           zero, -17(s8)
                  sb           s7, 57(s8)
                  auipc        a6, 582614
                  or           zero, a7, a4
                  add          gp, t1, a2
                  sltu         t4, a6, s10
                  sb           a1, 145(s8)
                  nop
                  sb           a2, -198(s8)
                  lbu          s6, 219(s8)
                  sra          s5, s9, a6
                  sw           gp, 176(s8)
                  sb           t1, -16(s8)
                  sh           s1, 138(s8)
                  addi         ra, sp, 1557
                  sh           s6, -40(s8)
                  lbu          a4, -143(s8)
                  lbu          gp, 117(s8)
                  sb           tp, 61(s8)
                  sll          a6, s0, s10
                  sb           s10, -23(s8)
                  xori         a7, s0, -458
                  xor          a6, s9, gp
                  lh           a7, 94(s8)
                  lb           t0, 127(s8)
                  sb           t2, 151(s8)
                  and          a0, tp, a2
                  lbu          a3, 195(s8) #end riscv_load_store_rand_instr_stream_3
                  and          a0, gp, a6
                  addi         s3, s8, -359
                  srai         a6, zero, 25
                  or           a7, a0, t2
                  srl          s10, a5, s1
                  bltu         s4, s2, 11f
                  sltiu        s6, s4, 695
                  xori         t6, zero, -939
                  sub          t0, t1, sp
                  blt          t4, t0, 25f
                  andi         a4, a2, -1293
11:               sltiu        s8, t6, 1166
                  slti         a3, s6, 1102
                  and          s8, t0, ra
                  lui          s6, 921765
                  beq          t3, sp, 17f
                  slli         s6, s5, 8
17:               xori         s0, s9, 107
                  andi         a3, a0, -1871
                  or           gp, a5, ra
                  add          s7, t0, ra
                  beq          a4, ra, 25f
                  and          t4, s2, s7
                  beq          s5, a0, 32f
                  slt          ra, t4, t6
25:               sll          s5, s8, t0
                  bne          sp, s0, 41f
                  slti         t2, zero, 1335
                  ori          t4, tp, -241
                  add          tp, zero, a2
                  add          t5, s11, sp
                  nop
32:               andi         ra, a7, -993
                  slli         s3, a6, 0
                  beq          t3, t0, 49f
                  bge          zero, t6, 49f
                  srl          ra, s6, tp
                  srl          s10, t5, a7
                  slli         gp, a2, 7
                  andi         s10, s2, -1196
                  slt          a7, s6, t0
41:               or           s5, t2, s4
                  srai         zero, t5, 18
                  srli         s7, t5, 28
                  bne          a2, s0, 55f
                  auipc        gp, 548804
                  and          sp, s7, t3
                  sll          s0, t1, a1
                  sltu         t0, s10, a7
49:               slt          s9, s3, a6
                  xor          s1, a7, s5
                  and          s5, a6, s2
                  srli         t6, a6, 16
                  slt          t4, s5, s9
                  srl          t1, a1, ra
55:               xor          t4, t6, t4
                  lui          s10, 511579
                  andi         s7, t5, 3
                  bge          t5, ra, 72f
                  slli         a6, a0, 30
                  add          s9, sp, s10
                  and          s5, s4, t2
                  bge          a5, gp, 74f
                  and          s2, a0, s5
                  xori         ra, s10, 916
                  auipc        s8, 338138
                  slli         s0, s7, 23
                  sltu         a0, zero, s1
                  sra          t5, t3, a7
                  xori         ra, t1, -1914
                  ori          s9, s4, -1451
                  andi         s7, s11, 1412
72:               sub          t0, t1, a2
                  slli         t1, a7, 12
74:               add          t6, s7, s5
                  ori          a6, s6, -583
                  add          a6, s6, sp
                  slti         a4, zero, 1878
                  addi         a7, a5, 890
                  xor          sp, t0, s6
                  nop
                  slt          s2, a5, s0
                  xori         t3, s3, 1334
                  auipc        t6, 841800
                  slli         a7, s8, 31
                  sll          s3, a2, s5
                  srai         s8, a1, 9
                  slt          s8, t4, t5
                  blt          t2, t3, 91f
                  srl          ra, t0, a4
                  sub          s6, a0, t5
91:               beq          a6, s0, 93f
                  slli         tp, a0, 13
93:               sltiu        tp, s5, -710
                  srai         a3, t1, 31
                  or           t3, t6, s0
                  bne          t5, t2, 101f
                  beq          s5, t0, 113f
                  slli         t3, s3, 27
                  blt          t0, s5, 119f
                  and          a4, a5, a0
101:              ori          ra, t6, 402
                  srli         ra, s4, 5
                  slti         s5, s7, -986
                  xori         tp, s6, 845
                  slt          a4, t2, s9
                  bltu         s2, a0, 113f
                  sltu         ra, s6, s2
                  bne          tp, s7, 117f
                  add          t4, s0, s8
                  auipc        s6, 993875
                  blt          s4, s10, 122f
                  nop
113:              and          s0, a1, t0
                  xori         t3, s2, -1189
                  or           s2, tp, a5
                  xori         s10, a1, -776
117:              srli         a5, zero, 10
                  blt          a7, a1, 131f
119:              or           s2, s2, s0
                  ori          s5, a3, -551
                  lui          s7, 170358
122:              sra          tp, s4, s11
                  auipc        a7, 1006875
                  srl          a0, s5, gp
                  slli         t0, sp, 22
                  srai         t6, t4, 6
                  bge          s7, t4, 132f
                  srli         a0, a6, 23
                  srl          tp, a3, t1
                  sltiu        s2, tp, -1208
131:              andi         tp, s3, -191
132:              srli         ra, gp, 8
                  sll          s7, gp, s1
                  addi         a3, a2, -190
                  srli         t4, gp, 10
                  sltu         s5, gp, tp
                  addi         a7, t2, -729
                  slti         s11, a5, 167
                  or           s10, tp, t3
                  bne          sp, t5, 143f
                  srl          s5, s7, s2
                  srl          s6, a4, t4
143:              add          a0, t6, gp
                  sra          s6, s2, t5
                  xor          s8, gp, s8
                  srli         s11, t0, 8
                  addi         a4, s1, 1526
                  lui          ra, 361705
                  addi         a6, s4, 1638
                  add          t6, s6, a3
                  lui          a7, 430506
                  slt          s6, a7, t3
                  lui          t6, 565041
                  ori          a5, s0, -2040
                  srai         t5, s6, 7
                  sll          s0, t6, tp
                  bne          t3, s6, sub_7_j11 #branch to jump instr
                  slt          s10, t1, a2
                  or           t4, s1, sp
sub_7_j11:        jal          t5, sub_10 #jump sub_7 -> sub_10
                  ori          t0, s7, -699
                  srl          a3, s6, a1
                  xori         s2, t3, -1561
                  slti         a3, a3, 1471
                  lui          s1, 706014
                  sltiu        t4, a5, -208
                  srli         sp, a1, 15
                  bge          a3, a4, 161f
                  bltu         t5, s1, 177f
                  slli         s9, gp, 31
                  bgeu         s5, a1, 171f
161:              sll          a4, t1, a4
                  srai         t2, a7, 9
                  bge          t5, s1, 178f
                  bgeu         gp, t3, 170f
                  nop
                  sltiu        a7, s1, -629
                  sltu         sp, a4, t1
                  bltu         a6, t0, 185f
                  andi         s5, a3, 194
170:              srli         a3, a5, 6
171:              sltu         t5, s10, t3
                  add          ra, t6, s8
                  slli         s6, s10, 6
                  ori          t6, s6, 584
                  add          t5, a5, s1
                  or           t1, a3, ra
177:              sra          a3, sp, a3
178:              addi         s2, gp, 1600
                  slti         s8, a5, -1531
                  sltu         ra, t5, t5
                  and          t3, s11, s1
                  bge          a1, s9, 195f
                  slti         tp, a6, -1936
                  bge          s9, a0, 201f
185:              srli         s5, s11, 6
                  bge          s2, s8, 189f
                  slli         a0, s0, 29
                  auipc        s7, 503970
189:              and          s10, a7, a0
                  xori         s10, zero, -130
                  srl          t4, t3, tp
                  ori          t3, t6, -1158
                  slt          s3, s0, s0
                  sltiu        s9, tp, 1525
195:              slti         s10, s4, 286
                  blt          a7, s3, 210f
                  or           s5, s7, t3
                  ori          sp, s7, 426
                  bltu         t0, t2, 212f
                  andi         ra, a3, -1832
201:              srai         t3, t3, 5
                  bltu         s8, t5, 205f
                  beq          a7, t1, 214f
                  lui          zero, 417357
205:              bge          a1, a1, 212f
                  bge          a0, s4, 211f
                  slti         t4, t5, 1319
                  slt          a0, a2, t6
                  bltu         s4, ra, 226f
210:              blt          s2, s5, 224f
211:              andi         tp, a6, 1500
212:              slti         t5, tp, 275
                  sll          a7, s5, zero
214:              lui          tp, 1037116
                  ori          gp, a6, -57
                  addi         a5, s11, -1262
                  add          s2, a6, t4
                  slt          s1, s1, a5
                  slti         t1, t6, 1241
                  auipc        s5, 237106
                  la           tp, sub_8
                  srai         s6, t3, 11
                  addi         s7, s5, -1550
                  addi         tp, tp, -661
                  or           a3, s3, t1
                  slti         s2, s0, 16
sub_7_j12:        jalr         t5, tp, 662 #jump sub_7 -> sub_8
                  or           a3, t3, s8
                  sub          ra, s11, s9
                  addi         s10, a3, -894
                  and          t4, s4, a0
224:              addi         t6, t5, 217
                  sll          gp, tp, s3
226:              addi         a6, t2, 1117
                  slli         t0, sp, 13
                  srl          s3, s8, a0
                  addi         zero, s7, -149
                  srli         t6, s8, 18
                  sltu         s5, s9, t3
                  slt          s10, ra, s10
                  ori          t1, a5, 1833
                  bgeu         t4, s1, 251f
                  sra          t5, a3, s2
                  ori          s7, t1, 587
                  srl          s9, t3, a4
                  blt          a4, s0, 242f
                  srai         zero, s11, 26
                  srai         t2, s1, 1
                  ori          t3, sp, 1988
242:              andi         s6, zero, -1297
                  blt          s5, t4, 258f
                  slti         t4, s8, 2005
                  blt          s7, a4, 261f
                  slti         s2, t2, 562
                  andi         a7, tp, -1832
                  blt          a4, t1, 250f
                  slt          a5, s3, s7
250:              sra          t2, a2, t3
251:              bgeu         t5, s11, 271f
                  bne          t5, a3, 264f
                  srai         a7, s9, 29
                  sub          s10, a0, s10
                  sub          s3, tp, s7
                  sub          s2, s0, s10
                  nop
258:              beq          tp, sp, 269f
                  blt          a6, s6, 272f
                  slli         s8, t6, 6
261:              addi         a3, a3, 919
                  xori         s2, sp, 1100
                  ori          s0, s7, -1530
264:              bne          t3, a2, 270f
                  addi         zero, t4, 394
                  slti         s9, s4, -818
                  add          s0, s2, tp
                  addi         gp, t0, -1988
269:              bne          a2, a1, 280f
270:              auipc        s2, 226937
271:              srai         tp, s0, 7
272:              beq          s0, s2, 278f
                  sub          s10, t5, s8
                  or           t5, sp, s8
                  bgeu         a6, t0, 280f
                  sltu         a4, t2, a4
                  and          s5, s10, s3
278:              blt          t4, s0, 287f
                  srli         a5, t4, 8
280:              slti         s10, a3, -1307
                  sltu         t2, t3, ra
                  bge          a1, tp, 291f
                  xor          t3, s2, s2
                  add          s5, s6, sp
                  addi         t1, s9, -1541
                  add          t1, s3, s6
287:              srl          t3, tp, a2
                  sra          tp, s8, s7
                  xor          tp, s1, t6
                  sltu         s2, a6, s8
291:              sltiu        sp, t2, -77
                  blt          t2, a7, 307f
                  addi         a7, a2, 503
                  add          t4, a0, s2
                  bne          s0, tp, 299f
                  slli         a4, t5, 12
                  andi         a5, s0, -1073
                  or           t1, t0, s5
299:              beq          s11, ra, 315f
                  ori          s2, s11, 1650
                  srai         t3, t1, 16
                  blt          a1, ra, 317f
                  andi         a5, a7, -295
                  bne          t1, t1, 323f
                  add          t1, s3, s4
                  or           t1, s5, a5
307:              srl          ra, a5, s5
                  srli         s8, gp, 0
                  addi         s8, gp, 1117
                  add          s2, a5, t0
                  auipc        s8, 3398
                  add          a0, t3, t6
                  srl          s7, t3, a2
                  srli         s7, a6, 0
315:              bne          t3, a6, 317f
                  srli         s1, s11, 22
317:              bge          s6, a2, 329f
                  auipc        s10, 379241
                  andi         a4, t4, -1752
                  sltiu        s2, sp, -161
                  srl          s2, a2, a2
                  xori         tp, zero, -778
323:              andi         s10, s9, -892
                  slti         t0, t0, 1868
                  bgeu         s9, ra, 329f
                  srai         s3, s8, 5
                  xori         t1, t5, 1612
                  ori          s11, a0, -1850
329:              bne          s3, t1, 332f
                  sll          s7, t4, s11
                  slti         a3, s8, -1979
332:              xori         sp, t3, 1485
                  or           a4, s1, s0
                  add          a3, a3, ra
                  beq          s1, s11, 351f
                  or           s11, s9, a5
                  beq          tp, s1, 342f
                  srli         s0, s5, 2
                  or           ra, s1, s8
                  lui          t1, 44201
                  slt          a6, s9, zero
342:              srl          s6, s7, a6
                  blt          s7, a7, 360f
                  sltu         a0, s5, a2
                  lui          s6, 137432
                  bne          s4, s1, 360f
                  nop
                  srl          tp, gp, t2
                  bltu         s9, s9, 356f
                  sll          sp, a3, t3
351:              lui          a0, 319409
                  bgeu         t3, s5, 356f
                  xor          s3, tp, s10
                  add          t3, tp, t6
                  xori         s0, zero, -584
356:              nop
                  slti         s3, a6, 884
                  sra          a6, s10, s2
                  slti         s11, t0, -35
360:              ori          t5, t2, 1615
                  and          s7, s4, zero
                  blt          s1, s5, 377f
                  srai         a7, s8, 7
                  slti         t0, s3, -1033
                  bltu         s5, a3, 371f
                  or           s8, a7, a0
                  bge          zero, s2, 387f
                  and          s11, t0, a3
                  xori         t4, t1, -511
                  and          a7, t5, s4
371:              bgeu         s8, t0, 376f
                  sltiu        s0, gp, 1758
                  xori         a5, t6, -37
                  sltu         a3, a7, a2
                  beq          s8, gp, 384f
376:              slti         s5, s3, 1691
377:              bge          t4, a1, 380f
                  bge          zero, s3, 393f
                  sltu         a0, a1, a0
380:              srl          s5, s10, s9
                  srl          a0, t3, t1
                  lui          t0, 460637
                  sltiu        gp, zero, 1526
384:              slt          t2, t3, s4
                  srl          s2, s5, a1
                  xori         zero, a2, 605
387:              and          t0, a5, zero
                  slti         a5, a0, -872
                  srli         a4, s3, 11
                  or           s0, s1, a3
                  bne          s9, tp, 404f
                  lui          s9, 265400
393:              xori         a6, s8, 1929
                  slti         a7, a4, -664
                  bge          s3, a2, 414f
                  bge          s1, t1, 398f
                  bge          s11, s11, 413f
398:              bltu         s4, t5, 409f
                  bgeu         a7, ra, 412f
                  nop
                  bgeu         ra, gp, 412f
                  slli         s8, a1, 9
                  nop
404:              sltu         a5, ra, t5
                  beq          s7, s3, 416f
                  xori         a0, a7, -632
                  slt          s2, a1, s3
                  andi         s9, s7, 81
409:              blt          a3, s10, 426f
                  slt          a0, a7, sp
                  lui          gp, 53696
412:              beq          t3, a2, 414f
413:              bge          s9, s5, 427f
414:              or           s3, gp, s7
                  srai         a5, s3, 16
416:              sltu         s2, t0, ra
                  and          t2, a6, s1
                  xori         t0, t5, 528
                  blt          t2, t4, 425f
                  beq          t3, s2, 429f
                  beq          s4, a4, 436f
                  xor          t4, a7, s5
                  bge          s6, zero, 434f
                  sltu         t1, ra, s3
425:              sll          t2, a3, a7
426:              slti         s0, a1, -398
427:              blt          s0, sp, 432f
                  bltu         s1, a5, 439f
429:              srai         s5, a6, 31
                  andi         t1, a4, -1501
                  slli         a5, s8, 2
432:              or           s6, a6, a2
                  srl          s11, s9, t6
434:              lui          t5, 338999
                  blt          s9, t1, 450f
436:              xor          t1, s1, tp
                  slt          t6, s3, s10
                  bgeu         t0, s11, 452f
439:              xori         s1, s10, 31
                  or           t5, a0, t6
                  blt          t1, s6, 444f
                  srl          t6, ra, t6
                  nop
444:              auipc        s7, 710878
                  auipc        a4, 665639
                  srai         a3, t4, 10
                  srl          a7, t6, a6
                  sll          t4, a6, a7
                  andi         t3, sp, 1216
450:              slt          t5, s9, t4
                  sll          t6, a6, t2
452:              add          gp, a7, s1
                  auipc        a0, 851197
                  xor          gp, a2, t4
                  beq          s1, s5, 460f
                  slti         s5, ra, -1320
                  lui          s1, 419229
                  or           a4, a4, s7
                  sra          s2, a5, ra
460:              beq          a1, t0, 476f
                  sltiu        gp, a1, -1089
                  srl          sp, s9, a2
                  bltu         t2, s7, 469f
                  auipc        t5, 246940
                  or           s7, t1, s9
                  lui          a4, 1046473
                  slli         s7, s10, 17
                  bltu         sp, t0, 477f
469:              xori         s7, t2, 1128
                  bgeu         s11, a0, 489f
                  auipc        s2, 1022373
                  xor          s6, s7, s2
                  sltiu        t2, gp, -1962
                  blt          s1, t4, 480f
                  sltu         a3, a6, tp
476:              addi         t2, s0, 842
477:              lui          ra, 437878
                  xor          s0, s9, ra
                  ori          t0, a7, 486
480:              auipc        sp, 1041202
                  slt          gp, tp, a3
                  srai         t5, s5, 17
                  sltiu        ra, s9, -413
                  sra          a0, s11, s0
                  or           s9, s6, t0
                  addi         s11, t3, 1866
                  srai         a4, a3, 20
                  nop
489:              xor          a7, a7, a7
                  sra          tp, s5, gp
                  sra          s10, a5, a3
                  sltiu        t2, zero, -1981
                  addi         s5, s3, 524
                  nop
                  srai         s3, a2, 16
                  sra          a4, a1, s6
                  slt          s1, s4, ra
                  slt          s6, s11, s9
                  sub          t1, t2, tp
                  blt          a7, tp, 511f
                  or           a0, a7, a3
                  ori          t2, s4, -823
                  srl          t0, t1, t5
                  auipc        t0, 539430
                  sra          s11, a0, a3
                  srai         t3, s1, 4
                  beq          sp, t0, 511f
                  bne          a2, s6, 510f
                  slli         a7, sp, 23
510:              srl          t0, s8, t3
511:              bge          t2, zero, 518f
                  srl          a5, t3, a3
                  slt          s6, s2, s8
                  bltu         s9, t1, 516f
                  or           gp, a3, a5
516:              bgeu         ra, s1, 532f
                  bge          a1, sp, 520f
518:              andi         a5, a1, 1593
                  lui          a4, 125758
520:              bne          ra, s9, 540f
                  sub          s6, a0, gp
                  sltiu        s6, a1, 1516
                  sra          a6, t3, ra
                  sub          ra, s11, s9
                  sltiu        a5, s0, 1074
                  and          tp, s9, s2
                  ori          t0, a5, -1044
                  slt          s7, a3, a4
                  nop
                  lui          s8, 979945
                  ori          s9, a2, -288
532:              srl          a5, tp, zero
                  slt          a3, s4, s10
                  xori         t5, s6, 1676
                  bge          a2, t3, 549f
                  sra          s6, a4, a1
                  sub          zero, a6, zero
                  auipc        t6, 334554
                  addi         t1, a5, -746
540:              blt          t6, t1, 549f
                  xori         s2, a4, -11
                  nop
                  addi         tp, t3, -1338
                  or           t0, s7, a4
                  xor          gp, s5, a4
                  sltu         t4, t2, s11
                  srl          t3, s6, a1
                  srli         s6, s11, 26
549:              sub          s9, s11, s10
                  nop
                  nop
                  sltu         gp, t6, t1
                  bltu         t6, t6, 566f
                  sltu         a6, ra, s1
                  and          s3, s11, t6
                  bltu         t2, t1, 573f
                  lui          t2, 923522
                  bltu         t3, sp, 562f
                  xori         a0, sp, -1700
                  slli         s11, a2, 1
                  sltiu        t2, s6, 395
562:              beq          s11, sp, 577f
                  bne          a3, t5, 580f
                  xor          a0, a0, t5
                  lui          t0, 451041
566:              sltiu        s10, a0, 1756
                  auipc        a5, 974264
                  andi         t1, s4, -242
                  or           a3, s0, s10
                  la           a5, sub_9
                  or           t2, t2, zero
                  andi         t4, sp, 91
                  addi         a5, a5, -368
                  bne          t5, t2, sub_7_j13 #branch to jump instr
                  add          t2, t5, a1
sub_7_j13:        jalr         t5, a5, 368 #jump sub_7 -> sub_9
                  slt          t0, t1, s5
                  sltu         zero, s3, a5
                  sltiu        t6, s8, 32
                  srl          t0, s7, s4
                  slt          ra, s3, a3
573:              andi         s9, t1, 678
                  and          t2, t2, t3
                  andi         ra, t1, 1397
                  bltu         s4, s6, 587f
577:              srai         a7, s5, 17
                  xor          s2, t4, a3
                  bgeu         t1, sp, 587f
580:              sltiu        sp, sp, -350
                  nop
                  bge          a3, s0, 587f
                  slti         s8, s1, -1558
                  srai         s8, a5, 17
                  addi         s11, t0, 1699
                  sub          s9, a6, a2
587:              srl          s5, s4, s1
                  ori          a4, tp, 1156
                  sra          a4, s5, t4
                  or           s3, s6, a5
                  add          s9, s6, s0
                  lui          s3, 53116
                  slti         zero, a3, 1508
                  lw           t5, 4(a2)
                  addi         a2, a2, 28
                  sub          tp, a5, t0
                  lui          a4, 764867
                  and          s8, a5, s7
                  srli         a0, zero, 17
811:              addi x5, x30, 1
811:              jalr x5, x5, 0
sub_5:            nop
                  addi         a2, a2, -64
                  xor          s11, a0, s9
                  and          sp, t2, zero
                  slt          a4, s7, a0
                  lui          t0, 65020
                  sw           t5, 4(a2)
                  sra          t0, a3, s10
                  or           t0, t4, t3
                  auipc        tp, 474359
                  la           s9, sub_6
                  auipc        sp, 998383
                  addi         s9, s9, -303
                  slti         t4, t5, 1250
                  srl          t2, s1, sp
                  sub          sp, s2, zero
                  sra          tp, ra, s4
                  slti         t5, a6, 144
                  add          a5, a2, gp
sub_5_j8:         jalr         t5, s9, 303 #jump sub_5 -> sub_6
                  ori          t1, a7, 905
                  and          s10, a2, sp
                  ori          t6, s10, 1900
                  blt          ra, gp, sub_5_j9 #branch to jump instr
                  nop
                  srli         t2, s11, 10
                  sll          s8, t1, a1
sub_5_j9:         jal          t5, sub_6 #jump sub_5 -> sub_6
                  srai         a5, t2, 6
                  beq          s2, t3, 6f
                  slli         a4, a7, 1
                  srai         s7, t4, 2
                  xor          a7, a5, t1
                  srli         t2, a6, 4
6:                addi         sp, a1, -436
                  lui          s5, 397628
                  or           gp, a5, t6
                  add          t3, s11, s1
                  or           t4, t4, t4
                  sra          a0, sp, s1
                  sub          ra, ra, a5
                  srl          t3, s11, s10
                  andi         s7, a2, -497
                  lui          t6, 263665
                  sltiu        s2, t2, -2010
                  sub          a5, t4, s6
                  sub          s5, zero, s9
                  sltu         s3, s8, s0
                  sltu         t6, zero, s0
                  blt          s8, s9, 22f
22:               srli         zero, t5, 6
                  bgeu         t6, s9, 28f
                  auipc        s2, 184438
                  sra          a6, s3, a1
                  slli         a6, a0, 4
                  srli         s3, a2, 14
28:               addi         t0, s6, 958
                  srl          s11, a1, a7
                  srl          a3, sp, s6
                  bgeu         t0, tp, 41f
                  bne          s6, t5, 47f
                  bge          s2, s7, 42f
                  bne          t0, a5, 35f
35:               bge          a0, s9, 47f
                  addi         a5, s1, 542
                  sltiu        s5, ra, -1116
                  nop
                  sltu         s0, s7, t0
                  sltiu        t3, tp, 488
41:               sll          a0, t0, t6
42:               andi         s7, s10, 1524
                  sra          t4, a3, t3
                  bltu         s10, a5, 47f
                  sll          s11, a5, zero
                  nop
47:               xori         tp, s7, -964
                  lw           t5, 4(a2)
                  add          s8, s7, a1
                  srli         s6, t1, 10
                  addi         t1, t2, 1364
                  srai         t2, t3, 13
                  srl          sp, a5, ra
                  addi         a2, a2, 64
                  auipc        t3, 253710
                  and          s10, s9, a5
                  xor          s8, s1, sp
86:               addi x26, x30, 0
86:               jalr x26, x26, 0
sub_6:            xori         s5, s1, -440
                  auipc        gp, 355761
                  addi         a2, a2, -28
                  ori          a0, sp, 1848
                  auipc        a7, 567448
                  andi         a0, tp, 745
                  sltiu        sp, ra, -95
                  ori          a7, s6, -216
                  sw           t5, 4(a2)
                  ori          t0, a2, -34
                  and          sp, s8, ra
                  sltu         s2, s6, t2
                  la           a3, region_0+405 #start riscv_load_store_rand_instr_stream_3
                  lb           s1, -44(a3)
                  xori         a4, s1, -1910
                  or           s7, a2, s9
                  lui          t2, 667734
                  lb           a0, 21(a3)
                  lh           s7, 11(a3)
                  nop
                  lhu          a7, -39(a3)
                  lb           sp, -54(a3)
                  lhu          a6, -47(a3)
                  srl          t6, a3, t6
                  lw           s0, -45(a3)
                  lbu          s7, 29(a3)
                  addi         s6, t2, -1070
                  sub          s9, a2, t6
                  sb           a7, 31(a3)
                  sb           ra, 27(a3)
                  slti         t0, gp, -296
                  xor          a4, a0, zero
                  slt          ra, ra, s9
                  sltu         s9, a1, gp
                  xor          gp, a0, a3
                  lw           t0, 7(a3)
                  sra          zero, sp, a1
                  lbu          s3, -39(a3)
                  auipc        t2, 790315
                  lb           t6, -39(a3)
                  and          sp, ra, s5
                  add          s3, t5, t4
                  xori         a6, s2, -1954
                  srai         t4, tp, 0
                  addi         a4, a3, 1458
                  sltu         a5, s0, t2
                  slli         zero, s6, 16
                  lbu          t5, 62(a3) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1240 #start riscv_load_store_rand_instr_stream_7
                  lh           a5, -10(sp)
                  sra          a7, a2, s3
                  sltu         t4, a5, s11
                  sh           s10, 16(sp)
                  srai         s10, s2, 26
                  add          gp, s4, a2
                  addi         gp, a6, -673
                  sb           s9, 1(sp)
                  sltiu        a7, a3, 183
                  or           t4, a4, t0
                  sub          a5, t4, s6
                  lb           a5, 16(sp)
                  lui          s5, 87338
                  sll          a5, s9, s6
                  addi         s7, a4, -1762
                  andi         a0, s2, 1054
                  lb           t0, -5(sp)
                  sub          a6, t3, a7
                  ori          s6, s0, 1764
                  or           zero, s2, s10
                  lbu          tp, 9(sp)
                  sw           a1, 0(sp)
                  srli         s8, s3, 4
                  lui          t6, 645586
                  slt          s2, gp, s0
                  nop
                  sb           ra, -13(sp)
                  ori          s7, ra, -409
                  auipc        a0, 18561
                  sll          t3, s6, s10
                  xori         gp, t3, -518
                  lbu          t0, 6(sp)
                  slli         a0, tp, 22
                  lb           gp, 11(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+559 #start riscv_load_store_rand_instr_stream_5
                  lb           s9, 1(sp)
                  sh           a0, -21(sp)
                  slti         s10, s11, -1
                  andi         t4, gp, 230
                  andi         tp, s11, 1060
                  andi         s11, sp, 2003
                  andi         s11, t3, -2004
                  lb           a5, -14(sp)
                  sh           s1, -31(sp)
                  add          gp, a6, ra
                  addi         t3, t0, -942
                  and          t6, a4, t3
                  add          s5, t0, t6
                  sltu         t4, s10, t0
                  srli         s8, a2, 1
                  sra          t6, zero, a5
                  add          a4, a5, a1
                  slti         s5, a5, -1890
                  slli         s11, s5, 11
                  lb           s5, 32(sp)
                  lb           ra, 40(sp)
                  sb           s4, -32(sp)
                  slt          t1, a3, t1
                  lhu          a5, -57(sp)
                  lb           s10, 3(sp)
                  lui          s8, 559732
                  xor          a7, s7, sp
                  lh           s11, 9(sp)
                  xor          s1, s6, t4
                  slt          s0, s9, t6
                  or           s3, s3, t6
                  lbu          s3, 32(sp)
                  sub          s8, s0, a1
                  lw           a5, 41(sp)
                  sll          s10, a6, a1
                  lbu          gp, 41(sp)
                  sb           s0, 34(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s0, region_0+126 #start riscv_load_store_rand_instr_stream_6
                  sh           t1, 156(s0)
                  lh           t1, -88(s0)
                  xori         t3, s5, 549
                  slli         a6, s10, 8
                  lb           a3, -93(s0)
                  lbu          zero, -95(s0)
                  lbu          s10, 121(s0)
                  nop
                  lb           a0, 97(s0)
                  lui          a3, 254639
                  srai         t1, s8, 6
                  auipc        s2, 778750
                  lh           t3, 62(s0)
                  lbu          s5, 199(s0)
                  srl          t1, a1, gp
                  slli         a3, s5, 31
                  xor          t5, s11, gp
                  slli         sp, s7, 9
                  ori          t1, sp, 1469
                  lbu          a3, 232(s0)
                  ori          a4, s5, -621
                  lbu          gp, 242(s0)
                  srl          s10, t3, a4
                  or           s2, s0, s0
                  lb           s1, 143(s0) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+179 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 119(sp)
                  lbu          t0, -30(sp)
                  auipc        a7, 727978
                  sltiu        a0, t3, 1251
                  andi         a0, a1, 1225
                  lb           a3, 1548(sp)
                  lb           tp, -26(sp)
                  srli         t1, sp, 8
                  lbu          t4, 90(sp)
                  sw           a4, 609(sp)
                  lh           ra, 1007(sp)
                  lb           a5, 1629(sp)
                  sb           t1, 285(sp)
                  slt          s6, t4, s5
                  xori         a6, sp, 360
                  lb           a4, 1763(sp)
                  lh           t6, 443(sp)
                  sltiu        a6, s7, 27
                  sb           t3, 676(sp)
                  sh           s2, 1605(sp)
                  addi         s7, t0, -877
                  sltiu        s10, zero, -1416
                  lb           tp, -30(sp)
                  sb           s9, 1315(sp)
                  lw           s9, 1309(sp)
                  sw           s10, 1537(sp)
                  sw           a3, 777(sp)
                  lh           s8, 779(sp)
                  ori          t1, t1, 198
                  sh           a5, 349(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         zero, s1, s2
                  srai         s10, ra, 3
                  and          a0, s7, t6
                  addi         s3, s4, 579
                  andi         t5, ra, -283
                  srai         t4, s10, 3
                  slti         s11, s4, -1228
                  bgeu         s0, t3, 15f
                  blt          t5, s9, 23f
                  bne          s2, s3, 23f
                  addi         a3, a2, 1305
                  bgeu         t1, t3, 20f
                  sltiu        s5, zero, 958
                  xori         t4, s7, 1171
                  addi         t2, s1, -534
15:               auipc        s0, 479015
                  srai         t4, tp, 24
                  andi         ra, s1, 1469
                  xor          t0, s11, s10
                  beq          a3, a7, 20f
20:               auipc        t1, 496910
                  xor          a0, a4, a0
                  and          t1, s0, t0
23:               bge          a7, s4, 31f
                  sra          t2, s4, tp
                  xor          s11, s4, gp
                  sub          a3, s9, t6
                  sub          s7, t5, a5
                  sltu         sp, s3, s4
                  sub          s3, a7, s7
                  sltu         t0, a0, a1
31:               sll          s10, t0, s10
                  sll          a5, s8, a4
                  bgeu         t6, s2, 49f
                  srl          t5, s6, zero
                  sra          gp, a5, a4
                  andi         s5, t5, 732
                  andi         t3, s2, 964
                  slt          s9, sp, zero
                  sra          a7, s1, a0
                  xor          a7, a3, sp
                  sltiu        s1, t2, 585
                  auipc        s10, 958693
                  sll          t3, tp, s2
                  sub          s3, s5, s3
                  bne          t4, a5, 51f
                  or           a5, s1, s10
                  sub          s3, t6, a3
                  sll          s8, t6, s0
49:               bltu         a5, t0, 63f
                  addi         s7, gp, 1752
51:               or           a4, gp, t0
                  beq          zero, gp, 53f
53:               bltu         a4, sp, 60f
                  srai         s7, a2, 1
                  auipc        a5, 379871
                  ori          t6, t0, 893
                  beq          a2, tp, 68f
                  xor          t4, s0, zero
                  slti         t1, ra, -312
60:               or           s6, zero, t4
                  lui          t5, 716928
                  slti         s1, gp, -543
63:               add          s10, a7, t3
                  xori         s10, t2, 877
                  and          s1, zero, s3
                  lui          t6, 16494
                  sltiu        sp, t4, 477
68:               blt          ra, t1, 86f
                  srai         s1, a5, 30
                  beq          s7, ra, 80f
                  xor          a5, s2, ra
                  ori          ra, a3, -1877
                  xor          s9, s7, t4
                  bne          t5, gp, 90f
                  slt          t1, a7, t1
                  sub          a7, t6, t3
                  slt          t1, t4, s11
                  slli         zero, s1, 29
                  bne          a0, s8, 81f
80:               andi         s7, s4, -887
81:               blt          ra, s1, 82f
82:               and          t3, zero, a5
                  xor          t2, a6, a1
                  slti         tp, t6, 1871
                  sra          ra, s5, s6
86:               add          s11, s0, s5
                  addi         s1, s0, 285
                  bne          s11, t0, 100f
                  sub          a7, s1, t1
90:               ori          sp, s2, 210
                  and          s11, s8, s10
                  addi         s6, a3, 110
                  auipc        s6, 705403
                  sltu         t0, a1, a6
                  sltiu        a7, a7, -705
                  andi         a0, s10, -237
                  lui          t4, 389551
                  ori          s8, t5, -1060
                  xor          s8, ra, sp
100:              sra          s11, s1, s7
                  add          t1, t1, tp
                  srl          s5, t5, a3
                  blt          a6, s6, 115f
                  sub          zero, a0, ra
                  beq          s4, s2, 121f
                  addi         s10, t4, -480
                  sub          t1, a2, sp
                  add          t1, a1, s4
                  bne          s1, s11, 114f
                  addi         a3, t2, 1283
                  beq          a3, a0, 126f
                  lui          t3, 646547
                  or           a0, a1, t1
114:              sra          t4, s9, zero
115:              bne          t2, s6, 130f
                  sll          a4, t5, s5
                  beq          t1, zero, 134f
                  sll          s7, t3, s8
                  xori         a4, a5, -966
                  bgeu         a0, a1, 122f
121:              sub          t1, t6, s0
122:              add          a0, s0, sp
                  srli         s1, s11, 20
                  sltu         zero, t6, s9
                  sra          a6, a5, a7
126:              beq          s10, t0, 137f
                  slti         t4, t5, 1006
                  ori          a3, s9, 926
                  bltu         ra, s8, 131f
130:              and          gp, s9, ra
131:              xori         a5, t5, 1649
                  srai         s11, t1, 6
                  add          s11, s11, zero
134:              bne          sp, s8, 154f
                  srai         s0, ra, 2
                  srai         t1, a6, 30
137:              addi         t5, t2, 390
                  addi         sp, a2, -1040
                  sra          s9, zero, t1
                  srl          ra, t4, s10
                  auipc        s6, 248651
                  sltu         s9, a5, s5
                  auipc        a6, 27156
                  blt          a5, gp, 153f
                  bne          a5, s4, 159f
                  slt          t5, s0, t0
                  beq          s1, s7, 156f
                  bgeu         a1, s2, 162f
                  bgeu         s10, s9, 165f
                  sra          a7, s1, s5
                  sll          a4, a4, t4
                  sll          t4, s5, a0
153:              xor          s2, s0, s11
154:              beq          a4, t6, 162f
                  xor          sp, a7, s1
156:              auipc        s1, 26504
                  or           a7, t2, s8
                  sltiu        t5, tp, 1452
159:              slt          tp, ra, t5
                  beq          s5, s2, 180f
                  and          t4, sp, sp
162:              sra          gp, s1, a7
                  sub          s9, a4, s4
                  bne          s10, s11, 165f
165:              sltiu        s0, tp, -362
                  and          a5, s8, a3
                  lui          s9, 922348
                  beq          a1, t0, 183f
                  srai         ra, t4, 2
                  addi         s11, a1, -1018
                  blt          zero, a7, 177f
                  srli         ra, s11, 18
                  srai         t4, a5, 17
                  bne          sp, t1, 185f
                  bne          zero, t1, 177f
                  sltiu        t5, t2, 746
177:              ori          t2, s7, -320
                  slli         s1, s1, 0
                  sll          sp, s0, ra
180:              xor          a7, s3, s11
                  sra          a7, s9, s3
                  srli         s3, s6, 15
183:              beq          a2, sp, 193f
                  and          s2, t3, gp
185:              bne          t1, t0, 192f
                  andi         s8, s10, -1423
                  sltu         gp, s4, s8
                  or           s6, s5, s9
                  or           a5, t6, zero
                  xor          s2, a7, t5
                  andi         t1, sp, 1742
192:              auipc        gp, 542750
193:              sra          a7, s10, a7
                  xori         a7, s2, 341
                  srai         s5, s0, 2
                  beq          a7, gp, 197f
197:              sll          t3, tp, s10
                  add          s8, t3, t1
                  srai         a4, s0, 25
                  ori          gp, s8, 1362
                  srli         a3, tp, 0
                  ori          a0, t4, -1698
                  srl          tp, s7, t2
                  ori          t5, sp, 1908
                  srai         t6, s7, 17
                  srli         t5, s7, 23
                  slli         gp, s8, 8
                  srl          t5, s0, a0
                  xori         zero, s6, -1529
                  xor          s7, a2, a1
                  bge          sp, t4, 228f
                  sra          s5, t6, ra
                  blt          s2, s6, 225f
                  bge          t1, a0, 223f
                  bge          s7, sp, 223f
                  ori          s9, t3, -1590
                  add          a3, s11, a7
                  andi         s9, s3, 197
                  add          t6, t0, s8
                  addi         s2, s0, -1311
                  bne          s4, sp, 222f
222:              beq          s4, t3, 237f
223:              bgeu         a1, s0, 238f
                  ori          t4, s10, -40
225:              addi         tp, tp, -374
                  blt          t6, a1, 231f
                  sltiu        s9, t4, 2040
228:              add          s8, sp, a7
                  bgeu         s3, gp, 241f
                  sltu         s11, s7, t4
231:              srli         sp, s5, 5
                  lui          s10, 623976
                  lui          s5, 488814
                  xori         t2, s10, -1464
                  andi         s9, s3, -583
                  or           s10, s2, tp
237:              auipc        a3, 197556
238:              andi         s8, s2, -569
                  blt          s5, a7, 253f
                  sub          s6, a6, a0
241:              lui          t5, 526262
                  beq          s7, a2, 244f
                  sltu         s10, s10, a3
244:              addi         s10, t3, 1519
                  sra          t2, a4, s9
                  or           s0, t5, a1
                  auipc        t4, 190716
                  ori          sp, s9, 256
                  lui          s0, 578249
                  and          t4, a0, t2
                  beq          a6, s8, 262f
                  sll          zero, a1, a7
253:              sra          t1, ra, t2
                  and          t6, t6, s0
                  slli         s1, t3, 30
                  bltu         s0, s7, 272f
                  bge          t6, s10, 273f
                  sra          s8, sp, gp
                  slli         a5, a7, 5
                  bltu         sp, sp, 278f
                  sll          s10, a7, s6
262:              slti         gp, a1, 850
                  srl          s9, s0, a0
                  add          s3, a0, s2
                  slti         s8, a5, -436
                  slti         s6, gp, 1320
                  and          a0, s11, a7
                  sub          a6, s8, a2
                  sltu         s6, t0, t1
                  andi         s8, a3, -626
                  ori          t2, s4, 76
272:              nop
273:              slli         t0, t1, 29
                  addi         a3, a0, -380
                  sub          s5, ra, zero
                  xor          s3, a1, t3
                  and          a0, a6, s0
278:              sltu         t2, a1, ra
                  slli         t4, sp, 28
                  sub          t4, s3, t5
                  ori          a6, s7, 1313
                  blt          t4, s3, 296f
                  andi         t3, tp, -37
                  addi         sp, t4, 1981
                  slt          a4, a3, s7
                  ori          tp, s7, 1640
                  auipc        a5, 403950
                  sltiu        s7, a5, -1530
                  or           s2, a3, s3
                  addi         a6, t2, -1642
                  beq          tp, s4, 293f
                  bgeu         gp, s4, 293f
293:              sra          s11, sp, t0
                  bge          t1, t5, 305f
                  nop
296:              auipc        t4, 881283
                  srai         s5, s2, 7
                  bltu         ra, ra, 306f
                  sltu         t1, zero, tp
                  sub          t3, s9, s5
                  sub          a7, t4, t1
                  beq          t1, s6, 314f
                  lui          t6, 31368
                  bgeu         s0, t0, 324f
305:              srli         a0, s9, 0
306:              or           s2, t3, a6
                  and          sp, tp, t6
                  bge          a5, s3, 323f
                  slli         a7, s0, 6
                  add          s11, a1, t5
                  nop
                  add          s9, ra, t0
                  addi         a3, s2, 1672
314:              addi         a3, t2, 1826
                  nop
                  xori         a0, zero, -294
                  slti         a7, s9, -255
                  srai         t1, a7, 19
                  and          s6, s5, a6
                  srl          t3, s11, t4
                  and          zero, a5, t6
                  addi         t0, tp, 789
323:              srai         sp, t4, 8
324:              slt          s9, s1, t6
                  addi         ra, s8, 1712
                  sub          a6, a2, a5
                  slli         s2, zero, 25
                  bne          s2, s2, 342f
                  bgeu         a6, a0, 343f
                  sub          s10, s1, a6
                  slli         sp, ra, 5
                  sltu         gp, a2, t0
                  blt          a3, t4, 347f
                  bne          a5, s8, 352f
                  xor          a0, a4, a5
                  bge          a5, a4, 343f
                  bltu         s3, t4, 342f
                  slt          a6, a7, s4
                  slti         tp, s8, 453
                  sltiu        s6, a5, -1648
                  slli         s0, t3, 23
342:              blt          a1, s1, 358f
343:              srli         a4, tp, 5
                  addi         a5, t4, 501
                  nop
                  lui          s3, 66391
347:              beq          t6, ra, 359f
                  bne          a2, a6, 364f
                  slli         t6, t0, 10
                  beq          a1, t2, 359f
                  or           s1, s1, t5
352:              slli         s1, s10, 26
                  sll          gp, tp, s2
                  xor          a0, a5, s10
                  auipc        s0, 534174
                  andi         s5, s6, 548
                  slli         t5, gp, 15
358:              lui          s0, 779668
359:              add          t0, a0, t2
                  srli         a4, a6, 9
                  auipc        s8, 56488
                  bgeu         a5, a3, 378f
                  bltu         s2, tp, 365f
364:              slli         s10, s11, 13
365:              add          s11, t4, t4
                  sltiu        t3, s0, 2029
                  or           s0, s8, t6
                  and          s2, a2, s3
                  bne          sp, s0, 371f
                  addi         s2, t5, 83
371:              beq          t1, s2, 388f
                  andi         t1, s7, 265
                  srl          t2, s1, t0
                  lui          t2, 319697
                  slt          a5, gp, a4
                  slti         s8, s1, 1039
                  add          s6, a2, a7
378:              andi         s3, sp, -331
                  srai         a7, s7, 15
                  bltu         t2, s3, 389f
                  blt          t3, t3, 382f
382:              srl          t5, s11, s2
                  sltu         gp, a3, ra
                  ori          s3, s6, 769
                  srl          s8, t6, t5
                  sra          t2, zero, sp
                  or           s10, s4, s5
388:              xor          t4, sp, s5
389:              xor          t1, t2, s11
                  auipc        a0, 253162
                  or           s11, t2, t5
                  srli         s9, a7, 8
                  blt          s4, s10, 401f
                  srai         a4, a0, 23
                  xori         a6, s4, 534
                  lui          s11, 291905
                  slt          ra, s4, zero
                  blt          t1, sp, 399f
399:              srai         zero, t3, 6
                  bne          s11, s7, 406f
401:              sra          t5, gp, s2
                  sra          a4, s6, tp
                  xori         a3, s8, -466
                  slt          t5, t0, gp
                  blt          a6, t0, 407f
406:              sra          t5, a0, a7
407:              beq          a0, a3, 417f
                  and          s9, gp, s6
                  lui          gp, 131196
                  ori          t0, s7, 971
                  slti         s11, a2, -124
                  addi         a7, t5, 361
                  bge          s2, t2, 428f
                  auipc        s10, 166792
                  srai         ra, t2, 20
                  addi         s6, t3, -348
417:              auipc        ra, 883256
                  bltu         s4, s1, 429f
                  slli         a3, s2, 19
                  sltiu        t5, a3, -1279
                  sra          a3, zero, tp
                  sltiu        s0, a2, 1306
                  or           s5, t0, a3
                  nop
                  sra          t5, s5, t1
                  slli         a5, a5, 13
                  and          s7, a5, s0
428:              ori          t0, sp, -1190
429:              sll          a5, a5, s2
                  sra          gp, a1, s11
                  addi         a4, a3, 372
                  srai         t5, s0, 19
                  nop
                  sll          t3, s1, s3
                  beq          a6, s2, 450f
                  sub          s0, s8, a6
                  bge          gp, t6, 451f
                  srli         s1, ra, 16
                  beq          t2, ra, 444f
                  sltu         gp, t3, s0
                  sub          t4, s2, t4
                  xori         s11, s4, -1469
                  beq          a2, a1, 458f
444:              xori         a6, a4, 993
                  sra          tp, tp, ra
                  sltu         t5, t3, t5
                  sra          t5, a3, t2
                  slt          s7, t2, t1
                  sll          a7, a3, a7
450:              bge          s3, a4, 452f
451:              srli         s7, a0, 13
452:              sltu         s6, t2, s7
                  xor          s2, s0, s0
                  bgeu         zero, s2, 462f
                  slli         gp, a7, 15
                  nop
                  srl          tp, t2, t6
458:              sltiu        sp, s0, 2016
                  srli         t6, sp, 29
                  sltiu        t5, t6, -935
                  sltu         sp, a3, a6
462:              srl          a0, sp, a6
                  beq          a0, s6, 469f
                  beq          zero, s11, 475f
                  nop
                  bgeu         s8, a0, 476f
                  slti         zero, a4, 575
                  bge          s1, s4, 485f
469:              sll          a5, s9, a0
                  addi         tp, a5, 1053
                  bltu         a0, a5, 485f
                  srl          s3, s3, t5
                  slli         a6, a7, 3
                  and          gp, s6, s11
475:              ori          t2, t4, -1547
476:              slt          s11, s4, tp
                  slti         zero, ra, -2003
                  blt          s4, ra, 496f
                  bne          a5, s2, 481f
                  bltu         a2, a3, 494f
481:              sltu         t1, a0, t2
                  blt          tp, a5, 498f
                  sll          s5, t3, t0
                  nop
485:              slli         t0, t4, 13
                  xori         t2, s8, -2016
                  blt          s8, s10, 503f
                  slli         t0, a2, 14
                  auipc        s11, 108274
                  lui          t1, 422899
                  sub          s8, t3, sp
                  slli         t2, zero, 22
                  and          s5, s10, a0
494:              or           s0, s11, ra
                  ori          s9, a5, 211
496:              xori         s2, s6, 1616
                  andi         t6, a2, -618
498:              srai         s5, s0, 8
                  nop
                  andi         s0, s9, -1756
                  srai         s3, a1, 22
                  sub          t1, s9, ra
503:              bne          gp, s11, 518f
                  andi         t2, s2, 1283
                  ori          t0, s9, -1150
                  beq          t1, s0, 508f
                  srl          s11, tp, tp
508:              and          a3, a0, s8
                  sra          a4, a5, s9
                  srl          s1, s7, a3
                  sll          tp, s5, a4
                  beq          s4, t3, 532f
                  srli         gp, s8, 30
                  xor          s2, tp, a6
                  sltiu        tp, a7, -913
                  slti         s2, a5, 2040
                  sltu         s11, gp, s5
518:              auipc        t1, 568924
                  srai         s0, t6, 2
                  bge          a1, a4, 528f
                  xori         t4, t6, 1279
                  slti         a0, t5, 843
                  auipc        s8, 156213
                  ori          s5, t1, -470
                  xori         s6, a1, -1411
                  sll          gp, t0, t6
                  sub          zero, a7, t1
528:              andi         s8, s0, 1319
                  sll          s0, t2, s6
                  andi         sp, a2, -798
                  bge          zero, s3, 532f
532:              or           a6, a5, a7
                  and          t3, t3, t6
                  bne          s0, t6, 543f
                  and          t3, zero, sp
                  sltu         s7, s2, s6
                  slti         gp, a1, -1740
                  sltiu        t2, s5, 727
                  slti         zero, s0, -95
                  bgeu         gp, ra, 555f
                  or           sp, t6, s10
                  sub          s11, s5, t0
543:              sra          sp, t4, s3
                  bltu         s9, s5, 555f
                  slt          s9, ra, sp
                  and          t4, t1, a3
                  xor          a3, s6, s8
                  lui          t6, 233153
                  beq          t5, t2, 550f
550:              srl          sp, t2, s4
                  sltiu        s3, s0, 1094
                  srli         a6, s4, 4
                  ori          s8, a6, 570
                  bltu         t0, t1, 555f
555:              addi         s11, t4, -89
                  bge          t1, a2, 565f
                  srai         t3, t6, 25
                  lui          t3, 825171
                  bne          s6, a4, 571f
                  bltu         a6, s6, 572f
                  bne          zero, a7, 577f
                  add          sp, s6, ra
                  ori          a5, t1, 643
                  srli         ra, s8, 8
565:              slli         tp, s6, 20
                  sltu         t1, ra, s4
                  addi         s3, t5, 1009
                  lui          s9, 40375
                  beq          s5, t4, 576f
                  slti         s7, s1, -1106
571:              auipc        s0, 107387
572:              andi         a4, zero, 43
                  bge          s11, s10, 589f
                  xor          ra, a7, zero
                  sll          zero, a1, s5
576:              lui          s3, 1030069
577:              sll          s6, t2, t0
                  add          s8, a4, s1
                  xori         t6, a4, -297
                  sub          a5, sp, t2
                  lui          a0, 943306
                  srli         s0, t1, 24
                  sltu         s6, s2, a7
                  srl          a3, s2, s9
                  blt          t3, t2, 590f
                  bge          tp, s5, 593f
                  addi         t1, t3, 1259
                  bltu         a7, s7, 605f
589:              add          a3, s6, zero
590:              nop
                  add          s10, a6, s1
                  srl          s3, t4, s3
593:              auipc        s2, 213871
                  ori          s8, t4, 369
                  srl          a4, tp, t2
                  sra          s3, s10, s11
                  add          sp, ra, s10
                  lui          zero, 779844
                  nop
                  addi         s9, s6, -729
                  addi         t6, t5, 1692
                  bge          t1, t4, 610f
                  srl          s9, s8, s2
                  srai         s3, ra, 26
605:              bge          s4, a1, 619f
                  andi         a3, s6, 761
                  srai         sp, s0, 28
                  bltu         s5, a6, 623f
                  slt          s6, s7, s7
610:              bge          tp, a7, 612f
                  xor          t0, a2, a5
612:              ori          t0, s9, 1829
                  bne          t1, t2, 615f
                  addi         s0, a7, 883
615:              srli         s7, s6, 11
                  xor          a7, t1, s7
                  sltu         sp, s4, gp
                  andi         t4, s5, -153
619:              bge          s1, s0, 635f
                  la           a0, region_1+1543 #start riscv_load_store_rand_instr_stream_1
                  lb           gp, 16(a0)
                  lh           a6, 3(a0)
                  lb           s8, 2(a0)
                  lbu          t0, -16(a0)
                  xori         t4, t0, -934
                  lbu          gp, 14(a0)
                  lhu          t0, -13(a0)
                  addi         a6, a1, -1606
                  sltiu        s11, s9, -1031
                  slli         a3, tp, 10
                  sll          t0, a0, a0
                  ori          s5, t1, 1616
                  sb           a3, -8(a0)
                  add          ra, t1, s1
                  xor          s7, s0, ra
                  xor          t1, t1, zero
                  sltiu        gp, t6, -1178
                  xor          s0, a6, s6
                  lw           s7, 1(a0)
                  sb           t3, -6(a0)
                  ori          t4, a7, 947
                  slti         s0, s10, 1376
                  nop
                  sb           s1, -2(a0)
                  addi         ra, sp, -2025
                  sw           a5, 9(a0)
                  sb           s3, 11(a0)
                  lhu          a4, -11(a0) #end riscv_load_store_rand_instr_stream_1
                  bgeu         s4, t1, 621f
621:              and          ra, s0, s6
                  sra          t4, a0, t4
623:              and          t5, tp, s8
                  bltu         a5, a0, 635f
                  nop
                  beq          t0, t1, 641f
                  and          s9, tp, a6
                  andi         a5, s4, -1869
                  srai         t0, s10, 17
                  bge          t5, s8, 631f
631:              sra          s5, a5, s5
                  xor          s0, s10, t2
                  bgeu         t1, t4, 634f
634:              sra          tp, a7, t1
635:              srli         a6, a4, 5
                  sltu         s0, s3, s7
                  bge          a1, a3, 653f
                  addi         s2, a6, 1830
                  bltu         t0, t2, 641f
                  bltu         ra, t3, 654f
641:              srli         t0, a4, 4
                  bne          tp, a7, 660f
                  slli         s0, s6, 26
                  add          s11, s3, s10
                  beq          s5, a0, 653f
                  srli         a4, a6, 1
                  beq          t4, a1, 659f
                  nop
                  addi         gp, a3, 51
                  or           gp, t0, tp
                  sll          ra, s2, t1
                  sub          s8, a3, zero
653:              srai         sp, s6, 3
654:              srli         s0, a4, 23
                  bge          a2, t1, 664f
                  srai         ra, a3, 29
                  blt          s9, a1, 668f
                  xor          t4, t4, ra
659:              bgeu         s10, s7, 679f
660:              bge          s9, s1, 666f
                  addi         zero, s2, -402
                  slli         s2, a4, 11
                  bge          sp, s8, 677f
664:              blt          gp, t6, 673f
                  xor          ra, s10, t2
666:              slti         a0, t2, 1981
                  auipc        t0, 801489
668:              and          s6, s7, sp
                  slti         t2, s7, -1690
                  nop
                  add          t4, ra, a5
                  blt          s5, t1, 682f
673:              slt          t4, s3, s9
                  and          s5, t6, a1
                  sra          s8, s4, s0
                  add          a6, a2, s7
677:              sra          s7, t5, s2
                  sub          s8, a5, gp
679:              srli         s5, t2, 30
                  srl          s9, s10, a1
                  xori         s6, tp, 1812
682:              beq          t0, s11, 697f
                  srl          a4, a3, tp
                  or           t0, t3, s2
                  addi         s6, tp, -1468
                  slt          s9, s4, s6
                  sltiu        ra, t4, 398
                  bltu         s9, a1, 700f
                  blt          s4, a0, 694f
                  srai         a3, s4, 11
                  xori         a6, a5, 614
                  sll          s0, t4, a1
                  and          s10, s4, a2
694:              xor          t0, a1, tp
                  sll          zero, s2, s5
                  add          gp, a3, s8
697:              sll          s6, s7, s4
                  sltu         s5, s2, s10
                  bne          t6, t0, 711f
700:              ori          t6, t6, -2022
                  andi         t2, a5, -1242
                  nop
                  xor          s8, t2, s7
                  sub          s2, t6, t1
                  ori          a3, s8, -1559
                  slti         a5, s10, 1926
                  srli         ra, s4, 3
                  sltu         a6, tp, a1
                  sltu         s3, a2, s9
                  bgeu         t6, s6, 711f
711:              andi         t1, a5, -1704
                  srl          ra, s6, t2
                  addi         s3, a7, -804
                  and          t4, zero, a1
                  sub          s8, sp, t5
                  and          s9, t6, s3
                  beq          s1, s8, 724f
                  sra          sp, s11, zero
                  blt          t6, zero, 733f
                  slli         s5, a4, 11
                  addi         t1, gp, -1145
                  blt          t1, a2, 742f
                  bne          t2, s8, 735f
724:              sll          s5, s11, s10
                  sub          a4, s11, a6
                  auipc        a7, 295500
                  slt          gp, s5, a1
                  slli         t1, s8, 4
                  auipc        s2, 437908
                  sub          s3, a6, s9
                  sll          s10, ra, s6
                  bne          t0, a5, 749f
733:              or           s3, zero, t4
                  slt          s0, sp, a3
735:              or           s1, s1, t5
                  xori         zero, s7, -304
                  xor          a0, a1, t4
                  srli         s5, t6, 19
                  bgeu         sp, a1, 757f
                  bltu         a5, s4, 755f
                  slt          s3, a0, s11
742:              beq          s9, a2, 744f
                  bge          a6, a3, 752f
744:              sll          s1, a2, s11
                  bge          s0, tp, 760f
                  sltu         gp, a0, gp
                  lui          a0, 1023548
                  xori         zero, a2, 1847
749:              blt          t0, a1, 755f
                  srli         gp, t5, 10
                  blt          t0, a6, 765f
752:              or           t1, a7, t3
                  add          s5, t4, a5
                  sll          s5, a6, t0
755:              sll          t4, s2, a5
                  slt          a6, t6, s0
757:              sltiu        t0, a6, 1144
                  bltu         s9, a2, 774f
                  sra          tp, a0, s8
760:              srl          s1, t5, t0
                  sll          a0, s8, s4
                  slti         a5, s4, 2044
                  lui          zero, 34229
                  slti         t1, t4, 1818
765:              bne          s5, a2, 776f
                  add          s7, t1, s1
                  xori         t4, s6, -390
                  add          t0, s7, t1
                  srl          s5, t6, s8
                  xori         s7, s8, 1518
                  xor          s7, t1, a4
                  andi         t1, t1, -283
                  sltu         t6, t1, s4
774:              sll          a3, a1, s4
                  andi         t6, s7, 1255
776:              bgeu         s2, sp, 778f
                  addi         a0, t4, -315
778:              blt          s2, t6, 794f
                  sra          a3, a4, t0
                  lui          t6, 784901
                  slti         tp, gp, 367
                  sll          s9, a1, t2
                  sll          t3, a3, s1
                  lui          t0, 173677
                  and          a0, a7, t5
                  srai         t5, t1, 18
                  blt          a5, t3, 795f
                  add          a7, s2, t5
                  or           t1, s6, a2
                  slti         a0, zero, -1320
                  bltu         s11, t2, 799f
                  nop
                  slli         s9, s3, 4
794:              andi         a0, t5, -849
795:              or           t2, s6, s1
                  sltu         ra, a0, a0
                  sll          s9, sp, t6
                  sra          zero, s8, t4
799:              lui          s3, 471675
                  srli         s7, t2, 28
                  bltu         s11, t5, 811f
                  xor          sp, s11, s11
                  and          ra, s10, a2
                  srl          s2, gp, s1
                  sll          a5, a5, s11
                  la           gp, region_0+1021 #start riscv_load_store_rand_instr_stream_4
                  sh           a4, 855(gp)
                  lbu          t0, -672(gp)
                  lb           s9, 782(gp)
                  lb           t0, 938(gp)
                  xori         s8, ra, -670
                  addi         a0, s4, -1170
                  lhu          zero, 741(gp)
                  sb           s6, -343(gp)
                  sll          t0, s9, sp
                  lbu          a4, 108(gp)
                  lb           t3, -501(gp)
                  lb           tp, -382(gp)
                  or           t1, t5, a1
                  andi         t3, tp, 1278
                  srli         s6, s9, 18
                  lh           a6, 871(gp)
                  lb           s0, -716(gp)
                  and          s7, a3, s7
                  lb           ra, 218(gp)
                  sw           s9, -241(gp)
                  xori         t3, s1, -1185
                  sh           s2, -299(gp)
                  lbu          ra, 732(gp)
                  sub          s8, a5, s2
                  sb           s7, -544(gp)
                  sltiu        a7, gp, -1721
                  sh           a6, -797(gp)
                  lb           s8, 136(gp)
                  sb           a3, -266(gp)
                  lb           a7, 4(gp)
                  lbu          t3, -554(gp)
                  lhu          a7, -533(gp)
                  lw           s2, 847(gp)
                  sh           t0, -797(gp)
                  sll          s11, s8, s7
                  sb           s1, -798(gp)
                  lbu          a0, -97(gp) #end riscv_load_store_rand_instr_stream_4
                  auipc        a6, 893635
                  slt          s8, s4, t2
                  xori         a0, t1, -120
                  lui          a3, 159675
                  slli         t1, tp, 23
811:              bltu         a4, a0, 813f
                  blt          t5, gp, 813f
813:              srai         s7, s7, 21
                  slli         a4, a1, 6
                  slti         s7, s6, 555
                  slt          sp, a0, s5
                  srai         t5, t3, 18
                  auipc        s9, 193127
                  addi         a3, a7, 608
                  slli         a4, a6, 15
                  bltu         t2, s7, 822f
822:              nop
                  ori          zero, gp, -550
                  sltu         gp, t2, sp
                  blt          t0, t0, 840f
                  bgeu         t3, ra, 835f
                  sub          s6, a2, s10
                  sra          a0, sp, s0
                  blt          s6, t5, 845f
                  bgeu         s2, s5, 844f
                  lui          a6, 625420
                  nop
                  slli         s9, s10, 0
                  bltu         s6, t4, 845f
835:              xor          t5, s2, t0
                  beq          a0, t6, 852f
                  ori          s6, s3, 310
                  sltiu        t2, t1, -1420
                  xori         s5, ra, -1916
840:              lui          s2, 915836
                  bltu         t3, a1, 842f
842:              lui          gp, 390393
                  blt          t3, tp, 857f
844:              srl          s1, s9, s8
845:              slt          s0, s5, a2
                  lui          t2, 938228
                  srai         t0, a2, 13
                  and          gp, s2, sp
                  and          s6, zero, t0
                  add          s8, s2, t6
                  lui          a5, 75422
852:              andi         s7, s9, -316
                  slt          s7, s3, a6
                  xori         a7, gp, 599
                  lui          s0, 413062
                  srl          t0, s1, s5
857:              beq          s1, gp, 863f
                  srl          s8, t5, s2
                  andi         sp, t2, -1929
                  sub          gp, s0, s4
                  sltu         tp, s4, t4
                  xor          a6, t3, a1
863:              and          s5, t3, s11
                  sltiu        s2, ra, 834
                  auipc        s5, 764006
                  sra          sp, t2, a5
                  ori          s8, a0, -1783
                  blt          sp, s11, 870f
                  sltu         s11, a1, s9
870:              bltu         s6, a6, 886f
                  addi         a3, sp, 1079
                  sltiu        t6, s7, -1644
                  andi         s11, a6, 975
                  sltu         s11, sp, s7
                  slt          s5, s1, s2
                  nop
                  bltu         a5, t5, 887f
                  blt          a7, gp, 887f
                  addi         s2, a1, 1814
                  add          s11, a4, t1
                  beq          t5, s3, 886f
                  bge          a7, t0, 899f
                  xori         t0, a2, -1094
                  and          s3, s11, tp
                  srai         a7, a6, 5
886:              add          t2, s11, t3
887:              blt          a7, s10, 889f
                  sltu         s11, s6, a3
889:              slt          a4, s5, s7
                  bltu         t1, a2, 901f
                  auipc        s11, 561428
                  slt          s0, s3, s3
                  slli         gp, s11, 14
                  auipc        a3, 515923
                  slti         a4, s6, -1330
                  sltu         t4, a3, t1
                  blt          a1, a3, 909f
                  beq          t5, t5, 899f
899:              sub          a4, a4, t3
                  addi         s5, s4, -104
901:              sltiu        t5, a6, -1378
                  slt          t1, a7, s4
                  add          t5, t2, gp
                  bltu         t5, a7, 913f
                  bge          a7, t3, 921f
                  addi         t3, sp, -718
                  addi         zero, gp, 991
                  xori         s11, tp, 1701
909:              ori          t0, s3, -693
                  lui          s2, 847696
                  nop
                  addi         s5, t0, -40
913:              lui          sp, 273580
                  or           zero, t3, s2
                  blt          t3, s7, 929f
                  sub          s2, a5, s8
                  auipc        zero, 93653
                  andi         t3, t0, -1081
                  beq          t2, t4, 920f
920:              xor          s0, a0, t2
921:              slli         tp, s0, 5
                  bne          t5, s10, 937f
                  xori         a7, s8, -955
                  andi         t1, ra, -236
                  srli         s2, s6, 20
                  xor          s5, zero, t6
                  lui          s5, 460012
                  srai         a4, t5, 13
929:              lui          s9, 98080
                  srl          s3, s3, a2
                  and          s7, t6, s1
                  xor          t2, s8, a6
                  slt          t6, t2, t4
                  sra          t1, a2, a5
                  blt          s3, a0, 946f
                  blt          a1, a4, 944f
937:              sll          a7, zero, a7
                  ori          a5, t4, 1674
                  sltu         s8, a0, t5
                  slli         s2, t3, 18
                  slt          s7, a2, a2
                  bne          a5, t0, 944f
                  srl          t4, t2, t4
944:              bltu         gp, s4, 951f
                  nop
946:              slti         zero, s6, 829
                  sltu         t4, a1, s1
                  xori         a7, zero, -718
                  srl          s8, zero, t6
                  bne          a2, t5, 965f
                  la           s1, region_1+851 #start riscv_load_store_rand_instr_stream_2
                  sub          a7, a0, s9
                  lbu          s10, -63(s1)
                  srl          ra, tp, sp
                  lb           t6, 96(s1)
                  sra          t4, s0, a4
                  auipc        s9, 990779
                  sb           s2, 157(s1)
                  lbu          a6, 33(s1)
                  lb           t4, -12(s1)
                  sltu         ra, s7, s11
                  sltu         s3, s9, gp
                  srl          a3, ra, s11
                  xor          a6, zero, t2
                  sra          t0, s3, a1
                  or           s8, s2, t3
                  lbu          s5, 24(s1)
                  lh           s8, -19(s1)
                  or           ra, t5, s7
                  lbu          a6, 126(s1)
                  slti         t3, s2, -1030
                  lbu          s6, 120(s1)
                  and          t0, s0, a2
                  slti         a7, t6, 1247
                  or           t4, s7, a6
                  srai         s7, s7, 23
                  srai         s7, tp, 23
                  slli         s9, s2, 24
                  sb           ra, -236(s1)
                  sltu         s10, t4, s10
                  addi         a6, t5, 34
                  sltu         ra, t4, s3
                  lbu          a7, 129(s1)
                  ori          s0, t1, 663
                  slti         t2, a5, -619
                  slli         s10, s0, 11
                  sltu         s9, s2, a2
                  lh           t1, -151(s1)
                  sltu         a0, s8, s6
                  sltiu        t4, a1, -161
                  lh           s0, -213(s1)
                  ori          s0, s10, 223
                  sb           a3, -190(s1)
                  lbu          a6, -37(s1)
                  lbu          t6, -111(s1)
                  sw           s2, -23(s1) #end riscv_load_store_rand_instr_stream_2
951:              xori         a3, a5, 817
                  sltiu        t1, s5, -211
                  bge          t5, t6, 973f
                  andi         a4, s4, 834
                  or           tp, s8, s4
                  ori          s1, a7, 971
                  sltu         s0, tp, s1
                  blt          a4, s11, 966f
                  or           s9, a2, a0
                  blt          t5, t5, 972f
                  ori          t4, zero, -1532
                  bltu         s4, zero, 977f
                  and          t5, a3, ra
                  bgeu         s6, s4, 978f
965:              bltu         gp, t0, 983f
966:              xori         t0, s9, -2042
                  lui          s9, 486509
                  add          s7, a0, s6
                  sltiu        a5, a7, -1447
                  sll          tp, a7, t3
                  and          s7, t0, a7
972:              sra          a4, t6, zero
973:              andi         s9, s9, 1195
                  slti         s7, a4, -651
                  auipc        s6, 278928
                  sltiu        a7, s3, 1800
977:              bltu         tp, a6, 979f
978:              sltiu        t3, s7, -193
979:              bltu         tp, t3, 993f
                  bltu         s0, s3, 995f
                  blt          t6, s10, 983f
                  andi         s9, a7, -1676
983:              xor          a4, a5, t2
                  sra          t0, a1, s3
                  sll          s1, s0, t1
                  bge          t2, tp, 997f
                  sub          t2, s7, a2
                  bne          a1, gp, 997f
                  bgeu         t1, ra, 1000f
                  srai         s10, a1, 0
                  sll          ra, gp, s3
                  lui          ra, 133782
993:              sra          s9, tp, a4
                  sra          s5, s9, ra
995:              bne          a1, a2, 1013f
                  sub          t6, a2, t3
997:              sltu         t5, s9, tp
                  slt          s10, gp, t0
                  ori          t3, zero, 1464
1000:             and          sp, a4, s10
                  sltiu        tp, a1, -1820
                  slt          tp, s9, s1
                  bgeu         s9, s5, 1020f
                  ori          s6, a7, 1879
                  xor          s9, a1, a2
                  sltiu        a6, t6, -886
                  and          a3, a7, a7
                  blt          a5, tp, 1009f
1009:             beq          s9, a2, 1017f
                  ori          ra, ra, -689
                  or           s2, gp, s11
                  slli         sp, s3, 1
1013:             sra          s1, t2, zero
                  sltiu        s11, t6, 1509
                  slt          s1, sp, s3
                  nop
                  xori         t1, s0, 1756
                  sltiu        a7, s9, 635
                  or           t1, t4, t3
                  ori          a3, t6, -1369
sub_6_j10:        jal          t5, sub_7 #jump sub_6 -> sub_7
                  srl          zero, sp, t0
                  bltu         s1, a3, 1029f
                  lui          t6, 794682
1017:             xori         tp, a0, 236
                  srl          s9, s10, a6
                  beq          s6, s11, 1034f
1020:             andi         t4, s1, -666
                  xori         a7, a1, 1269
                  lui          sp, 861567
                  lui          a0, 772416
                  add          a0, t6, tp
                  slli         s3, s8, 13
                  nop
                  slli         a6, gp, 16
                  sltu         a0, s0, s6
1029:             or           s3, ra, t1
                  add          s1, s8, zero
                  xor          s8, t6, s6
                  bltu         t0, t0, 1040f
                  xori         sp, s6, -1416
1034:             slti         gp, zero, -1493
                  sltiu        s10, s7, 1368
                  xori         s7, a7, 1188
                  sub          zero, t2, s10
                  or           t4, s8, t3
                  sltu         s7, t5, t6
1040:             bge          s0, tp, 1052f
                  slli         s7, gp, 6
                  slti         a0, ra, 1715
                  ori          s2, a1, -1449
                  sltiu        s11, tp, -244
                  lui          s6, 350705
                  and          sp, a0, a0
                  xori         gp, s8, -1533
                  bne          sp, s5, 1049f
1049:             lui          s5, 788261
                  xor          s0, s8, a4
                  slti         s0, sp, -743
1052:             sub          t4, sp, a2
                  xor          a3, s4, a3
                  auipc        sp, 684621
                  srai         zero, s3, 25
                  bltu         a2, a6, 1072f
                  or           s9, s5, s5
                  xori         t0, s7, 1783
                  slt          ra, s2, t6
                  ori          sp, s11, -1988
                  ori          t4, t5, 1796
                  auipc        a5, 241383
                  sub          t5, s0, t5
                  andi         ra, zero, 1421
                  andi         s8, a1, -1107
                  bne          sp, s3, 1073f
                  beq          a1, s4, 1076f
                  srli         t5, a5, 4
                  srli         a3, a2, 24
                  srl          s9, t3, s5
                  add          a5, s1, t4
1072:             auipc        s1, 561240
1073:             sltiu        t3, s0, 1562
                  slti         s9, s11, -223
                  bne          t1, a1, 1084f
1076:             sll          t1, a0, t1
                  beq          a1, s6, 1079f
                  bne          s0, s5, 1084f
1079:             slt          t2, s6, zero
                  slt          gp, a6, a1
                  xor          t6, a0, s5
                  blt          s3, t2, 1084f
                  srli         s8, t5, 23
1084:             addi         t1, s3, 1739
                  xori         t4, t2, 1973
                  lw           t5, 4(a2)
                  or           s10, s8, t4
                  sra          s6, s10, zero
                  addi         a2, a2, 28
                  nop
1390:             addi x14, x30, 0
1390:             jalr x14, x14, 0
sub_4:            addi         a2, a2, -60
                  srai         a7, s5, 2
                  sw           t5, 4(a2)
                  lui          a7, 625196
                  sltiu        t0, tp, -852
                  sra          t2, a2, t2
                  la           s9, region_1+1176 #start riscv_load_store_rand_instr_stream_5
                  sra          ra, tp, s3
                  lbu          sp, 3(s9)
                  lb           a4, 3(s9)
                  lb           t6, 0(s9)
                  lbu          s7, -5(s9)
                  sb           sp, -13(s9)
                  lbu          s0, -9(s9)
                  addi         s3, s0, 1098
                  lbu          s2, -5(s9)
                  lb           tp, -1(s9)
                  auipc        s2, 613327
                  lb           t4, -14(s9)
                  lh           a0, -4(s9)
                  lbu          t5, -9(s9)
                  addi         a0, s4, -2023
                  lhu          a3, 4(s9)
                  or           a6, sp, t6
                  lbu          t4, -11(s9)
                  add          a3, t5, ra
                  sltu         s8, gp, s10
                  lbu          t0, 14(s9)
                  sb           tp, 14(s9)
                  auipc        ra, 93129
                  sb           zero, -8(s9)
                  lbu          gp, 7(s9)
                  sltiu        s3, s1, -1695
                  sb           t3, 15(s9)
                  srl          s8, gp, a4
                  sb           a3, -7(s9)
                  addi         s6, a0, -2010
                  lh           a4, 6(s9)
                  lh           a7, 12(s9)
                  sb           t6, 9(s9)
                  sw           s7, 4(s9)
                  sb           t0, -9(s9)
                  sb           zero, -4(s9)
                  lhu          s5, -12(s9)
                  lb           t6, -12(s9)
                  sb           s0, -4(s9)
                  lui          s3, 604344
                  lb           s0, 9(s9)
                  nop
                  lbu          t5, -1(s9) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+125 #start riscv_load_store_rand_instr_stream_7
                  lb           s3, 974(sp)
                  lb           t1, 1222(sp)
                  nop
                  sb           s10, 970(sp)
                  ori          gp, a1, -1767
                  lw           gp, 375(sp)
                  lb           t2, 833(sp)
                  lhu          a6, 1507(sp)
                  lhu          a5, 451(sp)
                  lhu          s1, 371(sp)
                  sltiu        s3, s8, -1321
                  srai         s3, s4, 29
                  sh           a3, -15(sp)
                  sh           s0, 1175(sp)
                  slli         a4, t3, 26
                  xori         s10, a0, 1891
                  ori          t3, gp, 1537
                  lbu          t4, 1698(sp)
                  sub          tp, t4, s6
                  srl          t2, t1, t0
                  lb           tp, 1634(sp)
                  slt          tp, a3, a0
                  sub          s8, a4, a3
                  sra          zero, s4, t4
                  lh           s3, 107(sp)
                  lb           gp, 717(sp)
                  lbu          a5, 1717(sp)
                  sltu         s5, s8, s6
                  auipc        t4, 736411
                  lb           ra, 1728(sp)
                  sltiu        a4, s2, 557
                  lb           s0, 1066(sp)
                  add          ra, t2, s6
                  lbu          s8, 1220(sp)
                  sltiu        s3, t6, -1909
                  srai         s11, s6, 4
                  sltu         s7, a0, s5
                  or           a5, t6, s9
                  and          a4, s6, a7
                  nop
                  lbu          t2, 246(sp)
                  srai         t1, s4, 22
                  xor          s3, tp, t6
                  lb           t5, 574(sp)
                  sb           t0, 56(sp)
                  lh           a0, 1483(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+125 #start riscv_load_store_rand_instr_stream_2
                  sltiu        gp, s3, -594
                  addi         tp, s2, -464
                  nop
                  slli         s5, t2, 1
                  sb           s2, 44(sp)
                  sra          s9, t4, t4
                  lbu          t1, 137(sp)
                  sb           a6, -10(sp)
                  nop
                  lbu          ra, 84(sp)
                  lbu          s1, 4(sp)
                  or           s8, s9, s7
                  add          t2, s2, t4
                  sh           t3, -23(sp)
                  slli         s6, t5, 21
                  sb           t6, 15(sp)
                  xori         s3, t4, -1224
                  nop
                  srai         t2, t1, 27
                  sh           t4, -5(sp)
                  lb           s10, 205(sp)
                  lhu          gp, 69(sp)
                  addi         s8, sp, 1116
                  lbu          s10, 129(sp)
                  sll          gp, t5, tp
                  lb           s0, -34(sp)
                  and          a6, t3, zero
                  srai         s1, t1, 19
                  sb           t4, -16(sp)
                  lh           t5, 161(sp)
                  sh           s1, 139(sp)
                  slti         s7, s7, 1590
                  sra          a4, t3, t6
                  lb           s11, 206(sp)
                  sh           t5, 175(sp)
                  lhu          s0, -25(sp)
                  sb           s0, 182(sp)
                  lb           s3, 70(sp)
                  slti         s7, a6, 435
                  sltiu        s2, a5, -472
                  lhu          ra, 5(sp)
                  sb           s5, -102(sp)
                  lbu          t0, -2(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+1255 #start riscv_load_store_rand_instr_stream_8
                  lbu          s5, 138(s9)
                  sw           s10, 173(s9)
                  sb           a7, 94(s9)
                  lb           a5, -156(s9)
                  ori          gp, t2, 1201
                  srl          s6, s8, s7
                  lbu          s8, 18(s9)
                  slli         a6, zero, 17
                  lbu          t5, -160(s9)
                  lhu          s7, 143(s9)
                  lb           t4, -166(s9)
                  lbu          a4, -202(s9)
                  lbu          s0, 208(s9)
                  nop
                  slti         t1, a0, 1551
                  sb           a4, 58(s9)
                  nop
                  lbu          s7, 251(s9)
                  lb           tp, 198(s9)
                  or           a6, a3, a7
                  nop
                  srai         t5, a6, 18
                  nop
                  lb           s0, -20(s9)
                  slti         zero, t2, 1258
                  slti         sp, t4, 1251
                  nop
                  lbu          s10, -234(s9)
                  sb           s0, -64(s9)
                  lb           s10, -122(s9)
                  sh           s11, 191(s9)
                  srai         s5, a0, 22
                  lh           t1, -77(s9)
                  lbu          ra, -18(s9)
                  addi         s5, s10, 1085
                  xori         sp, s2, -1467
                  lh           t5, -247(s9)
                  sb           s6, 186(s9) #end riscv_load_store_rand_instr_stream_8
                  la           tp, region_0+434 #start riscv_load_store_rand_instr_stream_6
                  sb           s2, -197(tp)
                  lh           s9, -14(tp)
                  sh           a6, 128(tp)
                  ori          s9, s1, -1277
                  srli         a6, a5, 8
                  ori          zero, t1, 599
                  nop
                  lui          a0, 1007156
                  and          a6, s6, a5
                  srl          t4, ra, s1
                  sra          s7, tp, s3
                  sll          a0, s7, a3
                  lb           t0, -147(tp)
                  auipc        t6, 217351
                  nop
                  addi         a7, zero, 1591
                  slli         sp, s7, 0
                  sb           a7, -128(tp)
                  lb           s6, -205(tp)
                  sb           a7, -224(tp)
                  lbu          a3, 66(tp)
                  lb           zero, 201(tp)
                  slti         sp, a3, 9
                  or           s2, s4, t4
                  slti         a0, s5, 1642
                  ori          s0, t5, -1046
                  xor          s1, t0, s9
                  lbu          gp, -169(tp)
                  srl          t2, a2, a5
                  addi         s5, s5, -1807
                  nop
                  lbu          a7, -241(tp)
                  slti         gp, t2, 1139
                  sb           zero, -43(tp)
                  lbu          ra, -101(tp)
                  nop
                  lbu          sp, -203(tp)
                  lb           s3, 207(tp)
                  sb           s5, 215(tp)
                  andi         sp, a4, 981
                  addi         s3, t3, -341
                  lb           s10, -32(tp)
                  lw           t2, -162(tp)
                  sb           t6, -6(tp)
                  sh           a1, -58(tp)
                  sb           t0, 81(tp)
                  ori          t5, zero, -1711
                  sub          s10, a4, a3
                  sb           a1, -41(tp)
                  or           t1, tp, gp
                  sltiu        a6, t4, -226
                  lh           a4, 148(tp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1682 #start riscv_load_store_rand_instr_stream_9
                  srl          s8, s9, s3
                  xor          s3, a2, a7
                  lui          a4, 976945
                  lbu          t2, 51(sp)
                  sll          t4, s2, t4
                  or           s2, a0, a7
                  lb           s11, -29(sp)
                  sltiu        tp, s7, -1660
                  srai         gp, s10, 28
                  add          zero, s4, a7
                  sltiu        t0, s1, -1770
                  auipc        t4, 697685
                  sltiu        zero, t2, -1532
                  lb           s7, 33(sp)
                  lbu          gp, 31(sp)
                  sub          t6, s10, s11
                  add          a5, a3, s8
                  nop
                  sb           tp, 26(sp)
                  lb           t6, -29(sp)
                  or           s3, t6, a1
                  sh           s10, -6(sp)
                  slti         s0, a1, -1979
                  addi         t3, s9, -981
                  ori          t2, s10, 931
                  lb           a0, -43(sp)
                  auipc        t1, 727484
                  lb           a7, 49(sp)
                  andi         t3, s9, -289
                  lhu          t1, -14(sp)
                  lb           s5, -47(sp)
                  add          t6, s9, s4
                  sb           s7, -25(sp)
                  srai         s2, s11, 18
                  sb           s8, -13(sp)
                  sll          s0, s2, s6
                  sh           a6, -60(sp)
                  lbu          s9, -59(sp)
                  andi         s1, s8, 487
                  xori         s8, a5, 1097
                  xor          s0, s10, zero
                  srai         t2, a4, 5
                  sb           t3, 5(sp)
                  andi         s11, t2, 628
                  andi         a7, s11, 72
                  slt          s10, t2, s4
                  lb           a3, -23(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s11, region_0+1868 #start riscv_load_store_rand_instr_stream_1
                  lhu          t3, -510(s11)
                  slli         a3, s6, 31
                  nop
                  lb           s3, -229(s11)
                  lb           t6, 129(s11)
                  lbu          sp, -188(s11)
                  lb           sp, -758(s11)
                  lbu          a3, -1565(s11)
                  sltu         t1, s2, t1
                  slti         t0, t0, 501
                  lhu          t0, 30(s11)
                  and          s5, a3, gp
                  lbu          t5, -932(s11)
                  lh           s2, -894(s11)
                  nop
                  lbu          a0, -919(s11)
                  sb           s8, -1828(s11)
                  lb           sp, -1362(s11)
                  lb           t6, 30(s11)
                  slti         s6, a0, 303
                  lb           s9, -1245(s11)
                  sb           s9, -1813(s11)
                  addi         t3, s9, 451
                  and          s1, s5, t3
                  lhu          t4, -1070(s11)
                  slt          gp, t6, s8
                  lb           a4, -628(s11)
                  lbu          a4, -1193(s11)
                  sb           s6, -523(s11)
                  lbu          t0, -810(s11)
                  andi         t4, s6, 766
                  lh           s10, -910(s11)
                  slti         s2, s11, 276
                  xor          tp, s3, a7
                  slt          gp, s8, a5
                  xori         s7, s10, 558
                  srl          s3, t1, s1
                  sb           t1, -766(s11)
                  lbu          s8, -611(s11)
                  lh           a4, -1762(s11)
                  lb           a0, -1587(s11)
                  auipc        s0, 865380
                  sltu         a3, s3, sp
                  sh           sp, -840(s11) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+982 #start riscv_load_store_rand_instr_stream_4
                  lb           s8, 45(a7)
                  lh           a3, -18(a7)
                  sw           ra, 2(a7)
                  sb           s9, -52(a7)
                  sll          s5, t3, t2
                  sb           ra, 17(a7)
                  slt          s5, s4, t1
                  lhu          a3, 36(a7)
                  srli         t3, gp, 31
                  xor          ra, s11, s9
                  sh           a4, 64(a7)
                  and          a6, tp, a1
                  lb           tp, 24(a7)
                  lbu          a3, 23(a7)
                  lbu          s0, -59(a7)
                  sb           a2, 9(a7)
                  sh           s5, -26(a7)
                  sb           s8, 7(a7)
                  ori          t3, a3, 1115
                  sltu         t0, t6, t2
                  sw           t2, -58(a7)
                  andi         t0, s10, 1441
                  srl          s10, s8, s4
                  ori          s2, a7, -37
                  and          t6, s10, a7
                  xori         s10, a1, 431
                  lh           t5, -58(a7)
                  lbu          s9, -12(a7)
                  or           t1, s11, t6
                  slti         gp, sp, 1685
                  sll          sp, gp, s2
                  sw           a6, 6(a7)
                  lbu          s6, -36(a7)
                  lw           t4, 18(a7) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_1+296 #start riscv_load_store_rand_instr_stream_0
                  lhu          t0, 10(s7)
                  sh           t3, 8(s7)
                  sb           s0, -3(s7)
                  xori         t1, s11, 239
                  sltiu        s11, a7, -1681
                  lui          s11, 490054
                  lbu          t0, 5(s7)
                  sb           s4, 4(s7)
                  lb           s9, 15(s7)
                  sra          s8, t2, a2
                  lbu          s1, -1(s7)
                  and          t4, gp, s5
                  or           s8, a0, s11
                  lh           t2, -4(s7)
                  lh           a5, 14(s7)
                  lbu          a0, -4(s7)
                  xor          tp, s6, s1
                  sb           gp, 3(s7)
                  addi         a0, a7, 624
                  sb           a5, 8(s7)
                  lh           s3, 14(s7)
                  or           t0, t1, t4
                  lbu          ra, -4(s7)
                  sb           s11, 13(s7)
                  lb           s1, -8(s7)
                  lb           sp, 12(s7)
                  lb           s10, 6(s7)
                  sb           tp, 9(s7)
                  sb           tp, -10(s7)
                  sw           s11, -16(s7)
                  sb           s9, 3(s7)
                  lbu          ra, 12(s7)
                  nop
                  lbu          s3, 4(s7) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+1971 #start riscv_load_store_rand_instr_stream_3
                  or           a6, s4, zero
                  lbu          tp, 5(t1)
                  and          ra, s9, s6
                  slt          a6, s6, s2
                  sb           t0, -12(t1)
                  lbu          ra, 0(t1)
                  sb           t0, -4(t1)
                  lui          t5, 648088
                  ori          sp, zero, -1231
                  slti         a0, t2, 1469
                  lui          s10, 428214
                  add          s3, t2, a1
                  andi         t5, a3, 1928
                  xor          a3, a6, t2
                  xor          s1, s4, ra
                  add          t4, t1, s3
                  or           s11, s0, sp
                  addi         tp, s4, -1733
                  lui          gp, 324017
                  slli         a6, t5, 8
                  sw           a7, -15(t1)
                  lhu          s7, -1(t1)
                  slti         gp, s11, 1055
                  lb           s11, 15(t1)
                  slli         a0, tp, 27
                  sra          t6, zero, sp
                  lhu          a4, -3(t1)
                  sltu         t5, s8, a4
                  lh           zero, -5(t1)
                  sll          s8, t3, a3
                  sub          s2, t4, s6
                  lui          s5, 214454
                  sltiu        s3, t3, 191
                  sub          s10, tp, gp
                  lb           gp, -10(t1)
                  lbu          a0, -2(t1) #end riscv_load_store_rand_instr_stream_3
                  sltu         s3, s10, a1
                  srl          a7, s11, t4
                  sll          t4, ra, s10
                  blt          sp, s9, 7f
                  bltu         a7, s11, 22f
                  slti         s10, s7, -391
                  addi         t6, a0, -543
7:                and          s6, s9, s4
                  add          s7, s10, t5
                  blt          s6, s7, 25f
                  srli         s2, a2, 26
                  andi         s1, a0, 186
                  add          s11, s11, s6
                  or           s11, a7, t6
                  srai         s2, t2, 14
                  lui          a0, 99153
                  auipc        t6, 534908
                  add          a3, zero, a4
                  srai         t6, t4, 28
                  srl          gp, s4, zero
                  slt          s6, a6, a3
                  srl          a0, s0, t4
22:               xor          t1, t4, s8
                  lui          t1, 752999
                  ori          gp, s10, 1635
25:               and          s8, t1, t6
                  slli         s6, s2, 18
                  nop
                  srai         tp, s11, 15
                  bne          s6, gp, 33f
                  and          t2, s8, s9
                  la           s8, region_0+1246 #start riscv_load_store_rand_instr_stream_10
                  sb           a3, 191(s8)
                  andi         a5, tp, 1377
                  lb           t5, -176(s8)
                  xori         s5, a7, 1045
                  lh           a5, 224(s8)
                  sb           t1, 73(s8)
                  lb           s9, -164(s8)
                  sb           t0, -155(s8)
                  lb           a0, 247(s8)
                  lbu          s3, 113(s8)
                  sub          s9, a1, t2
                  sltiu        a6, s1, -827
                  lui          s2, 418813
                  lbu          s6, -237(s8)
                  sw           s5, -138(s8)
                  sltiu        s1, s10, 1576
                  slti         t2, s1, 1936
                  xor          a6, a1, s5
                  lhu          ra, 154(s8)
                  lb           t4, 21(s8)
                  lh           s0, 78(s8)
                  lh           a4, -104(s8)
                  srli         a0, tp, 14
                  sltiu        s7, ra, -1263
                  xor          zero, a7, sp
                  sh           a2, 240(s8)
                  sltiu        s10, t0, -1727
                  srai         sp, s10, 11
                  lbu          t5, -25(s8)
                  sb           a2, -56(s8)
                  auipc        s10, 371850
                  lbu          t1, -120(s8)
                  lb           s7, 213(s8)
                  sb           t1, -142(s8)
                  lbu          s11, -134(s8)
                  lui          s7, 318937
                  lbu          a0, 43(s8)
                  sb           s6, 179(s8)
                  andi         s9, sp, 20
                  srli         s9, s5, 19
                  sb           t0, 66(s8)
                  sb           t5, -67(s8)
                  lb           t2, -185(s8) #end riscv_load_store_rand_instr_stream_10
                  nop
                  ori          tp, zero, 447
33:               auipc        s7, 669441
                  xor          s9, s2, s8
                  andi         s6, a2, -1917
                  addi         t5, a1, 760
                  andi         gp, t4, 704
                  srai         tp, s10, 3
                  andi         s2, zero, -1060
                  or           a6, gp, t4
                  lui          t0, 13574
                  blt          a2, a1, 47f
                  bltu         s4, t3, 61f
                  srai         sp, a2, 11
                  slli         a5, s1, 14
                  srli         s2, s9, 10
47:               slli         t2, a4, 28
                  xori         s10, t6, 622
                  nop
                  auipc        t2, 533624
                  or           s8, a6, s10
                  slti         tp, s7, -1099
                  slti         t2, a1, 266
                  xor          s1, s5, s3
                  sll          ra, t3, sp
                  blt          t1, s9, 67f
                  xori         t1, ra, -1155
                  ori          sp, s9, -1388
                  add          a4, s7, s2
                  sltu         s8, a3, t1
61:               slti         tp, a0, 803
                  slt          s2, ra, a1
                  lui          t0, 453030
                  slli         sp, t5, 10
                  ori          t1, a0, 28
                  addi         s6, a3, 448
67:               xori         s1, a2, 715
                  sra          sp, t5, zero
                  beq          gp, a6, 78f
                  bltu         t4, a7, 89f
                  sra          ra, s0, a2
                  srli         a0, a1, 27
                  srli         t4, tp, 11
                  sra          s2, s4, t2
                  sub          t5, s5, s1
                  xori         a3, a0, -486
                  srli         zero, s2, 20
78:               blt          ra, s9, 85f
                  and          a0, a0, s3
                  sll          a5, a7, t0
                  xor          sp, tp, t2
                  add          gp, t1, t5
                  slt          zero, s1, s4
                  xor          s3, s5, s11
85:               sra          tp, t1, t2
                  sra          s9, t0, a2
                  sub          s0, t3, t1
                  srli         t5, a7, 28
89:               sub          s7, sp, a2
                  add          s2, s10, a1
                  blt          tp, a2, 109f
                  andi         a5, t4, 1345
                  lui          s2, 891998
                  beq          s0, a7, 109f
                  auipc        t3, 940582
                  sra          s7, t5, a2
                  sub          s6, gp, s4
                  add          a6, s0, a5
                  and          t3, t2, s3
                  sll          t5, s1, t4
                  sltu         t2, s11, s7
                  sub          a3, s6, gp
                  ori          a6, s2, -2027
                  slli         tp, s11, 28
                  srli         a4, a1, 20
                  sltiu        sp, a7, -1221
                  slli         a5, zero, 9
                  slt          tp, s6, a7
109:              xori         s3, s9, -1136
                  beq          s3, s3, 120f
                  bgeu         t0, s10, 120f
                  sltiu        a0, t6, 204
                  nop
                  lui          t3, 314008
                  xor          s3, t1, s10
                  xori         a4, a7, -888
                  lui          tp, 658262
                  nop
                  lui          t0, 333825
120:              slli         s8, tp, 8
                  xori         a7, s2, 485
                  and          t6, tp, s3
                  beq          t6, s4, 129f
                  srai         s9, s5, 16
                  sll          a4, s7, gp
                  bge          s3, s3, 145f
                  add          s9, s4, tp
                  srli         a0, s0, 1
129:              auipc        a3, 876463
                  bltu         s4, ra, 138f
                  add          s11, a1, t1
                  and          a4, a2, t5
                  sub          s2, a4, a0
                  sll          t4, a4, a6
                  sll          t0, s1, s0
                  srli         s1, a5, 16
                  auipc        s10, 734067
138:              and          zero, s0, t3
                  bne          ra, s8, 141f
                  sll          s1, a1, ra
141:              srl          t1, s10, s4
                  addi         ra, s11, -305
                  sra          s11, a1, s4
                  srai         a5, t5, 10
145:              or           s5, sp, s10
                  srl          gp, a3, s5
                  xori         a0, s6, 1523
                  andi         a6, s4, 82
                  andi         s1, t5, 439
                  add          gp, zero, s0
                  xori         t6, t1, 1679
                  bgeu         t2, t5, 166f
                  sll          s9, s5, sp
                  blt          a5, a7, 170f
                  auipc        t4, 1029005
                  slli         s8, s4, 3
                  slti         a3, ra, -515
                  slti         s6, ra, 1544
                  blt          s7, s5, 161f
                  addi         s1, t4, 84
161:              sltiu        gp, s9, 1732
                  sltu         s3, t5, s3
                  and          a6, tp, s9
                  sltu         s2, t3, a2
                  auipc        s11, 554282
166:              slt          s1, a1, a2
                  srl          a3, s2, a6
                  srli         t5, t6, 29
                  sltiu        s5, s7, 300
170:              sll          t4, a0, sp
                  srli         s10, a0, 15
                  andi         tp, s1, -55
                  sltu         t4, t3, a1
                  xori         t0, s0, 1674
                  bne          t4, zero, 189f
                  or           a4, s2, s10
                  add          t6, gp, t0
                  beq          ra, ra, 188f
                  slti         sp, s5, -752
                  blt          s6, t3, 181f
181:              xor          a4, a5, t4
                  bgeu         a7, s3, 187f
                  slt          a6, ra, a3
                  srl          t2, a7, sp
                  srl          t1, s7, s5
                  xor          s2, sp, a4
187:              or           ra, t2, s7
188:              sll          t2, a7, t2
189:              addi         s10, a5, -1473
                  blt          s2, zero, 194f
                  ori          t5, s3, -1020
                  bge          s5, s9, 209f
                  lui          s0, 99254
194:              addi         a7, a7, -454
                  bne          a3, a6, 214f
                  andi         s11, s6, 1247
                  srai         t1, t4, 11
                  bltu         t0, a1, 201f
                  or           s0, s6, s5
                  or           t3, t3, a6
201:              sll          t4, tp, s10
                  slt          s8, t3, s9
                  or           s3, s3, zero
                  sltiu        t1, t2, -1860
                  srl          s3, s8, tp
                  lui          tp, 29322
                  or           t2, t3, sp
                  addi         s9, t2, -1008
209:              sltu         ra, s2, tp
                  or           t1, s7, t3
                  andi         ra, s4, -963
                  slti         tp, s6, -398
                  nop
214:              slt          t6, s10, a0
                  srai         t6, tp, 29
                  xori         ra, sp, -519
                  blt          s7, t5, 220f
                  sltu         s1, s5, t6
                  sll          s9, s7, s5
220:              sll          gp, s9, t6
                  bne          a1, s6, 224f
                  lui          s5, 422350
                  addi         s0, s5, 835
224:              xori         s8, t6, -1630
                  sub          s3, sp, s5
                  auipc        a4, 398649
                  andi         t5, a4, -1486
                  lui          t5, 682478
                  nop
                  nop
                  blt          s3, a3, 242f
                  slti         s9, sp, 684
                  sltu         a5, s2, ra
                  srl          s8, s6, s3
                  slli         a7, a1, 30
                  bgeu         t1, t2, 243f
                  sltu         t2, ra, t1
                  lui          a3, 634240
                  srai         s6, s11, 11
                  addi         sp, a3, 788
                  srl          sp, t2, a5
242:              srl          a7, a6, a2
243:              add          gp, s0, s4
                  beq          a6, s7, 262f
                  add          s3, s9, s5
                  lui          a4, 823208
                  bge          t5, a3, 263f
                  slti         a0, a6, 964
                  srai         t5, t1, 1
                  bne          s3, a5, 260f
                  sll          a7, sp, s10
                  lui          s3, 47971
                  beq          s8, a0, 257f
                  add          s8, t1, s8
                  beq          s7, t6, 264f
                  bne          ra, s7, 270f
257:              beq          a1, t1, 276f
                  sra          a7, tp, s7
                  beq          t0, tp, 277f
260:              sltiu        a0, s6, -960
                  slt          t2, s3, a7
262:              auipc        t2, 378231
263:              slti         t1, s0, -1934
264:              bge          a0, a4, 266f
                  sll          s10, s11, s11
266:              slt          s3, tp, a7
                  sra          s5, a4, a3
                  blt          a1, s4, 273f
                  or           s11, s3, a1
270:              xori         a6, sp, -1556
                  slt          a4, a4, a7
                  slli         a3, s4, 7
273:              bltu         t4, a6, 278f
                  xori         a7, tp, 226
                  ori          t1, s6, 1992
276:              auipc        a7, 435277
277:              xor          s9, t6, a7
278:              sra          s2, s1, gp
                  slti         t0, a6, 1176
                  addi         t2, a1, 64
                  sltiu        gp, s9, -819
                  or           t2, s10, a0
                  lui          s3, 979032
                  ori          a6, s10, -646
                  auipc        a4, 1034556
                  blt          t3, t6, 290f
                  addi         s8, t2, 1513
                  nop
                  slt          s7, a7, sp
290:              addi         gp, ra, -917
                  and          s11, t3, s8
                  lui          s1, 960771
                  sub          t2, a2, a2
                  srai         t5, t3, 30
                  beq          t3, a2, 313f
                  sltiu        s1, s3, 1864
                  srl          s0, a1, t1
                  ori          s2, t0, -936
                  srli         t5, s6, 17
                  add          t5, t4, a7
                  and          gp, s8, s8
                  slli         a5, zero, 6
                  bltu         s1, a2, 304f
304:              lui          s3, 58142
                  bltu         s4, s9, 307f
                  lui          s6, 353416
307:              xor          t1, s8, t6
                  blt          s3, s6, 324f
                  slti         tp, s0, -1154
                  srl          s11, s5, s5
                  srl          t4, zero, s1
                  srl          a3, a1, s5
313:              bgeu         gp, a2, 319f
                  blt          t2, t4, 324f
                  andi         s5, s4, 477
                  bge          a2, ra, 335f
                  andi         s6, s3, -1071
                  slt          tp, a2, a4
319:              sra          s6, ra, t6
                  sltu         a3, s7, a3
                  ori          zero, s1, -1194
                  srli         s9, sp, 26
                  or           a4, s5, s5
324:              srli         a6, t5, 29
                  bne          s8, a6, 342f
                  bltu         s3, t2, 330f
                  add          t5, a1, s0
                  sra          s1, s11, a6
                  lui          s11, 512902
330:              auipc        s5, 980221
                  slti         s1, a0, -395
                  and          t5, a7, a0
                  blt          s3, s5, 341f
                  sltu         s9, a5, a0
335:              srai         zero, s3, 5
                  bge          a6, t6, 355f
                  blt          zero, t0, 340f
                  srli         gp, s4, 31
                  blt          s4, tp, 354f
340:              sltu         a6, t5, s6
341:              bltu         a2, s5, 350f
342:              auipc        t2, 676298
                  lui          s3, 230695
                  bgeu         zero, t3, 358f
                  ori          a5, s6, 1405
                  andi         t5, s5, 1727
                  xor          s3, sp, ra
                  xori         gp, s0, 388
                  bne          s3, s4, 368f
350:              nop
                  bne          t5, t2, 353f
                  sltiu        s5, zero, -88
353:              and          t2, s3, a1
354:              auipc        t3, 69758
355:              xori         a0, a4, -999
                  nop
                  sub          s9, a1, s5
358:              bne          a0, s10, 362f
                  blt          s8, s3, 365f
                  addi         s5, tp, 1575
                  sltiu        s9, s9, 1408
362:              nop
                  sub          t1, zero, t4
                  sltiu        t5, zero, 1588
365:              slli         t4, s4, 3
                  bgeu         s8, t2, 371f
                  slt          t1, s0, t5
368:              blt          zero, s4, 382f
                  sra          s8, a4, s7
                  srl          s0, s4, s5
371:              and          s9, tp, t4
                  xor          s8, s5, a4
                  slli         t0, tp, 29
                  slt          a0, t5, ra
                  xor          s7, sp, gp
                  sub          t1, a4, s0
                  slt          s3, a2, t6
                  bgeu         ra, a2, 379f
379:              sra          s11, a3, zero
                  or           t4, s3, t6
                  sub          a0, s7, s9
382:              slt          s2, a0, a4
                  auipc        s11, 412152
                  or           a5, s11, a2
                  add          a7, t3, a5
                  bne          a2, a1, 397f
                  auipc        s8, 286833
                  bge          s0, a1, 406f
                  lui          ra, 913877
                  srai         s1, s8, 4
                  sub          s8, t6, s4
                  slti         s6, a7, 180
                  sltiu        zero, t1, 2017
                  blt          s8, s4, 403f
                  addi         s8, a1, 1285
                  slli         zero, s4, 30
397:              or           s10, a1, s8
                  bne          s11, s5, 408f
                  andi         t0, a3, 1804
                  sra          s6, a5, a5
                  auipc        t2, 198064
                  beq          t1, a6, 409f
403:              beq          s5, s4, 419f
                  sltu         t5, tp, a2
                  blt          a6, a5, 407f
406:              srl          sp, t3, a1
407:              srai         t1, a4, 20
408:              sll          s6, zero, a7
409:              srai         a3, s2, 17
                  srli         t3, zero, 18
                  bltu         a6, s11, 414f
                  slti         s10, t0, 273
                  srai         a6, s9, 20
414:              bge          s7, s10, 429f
                  bltu         a4, a5, 433f
                  bge          t6, t6, 435f
                  bltu         a3, a1, 421f
                  slti         ra, tp, 577
419:              bne          s0, gp, 433f
                  ori          s9, t3, 272
421:              srl          s9, s5, tp
                  and          s7, s0, s5
                  xor          t5, sp, t2
                  srai         t5, gp, 3
                  srai         a7, a7, 10
                  andi         a6, a6, -547
                  sltu         t0, s10, sp
                  srli         s8, ra, 13
429:              sra          zero, t1, ra
                  sll          s6, s9, s7
                  sltiu        a5, gp, -1910
                  addi         t6, t3, -1740
433:              bge          t5, s1, 442f
                  lui          s10, 342995
435:              auipc        s7, 128577
                  lui          s6, 965197
                  nop
                  xori         a3, gp, 508
                  bgeu         t5, a3, 455f
                  bltu         s4, gp, 450f
                  addi         t4, s6, 693
442:              add          t3, s11, tp
                  srl          s7, a2, s1
                  bltu         t0, zero, 449f
                  srai         zero, s10, 10
                  blt          zero, a6, 454f
                  bge          t4, s9, 450f
                  ori          t4, t6, 842
449:              srai         s0, s0, 20
450:              blt          s11, gp, 454f
                  or           t1, s0, t1
                  slti         ra, s9, 1210
                  bltu         t0, a5, 471f
454:              sra          a6, t3, gp
455:              bne          s6, t4, 472f
                  bge          gp, ra, 475f
                  blt          sp, s0, 467f
                  bgeu         s0, a5, 461f
                  or           s9, t5, a4
                  sub          ra, t1, zero
461:              blt          s6, gp, 470f
                  bltu         a0, t4, 467f
                  xori         s2, ra, -245
                  slt          s11, t1, gp
                  xori         s0, s8, -864
                  xori         s0, s6, -251
467:              add          t1, s8, sp
                  srli         a6, a6, 16
                  srl          t5, sp, tp
470:              and          s3, a3, a1
471:              and          a6, s3, s5
472:              sub          tp, t4, t6
                  ori          a6, a1, -169
                  lui          a7, 264101
475:              sub          t6, tp, s3
                  bltu         t2, s4, 480f
                  ori          a3, t4, -29
                  sltiu        a4, t6, 1949
                  and          ra, t2, s9
480:              beq          t5, s0, 484f
                  slli         t1, ra, 7
                  sltu         sp, s4, s8
                  bne          s6, s5, 485f
484:              bgeu         zero, a7, 485f
485:              blt          a5, a0, 491f
                  bne          ra, s4, 495f
                  bne          zero, t0, 494f
                  and          t6, t6, a3
                  auipc        s1, 364322
                  sltu         a4, a3, t3
491:              bne          s4, zero, 496f
                  addi         a5, s5, -1364
                  bge          t0, t4, 509f
494:              srl          s7, s2, s8
495:              slt          zero, s4, t3
496:              addi         s1, a4, -1558
                  bne          a2, zero, 514f
                  srli         a7, a6, 1
                  and          a7, t2, s5
                  xori         t3, a7, -1370
                  xori         s1, s8, 826
                  slt          s1, s1, zero
                  slt          t3, s8, s11
                  add          t4, a7, s0
                  auipc        gp, 1026917
                  xori         a7, t2, -1693
                  xori         a4, s11, 1233
                  srli         s5, a4, 8
509:              slt          s9, s2, t2
                  sltu         t1, a2, s3
                  bltu         t0, s5, 530f
                  slli         s0, a7, 15
                  srai         a4, s4, 28
514:              sll          a6, zero, s1
                  lui          t3, 953084
                  srl          a4, s9, t4
                  slli         s9, s2, 0
                  and          t4, s9, s1
                  beq          sp, s10, 523f
                  slli         t2, a6, 11
                  beq          s1, t6, 539f
                  bgeu         t1, s6, 536f
523:              add          gp, t2, a3
                  lui          s0, 506429
                  xori         tp, s5, -1485
                  andi         s3, a6, 514
                  add          s3, a0, a2
                  bltu         s7, t1, 546f
                  addi         ra, tp, 996
530:              srl          s8, t4, a5
                  bne          t4, ra, 533f
                  lui          s6, 400461
533:              bge          s4, zero, 547f
                  slti         s3, s8, -1436
                  xori         a3, ra, -1034
536:              and          sp, s10, zero
                  slt          t1, a2, s11
                  ori          t2, a1, -1815
539:              slli         tp, t2, 26
                  auipc        a0, 219873
                  bge          s6, s0, 552f
                  slti         s11, s8, 1167
                  bltu         a4, s8, 562f
                  slt          tp, s6, zero
                  bne          a4, a1, 555f
546:              addi         s11, s11, 273
547:              xor          s5, t0, t6
                  sub          s0, tp, a5
                  srl          t3, s0, s11
                  add          s1, zero, a4
                  xor          t0, s5, a7
552:              ori          s11, ra, 869
                  sltiu        s10, a2, -1898
                  and          a5, s4, t1
555:              add          s1, t0, s3
                  beq          s8, s0, 564f
                  beq          ra, s2, 572f
                  ori          s11, s0, -1164
                  sub          ra, s9, ra
                  bne          a7, ra, 578f
                  xor          a4, s0, a6
562:              sltiu        t4, gp, 904
                  sltu         s7, t1, t3
564:              sra          t0, gp, a5
                  addi         a0, s3, 1961
                  nop
                  sltiu        a6, a4, 1958
                  addi         s5, s8, 559
                  or           a0, s2, s8
                  slli         s6, a1, 12
                  sll          a5, s3, a7
572:              bgeu         t3, s5, 588f
                  or           ra, s7, zero
                  beq          a0, s3, 577f
                  slt          zero, t5, gp
                  sll          ra, t0, t4
577:              srl          s5, s11, t4
578:              ori          t4, s8, 719
                  addi         t1, a3, -366
                  addi         s7, t6, 926
                  lui          ra, 573
                  or           a3, s9, a1
                  bge          s4, s10, 602f
                  srl          a0, a2, a7
                  nop
                  add          a4, a3, zero
                  srl          s2, tp, s0
588:              lui          s9, 891459
                  blt          s2, s8, 599f
                  sub          t1, s10, s9
                  andi         a0, a4, 1091
                  bne          s1, a3, 610f
                  srl          a4, s0, t3
                  sltu         a0, tp, zero
                  bltu         t3, t1, 604f
                  slti         s11, a5, -1464
                  sll          t3, t6, s11
                  or           a5, a3, s7
599:              slli         a7, a0, 23
                  srai         gp, t3, 8
                  bltu         zero, a0, 618f
602:              slti         a5, a3, 2023
                  nop
604:              add          s11, s0, s0
                  lui          gp, 249459
                  nop
                  sltiu        a4, a2, -1963
                  nop
                  sub          s0, t6, a5
610:              slt          s7, s6, a4
                  srl          s8, s6, s3
                  sub          s7, s9, t5
                  bne          a1, t0, 623f
                  sltiu        t3, s1, 1383
                  and          s6, t0, a3
                  sltiu        s3, zero, -1287
                  nop
618:              sub          t3, t2, t2
                  sll          a6, s6, s8
                  sll          t2, s3, t5
                  srl          t3, tp, s0
                  xori         t1, sp, 1617
623:              ori          a4, tp, 56
                  bltu         a7, t4, 631f
                  bltu         t0, a4, 633f
                  xori         tp, a4, -1087
                  bge          t5, t6, 645f
                  bge          s5, a1, 644f
                  beq          a7, t1, 631f
                  blt          sp, a6, 644f
631:              sltu         s3, t5, s0
                  bltu         t5, t1, 636f
633:              sltiu        t5, tp, -538
                  auipc        s6, 913736
                  beq          s8, t2, 649f
636:              sltiu        t3, s9, -164
                  slt          s2, t5, a5
                  xori         t5, s6, 1586
                  bltu         s8, t4, 640f
640:              lui          s5, 570631
                  xori         t6, s7, -1083
                  sub          s10, a4, s10
                  sltiu        s1, gp, 797
644:              blt          t1, s4, 663f
645:              sra          a0, t3, s0
                  or           a6, t6, a5
                  srli         a3, t2, 9
                  sll          s8, a3, t2
649:              srai         t1, t1, 20
                  blt          tp, t0, 653f
                  slti         a6, ra, 1735
                  andi         s0, tp, -1713
653:              slt          t4, s11, t2
                  bge          s4, s11, 663f
                  beq          t6, s0, 659f
                  auipc        s2, 891877
                  beq          t0, t3, 663f
                  slli         a0, a0, 19
659:              add          s6, a0, a0
                  andi         s9, a1, -676
                  andi         a5, t0, -1972
                  srl          s5, a4, t0
663:              sra          s1, a0, s8
                  add          tp, ra, s2
                  beq          s2, a4, 670f
                  nop
                  bltu         s10, s5, 686f
                  auipc        t1, 884471
                  bne          s7, a6, 672f
670:              beq          s11, t1, 686f
                  sra          s7, s10, s3
672:              bge          s7, a5, 676f
                  add          s7, a3, s0
                  sltiu        s3, t6, -527
                  sll          s9, a7, a3
676:              blt          s7, tp, 694f
                  slt          t4, s6, t2
                  bltu         s3, s5, 683f
                  sltu         a0, s6, s1
                  sra          ra, t4, zero
                  sub          a7, t6, s1
                  blt          a7, t3, 684f
683:              bgeu         s8, gp, 702f
684:              and          a4, sp, t5
                  and          t0, a5, s5
686:              xori         a5, t0, 1896
                  bne          t5, sp, 698f
                  xori         ra, a0, -1062
                  srl          a5, s7, a7
                  slt          s3, s3, t0
                  nop
                  xor          s0, t5, t4
                  srl          s2, s2, s9
694:              and          sp, s7, gp
                  ori          t4, s8, -1053
                  slli         a6, s0, 16
                  sll          zero, s8, t1
698:              or           t6, t5, t4
                  andi         s8, gp, -1670
                  bgeu         t4, zero, 715f
                  ori          s6, t3, -1213
702:              srli         s5, s7, 24
                  sra          t4, a2, ra
                  bge          a2, gp, 723f
                  bge          s11, s0, 709f
                  and          zero, t2, t4
                  andi         s11, sp, 975
                  sll          t0, gp, t6
709:              lui          tp, 830776
                  lui          s10, 462773
                  beq          t6, s3, 716f
                  sll          gp, t4, s2
                  slli         s8, a0, 29
                  bge          a5, s9, 718f
715:              beq          s10, s2, 733f
716:              sltiu        s2, a4, -579
                  sra          s3, t0, s10
718:              srl          t4, ra, gp
                  sll          s10, t1, s2
                  ori          s2, s0, 810
                  bltu         t5, s9, 726f
                  ori          t5, s0, 715
723:              srl          a0, a3, t6
                  or           t0, s10, a2
                  sra          t1, t2, s7
726:              slt          zero, s7, a7
                  andi         s1, s0, 1367
                  slli         gp, a1, 7
                  and          a7, t2, t0
                  bge          s6, s2, 733f
                  nop
                  slti         a7, s10, 789
733:              sll          s5, t5, a3
                  sltu         s0, s1, a7
                  srli         t5, sp, 15
                  addi         a3, s9, 1677
                  nop
                  blt          s11, a4, 746f
                  auipc        s8, 430352
                  srai         t1, ra, 5
                  slti         a6, a1, -1060
                  nop
                  beq          t0, a1, 762f
                  xor          s0, a7, a6
                  bgeu         t0, t4, 759f
746:              blt          t4, t3, 756f
                  blt          a0, tp, 754f
                  or           t4, s1, s2
                  xori         sp, a2, -1184
                  addi         s7, t4, 1944
                  add          a3, s9, a4
                  sll          a6, t2, s0
                  lui          s1, 953256
754:              and          s5, sp, s4
                  slti         s3, s11, 1281
756:              beq          s5, s11, 772f
                  slt          s3, t4, t5
                  xori         s3, tp, -392
759:              slli         s3, t4, 20
                  slli         s2, a6, 18
                  bge          a4, s0, 762f
762:              xor          s1, t5, s10
                  addi         s0, sp, -663
                  and          s5, a5, s8
                  nop
                  slti         tp, t0, 534
                  sub          s1, s1, t3
                  and          a7, sp, t5
                  sub          t4, tp, sp
                  sll          s1, a6, zero
                  srl          s10, s4, a7
772:              srl          t3, s1, t1
                  bne          sp, a2, 784f
                  lui          zero, 278093
                  sltiu        s9, t2, -952
                  lui          a6, 982311
                  slt          s3, s0, a0
                  slli         a5, s3, 18
                  auipc        gp, 52321
                  bne          t2, t1, 794f
                  bne          t3, s4, 790f
                  beq          a3, a5, 798f
                  sll          t6, t3, s2
784:              addi         a3, s10, 918
                  andi         t6, gp, 1015
                  sra          zero, s1, a5
                  auipc        zero, 448375
                  srl          t2, t6, a6
                  add          t1, s8, s4
790:              slt          t4, s3, a2
                  lui          s2, 442007
                  andi         tp, t2, 462
                  slti         a5, t1, -1184
794:              srl          zero, sp, a3
                  blt          a7, zero, 805f
                  auipc        s8, 521009
                  blt          t0, t5, 815f
798:              add          a6, s10, s0
                  nop
                  srai         t4, s1, 4
                  bne          a3, t4, 816f
                  xori         t1, s0, -1602
                  slt          a4, ra, a3
                  srli         a5, t1, 27
805:              sub          t2, t1, tp
                  srai         s0, gp, 1
                  beq          a5, a3, 825f
                  xori         s8, s7, 124
                  bge          a6, t1, 812f
                  srl          t6, a7, s11
                  or           sp, a6, sp
812:              or           t3, a2, s4
                  sra          a5, s0, s1
                  add          a6, ra, s4
815:              and          s3, s7, t6
816:              bge          s2, t0, 833f
                  add          gp, s0, s0
                  beq          a0, a1, 824f
                  srli         sp, a7, 18
                  lui          s11, 972742
                  bge          s1, s4, 823f
                  xori         t2, s4, 1317
823:              slti         s9, sp, 1667
824:              bne          t1, s2, 843f
825:              andi         t4, sp, 347
                  bltu         a4, s6, 828f
                  srli         s2, s1, 23
828:              bgeu         a5, tp, 837f
                  auipc        s8, 605942
                  sltiu        s10, t5, -122
                  lui          tp, 308541
                  sra          a5, t1, t1
833:              bne          tp, s4, 837f
                  and          a4, s3, s5
                  sub          t6, a1, a7
                  sub          s0, a6, s11
837:              sltu         a7, t2, s6
                  nop
                  bgeu         s5, s7, 857f
                  addi         a4, s10, -1703
                  bge          a6, a0, 860f
                  blt          s1, t2, 844f
843:              beq          a1, t6, 859f
844:              nop
                  slti         t6, a6, 1558
                  nop
                  add          s10, t0, s1
                  srai         a7, s4, 24
                  xor          t2, zero, a4
                  bltu         t2, s8, 859f
                  slli         t3, sp, 5
                  beq          s1, t4, 862f
                  sll          t5, a0, t1
                  lui          s0, 336157
                  sltiu        a3, s8, -1874
                  andi         s2, t1, 2017
857:              slli         t2, t2, 10
                  sltu         t4, s7, t2
859:              sll          a0, s11, t2
860:              sra          a7, s11, s7
                  auipc        s6, 232818
862:              srl          t6, t4, t5
                  auipc        t1, 870543
                  add          t3, t6, a2
                  lui          s8, 537458
                  slt          s7, t1, gp
                  bge          a6, s2, 878f
                  sltu         a0, t3, s5
                  xor          s3, ra, t5
                  or           gp, a2, a6
                  beq          t2, a5, 888f
                  srai         s0, t4, 19
                  sltiu        a5, s0, -1168
                  slt          t6, sp, s1
                  ori          a3, s0, 1317
                  or           t2, s11, s1
                  nop
878:              slti         s7, s8, 664
                  xori         ra, s4, 339
                  andi         s8, t6, -415
                  sltiu        t1, s0, -742
                  srl          zero, s6, gp
                  srai         s2, gp, 30
                  lui          a4, 599436
                  sub          a0, s1, a0
                  srl          a3, zero, s1
                  xori         a6, s9, -1663
888:              or           s1, a1, a5
                  sltu         a4, s2, s2
                  ori          s11, t5, 1914
                  addi         sp, a5, -1035
                  sra          a3, s11, a6
                  sltu         s9, s6, t6
                  bltu         t3, t5, 899f
                  andi         s8, t5, 558
                  la           s8, region_1+1366 #start riscv_load_store_rand_instr_stream_11
                  srli         a7, s4, 25
                  sb           t1, 153(s8)
                  sh           t1, 144(s8)
                  lbu          t1, -40(s8)
                  auipc        s0, 931693
                  add          s2, a2, t2
                  lbu          s1, -59(s8)
                  sra          t1, a5, s4
                  srai         a6, a7, 5
                  lb           ra, 38(s8)
                  lbu          t4, -215(s8)
                  or           t0, s8, t6
                  lh           a6, -24(s8)
                  or           t2, ra, s10
                  sb           s4, 55(s8)
                  lb           a5, -37(s8)
                  xori         s10, sp, 638
                  and          s3, s2, s6
                  sb           a2, 239(s8)
                  slli         s1, s11, 3
                  lbu          s9, 251(s8)
                  lbu          t1, -147(s8)
                  sll          sp, sp, s2
                  lbu          a3, 197(s8)
                  srai         a5, s5, 31
                  lbu          ra, 148(s8)
                  sltu         a3, t3, s2
                  lbu          t0, 8(s8)
                  srli         s0, a2, 8
                  sh           s2, 0(s8)
                  slt          t3, s4, a5
                  andi         s3, s3, -203
                  lbu          tp, -167(s8)
                  lbu          ra, 173(s8)
                  or           s7, t2, a0
                  sltu         s5, s5, s1
                  lb           sp, 83(s8)
                  srli         gp, s7, 28
                  lb           a6, 169(s8)
                  xor          a4, a5, t5
                  lh           a6, 34(s8)
                  and          t0, s9, tp
                  sb           sp, -157(s8)
                  lhu          ra, 206(s8)
                  lh           a0, -230(s8)
                  add          a3, gp, tp
                  sb           sp, -243(s8)
                  sh           s4, 152(s8)
                  sub          a5, a4, t2
                  srli         s5, a5, 5
                  lbu          a6, -133(s8)
                  sltu         tp, a3, s8
                  lh           s0, 120(s8) #end riscv_load_store_rand_instr_stream_11
                  bge          a0, s0, 915f
                  sltiu        s7, t5, 864
                  slti         s1, s10, 2018
899:              slt          t3, a5, a7
                  srai         s5, a0, 27
                  bltu         zero, t2, 905f
                  srl          s8, a0, s4
                  or           s1, ra, s2
                  beq          t4, s7, 908f
905:              slt          a4, s11, a6
                  slli         sp, a6, 15
                  slli         s3, s4, 14
908:              slli         zero, a0, 3
                  slti         t3, t2, 2000
                  beq          t0, s8, 924f
                  auipc        a5, 953312
                  ori          s3, s5, 1701
                  xori         s1, zero, 960
                  bge          t5, zero, 915f
915:              bge          s1, tp, 925f
                  bltu         zero, t0, 922f
                  srai         a5, s10, 19
                  slti         a6, sp, -1999
                  nop
                  lui          sp, 62543
                  ori          t1, t0, 1105
922:              add          s9, s8, s11
                  sltu         a4, a3, a2
924:              sub          ra, s5, a3
925:              sltiu        a3, t1, 289
                  lui          t2, 253843
                  sub          s0, a5, t2
                  srl          s11, s2, s3
                  addi         a5, t1, 468
                  addi         s1, a4, -1973
                  bge          a0, a7, 950f
                  slli         t4, t1, 1
                  add          zero, a1, a6
                  ori          ra, a5, -988
                  slt          a7, a7, t0
                  bgeu         a6, a4, 954f
                  slti         s1, s3, -1344
                  srli         s1, s3, 29
                  xori         a7, a0, 1500
                  bgeu         t1, s3, 942f
                  bne          s5, zero, 949f
942:              xor          s9, t4, a7
                  addi         s9, s1, 204
                  bge          a2, gp, 947f
                  srai         s10, t3, 18
                  lui          a4, 485678
947:              slti         a0, t5, 1263
                  bne          s6, t4, 955f
949:              nop
950:              nop
                  slt          s8, s6, t0
                  srai         gp, a3, 31
                  lui          tp, 730338
954:              ori          a7, s6, 481
955:              xori         s3, s8, -859
                  auipc        t0, 218731
                  ori          t0, a2, -832
                  blt          a1, s3, 963f
                  srli         t4, tp, 7
                  bge          s1, a5, 964f
                  sltiu        a6, s1, 1380
                  beq          s9, a5, 971f
963:              and          tp, t3, t1
964:              or           gp, a7, a3
                  srai         s2, s10, 8
                  sub          ra, s2, s2
                  auipc        a0, 905388
                  srai         a3, s8, 25
                  bgeu         a2, s0, 984f
                  srai         sp, t0, 29
971:              addi         s5, sp, 1746
                  blt          ra, s9, 988f
                  sltiu        s1, gp, 1877
                  bne          t3, s5, 992f
                  nop
                  sra          a6, a3, s11
                  xori         t3, t6, 1683
                  bne          s5, gp, 981f
                  sub          sp, a7, a1
                  slti         s8, s2, -308
981:              nop
                  bne          t4, t2, 996f
                  sll          gp, t5, s6
984:              slti         s6, s3, 984
                  sltiu        s6, a0, -549
                  slt          s5, t5, a5
                  or           t0, s2, tp
988:              sltu         s10, zero, s8
                  add          s0, s1, a5
                  sra          t5, a6, s4
                  bne          s0, tp, 1005f
992:              slli         s6, s10, 2
                  bge          a5, gp, 1001f
                  bltu         t5, s5, 995f
995:              auipc        s2, 1025071
996:              srai         zero, a0, 5
                  blt          zero, a7, 1016f
                  ori          s6, s7, 1188
                  xori         s8, a3, -1388
                  sra          sp, s5, s11
1001:             bge          a3, a2, 1017f
                  add          s1, a6, sp
                  and          t0, a4, a3
                  srli         s0, s9, 4
1005:             sltu         a4, s0, s2
                  srli         s3, s9, 26
                  bge          s0, s10, 1016f
                  or           t3, s8, s9
                  srai         gp, t0, 17
                  addi         t6, t3, -157
                  blt          s8, zero, 1027f
                  sltiu        s10, s0, 638
                  srl          a5, a7, s6
                  bge          gp, sp, 1024f
                  or           sp, zero, s3
1016:             slti         tp, t5, -398
1017:             auipc        sp, 1021037
                  nop
                  bgeu         a6, tp, 1024f
                  xori         t0, t2, 436
                  andi         s5, tp, 118
                  bne          a2, s4, 1041f
                  sra          s9, s3, t1
1024:             xor          s3, s11, s8
                  auipc        a5, 496007
                  slt          t2, a3, ra
1027:             lui          s10, 274701
                  srli         t2, zero, 23
                  andi         t0, s9, -1296
                  beq          a0, s10, 1032f
                  auipc        s9, 487406
1032:             addi         t1, s4, -409
                  slli         s11, t5, 18
                  slti         s9, sp, 190
                  and          zero, a7, s8
                  slt          t2, sp, s4
                  srl          sp, t5, s1
                  xori         zero, a6, 1471
                  xor          s7, a0, t2
                  ori          s10, zero, 988
1041:             sub          t6, ra, s2
                  and          s6, s4, sp
                  andi         tp, s11, 974
                  sltu         s0, s9, tp
                  beq          t3, a5, 1056f
                  bltu         a6, s9, 1051f
                  slt          a5, t5, sp
                  add          s0, t4, a4
                  beq          s6, t4, 1067f
                  xor          tp, gp, s10
1051:             bltu         t6, t4, 1053f
                  bge          t5, a0, 1071f
1053:             bne          s1, a5, 1063f
                  sra          s9, a3, s3
                  bge          s6, tp, 1072f
1056:             lui          s2, 262847
                  lui          s2, 298999
                  blt          t4, s8, 1073f
                  ori          s5, s8, 508
                  sra          s9, s0, s10
                  andi         s2, gp, -631
                  addi         a6, s2, 997
1063:             sra          s6, t0, t2
                  ori          s6, a0, 1059
                  slti         s9, ra, 23
                  srl          s8, t1, s1
1067:             ori          a6, a0, 130
                  ori          s0, s6, 636
                  auipc        a0, 297261
                  bge          s1, t3, 1088f
1071:             sub          t6, t3, t2
1072:             and          a3, a3, t4
1073:             srl          s2, s1, s0
                  or           s8, gp, s2
                  auipc        t4, 517832
                  sub          s8, t0, t4
                  beq          ra, s10, 1083f
                  sltu         s7, gp, s10
                  slt          zero, t3, a0
                  andi         s11, ra, 848
                  sll          s8, a5, a7
                  srl          a7, tp, s0
1083:             lui          t1, 39906
                  ori          a6, a5, -1786
                  addi         s10, s5, -1949
                  sra          s8, t0, sp
                  xor          s5, s8, a7
1088:             srl          s8, s10, s6
                  beq          a2, zero, 1098f
                  blt          s2, ra, 1094f
                  sltiu        s9, t2, 952
                  blt          t5, a6, 1106f
                  xori         t3, s9, -903
1094:             sltiu        gp, t3, -480
                  bgeu         s9, a7, 1098f
                  bge          t3, ra, 1100f
                  nop
1098:             lui          a7, 640981
                  sub          a7, s9, gp
1100:             bltu         s11, s10, 1107f
                  bltu         s5, tp, 1104f
                  beq          t3, s6, 1120f
                  slt          t6, ra, a1
1104:             xori         s11, s0, -210
                  srl          s10, t2, a2
1106:             beq          s11, t6, 1110f
1107:             srai         zero, gp, 16
                  bge          s5, s4, 1122f
                  and          a7, s9, a7
1110:             bltu         tp, t2, 1114f
                  andi         tp, t5, 786
                  xor          s9, t4, t6
                  addi         ra, a6, 1152
1114:             beq          t1, s4, 1132f
                  xor          s11, s9, a5
                  lui          t4, 327271
                  addi         a4, s2, 383
                  addi         s10, t5, 208
                  sltu         ra, sp, a3
1120:             andi         t2, s11, -1813
                  srl          t3, a4, s9
1122:             srl          a6, s8, t5
                  srai         gp, t6, 9
                  add          s11, tp, s6
                  srl          a0, a4, t2
                  sltiu        s0, t3, 1179
                  sltiu        a6, s9, 1444
                  slti         t2, t2, -100
                  xor          s1, s4, a0
                  sub          a5, t3, sp
                  sub          t1, s2, gp
1132:             sra          a7, a4, s1
                  xor          t6, t6, a3
                  sub          t0, s9, s4
                  bne          s11, t0, 1153f
                  bne          t4, ra, 1152f
                  slli         t5, ra, 24
                  bltu         sp, s9, 1156f
                  addi         s7, s7, -1601
                  ori          s5, a6, 26
                  xor          a4, t5, s1
                  sub          s6, a1, a3
                  lui          s8, 421099
                  sltiu        t0, s11, -758
                  andi         a6, s11, -1459
                  slli         ra, a0, 5
                  beq          s6, a4, 1149f
                  bgeu         sp, s5, 1162f
1149:             sub          tp, ra, s0
                  sll          a4, a0, s4
                  nop
1152:             bne          t5, s0, 1161f
1153:             slt          tp, s11, s10
                  bgeu         s3, s7, 1164f
                  bgeu         ra, t1, 1170f
1156:             srli         a6, t6, 24
                  xor          t6, s10, t1
                  sub          t4, a2, s3
                  nop
                  sll          s9, a0, s4
1161:             lui          s8, 400555
1162:             srli         a5, t5, 31
                  xor          a3, t1, zero
1164:             and          tp, a3, a1
                  srli         t6, sp, 26
                  sltiu        s2, s6, -474
                  sltiu        t1, s2, -76
                  xori         a7, tp, 713
                  xori         s10, s0, -1986
1170:             add          s5, a6, t4
                  slli         s9, a1, 22
                  auipc        t0, 257007
                  slli         s2, a2, 10
                  nop
                  or           sp, a6, s9
                  andi         sp, a6, -279
                  srli         a7, t4, 19
                  blt          a6, t0, 1179f
1179:             bne          s10, s2, 1195f
                  bgeu         s3, a4, 1199f
                  blt          s1, s6, 1183f
                  addi         a7, s8, -525
1183:             srl          t4, a1, zero
                  andi         t0, s10, 1992
                  add          s2, a7, s11
                  lui          a6, 963613
                  sltiu        t6, s7, -892
                  bgeu         a0, a7, 1197f
                  lui          a3, 295199
                  srai         s6, s2, 29
                  blt          s11, t0, 1195f
                  slti         t4, a7, 545
                  andi         s9, s5, -344
                  and          a4, a1, ra
1195:             sltu         s5, a2, s7
                  slli         s8, a1, 8
1197:             and          t0, t4, s11
                  blt          a0, a2, 1205f
1199:             sltu         s6, s10, a3
                  bltu         s4, t6, 1210f
                  or           s0, s1, t2
                  slti         a3, t2, -1357
                  sll          s8, s10, s1
                  and          s6, s2, a5
1205:             andi         t1, t5, 1980
                  sltiu        t4, t6, -1343
                  bltu         a3, s3, 1212f
                  bne          a4, tp, 1216f
                  or           s9, a4, s1
1210:             srli         t3, a1, 18
                  add          t6, s4, t0
1212:             bne          s11, s7, 1217f
                  and          s10, s0, s1
                  slti         t4, s3, -1117
                  srl          ra, a5, tp
1216:             and          t1, t6, a2
1217:             slt          s9, t0, s4
                  add          s0, s4, s10
                  srai         a5, ra, 6
                  xor          s1, s8, s1
                  andi         t0, t1, -854
                  sub          t6, ra, s5
                  bge          s11, t5, 1229f
                  xori         s9, zero, -2017
                  srai         s8, t5, 4
                  or           a4, t6, sp
                  sll          a4, t4, a6
                  andi         a7, s10, 1242
1229:             add          t4, t6, s6
                  sll          s9, s3, tp
                  bltu         t2, sp, 1234f
                  or           s9, s9, a5
                  slli         a0, a1, 11
1234:             xori         a0, a0, -1596
                  beq          s8, t2, 1239f
                  sltiu        t6, s8, -1895
                  slti         s6, t5, 1165
                  slli         t2, ra, 14
1239:             and          a7, tp, t5
                  lui          t3, 200336
                  slli         t6, t4, 13
                  bne          a1, s2, 1245f
                  slli         s7, t0, 6
                  or           t6, s6, s7
1245:             add          zero, s8, a4
                  xor          t6, t6, a6
                  xori         a6, s2, 1514
                  ori          t0, a0, -1279
                  srai         a3, t2, 22
                  xor          s2, s5, tp
                  slt          t4, t2, s3
                  srli         t3, a3, 3
                  sll          s3, s2, s1
                  sub          ra, s11, t1
                  sltiu        a4, a5, 1366
                  sra          s11, t0, s9
                  addi         a5, t2, -737
                  andi         t5, s7, -875
                  blt          s6, t5, 1278f
                  slli         t3, s6, 17
                  sub          zero, a5, a5
                  srai         s2, a0, 27
                  sltiu        tp, a4, 1369
                  sltiu        gp, t2, 688
                  srl          s11, t6, s6
                  xori         a3, s0, 772
                  slti         s3, a6, -1175
                  slt          t1, s3, t5
                  bltu         s4, a2, 1288f
                  slti         a0, s11, -1647
                  srli         a7, t5, 6
                  bge          s5, a0, 1289f
                  or           s10, a7, s1
                  bge          gp, t4, 1285f
                  slti         ra, a3, -1718
                  lui          gp, 720548
                  and          s2, a3, t4
1278:             beq          a6, s6, 1284f
                  bne          zero, s7, 1297f
                  srli         t3, a3, 24
                  bge          a0, t1, 1300f
                  bgeu         s5, s11, 1300f
                  nop
1284:             slti         a5, s7, 723
1285:             srli         a5, t4, 9
                  slti         a5, s8, 1966
                  slti         s7, a4, 1364
1288:             sll          t2, s9, s5
1289:             ori          s1, a1, -1169
                  srai         ra, s5, 22
                  addi         s1, a6, 1951
                  srai         s0, s2, 7
                  bgeu         a2, t5, 1312f
                  bltu         a0, s10, 1312f
                  ori          s7, s3, -410
                  slti         s7, t4, 1274
1297:             ori          t5, t1, 988
                  sra          ra, a3, s10
                  sltu         t0, t2, a1
1300:             ori          t4, s3, 402
                  auipc        s2, 226852
                  auipc        s10, 265119
                  srl          ra, ra, s11
                  add          a6, a3, s5
                  bgeu         t1, s1, 1316f
                  bgeu         t0, s11, 1311f
                  slli         zero, s6, 2
                  ori          t5, s1, 578
                  xor          s7, t0, t0
                  andi         a0, t2, -1736
1311:             srli         t5, t1, 12
1312:             slt          s0, ra, s0
                  ori          a5, s9, 1976
                  slt          sp, a3, s8
                  srai         s2, s7, 7
1316:             bgeu         t3, a1, 1330f
                  srai         t0, a7, 22
                  xor          t2, t6, t4
                  lui          s11, 813587
                  xor          gp, s9, tp
                  beq          s7, s7, 1326f
                  sll          a0, a0, s2
                  bltu         a5, sp, 1326f
                  slt          s1, s3, t6
                  slt          gp, s1, s0
1326:             xori         t4, s4, -173
                  andi         zero, sp, 783
                  slt          t5, t0, s4
                  srli         gp, s2, 29
1330:             slli         s7, s3, 28
                  beq          t0, a6, 1339f
                  nop
                  lui          s6, 586880
                  or           a4, t1, t0
                  bge          sp, t2, 1354f
                  srl          a0, a5, s1
                  slli         s1, tp, 24
                  blt          tp, s7, 1355f
1339:             srai         s5, s9, 8
                  sltiu        s3, t3, -2042
                  or           t2, a2, s10
                  sll          a4, s0, s3
                  srai         a4, s2, 25
                  addi         s8, t4, -316
                  xori         a7, t4, -1342
                  bge          a7, t6, 1362f
                  slli         a6, a4, 9
                  sltiu        s8, t1, -595
                  blt          s7, t2, 1359f
                  lui          s8, 563797
                  sll          tp, s4, a5
                  sra          s6, s9, s0
                  sll          s5, t4, s6
1354:             slli         t2, t4, 17
1355:             sra          a3, s11, t4
                  sra          a5, s5, a4
                  xor          s8, a5, s6
                  srli         s10, a6, 10
1359:             addi         gp, s7, 1448
                  nop
                  lui          s0, 125103
1362:             srai         s10, sp, 21
                  sll          s0, s9, s7
                  addi         s11, s0, 1879
                  sltiu        s2, s7, 679
                  slli         t1, a2, 1
                  slli         gp, s10, 15
                  add          gp, a0, s10
                  ori          t2, tp, 1803
                  bgeu         a4, zero, 1379f
                  ori          t5, s8, 1674
                  or           t3, a0, a7
                  sltu         a0, t2, a0
                  sub          s5, gp, s10
                  blt          t1, a5, 1376f
1376:             bge          t5, t1, 1379f
                  addi         s8, a6, 672
                  or           sp, tp, s3
1379:             bge          a5, t5, 1383f
                  srai         a6, t1, 3
                  auipc        t4, 515131
                  bne          sp, t1, 1389f
1383:             slti         t0, s2, -484
                  xori         t2, s3, 1188
                  slti         a0, a0, 1300
                  and          s11, a2, t2
                  nop
                  or           s3, t6, s5
1389:             nop
                  addi         s6, tp, -1109
                  slt          gp, s2, t1
                  srl          a0, gp, s2
                  slt          ra, tp, tp
                  slli         s10, t4, 11
                  sra          s1, t1, a4
                  slt          a0, a5, s0
                  addi         s7, t5, 1188
                  andi         t5, a1, -1643
                  bltu         sp, t2, 1413f
                  sltiu        s11, gp, 374
                  addi         zero, s0, -1344
                  srai         t4, s8, 12
                  auipc        s10, 583361
                  slli         s2, s4, 5
                  srli         t4, a4, 0
                  lui          a5, 89632
                  srl          s11, sp, s8
                  srli         s8, s1, 2
                  beq          t2, zero, 1424f
                  srl          a7, t3, t3
                  and          s6, a1, a7
                  sltu         s10, a5, a4
1413:             bltu         zero, s10, 1415f
                  sub          a3, a1, t5
1415:             auipc        a4, 324143
                  bgeu         t6, ra, 1420f
                  sltu         a0, t5, s8
                  or           s9, s0, a4
                  ori          a3, s8, -1793
1420:             ori          sp, t2, 719
                  andi         t0, ra, 717
                  andi         tp, ra, -1322
                  add          tp, a4, s1
1424:             addi         t2, a6, -811
                  slli         zero, a7, 26
                  slt          s7, t1, s5
                  add          s6, t4, a5
                  sll          a0, a3, t1
                  addi         s5, gp, 1265
                  bne          s11, s11, 1434f
                  lui          zero, 977465
                  or           gp, a6, t0
                  beq          gp, t6, 1443f
1434:             ori          s2, a0, 1029
                  srai         s0, s5, 2
                  sub          s6, s10, s1
                  slli         a3, s2, 19
                  sll          a3, s6, s5
                  bgeu         t2, sp, 1441f
                  srai         sp, a6, 14
1441:             xori         t2, s1, 82
                  addi         s8, s11, 2020
1443:             sltu         s6, s0, t4
                  srl          sp, a4, a7
                  add          s1, s11, a1
                  sll          s5, s3, tp
                  blt          s3, s1, 1456f
                  bge          t6, t1, 1464f
                  sra          s7, a0, a2
                  auipc        a4, 70488
                  slli         t2, s8, 24
                  add          s6, s8, tp
                  bge          s11, t5, 1467f
                  sll          t5, s4, t3
                  xori         t3, ra, -630
1456:             or           t5, t4, a0
                  xor          t6, ra, s5
                  bge          gp, t4, 1462f
                  or           a7, a5, a1
                  andi         t0, sp, 1505
                  sltiu        s3, t0, 928
1462:             bltu         a5, s7, 1467f
                  ori          s0, gp, -756
1464:             or           s1, t3, a6
                  slti         s0, s2, 1144
                  slli         t2, a2, 5
1467:             sll          a7, t5, gp
                  sub          s9, a7, s9
                  add          s2, s6, ra
                  sltu         s3, s0, tp
                  sll          sp, s9, t0
                  and          a5, tp, t2
                  slti         s1, a4, -1718
                  and          t6, t6, t5
                  sltiu        s0, a0, -1962
                  sra          t0, a2, a3
                  xori         s10, s5, 561
                  slti         sp, s8, 682
                  bne          t1, s4, 1497f
                  xor          ra, t2, a2
                  or           t0, s7, s9
                  bgeu         s2, a5, 1498f
                  add          sp, s1, t3
                  beq          s11, a4, 1493f
                  auipc        s5, 804421
                  srai         s10, s1, 24
                  srai         s5, s4, 16
                  slt          s1, tp, t4
                  lui          t0, 558627
                  bge          tp, a2, 1509f
                  srli         s6, s3, 11
                  xori         a7, a5, 956
1493:             srl          s10, gp, gp
                  nop
                  sll          t4, ra, s11
                  and          s9, ra, a1
1497:             auipc        a6, 981998
1498:             sra          a6, t2, tp
                  slt          s11, t3, a4
                  lui          s10, 601851
                  slti         t3, a2, 986
                  slt          tp, t6, t5
                  xor          zero, gp, t1
                  andi         a7, t3, 1015
                  blt          s2, a6, sub_4_j6 #branch to jump instr
                  sltu         s10, a5, gp
sub_4_j6:         jal          t5, sub_5 #jump sub_4 -> sub_5
                  and          tp, s8, s7
                  auipc        zero, 424424
                  ori          t2, ra, -454
                  add          zero, t2, gp
                  auipc        t6, 666545
                  andi         s1, s11, -1169
                  slt          s2, zero, s11
                  slt          s7, s2, a3
1509:             srai         s7, a3, 26
                  lui          sp, 852439
                  blt          a0, s5, 1515f
                  ori          s7, s1, 1082
                  slt          s6, a4, t1
                  xor          t6, tp, t1
1515:             srai         a7, s7, 8
                  sra          s2, a4, ra
                  sub          s3, s10, s8
                  ori          t2, s11, 902
                  bltu         s6, s5, 1533f
                  slli         sp, ra, 16
                  sub          zero, t1, zero
                  sra          s5, s7, a3
                  srai         t4, s1, 11
                  slti         t2, s4, -1663
                  beq          s3, t4, 1542f
                  xor          s11, a1, s9
                  srai         t2, a7, 24
                  xori         s9, ra, -555
                  slli         s5, s1, 13
                  slli         s1, a1, 6
                  and          s5, a2, t6
                  and          s11, s4, s4
1533:             bltu         tp, a5, 1543f
                  addi         s10, t2, 1292
                  slt          a0, a1, s8
                  srl          a0, t3, t1
                  or           t5, a4, s11
                  sltu         s9, t0, t6
                  bltu         a7, s0, 1558f
                  addi         t2, t0, -1811
                  xori         sp, s7, 69
1542:             sll          s5, s2, zero
1543:             blt          t2, zero, 1559f
                  sltiu        s6, s4, 1063
                  auipc        t2, 202731
                  la           sp, region_0+716 #start riscv_load_store_rand_instr_stream_12
                  sw           tp, 128(sp)
                  lb           s0, -588(sp)
                  xori         s9, s8, 1193
                  xor          s7, t0, s6
                  lb           ra, 881(sp)
                  srai         s11, a0, 14
                  lbu          gp, 926(sp)
                  lw           s2, -628(sp)
                  sw           s10, 228(sp)
                  lb           a7, 708(sp)
                  sb           t4, -620(sp)
                  slt          a7, s5, ra
                  lbu          t1, 77(sp)
                  slli         a0, s11, 31
                  lb           s1, -455(sp)
                  sb           sp, 915(sp)
                  lb           t5, 85(sp)
                  sb           s5, 163(sp)
                  sb           a1, 1049(sp)
                  sra          t6, a7, s1
                  lb           a5, 889(sp)
                  sll          t6, gp, s3
                  lh           zero, 638(sp)
                  lhu          t3, -482(sp)
                  sb           a4, 939(sp)
                  sltiu        t5, t1, 882
                  lw           t0, 224(sp)
                  lb           s3, 1087(sp)
                  sltiu        t5, ra, 100
                  sh           t6, 714(sp)
                  slt          t2, a1, t4
                  lb           t0, 99(sp) #end riscv_load_store_rand_instr_stream_12
                  srai         t1, s9, 14
                  and          s5, tp, a3
                  lui          t6, 999514
                  srai         gp, tp, 23
                  srli         a0, a5, 2
                  srai         t3, s0, 15
                  slti         a5, s11, 2041
                  sltiu        t6, t5, 1529
                  andi         a0, s4, 1297
                  and          s8, s6, s1
                  slli         ra, s3, 14
                  xor          gp, a5, a4
1558:             sltiu        t2, s11, 206
1559:             srai         t4, t3, 31
                  srli         ra, gp, 18
                  ori          s9, a1, -377
                  bltu         a5, gp, 1567f
                  sll          t0, a6, t6
                  srai         s8, a5, 27
                  sra          a5, t5, gp
                  ori          tp, t0, 426
                  xori         t6, a7, -904
                  la           t4, sub_5
                  addi         t4, t4, 408
                  auipc        s11, 174414
                  sub          s2, s8, zero
                  add          s7, s2, t1
                  srli         s10, s0, 1
sub_4_j7:         jalr         t5, t4, -407 #jump sub_4 -> sub_5
                  add          t0, s6, t5
                  or           s1, a6, zero
1567:             xori         s1, s3, 757
                  xor          t3, zero, t5
                  add          t0, t6, s0
                  ori          t2, a0, 604
                  auipc        s3, 460435
                  lui          t5, 212622
                  and          s2, sp, t3
                  or           s8, s8, s8
                  beq          s1, a5, 1582f
                  srl          s8, a0, t1
                  or           t6, a0, a1
                  sltu         s9, ra, a5
                  nop
                  bne          gp, s7, 1583f
                  or           a7, s4, s0
1582:             beq          zero, s10, 1584f
1583:             bge          s1, s1, 1592f
1584:             or           s9, s5, t2
                  addi         t4, t0, 1434
                  bge          t1, a6, 1587f
1587:             slti         t5, s7, -1545
                  sll          t5, t4, a4
                  srai         sp, gp, 24
                  srai         ra, t0, 10
                  sra          s1, s7, a1
1592:             sub          t2, sp, s10
                  xori         s6, gp, 473
                  slt          a6, t2, t5
                  bgeu         s10, a4, 1613f
                  beq          s0, s4, 1598f
                  ori          t5, t3, 621
1598:             bge          t2, s2, 1616f
                  bgeu         a1, s8, 1614f
                  nop
                  sll          ra, a0, sp
                  bltu         tp, a6, 1605f
                  xori         a0, s10, -2007
                  bltu         a3, s6, 1608f
1605:             auipc        a5, 764301
                  srai         s8, t5, 25
                  or           sp, tp, s3
1608:             bge          t6, t5, 1627f
                  sll          tp, a3, a3
                  slti         s0, s6, 1460
                  bne          s0, ra, 1621f
                  bltu         a0, s9, 1623f
1613:             slt          s9, s8, s11
1614:             bgeu         s2, sp, 1622f
                  lui          s6, 573122
1616:             add          t3, a7, a1
                  bge          a3, a7, 1623f
                  and          t4, s10, s11
                  srai         a7, s3, 7
                  srl          t0, sp, t3
1621:             sra          a6, a6, s0
1622:             bne          a3, s8, 1632f
1623:             ori          s0, tp, 862
                  bge          gp, s5, 1628f
                  bltu         s5, a2, 1644f
                  lui          t1, 1034192
1627:             blt          s7, sp, 1645f
1628:             sll          tp, a2, ra
                  beq          s0, sp, 1643f
                  addi         s11, t2, -1470
                  and          t3, gp, tp
1632:             slt          s7, s9, gp
                  blt          t0, a5, 1646f
                  srl          sp, s4, tp
                  sub          s1, gp, a6
                  add          a3, s0, t0
                  bltu         s7, gp, 1639f
                  bgeu         s9, t6, 1646f
1639:             auipc        a5, 154044
                  or           a5, s2, zero
                  ori          ra, a3, 900
                  add          gp, t6, gp
1643:             sltiu        t4, t1, 954
1644:             sltiu        s1, t4, -1107
1645:             xori         s2, a6, -766
1646:             srai         s6, s7, 19
                  ori          s2, s5, 1199
                  sll          gp, gp, s7
                  lw           t5, 4(a2)
                  or           s1, gp, s2
                  lui          a3, 218285
                  addi         a2, a2, 60
                  or           s8, t5, t6
                  andi         s7, t2, -609
                  slti         s3, s4, -769
                  xori         s8, s1, -647
2238:             addi x4, x30, 0
2238:             jalr x4, x4, 0
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
.word 0x08d2223b, 0x7bd9e29a, 0x262e51c5, 0x7c536c7e, 0x1125d9dd, 0x7bcdf4f7, 0xc786074c, 0x0cf3674a
.word 0x4708b2df, 0x228c126c, 0x9c84ea53, 0x829f6511, 0xaa0061fd, 0x6931176b, 0x3be4d936, 0x4b57b55b
.word 0x3bed8963, 0xefd4bb54, 0x7f07c5be, 0xbb6929a8, 0x1d9ebdb0, 0x67b90280, 0xd93b8c12, 0x17d5f88f
.word 0xbfc48c05, 0x481654c6, 0x670944d9, 0x6da883d8, 0xc14080de, 0x01d09a69, 0x6dd9ff57, 0x6227c098
.word 0xde652a62, 0x116a9132, 0x7142ea00, 0x0f2c49ce, 0x47dcdb44, 0x8f089a33, 0x2b4dbd95, 0x002bc031
.word 0xb7b8e310, 0xf2b6b2fe, 0x61cd9529, 0xea5f68a1, 0x4b32a378, 0x90a7b19d, 0x21396475, 0xea6ff794
.word 0x661f049b, 0x66f7c71a, 0x11d2dec5, 0xf7fda3ae, 0x262b90f8, 0x428f2d40, 0xbac204b7, 0x5733611b
.word 0x5411d002, 0x9e27e958, 0xa1d18bd9, 0xf8c5a5cb, 0xcb6d171e, 0xcef49d98, 0x4387afe9, 0xc50dcac8
.word 0xb036f739, 0xd3e6c9ca, 0x8227fa8e, 0x3444ea69, 0xe40c6a21, 0x31d29fc5, 0x429bd600, 0x2fe1ac55
.word 0xb7ea0be7, 0x3da984f2, 0x30fbba53, 0xd197ea6b, 0xb700dccf, 0x51e5a608, 0x41ba7237, 0x193bb628
.word 0x2703c527, 0x08952d69, 0xae7a36b8, 0x060259a4, 0x0890a37e, 0xff96b677, 0x384579a4, 0xb8fbbfb9
.word 0x16f75ccf, 0x57113394, 0xac90b5fb, 0xb4b94532, 0xde4b6ddd, 0x42885827, 0x2d29ef67, 0xb7c7e789
.word 0xf0188d82, 0x1db2fabf, 0x3a9448ff, 0x7aa94a05, 0xfddc1558, 0x82951ebd, 0xc136802f, 0xf3485360
.word 0xc16cb975, 0x9b8d7621, 0x6053975b, 0x692977af, 0x96c31245, 0x3fb32026, 0xa0d4af6a, 0xaadfae6d
.word 0x8f0fc99d, 0x438396a3, 0x2507210a, 0x43834404, 0x8db64f0d, 0xabb5380f, 0x7bcd38c1, 0x9a93c8c2
.word 0x9a1c374a, 0xf9907c03, 0x51dab1ea, 0x8443a8bb, 0x38274285, 0x71da4c4d, 0xf43dd403, 0x2ee6d9f0
.word 0x002b9133, 0xc2f8fcdc, 0xeff54de5, 0x4d85b64e, 0x4e984686, 0xba69b8c3, 0x16d9c3dc, 0xd3174384
.word 0xab93a802, 0xd9964c12, 0x4b3a4681, 0x4b8a58fe, 0x4fd7f3e5, 0x74f7bcd8, 0x8e21d8d0, 0x8b391984
.word 0xc3c3b058, 0x61070df5, 0x8bd4cd81, 0x23bfa505, 0xc5269d70, 0x9e92117e, 0x527d7792, 0xe5025956
.word 0x99d71d8c, 0x2dbd98e4, 0xa06a4c4e, 0x11a9d3cf, 0x1f64b2c8, 0xea7cb00b, 0x84105359, 0x9cd1cba7
.word 0xe6c90558, 0xb42b534c, 0x446bdb84, 0x01674180, 0x944bb50a, 0xcf5f84fb, 0x16b5e6c6, 0xfb9f3400
.word 0x4601a7bb, 0xd7f8c6dd, 0x54e751b6, 0xdafd75d4, 0x2eb59c7e, 0x7c46cfd1, 0xe6c569c0, 0xb3736c7a
.word 0xb992e817, 0xf4fb903f, 0xe08d2240, 0x456f7025, 0xa7323a1c, 0xd5f1bb97, 0x7cf80388, 0x81f03cd4
.word 0x16dca59a, 0x296fba55, 0xcb3f49bc, 0x2be2db70, 0x9d4767af, 0xfeadfb42, 0x8dda4593, 0xd2839fe2
.word 0xc3be7bb8, 0xc604884d, 0xb8b0fa28, 0xbb773cb1, 0x8deba53f, 0xf5b35749, 0x9c20705e, 0x417042d3
.word 0xa0903f4d, 0x120fc296, 0x733fa9f8, 0x0fd12473, 0xe688e23e, 0x530ab464, 0xb80490e6, 0xdac7c883
.word 0x3da0af65, 0x649d4883, 0xa881b24e, 0x7a0264b1, 0x4cba82f5, 0x48cb7b87, 0x4af1219b, 0xb0e6bf19
.word 0x84af22ac, 0xe305ea0d, 0xecb2c7dc, 0xcb681f52, 0x08d4faf6, 0x8a48acd1, 0x546b6cbd, 0x89a6ed3a
.word 0x37bd2744, 0x4f436710, 0x80f85444, 0x62be2bad, 0x2ba54cf5, 0xce1a83c3, 0xa5e50b18, 0x10390fed
.word 0x05d59d62, 0x1a5138e1, 0xffc1f11e, 0xf32422ea, 0x183e6b9b, 0x583776f3, 0x37ae37bb, 0x17d401cd
.word 0x1ccdce9e, 0x6166105b, 0xff23d010, 0xa4e0f2e8, 0xea22f870, 0x203e5d4e, 0xd589c396, 0xaeb05822
.word 0x71866724, 0x28a5008f, 0xbc7b0383, 0x4cba5d08, 0x7c806e4d, 0xfcaf2834, 0x060bc83f, 0xcce64e6d
.word 0xbc90a2d7, 0x3a443076, 0x0346f0dd, 0xe11369bb, 0x4bc95966, 0xa785daba, 0x67678cdb, 0x241d5b7f
.word 0xb03d20df, 0x55d72854, 0x718a4c5c, 0x5820a66e, 0x28bc30f9, 0x56a0c0b2, 0xfc616692, 0x44ee9a20
.word 0xe34c9007, 0xa1dfc111, 0x522cf366, 0xd4907070, 0x2eb7deb2, 0xce7fdd87, 0xe4d941a1, 0x63103d92
.word 0x0d9861dd, 0x66ec2226, 0x4f49415f, 0x530f17ca, 0x45efadac, 0x4a551247, 0x91b67d54, 0xf71e384a
.word 0x40e2375e, 0xc72976c3, 0x05bd85db, 0x444033ad, 0xbfb45ea3, 0xba8a3ab5, 0x104572a1, 0x29487840
.word 0x7f9823cc, 0x6e24c48a, 0x89f30ff3, 0x06fe48a6, 0x365c8435, 0x128616eb, 0x3d53ff62, 0x57beb96e
.word 0x11e8106e, 0xf36377e6, 0xd9bf2890, 0xa2622e0b, 0x99117082, 0xd8d7ef0c, 0xa333defc, 0x5300ec29
.word 0xe7b28cbe, 0x470c0768, 0x2bbda953, 0xb65505ee, 0x2c3bea1c, 0x39f1d624, 0xf5018ecb, 0xc4a639c0
.word 0x885cc227, 0x730199ac, 0x1eec039f, 0x13fed7ca, 0x00affae8, 0x99409481, 0xcf16e170, 0x8a2cde86
.word 0x18976410, 0x81ef7956, 0x4ad6521a, 0x763a2f3c, 0x69eb89c5, 0xaacb3394, 0xd5f5836e, 0x71084767
.word 0x47ecf726, 0xc7174935, 0x3cf97f55, 0x1dc4d1a2, 0x42f7fb86, 0x058983cd, 0x7c0b77b5, 0xfc404870
.word 0xbb74517a, 0x335f0de2, 0xebebc8ff, 0x05186d02, 0xb62eacc1, 0xa9cb2585, 0x793b169b, 0x283219f1
.word 0x1ef3563e, 0x8fd41ee1, 0x2c480b72, 0x2f574686, 0x4f13ac35, 0x871b4f70, 0xcf7d7adf, 0x61fbe819
.word 0xbef5bac3, 0x83ec65f0, 0xf978a639, 0x52cd90dc, 0x93e6b8e5, 0xed9e5053, 0x3bca6b96, 0xe29729da
.word 0xf46331ee, 0x5f13de6f, 0x6752ae9e, 0x66dba49f, 0x6d3ac3cc, 0xfe0bc94d, 0xb582698a, 0x7ff96fa3
.word 0x918efcd6, 0x476348a7, 0x4428cc9b, 0x019d9ff3, 0xdd780ef5, 0x553fccf1, 0x26bf1552, 0xccb1a964
.word 0x962dca44, 0x707bab0f, 0x02ef0559, 0xfa06d5a1, 0x9919a190, 0xdd83e6be, 0x416cade5, 0x48914205
.word 0xffe742f5, 0xc1b31413, 0x431e352f, 0xa6455424, 0x8475cfae, 0xbbc538d2, 0x04428632, 0x97709bd5
.word 0xaeb08f60, 0x18c51ffb, 0x5c71936b, 0x2c79d616, 0xdabfee95, 0x02379045, 0x59154eec, 0x1bdb9970
.word 0x545b1a9c, 0x1834740b, 0xe22e11e5, 0xfb37417b, 0xa85e66c7, 0xa2a85182, 0x3d45a131, 0x3b604996
.word 0x4e689474, 0xe2bc258a, 0x45845379, 0x8572d4c1, 0x2058c2af, 0x7eb839f4, 0x9881e1e3, 0x96d8340c
.word 0xf450fbf3, 0xe3ba5456, 0xe803cb0d, 0xecd67934, 0x90d3edaa, 0x2c2a1ca3, 0x250d60ae, 0x2ead65e4
.word 0x63940a8d, 0x51f0247a, 0x9150a60c, 0xa1300a08, 0x4c90514a, 0xcf502200, 0x39d79036, 0xe641ebfe
.word 0x7b00b638, 0x84136255, 0xbc2aef75, 0x5e4cadba, 0xa4a19dd0, 0x91822b83, 0xfb0871be, 0x4229568e
.word 0x43172497, 0x72743240, 0xdb973df0, 0x9a15e880, 0xeda2e24c, 0x27a0bed5, 0x96960746, 0x2614b30f
.word 0xa7f58a2d, 0x839e98e2, 0x04a934a7, 0xa69bd25b, 0x4349abf5, 0xb1d71484, 0x3866097b, 0x0a0075d9
.word 0x59db0781, 0x3481a48b, 0xd938598a, 0xdb97c30f, 0x96ce7292, 0x6a9d4195, 0x82e2b81c, 0x086ac0cd
.word 0xb39fe308, 0x1ce0f102, 0xbcf231bc, 0x17e9b39b, 0x5632f262, 0x45b54527, 0x46d7c81d, 0x8eff55c0
.word 0xe569c022, 0x18a5dadc, 0xfa68cf52, 0x014a3a04, 0x8382056b, 0x6c7d6059, 0xe8afaa5c, 0x4be181ac
.word 0x90eec8a8, 0x3f2e2162, 0xfdf70267, 0x8a779610, 0x7b33a725, 0xed002901, 0x24fa6ef6, 0x9722b14e
.word 0x4003e3ef, 0x6f55fe20, 0x7965e7b1, 0xe3a47a55
.section .region_1,"aw",@progbits;
region_1:
.word 0xb3462181, 0x2b583f07, 0x96adf224, 0x7b8f0235, 0xa9d238cb, 0x5c0d58df, 0x6275bcce, 0x9ea8bf6b
.word 0x3be58298, 0xa4783e33, 0x9bbd364c, 0xa5965e50, 0x886abb41, 0x36f83cce, 0xe8e3f7fd, 0x67c53961
.word 0x28136213, 0x3f4b7fe2, 0x3b43d27b, 0x0a485849, 0x5638a4ee, 0xdea694e2, 0x54a8ff8c, 0x1e410554
.word 0xfadced90, 0xd36bc285, 0x4d38a977, 0x573de0fe, 0xa24a417a, 0x9d6ca158, 0x7c4b41e0, 0x5e0dd44e
.word 0xaa079d6a, 0xd6718a6f, 0x702f0ade, 0x37f665a3, 0xcd70ff7d, 0x2d2a4688, 0x8459c6f7, 0x5afb9850
.word 0x5ab0d34f, 0x549e2e99, 0x3d85b527, 0x0da6060d, 0x835beaac, 0xb4e79fa5, 0x8eef122d, 0x2948255b
.word 0x68dd4d0d, 0xfb82a6ae, 0xe38c2234, 0x42d869c9, 0xce41d872, 0x0d8bbf6e, 0x33f673a6, 0x3948dbd3
.word 0x6e81164e, 0x151f098f, 0x86c876b7, 0x87ec44fc, 0x8b6796a4, 0x4aa7cd2d, 0xd2331630, 0x825e83a7
.word 0x1d0258a2, 0xda2f4f1a, 0xe005455f, 0x01fb4565, 0x5024cdfc, 0x645559e5, 0x2d51fcaa, 0x6eba7eef
.word 0x24a30c1f, 0xca515d7a, 0x55ff6e94, 0xc1d180c6, 0xbfec1470, 0x06786e39, 0x9e81017d, 0x733e1b47
.word 0x85b8f5e5, 0x6e041468, 0x5461c16e, 0x7497b61b, 0x2d7deed2, 0x56325f49, 0xfb36da19, 0x310d44aa
.word 0xf4c0d77f, 0x909e82f0, 0x3cd4f72c, 0xaca20aae, 0x8390f7d9, 0xb2bcf866, 0xf4d22a9f, 0xbcdb96c6
.word 0x60f143e8, 0x5b83cae7, 0x4cc7c09c, 0x0bf191ab, 0x3303a3e0, 0xf30bc25b, 0x21b4fff0, 0xf967f068
.word 0xc622313e, 0xb706928f, 0x9714589a, 0x3cf4708c, 0x04260204, 0x8f57aa7a, 0x1bc3e19c, 0x61932eab
.word 0x16584998, 0x608f9a45, 0xc534ef0e, 0x4865f1b2, 0x4592609e, 0x013617b7, 0xebfa4123, 0xec10e19b
.word 0x6d20a669, 0xe22e770f, 0x9434e2bf, 0x329ec5cc, 0xa6cc4ac5, 0x4e52570f, 0x8c05b8c9, 0x111bd5a0
.word 0x600a1a8c, 0x571fd91f, 0x6320218f, 0x53384d92, 0xb04a59c0, 0x54f9c4f2, 0x5402c66d, 0x5ea4732d
.word 0xa506553b, 0x6cde1f56, 0xc3721ee8, 0x4e911854, 0xdf018634, 0x3f584fe7, 0x9b5692ea, 0xe582f43e
.word 0x2ca54be0, 0x4787ff27, 0xb2437064, 0x513e8e13, 0xf3ce458b, 0x390c3090, 0xb06980d4, 0x5e1668ae
.word 0xdf38455f, 0xf67c17c6, 0x750ce5fe, 0x4a236290, 0x99f97f8a, 0x23b3fe27, 0x59f5f0fe, 0x624644c3
.word 0x7f6092cf, 0xa63a0bf1, 0xc2dcf5b0, 0x87460f19, 0x0f2d6a8f, 0x9f3b124d, 0x1eb740eb, 0xefec9b20
.word 0x98f0a2ad, 0x72d5729d, 0xa34df739, 0x99507356, 0xf7bfcc61, 0xde4645ae, 0xa43df82d, 0x68b0b2d3
.word 0xc5a8c22a, 0xf671d048, 0xbb69181c, 0xdc1e6d2c, 0xd2f3b17e, 0xcc59ee5c, 0xf4d6b881, 0x8abb6e90
.word 0x79cd1ce2, 0x09a86645, 0xdce9d887, 0xb4d6a292, 0xf9cd7884, 0x049cf991, 0xf64eff4a, 0x6dcaeafb
.word 0xae7706d2, 0x74651302, 0x9ea9edf5, 0x5bc09d3b, 0x1f36d195, 0x15f1b8c9, 0x4b2b7abf, 0x524a7709
.word 0x2c403a75, 0xa0a3430b, 0x1b3d09e1, 0x2360c561, 0x8e1b8207, 0x0aeb133f, 0x461e4615, 0x2e5bf197
.word 0x8a844aef, 0x0304f563, 0x41eee5f3, 0x29e882d2, 0x31dff1a2, 0xaa536b73, 0x272be37c, 0xda5b0235
.word 0x086f6990, 0x366547d5, 0xd8df9710, 0x68dffbd4, 0x6c1ba413, 0x1657f775, 0x5334abcd, 0x4c5e6030
.word 0x892707a5, 0x94998439, 0xa5b7fcea, 0x5fbb2ee0, 0x62a82c75, 0x47d4e7e4, 0x20d66748, 0x0a2a7c34
.word 0xa42a7d02, 0xa2ccd128, 0x06d6790d, 0xa2461cf8, 0x24334421, 0x61673e85, 0xa47d99d3, 0xe5f94f01
.word 0x0cf0945b, 0xfce88e72, 0x69f70b44, 0x43794562, 0x129d684c, 0x2077d3e0, 0x904bf0c3, 0xe1407458
.word 0x0e76136e, 0xbe3d9148, 0xf3a7bfbd, 0xc23878a0, 0xe072c32a, 0xab15cbbb, 0xd996e437, 0x00257a67
.word 0x42a22271, 0x2e3f4011, 0xfb970cfd, 0xb24c369c, 0xb744eb73, 0x91c24ed0, 0xc4864cf2, 0xff79ea3e
.word 0x4c6a6c75, 0x78b0bf69, 0xe995bf19, 0xd0bc31b0, 0x9b911c31, 0x22c1fcd4, 0xb4999dd9, 0xb4bd90fe
.word 0xdb8e02de, 0x2884cb0c, 0xe95eab83, 0x2a3b4e5c, 0x73a2dc2f, 0x8f9aca96, 0x94deb6a9, 0xecc66224
.word 0x20c2442f, 0xa4182ab8, 0x1dca4d22, 0xf584b468, 0x5f4e2a95, 0x89da6776, 0xeb3f29c4, 0x31eb4c60
.word 0x6dee9e75, 0xc5b240d0, 0x5a70a9e5, 0x50e8eafb, 0xf16512b3, 0x714b70fe, 0x4de4a6a1, 0x1ff8131e
.word 0x8437fb7a, 0x9859cbdd, 0x47c7a070, 0x1c2df154, 0x0fd5357f, 0x9d34ec1d, 0xb5d8b8bf, 0x8ad727d7
.word 0xc3c1e934, 0x860e076c, 0xa8837940, 0xe26b20d1, 0x04ffe869, 0xa38fb958, 0x560df3bb, 0xf25bdeca
.word 0x4bb0d1bb, 0xee5de724, 0xf679b4e7, 0x139f7ede, 0x981661a9, 0xeabaee16, 0xa6d1d768, 0xf9c453af
.word 0xe88b5d1a, 0xfe1ddf19, 0x4654207d, 0xf659da72, 0xbf6cba5b, 0xa609da77, 0xa398034b, 0x7e4db0a0
.word 0x8ff6ddcd, 0xef21eeb2, 0xcf3b5c43, 0x1292deed, 0xed3829b0, 0xbb081b52, 0xf92f8e3f, 0xd04a957f
.word 0x499104fb, 0x6d0b2d34, 0x4caeb9ea, 0x30b6a5cc, 0xb4c5aed4, 0xd91ff2f1, 0x80e0a9d2, 0xb5eee3df
.word 0x7dc5443d, 0xc273b12d, 0x07896873, 0xb74eeb70, 0x661b2f48, 0xe91a6462, 0xf9182814, 0x8ed6bedc
.word 0x52292b15, 0x9bc9d2f1, 0x3dac66a4, 0x31f01fcf, 0xa78d92a8, 0xe132d3fb, 0xfe78e6b3, 0xac221598
.word 0x3e082884, 0x01f06791, 0xade69369, 0xedc931de, 0x9fa162e0, 0x3bf9627f, 0x1b55ad18, 0xb867f2bc
.word 0x2afcaa85, 0x9427c872, 0x30ac6db3, 0x50136fb0, 0xe04ffc60, 0x3bffb3f5, 0x8fa63a07, 0xa40b18f6
.word 0x49f7d1e2, 0x8dca996f, 0xeaadcdc8, 0x9c304c06, 0x213b7865, 0x626c56eb, 0x866ec63b, 0xf7e2db2e
.word 0x6ca5058f, 0x98db5211, 0x0916f7a5, 0x2a9ffaaa, 0x1ad512b1, 0x6ca662fa, 0x6957aa3d, 0x8217f35f
.word 0x2cca58b7, 0x4f5c0121, 0xdf2be526, 0xad5ab04a, 0xc2dc42f5, 0xa897b5c9, 0x8455b318, 0x73d9d971
.word 0x9976d223, 0x3da2dda1, 0x571c5938, 0x0cdd384d, 0x54584908, 0xde86e292, 0x073d99bf, 0xffe0df4e
.word 0x2ed24d9f, 0xed654883, 0x17b6d743, 0x4eb35fcb, 0x980cee24, 0x9f371e87, 0xbb699dc4, 0x6b6d4410
.word 0x8e5a7f8c, 0xb73b0eb6, 0xd95619dc, 0x0188598d, 0x13f8a718, 0x651ac340, 0xc2b464d9, 0xe37bfaf4
.word 0xc1167794, 0x9a0f7094, 0xf4875c91, 0x48b4a9b1, 0x2a829b6d, 0xc784c983, 0x288a9c8d, 0xd83fbb0c
.word 0x1f7bb114, 0x9e3372eb, 0xdb67a4e7, 0x90e36de5, 0x5df63657, 0xcc6bf488, 0x804989f9, 0x6f4c000a
.word 0x9432e6a9, 0x53a02f49, 0x414835f6, 0x8828412e, 0x5f65b6f9, 0x51566de0, 0xe7a0f32f, 0x8638619d
.word 0x439aecf7, 0xa4d1e34f, 0x987e53a3, 0x680a8b66, 0x93e15b1f, 0x16b72038, 0x05319f21, 0x3dd465a3
.word 0x7cf69e72, 0xe28eb2a0, 0x2d105065, 0x33324018, 0x972c331c, 0x1f7682f6, 0x86045977, 0x0779fb38
.word 0x6bd1fdf9, 0x5512febf, 0xde207a92, 0xb37b26ba, 0xf8e6e57b, 0x5423138f, 0xfbf23549, 0xcf640c1a
.word 0x022d74a3, 0x2a036254, 0xb1214a77, 0x9bfc750d, 0xe958c378, 0x45f0f425, 0x7aea5e60, 0x225af24d
.word 0x2fbfde34, 0x1c561212, 0x6d035e19, 0x1a509580, 0x457c9f84, 0x9acb53df, 0x17e54825, 0x8eb83945
.word 0x06d2098d, 0xda2892ca, 0x54d69683, 0x2373334e, 0x4faea40e, 0xabd157fc, 0x22458111, 0x50d2af9d
.word 0x6bf8ccd0, 0x3860062c, 0x60c02d9c, 0x6cff4867
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_2:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_3:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_4:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_5:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_6:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_7:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_8:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_9:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_10:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_11:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_12:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_13:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_14:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_15:
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
                  add x20, x12, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  add x20, x12, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x18, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x18, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x18, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x18, x15, ecall_handler
                  li x15, 0x1
                  beq x18, x15, instr_fault_handler
                  li x15, 0x5
                  beq x18, x15, load_fault_handler
                  li x15, 0x7
                  beq x18, x15, store_fault_handler
                  li x15, 0xc
                  beq x18, x15, pt_fault_handler
                  li x15, 0xd
                  beq x18, x15, pt_fault_handler
                  li x15, 0xf
                  beq x18, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

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
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x12, x20, zero
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
                  add x12, x20, zero
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
                  add x12, x20, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x12, x20, zero
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
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x12, x20, zero
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
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x12, x20, zero
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
