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
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0xfa7f9b6f
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xc
                  li x4, 0x122592f6
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xd0fd26b2
                  li x9, 0xf6a36f7e
                  li x10, 0xc
                  li x11, 0xfe00a7be
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x7
                  li x15, 0x80000000
                  li x16, 0x16df19c4
                  li x17, 0x0
                  li x18, 0x7fe5f1a5
                  li x19, 0xf1135013
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x5e22d6ae
                  li x23, 0xd79804f8
                  li x25, 0xbfdf4320
                  li x26, 0xfe43d643
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x25af1ac8
                  li x31, 0x0
                  la x8, user_stack_end
main:             la           sp, region_1+276 #start riscv_load_store_rand_instr_stream_1
                  lbu          s10, 237(sp)
                  or           a1, t5, tp
                  lb           s7, 907(sp)
                  sll          s2, a3, a3
                  lui          a3, 849139
                  slt          s4, s6, t5
                  addi         s6, s8, -1592
                  xor          t2, t3, t4
                  lbu          s11, 187(sp)
                  slti         zero, s8, 1996
                  slt          s10, s1, a0
                  srai         t2, s11, 6
                  andi         s6, tp, 381
                  slti         t5, a4, -163
                  lbu          t1, 399(sp)
                  sltiu        a5, s7, -732
                  xori         a0, s0, -77
                  xori         s11, s2, -1667
                  lbu          gp, 997(sp)
                  lhu          t5, 406(sp)
                  xor          zero, s5, s0
                  add          a0, s10, t1
                  srai         a7, s5, 6
                  nop
                  slli         s4, s5, 18
                  andi         s9, a0, 8
                  sll          s1, s4, gp
                  slt          a0, s9, sp
                  ori          gp, a7, -266
                  lbu          a7, 1227(sp)
                  lbu          t3, 1405(sp)
                  addi         s1, a7, 1278
                  andi         s2, s9, 1194
                  slti         s3, a4, 1731
                  sb           t4, 1174(sp)
                  lbu          s4, 690(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+466 #start riscv_load_store_rand_instr_stream_2
                  auipc        a2, 426264
                  lw           s11, -314(sp)
                  slli         s7, ra, 17
                  lui          a3, 555171
                  sll          a7, a7, a7
                  sub          t1, t5, zero
                  sltu         ra, a3, a5
                  lbu          s4, 923(sp)
                  lui          s4, 329055
                  sub          t4, a3, t0
                  srl          t1, s4, a2
                  sub          s9, t1, a5
                  sra          t3, t2, t1
                  sll          a1, t6, t4
                  nop
                  srli         a7, s9, 22
                  lbu          s9, 547(sp)
                  auipc        a5, 796312
                  srli         a2, s11, 21
                  slti         t6, s8, 600
                  slt          a0, t4, t2
                  sb           a2, 1192(sp)
                  sra          tp, a7, t3
                  slt          t5, s1, gp
                  slli         t0, s1, 18
                  auipc        a6, 1005806
                  sb           s1, -347(sp)
                  nop
                  lb           a6, 1060(sp)
                  nop
                  ori          s2, s5, 519
                  lb           a3, -350(sp)
                  srli         a6, s6, 0
                  sltiu        tp, t4, 1566
                  lh           t1, 118(sp)
                  sll          t0, sp, t6
                  lhu          t2, 1406(sp)
                  sb           s7, 1252(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+1886 #start riscv_load_store_rand_instr_stream_0
                  lb           s1, 2(a3)
                  sll          s6, s9, a0
                  sh           gp, -12(a3)
                  srli         s4, t2, 5
                  sb           ra, 7(a3)
                  andi         t4, s2, -1778
                  addi         a0, t5, -1262
                  sb           a5, 0(a3)
                  sb           t3, 3(a3)
                  slt          gp, a3, s8
                  xor          s6, s4, t0
                  srai         gp, s2, 17
                  sb           s6, 14(a3)
                  slt          t4, s2, s2
                  sw           s3, 10(a3)
                  sh           gp, -6(a3)
                  slti         s7, s6, -1984
                  lbu          t4, -8(a3)
                  lb           t2, 7(a3)
                  sb           t4, 0(a3)
                  lb           s9, 10(a3)
                  xori         s6, a7, -835
                  sb           a1, -4(a3)
                  sb           s8, 5(a3)
                  lw           s5, -14(a3)
                  sh           s7, 8(a3)
                  lw           sp, 2(a3)
                  lhu          s7, -2(a3)
                  andi         t5, t1, 1835
                  sh           s2, 6(a3)
                  lb           a1, -10(a3)
                  sb           s10, 4(a3)
                  sb           ra, 9(a3)
                  lw           a0, 2(a3)
                  srl          a5, t6, t6
                  lhu          t4, -6(a3)
                  lbu          t5, 13(a3) #end riscv_load_store_rand_instr_stream_0
                  sub          s7, t3, s7
                  nop
                  sra          s1, gp, s0
                  addi         t6, t6, 1536
                  xori         a0, t2, -450
                  srl          s9, a2, t2
                  slti         s11, ra, 745
                  and          a0, t0, s3
                  ori          ra, s8, 717
                  sub          a3, gp, a3
                  slli         a3, a2, 26
                  or           zero, s2, t5
                  srl          tp, s7, a7
                  add          sp, zero, t1
                  or           sp, tp, t5
                  auipc        a7, 981425
                  add          t6, a1, s2
                  sltiu        s11, t1, 1378
                  nop
                  srli         a6, s2, 2
                  beq          t6, zero, 28f
                  xori         sp, t3, -997
                  and          tp, tp, t6
                  xori         s3, s4, -1911
                  add          t1, a1, t2
                  sltu         a0, a1, t3
                  sltu         a6, a0, a3
                  srli         a3, s7, 29
28:               bne          s6, s6, 45f
                  auipc        ra, 302771
                  la           a1, sub_1
                  andi         s10, t1, 1301
                  sll          s9, s6, a4
                  slti         s2, a5, -1896
                  addi         a1, a1, -655
                  sll          s6, t2, s10
                  srl          s11, s4, t4
main_j1:          jalr         ra, a1, 656 #jump main -> sub_1
                  addi         zero, a5, -1069
                  lui          s9, 138068
                  auipc        a2, 633850
                  and          gp, s2, s2
                  addi         t3, gp, 724
                  beq          t3, t4, 40f
                  slti         t3, a4, -1686
                  lui          s7, 627224
                  sub          a0, gp, t1
                  sltu         t3, t0, sp
                  add          s2, tp, t3
40:               andi         s4, t4, -48
                  srli         a6, s1, 30
                  and          t2, a3, s0
                  xor          s7, s8, s11
                  sra          t0, gp, s0
45:               bne          s4, s1, 64f
                  addi         sp, s10, 1948
                  slt          a1, zero, a2
                  srl          s9, t0, t0
                  slti         zero, s2, -81
                  srl          t3, s2, t0
                  slli         gp, t0, 8
                  nop
                  beq          s10, zero, 71f
                  srli         t0, s7, 2
                  ori          s2, t4, -271
                  sltiu        a7, s7, 665
                  slt          a7, tp, a5
                  ori          s2, s8, 1800
                  andi         a6, s4, -170
                  slt          tp, s2, s11
                  lui          s5, 490305
                  bltu         s11, gp, 79f
                  and          s5, t1, t0
64:               auipc        a3, 713062
                  sll          s10, s6, s5
                  sltiu        a7, tp, -548
                  blt          s6, sp, 84f
                  lui          a0, 51051
                  sra          t5, a6, gp
                  slt          a2, s11, ra
71:               and          tp, s1, t4
                  sra          tp, s1, t5
                  add          s11, t3, s9
                  slt          s5, s2, t4
                  auipc        t0, 635185
                  sub          sp, s4, tp
                  sra          s7, a5, gp
                  or           t1, s1, s2
79:               ori          a1, s3, 965
                  bltu         s2, s3, 87f
                  and          s4, s0, t4
                  xor          s3, t4, t4
                  srl          s4, s4, s9
84:               srli         gp, a7, 17
                  slti         s2, t4, -841
                  bltu         a5, t1, 104f
87:               srai         s6, t5, 15
                  and          a7, a3, s0
                  srai         t0, a7, 19
                  lui          s7, 840931
                  srl          s4, a7, sp
                  sltiu        s4, a7, 1918
                  bge          gp, tp, 107f
                  or           s1, t2, tp
                  bltu         a4, s5, 114f
                  bgeu         t0, a1, 100f
                  nop
                  nop
                  sltiu        a1, zero, 1648
100:              slli         t2, t3, 13
                  ori          t3, s10, -222
                  bgeu         s3, s4, 113f
                  sra          t0, s7, s7
104:              xori         t4, s9, 1506
                  bge          a5, a0, 119f
                  xor          s2, a2, s6
107:              srli         t6, t6, 12
                  bgeu         s10, s5, 123f
                  add          sp, a7, t5
                  beq          a6, s0, 119f
                  slt          t4, t3, s8
                  and          a3, s6, ra
113:              slti         s7, a6, 664
114:              srli         s10, a7, 21
                  srl          t0, s2, s7
                  auipc        a3, 547430
                  bne          a2, a4, 131f
                  sll          t5, s4, s8
119:              add          t3, a1, t3
                  slt          sp, t0, ra
                  slt          t5, a6, s9
                  lui          t2, 1041290
123:              lui          s3, 416464
                  sll          t3, t2, a7
                  andi         sp, t4, -1026
                  srli         zero, s9, 24
                  srli         s5, t6, 18
                  sra          zero, s11, s11
                  and          s7, a0, a3
                  bgeu         t1, s3, 145f
131:              bltu         sp, s6, 134f
                  add          gp, s3, a2
                  and          s6, a5, a1
134:              xori         s1, s3, -1578
                  slti         a1, t0, -1481
                  bgeu         t4, s0, 155f
                  xori         s2, t6, 1559
                  srli         s6, s3, 20
                  srli         s4, a7, 24
                  bltu         s11, a6, 143f
                  bne          t5, t5, 145f
                  andi         s7, t3, -81
143:              srli         s3, s8, 22
                  bge          t1, a2, 153f
145:              andi         s3, t3, 1802
                  sub          s5, zero, s1
                  ori          s4, ra, -467
                  slli         a0, a3, 21
                  bne          s1, a1, 153f
                  sll          s1, s0, s11
                  slti         a7, s2, 969
                  sub          t5, t2, sp
153:              srl          t6, s1, a2
                  srai         a1, s2, 9
155:              bge          s4, s9, 175f
                  blt          zero, s5, 173f
                  bne          a2, s10, 173f
                  add          s10, a0, a7
                  addi         s4, zero, 642
                  bne          t1, a3, 168f
                  bge          s2, a5, 165f
                  xori         ra, a2, -387
                  sll          ra, a7, t2
                  slli         sp, a3, 9
165:              sltiu        zero, s11, 1408
                  nop
                  srl          s7, s5, s7
168:              bltu         s11, ra, 185f
                  bge          sp, zero, 172f
                  add          gp, t0, s1
                  sltiu        t0, t3, 309
172:              ori          t1, a4, 250
173:              xori         s1, t0, 1309
                  auipc        tp, 650451
175:              and          t1, t0, a7
                  lui          s4, 68501
                  xor          a7, a7, s11
                  bgeu         t6, sp, 184f
                  srli         a1, s6, 2
                  andi         a0, s6, 1988
                  bgeu         t4, a4, 185f
                  sub          t6, s0, a7
                  beq          s9, t0, 187f
184:              nop
185:              sra          t1, a2, a7
                  andi         a1, t3, 92
187:              and          t2, tp, t2
                  andi         a5, a6, -1458
                  bltu         a4, a5, 198f
                  slt          t5, s8, a5
                  xori         s3, a7, -1439
                  or           s9, t2, s2
                  sltu         t4, a4, a0
                  beq          s7, sp, 208f
                  addi         s6, a3, -1713
                  srl          s9, s6, a1
                  beq          t5, s0, 212f
198:              bgeu         s8, s6, 218f
                  srai         tp, s11, 2
                  sltiu        s7, t0, 451
                  slli         a2, s5, 27
                  xori         s4, s9, 644
                  xori         zero, t3, -1398
                  xor          s9, s1, t0
                  beq          s0, a6, 209f
                  ori          s4, tp, 688
                  lui          s9, 714708
208:              xori         t3, s11, -441
209:              sltiu        s3, s3, -1522
                  bge          s6, t2, 229f
                  add          t3, s5, a4
212:              bltu         s7, tp, 228f
                  nop
                  xori         s6, zero, -958
                  xori         a6, a2, 1573
                  lui          a5, 721980
                  ori          t6, s2, 173
218:              or           sp, a7, s8
                  xori         t2, sp, 1126
                  srai         ra, s9, 29
                  srli         s6, a7, 31
                  bne          a4, s9, 231f
                  sll          s1, a2, t2
                  bgeu         s10, s7, 235f
                  blt          s0, s8, 229f
                  xori         t4, t3, 658
                  slti         s7, a1, 1813
228:              andi         s6, t0, 1008
229:              or           s9, s3, tp
                  bge          ra, s2, 238f
231:              andi         t1, sp, 995
                  bltu         t4, a5, 251f
                  bltu         a4, s10, 241f
                  sltu         s2, s7, a2
235:              bltu         s6, a6, 252f
                  xor          a3, s3, s6
                  and          s2, s1, a7
238:              bne          s7, s10, 255f
                  auipc        a3, 579958
                  or           s9, t5, a7
241:              beq          s0, ra, 259f
                  bgeu         s6, s7, 259f
                  blt          t4, t1, 250f
                  srli         s1, s6, 21
                  sra          tp, a1, t3
                  or           s6, a6, s0
                  slli         s7, s4, 31
                  sltiu        a5, tp, 1390
                  andi         a0, s11, -1977
250:              and          tp, s10, s7
251:              auipc        t3, 268603
252:              bgeu         ra, a4, 271f
                  lui          s6, 513300
                  sub          t2, s1, t3
255:              beq          s11, s10, 258f
                  add          t3, gp, sp
                  add          t3, t5, t6
258:              srai         t4, s8, 7
259:              bge          s2, a1, 273f
                  add          gp, t4, tp
                  slt          t5, t3, s7
                  bltu         t6, sp, 279f
                  sra          a1, a5, s10
                  slti         s9, tp, -359
                  addi         a5, a5, 1535
                  srli         a1, s6, 13
                  srl          gp, zero, a6
                  bge          a7, gp, 282f
                  slt          s4, s6, a2
                  blt          a2, t5, 285f
271:              sltiu        gp, t1, -356
                  add          s9, gp, t6
273:              and          tp, sp, s5
                  add          a0, a2, s9
                  beq          s1, t5, 292f
                  add          s5, gp, ra
                  slli         s2, s10, 15
                  bne          ra, a7, 296f
279:              nop
                  sll          gp, gp, s6
                  xori         zero, s9, 1718
282:              lui          ra, 698933
                  beq          s8, s10, 289f
                  bltu         a1, gp, 298f
285:              srl          s3, a5, ra
                  srli         a5, s8, 30
                  blt          tp, s9, 291f
                  bltu         a7, gp, 307f
289:              addi         a0, t6, -111
                  xor          s11, tp, s9
291:              and          s5, s6, t5
292:              sra          t2, t1, t1
                  srli         s3, s0, 20
                  srli         gp, t1, 31
                  slt          t6, ra, a0
296:              srli         t5, a1, 7
                  bgeu         t3, t2, 314f
298:              sltu         t6, gp, a7
                  auipc        a6, 758538
                  srl          a0, s5, t1
                  srl          t2, a3, t2
                  srai         sp, a3, 1
                  blt          a0, a5, 319f
                  sra          a6, t1, a0
                  blt          s7, t6, 316f
                  xor          sp, sp, a0
307:              auipc        t2, 504252
                  srai         a3, tp, 31
                  bltu         a6, t3, 317f
                  and          zero, zero, s5
                  nop
                  xori         ra, sp, 539
                  slti         s10, a5, 446
314:              and          a2, s10, gp
                  srl          ra, s11, s4
316:              lui          t2, 997063
317:              bne          tp, tp, 332f
                  xor          a7, a0, a1
319:              bne          a5, s3, 323f
                  ori          s11, s5, -1598
                  srl          gp, s7, sp
                  srl          ra, a3, s0
323:              and          t2, s0, tp
                  srai         t5, s5, 17
                  srai         s2, a3, 29
                  or           tp, t2, s0
                  slt          t4, s0, s1
                  bgeu         a6, s7, 346f
                  add          sp, t1, ra
                  sltiu        gp, t0, 1532
                  bge          s5, s5, 348f
332:              slt          t1, a6, s11
                  blt          a4, s11, 336f
                  ori          s4, a5, 25
                  blt          a7, t4, 342f
336:              srl          s3, a0, a4
                  srl          t0, t3, a4
                  bge          s4, a2, 355f
                  slli         a6, sp, 9
                  auipc        sp, 290842
                  la           s9, sub_2
                  srai         gp, gp, 26
                  slt          s10, zero, tp
                  addi         s9, s9, -620
                  xor          s10, s1, t0
                  sra          s1, t3, s3
                  bge          t0, a1, main_j2 #branch to jump instr
                  addi         t1, s1, -1890
main_j2:          jalr         ra, s9, 621 #jump main -> sub_2
                  ori          t1, s0, 1174
342:              sub          s6, a1, t1
                  xor          t5, s10, a2
                  lui          t4, 437376
                  add          zero, s2, zero
346:              sltiu        t5, t6, 364
                  sll          t5, a5, sp
348:              srai         s11, a4, 16
                  addi         t0, a6, -1676
                  sll          a3, sp, s6
                  nop
                  and          a0, ra, t6
                  bne          s7, a5, 362f
                  slli         a5, s0, 23
355:              srai         t3, s1, 16
                  addi         a1, t5, -1814
                  nop
                  lui          a5, 232459
                  or           gp, tp, t2
                  srl          t4, s0, s5
                  srai         a2, t6, 31
362:              auipc        a2, 790213
                  andi         a1, s1, -1435
                  andi         t1, a4, 1515
                  and          t6, gp, s7
                  auipc        ra, 286802
                  add          s10, t3, s10
                  srli         s9, s8, 15
                  andi         t3, zero, -1900
                  sub          s4, s2, a1
                  sub          t6, t4, sp
                  slli         a6, a5, 6
                  bne          s9, s10, 390f
                  sub          s1, t1, a3
                  add          tp, a0, tp
                  add          a7, a1, t2
                  bltu         a3, ra, 381f
                  sub          zero, a3, s7
                  srai         t4, a4, 26
                  blt          s1, s2, 398f
381:              sltu         t4, s3, t4
                  srli         gp, s3, 5
                  blt          t3, a2, 387f
                  nop
                  slti         a5, s7, 1902
                  nop
387:              sltiu        t4, gp, -943
                  auipc        s11, 355184
                  bge          t5, s11, 408f
390:              slti         t2, ra, 43
                  slt          t5, zero, a7
                  sra          a6, s6, t5
                  addi         a2, s2, 1534
                  nop
                  slli         a0, s1, 30
                  and          t3, t3, t4
                  slt          gp, a4, t1
398:              sub          a1, s11, s11
                  bgeu         s8, ra, 402f
                  sltiu        s6, sp, 1416
                  or           s7, t6, gp
402:              andi         a7, ra, -661
                  nop
                  slt          a5, t0, s10
                  sltiu        a6, a5, 311
                  xori         a5, a5, 588
                  auipc        t1, 831382
408:              blt          t1, t5, 417f
                  beq          s5, a5, 417f
                  or           zero, s2, a4
                  ori          a2, sp, -975
                  bltu         a3, t0, 417f
                  slli         a0, s11, 19
                  sltu         t5, s9, s4
                  sltiu        s10, a1, 1722
                  addi         t5, s11, -680
417:              slt          s9, s2, s10
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            slt          s11, s1, a4
                  add          s10, a0, a2
                  srli         a2, s7, 4
                  bge          s2, t3, sub_8_stack_p
                  sll          a7, ra, ra
sub_8_stack_p:    addi         s0, s0, -24
                  srl          a0, s6, t2
                  nop
                  nop
                  sw           ra, 4(s0)
                  slt          s1, s0, s6
                  sll          t6, s0, s4
                  auipc        gp, 674151
                  nop
                  sltiu        a1, t6, -886
                  srai         a1, s7, 22
                  ori          a0, t4, -1563
                  sltu         s6, t2, s3
                  slli         s9, t2, 13
                  lui          s10, 380419
                  and          s3, s1, t1
sub_8_j12:        jal          ra, sub_9 #jump sub_8 -> sub_9
                  la           s6, region_0+1822 #start riscv_load_store_rand_instr_stream_3
                  slli         t3, s0, 16
                  lbu          t4, 74(s6)
                  xori         a7, a5, -986
                  xori         a6, s3, -1288
                  xor          s2, a6, t5
                  slti         gp, a4, -1771
                  lbu          s3, 54(s6)
                  xori         tp, t3, -264
                  slti         s1, a1, 753
                  lb           t1, 17(s6)
                  or           a5, a2, t4
                  slti         ra, s1, -949
                  lb           a7, -4(s6)
                  sh           s3, -156(s6)
                  sb           t1, 115(s6)
                  sh           zero, -192(s6)
                  lb           s9, -256(s6)
                  xori         a5, t0, -1887
                  lhu          zero, 118(s6)
                  add          t6, ra, s2
                  auipc        tp, 774549
                  sw           s3, -90(s6)
                  or           t6, t3, sp
                  lb           zero, 17(s6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1687 #start riscv_load_store_rand_instr_stream_2
                  lw           t1, -11(sp)
                  lbu          tp, 44(sp)
                  sw           s0, -3(sp)
                  lbu          a7, 37(sp)
                  lw           a7, 21(sp)
                  add          a1, sp, t4
                  sb           s10, 14(sp)
                  xor          s6, a5, a6
                  lui          s6, 62942
                  slli         t5, sp, 22
                  sltu         s4, s1, zero
                  and          s2, sp, ra
                  lbu          ra, -49(sp)
                  sb           a2, -28(sp)
                  or           t1, t0, s0
                  lb           s1, -40(sp)
                  lb           s1, 27(sp)
                  sh           t1, -59(sp)
                  ori          a6, s7, -1572
                  ori          s9, tp, 516
                  nop
                  sb           s10, -37(sp)
                  lb           s5, 39(sp)
                  sb           t2, -10(sp)
                  or           gp, t4, s9
                  lb           gp, -34(sp)
                  lbu          t2, -46(sp)
                  add          t4, s1, s6
                  lh           s11, -63(sp)
                  sub          s5, s9, a1
                  sub          a6, t5, a3
                  slt          a2, a5, a6
                  sb           ra, 47(sp)
                  sb           tp, 58(sp) #end riscv_load_store_rand_instr_stream_2
                  nop
                  andi         s7, a0, -1532
                  slli         s5, s6, 14
                  and          s5, t4, t3
                  addi         a5, s1, 1516
                  addi         a2, s6, 1066
                  sra          s10, s5, t3
                  slli         t3, t2, 4
                  srl          s1, tp, s4
                  blt          s8, t4, 11f
                  srli         zero, gp, 0
11:               srai         s4, sp, 22
                  nop
                  slti         s11, zero, 1080
                  blt          t2, s1, 16f
                  andi         s2, s7, -1792
16:               slti         s10, s0, -288
                  auipc        s1, 380226
                  bne          s8, ra, 25f
                  addi         zero, t1, 1412
                  auipc        a7, 613272
                  srli         sp, t6, 24
                  sll          s3, sp, s1
                  lui          a6, 109627
                  and          gp, s0, s4
25:               lui          t1, 105711
                  sra          a5, a3, s0
                  auipc        a0, 713550
                  andi         a5, sp, 496
                  ori          s4, zero, -422
                  or           s5, t0, a2
                  bne          a4, sp, 38f
                  ori          a0, ra, -304
                  ori          t3, s8, -934
                  ori          s2, t3, -825
                  add          t0, a0, t4
                  srli         s6, a3, 19
                  bge          s10, s0, 52f
38:               xori         t1, s11, 1834
                  andi         s2, s10, -1704
                  auipc        s1, 875777
                  sltu         t2, s11, s4
                  and          ra, t5, t4
                  slt          zero, s4, a1
                  sub          s1, t0, s7
                  srli         s9, a5, 12
                  srl          s4, s5, t1
                  slti         s1, zero, -1624
                  slt          s3, a0, s7
                  nop
                  sra          sp, a6, t0
                  srl          s3, s5, s1
52:               addi         s3, s4, -1779
                  bge          t3, t6, 73f
                  sll          t6, s9, zero
                  addi         a6, a6, -31
                  addi         t6, t3, -1727
                  xori         t5, t6, -991
                  sra          s10, a0, s11
                  sra          t1, t4, gp
                  slti         s3, t2, 1133
                  nop
                  slt          s11, t0, t0
                  sra          s2, tp, zero
                  xori         a5, tp, 1276
                  srli         s4, t3, 1
                  sltiu        a2, a4, 1489
                  xor          s4, t5, s0
                  sra          s10, s5, t1
                  sra          gp, sp, s11
                  sltu         s3, a2, zero
                  auipc        a5, 284389
                  slt          s2, s11, t3
73:               nop
                  xori         a7, a7, 955
                  and          s11, a1, s3
                  auipc        t4, 992278
                  andi         s11, s10, -1352
                  slt          sp, s4, s4
                  blt          s10, t6, 97f
                  bltu         s7, t0, 88f
                  bltu         s4, s8, 85f
                  slti         a7, t5, -2028
                  bne          t3, s8, 88f
                  bge          s4, a7, 92f
85:               bgeu         s5, gp, 97f
                  sltu         a0, t3, a3
                  xori         t5, s0, -85
88:               or           sp, sp, s8
                  add          a2, ra, t4
                  lui          gp, 728315
                  srl          t1, t5, a5
92:               and          t4, s10, s2
                  bltu         s9, t1, 108f
                  srai         ra, gp, 14
                  xor          a2, t1, a2
                  auipc        t0, 1044173
97:               slti         t5, s3, -1210
                  bgeu         t4, a4, 112f
                  addi         t1, s11, 220
                  srl          t6, s3, s5
                  blt          a3, s2, 111f
                  lui          a5, 236690
                  bne          a2, zero, 123f
                  bltu         gp, s10, 119f
                  lui          tp, 242505
                  bge          t0, s6, 112f
                  sub          tp, a5, s0
108:              bne          t4, t1, 126f
                  lui          s7, 1005201
                  slli         a6, s4, 10
111:              nop
112:              sltu         s4, gp, t4
                  slt          ra, gp, zero
                  sll          s5, a7, s4
                  sltu         s7, t5, t0
                  sltiu        t4, a5, 1998
                  xor          t6, gp, a3
                  addi         tp, t4, -1602
119:              andi         a7, s0, -1280
                  xor          t5, t6, t0
                  ori          s4, t5, 296
                  sub          s6, t1, sp
123:              andi         t5, s7, 1365
                  sub          t1, s4, tp
                  srli         s2, sp, 8
126:              sra          s11, t5, ra
                  sll          a3, a2, s3
                  nop
                  andi         a2, a1, -448
                  andi         s1, t6, 1740
                  bgeu         s3, tp, 132f
132:              nop
                  sltiu        s11, s1, 1611
                  slti         t3, s10, 563
                  bltu         a7, s6, 138f
                  and          s1, s5, s3
                  sltu         s7, a3, s10
138:              bge          s8, s7, 139f
139:              bne          s10, s6, 140f
140:              sltu         s3, a3, sp
                  sra          s7, s6, a2
                  andi         tp, a5, 38
                  beq          a7, a5, 152f
                  slt          gp, sp, sp
                  slli         t4, s10, 18
                  bltu         s2, s4, 164f
                  srl          tp, s5, t6
                  slt          sp, t5, a6
                  nop
                  sra          t5, zero, sp
                  sltiu        ra, a3, 1540
152:              slli         a7, s6, 15
                  and          t4, t3, t2
                  or           ra, t2, zero
                  sra          s6, gp, s8
                  sltu         s2, zero, s9
                  slt          t0, t6, s2
                  slli         t2, t5, 24
                  xori         a0, s9, 194
                  xori         a3, t5, 1050
                  bne          s5, s3, 176f
                  slli         s2, s0, 28
                  srl          a2, t1, a1
164:              blt          s4, t1, 165f
165:              add          a1, s8, t3
                  ori          s2, t2, -186
                  bge          zero, t1, 183f
                  sll          zero, gp, a3
                  slti         s2, t1, 0
                  sra          s3, a2, s1
                  sub          ra, t2, s1
                  bltu         t4, t0, 187f
                  addi         a6, a0, 1748
                  nop
                  and          sp, t1, a4
176:              srai         a6, a1, 27
                  sra          a6, a5, s8
                  xor          a2, t0, s1
                  bltu         t6, a2, 183f
                  sltu         gp, s10, a5
                  lui          s4, 865299
                  xor          s2, a6, a1
183:              bne          a5, a1, 198f
                  lui          a3, 966619
                  sltiu        tp, sp, 48
                  add          sp, s5, a3
187:              and          t1, t5, s1
                  srli         t6, a7, 26
                  ori          s6, t1, -417
                  slli         s7, a7, 14
                  bltu         t6, tp, 206f
                  srli         s3, a2, 2
                  bge          a3, s7, 201f
                  addi         t5, a2, 595
                  or           a5, s7, s9
                  bgeu         s7, s1, 197f
197:              lui          sp, 126778
198:              srai         s4, ra, 28
                  and          zero, s0, s6
                  andi         s3, s8, 1550
201:              xori         s6, a5, -1981
                  slli         s3, ra, 31
                  slli         a1, s3, 24
                  srl          zero, sp, a5
                  beq          zero, sp, 215f
206:              nop
                  sll          a3, s9, s9
                  nop
                  and          a5, zero, s0
                  bne          zero, a3, 215f
                  nop
                  xor          t1, a1, s1
                  bne          tp, a5, 229f
                  and          tp, zero, s8
215:              slli         a2, s7, 9
                  blt          gp, s3, 231f
                  or           t2, t3, t1
                  bge          t5, t0, 220f
                  sra          s9, s4, s11
220:              or           s4, s1, t3
                  xor          sp, a0, a1
                  nop
                  slt          a3, zero, s1
                  addi         t2, s9, 1930
                  nop
                  lui          s6, 603860
                  sltiu        s11, zero, 93
                  bgeu         s0, s10, 235f
229:              sltu         s2, s10, zero
                  slli         s2, a6, 27
231:              lui          sp, 584215
                  bltu         a6, t4, 252f
                  addi         a3, a1, -1977
                  sltiu        a2, s3, -720
235:              srl          ra, s6, t3
                  slti         s10, s0, -1743
                  or           a6, zero, gp
                  sll          t1, a1, t4
                  slli         s2, t4, 19
                  bgeu         s9, a0, 248f
                  slt          t5, a6, t6
                  nop
                  andi         t6, s10, -2031
                  slt          s10, s10, s10
                  sltu         t1, s11, a6
                  sra          s1, a0, t3
                  bne          s7, t5, 248f
248:              srl          a1, a3, s2
                  slti         a3, s7, 1258
                  sll          ra, a0, s8
                  bge          s5, t6, 255f
252:              slti         s9, s2, -2041
                  addi         s11, a2, -1445
                  bltu         a7, s5, 263f
255:              sltiu        s11, s0, -741
                  bne          t5, t5, 274f
                  add          t0, s6, s0
                  bgeu         a5, s1, 259f
259:              sltiu        a1, zero, -440
                  sub          sp, a0, s1
                  ori          gp, s8, 962
                  and          s9, t3, t0
263:              ori          t6, a1, 822
                  and          s10, s11, t4
                  ori          s3, s0, 381
                  slt          s7, t4, s1
                  auipc        gp, 122831
                  lui          a0, 986952
                  or           a0, s0, s10
                  slli         s5, s0, 4
                  and          t5, a5, tp
                  addi         s5, t2, 876
                  srli         s1, a6, 19
274:              lui          a0, 1016966
                  nop
                  bne          gp, a5, 294f
                  srl          a0, a1, s10
                  srai         t0, s6, 1
                  or           s3, s0, s8
                  srl          s2, ra, a7
                  or           s5, a4, s3
                  andi         s7, t1, 586
                  addi         s1, t4, 1736
                  and          t6, a1, tp
                  slt          t5, a3, gp
                  srli         s3, a1, 2
                  auipc        t1, 414331
                  lui          s9, 507466
                  blt          s8, a0, 293f
                  bge          t2, s2, 304f
                  xor          a2, a3, s8
                  and          s1, s1, a6
293:              bge          a2, s2, 308f
294:              auipc        ra, 92710
                  bne          zero, s4, 310f
                  sltiu        s4, a2, 2012
                  sub          a6, s1, s7
                  add          t3, s8, s5
                  srl          a1, s9, tp
                  xori         a6, t5, -157
                  bgeu         t6, s2, 304f
                  andi         s6, s6, 410
                  sltiu        a2, tp, 366
304:              sub          a7, a3, s3
                  lui          s10, 933322
                  blt          s6, s2, 313f
                  sltu         a3, s1, a3
308:              andi         sp, tp, 156
                  beq          zero, a5, 321f
310:              srai         t4, ra, 2
                  srl          a0, t6, s1
                  blt          s4, ra, 314f
313:              slt          s4, s4, a4
314:              srli         s3, t0, 13
                  andi         a6, t3, -1435
                  xor          s7, zero, gp
                  xor          t5, s3, s11
                  srai         t4, s2, 2
                  srli         s4, a3, 23
                  sub          s9, s0, t0
321:              auipc        s11, 971298
                  sra          t0, t1, a3
                  addi         a5, s1, -629
                  bgeu         tp, a7, 330f
                  slt          ra, a7, s8
                  ori          t4, t2, -369
                  bge          s10, s11, 347f
                  xori         a0, s4, -278
                  addi         s6, t1, 1006
330:              sll          s3, s11, s3
                  srai         s4, s7, 0
                  addi         a3, ra, 696
                  sll          s2, ra, s11
                  bgeu         s2, t6, 335f
335:              nop
                  xori         t3, a5, -1287
                  and          t5, t1, a6
                  bne          t5, t5, 356f
                  sub          sp, a6, t1
                  blt          tp, tp, 347f
                  blt          t4, ra, 346f
                  bne          t1, s9, 343f
343:              andi         a3, s9, -657
                  beq          t1, s2, 359f
                  xor          a2, zero, a5
346:              add          s3, t4, t3
347:              auipc        a0, 978712
                  blt          a0, t5, 352f
                  sltu         s11, s1, tp
                  srli         a5, a6, 23
                  nop
352:              lui          gp, 810772
                  bltu         s8, a4, 357f
                  bge          a3, s9, 360f
                  sra          tp, a4, s7
356:              nop
357:              slli         s6, s3, 14
                  bne          a5, a2, 373f
359:              beq          t5, s2, 360f
360:              srai         s6, s9, 5
                  and          t5, s2, s11
                  srli         a0, t6, 31
                  sltu         a3, a2, zero
                  nop
                  sll          s1, a1, t3
                  andi         s6, a7, -697
                  sltiu        t1, a2, -23
                  or           a5, a3, s0
                  beq          t6, s0, 379f
                  sub          a1, a3, s11
                  sll          t4, tp, s10
                  srai         gp, s1, 6
373:              andi         s4, t4, -421
                  add          s7, s0, t0
                  and          s4, a0, sp
                  sltiu        a5, t3, -1107
                  ori          s7, s8, -1413
                  sll          s6, s2, s4
379:              bge          t6, a3, 394f
                  slli         s3, s0, 20
                  srl          a5, a1, a0
                  andi         t2, t0, 381
                  bne          a1, t3, 392f
                  srli         t5, zero, 24
                  bge          s3, s4, 400f
                  sub          t2, s0, a0
                  or           tp, a2, s10
                  srai         s3, a2, 18
                  srl          t4, sp, a6
                  sub          zero, t6, a3
                  bgeu         s11, s2, 399f
392:              srl          t1, a3, t2
                  bgeu         t0, t4, 394f
394:              andi         s1, t6, -1451
                  xor          s2, s7, s9
                  slli         s10, s5, 10
                  srli         s5, s9, 17
                  bltu         s9, t2, 406f
399:              or           s4, s0, a1
400:              beq          s0, t6, 420f
                  bgeu         t3, s9, 419f
                  bne          s4, a4, 418f
                  lui          sp, 1040152
                  slti         t1, a6, -893
                  sltiu        a1, a7, 1879
406:              andi         t5, s9, 110
                  sra          s9, a5, s7
                  ori          s1, s4, -676
                  beq          a1, a5, 421f
                  blt          s2, s4, 417f
                  xor          s1, t5, t3
                  auipc        sp, 861014
                  add          a6, s8, t3
                  srl          a3, t6, s1
                  srai         sp, zero, 15
                  srli         a3, s6, 5
417:              and          s11, gp, s3
418:              auipc        t2, 726296
419:              sltiu        ra, t4, 1946
420:              andi         t0, a7, 1544
421:              srli         t1, t2, 11
                  bgeu         s5, ra, 425f
                  addi         s11, t5, -276
                  sltu         zero, t0, s5
425:              slli         s6, s5, 18
                  sub          a5, s3, s10
                  or           s3, t1, a6
                  auipc        s3, 1016242
                  lui          t6, 31621
                  srai         a5, a4, 23
                  la           sp, region_0+290 #start riscv_load_store_rand_instr_stream_0
                  lbu          s7, 31(sp)
                  lb           a3, 43(sp)
                  sb           s3, 9(sp)
                  lb           a3, -29(sp)
                  sb           s2, 58(sp)
                  srli         a2, t2, 24
                  lh           ra, -20(sp)
                  lb           ra, -41(sp)
                  lhu          gp, 40(sp)
                  lb           gp, -13(sp)
                  srai         s4, t0, 28
                  slli         ra, s7, 12
                  sb           a4, -61(sp)
                  addi         s2, s9, 386
                  lbu          s4, 19(sp)
                  sltiu        s1, t5, -348
                  lh           zero, -8(sp)
                  and          s9, t0, gp
                  lb           s7, -57(sp)
                  xori         a1, a4, 1856
                  slti         a3, s10, 1647
                  lhu          s3, -56(sp)
                  lb           t0, -52(sp)
                  lb           ra, 13(sp)
                  lb           zero, -24(sp)
                  sb           s2, 51(sp)
                  ori          s10, ra, -1430
                  or           t5, a4, a4
                  sb           s4, -23(sp)
                  sll          a5, s0, s9
                  sw           s6, -46(sp)
                  lhu          a2, -24(sp)
                  lbu          t5, -7(sp)
                  lh           s2, 40(sp)
                  lh           s5, -8(sp)
                  ori          s2, s2, 1912
                  xor          s1, t0, a1
                  andi         ra, a4, 992
                  sltiu        t1, s7, -1420
                  sb           t1, -52(sp)
                  lb           a1, -27(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         s10, s9, 1062
                  bltu         s8, t2, 450f
                  sltiu        t3, t5, -1323
                  sra          s2, zero, t5
                  lui          t6, 438211
                  lui          s10, 7034
                  bgeu         s6, a5, 452f
                  sub          a3, s1, a2
                  add          s2, t2, t4
                  srl          t2, s6, s9
                  and          s4, t6, s5
                  sltiu        a3, a2, -1118
                  slti         s5, s2, 1641
                  xori         tp, t4, -223
                  beq          ra, t4, 446f
446:              addi         t6, s9, -1420
                  sltiu        tp, s0, -388
                  srai         s10, s3, 31
                  beq          t5, t4, 463f
450:              beq          s9, tp, 452f
                  sub          t2, t0, s2
452:              xor          t4, a2, t3
                  bgeu         s7, t0, 455f
                  xori         s4, a5, -479
455:              slt          a7, a6, s4
                  ori          s2, s10, 1163
                  beq          s4, t0, 477f
                  sra          a7, t3, t1
                  la           a3, region_0+1265 #start riscv_load_store_rand_instr_stream_1
                  srli         a2, zero, 20
                  add          s11, a4, ra
                  lbu          t4, -8(a3)
                  srli         sp, s5, 15
                  sb           t2, 16(a3)
                  add          a6, s1, s7
                  lh           s5, -15(a3)
                  addi         a2, s8, 1979
                  sw           a7, -5(a3)
                  slli         s6, s11, 8
                  lb           zero, -8(a3)
                  lb           tp, 12(a3)
                  andi         t6, s5, 1348
                  slli         t4, a3, 25
                  srai         a6, t6, 18
                  addi         t2, t3, -167
                  sb           t5, -3(a3)
                  sub          a5, ra, a4
                  lb           s7, -12(a3)
                  lb           t6, -8(a3)
                  xor          t1, s5, s8
                  andi         s11, a5, 644
                  andi         a5, s9, -1978
                  ori          tp, s0, 1442
                  slli         t0, gp, 1
                  sra          a7, s1, a2
                  andi         t4, zero, 1717
                  lb           a5, 13(a3)
                  sub          sp, tp, gp
                  lbu          a1, 4(a3)
                  lb           t5, 16(a3)
                  lh           sp, 1(a3)
                  or           t1, t6, s10
                  auipc        s3, 603674
                  xor          s11, t3, t5
                  lbu          a1, 4(a3)
                  srl          s5, a0, a7
                  xor          a6, a7, gp
                  lb           s3, -10(a3)
                  sltiu        t3, s9, 355
                  addi         ra, s1, 865
                  lb           t1, -9(a3)
                  sh           a7, 11(a3)
                  lb           s3, -16(a3) #end riscv_load_store_rand_instr_stream_1
                  slt          a6, s2, t2
                  blt          zero, t4, 478f
                  slti         s11, s11, 1893
                  addi         s2, s7, -716
463:              srli         s3, s7, 11
                  srai         a7, t1, 28
                  sra          ra, sp, t6
                  ori          a2, t6, 1399
                  or           s2, t6, a4
                  bge          a2, s3, 472f
                  xor          t0, a7, a1
                  slt          a1, a1, a1
                  xori         a2, s4, -377
472:              srli         s7, gp, 2
                  addi         s3, sp, -1425
                  srl          t4, s6, t1
                  and          s10, gp, a3
                  beq          gp, s10, 488f
477:              bltu         ra, t4, 483f
478:              bne          s11, s8, 479f
479:              addi         t0, s7, -179
                  srai         s6, s0, 9
                  srl          zero, s4, t4
                  sra          a1, s7, tp
483:              bne          ra, s11, 498f
                  or           s9, a0, s4
                  add          zero, t4, t2
                  bltu         t2, s9, 501f
                  add          t4, t2, a5
488:              xori         a2, t0, -1935
                  lui          gp, 694717
                  andi         s3, t5, 1600
                  andi         t6, t5, 1073
                  ori          s2, a1, -1423
                  andi         t6, s1, 2033
                  slt          t4, sp, t2
                  sltu         t6, s7, gp
                  nop
                  add          s11, tp, ra
                  auipc        s5, 502601
                  addi         s9, a1, 601
                  bgeu         s1, t0, sub_8_j13 #branch to jump instr
                  slli         ra, ra, 31
                  slti         tp, s10, 1946
                  andi         s6, t5, 782
                  andi         s4, tp, 578
                  ori          a6, s5, -1487
                  andi         a5, a6, 1220
sub_8_j13:        jal          ra, sub_9 #jump sub_8 -> sub_9
                  sub          t0, s10, t2
498:              slti         t4, a0, 184
                  lui          t1, 756386
                  srli         s2, a7, 12
501:              xor          t2, t5, a5
                  ori          s1, t4, -1936
                  andi         s6, t3, -138
                  ori          sp, t6, -847
                  srai         t6, t2, 9
                  bgeu         s4, t0, 521f
                  srli         sp, s11, 24
                  and          t2, t3, a7
                  blt          ra, s11, 514f
                  add          s6, s9, ra
                  srli         t1, zero, 21
                  blt          a5, t5, 520f
                  xori         t6, s2, 1369
514:              or           s2, a3, s3
                  lui          s3, 934235
                  beq          a0, a4, 525f
                  bge          s0, t6, 535f
                  bge          sp, zero, 519f
519:              ori          sp, a1, -515
520:              xor          t2, a2, s4
521:              sub          a1, a6, t4
                  auipc        t3, 719514
                  add          a1, tp, t3
                  sltiu        s9, s2, 1505
525:              sltiu        a3, t4, 416
                  slli         a0, a3, 17
                  sltu         a7, s0, t3
                  bltu         s6, t5, 546f
                  auipc        s10, 1033025
                  xor          s7, t4, zero
                  sub          s2, a2, s10
                  ori          ra, s10, -354
                  ori          t6, s0, 1976
                  blt          t3, ra, 552f
535:              bgeu         zero, s11, 545f
                  srai         sp, t0, 4
                  auipc        a3, 375596
                  slti         t6, s2, -349
                  xori         t5, t6, -276
                  bge          t4, a6, 541f
541:              slli         a3, s5, 17
                  srli         t1, s9, 24
                  slli         t1, t1, 0
                  bge          sp, s6, 552f
545:              sltiu        s11, t3, -278
546:              add          t1, t3, s2
                  beq          s8, s2, 552f
                  beq          a0, tp, 552f
                  srli         s11, a7, 15
                  sltiu        ra, t1, -1141
                  bgeu         s6, a1, 552f
552:              srli         a6, t2, 11
                  slti         t4, s3, 1825
                  lw           ra, 4(s0)
                  nop
                  or           t6, tp, s0
                  sll          t1, a5, s5
                  addi         s0, s0, 24
                  ori          t0, tp, -1218
740:              addi x23, x1, 0
740:              jalr x23, x23, 0
sub_7:            or           t0, gp, a6
                  nop
                  slt          s1, s3, s0
                  srli         s5, s10, 13
                  slt          s10, t0, s1
                  srai         s1, s1, 4
                  bltu         tp, s2, sub_7_stack_p
                  sltiu        s2, a7, 940
sub_7_stack_p:    addi         s0, s0, -12
                  andi         t6, s0, -700
                  sw           ra, 4(s0)
                  sub          t2, a4, s7
                  add          s7, a1, t6
                  sltu         s3, s3, a3
                  add          t1, a2, t1
                  and          a0, ra, a6
                  la           a3, sub_8
                  addi         ra, s10, -966
                  or           s1, a6, zero
                  xor          s9, t6, s3
                  addi         a3, a3, 323
                  and          tp, s2, tp
                  sltiu        a0, a6, 372
sub_7_j11:        jalr         ra, a3, -322 #jump sub_7 -> sub_8
                  la           s4, region_1+1336 #start riscv_load_store_rand_instr_stream_0
                  lb           t3, -992(s4)
                  nop
                  slli         s6, a4, 5
                  srai         t1, t5, 1
                  lb           sp, -1301(s4)
                  sll          tp, ra, s4
                  sb           t6, -389(s4)
                  slti         s7, zero, -695
                  lbu          tp, -142(s4)
                  lb           s5, -1014(s4)
                  slt          ra, s9, a3
                  nop
                  lb           s10, -57(s4)
                  sh           zero, -684(s4)
                  addi         s11, s10, 735
                  sh           t1, 428(s4)
                  and          s9, a7, a1
                  xor          gp, a5, t3
                  auipc        a1, 907618
                  lbu          gp, 13(s4)
                  slti         s5, a0, -2044
                  lbu          t4, -907(s4)
                  slli         tp, s0, 6
                  xor          t6, t0, s4
                  sb           a2, -542(s4)
                  lb           t1, 409(s4)
                  auipc        a1, 197307
                  sb           a2, -1037(s4)
                  lh           s9, -1114(s4)
                  sh           a6, -828(s4)
                  xori         s11, zero, -1202
                  lbu          zero, 229(s4)
                  lb           s2, -744(s4)
                  sub          s2, s10, s4
                  lh           s7, -576(s4)
                  sb           ra, -759(s4)
                  addi         ra, s1, -1972
                  sltiu        s3, s6, 194
                  addi         a3, t5, -1800
                  add          a3, a1, a0
                  sltiu        zero, t2, -280
                  sb           s8, -723(s4)
                  lbu          a5, -1299(s4)
                  lb           s2, -1329(s4)
                  lui          t2, 932185
                  sub          gp, s6, a2
                  lbu          t4, -993(s4)
                  lbu          t0, -1105(s4)
                  lh           sp, -1104(s4)
                  slli         t6, s1, 23
                  lw           s6, -624(s4)
                  lbu          t5, -392(s4)
                  sh           t3, -158(s4) #end riscv_load_store_rand_instr_stream_0
                  sll          tp, ra, sp
                  bne          s3, gp, 9f
                  xori         a3, a1, -64
                  slli         ra, t6, 13
                  srli         a1, zero, 9
                  sra          sp, a6, a6
                  or           t1, a7, a3
                  slt          a7, zero, t3
                  sltu         s5, a7, s11
9:                xori         a5, s11, 15
                  and          t4, a0, s10
                  sll          a7, s2, s7
                  beq          s8, zero, 20f
                  ori          t0, a7, -1397
                  addi         ra, s3, -593
                  slt          s6, s7, s1
                  auipc        s10, 894703
                  sub          ra, a3, s3
                  slt          s11, t1, s5
                  lui          sp, 292070
20:               beq          s1, s5, 22f
                  sltiu        t2, a2, -1471
22:               bne          s8, a6, 34f
                  auipc        a5, 254922
                  lui          tp, 474256
                  ori          s9, s11, 2046
                  sub          t3, a6, s7
                  slti         s1, s11, -1904
                  addi         s11, s5, -768
                  slti         t4, s4, -440
                  slli         s4, t0, 2
                  sll          a7, a0, s5
                  slt          a6, s10, s10
                  bltu         a3, zero, 44f
34:               bltu         s8, s2, 39f
                  bgeu         s2, t2, 40f
                  or           a3, gp, gp
                  bge          a2, s2, 43f
                  ori          t3, s7, -1385
39:               andi         s5, s6, 1601
40:               blt          gp, s3, 47f
                  lui          t3, 16089
                  sub          a2, t5, t2
43:               sltu         a2, s0, t4
44:               sltiu        s6, s3, 240
                  sltu         s11, s8, s9
                  nop
47:               bne          t1, t1, 67f
                  srai         t6, a5, 8
                  xor          ra, s2, t2
                  sltiu        t2, a4, 1115
                  andi         t3, s4, 237
                  sltu         sp, s6, s11
                  auipc        t5, 508154
                  xori         s9, t0, 408
                  bgeu         s3, s6, 70f
                  srl          a2, s4, a5
                  auipc        s2, 655143
                  sltu         s10, a7, t2
                  xor          a5, a1, t1
                  srai         s5, t4, 2
                  bgeu         a7, a5, 69f
                  srai         s3, t5, 8
                  sub          tp, a0, a1
                  lui          s7, 534577
                  add          t2, zero, s5
                  andi         s2, a4, -1077
67:               slli         s4, s10, 13
                  sltiu        t3, a3, -95
69:               blt          a5, a5, 84f
70:               srli         t1, s4, 20
                  beq          s1, t5, 85f
                  lui          t3, 992533
                  xori         t5, sp, 1182
                  xor          a1, t5, s2
                  auipc        t2, 1044188
                  slt          sp, a4, gp
                  bne          a7, s11, 93f
                  sra          s3, s1, a6
                  srl          t2, t0, s10
                  slt          s11, s11, t6
                  andi         s9, s10, -1230
                  bne          s2, a7, 88f
                  slli         t2, tp, 31
84:               xor          t2, t5, tp
85:               slt          s4, s7, a0
                  lui          a7, 52055
                  srai         tp, s9, 31
88:               and          a6, s2, s5
                  bgeu         a4, tp, 93f
                  slli         s9, s4, 20
                  andi         s5, t4, 1549
                  addi         t0, ra, -799
93:               addi         sp, a4, 517
                  ori          s5, tp, -1829
                  and          a3, s2, t5
                  beq          a4, a7, 111f
                  nop
                  srli         s2, s4, 24
                  sltiu        s7, s0, -1692
                  add          a6, a3, s4
                  bne          s9, t4, 119f
                  slt          t5, a4, s4
                  bge          tp, t3, 121f
                  blt          s6, s4, 112f
                  add          t4, s8, a3
                  auipc        s9, 211225
                  addi         a2, s7, -107
                  slli         s7, t2, 3
                  srai         t2, a3, 6
                  blt          t5, tp, 120f
111:              lui          a2, 734301
112:              srl          ra, a1, s4
                  sll          a5, a3, gp
                  srli         zero, gp, 29
                  and          t4, a0, s10
                  ori          s10, t5, -1681
                  nop
                  or           a6, s0, s2
119:              sltu         ra, a2, a1
120:              add          a7, t6, s2
121:              addi         zero, s2, 105
                  beq          t2, s7, 135f
                  bge          gp, a1, 137f
                  lui          a3, 278004
                  or           t1, s10, s10
                  sltu         s1, gp, a6
                  and          s6, t0, zero
                  bge          a5, s8, 140f
                  srli         t1, s4, 3
                  xor          s6, a5, s5
                  ori          s1, a3, -1961
                  blt          t3, s2, 140f
                  bltu         s8, a1, 140f
                  slt          a7, s0, t4
135:              andi         a2, s8, -1082
                  bgeu         s3, t1, 140f
137:              sra          tp, a4, t0
                  srai         a0, zero, 13
                  sll          s4, sp, gp
140:              andi         ra, s3, -1725
                  lw           ra, 4(s0)
                  srl          t4, a7, a2
                  addi         s0, s0, 12
                  lui          t0, 1025965
                  srl          a0, s0, s2
                  lui          tp, 680191
225:              addi x10, x1, 1
225:              jalr x10, x10, 0
sub_4:            addi         s0, s0, -64
                  slti         t6, t0, 1274
                  and          a6, t4, t2
                  sll          t5, a5, t6
                  sltu         s1, s4, t4
                  sw           ra, 4(s0)
                  auipc        tp, 469975
                  sub          gp, s9, s10
                  la           t5, region_0+798 #start riscv_load_store_rand_instr_stream_3
                  or           tp, s11, gp
                  sra          s10, s3, s7
                  sltu         t3, t6, s6
                  lb           s4, -1(t5)
                  slli         a7, sp, 8
                  lbu          s7, 8(t5)
                  sltu         t4, s8, sp
                  sltiu        a0, s1, -1823
                  andi         t2, s1, -472
                  sll          a6, t5, s3
                  or           s4, s10, tp
                  lbu          zero, 9(t5)
                  slti         tp, ra, -298
                  lui          s7, 970980
                  lw           a6, -2(t5)
                  srai         a2, s5, 21
                  lh           a6, 12(t5)
                  lbu          tp, -3(t5)
                  srli         s2, s1, 11
                  slt          ra, t3, s5
                  sb           a0, -10(t5)
                  auipc        a1, 1022215
                  srai         s6, t3, 27
                  lhu          t1, -8(t5)
                  lb           t4, 6(t5)
                  sb           s10, -10(t5)
                  lb           s3, 1(t5)
                  xori         t3, s4, -1609
                  slt          a5, s2, t0
                  lbu          s4, -11(t5)
                  lui          a2, 740047
                  add          s3, gp, gp
                  andi         sp, s2, -880
                  or           s3, s4, t5
                  sb           t4, -11(t5) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1308 #start riscv_load_store_rand_instr_stream_1
                  xor          s6, a2, ra
                  and          t6, a0, s3
                  lb           s4, 60(sp)
                  lbu          t0, -38(sp)
                  xori         a7, t1, -1143
                  sh           s8, 16(sp)
                  lb           tp, 10(sp)
                  sra          a0, a3, s5
                  lui          t3, 312287
                  sb           s7, 10(sp)
                  slt          a1, t0, a6
                  addi         a0, a3, -1152
                  srli         t1, s6, 9
                  add          s3, t0, t3
                  lb           s6, 3(sp)
                  sb           a3, -26(sp)
                  xor          a6, s8, a1
                  lbu          gp, -39(sp)
                  lh           s4, 46(sp)
                  slt          s7, a5, s4
                  sw           a0, 16(sp)
                  or           tp, s9, a2
                  slt          s5, s6, a2
                  lbu          gp, 10(sp)
                  srl          t6, a1, s11
                  lbu          s10, 22(sp)
                  lbu          s9, -25(sp)
                  lbu          a2, -51(sp)
                  lb           a7, 51(sp)
                  sh           s8, -28(sp)
                  lhu          a6, 64(sp)
                  slti         t2, a1, 1422
                  sb           a7, 22(sp)
                  sra          zero, gp, s0
                  slt          s1, s4, sp
                  sll          t4, s3, t1
                  lbu          s1, -56(sp)
                  sra          s7, a1, ra
                  addi         s9, gp, 1736
                  add          a7, t1, a5
                  lhu          gp, 42(sp)
                  sll          s3, a7, t0
                  ori          a3, ra, 1366
                  sb           s6, 61(sp)
                  slt          s1, s7, t2
                  sb           s9, -61(sp)
                  lh           t3, -24(sp)
                  sh           s0, -14(sp)
                  addi         t5, t4, 986
                  andi         a3, sp, -1511
                  xori         a1, s1, -163
                  lbu          s4, 32(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+554 #start riscv_load_store_rand_instr_stream_4
                  lb           a2, 13(sp)
                  sb           t0, -5(sp)
                  slli         a1, t4, 4
                  sb           t4, -3(sp)
                  addi         a3, a7, 562
                  sw           t4, -10(sp)
                  or           a7, s10, a6
                  auipc        a5, 526012
                  auipc        t6, 646784
                  xor          t4, s0, a6
                  srli         s4, sp, 14
                  lbu          s7, 9(sp)
                  slti         zero, tp, -1026
                  srli         s11, a5, 26
                  lb           s1, 2(sp)
                  lh           s3, 10(sp)
                  sltu         s3, a6, a5
                  lbu          t0, -7(sp)
                  nop
                  addi         a3, s1, 1568
                  andi         t1, a6, 935
                  sub          s11, s2, a1
                  or           s3, t5, a1
                  ori          s3, s1, 1582
                  lui          s3, 1046117
                  addi         t2, s5, -806
                  lb           a0, 3(sp)
                  srli         tp, sp, 4
                  addi         a1, a2, -1385
                  sb           t6, -3(sp)
                  add          s6, s10, s3
                  add          gp, s7, s2
                  sh           s2, -14(sp)
                  lbu          s6, -12(sp)
                  lbu          zero, -11(sp)
                  nop
                  sra          t4, s3, tp
                  nop
                  sb           ra, -4(sp)
                  xor          s11, ra, s0
                  xor          a2, s8, s11
                  slti         a3, t3, -1763
                  addi         s4, s7, -982
                  lb           a1, -5(sp)
                  lh           t4, -14(sp)
                  sll          t0, a1, s3
                  lbu          a6, -6(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_1+202 #start riscv_load_store_rand_instr_stream_0
                  add          t6, a2, a3
                  lbu          a3, 18(a0)
                  sltiu        t4, t3, 407
                  or           s11, s0, s11
                  addi         s9, zero, 716
                  sra          gp, a6, t2
                  lui          ra, 828376
                  slli         s5, s1, 3
                  lbu          a1, 188(a0)
                  lhu          s5, -70(a0)
                  lw           s1, 154(a0)
                  sh           t2, 136(a0)
                  lb           t3, 2(a0)
                  sh           s6, -2(a0)
                  sb           ra, 69(a0)
                  sb           gp, 128(a0)
                  sltu         a3, a7, s4
                  srl          s9, t2, t5
                  lb           ra, -97(a0)
                  ori          t2, t0, -574
                  sll          a6, a6, s4
                  auipc        s7, 284713
                  lb           s7, -30(a0)
                  srl          t2, s7, a3
                  sh           t0, 58(a0)
                  ori          gp, s10, 113
                  sll          t3, a6, a6
                  lb           s4, 161(a0)
                  sb           a2, 191(a0)
                  sltiu        a1, s8, -1472
                  xori         t2, s11, -308
                  lhu          gp, 76(a0)
                  auipc        t3, 718412
                  addi         s4, s9, -1563
                  slli         s1, s3, 1
                  sltu         gp, s10, s1
                  nop
                  lb           t4, -180(a0)
                  slt          a5, s1, t4
                  lbu          s10, 207(a0)
                  lh           s11, 240(a0)
                  lb           a3, 150(a0)
                  sub          s5, tp, a7
                  lhu          a1, 142(a0)
                  lb           t1, 239(a0)
                  auipc        a2, 449219
                  sltu         a2, a2, s6
                  sb           s7, -143(a0)
                  lb           a3, 84(a0)
                  sll          s2, s2, s5
                  slli         tp, t4, 13
                  lui          s4, 490973
                  add          t3, ra, s10
                  sb           s5, 153(a0)
                  lbu          a7, 92(a0)
                  lbu          s11, 131(a0)
                  lbu          a1, -80(a0)
                  sb           a4, 63(a0)
                  lhu          a3, -168(a0)
                  lbu          a3, 2(a0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1918 #start riscv_load_store_rand_instr_stream_6
                  ori          s11, s6, -1337
                  lh           s3, 64(sp)
                  lh           t1, -250(sp)
                  sltu         t1, s9, s4
                  lhu          t0, -6(sp)
                  auipc        a3, 548415
                  and          gp, sp, a4
                  sb           t6, -109(sp)
                  lb           t5, -75(sp)
                  sltu         a5, s3, s6
                  lb           a2, -60(sp)
                  lb           a2, -69(sp)
                  auipc        tp, 192552
                  sra          s1, t3, zero
                  lhu          s4, -92(sp)
                  and          s2, a3, s3
                  lb           gp, 9(sp)
                  sll          a3, ra, a6
                  srl          zero, s1, s8
                  srai         s11, s6, 21
                  or           s7, s2, ra
                  sra          a1, a5, t5
                  lb           ra, -135(sp)
                  lbu          s4, -161(sp)
                  sh           a5, -138(sp)
                  sra          s1, ra, a1
                  sb           gp, 39(sp)
                  or           s6, a4, zero
                  add          a6, s0, s0
                  sb           s3, -39(sp)
                  xor          s5, s9, s9
                  lui          zero, 999936
                  srl          s10, s4, s4
                  sltiu        t4, gp, -398
                  sh           tp, -166(sp)
                  lui          a6, 452517
                  lbu          a2, -31(sp) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+1562 #start riscv_load_store_rand_instr_stream_5
                  lbu          s1, -13(tp)
                  lbu          s6, -8(tp)
                  sra          s9, t5, s3
                  sb           a2, -13(tp)
                  lbu          s1, -3(tp)
                  sw           s7, -10(tp)
                  sh           s7, 2(tp)
                  lbu          t6, 3(tp)
                  sb           s7, 1(tp)
                  sh           s0, 10(tp)
                  xori         s3, s8, -999
                  andi         a3, s3, -174
                  lb           a7, 5(tp)
                  lui          a1, 509286
                  sb           ra, -1(tp)
                  lbu          sp, -5(tp)
                  lbu          s4, -3(tp)
                  andi         s9, s11, -763
                  slti         t4, a1, -1451
                  sub          t6, a5, a4
                  sltu         s9, t4, s3
                  xori         s5, a0, 975
                  slli         s11, sp, 30
                  or           t1, t5, t3
                  lw           a7, 14(tp)
                  or           a6, s5, s6
                  nop
                  lb           s10, -11(tp)
                  sh           s1, 0(tp)
                  lb           s2, -6(tp)
                  sb           t2, -1(tp)
                  lb           t0, 6(tp)
                  lb           s4, 4(tp)
                  sh           s6, -16(tp)
                  addi         s6, a4, -591
                  sb           sp, 8(tp)
                  lb           s9, -16(tp)
                  lh           ra, -4(tp)
                  lbu          a5, -8(tp) #end riscv_load_store_rand_instr_stream_5
                  or           sp, tp, t2
                  bltu         zero, s7, 17f
                  blt          s0, s6, 12f
                  bgeu         s11, zero, 22f
                  blt          s0, sp, 22f
                  addi         s5, t6, -825
                  sll          a5, t3, a5
                  andi         s10, a4, 164
                  xori         a5, a2, -522
                  lui          s4, 175216
                  sub          ra, s11, a5
                  or           a2, a7, a7
12:               srl          a1, s6, tp
                  nop
                  slt          t6, s11, s5
                  andi         t6, s3, 720
                  bne          s4, s3, 18f
17:               slt          t5, t0, a4
18:               andi         s7, gp, -1327
                  nop
                  and          s6, t5, t2
                  xori         t1, a1, 939
22:               srl          t2, a3, s0
                  lui          zero, 85375
                  sltu         gp, s0, a3
                  slli         s3, s6, 8
                  srli         t2, s0, 23
                  beq          gp, a4, 29f
                  sll          a3, sp, a6
29:               sub          a3, a3, a1
                  slt          a3, s10, s1
                  xor          t5, t1, s5
                  bltu         t3, s8, 51f
                  or           t0, ra, a3
                  bgeu         a1, s3, 51f
                  nop
                  slt          s9, s2, a0
                  beq          gp, s7, 57f
                  addi         s1, t4, 992
                  blt          s7, zero, 48f
                  bge          t4, s10, 51f
                  sra          a1, gp, t4
                  and          t6, gp, a6
                  sltiu        t3, a1, -1352
                  srl          t3, s2, a1
                  blt          s4, t3, 55f
                  sra          a7, t1, tp
                  nop
48:               addi         tp, s7, -524
                  xor          t6, s11, ra
                  bne          s4, t2, 58f
51:               nop
                  slli         t6, t2, 18
                  bgeu         t1, a6, 65f
                  slti         a6, tp, -1062
55:               add          t5, s11, a5
                  sltu         a0, t1, a6
57:               slti         s6, zero, -921
58:               sltiu        s11, s5, 840
                  sra          s3, s10, a5
                  slti         s4, s1, 1242
                  srli         s9, s10, 17
                  srai         t2, s8, 13
                  bne          t3, sp, 73f
                  and          a3, t0, s11
65:               sltiu        zero, s0, -901
                  lui          a2, 11120
                  sltu         t0, tp, zero
                  slli         s4, s7, 18
                  auipc        zero, 149710
                  nop
                  sub          s10, t6, sp
                  xor          s5, a3, a0
73:               andi         a3, s7, 1465
                  auipc        ra, 532330
                  xori         t5, t0, 1228
                  srl          s10, t6, s10
                  slt          s10, a6, s11
                  sra          gp, a3, t6
                  bgeu         a5, s8, 91f
                  ori          s3, t6, 1341
                  beq          s2, s0, 101f
                  auipc        a3, 469302
                  bne          s8, a3, 98f
                  srl          s11, gp, s7
                  blt          t1, a5, 97f
                  ori          s10, t3, 1617
                  ori          s7, a5, -1449
                  srl          s6, s9, s9
                  sub          s3, ra, t6
                  and          s4, s6, tp
91:               bne          s4, s10, 106f
                  ori          a0, t5, -1836
                  bne          s1, t6, 107f
                  sub          t2, s6, s3
                  nop
                  bgeu         t6, s10, 114f
97:               srli         a7, s10, 22
98:               xor          s2, t3, s0
                  bge          s5, s10, 111f
                  xor          s5, s6, a7
101:              ori          t6, s11, -1619
                  auipc        a3, 354514
                  auipc        a5, 389620
                  sltiu        a1, t5, 1978
                  sltiu        a3, t0, 1895
106:              and          a3, t0, s1
107:              or           s6, t3, s11
                  sub          sp, a0, s7
                  bgeu         s10, s2, 117f
                  auipc        a5, 577706
111:              bltu         gp, s11, 117f
                  sra          ra, s2, zero
                  addi         s9, sp, -1428
114:              auipc        s3, 381009
                  bltu         s2, zero, 118f
                  and          s7, t0, s6
117:              ori          t1, a1, 115
118:              xor          tp, s1, s11
                  sll          a3, s9, zero
                  srli         t4, t1, 10
                  bne          t4, gp, 135f
                  slt          sp, gp, a7
                  xor          zero, t0, a7
                  srl          t3, t0, zero
                  xori         tp, s7, -1053
                  andi         t5, s1, -1031
                  bge          s10, s2, 141f
                  beq          s7, t1, 140f
                  sltiu        sp, t4, -353
                  bltu         a1, t6, 143f
                  ori          t6, a3, -1139
                  slti         s3, s9, -1492
                  sll          t0, a6, tp
                  sltu         t0, t0, s1
135:              sltiu        a6, t5, -1204
                  xor          s10, s7, t4
                  slt          tp, a2, sp
                  sll          sp, ra, gp
                  srai         a7, a3, 6
140:              addi         s2, a7, 962
141:              sll          t4, a1, s0
                  srl          s5, s5, s8
143:              srai         s7, s0, 26
                  srli         s11, sp, 19
                  xori         a7, a5, 1336
                  ori          a1, a5, 523
                  xori         a7, a1, -1553
                  slti         s10, ra, 1066
                  andi         a7, s3, 953
                  beq          a0, ra, 164f
                  bltu         t0, s7, 153f
                  bgeu         t4, s2, 162f
153:              addi         gp, s1, 1659
                  lui          t5, 602663
                  bltu         t0, s11, 157f
                  sub          s5, a1, a0
157:              or           s7, s5, s8
                  bne          t6, t6, 170f
                  sltu         zero, a6, ra
                  bge          s11, s3, 168f
                  ori          zero, gp, -1727
162:              srai         s6, zero, 16
                  bgeu         tp, sp, 181f
164:              andi         sp, a4, 1973
                  lui          tp, 591070
                  slti         t6, t2, 1941
                  sltiu        gp, t2, 1901
168:              bgeu         t1, s8, 180f
                  lui          t1, 562137
170:              ori          a5, s1, -1131
                  sltiu        t6, t4, 2006
                  sub          t5, a3, s11
                  blt          a5, s11, 186f
                  nop
                  srai         s5, s6, 2
                  sub          s3, s2, a1
                  bgeu         t1, a7, 197f
                  or           s9, s2, s6
                  ori          s4, t3, 1611
180:              and          gp, s5, s2
181:              bgeu         s9, a7, 199f
                  add          s5, t3, s1
                  sub          s4, s7, a0
                  nop
                  srli         s5, tp, 3
186:              sub          t2, sp, s2
                  sltiu        s10, zero, -485
                  nop
                  ori          tp, a7, 1486
                  sll          s5, t4, a2
                  or           a7, a4, s6
                  nop
                  slt          s7, t2, t1
                  ori          s7, a0, -239
                  slt          s6, a1, t5
                  sra          s1, t4, a7
197:              sltu         a6, s7, s11
                  andi         s7, s5, -1684
199:              bne          t4, s1, 207f
                  sra          a7, t2, a3
                  bne          t2, s9, 215f
                  bgeu         s11, t5, 221f
                  blt          s4, s11, 218f
                  xor          t6, s2, s9
                  nop
                  sra          s2, t0, s3
207:              sll          a2, a7, a3
                  slt          sp, t3, s4
                  sub          s3, a2, a0
                  slt          a3, a5, a7
                  sll          t4, sp, gp
                  slli         a2, t1, 5
                  auipc        a7, 244807
                  xor          a3, s10, s7
215:              bltu         s6, t0, 224f
                  sub          gp, t3, s4
                  sltiu        s9, s0, -739
218:              andi         t1, ra, -883
                  bgeu         zero, s7, 230f
                  bne          s11, s6, 223f
221:              lui          s10, 637052
                  addi         a7, s4, -1116
223:              beq          a7, s4, 242f
224:              ori          zero, a5, -1758
                  bne          a2, a3, 245f
                  bltu         a3, s7, 240f
                  srl          s1, a1, s3
                  slti         zero, s2, 1838
                  nop
230:              sltu         t0, a6, t0
                  ori          a0, s3, -1989
                  and          s2, a3, t2
                  addi         a7, s4, 1737
                  slt          s10, t0, a6
                  bgeu         t6, s2, 247f
                  bgeu         t2, a6, 253f
                  slli         t4, t2, 22
                  slt          tp, t4, s0
                  bltu         zero, ra, 249f
240:              bgeu         s6, s9, 256f
                  slt          a1, a3, a2
242:              nop
                  or           s9, a7, a4
                  bge          s4, a6, 259f
245:              sra          s6, s0, sp
                  add          a1, t1, a7
247:              bne          a7, a3, 259f
                  or           sp, s6, s6
249:              slti         a2, s0, 1884
                  srai         t4, t3, 30
                  srli         s10, a5, 18
                  nop
253:              slti         s4, s10, -434
                  or           sp, a7, a0
                  sltu         t4, s6, s1
256:              sll          s7, a6, a4
                  and          ra, ra, t4
                  slt          a5, t0, a1
259:              auipc        t5, 856410
                  bltu         a7, s1, 266f
                  xor          t2, s3, s10
                  slt          zero, a3, tp
                  bne          s4, gp, 275f
                  srl          s9, sp, zero
                  lui          s6, 661446
266:              or           t1, s1, s10
                  srli         s1, sp, 8
                  slli         a7, a4, 20
                  sub          gp, s10, t4
                  srli         s6, a7, 27
                  bltu         s9, s0, 281f
                  bgeu         t5, t3, 291f
                  nop
                  ori          t1, s0, 878
275:              sra          s2, a6, s7
                  bne          t3, s6, 282f
                  nop
                  bge          a5, s5, 288f
                  sltu         gp, tp, a4
                  nop
281:              sll          s7, s10, s5
282:              lui          gp, 931833
                  blt          a7, a4, 298f
                  sltu         t3, a3, s11
                  auipc        gp, 218167
                  sra          t6, ra, t6
                  sltiu        t5, a3, 1893
288:              beq          s10, a3, 290f
                  nop
290:              xor          a7, a7, a2
291:              bge          s9, s6, 303f
                  blt          gp, s8, 310f
                  slti         a7, s4, 417
                  beq          s9, s6, 297f
                  srli         t5, s1, 14
                  sltu         a0, t4, s9
297:              ori          s3, t4, 2023
298:              nop
                  slti         s5, s2, 129
                  srl          t6, gp, s4
                  srl          ra, zero, a2
                  ori          s1, a7, 2037
303:              addi         s10, ra, 702
                  slli         t0, s4, 23
                  sll          s10, gp, a7
                  slti         t3, s11, -939
                  lui          s4, 592309
                  nop
                  xori         s11, t2, 616
310:              srli         s3, zero, 4
                  slli         t0, t5, 11
                  blt          s6, a7, 332f
                  sll          s11, tp, a2
                  bgeu         s8, a3, 325f
                  addi         a7, sp, -789
                  sub          s7, a2, a2
                  sltiu        t1, a0, 1176
                  slli         s10, a4, 30
                  xori         s4, gp, -1246
                  srli         s6, a2, 21
                  slli         t0, a7, 6
                  srl          s10, a3, a7
                  bne          a1, a0, 331f
                  bne          a3, s8, 336f
325:              bgeu         tp, t5, 339f
                  sltu         a6, a3, s1
                  bltu         a5, a2, 335f
                  or           s3, tp, a0
                  srl          t6, t4, t2
                  bgeu         t5, sp, 344f
331:              sra          a5, s10, t4
332:              lui          sp, 875440
                  ori          t1, t3, -310
                  lui          ra, 163561
335:              xor          s4, t1, tp
336:              beq          s1, a2, 348f
                  or           t6, s4, s2
                  bltu         s2, a4, 357f
339:              slli         s4, s1, 24
                  bgeu         t1, t5, 350f
                  slti         t3, a7, -899
                  auipc        s9, 791907
                  addi         s7, a1, 1563
344:              and          zero, s0, a0
                  addi         s9, s4, -641
                  and          a0, tp, t6
                  bge          s9, tp, 362f
348:              bgeu         ra, a0, 357f
                  slli         t2, a1, 0
350:              slt          s11, gp, a0
                  bne          t3, s8, 365f
                  add          zero, t6, s3
                  bgeu         s7, ra, 373f
                  sll          ra, t6, s10
                  andi         s3, t6, 342
                  srai         a1, a5, 15
357:              or           t1, a2, t5
                  slli         tp, tp, 27
                  srai         a3, t4, 0
                  sltiu        s1, a0, 1257
                  xori         a0, gp, -356
362:              bltu         t4, a3, 364f
                  slt          s10, a1, t5
364:              xori         s5, t0, 424
365:              lui          s7, 240985
                  sll          t2, ra, a3
                  lui          t1, 731005
                  lui          t4, 682762
                  srl          t5, t2, a6
                  la           s5, region_0+925 #start riscv_load_store_rand_instr_stream_7
                  xor          zero, t4, t5
                  sb           sp, -32(s5)
                  andi         t5, s7, 808
                  addi         s10, s4, -1720
                  lb           a7, 202(s5)
                  lb           t1, 24(s5)
                  sub          s9, t2, a3
                  lw           t1, -105(s5)
                  lb           s1, 66(s5)
                  lbu          t3, 221(s5)
                  addi         s7, s1, -524
                  sb           ra, -43(s5)
                  lbu          a6, 176(s5)
                  sb           a3, 98(s5)
                  lb           a2, -50(s5)
                  slli         t1, t6, 17
                  lhu          t2, -115(s5)
                  lh           s10, 233(s5)
                  lbu          sp, 200(s5)
                  lbu          ra, 16(s5)
                  lhu          s11, -31(s5)
                  sub          sp, tp, a6
                  slti         s6, a7, 958
                  addi         ra, a6, 825
                  sub          t3, ra, ra
                  sh           s11, -197(s5)
                  addi         t3, s5, -869
                  srli         s1, a7, 16
                  sb           sp, 8(s5)
                  sh           ra, 127(s5)
                  lb           zero, -2(s5)
                  lbu          a2, -45(s5)
                  lh           s1, 47(s5)
                  slti         s2, s5, 1989
                  sll          t1, s11, s10
                  ori          a5, t5, -922
                  slt          a1, t3, a4
                  sb           t2, -223(s5)
                  lh           s6, -79(s5)
                  sub          t4, a0, ra
                  srli         ra, a2, 3
                  lb           s10, 8(s5)
                  sb           s9, -132(s5)
                  sh           t2, -83(s5)
                  sra          t4, s1, s6
                  lhu          sp, -253(s5)
                  lbu          s2, -2(s5)
                  lb           t6, 223(s5) #end riscv_load_store_rand_instr_stream_7
                  andi         a2, sp, -1591
                  sra          s6, gp, ra
                  bltu         s8, gp, 390f
373:              srl          s3, s3, s7
                  and          s10, s6, s8
                  sltu         s7, ra, a6
                  xori         zero, t2, -1956
                  blt          a2, a1, 387f
                  sra          s5, a1, sp
                  sra          s9, a1, t3
                  add          s5, ra, a4
                  blt          a7, sp, 398f
                  add          s6, t5, s8
                  or           a3, t4, t6
                  auipc        t6, 479837
                  sll          ra, s10, s6
                  lui          s3, 583126
387:              or           s5, a7, s0
                  lui          s3, 240771
                  addi         t1, s7, 974
390:              sltiu        s7, a1, -1686
                  nop
                  slli         t6, a3, 11
                  sub          s2, a2, ra
                  beq          s10, sp, 406f
                  nop
                  sra          s11, t6, sp
                  sltu         s1, gp, t0
398:              or           t0, t2, a1
                  slti         t3, s0, -1663
                  xor          sp, t4, tp
                  or           a6, s8, s2
                  slti         s4, ra, 156
                  slli         t0, s4, 27
                  sltu         sp, a5, ra
                  xor          a1, t2, s6
406:              bltu         a7, s6, 422f
                  auipc        t0, 831137
                  blt          s5, tp, 421f
                  ori          a7, s10, 1147
                  bltu         gp, s4, 422f
                  blt          a0, ra, 421f
                  beq          s11, tp, 427f
                  slt          s4, a7, tp
                  sltu         a6, a4, t6
                  and          tp, s8, s5
                  andi         t0, s0, 1327
                  slli         ra, t6, 12
                  sub          s10, a5, a7
                  beq          a5, s6, 422f
                  slli         a6, a6, 20
421:              blt          a7, ra, 439f
422:              slt          s4, t1, a6
                  sltu         s1, a0, t2
                  auipc        s5, 909579
                  beq          s11, ra, 437f
                  srl          a1, a6, s11
427:              addi         s11, a3, 3
                  bltu         a2, s11, 442f
                  auipc        tp, 106696
                  sra          s5, a3, t4
                  add          t3, s7, a4
                  sltiu        tp, a7, 1938
                  ori          s1, t2, -1046
                  srai         a5, s2, 22
                  sub          a3, s2, s8
                  srai         s3, ra, 12
437:              xori         a1, s11, -1556
                  addi         s4, a2, -112
439:              sll          t1, s7, s11
                  or           s5, s4, s5
                  auipc        zero, 152106
442:              ori          t2, a5, -1476
                  slti         t1, s11, -1515
                  xori         tp, t6, -440
                  or           tp, t6, zero
                  srli         a5, s3, 27
                  bge          t4, gp, 456f
                  bne          s9, t6, 467f
                  srai         t6, t1, 26
                  xori         s10, s1, -875
                  slt          a7, t5, t0
                  or           t5, a2, t5
                  srli         s10, t5, 14
                  bge          t4, t3, 474f
                  slli         t5, t4, 14
456:              srl          gp, s9, t4
                  sra          sp, s0, s1
                  add          gp, t1, zero
                  sltiu        s1, a2, 287
                  srai         s6, a6, 6
                  ori          a7, tp, 426
                  sltu         a6, a1, t5
                  sll          s7, s10, t6
                  andi         s2, s7, -1404
                  nop
                  sll          t0, s3, s9
467:              slti         s2, s9, 1515
                  slti         gp, s8, -261
                  bltu         t3, s4, 481f
                  slti         t2, s7, 270
                  bne          ra, t5, 473f
                  addi         gp, a3, -913
473:              lui          a1, 982157
474:              srl          a1, t1, s0
                  nop
                  bltu         t1, t1, 494f
                  srl          zero, s9, s7
                  bgeu         s2, s6, 494f
                  srai         a5, s11, 26
                  and          a0, s8, t2
481:              bne          t2, a0, 491f
                  slli         s4, s0, 10
                  srai         a0, s9, 0
                  auipc        s9, 930457
                  sltiu        s5, s2, -839
                  nop
                  srl          s5, a6, sp
                  beq          s5, t0, 496f
                  sll          gp, a6, a3
                  beq          ra, a7, 510f
491:              sltu         s2, a6, s2
                  or           a0, a4, a6
                  slli         s5, tp, 21
494:              srl          s9, t4, sp
                  srli         t2, t2, 17
496:              ori          s4, tp, 251
                  xor          tp, s6, a7
                  bgeu         a1, s10, 509f
                  bge          s6, zero, 518f
                  slli         s3, a0, 20
                  sll          s5, s4, a2
                  sltu         t6, a6, a3
                  xor          s5, t4, a7
                  andi         gp, t3, -246
                  bgeu         s4, gp, 519f
                  slt          a7, t3, a5
                  xor          s4, a5, s11
                  blt          a7, t6, 521f
509:              slti         a6, a6, 1343
510:              sll          t6, s3, a7
                  srli         t4, s4, 6
                  andi         t1, t1, 990
                  bge          a6, a1, 523f
                  sub          a7, s1, a7
                  beq          s1, a0, 532f
                  slli         s3, a7, 27
                  addi         s6, a1, -1605
518:              slt          sp, s8, s5
519:              bltu         a6, s9, 534f
                  srl          s3, t6, a6
521:              bne          t6, a0, 533f
                  bltu         a7, gp, 534f
523:              slti         t6, a2, -108
                  add          t6, t3, t6
                  xor          s1, s2, a0
                  sra          a2, t1, s8
                  srli         s11, a6, 4
                  ori          gp, t5, -983
                  and          tp, s6, t6
                  slli         t3, a5, 13
                  sub          s10, s4, a2
532:              sub          s3, s3, t3
533:              sltu         t2, t5, s7
534:              beq          s0, t4, 546f
                  bltu         s0, t3, 537f
                  slt          t5, s0, s7
537:              xori         ra, s11, 1882
                  beq          s4, s9, 544f
                  add          t4, s6, t3
                  sll          s4, t1, a1
                  slt          a6, t0, zero
                  ori          s1, ra, 1502
                  xori         t1, s3, -1000
544:              xor          s4, s8, a2
                  sll          a3, s1, s8
546:              srai         a6, s7, 5
                  blt          a7, a2, 561f
                  xori         s2, t0, 1630
                  slt          s2, tp, t0
                  lui          s7, 386701
                  and          a5, a6, s0
                  xor          s9, s11, s11
                  xor          s11, s4, s11
                  slti         s10, s11, 770
                  ori          a5, a6, -943
                  sltu         a7, s9, t0
                  slti         a7, a5, 1264
                  slli         t3, t6, 0
                  xor          s9, t5, t3
                  sub          a6, t1, s3
561:              addi         gp, ra, 722
                  and          a0, s10, sp
                  nop
                  sub          ra, s3, s5
                  auipc        a2, 693171
                  bltu         t1, s9, 574f
                  blt          s7, s7, 577f
                  and          s9, a6, a0
                  sltu         sp, t4, a1
                  nop
                  beq          s11, s6, 573f
                  slt          tp, t0, a5
573:              sra          s3, t1, t2
574:              sll          a0, s8, ra
                  bltu         s7, gp, 581f
                  add          a5, t0, a6
577:              add          a0, s7, ra
                  srai         zero, s11, 12
                  add          t1, s0, s4
                  bne          s7, s10, 583f
581:              or           a2, t6, t5
                  ori          t1, a7, -1517
583:              srli         a6, zero, 12
                  lui          t0, 136000
                  beq          gp, s3, 604f
                  lui          t2, 528158
                  auipc        t3, 830467
                  beq          a4, t5, 602f
                  ori          t0, a2, 290
                  sra          s5, a0, s9
                  xori         a6, s2, -1615
                  sll          s2, s7, a1
                  or           s11, s7, sp
                  slti         a0, a2, 469
                  bne          s4, a7, 606f
                  blt          gp, s6, 616f
                  nop
                  bge          s1, t5, 615f
                  sltu         tp, gp, a4
                  ori          a7, t2, -823
                  slti         s9, t1, -745
602:              beq          s7, t2, 604f
                  bne          ra, a4, 615f
604:              srli         a3, s2, 19
                  blt          s7, s6, 619f
606:              slt          s1, t5, tp
                  auipc        s2, 786266
                  bltu         s9, a5, 618f
                  beq          a3, t6, 618f
                  beq          a6, s0, 624f
                  srli         s1, a1, 10
                  nop
                  xori         tp, a4, 984
                  slli         sp, s4, 8
615:              blt          t4, s3, 633f
616:              blt          t3, s3, 635f
                  beq          s7, gp, 625f
618:              sltu         s3, sp, t3
619:              addi         t5, s0, -833
                  xor          ra, s7, a6
                  lui          t6, 457106
                  andi         t1, s11, -1417
                  bltu         s0, s0, 638f
624:              lui          sp, 555033
625:              add          s6, t6, a4
                  bgeu         a5, t3, 638f
                  or           t1, s2, t3
                  andi         s9, a0, -1115
                  srai         s11, t1, 6
                  sll          ra, a5, a3
                  sub          a0, t1, a7
                  addi         a1, s5, -1157
633:              bne          zero, s10, 649f
                  sub          sp, s2, s2
635:              andi         tp, t5, 1700
                  sra          zero, t3, a5
                  addi         s10, s1, -1819
638:              add          tp, t1, s1
                  srai         s2, t3, 0
                  beq          t1, a5, 650f
                  srai         t0, s1, 28
                  slli         s2, s2, 10
                  srai         s6, a1, 12
                  add          s9, a6, t2
                  sll          a2, a2, t3
                  xor          t0, s5, tp
                  xori         t6, gp, 1418
                  bgeu         a1, s10, 663f
649:              or           s11, s9, s7
650:              srai         s10, s11, 8
                  sltiu        a2, t5, -1215
                  bltu         t4, a6, 664f
                  slli         s1, a4, 1
                  slli         s4, ra, 13
                  addi         a0, a2, 1276
                  slt          sp, zero, a6
                  andi         s7, t0, -1777
                  add          s9, t3, zero
                  sra          s10, t2, s2
                  sll          a5, t4, a0
                  srl          s10, s10, gp
                  slti         s5, t6, 1826
663:              blt          t0, gp, 671f
664:              lui          a1, 449031
                  xor          s11, s4, a5
                  sub          t2, tp, t5
                  slti         s2, s6, 863
                  add          sp, s4, t3
                  xor          a5, t5, t6
                  slli         s5, a1, 20
671:              xori         a5, t3, -1425
                  sltu         a1, s10, a4
                  bltu         a2, gp, 686f
                  blt          t6, s9, 694f
                  bge          s7, a4, 693f
                  xori         s5, s4, 1200
                  andi         s7, a4, 70
                  srli         s7, s8, 26
                  sltiu        t0, t3, -307
                  srl          s1, a3, s3
                  bge          t0, t3, 693f
                  sub          s7, s4, s9
                  bne          s0, s10, 695f
                  auipc        zero, 1724
                  bge          a7, t5, 694f
686:              andi         s11, sp, 969
                  bltu         t6, a2, 699f
                  ori          s1, a3, 337
                  add          s9, tp, s10
                  ori          gp, sp, -245
                  slli         s7, a2, 0
                  srl          a2, ra, a0
693:              srai         gp, s2, 2
694:              bgeu         s9, s0, 704f
695:              bge          sp, zero, 707f
                  sra          zero, s11, t0
                  srai         zero, s3, 14
                  beq          a5, s0, 700f
699:              srl          t1, s1, t6
700:              blt          s11, gp, 715f
                  add          a0, a5, a2
                  srli         s11, s4, 15
                  srai         a7, s11, 0
704:              slli         s6, tp, 25
                  add          t6, s1, a2
                  sra          zero, a0, s2
707:              bge          a2, t1, 719f
                  add          a7, s3, s10
                  add          ra, s11, s1
                  ori          a5, t4, 1711
                  sub          zero, s6, a7
                  ori          a1, a1, 1638
                  bge          t2, a6, 731f
                  slt          a7, t6, a1
715:              addi         a3, s5, 1627
                  auipc        t5, 932054
                  xor          a5, zero, t5
                  bgeu         gp, s6, 736f
719:              andi         t6, s4, 923
                  sub          a1, t2, s11
                  andi         t0, a0, -1014
                  ori          s7, t3, 1607
                  nop
                  or           a0, t1, s5
                  sltiu        t6, t5, -624
                  xori         s10, t6, 1394
                  bgeu         s9, s6, 730f
                  and          t2, gp, a4
                  srl          a6, s2, t6
730:              sra          s6, t1, a6
731:              sltiu        a6, zero, 351
                  srai         t6, t1, 28
                  bltu         s7, a2, 749f
                  bltu         a7, a3, 753f
                  ori          sp, a3, -1503
736:              bne          s2, a4, 738f
                  auipc        t3, 276729
738:              sub          a1, sp, t6
                  sll          s10, a2, a1
                  andi         s11, s6, 1017
                  xori         s10, s4, 1219
                  sub          s10, s2, a0
                  lui          t5, 104422
                  bltu         s3, a2, 752f
                  nop
                  add          a7, s9, s4
                  nop
                  bltu         s0, t6, 762f
749:              bltu         s5, t5, 763f
                  xori         t5, a2, 686
                  srl          t6, s7, sp
752:              andi         t5, s5, 1063
753:              beq          a7, s3, 765f
                  ori          t6, a0, 1195
                  slt          s11, t4, a1
                  nop
                  nop
                  sltu         t5, t1, tp
                  xori         t2, tp, -37
                  sltu         a5, s7, s8
                  blt          s5, a6, 771f
762:              sll          s5, s9, s10
763:              sltiu        t2, t4, 1248
                  xor          a1, t4, a5
765:              srl          s9, s6, tp
                  andi         s10, t0, -2023
                  slli         ra, sp, 6
                  andi         t0, t0, 328
                  auipc        a7, 914925
                  beq          a3, s0, 787f
771:              and          s11, ra, t6
                  add          t0, s9, a1
                  srai         tp, t0, 11
                  blt          a2, a2, 794f
                  srli         ra, zero, 10
                  srl          s1, s2, s3
                  lui          gp, 729227
                  lui          s1, 836208
                  sltu         t2, a2, s11
                  beq          a2, tp, 793f
                  addi         s2, sp, 1992
                  beq          a0, a7, 801f
                  andi         s11, s11, -352
                  slt          s1, a3, t6
                  srl          s7, a5, t4
                  srli         s9, s1, 14
787:              slti         a1, s3, 1035
                  bgeu         a7, a1, 794f
                  slt          t5, sp, a3
                  xori         a2, s1, 770
                  andi         s1, a5, -1902
                  and          t3, a5, a6
793:              add          sp, t2, s3
794:              or           t5, s8, s9
                  slt          s7, s5, a0
                  slt          s10, t3, s0
                  srl          a2, zero, a0
                  or           s11, s9, s8
                  bltu         s11, a4, 819f
                  andi         t1, t6, 707
801:              slt          a6, t6, s7
                  or           t6, s9, a5
                  bge          a1, s1, 811f
                  addi         s5, s6, 132
                  srai         zero, s8, 23
                  and          zero, s7, s11
                  lui          gp, 130868
                  sltiu        a0, s1, -1441
                  slli         s7, s10, 28
                  sltiu        a5, a4, 1665
811:              lui          t6, 773842
                  nop
                  bne          s11, s6, 823f
                  srli         a3, s4, 22
                  bgeu         t0, s8, 830f
                  blt          a6, a3, 827f
                  beq          s2, sp, 831f
                  sra          a0, a4, s9
819:              slti         s7, a1, -965
                  srli         s11, ra, 5
                  bge          s5, s3, 833f
                  beq          s4, tp, 834f
823:              bltu         s10, a0, 831f
                  bge          a0, a1, 836f
                  auipc        s2, 686177
                  srl          t1, a0, zero
827:              bge          ra, a6, 847f
                  blt          t0, gp, 838f
                  ori          t3, a6, -571
830:              srli         a6, t0, 31
831:              add          a7, t5, s0
                  xori         s6, s4, 410
833:              sub          gp, t4, s4
834:              srli         s7, s4, 29
                  sltu         ra, s6, t4
836:              auipc        a3, 376028
                  xori         t2, a1, 168
838:              sltiu        t5, t3, -270
                  bgeu         s6, s11, 842f
                  sra          a2, a5, a1
                  lui          t5, 1605
842:              slti         t1, ra, -1650
                  bne          a1, s4, 859f
                  sltu         a1, a4, s6
                  bge          gp, zero, 857f
                  slti         t1, gp, 1741
847:              sll          s10, a1, t0
                  sub          t5, tp, a4
                  srl          a1, a1, s3
                  slli         sp, gp, 28
                  sltiu        a2, s11, 1896
                  ori          sp, s6, -1068
                  sll          a2, s6, s6
                  xor          a0, s3, t0
                  addi         zero, t3, -2019
                  blt          s6, sp, 866f
857:              bge          s11, a4, 867f
                  sltu         a3, s3, s1
859:              or           s2, a7, t4
                  srai         s7, s1, 1
                  auipc        s3, 653251
                  xori         t2, t1, -719
                  bge          t6, s1, 865f
                  andi         zero, sp, 1949
865:              xori         s6, sp, 1304
866:              bne          t2, s9, 868f
867:              and          s5, a6, t0
868:              sltiu        s10, s6, 748
                  auipc        a3, 1040399
                  slt          gp, s2, s5
                  sub          t2, s7, s11
                  bne          s7, t2, 878f
                  slti         a5, zero, 311
                  srli         s9, t1, 22
                  auipc        s4, 984105
                  srl          zero, s7, zero
                  bgeu         s6, s7, 895f
878:              bge          s4, s1, 892f
                  or           ra, s1, a6
                  srli         t0, t2, 16
                  addi         zero, s2, 1058
                  lui          s6, 737719
                  sra          s1, s1, a5
                  slli         s2, a5, 25
                  lui          s7, 1041534
                  beq          s4, s10, 899f
                  xori         gp, t3, 826
                  slt          a2, s11, a5
                  ori          s2, gp, -1851
                  bgeu         ra, s6, 902f
                  sub          s1, t2, tp
892:              sll          a0, s10, a4
                  lui          a0, 289551
                  slti         t1, a4, -1910
895:              slli         zero, a3, 10
                  slli         s6, a7, 21
                  xor          t4, t6, a1
                  slti         s5, t5, 283
899:              blt          t6, t2, 917f
                  ori          s9, s5, -1099
                  add          gp, s2, t6
902:              sra          s6, s8, t6
                  sltiu        s11, gp, 764
                  sub          s10, a7, t0
                  sub          a7, s6, t3
                  bltu         t0, t0, 920f
                  sub          a3, a3, t5
                  la           sp, region_1+1557 #start riscv_load_store_rand_instr_stream_2
                  sub          a6, s10, s2
                  add          a6, s3, s0
                  auipc        t1, 188766
                  slli         a5, s6, 1
                  sh           a5, -1213(sp)
                  lw           t5, -1153(sp)
                  sh           s6, 215(sp)
                  srl          gp, s4, s10
                  or           s3, a0, zero
                  lb           tp, 6(sp)
                  srl          t1, s8, sp
                  add          s9, s2, a7
                  slti         ra, s10, 659
                  sb           s9, -1280(sp)
                  add          t1, s4, sp
                  sh           s4, -773(sp)
                  lb           s6, -30(sp)
                  lbu          t5, -650(sp)
                  sb           t3, -1322(sp)
                  lbu          zero, 302(sp)
                  lb           t6, -100(sp)
                  nop
                  lui          tp, 117174
                  sub          t5, s10, a3
                  lbu          t6, -420(sp)
                  or           s3, a7, t2
                  slt          s7, a5, s3
                  sb           a2, -438(sp)
                  sra          s7, s4, a3
                  sh           s10, -1103(sp)
                  sw           a3, -505(sp)
                  xori         s7, s3, -1123
                  lbu          a6, 336(sp)
                  or           a7, a3, t5
                  lbu          a3, -86(sp)
                  sh           a1, -707(sp)
                  lb           s6, -1314(sp)
                  sltiu        a6, s2, 1421
                  xori         t1, s0, 100
                  slti         a6, t3, -989
                  lw           a5, -393(sp)
                  lb           t1, -464(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         ra, tp, 928f
                  xori         a6, a3, -1810
                  and          a0, a5, s11
                  sltu         s4, s2, s5
                  addi         ra, a6, 1482
                  beq          t1, a1, 930f
                  nop
                  bne          s6, a3, 924f
                  slt          s2, s10, s0
917:              xor          a3, s1, s4
                  sltiu        zero, s4, -1174
                  bltu         a2, ra, 931f
920:              srai         s4, t2, 16
                  nop
                  sra          a6, s6, zero
                  bgeu         ra, t3, 931f
924:              ori          a0, s3, -304
                  beq          t4, s8, 944f
                  bge          a6, a3, 937f
                  nop
928:              blt          s6, ra, 943f
                  sll          t1, s2, sp
930:              bge          s5, a2, 949f
931:              srl          t6, t0, sp
                  blt          a5, a5, 946f
                  xori         a6, s5, -1868
                  lui          zero, 769987
                  slli         s3, a7, 28
                  beq          t4, t3, 951f
937:              bge          s8, s6, 956f
                  sltu         s1, s2, t4
                  xori         s11, a1, -1227
                  sltu         s6, sp, s2
                  or           t5, a0, t3
                  nop
943:              xori         s3, s3, 1321
944:              slli         t2, s7, 4
                  sltiu        zero, t4, -341
946:              or           a0, a4, s4
                  sra          t2, sp, s5
                  ori          t1, a5, -1088
949:              add          s10, s2, a2
                  xori         t4, s8, 1750
951:              bltu         t3, t2, 961f
                  sll          t4, ra, t5
                  or           s1, a7, s11
                  srl          t3, s6, a7
                  slti         s3, s10, -1326
956:              sub          s4, a6, a3
                  xor          a5, s11, s7
                  sra          sp, s3, s4
                  bne          s0, a5, 962f
                  lui          t6, 753253
961:              blt          a2, a5, 974f
962:              addi         s2, sp, 1287
                  blt          a7, s10, 983f
                  bgeu         t0, a1, 976f
                  srl          t0, a1, zero
                  beq          s0, t6, 980f
                  sltu         zero, a1, ra
                  bltu         t2, s4, 978f
                  auipc        ra, 713399
                  xori         s9, s5, -1934
                  srli         t1, a7, 22
                  and          s1, s7, s5
                  and          s7, s9, s5
974:              slti         s7, t5, 1181
                  srli         s6, s9, 16
976:              srai         gp, s11, 8
                  blt          s4, s6, 979f
978:              xor          t6, t1, s10
979:              slti         a3, t2, 402
980:              srai         s4, s6, 19
                  srai         a5, s3, 15
                  sltu         s4, t5, a3
983:              andi         ra, a4, 483
                  srl          t3, t5, sp
                  ori          s10, a1, -721
                  or           a0, t1, s5
                  auipc        a7, 115546
                  bne          s8, a6, 996f
                  blt          s1, s11, 1007f
                  slti         a3, s5, -1322
                  slt          s6, t5, s6
                  sll          t2, s2, s9
                  sltu         t6, a2, a6
                  blt          a6, a2, 1008f
                  add          s2, t3, s9
996:              add          ra, gp, s9
                  andi         t4, s4, -1332
                  slli         t4, s8, 31
                  srli         s11, a6, 1
                  bltu         a3, ra, 1009f
                  sub          s1, s3, s8
                  ori          a2, a1, 1601
                  srl          s4, a0, t6
                  ori          tp, s7, 395
                  bgeu         s6, a1, 1024f
                  auipc        t2, 315384
1007:             add          a1, s7, s1
1008:             addi         s5, s11, 2023
1009:             sltu         gp, a7, a1
                  nop
                  sub          tp, s8, s0
                  srai         a1, gp, 11
                  bge          s1, s8, 1025f
                  blt          t4, s5, 1031f
                  and          a1, a2, s3
                  slti         a2, s2, 1315
                  srli         t1, s10, 31
                  xori         a3, t1, 1963
                  lui          s6, 252220
                  srai         sp, zero, 5
                  sll          tp, t2, a3
                  beq          s0, t3, 1038f
                  bge          a3, a2, 1029f
1024:             xori         s3, t6, 170
1025:             addi         s2, a3, 189
                  nop
                  addi         s9, gp, 890
                  xori         ra, t0, 1081
1029:             addi         s9, a4, 1014
                  andi         t1, s11, -1724
1031:             lui          a7, 122663
                  srli         s5, s7, 3
                  andi         t4, gp, -223
                  sub          a3, t1, a1
                  sltu         a0, sp, a7
                  srli         tp, s8, 2
                  bltu         s8, s8, 1038f
1038:             addi         gp, s8, -1366
                  and          a6, a0, gp
                  lw           ra, 4(s0)
                  ori          s3, zero, -575
                  slt          t2, tp, t4
                  addi         s0, s0, 64
                  sll          sp, s8, s8
                  srai         s3, s0, 24
                  lui          s2, 319555
1423:             addi x19, x1, 1
1423:             jalr x19, x19, 0
sub_1:            bltu         s1, t0, sub_1_stack_p
                  slt          a7, t4, a4
sub_1_stack_p:    addi         s0, s0, -24
                  addi         s1, a1, -1370
                  nop
                  sltiu        s5, a5, 1024
                  sw           ra, 4(s0)
                  sll          sp, t0, s4
                  bge          tp, zero, 3f
                  auipc        t3, 682920
                  slti         sp, s9, -1973
3:                nop
                  bge          s9, sp, 18f
                  bne          sp, s3, 6f
6:                bne          s3, a3, 26f
                  slt          t5, a2, ra
                  sll          s4, s5, s9
                  slti         sp, a1, -1741
                  srli         s1, t5, 22
                  slti         s7, a6, -1075
                  nop
                  bge          t0, t1, 31f
                  bge          zero, t2, 22f
                  slti         s10, s2, 1929
                  andi         a1, zero, 80
                  blt          s1, a6, 34f
18:               sra          t4, t4, t5
                  sub          t6, sp, s5
                  bltu         s3, a7, 27f
                  blt          a5, s9, 27f
22:               auipc        s10, 1028608
                  or           ra, t1, s0
                  bgeu         sp, a2, 29f
                  srai         zero, sp, 15
26:               add          s2, t4, s9
27:               xor          s11, a1, s0
                  add          t1, s8, s11
29:               sltiu        sp, zero, -1598
                  slli         s7, s5, 11
31:               and          s7, sp, a4
                  sll          a6, zero, t1
                  add          t0, a5, a6
34:               bgeu         gp, s4, 50f
                  bne          s6, zero, 41f
                  xori         a5, tp, 941
                  srl          a7, sp, ra
                  add          a3, a3, s7
                  sll          s7, s6, s3
                  xori         t3, ra, -2029
41:               blt          s11, gp, 50f
                  bgeu         t5, s8, 53f
                  xor          t5, t6, s0
                  andi         a5, tp, 1406
                  blt          t2, a3, 51f
                  addi         a3, s4, 1936
                  add          tp, tp, t1
                  blt          t4, t1, 58f
                  slt          s7, s11, tp
50:               slli         tp, t1, 3
51:               auipc        t1, 55663
                  slt          a3, zero, a3
53:               sub          s4, a4, s4
                  ori          a3, a2, 1598
                  or           t1, a4, tp
                  sltiu        t5, s6, 1064
                  sra          ra, t1, t5
58:               addi         t1, t0, -1276
                  lui          a1, 1010504
                  sltiu        s5, t1, -630
                  slti         a2, t3, -378
                  lw           ra, 4(s0)
                  srl          s1, s10, zero
                  and          a7, s6, s5
                  slli         t3, sp, 6
                  addi         s0, s0, 24
                  srli         a5, s2, 24
                  or           t6, a3, a7
                  srli         t2, s5, 28
78:               addi x12, x1, 1
78:               jalr x12, x12, 0
sub_2:            sll          a7, s8, gp
                  addi         s0, s0, -28
                  srli         s2, s7, 31
                  sltu         s10, s7, tp
                  sw           ra, 4(s0)
                  lui          t4, 168243
                  sltiu        t6, s10, 1225
                  and          s1, t5, s2
                  xori         t6, a3, 19
                  slti         t6, s6, -1510
                  bne          s0, s5, sub_2_j3 #branch to jump instr
                  srli         t1, s9, 29
                  srli         s2, s0, 3
                  sll          s4, s8, zero
                  sll          t6, a6, t3
                  ori          s6, t3, -1270
sub_2_j3:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  add          s5, s0, s0
                  blt          s8, t2, 5f
                  addi         a3, a2, -1938
                  sltiu        sp, zero, -1177
                  xor          a3, t4, a7
5:                xor          t0, a0, ra
                  nop
                  bgeu         s1, t6, 18f
                  srai         s7, s4, 23
                  slti         s9, t0, -1850
                  slti         t2, tp, -999
                  srli         a7, ra, 7
                  srai         s6, s2, 4
                  and          t5, t6, s3
                  bltu         t6, t2, 23f
                  ori          s2, a5, 196
                  srli         a0, a5, 26
                  and          t0, s1, tp
18:               blt          a1, s11, 24f
                  blt          s0, s10, 24f
                  sll          t0, t1, s9
                  srai         zero, a2, 15
                  slli         s9, s7, 20
23:               slt          t4, s2, ra
24:               slt          t2, sp, t5
                  andi         a0, s6, -1112
                  or           a7, s9, s10
                  lw           ra, 4(s0)
                  sra          s10, s10, s7
                  addi         a3, a7, -181
                  addi         s0, s0, 28
                  srai         s4, s3, 27
49:               addi x11, x1, 0
49:               jalr x11, x11, 0
sub_6:            beq          t1, t6, sub_6_stack_p
                  slti         t4, s1, -1909
                  addi         s3, a3, -346
sub_6_stack_p:    addi         s0, s0, -52
                  sw           ra, 4(s0)
                  xori         a2, ra, 846
                  srli         a1, s3, 6
                  la           sp, region_0+1975 #start riscv_load_store_rand_instr_stream_0
                  srli         a1, s4, 14
                  ori          a3, zero, -602
                  lbu          a5, -1(sp)
                  add          a2, t3, t5
                  lhu          a7, 9(sp)
                  lbu          t6, 6(sp)
                  lui          a6, 922301
                  addi         s2, a2, -1989
                  sb           ra, 2(sp)
                  lbu          t1, 11(sp)
                  lb           t1, 8(sp)
                  xor          a7, t3, sp
                  lb           t0, 14(sp)
                  sub          t3, t1, s10
                  sh           t4, -13(sp)
                  auipc        a7, 84097
                  lbu          a2, 10(sp)
                  nop
                  lh           s10, 15(sp)
                  lhu          s9, -3(sp)
                  lbu          a7, -15(sp)
                  sltiu        a7, s10, -1195
                  xori         a0, s8, -953
                  lbu          s2, 4(sp)
                  srai         t6, s2, 14
                  slli         s10, t4, 30
                  sb           s11, -4(sp)
                  sw           gp, -3(sp)
                  xor          s10, a4, s6
                  xor          a3, s8, a0
                  srl          a7, t0, s10
                  lbu          zero, 7(sp)
                  or           s9, s11, zero
                  lw           a1, 5(sp)
                  lb           s5, -12(sp)
                  lbu          a1, -2(sp)
                  sb           tp, 5(sp)
                  xor          a2, s7, s10
                  srl          tp, zero, a6
                  slli         s6, s11, 9
                  lhu          t5, 5(sp)
                  sb           t0, -10(sp)
                  slt          t3, t5, zero
                  sh           t3, 9(sp)
                  slli         s6, s9, 31
                  xor          a5, s1, s0
                  srai         s4, a1, 6
                  sb           a0, 2(sp)
                  sb           s7, 8(sp)
                  sltu         s3, sp, t4
                  slti         a0, gp, -1153
                  sub          s11, s8, s10
                  andi         a1, t0, 892
                  srli         t1, gp, 28
                  srl          a0, t0, s0
                  sb           a3, 10(sp)
                  lbu          s1, 13(sp)
                  sh           t5, 13(sp)
                  lbu          t0, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+40 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, 13(sp)
                  lw           ra, -4(sp)
                  srli         a7, tp, 14
                  xor          a2, s6, a0
                  slli         s2, s9, 21
                  srli         s6, a1, 9
                  slti         gp, gp, -1047
                  nop
                  lh           t3, 0(sp)
                  lbu          t1, 15(sp)
                  lh           t3, -14(sp)
                  slti         a0, s8, 179
                  srli         ra, t5, 18
                  andi         t3, ra, 1967
                  sub          s6, sp, s11
                  sltiu        t2, s4, -150
                  lui          s1, 715596
                  lh           s5, -10(sp)
                  auipc        a5, 975601
                  sh           t4, -2(sp)
                  lhu          t4, -10(sp)
                  xori         s6, tp, -1834
                  auipc        tp, 869221
                  sb           a1, -13(sp)
                  slli         t3, s9, 2
                  lw           ra, -8(sp)
                  sw           s11, 12(sp)
                  lb           tp, 7(sp)
                  lw           s5, 12(sp)
                  andi         t0, a3, 1827
                  andi         a7, s6, 1451
                  lh           t2, -10(sp)
                  sra          a7, a5, s4
                  sb           a3, 3(sp)
                  sltu         gp, sp, a7
                  auipc        s3, 120669
                  lh           a1, -6(sp)
                  lhu          s7, -4(sp)
                  lbu          a3, -3(sp)
                  slti         a0, t1, 1122
                  sb           s11, 8(sp)
                  sra          tp, t6, s11
                  lbu          s9, -2(sp)
                  lb           s9, -12(sp)
                  sll          t2, a2, s0
                  lh           s3, -6(sp)
                  xori         ra, t0, 1872
                  lhu          tp, 4(sp)
                  slti         a6, s5, -191
                  lbu          s10, -12(sp) #end riscv_load_store_rand_instr_stream_2
                  sra          ra, a3, t4
                  slt          a0, a0, a1
                  slli         t3, gp, 3
                  slti         sp, s2, 632
                  xor          a5, sp, a7
                  blt          s0, a7, 7f
                  sll          a3, s8, zero
7:                lui          s4, 877490
                  sltiu        s11, t5, 832
                  srl          s3, s10, s2
                  xor          s4, tp, t0
                  srl          t4, s5, a2
                  bge          tp, a0, 13f
13:               sub          s9, s8, s5
                  auipc        a0, 394487
                  bne          a5, s9, 22f
                  bgeu         a5, s6, 19f
                  blt          a1, a5, 37f
                  slti         s10, s11, -1842
19:               srai         t4, t0, 23
                  andi         s9, s11, -224
                  andi         s9, t4, 903
22:               beq          a6, s8, 29f
                  bne          a1, s3, 28f
                  srl          ra, zero, t2
                  andi         a0, a2, 823
                  sltiu        gp, s11, 1067
                  slli         a6, ra, 16
28:               auipc        a0, 231854
29:               beq          s5, s2, 37f
                  sltu         t3, a2, a0
                  lui          gp, 155108
                  sll          a0, t1, a7
                  xor          gp, s11, s11
                  sltiu        a7, s9, 939
                  nop
                  slli         t5, s11, 0
37:               bne          t2, a1, 52f
                  andi         s4, a0, -1311
                  srl          gp, sp, a1
                  xori         a5, a1, 1618
                  auipc        a2, 901694
                  sub          a0, t5, zero
                  slli         s2, s8, 8
                  srl          t3, a0, ra
                  add          s1, s5, a4
                  srl          s3, a5, s1
                  slti         t4, t0, 813
                  srli         s9, s6, 27
                  xori         s9, a0, 798
                  addi         a0, a4, 1938
                  and          s1, s5, sp
52:               sltu         a6, gp, a4
                  bge          s7, t6, 60f
                  bgeu         ra, tp, 73f
                  slt          t0, s6, a5
                  bltu         s4, zero, 59f
                  sll          s2, s0, a6
                  bne          t0, s6, 61f
59:               bltu         s11, a2, 79f
60:               xori         s9, t4, -845
61:               xori         s6, a5, -1468
                  andi         sp, t3, -1697
                  addi         s9, a7, -675
                  bltu         t6, a0, 74f
                  bge          s4, a6, 83f
                  slli         a6, s9, 22
                  bgeu         a6, s10, 69f
                  sll          tp, tp, gp
69:               srli         a6, s0, 27
                  srli         s11, a6, 0
                  slt          t1, zero, a5
                  srl          t4, a7, s5
73:               slt          a2, t2, t5
74:               andi         t4, s6, -1881
                  slti         sp, a7, 698
                  beq          tp, a7, 90f
                  andi         a7, s4, -1724
                  sra          t6, t3, a6
79:               add          s3, a6, s9
                  sltu         s10, s11, a1
                  xor          a0, t4, t3
                  slt          t0, s6, s9
83:               xori         s4, s7, 1982
                  addi         a6, tp, 524
                  sub          t0, a6, a7
                  ori          s5, t6, 959
                  sra          s9, sp, t0
                  add          tp, a5, a5
                  addi         t0, ra, -325
90:               sltu         s6, t2, ra
                  andi         ra, s8, -1013
                  sltu         t5, s1, a2
                  lui          s4, 232443
                  and          s1, a1, s0
                  slli         t3, s5, 15
                  sub          s9, s7, gp
                  sra          t3, s9, gp
                  and          a1, t5, a2
                  nop
                  sub          s7, sp, a5
                  and          t1, s8, s0
                  slt          t3, a1, a5
                  beq          a5, s0, 116f
                  bgeu         sp, s1, 109f
                  bne          s3, s8, 108f
                  sub          tp, s9, s4
                  slti         s3, s8, -303
108:              bne          a2, t1, 128f
109:              sltiu        s11, zero, 620
                  andi         s9, a4, -308
                  sub          t5, a4, sp
                  auipc        s6, 812753
                  bgeu         t2, s8, 126f
                  ori          t3, s2, 913
                  bgeu         s9, gp, 133f
116:              slli         s9, t3, 13
                  nop
                  bltu         tp, s8, 128f
                  nop
                  sub          t6, s6, a5
                  bne          s8, ra, 130f
                  bgeu         t0, zero, 135f
                  xori         t1, s1, -1111
                  xori         s6, s10, -1272
                  sub          t4, zero, a6
126:              srai         s2, s4, 27
                  sll          s9, a4, a0
128:              lui          t4, 48295
                  sltiu        t2, t1, -524
130:              sra          a3, a4, gp
                  or           a3, s2, a6
                  sll          a7, t1, a5
133:              add          t0, s3, s4
                  add          a3, a1, t3
135:              add          s11, t4, s10
                  srli         s5, ra, 13
                  or           t6, a3, ra
                  and          a0, a4, gp
                  sltu         a5, t4, s1
                  add          a7, a3, t3
                  sra          s1, t5, t2
                  sub          t5, a5, gp
                  slt          s5, s6, s5
                  xori         t1, a3, -1291
                  bge          t3, a7, 162f
                  add          s5, t6, s4
                  slt          a2, a0, t6
                  bne          t0, a3, 157f
                  sra          s10, ra, ra
                  srai         t2, t4, 8
                  srl          s6, t0, ra
                  andi         s1, s4, -1942
                  andi         s11, t5, -636
                  xori         t1, tp, 55
                  lui          t2, 896974
                  srai         s3, ra, 1
157:              srai         s10, s7, 20
                  srl          s2, t1, t3
                  nop
                  lui          a7, 1038475
                  sltiu        a7, a2, 396
162:              xori         gp, s1, 751
                  andi         t6, a1, 561
                  srai         a2, s3, 16
                  srai         a1, gp, 4
                  sltu         t4, s8, s10
                  xor          s5, a6, t2
                  sltiu        ra, tp, 768
                  auipc        sp, 961962
                  slti         s3, a5, -168
                  xori         a2, a4, 603
                  sltu         s2, t0, zero
                  sll          a2, s6, a3
                  slti         t2, zero, -1394
                  bltu         ra, s3, 177f
                  blt          s6, t0, 178f
177:              beq          s5, zero, 184f
178:              sltu         t4, s3, s2
                  bltu         t1, t1, 188f
                  sltiu        t1, t5, 1055
                  sub          t5, s1, a6
                  srl          s7, s10, t0
                  nop
184:              sra          a6, a4, s9
                  xor          ra, a7, s8
                  sub          sp, a5, s10
                  slt          s7, a5, a2
188:              sll          s5, s5, s4
                  sltiu        s5, a1, -1385
                  lui          s7, 961289
                  xor          a3, a2, a6
                  or           t0, s9, s9
                  bne          t3, sp, 207f
                  bne          a7, a4, 207f
                  and          zero, t5, s8
                  srai         ra, s4, 27
                  srl          t2, gp, tp
                  sltu         s10, tp, a1
                  xor          t6, s7, gp
                  xor          a0, s7, s1
                  srli         s3, t4, 26
                  and          a7, s10, a4
                  add          s10, a1, s9
                  addi         a3, s9, 1956
                  sltu         sp, tp, a0
                  sltiu        s4, a1, -640
207:              srli         zero, ra, 28
                  and          a2, a1, s2
                  bgeu         t1, a4, 222f
                  ori          sp, s6, 1450
                  srli         a6, s2, 7
                  xori         t1, ra, 954
                  andi         s2, s0, 1212
                  xori         sp, s2, 1143
                  ori          a1, s7, -478
                  srl          t6, a2, a0
                  sll          s5, a5, a2
                  xor          t5, t1, t0
                  sub          zero, a1, s4
                  nop
                  ori          tp, s8, 1209
222:              addi         tp, s1, 86
                  xor          t3, a1, s2
                  slli         a5, s10, 7
                  xori         t4, a5, -1072
                  srl          a6, t6, s0
                  andi         a1, a5, 732
                  slt          s5, s2, a3
                  slti         t3, a5, -1843
                  slt          tp, t1, s4
                  xori         s10, s0, 1869
                  srai         t1, tp, 30
                  srai         zero, a1, 11
                  slti         tp, s0, -2040
                  ori          a6, a3, 1055
                  slti         t6, zero, -7
                  srl          a0, a6, a4
                  srl          t5, s8, a4
                  bltu         t4, s5, 242f
                  ori          s5, tp, 1388
                  bge          t1, s7, 258f
242:              sra          s1, sp, a7
                  blt          a7, t3, 245f
                  xor          t3, a5, a0
245:              xor          zero, t4, t3
                  srli         t2, s2, 13
                  sub          tp, t1, t3
                  bne          s2, s0, 261f
                  slli         a0, s0, 27
                  addi         a1, a5, 1188
                  lui          s9, 521963
                  andi         s4, s6, -733
                  sltiu        a6, a1, 1210
                  ori          t4, a3, -1867
                  beq          s2, s8, 258f
                  xori         s10, t3, 1293
                  sltiu        s5, a0, 463
258:              beq          tp, s2, 278f
                  bltu         a0, s3, 267f
                  xori         a1, s7, -404
261:              xori         ra, a3, 1374
                  or           tp, t2, zero
                  blt          a2, s5, 268f
                  srai         s4, s8, 23
                  srai         ra, a0, 30
                  xori         t3, sp, -1277
267:              or           s11, s7, s2
268:              srli         s9, s11, 21
                  addi         s5, t2, 356
                  blt          s11, s8, 280f
                  sltiu        a7, ra, 724
                  sltiu        s6, s3, -829
                  auipc        s5, 1045551
                  auipc        t6, 245582
                  sltiu        s9, a2, 1026
                  or           s1, t3, t5
                  add          t6, s8, t1
278:              slt          s6, a5, tp
                  slli         s11, s5, 21
280:              srl          s4, s5, s4
                  nop
                  blt          s3, a6, 289f
                  srai         s7, s0, 8
                  auipc        s1, 2675
                  bge          a4, t6, 294f
                  sltiu        s7, a3, -923
                  bltu         a3, tp, 306f
                  addi         s6, tp, 1721
289:              slli         sp, ra, 25
                  lui          s6, 256028
                  and          s6, t1, s9
                  auipc        s4, 372331
                  srl          t6, t2, zero
294:              srli         sp, a3, 17
                  srl          s6, a3, t1
                  xori         tp, a3, 1999
                  lui          a5, 401956
                  or           t4, a1, a2
                  slli         s9, s9, 25
                  sltu         a1, s0, s3
                  srai         a2, s3, 12
                  srl          zero, s9, s10
                  ori          s2, s11, -1083
                  add          s5, sp, a2
                  nop
306:              slt          zero, t1, s1
                  and          t4, sp, s2
                  slli         s6, t0, 9
                  slli         t5, a1, 12
                  la           tp, region_1+1692 #start riscv_load_store_rand_instr_stream_1
                  addi         t3, t5, 732
                  lbu          s9, 13(tp)
                  xori         t6, a7, -1
                  sltiu        a2, a3, -389
                  lb           a6, 14(tp)
                  lhu          s11, -8(tp)
                  lbu          t6, 8(tp)
                  lbu          gp, 2(tp)
                  lhu          t4, 6(tp)
                  and          a7, t6, a6
                  lb           a0, 15(tp)
                  sra          a5, t3, t5
                  sltiu        s1, s1, -1907
                  sb           t2, -11(tp)
                  addi         s11, t3, 1002
                  lb           zero, -12(tp)
                  lb           s11, 15(tp)
                  sb           s0, 6(tp)
                  lh           s4, -14(tp)
                  sb           s1, -11(tp)
                  ori          s6, s9, 1101
                  sb           s10, -13(tp)
                  lbu          t1, -3(tp)
                  sll          s6, s0, s6
                  srl          a1, t3, t6
                  add          s2, s3, s2
                  sb           a3, -9(tp)
                  sb           s1, 10(tp)
                  lbu          s11, -15(tp)
                  lbu          s9, 4(tp)
                  lhu          s10, -10(tp) #end riscv_load_store_rand_instr_stream_1
                  blt          s9, a5, 313f
                  bltu         t2, s8, 313f
                  slti         t2, a1, -1551
313:              auipc        s9, 372624
                  nop
                  bne          a6, s10, 322f
                  auipc        a3, 869659
                  sltu         ra, gp, a3
                  sltu         t4, gp, s10
                  xor          a2, t2, zero
                  xori         tp, t3, -1118
                  beq          t3, a3, 339f
322:              srai         a2, s8, 3
                  xori         t2, s10, 1525
                  srli         t2, t0, 7
                  sub          a0, a2, s1
                  sltiu        s1, a0, -1675
                  or           a1, a3, s11
                  bgeu         s9, t5, 343f
                  add          a0, a4, s0
                  slli         a7, t3, 8
                  bne          a1, s0, 336f
                  sra          s6, s9, zero
                  nop
                  or           s10, s7, a0
                  beq          s10, a1, 355f
336:              sra          s11, sp, ra
                  auipc        s10, 64767
                  sltu         t6, s6, t5
339:              xori         t5, s2, 1985
                  nop
                  add          s10, a5, s10
                  slti         s6, s11, -2034
343:              slli         ra, s9, 27
                  lui          tp, 987391
                  sltu         t6, s8, t4
                  srli         s3, t5, 16
                  and          a2, a2, zero
                  sltiu        s10, s8, 71
                  nop
                  auipc        s11, 884724
                  add          zero, t3, s7
                  sltu         s1, a0, t3
                  sltiu        a2, s8, 1636
                  sltu         tp, s4, gp
355:              lui          t1, 432497
                  bgeu         a4, s5, 374f
                  sltu         s3, s0, s5
                  xori         s6, ra, 1554
                  nop
                  andi         s4, a3, 1542
                  add          s9, zero, t0
                  sltu         ra, t0, a2
                  sub          a5, a2, s10
                  bltu         s5, t2, 384f
                  bge          ra, s4, 368f
                  lui          ra, 160432
                  sltu         t5, s0, a6
368:              sltiu        s2, zero, 1039
                  sub          a3, a7, s11
                  xori         s1, tp, -727
                  bltu         t5, t1, 372f
372:              bltu         s1, t6, 382f
                  bge          s10, ra, 393f
374:              bgeu         s4, a4, 377f
                  sll          t5, s6, s9
                  srai         t3, s0, 7
377:              srai         s7, a3, 13
                  addi         a2, s2, 1417
                  sra          s4, s0, a7
                  srai         a0, s9, 25
                  bge          tp, sp, 398f
382:              auipc        t1, 683790
                  bgeu         t1, a3, 396f
384:              sub          t2, a1, s5
                  srli         t3, a1, 12
                  beq          a7, ra, 393f
                  srli         t0, t0, 11
                  slti         t4, a1, 2037
                  bne          s0, t1, 409f
                  nop
                  xor          a5, s3, s3
                  sll          a6, ra, t1
393:              lui          s3, 206260
                  and          s3, tp, s6
                  sll          s5, s0, s3
396:              sltiu        t3, a6, 1389
                  xori         gp, a2, -1391
398:              bge          s4, s10, 416f
                  bge          ra, s11, 409f
                  or           a5, tp, t2
                  add          t2, s1, a6
                  sub          s9, s11, a1
                  add          a7, a4, a2
                  blt          a0, s2, 419f
                  xor          s11, s7, t2
                  lui          s7, 56714
                  xor          zero, s10, t1
                  bltu         zero, s8, 415f
409:              sub          s11, s9, t6
                  slti         s6, a7, 718
                  sub          s1, s5, tp
                  sub          s10, s3, s11
                  xori         s11, gp, -872
                  xor          t5, s4, s6
415:              bne          a4, s5, 420f
416:              add          gp, zero, zero
                  sub          s6, s8, s10
                  bge          s4, a2, 438f
419:              bge          t2, tp, 422f
420:              sub          s1, zero, zero
                  and          s5, t2, a2
422:              sll          s7, s0, s10
                  xor          gp, s3, gp
                  add          tp, a3, a7
                  blt          t4, a4, 430f
                  bge          s6, a4, 429f
                  and          gp, s9, zero
                  bge          a5, s5, 447f
429:              sll          t2, a5, a0
430:              bltu         s2, a5, 432f
                  bgeu         a3, s3, 433f
432:              bge          s3, s1, 445f
433:              lui          s4, 530759
                  xor          gp, s2, t4
                  bne          a6, s5, 449f
                  slti         a1, t3, 810
                  slti         ra, s10, 1389
                  xori         sp, s9, 369
                  slt          s11, s8, s5
                  nop
                  sra          a5, a6, s8
                  srl          a1, a2, t4
sub_6_j10:        jal          ra, sub_8 #jump sub_6 -> sub_8
                  and          a7, s0, s6
                  bge          s6, s6, 446f
438:              xor          s9, t0, t0
                  auipc        s3, 1001285
                  andi         s2, t5, 1486
                  sub          s7, t5, t0
                  and          a6, a4, s1
                  slti         sp, zero, -433
                  srl          zero, s0, s9
445:              xor          a2, t6, zero
446:              bne          t0, s3, 460f
447:              add          s11, t0, s2
                  andi         a0, t0, 761
449:              blt          a5, t6, 458f
                  add          s1, s1, tp
                  sltiu        s10, t1, 1454
                  srli         t2, sp, 28
                  blt          a5, ra, 456f
                  slli         s3, s4, 24
                  add          t3, zero, zero
456:              sra          s1, a3, a1
                  sll          s6, s0, a0
458:              sll          t1, t2, t6
                  slli         t0, s7, 2
460:              and          t0, tp, s3
                  sll          t3, a3, sp
                  sltu         t6, a0, t2
                  lui          a0, 89591
                  lw           ra, 4(s0)
                  or           s9, a1, zero
                  srli         gp, a0, 10
                  xori         s3, t6, -340
                  xori         gp, s2, -262
                  addi         s0, s0, 52
                  auipc        s5, 164405
629:              addi x5, x1, 1
629:              jalr x5, x5, 0
sub_5:            srai         s5, a6, 3
                  and          t0, t6, a4
                  srli         tp, a5, 15
                  srli         s4, a6, 1
                  blt          t6, s0, sub_5_stack_p
sub_5_stack_p:    addi         s0, s0, -28
                  sw           ra, 4(s0)
                  srai         a3, a7, 12
                  la           a2, sub_6
                  addi         a2, a2, -484
                  slti         s9, t0, -1380
                  or           s11, sp, s8
                  nop
                  srli         t6, ra, 6
                  andi         t4, s0, 1086
                  sltiu        s6, a2, 1076
                  bne          ra, t4, sub_5_j7 #branch to jump instr
                  srl          s4, a3, t0
sub_5_j7:         jalr         ra, a2, 484 #jump sub_5 -> sub_6
                  slti         a3, a0, 1749
                  sra          gp, t6, a7
                  slti         t2, a7, -1462
                  srai         s2, a4, 18
                  sub          s4, t4, t2
                  sltu         t3, t5, a7
                  srl          t3, t3, s2
                  slti         ra, a0, -307
                  bne          s6, a0, sub_5_j8 #branch to jump instr
                  or           a6, tp, t6
sub_5_j8:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  add          t1, sp, t3
                  nop
                  slti         zero, t5, -1411
                  auipc        t5, 364338
                  slli         s7, ra, 6
                  slli         s5, s3, 10
                  slli         s9, a7, 7
sub_5_j9:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  srli         zero, t4, 19
                  or           s6, t3, a3
                  auipc        s11, 717113
                  slti         a2, s10, 1792
                  sra          s10, t6, a3
                  srai         a0, ra, 24
                  srl          s4, s3, tp
                  add          a6, t0, a2
                  beq          sp, s10, 20f
                  srli         s10, zero, 23
                  sub          a7, a7, s10
                  bne          s10, t4, 20f
                  srai         s3, t3, 1
                  sub          t0, a5, t3
                  bltu         s1, s11, 20f
                  addi         s7, a0, -523
                  slti         s5, a7, 920
                  xor          a3, s9, s9
                  xori         a5, t6, -277
                  andi         s7, sp, 950
20:               lui          ra, 505608
                  or           s11, t0, a6
                  nop
                  slt          a2, a6, s0
                  sll          s10, a7, s2
                  and          t3, ra, a4
                  lw           ra, 4(s0)
                  xori         a7, tp, -97
                  slt          t0, t0, s6
                  andi         t2, sp, -1911
                  addi         s0, s0, 28
                  and          t1, gp, ra
70:               addi x23, x1, 1
70:               jalr x23, x23, 0
sub_3:            xor          s4, s4, a1
                  and          a0, a3, s11
                  blt          sp, gp, sub_3_stack_p
                  sltiu        zero, t0, -1605
                  ori          s6, s2, 1136
                  and          t3, s5, t3
sub_3_stack_p:    addi         s0, s0, -12
                  add          s9, a5, t3
                  and          s1, s10, t5
                  sw           ra, 4(s0)
                  srl          sp, a0, s2
                  srl          s7, t6, s9
                  sll          t1, a7, s4
                  nop
                  srli         s10, s4, 18
                  sltu         a1, s7, a0
                  xori         s6, t5, 2023
                  srl          a3, t2, sp
                  sll          gp, t1, a2
                  slti         s1, s8, 1095
                  slt          a7, zero, s2
sub_3_j5:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  sub          s4, a6, s9
                  xori         s3, s3, 413
                  nop
                  blt          zero, t4, sub_3_j6 #branch to jump instr
                  sll          s3, t1, t4
                  lui          t1, 855760
                  or           a2, s9, ra
                  slt          s3, zero, tp
                  nop
sub_3_j6:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  la           sp, region_1+1707 #start riscv_load_store_rand_instr_stream_1
                  and          gp, zero, t2
                  lbu          a3, 10(sp)
                  sb           s10, -16(sp)
                  add          a5, t3, zero
                  lbu          a3, 16(sp)
                  srai         s1, t4, 26
                  or           s6, s3, t0
                  slti         s1, zero, 1461
                  sra          gp, a7, a3
                  addi         tp, a2, 1194
                  sub          gp, a7, s6
                  auipc        s5, 1018412
                  andi         t2, t5, 97
                  sh           s11, -3(sp)
                  sra          s11, t4, s8
                  xori         s11, t2, 845
                  sll          zero, s7, sp
                  sb           zero, 11(sp)
                  srli         t3, sp, 0
                  srai         s4, zero, 9
                  or           s7, a5, a7
                  and          s4, s10, a6
                  xori         s3, t1, -596
                  sb           s5, 7(sp)
                  lui          tp, 514355
                  xor          gp, t0, a5
                  sra          s7, t0, s3
                  lb           s3, 10(sp)
                  andi         a3, a6, -1596
                  srl          s11, s2, a7
                  xori         a3, s1, -332
                  ori          tp, t3, -1604
                  auipc        a2, 195530
                  lbu          a2, 14(sp)
                  xori         ra, tp, -1413
                  lb           t1, -8(sp)
                  sb           s11, 8(sp)
                  sra          a6, s2, t3
                  nop
                  lhu          s2, -13(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+1102 #start riscv_load_store_rand_instr_stream_2
                  slli         a3, t1, 12
                  lui          t1, 103397
                  lhu          tp, -16(s3)
                  ori          a6, t5, 1146
                  lbu          zero, 3(s3)
                  add          sp, s6, t5
                  lb           t3, -9(s3)
                  nop
                  sb           s4, -9(s3)
                  sb           s8, 1(s3)
                  lhu          gp, -12(s3)
                  sra          t6, a1, ra
                  srl          a6, s6, zero
                  sub          s2, a1, s6
                  and          t1, t1, gp
                  lb           s11, -3(s3)
                  lbu          zero, -7(s3)
                  lbu          a3, -16(s3)
                  lb           s7, -15(s3)
                  lbu          a5, -14(s3)
                  lbu          t5, -6(s3)
                  slti         a2, s5, 1151
                  lb           a5, -14(s3)
                  sb           s10, 15(s3)
                  lb           a6, 8(s3)
                  andi         a2, t3, 251
                  lb           sp, -5(s3)
                  lh           a2, 4(s3)
                  ori          t5, t4, 1997
                  nop
                  lw           s1, -2(s3)
                  lb           a0, 1(s3) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+404 #start riscv_load_store_rand_instr_stream_0
                  srai         t1, a7, 22
                  sb           s7, -74(t5)
                  xor          t2, tp, t4
                  sub          s9, t4, s4
                  lhu          a5, -32(t5)
                  auipc        a3, 723789
                  lb           gp, -191(t5)
                  slli         s10, gp, 17
                  sb           s3, -145(t5)
                  lbu          zero, 77(t5)
                  srai         s7, t2, 3
                  nop
                  addi         s4, a7, -669
                  xori         tp, zero, 1418
                  lbu          a5, 53(t5)
                  or           a2, t3, a7
                  slli         tp, s8, 27
                  sb           t3, 19(t5)
                  or           a1, s6, a1
                  sub          zero, gp, zero
                  slti         s6, t4, -1527
                  lbu          t2, 247(t5)
                  sw           t2, 164(t5)
                  srli         a7, s2, 28
                  addi         a7, s6, -1054
                  or           t4, sp, a5
                  srl          a7, a0, gp
                  srli         a5, t1, 19
                  srai         s9, ra, 12
                  slti         sp, tp, 1262
                  sra          a1, t1, a3
                  lb           a1, -57(t5)
                  srai         s5, a0, 23
                  or           s10, s11, a1
                  sh           s9, -54(t5) #end riscv_load_store_rand_instr_stream_0
                  beq          s10, s4, 15f
                  sltu         s3, t4, a2
                  lui          ra, 370436
                  bge          t4, a4, 9f
                  auipc        s1, 590777
                  srl          a1, a7, a5
                  srli         s6, t3, 1
                  nop
                  beq          t4, sp, 23f
9:                slt          s9, t4, s0
                  slt          t3, s7, s8
                  lui          s1, 370318
                  auipc        t1, 571456
                  sub          s10, a2, t0
                  sub          s5, tp, a4
15:               blt          t6, t0, 35f
                  slt          s11, zero, s0
                  slti         s4, t0, -1199
                  sll          s6, t4, s6
                  bge          s6, t6, 29f
                  sltiu        t2, a1, 1258
                  slli         a5, t4, 30
                  and          a1, t2, s1
23:               slli         a5, a2, 26
                  auipc        s6, 672470
                  xori         t5, a1, -471
                  slt          a1, s7, a4
                  auipc        a2, 312287
                  srli         a7, t4, 8
29:               sll          a1, t0, a7
                  nop
                  auipc        s6, 153874
                  sll          a3, a6, t4
                  or           s6, gp, s9
                  and          t1, s5, s0
35:               beq          s10, s8, 50f
                  srl          t6, s1, a3
                  nop
                  slt          tp, s11, gp
                  ori          s7, s10, -222
                  and          s3, t3, a3
                  sra          tp, a7, t3
                  bne          s10, a5, 50f
                  sltiu        a3, a0, -1808
                  sltu         t5, s4, s0
                  auipc        a5, 565480
                  bne          s10, a2, 48f
                  slli         t0, s8, 24
48:               andi         t2, s6, 1433
                  sll          s6, a1, a7
50:               nop
                  sltu         ra, s5, t1
                  beq          s11, s9, 69f
                  ori          a1, ra, -1078
                  and          gp, s11, s9
                  slt          a1, a2, a6
                  sra          a1, a7, a1
                  and          a6, a7, sp
                  slt          s1, a3, t1
                  bge          a6, tp, 61f
                  andi         t0, s4, -939
61:               sra          s2, a4, t1
                  lui          a0, 118399
                  sll          s2, s4, a1
                  andi         s5, a0, -2001
                  and          s3, s11, sp
                  sltiu        tp, s6, -887
                  bltu         tp, tp, 73f
                  beq          a4, s9, 74f
69:               lui          t4, 907722
                  or           gp, s0, t3
                  bltu         zero, s5, 81f
                  bne          a2, s3, 85f
73:               bge          s8, s5, 92f
74:               srl          a2, ra, a0
                  srli         a0, s2, 21
                  or           a7, s4, a4
                  auipc        t0, 997782
                  bne          sp, t1, 89f
                  sltu         a0, zero, s4
                  slli         t1, a1, 29
81:               andi         s10, a0, -1433
                  addi         s1, s9, -1302
                  srl          t1, a4, s1
                  srli         t1, s5, 9
85:               xori         t0, s10, -1187
                  srli         sp, t5, 31
                  srai         s4, s1, 21
                  nop
89:               slt          s6, s8, a4
                  bne          t3, a0, 102f
                  sub          a0, t5, s5
92:               bltu         s2, zero, 101f
                  sub          t0, a3, gp
                  xori         a3, s9, 803
                  bne          t4, s0, 109f
                  sll          s5, t1, a7
                  blt          t4, t1, 114f
                  sub          t5, s5, s2
                  nop
                  add          s3, s3, zero
101:              srai         tp, t3, 29
102:              auipc        s9, 526323
                  slli         a0, a6, 24
                  nop
                  bne          sp, sp, 117f
                  slti         ra, a2, -1523
                  blt          s1, a2, 121f
                  sra          t2, s6, ra
109:              add          s3, t0, zero
                  bgeu         t4, t5, 124f
                  bne          a5, ra, 115f
                  sltu         a7, a7, t6
                  bne          t5, t6, 128f
114:              bgeu         t5, t0, 120f
115:              srli         s11, t0, 11
                  xor          s9, t1, t6
117:              xori         s10, a3, 22
                  slti         s11, s4, 1141
                  or           tp, tp, t3
120:              sra          t3, s3, s0
121:              slti         a6, s11, -1892
                  add          a1, a1, s2
                  bgeu         a1, t4, 135f
124:              bgeu         a0, s3, 134f
                  add          s7, s4, a7
                  or           t3, s0, s7
                  or           ra, a5, s2
128:              xor          a7, s3, s1
                  sub          t5, a5, s2
                  blt          a6, a0, 145f
                  nop
                  srai         a6, s10, 14
                  sra          s5, s1, s4
134:              xor          t3, a5, s5
135:              slli         a7, t0, 0
                  auipc        t2, 333105
                  lui          t2, 773895
                  slli         t0, t4, 8
                  nop
                  srl          s11, a4, s6
                  sltu         s5, s9, a0
                  add          a1, a4, gp
                  addi         a6, s3, -697
                  la           t6, region_0+145 #start riscv_load_store_rand_instr_stream_3
                  srli         a5, a2, 11
                  lh           t5, -3(t6)
                  auipc        s11, 501449
                  lhu          gp, 191(t6)
                  xori         s1, s3, -1672
                  sb           sp, 216(t6)
                  lhu          a2, 49(t6)
                  lw           a3, 243(t6)
                  srli         s5, ra, 0
                  sltu         a1, a4, a6
                  sh           s2, 53(t6)
                  sb           s8, 228(t6)
                  lbu          zero, -122(t6)
                  sb           tp, 216(t6)
                  srli         s4, t5, 12
                  lbu          sp, 208(t6)
                  lh           t3, -83(t6)
                  lbu          zero, 32(t6)
                  sltu         t1, t5, a4
                  slli         t2, s10, 4
                  lbu          s3, -110(t6)
                  ori          s9, a2, -1076
                  sb           s4, -99(t6)
                  sb           s7, 186(t6)
                  nop
                  and          ra, s0, s8
                  lb           t1, -2(t6)
                  srli         ra, t3, 21
                  lb           a6, 236(t6)
                  sb           a0, -12(t6)
                  sltu         s4, s6, sp
                  sub          t4, s2, a5
                  sb           s10, 226(t6)
                  sb           a3, 160(t6)
                  auipc        zero, 269380
                  sb           zero, 29(t6)
                  sll          sp, ra, s3
                  sh           gp, -63(t6)
                  sll          s7, s6, a2
                  lb           t1, -110(t6)
                  lb           zero, 208(t6)
                  lb           gp, 78(t6)
                  and          sp, a0, s5
                  lbu          a5, 88(t6)
                  sh           s3, 145(t6)
                  andi         t2, a0, -534
                  xori         gp, sp, 1675
                  ori          s10, s7, 407
                  sb           tp, 234(t6)
                  slt          s7, s5, s2
                  sb           s8, -20(t6) #end riscv_load_store_rand_instr_stream_3
                  srai         a7, a7, 7
145:              xor          s9, a5, t3
                  ori          s11, s9, 1413
                  bltu         s4, s0, 167f
                  sltu         ra, s4, s3
                  xori         t2, s5, 1867
                  xor          s3, s8, s8
                  xori         sp, t6, 1975
                  nop
                  add          a3, t0, s5
                  and          t3, gp, s1
                  bltu         t0, s11, 172f
                  bgeu         a0, a2, 171f
                  nop
                  srl          a0, t6, a5
                  bgeu         s7, a7, 172f
                  or           a0, s1, s3
                  slti         t3, t2, 585
                  addi         t6, a3, 167
                  srai         s10, a3, 22
                  lui          a1, 927458
                  bltu         a0, a6, 177f
                  sll          s7, a7, s8
167:              blt          s2, a3, 181f
                  auipc        zero, 455526
                  lui          a7, 345148
                  add          s2, s5, a0
171:              slt          a6, s10, a0
172:              add          s4, s0, t6
                  bne          s11, gp, 179f
                  ori          a6, t6, 495
                  slli         s1, tp, 16
                  beq          tp, s11, 188f
177:              bgeu         s3, s0, 185f
                  srli         tp, s6, 2
179:              ori          zero, t6, -1437
                  srai         t1, a7, 6
181:              slti         s2, a3, 824
                  and          a2, zero, t0
                  xor          a3, s11, s4
                  add          s10, a1, a5
185:              bge          ra, s4, 205f
                  bge          a4, a3, 205f
                  add          tp, a1, s0
188:              sra          a2, t5, s11
                  sll          a7, a7, a6
                  add          a3, a7, s3
                  slti         s1, t6, -2022
                  sra          s11, t1, t2
                  srai         ra, tp, 13
                  bge          s3, a6, 209f
                  slt          s6, t3, t0
                  slli         t6, a6, 2
                  bltu         s6, t2, 211f
                  srli         t5, a2, 3
                  sra          s7, s8, t6
                  srai         t2, a1, 9
                  sltu         s2, s1, s2
                  sra          t2, tp, a0
                  slt          s6, sp, s9
                  xor          s2, ra, ra
205:              bge          t4, s5, 211f
                  andi         s11, s1, -78
                  srli         s1, tp, 16
                  srai         tp, t6, 31
209:              xori         s10, s8, -859
                  addi         t2, a4, -642
211:              bltu         s9, s5, 226f
                  or           t6, s10, t1
                  sltiu        s6, a3, 1262
                  sltiu        s5, s5, -1303
                  blt          t6, s10, 217f
                  bne          s8, s11, 226f
217:              sltu         s3, s6, a6
                  xor          s11, t6, t4
                  andi         s2, t5, -1499
                  add          t5, s9, t1
                  slt          s3, s0, t6
                  sra          ra, a2, a1
                  blt          a1, s2, 237f
                  auipc        s5, 501769
                  xori         s1, t6, -2009
226:              srli         a1, s8, 27
                  sll          t5, t6, t3
                  sub          ra, a7, s6
                  nop
                  srai         s7, s2, 3
                  sra          t1, s9, a0
                  slti         s5, t1, -1669
                  sra          s9, t1, s3
                  sra          s6, s2, s10
                  xori         a7, s2, 392
                  sltiu        s4, t0, -1924
237:              srai         t5, s6, 1
                  slti         s7, s10, 822
                  andi         s3, tp, -364
                  xori         s4, a0, -171
                  sll          s6, s1, t5
                  bne          a0, s2, 248f
                  slti         s1, a5, -1379
                  bltu         a0, s9, 253f
                  xori         s4, a5, -762
                  nop
                  xor          t4, a3, s2
248:              xor          zero, t2, t2
                  bltu         zero, s5, 253f
                  bltu         t4, ra, 256f
                  bge          s9, s0, 261f
                  sub          t4, s10, s6
253:              srai         t1, ra, 5
                  add          s4, s6, s2
                  bltu         t2, a2, 270f
256:              xor          a6, a7, s9
                  nop
                  slt          s6, s6, t2
                  beq          a6, a2, 274f
                  sub          sp, t1, tp
261:              add          zero, s10, t6
                  slti         s3, a2, 1254
                  blt          s4, gp, 283f
                  and          a5, a7, s0
                  bge          s2, a0, 282f
                  bgeu         t0, s11, 277f
                  andi         zero, a3, -642
                  slti         t1, t0, 1333
                  srli         a1, s9, 25
270:              addi         s10, t6, 1781
                  andi         a1, s1, -340
                  srai         t6, s6, 2
                  lui          s5, 36350
274:              sub          s1, a7, t6
                  xori         t3, t4, -2029
                  and          gp, s10, gp
277:              srai         t1, s7, 21
                  xori         t0, a7, -1816
                  and          t6, zero, s11
                  lui          a1, 282879
                  sub          s2, a5, a4
282:              slli         s7, s9, 17
283:              blt          t6, a5, 293f
                  andi         a0, t6, 480
                  lui          s1, 243196
                  auipc        s6, 855134
                  blt          t2, t6, 299f
                  bltu         s1, a4, 290f
                  slli         a6, s10, 28
290:              andi         t4, a4, 1896
                  auipc        a5, 3625
                  bge          s6, s3, 305f
293:              sub          t0, a7, s5
                  slti         s3, a1, -1954
                  slt          a0, t0, a3
                  bge          tp, zero, 302f
                  bne          a0, s4, 312f
                  andi         a5, s9, 1974
299:              bge          s9, s10, 305f
                  blt          a6, a7, 320f
                  add          s11, s2, zero
302:              srli         s9, s7, 30
                  bgeu         t4, t1, 313f
                  bgeu         ra, tp, 316f
305:              bge          s1, s5, 307f
                  srl          a5, a2, gp
307:              ori          s3, t1, -1900
                  andi         s9, ra, 1824
                  bltu         s11, sp, 320f
                  ori          t0, s1, 1501
                  xor          s3, a0, a7
312:              bne          s0, s4, 321f
313:              ori          t1, a0, -1032
                  ori          a1, gp, 654
                  lui          t6, 885064
316:              andi         s2, s3, -529
                  bne          tp, s8, 323f
                  xori         sp, tp, -1541
                  xor          t5, s9, t5
320:              bgeu         s5, s9, 324f
321:              andi         ra, a6, 1226
                  srai         a6, s8, 1
323:              or           t4, s5, a3
324:              beq          sp, s1, 339f
                  andi         s6, t1, 681
                  srl          t5, sp, ra
                  slt          t6, t2, ra
                  slt          t6, s2, t5
                  sltiu        t4, t1, 187
                  lui          ra, 474643
                  bge          s10, gp, 346f
                  add          a2, sp, a7
                  bltu         gp, s8, 348f
                  lui          t6, 810785
                  sltu         t2, sp, s1
                  sub          s1, a0, zero
                  xori         t2, tp, -496
                  bltu         s0, a6, 350f
339:              sra          s3, s5, gp
                  bne          a4, s3, 342f
                  slti         t1, ra, -848
342:              srli         s6, sp, 7
                  bge          zero, t6, 349f
                  blt          a1, ra, 354f
                  bgeu         s3, s6, 360f
346:              and          ra, a2, s0
                  bgeu         zero, s1, 359f
348:              slti         s1, a3, 424
349:              sll          a0, ra, s6
350:              slti         sp, s3, 1546
                  nop
                  xor          gp, s1, s3
                  ori          s3, t0, 442
354:              nop
                  auipc        s9, 280545
                  slti         a2, t5, 1149
                  bge          t2, ra, 376f
                  srl          tp, gp, sp
359:              addi         a5, a6, 1531
360:              lui          a3, 379640
                  auipc        a7, 1034365
                  slli         s11, s11, 12
                  bge          t5, t0, 380f
                  nop
                  blt          t0, t2, 385f
                  bge          a2, a1, 383f
                  xor          s2, t4, t5
                  and          sp, a4, s0
                  bge          t4, t3, 377f
                  ori          a6, s7, 1228
                  srl          t0, t1, a4
                  xori         t6, s8, 1458
                  sra          s5, s7, s5
                  sra          t3, a5, s0
                  bgeu         t0, a7, 389f
376:              nop
377:              xor          zero, s4, tp
                  xori         a1, t5, -1500
                  xori         a0, t6, 361
380:              sll          s9, t5, sp
                  bgeu         s5, t0, 391f
                  sub          a1, ra, a6
383:              srai         a5, a4, 12
                  xor          s10, zero, t2
385:              auipc        t0, 536107
                  xori         a7, s10, 58
                  bne          a2, s3, 401f
                  and          t1, s0, t3
389:              beq          s11, gp, 403f
                  ori          s2, s4, -648
391:              srli         s4, t5, 0
                  add          s2, sp, sp
                  nop
                  bge          s11, a3, 408f
                  lui          s9, 782925
                  xori         ra, gp, 1630
                  and          t4, a4, s6
                  bge          a1, a5, 418f
                  andi         a7, s8, -1860
                  slli         a6, s2, 12
401:              bne          t6, s5, 413f
                  bne          t2, t6, 416f
403:              bne          tp, t2, 418f
                  sra          s1, tp, s10
                  sltu         tp, a4, t4
                  xori         gp, s8, -1127
                  srli         a1, s8, 7
408:              sltu         tp, s3, s3
                  ori          t1, t1, 1073
                  sltiu        s5, a6, 1733
                  xori         s3, s7, -1404
                  add          s4, t6, s8
413:              nop
                  or           a2, t4, s5
                  ori          s4, s11, 1161
416:              sltiu        a7, t1, -976
                  and          s7, t0, t4
418:              auipc        s10, 184223
                  or           s1, s8, t4
                  nop
                  sltu         a5, a0, s5
                  sra          t3, s9, sp
                  slt          a7, a5, s10
                  xori         a3, t0, -1614
                  sltiu        tp, t0, 1191
                  ori          t3, a7, 1165
                  sub          s10, s2, s4
                  blt          a0, s6, 437f
                  andi         t1, a7, 1231
                  auipc        s3, 946245
                  xori         tp, tp, 364
                  sub          s10, s3, t6
                  nop
                  slti         sp, t5, -1760
                  auipc        t0, 588976
                  bge          a7, t4, 444f
437:              srli         a1, sp, 19
                  xor          s2, a5, tp
                  bne          s5, sp, 450f
                  bge          a1, a5, 454f
                  srli         t0, s7, 26
                  bne          a7, a2, 452f
                  sltu         s6, a4, t3
444:              nop
                  add          t2, s2, t1
                  or           tp, s2, s8
                  and          s11, s2, s9
                  slt          tp, t4, s2
                  slli         t0, s9, 20
450:              lui          t2, 580489
                  bltu         a2, a4, 466f
452:              slt          a0, s8, a4
                  xori         t3, s4, -41
454:              xori         gp, a3, 911
                  sra          t4, t5, t6
                  sra          t1, s2, s2
                  bne          a5, s8, 469f
                  slt          s7, a4, zero
                  add          s10, a3, ra
                  auipc        s7, 363645
                  sll          s4, a5, a5
                  sltu         s2, a4, gp
                  sltu         t6, t4, a6
                  xori         zero, a7, 239
                  blt          s9, s3, 482f
466:              and          s11, a1, t5
                  sra          t6, s7, a5
                  ori          gp, s9, 1667
                  la           s2, sub_4
                  addi         zero, t0, 1806
                  srli         t3, s11, 5
                  srai         t6, s0, 17
                  slti         a0, t4, -1098
                  addi         s2, s2, -871
                  ori          a1, s3, -1009
                  sltu         gp, s10, t3
                  xor          t0, t5, a0
sub_3_j4:         jalr         ra, s2, 872 #jump sub_3 -> sub_4
                  sra          a3, ra, zero
469:              sltiu        gp, t4, 1485
                  bge          ra, s11, 490f
                  ori          t6, a7, -321
                  xor          s5, s1, tp
                  bltu         s8, gp, 483f
                  ori          t3, s9, 872
                  bgeu         s0, t2, 490f
                  sltiu        s4, gp, 376
                  and          s6, t6, a1
                  slli         s5, t6, 24
                  and          a7, s7, s2
                  sll          s5, s0, t3
                  srl          s5, sp, s2
482:              xori         s4, a7, -368
483:              slt          t5, s4, t6
                  xori         s7, s1, 841
                  sra          s1, s7, a4
                  sltu         s11, s2, t6
                  srl          sp, a1, a3
                  bge          s7, t3, 500f
                  bge          s0, a2, 504f
490:              slt          sp, a7, s7
                  addi         s5, sp, 112
                  andi         t4, t3, 818
                  add          s4, t2, t5
                  add          t4, t1, tp
                  bltu         ra, s7, 504f
                  sll          t6, t3, s2
                  sub          a3, s6, s5
                  slti         t3, s2, 1288
                  xori         tp, a0, -1180
500:              sll          t2, t0, zero
                  blt          a1, a2, 504f
                  auipc        s6, 460310
                  blt          a6, s9, 504f
504:              ori          a7, a7, -1559
                  nop
                  lw           ra, 4(s0)
                  srai         gp, a7, 30
                  addi         s0, s0, 12
                  sra          s9, s8, s2
                  ori          s4, t4, -1856
                  lui          tp, 303492
                  lui          t2, 936658
                  ori          gp, a1, 1095
                  xori         s6, s5, -264
720:              addi x19, x1, 1
720:              jalr x19, x19, 0
sub_9:            sub          t3, a1, t2
                  sltu         a5, t0, s5
                  beq          t3, a3, sub_9_stack_p
                  srl          a7, a0, s5
                  slli         a1, t0, 27
                  xori         tp, s11, -875
                  srai         t5, s5, 25
                  lui          sp, 257845
                  srai         s9, a1, 6
                  sub          a6, s5, s5
sub_9_stack_p:    addi         s0, s0, -64
                  sw           ra, 4(s0)
                  sra          s6, s9, s8
                  la           sp, region_0+634 #start riscv_load_store_rand_instr_stream_7
                  sra          a3, t6, gp
                  auipc        a2, 937536
                  lb           s3, 1005(sp)
                  lbu          s5, 273(sp)
                  lb           s2, -127(sp)
                  lw           gp, 802(sp)
                  lui          a0, 777735
                  slli         t1, t0, 25
                  lhu          a2, 1162(sp)
                  lui          s4, 382469
                  sb           t0, -15(sp)
                  xor          a5, a3, s1
                  lbu          t2, 144(sp)
                  lbu          a3, -177(sp)
                  lb           t2, 499(sp)
                  srl          s5, s7, s10
                  sb           gp, -521(sp)
                  lbu          a5, 1067(sp)
                  sltu         s9, a1, s9
                  slti         a1, s9, 718
                  sltiu        a6, s10, 381
                  or           t5, t4, s3
                  lbu          t0, 76(sp)
                  sltu         s2, t5, s4
                  lw           s4, -58(sp)
                  addi         tp, s10, -1620
                  lb           t2, -392(sp)
                  add          a2, s8, a4
                  lb           t5, 567(sp)
                  sub          a2, s7, s9
                  slli         t0, s7, 14
                  lui          t1, 297123
                  lbu          t5, 1161(sp)
                  lhu          t2, 1266(sp)
                  sltu         t3, s4, s10
                  sltiu        t2, s3, 124
                  lui          s4, 6182
                  slt          a6, s5, a2
                  xor          s6, s9, s5
                  lb           t5, 801(sp)
                  lhu          s6, 560(sp)
                  add          t4, s7, s1
                  addi         a3, a0, -1475
                  or           s7, s2, t0
                  lhu          s6, 1302(sp)
                  sb           t4, 857(sp)
                  nop
                  sh           s5, 1246(sp)
                  lbu          s9, -167(sp)
                  lh           t4, 274(sp)
                  xor          s1, a0, s1
                  lb           s1, 97(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+106 #start riscv_load_store_rand_instr_stream_3
                  add          s3, s0, t0
                  sh           s11, 40(sp)
                  andi         t2, s10, 990
                  sltiu        a6, gp, -989
                  lh           a5, 82(sp)
                  lb           t2, 159(sp)
                  and          tp, t5, zero
                  sb           t1, -58(sp)
                  or           s11, s6, s3
                  lhu          a2, -90(sp)
                  lb           s1, -9(sp)
                  or           s7, s7, gp
                  lhu          s5, 156(sp)
                  sh           t1, -52(sp)
                  or           a3, t1, t2
                  sb           a2, 167(sp)
                  slli         gp, s1, 29
                  srli         t6, t1, 8
                  lb           t6, 215(sp)
                  slt          a1, s4, s5
                  sb           s6, 88(sp)
                  slti         t0, tp, 804
                  or           gp, t1, s10
                  lb           t2, -59(sp)
                  sll          s6, s6, a0
                  srli         a2, s0, 10
                  sw           t4, 134(sp)
                  lui          a1, 194386
                  lb           t0, 111(sp)
                  slt          a6, s9, ra
                  srl          s1, a4, a5
                  slti         a3, a2, 1593
                  lb           a5, 0(sp)
                  sra          t3, a6, a1
                  add          t3, s9, t0
                  sh           t6, -48(sp)
                  nop
                  ori          s7, sp, 1908
                  nop
                  and          t6, s11, t6
                  lui          a2, 255557
                  xori         a6, ra, -2025
                  lui          t2, 236077
                  sb           s10, 244(sp)
                  slli         a6, s9, 25
                  sb           t5, 139(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1792 #start riscv_load_store_rand_instr_stream_9
                  lb           s6, -227(sp)
                  srl          t1, s7, a0
                  slli         a7, t3, 5
                  lui          a1, 1024246
                  andi         gp, t0, 282
                  xor          t3, a4, s7
                  sltu         s1, a3, tp
                  and          s7, s0, sp
                  lhu          zero, -254(sp)
                  lbu          a5, -227(sp)
                  lui          s1, 526831
                  lw           s9, -152(sp)
                  lb           s4, -99(sp)
                  add          a6, tp, sp
                  lb           s11, -77(sp)
                  srl          a5, s9, a5
                  lb           s9, -35(sp)
                  srai         s5, s5, 13
                  lbu          a5, 123(sp)
                  lh           a1, 76(sp)
                  srli         t2, s6, 6
                  lbu          a6, -227(sp)
                  slt          gp, a0, tp
                  slt          t0, a4, a1
                  sb           zero, -71(sp)
                  sw           sp, 148(sp)
                  sb           a5, 101(sp)
                  srai         s11, s0, 31
                  srai         s1, s8, 2
                  add          s11, s5, ra
                  lb           a1, -182(sp)
                  sltu         ra, a6, tp
                  ori          s7, sp, -1306
                  lbu          s3, -87(sp) #end riscv_load_store_rand_instr_stream_9
                  la           t3, region_0+66 #start riscv_load_store_rand_instr_stream_4
                  srl          a1, gp, a5
                  slti         s10, t4, 932
                  andi         zero, s10, -711
                  lw           s1, 502(t3)
                  lhu          t5, 336(t3)
                  sh           s11, 1460(t3)
                  sh           a2, 372(t3)
                  sb           s0, 1119(t3)
                  xor          s2, tp, ra
                  lb           s4, 1234(t3)
                  or           a0, s0, t5
                  nop
                  srai         s1, s2, 19
                  andi         zero, tp, -1305
                  addi         s5, s2, -696
                  xori         s10, s1, 822
                  sll          s4, s5, ra
                  lb           s1, 1823(t3)
                  lb           a1, 457(t3)
                  slt          s10, s11, s5
                  xori         ra, a7, -1092
                  ori          a5, a5, -1223
                  lui          zero, 548020
                  lhu          s10, 700(t3)
                  sb           a5, 1124(t3)
                  sltu         t5, a1, s1
                  sb           s11, 484(t3)
                  slti         s10, t5, -522
                  lbu          t2, 1164(t3)
                  srli         t0, tp, 4
                  lb           gp, 1215(t3)
                  xori         a5, gp, -1206
                  sll          a3, t6, s2
                  srl          a5, a2, s4
                  ori          s2, a3, -1056
                  lbu          a5, 236(t3)
                  nop
                  sb           a6, 1364(t3) #end riscv_load_store_rand_instr_stream_4
                  la           s2, region_0+1323 #start riscv_load_store_rand_instr_stream_1
                  lbu          s7, 2(s2)
                  sra          t1, s7, t3
                  lw           s7, 9(s2)
                  addi         a0, s0, 809
                  sh           a1, -7(s2)
                  sh           t0, 11(s2)
                  slli         s10, a1, 29
                  andi         s4, s8, -9
                  sb           a5, 5(s2)
                  auipc        s3, 308580
                  lb           t4, -16(s2)
                  sb           a1, 8(s2)
                  sb           s11, -8(s2)
                  sltu         s6, ra, a7
                  lb           a7, -8(s2)
                  lhu          ra, -1(s2)
                  lb           s11, 14(s2)
                  lbu          t6, 1(s2)
                  sb           a4, 1(s2)
                  sb           a2, 2(s2)
                  lb           t4, -16(s2)
                  lb           tp, 6(s2)
                  lhu          t4, 1(s2)
                  sub          s10, t3, a2
                  lbu          a2, 0(s2)
                  lh           s5, 15(s2)
                  lbu          s6, 8(s2)
                  srli         s9, s3, 7
                  sb           t6, -10(s2)
                  lbu          s6, 13(s2)
                  sltiu        gp, t0, -1849
                  xori         a3, s8, 1059
                  xor          zero, a0, tp
                  slti         s10, s0, -527
                  sra          a3, a3, a2
                  lbu          s10, -2(s2)
                  auipc        s1, 471524
                  sb           s11, 13(s2) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+651 #start riscv_load_store_rand_instr_stream_0
                  and          a7, t0, a3
                  lhu          ra, 135(sp)
                  lbu          t1, 1305(sp)
                  lbu          s1, 950(sp)
                  lw           a7, 1053(sp)
                  addi         s9, s0, -1745
                  auipc        s4, 763590
                  andi         s6, gp, -506
                  lbu          gp, 782(sp)
                  sll          s9, tp, a5
                  addi         t1, a1, 2011
                  sll          t6, s0, zero
                  lb           a7, 899(sp)
                  sb           a5, -508(sp)
                  sub          s11, gp, s3
                  sb           s9, 111(sp)
                  sh           t1, 1195(sp)
                  srai         gp, zero, 28
                  slti         s9, gp, -1879
                  sb           ra, 690(sp)
                  srai         a2, s4, 10
                  sh           a2, -427(sp)
                  srli         s2, s8, 1
                  sw           t5, 393(sp)
                  auipc        t1, 636597
                  add          s3, t3, t2
                  or           t1, t3, tp
                  or           s1, s0, t5
                  xori         s2, a6, 294
                  lb           t1, -241(sp)
                  andi         tp, s7, 1773
                  srl          zero, s4, a3
                  or           s10, s8, a1
                  sltiu        a7, s10, 1383
                  xori         a6, t4, -1029
                  sb           s7, -339(sp)
                  sb           s2, -639(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t2, region_0+371 #start riscv_load_store_rand_instr_stream_8
                  srai         a1, ra, 11
                  ori          t5, t4, -1485
                  lh           s11, 855(t2)
                  ori          s3, t3, 613
                  lb           a2, 1168(t2)
                  sb           gp, -292(t2)
                  sltu         s4, s4, t0
                  lbu          t3, 912(t2)
                  lbu          t4, 870(t2)
                  lbu          t4, 150(t2)
                  lbu          a1, 1578(t2)
                  lb           s4, 210(t2)
                  sltiu        s10, s0, -1641
                  lb           a2, 1392(t2)
                  sltu         gp, a1, sp
                  sw           a3, 1089(t2)
                  lb           s7, 308(t2)
                  sltiu        a5, zero, 1396
                  lbu          a5, 1247(t2)
                  sb           a7, -46(t2)
                  auipc        t0, 558743
                  sb           a0, 58(t2)
                  lhu          t5, 1111(t2)
                  sll          s7, a3, s6
                  sub          s11, sp, gp
                  lw           a7, 777(t2)
                  sltu         s6, t0, s5
                  sh           s5, 1553(t2)
                  lbu          tp, 1532(t2)
                  sltu         s4, s1, t2
                  and          s1, s0, a4
                  lh           gp, 433(t2)
                  sb           s10, 1292(t2) #end riscv_load_store_rand_instr_stream_8
                  andi         s6, a0, -717
                  xor          t2, ra, s1
                  srli         tp, zero, 30
                  or           tp, s2, s11
                  bgeu         s4, s7, 5f
5:                or           a3, s3, s4
                  sltiu        gp, a7, -1070
                  slli         t2, s6, 21
                  auipc        t2, 476978
                  sltu         a2, tp, a2
                  addi         t5, s3, 635
                  ori          s10, s3, 815
                  beq          s11, s0, 17f
                  xori         a1, ra, -811
                  sltiu        s6, t0, -1970
                  xor          s10, tp, s11
                  addi         s6, a2, 437
17:               srl          s11, zero, a0
                  slt          a2, s0, t4
                  bltu         a5, t6, 27f
                  xor          a6, a1, t1
                  lui          s11, 157055
                  or           a2, t2, a2
                  andi         t5, s1, 1491
                  sub          s7, s8, a1
                  ori          tp, s7, -1540
                  and          t6, s7, s11
27:               add          s7, s8, a7
                  slli         t6, t6, 8
                  andi         s4, ra, 462
                  srl          tp, s11, s6
                  slt          a1, a0, s11
                  andi         tp, t4, 1638
                  sub          s9, s10, s10
                  srai         t5, s8, 30
                  slt          t0, a3, s9
                  sll          gp, t4, sp
                  and          zero, t2, s1
                  srli         t1, t2, 3
                  andi         t2, a7, -75
                  beq          s9, zero, 41f
41:               and          a2, s3, zero
                  sra          t6, s1, s6
                  ori          zero, ra, -588
                  xor          a5, a5, s4
                  beq          s6, t3, 58f
                  auipc        t0, 857889
                  bne          t5, sp, 58f
                  add          t1, ra, gp
                  auipc        a6, 856662
                  nop
                  sltiu        a1, t0, -1806
                  slli         s1, s7, 9
                  bgeu         a6, ra, 68f
                  bne          ra, s9, 63f
                  add          s5, s4, a3
                  nop
                  xor          s1, t5, t3
58:               nop
                  beq          gp, zero, 72f
                  add          a5, sp, s11
                  srli         t2, s7, 3
                  and          sp, ra, s4
63:               sra          s4, t4, a0
                  sltu         zero, s3, a0
                  bge          tp, s5, 78f
                  nop
                  auipc        ra, 904275
68:               bltu         s1, s9, 76f
                  or           t2, t1, a2
                  ori          t5, t6, 219
                  sltiu        a1, s7, 558
72:               beq          a6, a7, 86f
                  andi         t3, a3, 63
                  sub          tp, a4, t1
                  bge          s9, s7, 79f
76:               sub          t2, t2, a6
                  andi         t3, t1, -325
78:               srli         zero, t1, 24
79:               sub          t6, sp, t4
                  bltu         t4, s9, 82f
                  xor          a1, a4, a5
82:               ori          t4, s11, -1034
                  ori          a5, s8, -1529
                  lui          a5, 219864
                  andi         a5, a5, -1419
86:               slli         a1, a0, 13
                  ori          a5, s5, -368
                  nop
                  or           sp, a1, s6
                  xor          t3, s3, s6
                  slt          t1, t5, s6
                  beq          gp, s11, 104f
                  or           t2, a7, s10
                  la           sp, region_0+1157 #start riscv_load_store_rand_instr_stream_2
                  sltiu        a5, t2, -1902
                  srl          s4, s6, a5
                  slti         t0, t0, 1201
                  andi         s1, s6, -1998
                  sltu         t4, gp, s9
                  xori         zero, ra, 1764
                  sw           a3, 107(sp)
                  sltiu        s11, s4, -179
                  srl          s4, s8, t0
                  sub          zero, s3, s6
                  sb           s7, -144(sp)
                  sb           a7, -94(sp)
                  and          s6, t3, s5
                  sw           a2, 203(sp)
                  lh           t4, 41(sp)
                  lb           s3, 23(sp)
                  lw           a6, 251(sp)
                  lb           tp, 218(sp)
                  srli         s4, t4, 21
                  sb           tp, 241(sp)
                  sll          s1, sp, a4
                  srai         s7, s0, 26
                  lb           t6, 44(sp)
                  or           a5, sp, s10
                  sll          zero, a2, s4
                  add          t0, a7, s2
                  slti         t1, ra, 347
                  lb           s2, 92(sp)
                  sub          s11, s2, a4
                  lb           a0, 192(sp) #end riscv_load_store_rand_instr_stream_2
                  ori          s4, t3, -1098
                  beq          t4, t3, 112f
                  andi         s4, s8, 1177
                  lui          ra, 764786
                  srai         s5, s11, 11
                  bge          s10, tp, 111f
                  sltu         a1, a0, t2
                  sltu         a2, a3, s7
                  srli         tp, t5, 6
                  andi         s9, a3, -919
104:              srai         s2, s5, 27
                  andi         t5, t0, 1134
                  add          t0, gp, a7
                  auipc        s11, 56606
                  bgeu         a2, s7, 126f
                  slt          s10, s1, s3
                  or           t0, s7, tp
111:              srli         tp, t5, 26
112:              sub          s9, s6, s2
                  slti         s2, s6, -2035
                  xori         t3, t3, -194
                  srl          s4, t2, s7
                  srl          zero, t5, t6
                  andi         zero, a3, -140
                  add          a3, a0, t6
                  nop
                  sra          t2, s3, s9
                  bne          a2, s2, 137f
                  bne          t6, s10, 130f
                  srai         a3, s6, 4
                  beq          a4, s7, 143f
                  sll          t0, t0, s10
126:              srai         s6, t1, 2
                  sltiu        t1, s3, 782
                  auipc        a5, 488623
                  sltiu        t6, s1, -1694
130:              auipc        a5, 9968
                  sltu         s2, a2, gp
                  slt          gp, a2, t1
                  nop
                  sra          s10, s0, s8
                  xori         a6, a6, 812
                  bne          a1, s7, 149f
137:              srli         a3, t5, 27
                  bge          a4, sp, 148f
                  andi         s7, a1, -1014
                  sltu         t4, s5, a5
                  or           a0, s7, a5
                  blt          a7, s7, 145f
143:              bge          s6, s2, 154f
                  nop
145:              xor          s9, a5, s0
                  sltu         t4, s4, s5
                  srli         a5, s2, 3
148:              slt          t3, ra, t3
149:              nop
                  srai         a0, s8, 18
                  xor          s9, s10, ra
                  sra          s3, s1, a4
                  andi         tp, s0, -1193
154:              srl          s5, t0, gp
                  srai         sp, a2, 26
                  beq          sp, s1, 170f
                  slt          a0, s1, t6
                  la           s11, region_1+1586 #start riscv_load_store_rand_instr_stream_11
                  sltiu        s2, s10, 1943
                  lhu          t5, -12(s11)
                  ori          sp, t5, -1743
                  sb           t1, -155(s11)
                  nop
                  and          ra, s1, a3
                  lw           sp, 90(s11)
                  slti         a1, t3, -1719
                  lb           zero, 241(s11)
                  sw           a3, 54(s11)
                  lb           s7, -70(s11)
                  slti         t6, ra, -1312
                  lui          a1, 611799
                  xor          t4, s6, a0
                  lh           s6, -78(s11)
                  nop
                  addi         tp, a4, 19
                  andi         a3, s8, 684
                  auipc        a2, 1001247
                  sb           gp, -89(s11)
                  sb           gp, -218(s11)
                  nop
                  sltiu        t1, s8, -1552
                  sb           a5, 55(s11)
                  lb           s10, 77(s11)
                  sra          t5, t3, s3
                  lhu          s9, 58(s11)
                  lhu          t2, 96(s11)
                  slt          tp, t1, gp
                  nop
                  slli         a0, ra, 23
                  lbu          t5, -231(s11)
                  slti         t2, a1, 1869
                  lh           t5, 52(s11)
                  sh           t4, -92(s11) #end riscv_load_store_rand_instr_stream_11
                  sltu         a5, s3, t6
                  addi         s11, zero, -1510
                  srai         a1, s8, 11
                  and          t0, ra, s1
                  sll          s9, s1, s11
                  sra          s9, s9, s1
                  andi         s3, s11, -121
                  ori          s4, tp, -1948
                  lui          a3, 584115
                  auipc        s10, 800381
                  beq          a4, t2, 171f
                  slti         t0, t6, 1741
170:              sltiu        a7, s4, -944
171:              beq          sp, s9, 178f
                  bltu         s10, s0, 183f
                  xor          t0, a5, s0
                  slli         t1, t0, 28
                  blt          s4, a0, 187f
                  addi         ra, zero, -1715
                  sll          gp, t0, a5
178:              andi         t4, t4, -2032
                  ori          s3, s11, 749
                  sltu         zero, t3, a7
                  srli         tp, s11, 13
                  add          sp, a0, t0
183:              srai         a0, a2, 25
                  sll          t1, a1, s10
                  blt          t0, s3, 193f
                  beq          s9, a2, 194f
187:              bne          s6, a6, 199f
                  srli         s5, s2, 18
                  and          t2, a2, a4
                  bne          a6, sp, 206f
                  sub          s11, t5, t3
                  slt          t2, t5, a3
193:              slti         a6, s1, 1896
194:              bne          a5, t4, 199f
                  auipc        s6, 592471
                  bge          s10, a6, 210f
                  slli         s9, s1, 21
                  slti         t2, s10, -1808
199:              bne          s7, s8, 206f
                  slti         ra, s11, 861
                  bne          a6, s3, 212f
                  sltiu        a7, t3, -1500
                  addi         gp, a7, -261
                  srl          a2, s2, s4
                  bltu         s5, tp, 208f
206:              auipc        s7, 734393
                  slli         a3, s5, 18
208:              sra          a1, t0, t3
                  srai         a1, s2, 28
210:              slli         s9, a3, 5
                  sra          a7, a1, t6
212:              srli         gp, a5, 9
                  srl          tp, t5, zero
                  xor          t1, gp, a6
                  bne          a1, a1, 228f
                  srl          a6, t5, gp
                  xor          a1, tp, t3
                  la           sp, region_1+918 #start riscv_load_store_rand_instr_stream_5
                  sll          s3, a2, gp
                  sb           t1, 0(sp)
                  and          s5, t3, gp
                  add          a5, s8, s0
                  sltu         t3, s4, t4
                  sltu         a7, s3, a2
                  or           ra, zero, s9
                  or           ra, a3, s7
                  lbu          t4, -4(sp)
                  lbu          s11, 15(sp)
                  xori         a1, a0, 906
                  lb           s5, 11(sp)
                  lh           a5, 4(sp)
                  srl          t6, s7, s7
                  auipc        s11, 143958
                  sb           t5, 5(sp)
                  lbu          t4, -13(sp)
                  andi         t5, s0, -1093
                  lui          s3, 768778
                  lbu          t0, -5(sp)
                  xori         t5, s8, -1183
                  sb           tp, -4(sp)
                  lh           a2, 0(sp)
                  xori         a2, s4, 256
                  sub          s9, s2, s1
                  lui          a2, 943977
                  ori          t1, t6, 1964
                  or           t2, t5, t4
                  lbu          s2, -3(sp)
                  lhu          s11, -14(sp)
                  or           s10, sp, tp
                  slt          a1, tp, a7
                  srai         s5, sp, 28
                  auipc        zero, 630794
                  srl          zero, a6, a4
                  sb           s11, -7(sp)
                  sltiu        s10, s2, -1681
                  sw           s4, -14(sp) #end riscv_load_store_rand_instr_stream_5
                  slti         a2, s7, 1217
                  beq          a5, a4, 223f
                  nop
                  sltu         a0, s1, a3
                  lui          s10, 133348
223:              auipc        s1, 42061
                  xor          s6, t6, a0
                  bgeu         t0, s3, 234f
                  srli         a6, s7, 6
                  sra          t6, s0, s10
228:              bge          s8, s1, 241f
                  andi         s10, s7, -1946
                  slli         s6, t3, 16
                  beq          zero, s8, 244f
                  andi         ra, s3, 365
                  beq          s3, s9, 244f
234:              slt          zero, s2, sp
                  slt          s11, s10, s11
                  add          t2, a5, sp
                  srli         a2, tp, 30
                  srl          t4, s10, a5
                  srai         a0, a6, 0
                  bgeu         s4, a1, 242f
241:              sltu         t4, a7, s6
242:              add          zero, a2, a3
                  and          a7, s0, s10
244:              andi         s6, sp, 1456
                  sub          t5, s2, s4
                  nop
                  blt          a2, a5, 264f
                  srl          t2, a2, ra
                  ori          s6, s9, 1428
                  slli         t5, ra, 14
                  bltu         t5, s7, 266f
                  slti         s1, s9, -786
                  sltiu        s6, sp, -1175
                  addi         t5, s1, 1076
                  sra          ra, a1, t5
                  lui          a2, 525512
                  or           ra, s11, s7
                  auipc        a0, 586685
                  andi         s2, a2, -1562
                  and          t3, sp, t0
                  sltiu        a2, tp, 1509
                  slt          a2, s11, t1
                  sll          a2, s8, a5
264:              slti         a1, s0, 1380
                  sub          t0, t4, sp
266:              blt          zero, sp, 279f
                  bne          a5, a6, 268f
268:              addi         s10, s1, -879
                  xor          s7, s1, a6
                  bgeu         t5, a6, 282f
                  blt          s4, zero, 274f
                  slli         sp, s10, 12
                  srai         t2, a4, 26
274:              bge          zero, a6, 293f
                  ori          tp, s10, 63
                  sltu         t3, s4, s4
                  sll          zero, tp, sp
                  bltu         s2, tp, 296f
279:              and          s6, a4, s1
                  la           s6, region_1+1684 #start riscv_load_store_rand_instr_stream_10
                  ori          t6, s11, 1637
                  sb           s1, -14(s6)
                  or           a5, s8, a2
                  lbu          s11, -43(s6)
                  srl          t1, s5, a3
                  or           zero, a1, sp
                  lh           tp, -16(s6)
                  sb           t0, 58(s6)
                  xori         s9, t4, -1783
                  lb           s9, 3(s6)
                  sb           t1, 29(s6)
                  lb           ra, -17(s6)
                  sb           t0, 43(s6)
                  sb           a7, -35(s6)
                  sb           zero, -25(s6)
                  lb           s1, 64(s6)
                  sb           s6, -62(s6)
                  sltu         s9, sp, a6
                  slt          s4, s3, a5
                  lh           zero, -22(s6)
                  sra          ra, t6, t6
                  and          a1, a3, t5
                  sb           a4, -4(s6)
                  lbu          a1, -49(s6)
                  lh           t1, -10(s6)
                  nop
                  lb           zero, 19(s6)
                  lbu          a0, 64(s6)
                  xor          s9, tp, s10
                  lbu          t6, -10(s6)
                  lb           s10, -60(s6)
                  sb           t5, -13(s6)
                  sh           t2, 22(s6)
                  slt          a2, t2, s6
                  xor          a1, s11, a5
                  sltu         s3, s4, s4
                  nop
                  auipc        t1, 159376
                  slli         s10, s10, 6
                  add          tp, t3, s11
                  lb           a1, 45(s6)
                  lb           tp, 57(s6)
                  lbu          ra, 62(s6)
                  sb           t4, -31(s6) #end riscv_load_store_rand_instr_stream_10
                  auipc        a1, 400924
                  addi         s6, t6, 541
282:              sra          tp, gp, a0
                  or           t6, s2, t4
                  andi         t6, t0, -93
                  lui          t4, 31092
                  xori         a0, a4, 1108
                  auipc        t2, 575859
                  add          a5, a4, a3
                  beq          s2, a7, 297f
                  bne          s3, ra, 301f
                  andi         s10, s1, -136
                  sltiu        s7, s3, -1225
293:              sll          a6, s5, s11
                  sra          a7, tp, s0
                  srl          a0, s0, s1
296:              lui          a2, 1012298
297:              sub          sp, zero, ra
                  bne          s3, s0, 299f
299:              sll          s1, s6, a5
                  bne          zero, s10, 312f
301:              srli         sp, s7, 29
                  slli         sp, a0, 20
                  or           t2, a4, s0
                  ori          s10, a2, 695
                  slt          a1, a0, zero
                  andi         a0, ra, 1829
                  sltu         s6, a0, t3
                  beq          t5, s6, 318f
                  bge          s7, s1, 323f
                  addi         a2, s6, 1191
                  sltiu        a5, ra, -435
312:              nop
                  slti         s6, t1, -1058
                  srl          s7, s8, s10
                  slt          a5, sp, t5
                  ori          t6, sp, 73
                  srai         s5, a4, 11
318:              slti         sp, t2, -54
                  slti         t1, t1, -160
                  nop
                  bltu         t0, sp, 339f
                  slli         t4, s11, 26
323:              slli         a0, t3, 1
                  bge          a1, s5, 333f
                  slti         ra, t4, 1445
                  bltu         a7, ra, 339f
                  xori         tp, s7, -432
                  beq          zero, s3, 335f
                  sll          t1, s5, s0
                  bge          s9, a0, 342f
                  blt          s3, a7, 332f
332:              bltu         s7, s2, 343f
333:              ori          s2, a1, -1588
                  slt          a7, ra, s11
335:              slti         a7, s1, -1876
                  sltiu        t1, t4, 1148
                  sltu         t3, s5, a5
                  slli         s7, t3, 15
339:              srli         a2, gp, 16
                  srai         t4, t5, 6
                  add          t6, tp, zero
342:              sltu         s7, s0, s7
343:              sll          a0, ra, sp
                  blt          sp, a2, 354f
                  bltu         zero, tp, 358f
                  nop
                  slti         s9, a4, -965
                  nop
                  blt          s8, a3, 361f
                  add          t4, s4, t3
                  sltu         s3, t4, a4
                  sra          ra, a7, a0
                  bgeu         s5, zero, 365f
354:              beq          a1, a1, 357f
                  auipc        a7, 27484
                  slti         t2, t2, 470
357:              xori         a3, a6, 1475
358:              sltiu        s2, gp, 341
                  add          s5, s5, s2
                  blt          a6, t6, 375f
361:              slli         ra, s10, 30
                  xor          s1, s8, t4
                  sra          t3, t5, s7
                  xori         s2, t5, -1685
365:              nop
                  nop
                  bgeu         t0, a5, 378f
                  bgeu         s1, a6, 373f
                  auipc        a1, 269698
                  auipc        s6, 1015270
                  srl          s5, a2, s10
                  and          s9, s10, sp
373:              addi         s7, s9, -863
                  nop
375:              srai         s3, s2, 30
                  auipc        s9, 473119
                  auipc        s2, 400189
378:              andi         s1, s9, -154
                  add          t4, s5, zero
                  slli         s1, s9, 21
                  bgeu         t1, a4, 395f
                  sub          s10, a3, s8
                  sltu         t6, t3, s5
                  srli         s10, s3, 16
                  xori         s5, a4, 1498
                  sra          s10, a1, t1
                  bltu         s8, tp, 401f
                  or           s7, s6, s11
                  slt          s1, gp, s7
                  la           sp, region_0+7 #start riscv_load_store_rand_instr_stream_6
                  sb           a2, 207(sp)
                  nop
                  sltiu        s6, a7, 873
                  srai         zero, s2, 0
                  sll          t3, a3, t6
                  auipc        t5, 231785
                  ori          a0, s9, 1937
                  auipc        a5, 397318
                  lhu          ra, 155(sp)
                  sb           s11, 227(sp)
                  sb           s7, 233(sp)
                  lh           ra, 79(sp)
                  sll          t0, gp, sp
                  xor          ra, t4, t5
                  sltu         t5, s0, t5
                  lw           t6, 193(sp)
                  sb           s2, 2(sp)
                  andi         s10, s4, 1599
                  lbu          s5, 163(sp)
                  srl          s5, s8, a4
                  lh           tp, 85(sp)
                  sb           s6, 159(sp)
                  sltu         s1, t4, ra
                  sh           a0, 77(sp)
                  lbu          s3, -6(sp)
                  lhu          a3, 147(sp)
                  sb           s3, 78(sp)
                  and          a7, t5, a0
                  lbu          s9, 165(sp)
                  sh           a1, 153(sp)
                  lbu          t2, 118(sp)
                  lbu          t1, 11(sp)
                  lbu          a5, 198(sp)
                  xori         s4, ra, 1010
                  auipc        s6, 401170
                  slli         gp, a7, 17
                  lb           ra, 234(sp)
                  lbu          t1, 48(sp)
                  slli         zero, a7, 31
                  sb           zero, 76(sp)
                  srl          a3, tp, zero
                  ori          a1, s8, -397
                  lui          a5, 660370
                  srli         s6, s11, 9
                  lhu          a7, 3(sp)
                  sb           t1, 129(sp) #end riscv_load_store_rand_instr_stream_6
                  addi         s4, a2, -760
                  add          s2, s2, tp
                  blt          a6, t1, 403f
                  ori          s11, tp, 397
                  xor          s6, ra, t4
395:              sll          s10, gp, t6
                  sub          s5, s3, t2
                  beq          t3, s11, 414f
                  slli         t6, s0, 23
                  slt          s5, a3, s4
                  and          a3, s0, a4
401:              lui          a0, 709314
                  bltu         tp, a2, 405f
403:              slti         s3, s7, 896
                  bne          sp, gp, 412f
405:              ori          t2, t6, 2031
                  xori         ra, t0, 1499
                  xori         a3, s3, 901
                  nop
                  nop
                  sltu         gp, a5, sp
                  blt          s11, a4, 412f
412:              srl          tp, t0, s10
                  bge          ra, t1, 421f
414:              and          t3, a3, a6
                  ori          s9, t4, 385
                  srl          zero, s5, t5
                  nop
                  sub          a6, s3, t2
                  bltu         s6, s8, 432f
                  slli         zero, s8, 8
421:              sltiu        a1, s6, 474
                  nop
                  andi         t4, tp, -215
                  andi         t1, gp, -92
                  ori          tp, s2, 784
                  or           a7, s11, a3
                  andi         s4, s9, 515
                  ori          ra, s1, 1453
                  lui          s2, 362407
                  nop
                  srli         t0, tp, 29
432:              ori          gp, a2, 976
                  xori         gp, s0, -825
                  add          tp, t0, s9
                  blt          s5, s6, 443f
                  bltu         a2, t3, 440f
                  add          t1, s8, t4
                  nop
                  xori         sp, s4, 14
440:              sra          a6, a7, a4
                  slli         a1, t6, 8
                  addi         a7, a4, -1664
443:              xor          s7, s4, a4
                  slt          s2, t6, a4
                  sltu         a2, s7, sp
                  and          sp, a1, s7
                  nop
                  sltiu        gp, s2, 1887
                  add          t5, s6, s6
                  bltu         a2, s2, 469f
                  add          a3, s6, s11
                  auipc        s6, 937457
                  xor          s7, a5, t4
                  xori         s1, s4, 1794
                  andi         s10, a3, 251
                  blt          s11, a5, 472f
                  slti         t2, a4, -1319
                  xor          s3, sp, t1
                  bge          tp, t3, 461f
                  srli         s1, sp, 15
461:              xor          ra, t1, zero
                  nop
                  addi         t6, s2, -1714
                  andi         s7, a0, -1168
                  bgeu         s1, t6, 478f
                  add          s3, t4, s4
                  sll          zero, ra, s8
                  ori          t3, s11, 863
469:              ori          t1, t3, 586
                  slli         gp, s8, 9
                  nop
472:              lui          t5, 527743
                  bltu         t1, a1, 482f
                  slt          a1, t3, s6
                  and          t1, s4, t1
                  bne          t0, a0, 494f
                  slli         zero, t6, 29
478:              sra          t6, s2, s7
                  sltu         s6, s6, a6
                  sll          a0, s10, t0
                  srl          ra, tp, t6
482:              bgeu         t2, s0, 490f
                  xor          t1, a3, t1
                  xor          s7, gp, s7
                  ori          a5, s3, -1890
                  bne          tp, s6, 499f
                  srl          t6, s7, a4
                  xor          s9, s3, s0
                  andi         a2, t0, 189
490:              ori          a6, a0, -1168
                  blt          a2, s3, 505f
                  or           t2, zero, a4
                  srli         gp, s9, 25
494:              slti         ra, a7, 716
                  bge          zero, t2, 511f
                  addi         s5, t6, 1379
                  andi         t0, t6, -1672
                  and          t1, s3, a7
499:              bgeu         sp, s6, 500f
500:              srai         s1, s7, 23
                  addi         t6, zero, 185
                  bltu         a3, a0, 515f
                  lui          tp, 1048255
                  andi         t1, t1, 1196
505:              sltiu        t6, t0, -589
                  blt          ra, t0, 518f
                  add          tp, s7, gp
                  nop
                  srai         tp, s11, 3
                  ori          gp, s2, -322
511:              sltiu        s5, zero, -1722
                  srl          s5, a0, a5
                  srli         a7, s2, 22
                  bge          t3, s4, 521f
515:              sll          s10, t1, s2
                  sra          a3, t0, s11
                  or           s7, tp, tp
518:              bltu         t2, sp, 531f
                  slti         s3, s4, 36
                  beq          t3, s0, 523f
521:              bgeu         s7, s7, 533f
                  bge          t6, s2, 533f
523:              beq          a1, a4, 524f
524:              and          s5, a7, s0
                  auipc        s2, 52854
                  addi         a0, s0, -1327
                  ori          t5, gp, -1302
                  sub          ra, t6, a7
                  slt          s9, s1, s1
                  bne          s10, t4, 532f
531:              ori          gp, s11, 1773
532:              nop
533:              auipc        s1, 619589
                  nop
                  slli         s4, sp, 22
                  or           s3, t0, s4
                  blt          s7, t3, 542f
                  sltu         a2, zero, tp
                  ori          s10, a5, -888
                  andi         s1, s10, 441
                  sra          s1, s0, ra
542:              lui          sp, 599366
                  bgeu         s0, t3, 555f
                  add          a1, a0, a2
                  slt          sp, tp, s4
                  slt          s1, sp, a4
                  srli         s9, t0, 0
                  slli         s9, a4, 23
                  xor          a6, a2, a4
                  slt          s9, t3, gp
                  nop
                  nop
                  ori          a1, a2, 161
                  sltiu        a1, a0, 1356
555:              sub          s3, t5, s3
                  sltu         s7, sp, sp
                  slli         s4, gp, 30
                  lui          zero, 584900
                  and          s11, a4, t1
                  sub          tp, sp, s10
                  beq          t2, t5, 574f
                  sub          a5, s6, t5
                  beq          t6, s2, 567f
                  xori         sp, t5, 1057
                  sll          sp, s11, zero
                  srai         gp, t1, 11
567:              xor          s9, a5, s9
                  bne          s9, s9, 585f
                  bge          zero, a6, 580f
                  xori         a3, a5, 2028
                  srl          t6, sp, a4
                  bne          zero, a7, 591f
                  sll          t2, t2, t5
574:              addi         t6, s2, -1599
                  lui          ra, 350691
                  bgeu         s10, s11, 584f
                  sra          a3, ra, sp
                  bltu         t0, tp, 593f
                  andi         s3, t6, -1683
580:              addi         t0, s7, 1395
                  bge          s3, s5, 592f
                  bge          s6, a4, 585f
                  or           t6, t0, a3
584:              slli         t3, a0, 15
585:              beq          s5, s10, 595f
                  ori          s9, a0, -1458
                  andi         a2, a5, -248
                  sll          a5, a5, a2
                  xori         ra, sp, 1952
                  add          t3, s10, a5
591:              slli         s4, a6, 27
592:              andi         a1, t0, 1798
593:              xori         t6, a4, -817
                  sra          a7, t3, t1
595:              or           a7, sp, tp
                  or           tp, t3, a7
                  addi         sp, t1, 232
                  nop
                  slt          s9, a6, s4
                  xor          t1, s11, s5
                  srai         t5, t6, 7
                  srl          a7, s0, t3
                  sra          a2, a1, s2
                  sltu         a1, s1, a7
                  and          a7, ra, t0
                  andi         t4, a3, -114
                  srai         s3, a0, 16
                  slti         s11, a7, -1685
                  and          s1, s10, s6
                  addi         a1, t4, 1848
                  beq          s7, t0, 625f
                  blt          s9, a1, 620f
                  beq          a6, a5, 629f
                  srl          t2, a1, ra
                  srai         a0, s10, 13
                  nop
                  and          s11, a3, a0
                  blt          s9, a6, 629f
                  sltu         s9, a3, a4
620:              xor          s5, t1, s5
                  blt          t1, s6, 633f
                  nop
                  sll          s2, s7, ra
                  sltu         a1, zero, t5
625:              bgeu         s11, a5, 639f
                  xori         s4, t5, -909
                  xori         sp, s7, -963
                  or           a1, s5, t1
629:              andi         a0, s1, 1758
                  bge          a4, t3, 637f
                  nop
                  beq          a7, a2, 643f
633:              auipc        sp, 53818
                  auipc        t6, 91963
                  bgeu         a4, a2, 636f
636:              addi         s9, s2, 1642
637:              nop
                  sra          s9, a1, a7
639:              bne          a4, t2, 642f
                  xori         s6, s9, -550
                  sltiu        s11, sp, -1861
642:              sub          tp, s1, a1
643:              auipc        zero, 966837
                  slt          s6, zero, t3
                  andi         t5, s2, 979
                  ori          sp, sp, -439
                  slt          sp, a4, s9
                  ori          t2, s5, 396
                  sub          t6, t4, s5
                  addi         s5, t5, 401
                  bge          s5, a1, 653f
                  srai         s1, a2, 21
653:              srl          s2, a4, t0
                  add          t6, a7, s2
                  or           s1, a5, s9
                  sub          s1, tp, a4
                  srli         ra, s4, 11
                  bne          tp, a4, 662f
                  or           s9, t6, sp
                  slt          t2, zero, t2
                  or           a2, gp, s10
662:              sltiu        s11, s3, -1913
                  lui          s5, 988052
                  addi         s5, a4, -850
                  bge          s2, a7, 678f
                  bgeu         a0, s4, 674f
                  bltu         a7, s4, 682f
                  sub          t2, s9, t2
                  slti         t4, s2, -1972
                  srl          ra, t6, sp
                  sltu         s3, sp, a2
                  slt          t2, s4, a7
                  sra          s1, t5, a3
674:              beq          t2, t6, 679f
                  addi         s9, ra, -759
                  srai         s3, a6, 21
                  bge          a1, s6, 678f
678:              srl          zero, zero, a6
679:              or           s1, s8, t4
                  nop
                  beq          s1, a5, 689f
682:              slli         gp, t6, 13
                  bge          s11, s5, 692f
                  bltu         s10, tp, 696f
                  sra          t4, sp, s0
                  sra          a7, a0, t3
                  bne          s2, s6, 706f
                  xor          s5, tp, zero
689:              sltiu        t6, s0, -597
                  nop
                  sll          t5, t2, t1
692:              beq          s8, t1, 709f
                  sub          s2, s6, s5
                  sll          a2, s2, a5
                  beq          s11, s11, 708f
696:              beq          s7, t4, 714f
                  auipc        s6, 511856
                  addi         t4, s1, 1040
                  addi         t4, a0, 1634
                  srai         a6, a7, 7
                  xor          t3, a1, t0
                  sltu         s5, sp, sp
                  sub          s1, s11, s5
                  bge          a0, s11, 707f
                  beq          t2, a4, 719f
706:              slti         s6, t1, -1895
707:              sltiu        t0, t3, -290
708:              slli         t6, s1, 19
709:              srai         t6, ra, 7
                  auipc        s6, 1025870
                  xori         t0, s6, 393
                  nop
                  sltiu        s10, a2, -158
714:              bltu         s9, a5, 727f
                  slti         t3, t6, 606
                  sltu         a0, gp, s8
                  bgeu         t4, s10, 725f
                  slli         s2, s2, 6
719:              auipc        s11, 419520
                  slli         a5, s6, 25
                  or           a0, t6, s7
                  add          a2, s2, a1
                  nop
                  sra          s10, tp, s1
725:              slt          a1, ra, ra
                  srl          a6, sp, s0
727:              auipc        a3, 799565
                  srl          s5, a2, a1
                  bne          a2, t1, 742f
                  slti         s4, s9, -331
                  srli         s7, t0, 21
                  sub          a7, zero, s7
                  bgeu         a1, a7, 744f
                  slti         s4, t4, -515
                  bge          gp, s6, 747f
                  bgeu         a5, a7, 746f
                  xor          s10, s8, ra
                  srli         t1, ra, 29
                  slt          a7, tp, t4
                  srli         s5, s10, 15
                  or           t6, s9, t1
742:              slti         a6, s6, 1047
                  ori          a1, ra, -2005
744:              and          a2, a6, a1
                  add          zero, a3, t6
746:              sll          tp, a4, tp
                  slt          t1, s6, zero
                  auipc        a5, 33160
                  la           s9, sub_10
                  xori         t3, s2, 1329
                  srl          s10, a0, s0
                  nop
                  addi         s9, s9, 75
                  auipc        s4, 280473
sub_9_j14:        jalr         ra, s9, -75 #jump sub_9 -> sub_10
747:              slli         s5, t5, 11
                  sub          a2, t3, a3
                  srai         s2, a4, 16
                  beq          s9, s11, 767f
                  ori          s3, s6, 738
                  sltiu        s1, s1, 835
                  andi         a6, sp, 684
                  bgeu         s7, ra, 769f
                  xor          ra, t2, s8
                  xori         t6, s8, -1925
                  and          s9, t3, s8
                  bltu         s7, s1, 769f
                  add          a1, s3, s2
                  bge          s1, t3, 765f
                  auipc        a5, 218360
                  xor          s7, t6, s5
                  slt          a3, a6, a4
                  bltu         s8, s9, 777f
765:              sltu         t1, s10, t6
                  bltu         t6, s5, 768f
767:              xori         t2, t5, 462
768:              blt          s5, a2, 787f
769:              and          a1, tp, s0
                  beq          s3, s3, 788f
                  slti         a6, a4, 667
                  srl          zero, s8, sp
                  bltu         t2, sp, 786f
                  sltu         s11, t1, a3
                  bne          s7, a6, 779f
                  bgeu         t6, a5, 792f
777:              beq          s3, s0, 778f
778:              addi         tp, s5, 1931
779:              add          t2, s2, s3
                  srai         a3, s3, 6
                  xor          s2, t5, a1
                  addi         a5, s9, -1165
                  bgeu         sp, a0, 795f
                  and          a1, s4, t3
                  slt          s4, s10, t0
786:              and          s5, ra, s4
787:              sll          a5, s9, a3
788:              lui          t6, 23623
                  lui          s11, 939830
                  slti         s4, a7, -2007
                  andi         a6, sp, -1822
792:              and          s9, a2, zero
                  xori         t4, s1, 1785
                  slti         s5, a5, -1935
795:              sub          tp, t0, a3
                  and          t2, t0, s1
                  blt          s7, t2, 805f
                  sltiu        zero, gp, 617
                  ori          s3, t4, 1756
                  sltiu        ra, a5, 1881
                  blt          ra, t2, 815f
                  add          s7, a1, zero
                  slli         t6, t5, 10
                  addi         t0, t5, 1366
805:              bgeu         t5, s9, 808f
                  slti         a7, zero, 816
                  or           a1, zero, s6
808:              auipc        a6, 80421
                  bgeu         s6, s0, 822f
                  addi         t2, t2, 1093
                  ori          t5, t1, -831
                  slti         a2, t4, 1859
                  xor          s5, s5, a3
                  xor          a5, s5, zero
815:              xor          s4, a6, zero
                  bltu         sp, a3, 825f
                  bgeu         s2, s1, 820f
                  bge          s5, t0, 825f
                  nop
820:              bltu         a1, zero, 830f
                  slli         a1, a2, 29
822:              slli         t6, t3, 0
                  beq          t4, t4, 834f
                  xori         s3, t4, 626
825:              blt          s1, t3, 833f
                  srli         a2, s11, 31
                  bltu         t5, t3, 841f
                  bltu         ra, a2, 839f
                  blt          s1, a1, 837f
830:              or           tp, tp, t3
                  andi         s5, s6, -205
                  blt          s11, s4, 845f
833:              add          zero, a0, s3
834:              xor          t6, a5, a3
                  bne          s6, a1, 847f
                  addi         a3, s8, -499
837:              bne          a6, s3, 838f
838:              ori          a5, t5, 1194
839:              bne          ra, s4, 851f
                  lui          s4, 619284
841:              lui          s6, 585057
                  srl          s2, t1, s4
                  srai         s7, s3, 13
                  bgeu         t1, a4, 857f
845:              bne          s9, a6, 857f
                  bne          sp, s4, 858f
847:              auipc        s11, 697462
                  beq          a0, a5, 850f
                  srl          s4, zero, s4
850:              xor          gp, gp, s8
851:              or           t4, s0, a3
                  slti         s10, t3, 1535
                  and          a1, gp, a0
                  sll          t5, s11, s1
                  beq          a0, s9, 863f
                  or           s9, s0, s8
857:              xori         a3, a7, -767
858:              bge          a5, s4, 861f
                  bltu         a1, t2, 868f
                  bltu         a7, t5, 871f
861:              blt          a3, t2, 868f
                  xor          gp, sp, t5
863:              sltu         t0, zero, t3
                  and          s1, a6, a6
                  srli         a2, a4, 16
                  blt          t6, s9, 877f
                  bgeu         t2, t3, 880f
868:              addi         a5, zero, -182
                  slti         t1, s6, -1731
                  and          tp, s8, ra
871:              sltu         ra, a7, gp
                  srl          a6, s6, a2
                  srl          a6, a2, t1
                  slt          ra, s2, t5
                  slli         s2, s10, 10
                  bne          t0, t0, 877f
877:              srli         s4, s2, 23
                  bge          t0, t3, 883f
                  bltu         s8, s5, 898f
880:              sltiu        s9, a7, -1207
                  sra          a6, t6, t0
                  sltiu        s11, a3, -519
883:              bltu         t2, s6, 896f
                  srai         s2, a1, 23
                  and          a6, a4, a7
                  srl          s7, t3, s3
                  sltu         s9, a3, t3
                  bltu         t1, a2, 896f
                  lui          t0, 638982
                  or           a0, s7, t3
                  andi         a7, t4, -1354
                  sub          t3, a6, t6
                  sll          a5, s3, s0
                  sra          a5, s3, tp
                  slt          s3, a2, sp
896:              srl          a7, t1, zero
                  sltiu        a0, t6, 1855
898:              or           a6, s0, t5
                  srai         gp, t0, 1
                  slti         s5, s0, -1022
                  sltiu        a3, t3, 1578
                  sub          a2, a0, a4
                  auipc        t4, 751746
                  or           s11, a7, zero
                  slt          tp, zero, t5
                  slli         s9, t2, 2
                  bge          t5, a1, 911f
                  srli         a3, a1, 14
                  ori          a5, tp, -1814
                  auipc        t5, 348604
911:              sll          t1, s11, s1
                  beq          s9, s1, 923f
                  sltu         t3, zero, s6
                  andi         s9, a7, 829
                  ori          a7, s7, 1999
                  srai         a5, s10, 24
                  sub          t4, s1, t2
                  srl          s1, t2, s0
                  lui          t1, 997902
                  or           a1, s0, t0
                  bltu         t4, a3, 934f
                  sub          t1, sp, s7
923:              bltu         a0, s11, 935f
                  sll          tp, gp, s5
                  nop
                  and          tp, a3, ra
                  sltiu        s11, s3, 1217
                  bne          t3, s2, 944f
                  xor          a6, s10, zero
                  auipc        s10, 263172
                  srai         a6, t4, 24
                  ori          t2, tp, -456
                  and          s7, tp, t2
934:              and          a2, zero, a1
935:              xori         s6, s0, 1773
                  beq          a3, a6, 937f
937:              bne          s4, t1, 952f
                  add          s11, t0, a5
                  bgeu         s6, t0, 953f
                  auipc        t1, 473013
                  blt          s7, t2, 951f
                  ori          t4, s10, -1852
                  sub          t5, a2, s0
944:              ori          sp, a5, -1982
                  sltu         zero, a2, a4
                  or           a5, t6, a6
                  blt          a7, s6, 950f
                  xori         s7, tp, 697
                  bge          a4, s11, 966f
950:              srli         s6, s10, 6
951:              sll          s6, t6, a2
952:              bge          s7, a1, 960f
953:              sltiu        a3, a4, -631
                  lui          s3, 737627
                  srai         s1, s1, 17
                  sra          a1, ra, s7
                  lui          a2, 1017555
                  beq          t6, t2, 972f
                  bltu         s4, ra, 977f
960:              srai         a2, t1, 2
                  xor          s2, s8, s5
                  andi         sp, s11, 1563
                  lui          tp, 64538
                  slli         s2, a1, 12
                  xor          t1, a5, s5
966:              auipc        s6, 814293
                  andi         s5, zero, -1056
                  sra          tp, t5, s9
                  slt          gp, a0, zero
                  srai         s7, s4, 2
                  slli         a7, zero, 4
972:              bltu         tp, a2, 986f
                  and          s7, s8, a0
                  sra          s9, t4, s1
                  sltiu        zero, t2, 1801
                  and          s11, a6, ra
977:              sra          t5, t1, t6
                  lui          s10, 437168
                  slt          t2, s5, t5
                  srl          s7, a6, tp
                  ori          ra, s7, 789
                  bgeu         a2, gp, 996f
                  addi         s2, s0, -662
                  xor          s9, ra, s4
                  slt          t1, s6, s8
986:              bltu         a1, a2, 994f
                  slti         s5, s2, -1001
                  add          s10, s2, s9
                  blt          gp, s2, 1001f
                  nop
                  addi         t3, a0, -2005
                  srli         ra, t0, 16
                  bge          a3, s4, 1000f
994:              srl          a3, s11, s11
                  xor          sp, s5, s5
996:              bltu         s0, a2, 1008f
                  bgeu         t1, s4, 1000f
                  xor          t0, s1, a6
                  sltiu        s1, s9, 1803
1000:             auipc        tp, 931286
1001:             bge          s9, s1, 1004f
                  srai         a5, s8, 21
                  bltu         a7, s8, 1011f
1004:             slt          t4, a5, a5
                  addi         s1, s7, 1090
                  bltu         s10, a0, 1019f
                  srli         s4, s10, 29
1008:             ori          s4, a0, -291
                  xori         sp, a7, 1153
                  sub          gp, s5, s5
1011:             srli         t2, s5, 9
                  srli         tp, s4, 29
                  lui          a3, 201366
                  nop
                  slli         t6, a3, 22
                  lui          s7, 152360
                  slli         t6, a4, 17
                  or           a5, zero, t3
1019:             sltu         gp, gp, s3
                  srai         s4, a4, 26
                  srli         s9, t0, 16
                  sltu         gp, a4, t5
                  bne          a4, s0, 1040f
                  lui          s7, 629109
                  bgeu         tp, s4, 1036f
                  sra          s6, t3, a0
                  slli         s4, zero, 28
                  slti         t6, a7, 1825
                  bgeu         a2, t2, 1038f
                  slli         a2, s2, 10
                  srli         a5, s1, 13
                  xor          t5, s2, a3
                  sltu         a1, t1, s2
                  sltu         t5, a4, s1
                  sra          s2, t1, a3
1036:             add          gp, s6, sp
                  bge          s2, t0, 1056f
1038:             sra          a6, s2, ra
                  slt          s7, t5, ra
1040:             and          a6, t4, t1
                  beq          t0, t0, 1054f
                  addi         s11, a3, -96
                  xor          t0, t3, zero
                  sra          s5, s9, a2
                  sltiu        t1, s0, -304
                  slli         t6, s0, 18
                  nop
                  sltiu        a5, s5, 384
                  blt          s9, t1, 1061f
                  srai         s3, t0, 25
                  sltu         s11, s1, a1
                  auipc        zero, 368123
                  sll          tp, t3, s5
1054:             beq          gp, t2, 1067f
                  add          s11, s1, t4
1056:             or           s4, gp, a2
                  or           s10, t1, t6
                  slt          zero, a7, s10
                  lui          s2, 389792
                  bge          s8, t0, 1061f
1061:             andi         s1, t4, 1695
                  srli         s4, s1, 5
                  srai         a5, a1, 21
                  xori         a6, t6, 54
                  and          t0, a0, t1
                  beq          a7, zero, 1077f
1067:             beq          s1, s3, 1069f
                  sra          t6, sp, tp
1069:             bgeu         t4, s4, 1084f
                  addi         a3, a2, -146
                  andi         zero, t5, 907
                  srl          a6, s10, a3
                  sltu         s7, s9, gp
                  addi         a3, a3, -1755
                  xori         zero, s6, 176
                  srli         a1, s4, 5
1077:             beq          zero, t6, 1088f
                  srl          t0, a2, s1
                  slt          a6, a6, s2
                  ori          s6, a6, -577
                  slli         zero, t3, 4
                  slti         s3, a6, -1825
                  srl          s3, s7, t6
1084:             slt          t2, tp, tp
                  sll          zero, s7, s11
                  andi         a5, s7, -704
                  sub          t1, zero, t3
1088:             slt          s10, s0, ra
                  nop
                  or           sp, s5, s1
                  xori         s2, s11, -582
                  slli         sp, s9, 16
                  srai         t5, s4, 14
                  andi         s1, s4, -887
                  beq          gp, zero, 1096f
1096:             add          s3, a1, tp
                  sltiu        s3, a6, -1750
                  sltu         a2, s10, gp
                  xori         s6, s4, -373
                  bltu         zero, a3, 1110f
                  nop
                  srli         a0, t3, 24
                  add          s2, s7, a2
                  and          s10, s6, t0
                  srli         a2, a7, 6
                  slt          t0, a7, s9
                  sltu         ra, a7, a1
                  nop
                  sll          a3, s2, t0
1110:             beq          t4, s3, 1123f
                  bgeu         s1, tp, 1115f
                  beq          a2, s4, 1130f
                  srli         t6, s3, 31
                  xori         s9, s9, 1360
1115:             lui          s11, 320336
                  slti         a2, a3, -1342
                  auipc        a6, 1036582
                  bltu         a7, zero, 1123f
                  bge          s6, a4, 1135f
                  slti         a7, s10, 736
                  srl          zero, t0, t6
                  srai         t5, s11, 29
1123:             ori          sp, s9, -508
                  beq          a1, a5, 1132f
                  lui          s3, 552823
                  slti         t4, zero, -1236
                  addi         t6, t5, -1589
                  blt          a2, s7, 1140f
                  slt          s1, a1, t4
1130:             auipc        a2, 453160
                  slli         t6, ra, 27
1132:             slti         a6, s5, 1723
                  addi         s4, a4, -1642
                  srai         a0, a3, 0
1135:             add          s9, t2, s9
                  bgeu         sp, sp, 1139f
                  sltu         s7, a3, gp
                  xori         a6, s0, 866
1139:             andi         a3, a5, -369
1140:             bltu         a7, s0, 1147f
                  xor          ra, t4, t3
                  or           t1, a3, s9
                  blt          s7, s6, 1161f
                  srl          t2, gp, s11
                  slti         gp, a0, -1003
                  sra          t4, zero, t0
1147:             lui          a6, 394936
                  srli         s6, s4, 27
                  sltu         a2, a5, s10
                  sltu         gp, s11, s1
                  bgeu         s9, t5, 1164f
                  xori         a6, sp, 1032
                  slli         gp, a6, 18
                  slli         t1, t6, 28
                  sltu         s11, t2, zero
                  sub          a1, a5, s1
                  sltiu        a3, s2, 1102
                  srli         s5, s4, 26
                  add          a6, a6, s8
                  bgeu         s7, sp, 1170f
1161:             bltu         t3, t4, 1162f
1162:             blt          a3, s9, 1175f
                  slli         sp, t3, 2
1164:             ori          a0, t0, -1730
                  auipc        s7, 32959
                  bgeu         t1, s0, 1179f
                  auipc        s6, 925520
                  srl          a2, a3, s5
                  ori          s11, a6, 182
1170:             blt          a6, s2, 1189f
                  slli         t2, t1, 0
                  ori          t3, gp, -378
                  sltiu        s6, t0, -1408
                  addi         zero, a4, -924
1175:             sltiu        s9, ra, -1826
                  srl          s3, a1, t4
                  blt          tp, s7, 1185f
                  blt          s10, s5, 1179f
1179:             sra          gp, s0, s4
                  andi         zero, t2, 236
                  sltu         a5, t4, s8
                  andi         a5, t5, 360
                  slt          t5, t3, a2
                  xori         t2, s8, -1788
1185:             sub          s4, tp, a6
                  slt          t4, zero, a5
                  bgeu         a2, a3, 1203f
                  slti         t0, zero, -1036
1189:             sub          t0, a7, t4
                  srli         s5, s4, 16
                  srli         s11, a3, 5
                  bltu         t6, s9, 1195f
                  blt          a7, ra, 1195f
                  blt          s5, t4, 1211f
1195:             sltiu        s4, t1, 439
                  srai         t2, s9, 18
                  beq          t4, sp, 1201f
                  addi         a7, s2, 1819
                  sltiu        s1, t1, 1880
                  slt          s5, a2, tp
1201:             or           zero, a5, t0
                  bge          a3, a1, 1213f
1203:             xor          a7, s8, t4
                  andi         ra, sp, 1300
                  auipc        gp, 551608
                  xori         s6, ra, 820
                  andi         s5, a2, -2039
                  xor          a6, t3, s2
                  xori         t5, t1, -32
                  bne          s8, a1, 1219f
1211:             lui          a0, 283321
                  bltu         ra, a0, 1227f
1213:             auipc        t1, 469239
                  xor          a3, a4, a6
                  auipc        t4, 751783
                  slli         s4, t6, 23
                  srli         a1, s3, 5
                  sltiu        a6, s11, -807
1219:             srl          ra, s5, a0
                  andi         a0, a4, -1141
                  add          t5, a2, s10
                  slti         t5, t6, 1175
                  slt          s7, s7, a5
                  nop
                  add          s10, s10, t1
                  srl          t4, t1, ra
1227:             or           t1, gp, t0
                  lui          s9, 81487
                  add          t1, s8, s9
                  srli         ra, s2, 9
                  slti         t2, a6, -902
                  bltu         t0, a3, 1240f
                  srli         a6, s4, 3
                  xor          sp, s7, tp
                  blt          s9, s1, 1243f
                  bne          a7, s3, 1250f
                  auipc        t6, 288822
                  bgeu         s2, zero, 1250f
                  slli         t6, t0, 20
1240:             beq          ra, s3, 1253f
                  add          s11, s9, s6
                  auipc        t4, 421373
1243:             srai         sp, t3, 2
                  srli         s7, a2, 1
                  sra          s3, s11, t2
                  andi         s11, tp, -557
                  sltiu        s10, t3, 522
                  sub          a0, a6, t6
                  sll          a5, gp, s11
1250:             auipc        s1, 41990
                  nop
                  sltiu        t4, t1, -858
1253:             and          a1, gp, s11
                  sltu         ra, a0, a6
                  ori          t0, s1, -914
                  auipc        s2, 944850
                  and          a1, a4, s11
                  and          t4, a1, a3
                  sra          s11, t5, s9
                  or           sp, t4, t1
                  bgeu         a0, s5, 1272f
                  srai         s7, t6, 14
                  slli         s2, a4, 2
                  sra          s5, s7, a2
                  sra          s7, sp, t2
                  srl          s9, a4, a7
                  ori          s3, t2, -1976
                  srl          zero, tp, s1
                  lui          s5, 581945
                  slli         a2, a0, 16
                  slt          ra, zero, t5
1272:             sll          t5, ra, a6
                  nop
                  andi         s9, a2, 1823
                  srl          t2, t6, s10
                  and          s9, t3, s10
                  sltu         gp, t3, zero
                  or           s9, a7, s7
                  sltiu        s7, gp, -1720
                  sll          s1, s7, t1
                  andi         a5, s10, -217
                  nop
                  slt          s1, zero, sp
                  srai         a5, a0, 23
                  ori          ra, s11, -1132
                  srl          a5, s3, ra
                  sltiu        s3, ra, 1035
                  ori          t2, s8, -1180
                  andi         s6, a0, 1478
                  srli         a3, tp, 22
                  andi         t0, s2, 403
                  lui          t6, 787451
                  auipc        s2, 145961
                  slt          s7, s0, a6
                  addi         t4, t6, 34
                  srl          s11, s0, s2
                  slt          zero, t0, a7
                  bne          t2, t5, 1310f
                  nop
                  xor          s2, a3, t4
                  sll          s5, s3, t3
                  sltu         gp, s2, t3
                  sltu         a5, a3, gp
                  slt          sp, s3, s4
                  lui          s5, 675233
                  srl          a2, s5, s6
                  srl          a6, s4, s11
                  andi         s9, a7, 720
                  and          s1, s9, a2
1310:             srl          a2, t2, t0
                  nop
                  bge          t3, t3, 1323f
                  slti         t0, a4, 544
                  sra          tp, t1, s9
                  sltiu        ra, t6, 1040
                  sltu         t0, s4, s1
                  srai         gp, a1, 11
                  bge          t4, s0, 1332f
                  xor          t1, s9, tp
                  sub          s9, s11, s3
                  and          s9, s0, gp
                  lui          s7, 785127
1323:             beq          gp, ra, 1328f
                  blt          s3, s3, 1335f
                  blt          a0, t2, 1344f
                  slti         s9, t1, 1657
                  srl          s7, a4, a1
1328:             sub          t3, s2, a2
                  lui          a2, 531695
                  bne          zero, s10, 1331f
1331:             xor          a7, t3, t4
1332:             auipc        zero, 594286
                  lui          sp, 129568
                  bge          gp, gp, 1335f
1335:             andi         s6, s11, 300
                  sltu         s1, t6, s4
                  slli         t5, a4, 3
                  add          zero, s0, s9
                  xori         a3, ra, -1850
                  sra          t1, s1, t1
                  srai         s11, a0, 3
                  xori         a7, a6, -400
                  bgeu         s3, gp, 1355f
1344:             ori          sp, a5, -1923
                  auipc        s4, 873868
                  sll          s6, a3, s4
                  srl          gp, a4, s4
                  and          gp, t5, a4
                  nop
                  xori         t4, s1, -1193
                  sub          t1, t5, a5
                  sltiu        s4, t3, 708
                  and          t6, s1, gp
                  add          a1, t1, s7
1355:             bne          t6, t0, 1363f
                  bgeu         s5, a5, 1359f
                  sltiu        t4, s10, -545
                  add          s4, s7, t4
1359:             srli         s11, s0, 8
                  add          a2, t4, t2
                  bltu         a6, s4, 1373f
                  bltu         a5, zero, 1379f
1363:             xori         s6, zero, 669
                  xor          s2, s2, t2
                  srl          s1, a3, tp
                  nop
                  sra          ra, a0, s1
                  xor          s6, t3, s10
                  blt          a0, s8, 1371f
                  sltiu        t0, s6, 828
1371:             bge          s6, tp, 1380f
                  sra          s1, t5, t6
1373:             ori          s9, a4, -173
                  sll          t1, t2, s2
                  or           sp, s2, s6
                  srli         gp, s11, 0
                  and          a0, s3, gp
                  srai         t5, t3, 19
1379:             sra          ra, s7, s10
1380:             srai         a5, t0, 30
                  sltiu        t3, zero, -1755
                  or           s9, sp, a2
                  sll          t2, a6, a3
                  srai         a0, s7, 1
                  bltu         s2, s5, 1392f
                  lui          s5, 481204
                  ori          s2, a1, -896
                  slt          t2, a2, s11
                  sltiu        s10, a3, -1815
                  slli         sp, a5, 2
                  beq          t1, s1, 1401f
1392:             bge          s5, a0, 1407f
                  ori          s11, s1, -815
                  bne          s9, t2, 1407f
                  add          t3, zero, a3
                  blt          t2, t4, 1409f
                  sltiu        a6, a3, 349
                  xor          t0, a7, s6
                  blt          s11, s4, 1412f
                  auipc        s7, 503238
1401:             addi         t4, s7, -515
                  sll          t2, a3, s7
                  sra          ra, a3, s10
                  xori         t6, s2, -1574
                  ori          tp, s7, 2020
                  xori         s11, s7, -1151
1407:             slli         s3, s10, 31
                  bgeu         s8, s11, 1413f
1409:             sll          s6, t4, zero
                  lui          s6, 741477
                  sltu         a7, gp, a2
1412:             sub          s10, sp, s0
1413:             srli         tp, a4, 28
                  srli         t2, a6, 21
                  bgeu         ra, a4, 1419f
                  blt          s1, s4, 1424f
                  beq          t5, t2, 1431f
                  srli         s5, s2, 7
1419:             xori         tp, a2, -1127
                  bge          s10, gp, 1434f
                  xori         a6, t4, 94
                  sub          ra, zero, t4
                  beq          a6, t4, 1431f
1424:             ori          t5, s8, 943
                  srli         a0, t3, 13
                  nop
                  slt          s4, t2, sp
                  bge          t4, a7, 1440f
                  lui          t2, 578954
                  sra          t2, t4, s1
1431:             bgeu         a6, s1, 1447f
                  addi         t3, s1, -1938
                  bne          s5, t3, 1444f
1434:             sub          gp, a2, a2
                  sltu         s1, s3, s0
                  bgeu         s3, a5, 1454f
                  add          gp, s3, s10
                  beq          zero, zero, 1451f
                  lui          s9, 791908
1440:             bltu         sp, t1, 1451f
                  nop
                  slli         t4, s9, 24
                  slt          t0, t2, s8
1444:             srai         t4, s1, 30
                  auipc        sp, 240008
                  or           t5, t6, a3
1447:             slti         s5, s3, 1008
                  sltu         t6, a2, t5
                  srli         s11, s8, 13
                  add          t4, s0, tp
1451:             addi         a5, t3, 565
                  sub          a3, sp, s5
                  nop
1454:             lui          s9, 525944
                  ori          s2, sp, -1820
                  bge          s1, s5, 1459f
                  xori         t1, gp, -972
                  sub          ra, zero, a3
1459:             bltu         t6, t1, 1467f
                  slti         tp, s8, 1669
                  ori          s5, s2, -762
                  srli         a0, s8, 18
                  sra          a6, s3, a1
                  add          s3, gp, s0
                  xori         s10, sp, 1580
                  auipc        a0, 1029847
1467:             and          t6, a2, gp
                  or           t3, zero, a6
                  srli         t3, a6, 10
                  auipc        t5, 229954
                  auipc        a7, 656309
                  xori         zero, s10, -111
                  srai         t6, s6, 4
                  and          s5, t0, a2
                  bgeu         tp, a7, 1484f
                  andi         tp, t6, 430
                  addi         s5, sp, 1610
                  or           gp, s8, s7
                  srli         t4, zero, 17
                  blt          t6, s4, 1492f
                  sub          a7, a3, a4
                  bne          s2, a0, 1497f
                  andi         sp, s6, -704
1484:             bgeu         s1, a4, 1501f
                  slli         ra, ra, 22
                  andi         ra, a5, 489
                  bgeu         s0, s1, 1488f
1488:             nop
                  sltiu        s10, t5, -588
                  auipc        s6, 926978
                  bltu         s6, a6, 1502f
1492:             bltu         sp, s1, 1505f
                  sll          zero, s7, a4
                  bge          gp, t4, 1495f
1495:             bge          sp, zero, 1508f
                  blt          t6, a4, 1513f
1497:             sra          gp, t1, a3
                  slti         sp, t3, 453
                  ori          s6, t2, -1097
                  sub          s5, s11, a0
1501:             xori         s11, s8, -1985
1502:             slli         s3, gp, 20
                  srai         a0, t6, 6
                  bne          s2, s9, 1508f
1505:             xori         s4, zero, -1992
                  srai         a0, t1, 17
                  sltu         s6, s9, t2
1508:             sltu         a3, a2, s6
                  srli         sp, t0, 29
                  bltu         a3, a1, 1513f
                  auipc        s4, 942453
                  bne          a3, s2, 1513f
1513:             lui          s3, 148593
                  sub          t5, a4, s1
                  lw           ra, 4(s0)
                  sll          s10, s6, t1
                  xor          s5, a0, s3
                  sra          t6, a5, t2
                  andi         s10, a3, -1331
                  xori         s4, s5, 1772
                  slt          s9, s4, t1
                  sltiu        t1, a1, 724
                  addi         s0, s0, 64
                  auipc        a0, 1012086
2030:             addi x29, x1, 0
2030:             jalr x29, x29, 0
sub_10:           auipc        a0, 390842
                  addi         s0, s0, -52
                  andi         a5, a1, -1233
                  sw           ra, 4(s0)
                  slli         s7, a2, 29
                  andi         a1, s11, 280
                  la           t2, region_0+1942 #start riscv_load_store_rand_instr_stream_0
                  xori         s9, a5, 1249
                  and          zero, s6, a3
                  auipc        t6, 1007375
                  lui          t1, 213336
                  srai         t3, s10, 28
                  lbu          s4, -1(t2)
                  andi         t1, a7, 1964
                  srl          t1, s1, s2
                  xor          s7, s8, t6
                  sb           t0, 27(t2)
                  slli         s1, a4, 26
                  sub          tp, s10, t1
                  sb           tp, -49(t2)
                  slt          t6, t1, s8
                  nop
                  sb           t4, 0(t2)
                  lbu          s10, 35(t2)
                  lbu          s4, -51(t2)
                  srli         s9, a5, 29
                  add          s6, t2, t3
                  lb           a5, -28(t2)
                  lbu          a0, -60(t2)
                  lw           s5, -10(t2)
                  sra          a0, a1, tp
                  lbu          a6, 29(t2)
                  sltu         t3, s9, s4
                  lui          s3, 177225
                  sh           t6, -40(t2)
                  lhu          s7, 20(t2)
                  sltu         a5, t1, s1
                  sltiu        a1, zero, -1343
                  lb           t1, -39(t2)
                  lbu          a7, 15(t2) #end riscv_load_store_rand_instr_stream_0
                  xor          s1, a6, gp
                  sltiu        s2, t0, -736
                  slli         a7, t5, 8
                  bge          a7, sp, 7f
                  ori          tp, t1, 1099
                  ori          a5, ra, 367
                  sltu         a3, t2, s4
7:                bgeu         a0, t0, 15f
                  sub          a6, a5, s9
                  sub          s4, t5, tp
                  sll          t0, t0, t5
                  srai         a2, a1, 20
                  andi         s2, sp, -428
                  sub          s4, sp, t0
                  beq          a2, s2, 15f
15:               xor          ra, t0, a4
                  lui          s6, 171135
                  srai         s1, s2, 16
                  auipc        s4, 425107
                  srl          t1, s6, s8
                  xor          zero, s4, a7
                  or           s7, t0, t5
                  addi         a7, s3, -1441
                  or           t6, a5, gp
                  blt          s4, s5, 29f
                  bne          t6, s0, 43f
                  sltu         s3, t2, t5
                  blt          a7, t6, 47f
                  andi         a6, s3, 1536
29:               sll          t2, a2, a0
                  srai         a0, zero, 17
                  and          s5, t0, s9
                  and          s9, s2, a4
                  and          s1, t5, a4
                  or           gp, sp, s9
                  slli         t3, s0, 25
                  ori          s9, s10, -1549
                  slt          t0, t2, s1
                  srai         s1, s11, 16
                  bne          t2, a6, 45f
                  beq          a4, s6, 51f
                  auipc        t3, 681440
                  srai         ra, s0, 4
43:               srai         a6, s6, 9
                  xor          sp, gp, a6
45:               sltu         a1, a5, tp
                  bltu         s4, s7, 47f
47:               srai         a0, s3, 9
                  sub          a7, t2, s6
                  xor          a2, a1, t5
                  sltiu        s1, s9, -1421
51:               sra          t0, t2, s8
                  auipc        zero, 442085
                  sltiu        a5, s6, 480
                  add          s1, s2, t0
                  slli         t2, s8, 30
                  lui          s1, 932762
                  or           t0, a0, s1
                  slli         a5, s4, 0
                  sltiu        s10, a7, -1596
                  auipc        a2, 228421
                  bgeu         t0, s2, 77f
                  srli         zero, tp, 14
                  srli         gp, s8, 12
                  auipc        a0, 65375
                  andi         s4, s11, -136
                  srli         s7, s10, 6
                  auipc        s6, 448704
                  auipc        t6, 925595
                  and          sp, s11, s8
                  lui          a5, 559846
                  ori          a2, s1, -328
                  nop
                  srl          a5, a1, s0
                  add          gp, s8, t2
                  srai         s7, t2, 23
                  add          s4, tp, t3
77:               bltu         a3, t4, 92f
                  blt          s5, s6, 85f
                  andi         a6, a0, -1405
                  slt          ra, a2, s9
                  slli         s2, t1, 21
                  srli         t5, a6, 0
                  srli         gp, a5, 7
                  sll          a6, t6, s11
85:               slt          s4, a4, t3
                  nop
                  xor          t2, a2, a3
                  srl          t1, a6, s4
                  ori          ra, t0, 1989
                  slli         tp, s11, 30
                  slti         s9, a2, -1111
92:               bge          t6, s11, 110f
                  beq          t3, s8, 111f
                  sltiu        s9, s11, 1943
                  auipc        a2, 975498
                  lui          s4, 4056
                  sra          gp, s0, s8
                  slti         ra, a6, 1843
                  sra          s1, a2, a5
                  nop
                  xori         t0, s8, 933
                  ori          t2, a0, 93
                  add          gp, t5, a3
                  sll          a6, s3, a1
                  addi         t4, a4, -1475
                  xori         a6, gp, 392
                  bltu         s5, s1, 126f
                  xori         a3, zero, -1430
                  bne          s10, a7, 123f
110:              add          zero, t4, a5
111:              sra          a5, s2, tp
                  srai         s6, ra, 25
                  sltiu        tp, t4, -185
                  sub          s7, sp, a0
                  srl          s9, s8, zero
                  slti         t5, s3, 1804
                  bge          a3, tp, 128f
                  xori         t6, t0, -352
                  or           s5, a4, t0
                  bne          s2, t5, 125f
                  or           s4, s9, a1
                  beq          s6, a1, 135f
123:              sll          a7, t4, s0
                  auipc        s2, 558307
125:              sltiu        t2, s11, -513
126:              addi         s10, a5, 1048
                  ori          a7, a4, -1979
128:              and          t0, t1, s8
                  bgeu         t3, zero, 144f
                  xor          a0, s9, t4
                  srl          s6, s7, zero
                  ori          t6, zero, 2020
                  bltu         s4, a5, 142f
                  bne          a4, s8, 138f
135:              srl          a6, s7, t3
                  or           s5, t3, a2
                  bgeu         sp, tp, 156f
138:              and          t1, t6, a1
                  andi         gp, t2, -298
                  srli         t2, t5, 10
                  sub          s6, s3, t4
142:              addi         t6, s3, 279
                  sll          a3, a1, t5
144:              blt          tp, t3, 146f
                  sltu         s11, a5, t6
146:              blt          gp, a3, 165f
                  and          s2, t3, gp
                  nop
                  slt          t0, a1, t0
                  slli         s1, s7, 24
                  srli         s6, a7, 5
                  slt          s7, s7, s4
                  sltu         a0, s11, s8
                  slt          t1, a7, t3
                  srli         t2, t3, 29
156:              blt          t3, gp, 169f
                  or           s4, sp, gp
                  slli         a1, zero, 5
                  slt          t5, s0, zero
                  bne          a6, s1, 166f
                  xori         t0, a4, -1904
                  sltiu        s1, zero, 1022
                  xori         t5, tp, -364
                  slli         s3, t6, 5
165:              sltu         t5, a1, gp
166:              srai         s7, a6, 20
                  sub          tp, s4, a1
                  srli         a6, s4, 24
169:              srai         tp, t1, 16
                  or           tp, zero, s0
                  andi         s3, a0, -1668
                  add          a2, a2, s11
                  lui          s7, 641709
                  srl          s7, a6, t5
                  ori          s7, t3, 1799
                  slli         a7, s0, 31
                  sll          a1, s6, t0
                  sub          s3, s2, s11
                  nop
                  bltu         sp, t6, 191f
                  sra          t4, a5, tp
                  srli         s10, t4, 15
                  sltiu        t2, t1, 1794
                  xori         a3, s8, 1778
                  andi         s6, s11, 14
                  or           t6, t0, a7
                  xori         gp, t0, -895
                  srli         a1, zero, 31
                  nop
                  beq          t2, s10, 194f
191:              slti         sp, s5, 558
                  addi         s10, t2, 597
                  beq          s11, a6, 205f
194:              addi         t3, t6, 1347
                  slt          t6, a4, a4
                  xori         tp, sp, 413
                  and          t6, s6, a3
                  beq          s11, t2, 216f
                  beq          a6, t1, 210f
                  srl          t4, s3, a4
                  bge          t0, s6, 209f
                  and          s2, s2, gp
                  slti         a5, s5, -1298
                  srli         s2, s8, 6
205:              slti         a0, s4, 189
                  sltiu        s6, tp, 709
                  sltu         s2, s10, a2
                  bgeu         s8, a0, 226f
209:              auipc        a5, 959212
210:              lui          s5, 905472
                  add          a3, s1, a2
                  andi         a3, s4, 1818
                  and          a6, s7, s11
                  sll          s11, s7, s3
                  la           s2, region_1+524 #start riscv_load_store_rand_instr_stream_1
                  sh           t1, 50(s2)
                  andi         s7, s0, 1062
                  srai         a7, a7, 30
                  sra          s10, s4, t2
                  sb           t1, -1(s2)
                  lb           t2, 39(s2)
                  lb           a6, 25(s2)
                  andi         a1, s9, 1482
                  lbu          a3, 19(s2)
                  sb           s9, 38(s2)
                  and          s5, a2, a7
                  lui          s1, 983010
                  sub          a0, t5, a2
                  lb           t6, 29(s2)
                  or           t2, s7, s6
                  nop
                  lb           s9, -21(s2)
                  lb           t3, -58(s2)
                  lui          s9, 754729
                  sb           a7, 18(s2)
                  sb           a6, 39(s2)
                  lui          gp, 802249
                  slt          sp, a3, s5
                  sb           t1, 7(s2)
                  sb           gp, 17(s2)
                  lb           t2, -49(s2)
                  lb           gp, 59(s2)
                  xor          s4, t4, t0
                  sb           s9, 64(s2)
                  lh           sp, -24(s2)
                  sra          s7, ra, t4
                  addi         s7, s1, -244
                  slti         t2, t0, 1597
                  lbu          a6, 46(s2)
                  lb           s10, -27(s2)
                  lb           t3, 49(s2)
                  srli         t2, a1, 20
                  lui          t2, 625104
                  slt          gp, t2, t3
                  xor          gp, t5, t5
                  sll          t3, s8, s9
                  andi         s9, a3, 545
                  srl          a2, s7, s9
                  slti         sp, s0, 51
                  slli         tp, t6, 21
                  sw           t1, 52(s2)
                  lbu          a2, 25(s2)
                  sw           s2, 40(s2)
                  lbu          zero, -5(s2)
                  sb           t2, -42(s2)
                  sb           ra, -13(s2)
                  lbu          s7, -64(s2)
                  lhu          a5, -30(s2) #end riscv_load_store_rand_instr_stream_1
                  nop
216:              blt          t6, zero, 217f
217:              xor          a0, a3, s0
                  auipc        s1, 771837
                  or           gp, zero, s11
                  xori         a5, t2, -403
                  sra          s5, s5, tp
                  addi         t5, a0, 747
                  sll          a1, a6, s1
                  beq          s9, a7, 237f
                  sltu         tp, t1, a7
226:              lui          a0, 769182
                  or           a3, gp, t1
                  andi         gp, ra, -745
                  bgeu         sp, s9, 233f
                  bgeu         tp, a5, 234f
                  slt          a3, s7, s1
                  ori          s4, s10, 806
233:              auipc        t4, 272595
234:              srai         s4, t5, 26
                  blt          s6, t2, 250f
                  and          t3, t6, s9
237:              and          s4, a0, zero
                  sltu         s11, s4, s4
                  bltu         s9, a5, 243f
                  slt          a1, s0, s0
                  lui          ra, 1000916
                  sltu         s6, s9, zero
243:              andi         ra, s2, 110
                  add          t4, a7, t2
                  sra          s2, sp, t6
                  sra          t2, a1, tp
                  slt          zero, a2, t2
                  bne          s10, tp, 257f
                  slli         t1, sp, 15
250:              xor          t0, tp, s5
                  bne          s6, t2, 260f
                  srai         t6, t3, 22
                  ori          a3, s7, 937
                  sll          t5, a4, a3
                  bge          s9, a6, 260f
                  sra          t5, t0, a1
257:              bge          t6, a4, 260f
                  add          s11, a7, s7
                  and          t5, s1, a1
260:              add          a2, s0, tp
                  lw           ra, 4(s0)
                  xori         t1, t1, 1034
                  addi         s0, s0, 52
                  nop
                  slli         s11, a5, 21
360:              addi x11, x1, 0
360:              jalr x11, x11, 0
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
.word 0xebe1b01b, 0x06b17b82, 0xfb7f8a8b, 0x8bda2c90, 0x3aafcb1b, 0xd69e09a8, 0xaa02505e, 0x6cc89a73
.word 0x5950df5d, 0x5c4c5835, 0x56b2539e, 0x5dc80ab6, 0x2e678d44, 0xaead6a87, 0xa014dae8, 0x58fec7c6
.word 0x3f19181e, 0x6c8f64d2, 0x0eecd3dc, 0xaa968382, 0x379a9232, 0xe3bf2b54, 0x8bdb5764, 0xd253de9c
.word 0xc4b4cb27, 0x1bfeff95, 0xfe37ece2, 0x04e5db88, 0x203ce0d9, 0x1336ccad, 0x50acb3e1, 0x91b9beeb
.word 0x98984969, 0xaa902f16, 0x9711fd5e, 0x606c379a, 0xb7e659a3, 0x84f37f5a, 0x2e54e365, 0x4687ff9e
.word 0x07124dfa, 0x0f95782f, 0xaee5813a, 0x6b494c84, 0x5b000aeb, 0xb97c6f34, 0x57f2f698, 0x4e6e65ee
.word 0x9333463e, 0x7ee68ad7, 0x05dfb284, 0xe1f79fd5, 0x504c479c, 0xf5f91153, 0xa277417c, 0x6ec545fd
.word 0x665762ec, 0xaec5e637, 0x88c89bd5, 0x45910801, 0x60340758, 0xa9524fa8, 0xd70b197d, 0xafa2acf7
.word 0x81e4b4e8, 0x3219937b, 0x023ac846, 0xf797086d, 0x84f08d13, 0x345fd594, 0xac97ca00, 0xdda554a2
.word 0x96140215, 0x258997c5, 0x7f3f3b87, 0xf480f379, 0x237bdf61, 0xbd0ef9b8, 0x3168da21, 0x6fcd58bb
.word 0xb4f6c9b0, 0xf4003bb6, 0x1383c43b, 0xc9e59c88, 0xbf199f62, 0xb3161733, 0xc3d1550d, 0x070c82bd
.word 0x9942fe61, 0x59cc237f, 0xd4aeaa79, 0x764c13fe, 0xdcc29cc4, 0xbcc276a5, 0xf3412496, 0x5fe3144d
.word 0x1ff023ef, 0x47c44f9f, 0xc343a335, 0xc4e0852f, 0xbf656dce, 0x1e1330e2, 0xa023d6b4, 0xb576594f
.word 0x4ec2aee4, 0x3c90c928, 0xc942784b, 0xc07edc98, 0x6b65cbde, 0xd7b62b56, 0x04800453, 0x0de0263b
.word 0x9b6024f9, 0xfc657942, 0x6a3358ce, 0x201eb257, 0xdbbd6c77, 0x7476a873, 0xdd79be1f, 0xc68e3bad
.word 0xda6f5359, 0x61bef15d, 0x13ab1d71, 0x9cee5360, 0x0e085773, 0x7f455647, 0x7460aa9d, 0xe8a55df6
.word 0x529e9fa7, 0x53a60c5f, 0x3280f9ee, 0x072621ba, 0xb38da89d, 0x8780d168, 0x1b442446, 0x5e744a78
.word 0xba05797f, 0xdd4e6f19, 0xca477529, 0xf7ec4c7b, 0x7c575a4c, 0x418b0887, 0x31f85e2c, 0x59deff57
.word 0x885c1058, 0x1b6929d2, 0x839b1768, 0x58de8833, 0xd846c4ac, 0x68a785f8, 0xed9a6f0c, 0xee389319
.word 0x32f21319, 0x5b07633f, 0x64df9f91, 0xb97ef663, 0x722be16f, 0x35b720dc, 0xa4a43b96, 0xe052e7be
.word 0x49dd6eda, 0x68811b90, 0x7929a44e, 0x54eaacf3, 0x519295f8, 0xee055f70, 0x2a7deede, 0x6993e5b3
.word 0x64d38476, 0x7db0556a, 0x0e734c0c, 0xd4751471, 0xa10d2223, 0x7d267d1d, 0xfecc69a0, 0x484df352
.word 0xf0792eb7, 0xe4b5ff7d, 0x4b2c6b3d, 0xbf4a9f81, 0x9464d127, 0xc1db5246, 0xe2d125bd, 0x382b5399
.word 0x167a934f, 0xeb984da3, 0xbbfcf217, 0xb6313f9b, 0xc005e825, 0x3198eda6, 0x5ee85b1b, 0xe7ad93db
.word 0xde4023bd, 0xa63239ac, 0x0bae4312, 0xfa5fa01a, 0x72a76910, 0xaf07d7cb, 0xfaf05af9, 0xfd436b02
.word 0xbb4dcdd1, 0x33c91ca8, 0xa89b5057, 0xaef58476, 0x5e47455e, 0x43c08258, 0x99693e8a, 0x88a9e289
.word 0xfa231082, 0x674f70be, 0xe923b3ae, 0x3812da68, 0x295d3531, 0x22745c1f, 0xab66c979, 0x564d98d9
.word 0x7e2446c7, 0x340f99b1, 0xd03fdfe6, 0x615b8f2c, 0x7ab68816, 0xf96010dc, 0xccc1fa3b, 0xbc535b25
.word 0x6488de5a, 0x7ca0d2c3, 0x8f2365fb, 0xa25cf95c, 0x81ae44c0, 0xf6742388, 0xe742ada7, 0xb8317ece
.word 0x12f5a8ac, 0x69e1bece, 0x3b161882, 0xb7be74e9, 0x4151864d, 0x9b08742a, 0x761d824f, 0x20035725
.word 0x4e81f593, 0x489ba11c, 0xe6b617f0, 0x7424347b, 0x9755900d, 0x468a1722, 0x6e9275c3, 0xaee31701
.word 0xe7afadec, 0x9db55c80, 0x97319f7b, 0x4066a7f4, 0x4d0c5676, 0xbb1c77b9, 0xefcde449, 0x31c70386
.word 0xc5b00b8e, 0x5856b71b, 0x021cb0af, 0xf0d5b082, 0x231ad659, 0x1f3f248f, 0x83b62d92, 0x6b91dc1a
.word 0x031297e9, 0x9c6a09ec, 0x8b47441f, 0xd3e1b28b, 0x37b110c5, 0xdff0e3be, 0xa3c25191, 0xb7be17c7
.word 0x009bab7c, 0xb6d4ae44, 0xdb99a47f, 0xb30915c6, 0x1c14d40e, 0xb1554f03, 0xd71805d5, 0x8fac38ce
.word 0x1609c945, 0xdf7d316e, 0xdb8e170e, 0x807277be, 0xbfce7f5f, 0x5c2eba43, 0x05cc391f, 0x35094b36
.word 0x09a953ab, 0x65e2e852, 0x8815b6b6, 0xcede97f7, 0x26c6373a, 0x5bba6f80, 0x4842a9bd, 0xcea14090
.word 0x94660ee3, 0x30e025ff, 0x3e9d41dc, 0x770b1ad1, 0x5178d2a7, 0xfe1c89ec, 0xa0e29544, 0xa73aea3b
.word 0x16826c31, 0x89fbaa3b, 0xc095756d, 0xd4763dd5, 0xdc16963f, 0x555f7760, 0x16288ccc, 0xb2ef3642
.word 0x1104ed5b, 0xcc2d9f35, 0xeb3edf81, 0xb41a09aa, 0x77a3801a, 0x17a8a821, 0x9cafb202, 0x5ee366a8
.word 0xf5eb9c05, 0xcaeb6cda, 0x897ff7b2, 0xc86d8dbc, 0x78ac48a0, 0xa95fb0c2, 0x9a28cd26, 0xd61bdd4f
.word 0x2361f9a4, 0x34495883, 0xf7f11136, 0x4c02152f, 0x1b0e2caf, 0x8fb75e09, 0x720c2f3c, 0x94be3915
.word 0x5458a68d, 0xb48aed98, 0x02846059, 0x2a9435db, 0xea1cab3a, 0xefd2d7ea, 0x60609e09, 0xb68ab021
.word 0xacabc28d, 0x409e6a20, 0xad0ea4be, 0x3b93372a, 0x140c454c, 0x26a20dc2, 0x89706364, 0x5b380dac
.word 0x007ecd3e, 0xdab62f20, 0x454d1e84, 0x12087648, 0x25521fa9, 0xb0acd534, 0x4827d809, 0xf30e2c76
.word 0x80eb6a38, 0x50ff3dfe, 0x3c307097, 0x25407ca3, 0x84ae8d52, 0xa63677ca, 0x70d0034b, 0x54c1971f
.word 0x85206d3d, 0x889914f0, 0x022070a2, 0xc96819dc, 0x38f3833d, 0xbf90f914, 0x187c0f05, 0xf49df554
.word 0x7c7d4ffc, 0x030dbb45, 0x63275be3, 0xb6dd874c, 0x70634000, 0x1d5e7e13, 0x321d7240, 0xfab27df4
.word 0xb476dfab, 0xba28f97d, 0xff5e7ba6, 0xabdc2a00, 0x6ee08d88, 0x311dc6de, 0xd21b49e9, 0xae5313dc
.word 0xf1f0c477, 0xf15798f4, 0xc986181b, 0x7af003f9, 0xec525300, 0xa6bd929f, 0xb756ba9d, 0xd8738fb2
.word 0xa21f936b, 0x28629bdc, 0xf34b0a6e, 0xcf5e203a, 0x4f86ba1b, 0xad55db1e, 0x58266afb, 0x7792f955
.word 0x349a081c, 0xe24413a7, 0x4c17f9e0, 0x7a88ac0b, 0x3a0d5447, 0x331c92c8, 0x2f6fa00a, 0x88ef43ca
.word 0x626f2c26, 0xccd2132a, 0x75530431, 0x679204af, 0xfaef8422, 0x6b63b308, 0x9c93cd4a, 0x1a9f9eae
.word 0xe097fafe, 0x1cddd2cc, 0x9ae5fa96, 0xf333dd9f, 0x0753efdf, 0x6f3d0d00, 0x01f4fa35, 0x8f1b0658
.word 0xb1fd56cf, 0x918f11c5, 0x4caaeb85, 0x522ea9d6, 0xc0f6512d, 0x587060d0, 0x5e5c7412, 0x4a00efc8
.word 0x68275834, 0xce8edcb4, 0xcb55f954, 0xd87d76f9, 0x4a973941, 0x9bff3433, 0x9cb92cc3, 0xf5192a86
.word 0x5cbdf096, 0x2df5baaa, 0x9a3abb53, 0xbc77cb3a, 0xf3dd46bf, 0x1f8d8516, 0x7cd12645, 0x026fc7eb
.word 0x1424ae8c, 0x56ab7122, 0xe1a32bac, 0x21b37b94, 0xa79f4a76, 0x68ea4351, 0xe84b5d51, 0xecb4d723
.word 0xb422d0be, 0x5ed59b8c, 0x94a16355, 0x8429429c, 0x34c35be3, 0xf17719c6, 0x6db0cc6a, 0x0010d5a8
.word 0x2d1c95e4, 0xd9632be6, 0xe18d5b31, 0xed7be5d2, 0x174df5ba, 0x506c7ae0, 0x1562fb52, 0x750f69f6
.word 0x47851154, 0x575a3b47, 0x733f6356, 0xd3e32918, 0x54c9fb04, 0x573466a6, 0x1cb468e8, 0xdc06415d
.word 0x040139a9, 0x208a9356, 0x250b7b29, 0xa5b65e88, 0x5111845c, 0x9caddc3d, 0x1a0ae6ad, 0x125adf59
.word 0xef6a7951, 0xa46c11a1, 0x7199095c, 0x8755a608
.section .region_1,"aw",@progbits;
region_1:
.word 0x8cdfa228, 0x740c9ce3, 0x5caeffd4, 0x41969453, 0xd1c3ca72, 0x159c439c, 0xc1295031, 0x1749100a
.word 0xd278c02e, 0x952f74e5, 0x25b3f910, 0x61fdd03b, 0xdd429e97, 0xa7bbb8cb, 0x90b8e8f1, 0x92fcc7ae
.word 0xd5a5099e, 0xcedd985a, 0x4379e18f, 0x54e35fb9, 0x4994cb04, 0xc59e2910, 0x52da1846, 0x5aced001
.word 0x4006be4a, 0xbcc9aa9f, 0x92327825, 0x6997c658, 0x6adb2fd2, 0xc0b613a8, 0x958ce5d6, 0x52d5b1f8
.word 0x672e0608, 0x93f89679, 0xb9bca8bb, 0x653cb92e, 0x38939df5, 0x12f0c91c, 0x2761d15f, 0xfba499f8
.word 0x126dceda, 0x7b3a3e5c, 0xb30fe2c5, 0xaef15222, 0xbf039ef0, 0xedcf4dab, 0x094747a8, 0xc611f1b7
.word 0xb824ca0a, 0xfe5cedb7, 0x94513e93, 0xd6366183, 0x4a2937d5, 0xea4cb264, 0xe9c4dcb5, 0x5e448c3e
.word 0xb1d76871, 0x6ad75104, 0xfbffed48, 0x6fae3837, 0x6638d903, 0x5c75d3ec, 0xd129241f, 0xe15cc5eb
.word 0xb45c1072, 0x6bf138c1, 0x98a7c8e7, 0x71aed8c7, 0xd140d163, 0xb9be5969, 0xaae8d305, 0x4f3f9eb3
.word 0x46125715, 0x0aa20a26, 0x252d5887, 0xb51170c6, 0xdd88ad9a, 0xb05526bb, 0x9c31d4ab, 0xe936e0e8
.word 0x309ca39e, 0x2c746591, 0xe25b22c6, 0x277cfc55, 0x689fa63a, 0x2cf0a602, 0x2b0f1f0e, 0xe4e28c3e
.word 0x195b289c, 0x3f375e0e, 0xbf19fdf1, 0xa2dbb774, 0x5c1c0493, 0x759b12af, 0x808ec510, 0x38fdd59a
.word 0x9b281636, 0x2ee72b11, 0x1a1e1305, 0x3f305ead, 0x40ab0bcb, 0x4c391795, 0xf51aaf4b, 0xc191a797
.word 0xb72f5cd6, 0x64e28dea, 0x6ccbdaf0, 0x081e65d5, 0xb27a59cd, 0x01cfe4a8, 0x7efab91e, 0x2d4dd601
.word 0x42c27f66, 0xe2cc88ff, 0x1da0d746, 0xfa07be37, 0x02d9aeab, 0x35bf6c2c, 0x9c18a16f, 0x5c751d5c
.word 0xc2b8291e, 0xfe75fc53, 0x554a5d2c, 0xa37ac16d, 0xd77b4ef5, 0xf7b23664, 0x2892c590, 0x9483eb6f
.word 0xdca6e9be, 0x8789d013, 0xd224d84d, 0x463450d2, 0x6d1a6caf, 0x6822ed18, 0x9f5bc572, 0x7cfa211d
.word 0xcab15276, 0x99afd491, 0x8a3931e4, 0x44e83a1b, 0x7291efd8, 0x1c5a23dd, 0x8cc35d86, 0x0c296450
.word 0x5694676a, 0x5cc79a9c, 0xc1ae2527, 0xe599542d, 0x64d0d957, 0xdeaf967c, 0x043d86d2, 0xd606ad37
.word 0xc672ce50, 0x2250670d, 0x4f65cac9, 0xb2daaf40, 0x5c1326e1, 0x068e5ea5, 0xd0f6ccc2, 0x87c76cf6
.word 0x5b3695b1, 0x04dc851e, 0x0b846795, 0x3efc53d6, 0xb75b6481, 0x4d1bcdff, 0x1db284e2, 0xde963772
.word 0xcf46e334, 0x6bab363a, 0x25108c9b, 0x335f069a, 0x9e0d8262, 0xd2a4443c, 0xba114ca8, 0xbea94b16
.word 0x1504ed80, 0xb24583a6, 0x5e83cedd, 0xfec0f7f3, 0x6ee3f836, 0x0daea300, 0xb1d53f22, 0xe76380ec
.word 0x93a048be, 0x47d8fd4e, 0x961443ec, 0x5aea8df8, 0x57ff68a3, 0xa94ddb02, 0xe6ec306e, 0x325e4f70
.word 0x8ceb552e, 0xa098662d, 0x38b00d4d, 0xd064260d, 0x7ae9f352, 0xc26bbddc, 0x5a16ae50, 0xc1ff1774
.word 0x213bd630, 0xfbdf7bd7, 0x7c148063, 0xb691ef55, 0x387d32d3, 0xe388f603, 0xb07d3093, 0x023e0806
.word 0x57aa5fe9, 0xefe3ff99, 0x43ad4c23, 0x8a2f644f, 0x36b2324c, 0xc7a95701, 0xdc8ef9a7, 0xae5cd2c3
.word 0xa25e793b, 0x49ab15b0, 0xad4ec8a4, 0x4977e970, 0x78b76181, 0x10c119f3, 0xe59e67d6, 0xb14c50f0
.word 0x51381901, 0xbc27b1de, 0x980bddbc, 0x2d88455f, 0xeb0569dd, 0x1975c641, 0x10b7baf9, 0xceabb940
.word 0x9a21fe8f, 0x4caa3ae5, 0x968677ab, 0x6db93fc9, 0xe4060704, 0xd48a9338, 0x1c371fd3, 0x89dcdf52
.word 0xd4885717, 0x8871dd5e, 0x5d7150bf, 0x99ea4c37, 0x94709759, 0xa052ab77, 0x41be3cf3, 0xb93fb9ad
.word 0xa8e26ea3, 0x23bb946e, 0x33720bc8, 0x27a6f0c0, 0xcf876583, 0x33a65896, 0x64d4b6c1, 0x93191794
.word 0x4bbb93ac, 0x9722ebec, 0xda2c2ca1, 0x3ab5fd58, 0xc3ed8818, 0x7709202d, 0xb0abe408, 0x07a5e881
.word 0x9ceb8bad, 0x88b188d1, 0x7c349762, 0x0da15064, 0x2b3a6e63, 0x4100aed6, 0x0c8e7f3d, 0xf7f0d28e
.word 0x1e2102bd, 0x8fd7fe58, 0x091cb4f7, 0xa0b13dc6, 0xe10d6bb3, 0xcb87fd7d, 0x649ee4d8, 0x9a32f82a
.word 0x76fa3063, 0xd86bb64e, 0x6a9c6231, 0xce418a32, 0x3453e1e3, 0xed6a2b45, 0x3baba98e, 0xf37b0271
.word 0x46e39fc1, 0x8e734731, 0x29fa8dcf, 0xe1e6cca5, 0x83520373, 0xb09799c0, 0x621a76fb, 0xcb9b0360
.word 0x7e6d25e6, 0x73a16945, 0x684b78f5, 0xa24cacd7, 0xba97f8c6, 0x1e200066, 0xeea72b69, 0xdfe1683d
.word 0x42c830eb, 0x274c5aa8, 0xa6ee11f5, 0x01036ab9, 0x33024ab1, 0xded472b8, 0x4f155d3b, 0x5084c038
.word 0xaca56d4f, 0x936738e4, 0x370e090b, 0x8a919f20, 0x138a470a, 0xf971c903, 0xe4f108f1, 0x3a9d1b16
.word 0x219eed92, 0x857dbb80, 0x9271278a, 0x1581de7d, 0xbbda0979, 0x3eb4a1c1, 0x6f27561d, 0x8a30843f
.word 0x96f68ed2, 0x9f48ade1, 0x82eff93a, 0x5ca6e534, 0xbd7e4f92, 0x3802a021, 0xd80d7020, 0x172630c9
.word 0x4853ae4b, 0x72c93e57, 0xc311051e, 0xdb614541, 0xd492498e, 0x399b8933, 0xca6c5d40, 0x228387ed
.word 0xc0555b64, 0x5be61c8e, 0xa98a235e, 0x296c3873, 0x95421325, 0xee06ab0f, 0x49734850, 0xd9f0166c
.word 0x165c2fd8, 0x66b15670, 0x3ad9bcb5, 0xb07258ec, 0xe8f1a612, 0x9b372412, 0xea01dc0c, 0xec546b28
.word 0x0561eb8b, 0x9b06094c, 0xcf6fdb48, 0x70ac2a72, 0x9716ed3f, 0x516bec20, 0xa02b72c6, 0x9c0485df
.word 0x1e29d019, 0x1d992608, 0x4a4e64c1, 0xe0dcf17f, 0x8e5c11ca, 0xaa5aaea5, 0x199db860, 0x491382aa
.word 0x02f45084, 0x45427904, 0x030424e6, 0xe0f18402, 0x349f20dd, 0xe5e3d4e5, 0xd54c0b65, 0x11d6eaa4
.word 0xd8d4a71f, 0xf9da0f19, 0x6b57a0a3, 0xac306d41, 0xe4b074c4, 0x64f03148, 0x7b32adae, 0x8dc58c8b
.word 0x60322714, 0x027dbbe9, 0x2ef174d7, 0x710381ac, 0xedc0f9aa, 0x14e77bd7, 0x1e1798b7, 0xce18a4b6
.word 0x405210b6, 0xaec8254e, 0xc5659f83, 0x5f0ed3a3, 0xa3d5fc35, 0xd7e0f949, 0x32267b34, 0x1b7fb210
.word 0x90b469ed, 0xeb393362, 0xfc4c933e, 0x6c7b7043, 0x934a5a8e, 0x34caffa1, 0x1916db99, 0xb5ee9f0e
.word 0xf3a576d8, 0x47c0ff06, 0x268440f5, 0x70941ac6, 0x9004f93f, 0x2579b153, 0x39b480d9, 0x0439ce0c
.word 0x25e807f8, 0x59bd5dfc, 0x78e0549e, 0x8d06c2ac, 0x3c606aa2, 0xe3193955, 0xcb7e850b, 0x7635d810
.word 0xb5176612, 0x0e9b6684, 0x3c9af11f, 0xa7c2ae41, 0x51ee8a69, 0xd0af27e2, 0x7f767824, 0x077c6029
.word 0x30836761, 0xcc0c9727, 0x51d34607, 0x06d8a2c1, 0x8eecbd19, 0xceda1b74, 0xf16f09fa, 0x3ea1a274
.word 0x3cab2be5, 0x60f4317f, 0xa20b9202, 0xd40c8162, 0x38153e4b, 0xb80cfd1f, 0x7422a396, 0x3df701f5
.word 0x0f0dbc59, 0xf3689b96, 0x227fabbc, 0x7840d2b9, 0xa01ac7a2, 0x0abe3e5e, 0x76d31590, 0x71f74495
.word 0x83a0b049, 0x60a0c90f, 0x4f9bb860, 0x02c6f29d, 0x672e8f5b, 0xb2a4de4a, 0x6d56e231, 0xe87fdb1b
.word 0x6bdc340a, 0x463a17ab, 0xf51d4d66, 0xa4b96309, 0x66eabbb9, 0xacb4fe68, 0x6a71cd13, 0x8061fd05
.word 0x682a8ff6, 0x7a55b992, 0x7c92a4b4, 0x9da6b1f5, 0x3ad59273, 0xbf2e2d9b, 0xcb826978, 0xbaaf2ed5
.word 0x62085af1, 0xed571f46, 0x493afb22, 0xd6d346dc, 0xda591357, 0x06e771eb, 0x9381adec, 0x91d757dc
.word 0x277fe8a5, 0x6f48a01d, 0x51a6ccb6, 0x98952665
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
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
                  add x24, x8, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x5, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x5, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x5, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x5, x29, ecall_handler
                  li x29, 0x1
                  beq x5, x29, instr_fault_handler
                  li x29, 0x5
                  beq x5, x29, load_fault_handler
                  li x29, 0x7
                  beq x5, x29, store_fault_handler
                  li x29, 0xc
                  beq x5, x29, pt_fault_handler
                  li x29, 0xd
                  beq x5, x29, pt_fault_handler
                  li x29, 0xf
                  beq x5, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x8, x24, zero
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
                  add x8, x24, zero
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
                  add x8, x24, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x8, x24, zero
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
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x8, x24, zero
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
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x8, x24, zero
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
