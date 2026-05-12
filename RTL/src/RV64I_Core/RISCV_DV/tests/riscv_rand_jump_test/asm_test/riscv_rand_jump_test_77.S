.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xfc2a5ada
                  li x1, 0x80000000
                  li x2, 0xf19e80a1
                  li x3, 0x80000000
                  li x4, 0xc
                  li x5, 0x0
                  li x6, 0x6db26e8a
                  li x7, 0xbbb1e57c
                  li x8, 0x0
                  li x10, 0x80000000
                  li x11, 0x5
                  li x12, 0xf407b673
                  li x13, 0xff7775f9
                  li x14, 0xf4deede6
                  li x15, 0x670476b3
                  li x16, 0x80000000
                  li x17, 0xd
                  li x18, 0x711c2fa9
                  li x19, 0xc
                  li x20, 0xf978ca0b
                  li x21, 0x427265f9
                  li x22, 0xc
                  li x23, 0x4
                  li x24, 0x80000000
                  li x25, 0xfde24ba8
                  li x26, 0x80000000
                  li x27, 0xf167a9b3
                  li x28, 0xf21e4b3b
                  li x29, 0xf
                  li x30, 0x0
                  la x9, user_stack_end
main:             la           sp, region_1+1452 #start riscv_load_store_rand_instr_stream_2
                  lbu          zero, -1376(sp)
                  addi         zero, s6, 1174
                  srli         a0, a0, 14
                  lbu          tp, 543(sp)
                  lbu          s8, -1135(sp)
                  sb           s1, -492(sp)
                  lui          t2, 781074
                  lb           t2, -239(sp)
                  lhu          t1, -1024(sp)
                  slti         s2, a5, 953
                  lbu          a4, -1435(sp)
                  lb           t5, 106(sp)
                  lw           a0, -296(sp)
                  sh           t2, 516(sp)
                  lhu          t3, -652(sp)
                  sltiu        a6, a4, 707
                  sll          a7, s9, a3
                  and          s8, a0, s4
                  sb           a7, -596(sp)
                  slt          tp, s8, s6
                  lb           t4, -1450(sp)
                  slti         s7, t3, -59
                  sh           s8, -594(sp)
                  nop
                  sub          s2, s7, t2
                  sb           a2, -610(sp)
                  sltiu        a0, s9, -729
                  auipc        s0, 537150
                  sltu         tp, s5, t2
                  srli         s9, t5, 28
                  sra          zero, s6, a7
                  lb           t5, -1343(sp)
                  lbu          t2, -359(sp)
                  lui          t3, 387146
                  slt          s0, a7, t1
                  lh           zero, 392(sp)
                  sll          s9, s4, s11
                  lb           t4, -325(sp)
                  xor          s5, s6, t5
                  auipc        a4, 519491
                  lhu          s10, 422(sp)
                  lb           t5, 107(sp)
                  sb           s3, -117(sp)
                  sh           t6, 114(sp)
                  andi         gp, a2, 1819
                  lbu          s5, -664(sp)
                  ori          s2, s3, 631
                  lh           a2, -242(sp)
                  auipc        s8, 278653
                  sltu         s10, a2, a7
                  nop
                  lh           tp, -470(sp)
                  lw           a4, -628(sp)
                  sb           sp, -1007(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+1902 #start riscv_load_store_rand_instr_stream_3
                  sw           t3, -1118(a7)
                  add          sp, tp, tp
                  sb           a3, -1728(a7)
                  lbu          s7, -382(a7)
                  sb           ra, -1872(a7)
                  and          s10, ra, t5
                  sb           tp, -645(a7)
                  lh           tp, -310(a7)
                  lb           a2, -969(a7)
                  sw           s9, -1418(a7)
                  sra          a1, a7, t1
                  lui          a5, 311099
                  slli         ra, ra, 2
                  lbu          s0, -649(a7)
                  and          t3, a2, a5
                  sb           s5, -168(a7)
                  sb           a3, -1024(a7)
                  lb           t2, -1114(a7)
                  srl          gp, s9, a0
                  sll          a0, s7, t2
                  xor          s9, t2, a1
                  lui          s4, 1024364
                  sltu         a3, t0, t4
                  lh           a3, -698(a7)
                  lbu          s6, -1595(a7)
                  slti         s2, a3, 1765
                  lbu          s3, -1844(a7)
                  srl          sp, t6, s4
                  lbu          s4, -1833(a7)
                  sub          t3, a5, s6
                  lh           s9, -600(a7)
                  lh           s5, -1060(a7)
                  lb           a1, -1501(a7)
                  ori          s4, sp, 1052
                  sb           a4, -1566(a7)
                  auipc        s5, 122078
                  sh           t1, -42(a7)
                  and          t1, sp, a5
                  auipc        ra, 323531
                  sw           t3, -1230(a7)
                  sra          s5, s9, s11
                  srai         a5, s1, 15
                  lhu          a6, -1420(a7) #end riscv_load_store_rand_instr_stream_3
                  la           a5, region_1+1845 #start riscv_load_store_rand_instr_stream_1
                  lb           a1, -1099(a5)
                  slt          t3, s6, a3
                  andi         zero, a2, -1099
                  lbu          s0, -826(a5)
                  sb           s2, -1200(a5)
                  or           t1, a0, a7
                  lb           s0, -492(a5)
                  slli         tp, t3, 24
                  ori          gp, s0, -230
                  srai         t4, s4, 13
                  sltiu        s10, t3, -1766
                  lbu          t3, -475(a5)
                  add          gp, s7, s6
                  sb           t2, -847(a5)
                  lbu          a7, -1554(a5)
                  sh           a4, 127(a5)
                  lbu          t5, -1766(a5)
                  lbu          a7, -94(a5)
                  lh           ra, -919(a5)
                  lbu          s11, -356(a5)
                  and          s11, a6, t0
                  sltu         t1, t4, a6
                  andi         s7, gp, 1910
                  sltu         t5, s8, s5
                  sltiu        s6, a5, 332
                  sltu         zero, gp, t5
                  add          a3, s3, a1
                  srli         s6, s0, 26
                  add          s6, sp, a0
                  lui          s4, 887230
                  lbu          a1, -295(a5)
                  lh           s0, -1589(a5)
                  or           tp, s1, s10
                  sub          a0, a2, a4
                  lbu          a3, 140(a5) #end riscv_load_store_rand_instr_stream_1
                  and          a0, a2, s6
                  add          t2, zero, sp
                  bge          a7, s7, 9f
                  sub          a5, s6, t0
                  bltu         sp, s11, 13f
                  srl          a5, zero, t2
                  sltiu        s2, s7, -949
                  sra          a5, s2, t2
                  or           t2, t5, gp
9:                lui          s7, 287416
                  slli         zero, a6, 31
                  add          t2, s5, s9
                  slti         a3, s10, -373
13:               ori          s11, t0, 756
                  bne          s1, tp, 32f
                  sra          s7, zero, t0
                  blt          s9, s4, 26f
                  auipc        s2, 38369
                  xori         s2, tp, -146
                  nop
                  xori         a4, sp, 1754
                  sltu         s5, s7, s6
                  sll          a6, a4, a6
                  srli         t3, a7, 20
                  slti         s6, a1, 1436
                  blt          t4, t1, 38f
26:               sub          a5, s1, t3
                  lui          sp, 664458
                  bne          a3, s6, 41f
                  slli         a7, a6, 11
                  slti         s2, s2, -348
                  bgeu         gp, s4, 42f
32:               ori          zero, t0, -909
                  srai         a2, t0, 31
                  srli         sp, a2, 17
                  ori          s0, t5, 1535
                  and          s2, a0, zero
                  sll          t4, s7, a7
38:               sltu         t2, a2, s10
                  auipc        ra, 428540
                  slt          s6, a6, gp
41:               sll          a2, a3, s10
42:               slt          s7, a0, t3
                  and          tp, sp, s6
                  slli         sp, a4, 25
                  sll          s0, s2, s8
                  slti         gp, t5, 1110
                  slti         a5, zero, 1080
                  srli         a2, gp, 31
                  bgeu         s5, ra, 54f
                  auipc        s2, 897164
                  auipc        a7, 409805
                  sltu         a7, s7, t2
                  sltu         tp, t3, a7
54:               srl          a0, s10, a5
                  srli         gp, s4, 6
                  lui          t5, 946259
                  bne          a3, s8, 63f
                  bgeu         a4, t5, 78f
                  srl          t2, s4, s2
                  sltiu        a7, a5, -368
                  bgeu         t4, t2, 73f
                  slt          sp, t6, sp
63:               srl          zero, s3, s10
                  sll          a4, t1, a2
                  slt          s11, tp, a0
                  and          s7, s7, a5
                  slli         s3, s7, 21
                  slti         zero, s9, -1488
                  add          a1, s11, a0
                  sltu         s6, a0, t5
                  auipc        a0, 766055
                  add          t2, a1, a1
73:               srai         s10, t2, 19
                  add          s5, t2, s6
                  andi         s7, s6, 1061
                  beq          a2, s11, 80f
                  or           tp, zero, a7
78:               srl          t2, zero, t0
                  sra          zero, s7, a6
80:               bge          zero, a7, 95f
                  xor          ra, s0, t3
                  ori          a4, s0, 1818
                  xor          ra, tp, s2
                  bge          s11, a6, 86f
                  ori          t5, t0, -1003
86:               addi         t5, t3, 1262
                  andi         s8, s6, 765
                  addi         s5, t5, -994
                  blt          t3, t0, 92f
                  slt          t2, zero, t0
                  srli         s0, s8, 18
92:               blt          a7, s6, 100f
                  la           t4, sub_1
                  lui          gp, 850845
                  sll          sp, t6, a1
                  addi         t4, t4, -318
                  andi         t5, a0, -944
                  blt          t0, a6, main_j1 #branch to jump instr
                  sub          s11, a4, s4
                  ori          t1, a1, -1953
main_j1:          jalr         s7, t4, 318 #jump main -> sub_1
                  addi         a6, s7, -894
                  slt          zero, t0, s0
95:               or           a6, zero, s8
                  bgeu         zero, a7, 110f
                  ori          s7, s3, -1603
                  and          t1, a2, ra
                  bgeu         a2, s11, 115f
100:              sltu         a7, t0, t6
                  nop
                  bltu         t0, a0, 114f
                  sra          s0, s8, s5
                  sltu         a1, s7, s10
                  add          t5, t0, a5
                  andi         t3, a7, 1456
                  sub          a1, ra, ra
                  andi         a1, s11, 1981
                  bgeu         a3, t6, 118f
110:              andi         t1, t4, -1894
                  slti         zero, s5, -1735
                  sll          sp, t5, gp
                  and          a3, s0, s8
114:              andi         a1, a2, 364
115:              xori         s0, t3, 1356
                  beq          t3, a3, 134f
                  or           t4, t3, tp
118:              sltu         s11, t2, t4
                  sltiu        t2, tp, -739
                  and          a3, zero, a1
                  xori         s7, s3, -1485
                  lui          a1, 494005
                  srl          t5, a6, a6
                  ori          s2, a6, -1873
                  xori         t3, t5, 413
                  srli         t5, s10, 10
                  nop
                  bltu         t2, a6, 132f
                  slt          s8, ra, a7
                  slti         a4, a5, 221
                  slt          a0, s7, a1
132:              ori          a5, t5, 741
                  slti         ra, s6, -1905
134:              slli         s6, s10, 14
                  nop
                  sll          ra, s1, s2
                  beq          s10, tp, 155f
                  blt          t3, a7, 141f
                  srai         t4, s9, 9
                  nop
141:              blt          t4, s7, 142f
142:              srli         a1, sp, 15
                  addi         s4, a6, 1912
                  bgeu         a7, sp, 148f
                  sub          s10, t4, a2
                  sll          a3, a2, s9
                  srli         tp, t0, 12
148:              sltiu        sp, s4, -694
                  bgeu         t3, s10, 168f
                  ori          t2, t3, -1060
                  srl          t4, t4, a5
                  xori         gp, s11, 1379
                  auipc        a5, 680344
                  addi         s5, a7, -1796
155:              sub          s8, tp, s2
                  or           t4, a1, s2
                  sll          s3, a2, zero
                  blt          s0, tp, 175f
                  slt          tp, s0, t3
                  bltu         s9, t6, 166f
                  beq          a7, s1, 164f
                  bgeu         a3, s9, 176f
                  srli         tp, s0, 10
164:              slt          a7, tp, t6
                  beq          gp, a3, 173f
166:              beq          s1, t2, 169f
                  srli         s0, t5, 0
168:              andi         s0, s2, -1562
169:              andi         s11, t5, 473
                  sltiu        s8, a0, 360
                  sltu         s11, t4, a5
                  srai         a2, a5, 14
173:              slt          sp, a4, t3
                  srai         s5, tp, 27
175:              bne          sp, t0, 181f
176:              slt          s9, a6, s9
                  srl          s5, s10, a0
                  xori         s11, a5, -1145
                  lui          s9, 493584
                  andi         s11, s5, -287
181:              slt          zero, s9, a3
                  beq          a4, s3, 184f
                  add          s4, a0, zero
184:              add          a6, s0, a6
                  xori         t3, s6, 868
                  bne          s11, sp, 190f
                  xor          s9, t4, a1
                  beq          sp, s9, 195f
                  slti         t5, t1, -788
190:              sll          tp, a1, s3
                  beq          s6, s6, 195f
                  slti         t5, t5, -1546
                  sub          a5, s11, s9
                  and          s5, s11, sp
195:              sra          a5, s5, t4
                  slti         s6, t3, -463
                  sltu         s8, a4, t5
                  xor          tp, a0, a2
                  sltu         t3, t2, s5
                  ori          s4, a3, 956
                  blt          s6, ra, 220f
                  andi         a1, a7, -931
                  srl          t1, t3, t2
                  beq          s5, t6, 215f
                  bgeu         a3, a6, 206f
206:              bltu         t0, a1, 224f
                  ori          s3, a3, 1703
                  nop
                  or           t5, t1, s9
                  slli         s10, a2, 18
                  slt          a1, tp, a6
                  sub          a0, s4, s1
                  srli         sp, tp, 9
                  and          s4, s4, t1
215:              xor          a6, t3, t4
                  lui          ra, 1007062
                  srli         s7, a6, 10
                  bltu         s6, a1, 227f
                  beq          s6, t4, 222f
220:              and          s4, a5, sp
                  slti         t5, s3, 602
222:              add          t4, t6, s2
                  sub          s10, a2, s9
224:              addi         t2, a7, -798
                  slt          a6, s3, a3
                  srli         s2, a1, 19
227:              slt          t1, zero, a3
                  srl          s7, s11, s8
                  sltiu        ra, t0, -633
                  sra          t2, a5, t1
                  andi         s9, s5, -321
                  sltu         s2, tp, s6
                  sll          s9, ra, s3
                  sltu         a4, s5, a1
                  sltu         a0, s0, t5
                  bne          t5, s4, 249f
                  sub          s11, s11, a1
                  add          zero, a6, t2
                  addi         t2, a2, 193
                  sll          s2, a1, s10
                  blt          gp, s7, 257f
                  xori         tp, s2, -750
                  slti         a7, a4, -1234
                  add          a1, s6, t5
                  and          s4, a3, a0
                  andi         sp, a3, 985
                  or           s11, a1, s5
                  sltu         s10, s3, a5
249:              sltiu        t4, t0, -1542
                  srai         a3, t4, 20
                  auipc        gp, 641676
                  bge          s8, t3, 264f
                  nop
                  xori         t4, t6, 549
                  sra          s2, a5, a7
                  andi         a5, a6, 1551
257:              sub          a0, a4, a0
                  addi         s5, s8, 1348
                  bltu         sp, t1, 271f
                  sub          s7, t4, s1
                  bltu         s0, a2, 281f
                  sub          a7, a7, t3
                  srli         a3, t4, 9
264:              nop
                  xor          t4, a2, s7
                  sll          t5, a6, t5
                  sltiu        s8, s3, 682
                  sltu         a0, t6, a7
                  slti         s5, s6, 119
                  xor          s5, s8, ra
271:              bgeu         s5, s7, 280f
                  slt          ra, s5, zero
                  sltiu        a5, zero, -1540
                  xor          s2, t3, t3
                  slti         zero, s3, 701
                  sltu         s6, sp, s5
                  bne          a2, s5, 292f
                  srl          s9, s3, s4
                  add          t2, a1, s11
280:              ori          s0, gp, 983
281:              sll          a2, tp, sp
                  lui          tp, 218619
                  sra          s5, s9, t6
                  xor          s8, a1, a7
                  sub          t2, t3, a7
                  bge          s1, a2, 303f
                  sub          a5, s8, a2
                  sub          ra, s2, a2
                  sll          t1, s3, s0
                  sll          sp, t5, s4
                  andi         gp, sp, 677
292:              ori          t4, a0, -1808
                  and          s11, t5, tp
                  nop
                  xori         gp, t3, 1513
                  add          s7, a3, a2
                  ori          s9, s4, -1927
                  slt          s10, s8, t5
                  sra          s0, a7, t1
                  auipc        t4, 472502
                  slti         t3, s5, -1646
                  sltu         s10, gp, sp
303:              beq          t2, s9, 321f
                  sltiu        sp, a6, -224
                  sll          s11, s5, a0
                  addi         s3, s5, 282
                  xor          zero, t6, a5
                  lui          s5, 714039
                  nop
                  beq          ra, s6, 328f
                  bge          a6, s2, 317f
                  sltiu        a2, s5, -264
                  sra          s9, t6, s10
                  sra          a0, a3, a4
                  beq          s0, a5, 328f
                  blt          t1, s2, 320f
317:              blt          s7, tp, 327f
                  ori          s7, t5, 769
                  bltu         a3, a2, 324f
320:              srli         t5, s4, 25
321:              bne          s7, gp, 324f
                  auipc        a1, 232576
                  sltu         a4, t3, t1
324:              nop
                  slli         s3, ra, 30
                  andi         gp, s10, -1575
327:              sltu         s11, gp, t4
328:              beq          t5, a3, 331f
                  lui          s6, 983065
                  beq          s7, s10, 333f
331:              nop
                  blt          s4, t4, 333f
333:              sll          gp, s0, a0
                  sltu         sp, t1, s9
                  beq          s3, a4, 346f
                  and          a6, s2, a1
                  sltu         a2, t0, a1
                  sra          t1, t1, gp
                  slti         a4, a7, 1691
                  or           a6, a5, a7
                  addi         tp, t1, -1106
                  bltu         ra, a4, 350f
                  srl          t1, a2, s9
                  bne          ra, zero, 348f
                  xor          s5, a7, t1
346:              bne          s11, s10, 351f
                  xor          s3, a2, t6
348:              and          s6, s4, sp
                  srai         a0, a2, 14
350:              bgeu         s4, ra, 354f
351:              sltiu        t3, a2, 1128
                  blt          a0, a4, 354f
                  sub          t5, tp, s4
354:              srai         s9, s10, 0
                  andi         s0, a4, -503
                  auipc        s5, 349315
                  xor          tp, a5, sp
                  xori         s2, tp, 1219
                  bgeu         a2, tp, 378f
                  and          a3, zero, s2
                  or           s10, s2, s0
                  sub          zero, s6, t1
                  srli         s11, s3, 19
                  and          t1, t2, a6
                  nop
                  xori         t4, t6, 1621
                  slli         a1, s2, 12
                  slli         tp, t0, 2
                  sltu         s8, t4, a0
                  auipc        a5, 469140
                  srli         t3, ra, 15
                  slt          t5, s0, t0
                  srl          tp, s7, t2
                  and          t2, s1, s8
                  slti         gp, s2, 23
                  sll          s5, a0, a7
                  ori          s7, tp, -190
378:              bge          a7, gp, 382f
                  beq          a6, s8, 392f
                  nop
                  blt          ra, s8, 399f
382:              srai         s6, a3, 10
                  xori         s4, t5, 1938
                  slli         t5, a7, 2
                  andi         a6, s8, 1529
                  bltu         s10, tp, 400f
                  sra          s11, a5, s6
                  bltu         zero, s4, 397f
                  sltiu        s11, a5, 247
                  add          t2, s6, s4
                  slti         ra, s9, -223
392:              xori         s10, t6, 1648
                  srai         s7, a3, 14
                  srli         a6, zero, 11
                  lui          tp, 209470
                  bge          a2, a5, 412f
397:              slti         s10, a2, 2038
                  slli         a6, a4, 5
399:              add          t4, s11, t0
400:              blt          t2, s2, 409f
                  bgeu         s8, s9, 413f
                  bne          t2, a5, 414f
                  beq          s8, zero, 421f
                  sltiu        a5, s11, -1624
                  sub          a1, s5, a3
                  xori         a4, a4, -1566
                  slt          s0, a7, a4
                  sub          s10, s10, s1
409:              ori          s10, s5, -2035
                  bltu         t1, a6, 425f
                  auipc        a3, 348967
412:              lui          a4, 923214
413:              sltu         s11, ra, gp
414:              xori         a1, zero, -1120
                  sra          s10, s2, t0
                  xori         t5, s7, 1712
                  auipc        s6, 802448
                  bge          t0, s3, 435f
                  or           sp, s3, s11
                  sra          a0, a4, a0
421:              blt          a1, s11, 431f
                  slt          a3, a0, t2
                  bne          s10, s10, 430f
                  sra          a3, t0, s6
425:              or           s6, a0, tp
                  blt          a1, s3, 429f
                  sll          a6, t2, s4
                  and          a1, s8, t6
429:              nop
430:              srl          a0, s10, s6
                  la           s6, region_1+1443 #start riscv_load_store_rand_instr_stream_0
                  lh           t3, 15(s6)
                  sltiu        s11, a6, -1856
                  andi         s7, s5, 445
                  sb           tp, 10(s6)
                  slti         s2, t5, 1975
                  sb           ra, 10(s6)
                  srl          t1, s11, t4
                  lhu          s0, -11(s6)
                  lbu          ra, -12(s6)
                  sltu         t2, s5, s3
                  lhu          gp, 7(s6)
                  slt          s7, tp, a7
                  sb           s2, 11(s6)
                  addi         t3, t1, 948
                  lhu          a6, 15(s6)
                  lb           s11, 2(s6)
                  or           t4, s8, s1
                  sb           s11, -15(s6)
                  lbu          s5, -6(s6)
                  addi         s8, a5, -242
                  lb           s2, 12(s6)
                  xori         tp, s4, 1538
                  sll          a2, s11, t2
                  srai         s4, s4, 8
                  lbu          t4, 16(s6)
                  ori          a6, s3, -1765
                  sb           t0, -5(s6) #end riscv_load_store_rand_instr_stream_0
431:              slti         a5, sp, -1616
                  bne          s2, s5, 445f
                  nop
                  xori         s10, s3, 1365
435:              and          s5, t1, gp
                  ori          tp, s0, 1118
                  sltiu        tp, a7, 1988
                  srli         s7, a1, 4
                  beq          s10, t1, 445f
                  srli         a2, ra, 23
                  slt          gp, s11, t3
                  blt          a1, gp, 448f
                  srl          s7, s11, s9
                  slti         ra, t4, -1826
445:              lui          s8, 511676
                  lui          ra, 681487
                  auipc        zero, 96028
448:              slt          s9, s3, s4
                  slli         s7, a4, 8
                  sltu         a0, a7, ra
                  bltu         s3, t0, 469f
                  lui          s7, 377597
                  andi         s3, gp, 427
                  srai         s7, s10, 5
                  andi         a4, s9, 519
                  sub          a5, s8, t6
                  ori          gp, s10, 985
                  slti         s2, a0, -506
                  bge          s3, s4, 479f
                  add          s11, a2, s5
                  blt          a5, zero, 462f
462:              srli         a5, tp, 31
                  addi         t1, tp, -452
                  addi         s11, tp, -1523
                  slt          s11, s8, t0
                  or           s6, s6, t0
                  bltu         gp, a6, 473f
                  bltu         t1, t0, 472f
469:              bne          t5, s3, 485f
                  ori          a6, a6, 95
                  sltu         a1, zero, a0
472:              slti         s7, zero, -1004
473:              xori         t4, s1, 2010
                  auipc        s9, 632821
                  srli         sp, t3, 4
                  ori          t2, a4, 1074
                  bne          zero, gp, 491f
                  ori          s6, a4, -771
479:              bgeu         t1, t4, 489f
                  ori          s7, t0, -1478
                  sra          t3, s7, s1
                  sltiu        ra, s3, 1643
                  or           gp, zero, a5
                  add          s11, a3, t3
485:              sltu         s9, t2, s11
                  sltiu        a2, a6, -754
                  sll          a4, s2, s0
                  addi         s8, s7, 628
489:              andi         s8, s0, -979
                  add          s9, t0, a3
491:              sltu         a7, s4, s8
                  xori         a6, tp, -911
                  or           s0, t4, t5
                  sltu         s10, s0, s0
                  beq          t6, s11, 497f
                  srli         a2, s11, 1
497:              sll          s0, t1, s0
                  bge          a7, a1, 502f
                  bgeu         s4, t2, 518f
                  slt          a7, s1, s8
                  xori         s4, s4, 1678
502:              bgeu         sp, s5, 519f
                  srai         s7, a3, 18
                  sltiu        t1, a1, -1437
                  auipc        t5, 733084
                  lui          s4, 854197
                  and          t2, s5, t1
                  bge          t1, s0, 528f
                  sll          t1, zero, a1
                  srai         t3, s0, 28
                  sll          a7, s6, s8
                  addi         a3, s8, -1182
                  slti         t2, a5, -437
                  xori         s5, s7, -440
                  or           s4, s0, a4
                  lui          s2, 407064
                  blt          a7, s0, 520f
518:              blt          t4, a7, 526f
519:              bge          s8, s11, 537f
520:              sll          tp, t2, s8
                  srai         a3, zero, 9
                  slt          s2, a2, s2
                  auipc        t2, 841115
                  nop
                  slli         a4, s9, 7
526:              xori         sp, a6, -383
                  sltiu        t3, zero, -1320
528:              andi         s4, s0, 1650
                  auipc        a0, 30392
                  auipc        a3, 628518
                  nop
                  xori         s8, zero, -458
                  nop
                  srli         zero, a3, 2
                  bltu         ra, sp, 541f
                  andi         s5, s7, -347
537:              srl          a2, a4, s8
                  ori          sp, s1, -1260
                  srl          s11, s10, t0
                  slt          t4, t1, s11
541:              sub          gp, s5, gp
                  ori          t4, a5, 129
                  lui          t2, 916868
                  sltu         a5, s8, a2
                  xor          s7, ra, s3
                  or           zero, s4, t4
                  or           s7, ra, s3
                  slt          zero, gp, t3
                  nop
                  sll          zero, t1, t4
                  sra          s6, s11, a2
                  nop
                  xor          tp, s11, s10
                  slt          s10, a2, a0
                  xori         tp, s0, 1796
                  bge          s6, a4, 574f
                  andi         s5, t5, -1701
                  sll          t1, gp, s6
                  bgeu         s9, s8, 568f
                  bge          t2, s2, 569f
                  and          s3, s11, t4
                  xor          s5, s9, s4
                  slli         s8, t6, 23
                  xori         a0, s0, 267
                  lui          s9, 671632
                  lui          t3, 250884
                  bne          s8, a7, 574f
568:              auipc        s2, 384627
569:              xor          a6, s9, ra
                  sll          a5, t2, t4
                  xori         t1, sp, 1576
                  andi         gp, zero, 1651
                  add          s4, s2, t2
574:              slli         t1, t1, 16
                  bgeu         t1, t2, 587f
                  slli         ra, a6, 21
                  sra          a0, a5, a6
                  and          s3, s7, t0
                  beq          ra, t1, 592f
                  beq          gp, a4, 595f
                  sra          s0, s4, t5
                  slli         t5, s10, 16
                  blt          a7, t2, 596f
                  addi         s2, a0, -1770
                  auipc        a0, 236251
                  bge          s4, a0, 597f
587:              sltu         a6, t5, t3
                  lui          t3, 416023
                  and          a3, s4, tp
                  srai         sp, t5, 29
                  sltu         s5, a3, zero
592:              nop
                  sltiu        t4, t1, -1428
                  bge          a4, a4, 600f
595:              srl          s5, a6, a7
596:              blt          s9, s4, 599f
597:              slli         zero, a0, 8
                  sub          s9, zero, a3
599:              auipc        tp, 28908
600:              sra          a6, s11, t1
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            sub          zero, t5, tp
                  add          zero, ra, a1
                  srl          a2, s6, a2
                  addi         s1, s1, -48
                  sw           s7, 4(s1)
                  slli         t2, ra, 27
                  la           s9, region_0+1668 #start riscv_load_store_rand_instr_stream_2
                  srai         sp, s8, 0
                  sltiu        ra, t4, 1350
                  addi         ra, a3, 1581
                  sltiu        a7, s1, -595
                  and          sp, a0, a3
                  sb           s2, -3(s9)
                  sub          s8, s0, s9
                  lh           a4, -2(s9)
                  lb           sp, -16(s9)
                  srl          s8, s11, s6
                  auipc        s6, 922611
                  sra          t2, sp, sp
                  sltu         a1, tp, s3
                  lh           t5, 0(s9)
                  sh           gp, 2(s9)
                  addi         t1, zero, -396
                  sub          zero, t0, t5
                  andi         a4, t5, 15
                  lbu          s5, -1(s9)
                  nop
                  lb           s5, 8(s9)
                  sra          a7, t0, s10
                  sb           ra, -13(s9)
                  lbu          s10, 12(s9)
                  lh           zero, -8(s9)
                  andi         a0, a5, 133
                  sb           t0, 15(s9)
                  xor          s0, t1, t5
                  slli         s3, t1, 23
                  srai         a6, s0, 11
                  lw           t4, -8(s9)
                  nop
                  sb           a2, -7(s9)
                  lb           t5, 7(s9) #end riscv_load_store_rand_instr_stream_2
                  la           t4, region_0+1550 #start riscv_load_store_rand_instr_stream_0
                  xor          t2, t0, s3
                  lbu          a7, -55(t4)
                  srli         gp, gp, 16
                  lh           a4, -50(t4)
                  lh           s4, 4(t4)
                  sltu         s11, a7, gp
                  srai         t2, a4, 10
                  sw           s8, 54(t4)
                  sw           a7, -62(t4)
                  lbu          s0, 44(t4)
                  lb           a7, 39(t4)
                  xori         s7, a6, 1345
                  lb           gp, -57(t4)
                  addi         a1, gp, 839
                  sh           t2, -44(t4)
                  srli         t3, gp, 31
                  sb           s8, -59(t4)
                  xori         s0, t5, -485
                  lb           s9, 8(t4)
                  srl          ra, a2, s4
                  sub          tp, s2, s11
                  sh           ra, -64(t4)
                  lbu          ra, 25(t4)
                  srli         t5, s0, 2
                  lbu          t3, 18(t4)
                  lhu          s11, -10(t4)
                  lh           sp, 58(t4)
                  lbu          zero, -36(t4)
                  sll          tp, t1, s9
                  ori          sp, t2, -1165
                  srai         a1, a6, 29
                  lui          s9, 481632
                  lbu          zero, -29(t4)
                  lb           a0, -22(t4)
                  sb           s10, -41(t4)
                  or           s5, s7, s6
                  sltu         sp, s9, t4
                  srai         a5, a2, 17
                  sltiu        gp, s6, 1068
                  add          t3, t2, s1
                  sb           zero, -51(t4)
                  sh           a0, 54(t4)
                  lw           a4, -10(t4)
                  slli         t2, a2, 25
                  lh           t5, 2(t4)
                  sh           s5, 52(t4)
                  srai         gp, t6, 20
                  sltiu        s10, a6, 606
                  srai         a7, s11, 12
                  lbu          a3, -56(t4)
                  add          a1, t6, s9
                  sw           t3, -54(t4)
                  lbu          a0, 16(t4)
                  slt          a2, a6, t1
                  addi         a2, s6, -1473
                  lb           s0, -39(t4)
                  lbu          s11, -49(t4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1514 #start riscv_load_store_rand_instr_stream_1
                  sra          a1, ra, s0
                  and          t2, a3, a1
                  ori          ra, ra, -1581
                  slli         ra, t5, 10
                  lw           t5, 6(sp)
                  sltiu        gp, a1, -1079
                  sll          s10, s9, t3
                  sb           s2, -49(sp)
                  srai         a7, t5, 14
                  xor          a0, s6, a3
                  lw           t3, -6(sp)
                  slli         s2, s10, 0
                  sb           gp, 53(sp)
                  addi         a3, t1, -776
                  lb           t2, -6(sp)
                  xori         a1, zero, -196
                  lui          zero, 149540
                  lbu          a7, 31(sp)
                  srli         a7, t4, 28
                  sll          a5, gp, t0
                  lbu          s0, 19(sp)
                  sll          s8, t4, t2
                  lui          a5, 908075
                  addi         s11, tp, -718
                  slt          s8, ra, t1
                  nop
                  lbu          a6, -52(sp)
                  lbu          s7, 49(sp)
                  lb           zero, 16(sp)
                  sub          ra, zero, s3
                  or           a4, t1, t3
                  add          ra, s4, gp
                  andi         s9, s2, -1111
                  lbu          a7, 58(sp)
                  srai         a5, tp, 26
                  sra          a4, s5, a7
                  addi         s6, a6, 441
                  sb           a2, 25(sp) #end riscv_load_store_rand_instr_stream_1
                  and          t2, tp, a2
                  slt          gp, s11, gp
                  auipc        s5, 914285
                  andi         s9, s11, -1531
                  sltu         ra, s6, a6
                  sra          tp, gp, a2
                  bgeu         a6, t4, 20f
                  lui          t2, 373561
                  nop
                  or           t1, s7, s11
                  xor          t4, tp, a4
                  srai         sp, t4, 18
                  lui          a6, 364863
                  beq          tp, a2, 31f
                  andi         t5, a3, -1439
                  auipc        t5, 781524
                  sub          s6, tp, s8
                  slt          s8, s0, tp
                  beq          s9, s1, 34f
                  bltu         s5, gp, 30f
20:               sra          s6, a3, t5
                  sra          a1, s2, t4
                  bne          s3, sp, 35f
                  auipc        zero, 470332
                  bltu         t0, t4, 41f
                  bge          t0, t5, 35f
                  and          s0, a3, t3
                  srai         gp, t5, 16
                  sll          zero, a3, tp
                  andi         s3, a1, 740
30:               nop
31:               srl          s3, t5, s10
                  bgeu         s10, s2, 46f
                  sltiu        gp, t6, 107
34:               lui          t4, 848074
35:               bge          s11, s0, 38f
                  blt          tp, a6, 54f
                  sltu         sp, s0, ra
38:               bge          t0, a3, 56f
                  xor          t1, a5, s5
                  slti         a1, t0, 1754
41:               sll          a5, gp, ra
                  bltu         a5, s6, 48f
                  xor          ra, zero, s10
                  xori         s9, t6, 370
                  sll          a1, t3, s5
46:               xor          a2, t0, a4
                  srli         a5, ra, 2
48:               nop
                  addi         s6, tp, -755
                  or           a1, a3, s4
                  lui          a5, 533501
                  bne          s7, s10, 54f
                  sub          a1, t5, t4
54:               nop
                  nop
56:               nop
                  bgeu         s6, a0, 75f
                  bge          s0, s3, 73f
                  xori         s7, a2, -1183
                  slti         s7, a2, 1570
                  slt          s4, s7, a0
                  xori         tp, gp, 1027
                  andi         s0, gp, 725
                  xor          gp, s3, a3
                  sra          gp, t4, a5
                  slt          t5, a3, s5
                  blt          s0, a7, 80f
                  lui          s0, 159380
                  nop
                  srli         a5, a3, 23
                  slti         sp, a3, -1448
                  ori          t2, t3, 909
73:               lui          s7, 851655
                  auipc        s9, 664334
75:               srli         a1, s2, 21
                  auipc        sp, 392161
                  bgeu         a1, s1, 80f
                  bne          a4, s1, 89f
                  xor          s3, ra, s4
80:               beq          s10, s6, 89f
                  andi         gp, t3, -1319
                  slti         s0, s1, -1703
                  beq          a6, s10, 87f
                  bne          t2, s4, 86f
                  sltu         sp, a6, s4
86:               add          s6, s3, a3
87:               slli         t5, a5, 20
                  slt          s4, s5, a4
89:               ori          zero, s2, 1577
                  and          s11, a0, t1
                  lui          s3, 154381
                  andi         tp, s8, -1772
                  slt          t1, tp, t5
                  sltiu        s7, t6, 1635
                  sll          a5, s7, ra
                  add          s8, s4, s10
                  add          s2, s6, t3
                  bgeu         s3, a7, 108f
                  srli         a3, s5, 7
                  add          s6, s1, s2
                  srai         t1, ra, 30
                  sra          a1, sp, t0
                  beq          s5, ra, 121f
                  lui          s8, 134526
                  sltu         ra, s8, s6
                  sll          a5, a2, a7
                  sll          s11, s10, t1
108:              andi         a6, s5, 1567
                  bne          tp, s6, 123f
                  lui          tp, 116187
                  slt          sp, a1, s6
                  bgeu         t0, s4, 132f
                  slti         t2, zero, 273
                  sub          s8, s3, t2
                  add          t4, a7, t6
                  blt          a2, zero, 127f
                  addi         s7, s4, 319
                  beq          t1, s6, 127f
                  srai         a5, s8, 5
                  bgeu         s10, gp, 132f
121:              sll          s2, sp, t1
                  nop
123:              srai         t5, s7, 3
                  xori         a1, a6, -10
                  slt          s7, t1, a7
                  srl          a1, a5, a1
127:              sltiu        a2, a6, 2006
                  bgeu         s4, s9, 140f
                  xori         tp, s2, 1436
                  srl          a3, ra, t5
                  bne          s1, a0, 137f
132:              beq          s3, a7, 142f
                  andi         a5, a1, -1445
                  addi         a1, s0, -1984
                  bgeu         s2, ra, 137f
                  addi         sp, a4, 1668
137:              blt          s2, t4, 148f
                  bgeu         t4, a7, 152f
                  and          a6, a0, t6
140:              auipc        s3, 649906
                  or           s11, t6, t3
142:              bne          a4, t6, 157f
                  add          sp, a5, s9
                  srl          t1, t2, t2
                  or           t4, s11, t3
                  slti         s2, a7, -1412
                  bltu         t0, s3, 153f
148:              or           tp, t2, t3
                  ori          a7, s9, -847
                  sub          s4, t6, gp
                  bge          s1, a1, 157f
152:              beq          a7, a7, 154f
153:              slti         gp, a2, -767
154:              auipc        tp, 717004
                  sltiu        a0, s0, -1457
                  slti         a5, a4, 1790
157:              bne          a4, t5, 168f
                  bgeu         a2, s11, 172f
                  auipc        s2, 177027
                  or           a7, t4, t2
                  sub          s8, s5, s10
                  sub          a0, t5, a2
                  blt          gp, a5, 181f
                  bne          tp, t0, 177f
                  xor          a4, zero, s9
                  andi         s3, sp, 796
                  slt          t4, a7, t2
168:              andi         a6, s10, 1701
                  or           a1, a7, t5
                  auipc        a2, 389007
                  sra          s11, a6, s1
172:              srli         s7, t0, 6
                  ori          a5, gp, -878
                  sra          s5, t2, t3
                  sltiu        s5, a1, -1271
                  slli         zero, s1, 30
177:              or           a7, t1, t2
                  slli         s5, s8, 4
                  srl          s0, t5, s4
                  srai         a4, s4, 12
181:              bne          s0, a5, 194f
                  slli         a2, a6, 9
                  bge          s6, s7, 187f
                  xor          s4, sp, t0
                  sub          t5, s3, s11
                  slli         ra, s3, 8
187:              sra          zero, a3, s0
                  srl          s2, t6, gp
                  beq          s3, s7, 203f
                  nop
                  nop
                  auipc        gp, 27076
                  sra          a6, a3, t6
194:              bge          a3, t5, 197f
                  blt          a7, s9, 213f
                  bltu         ra, tp, 206f
197:              sub          s4, a1, a6
                  srai         s6, s8, 28
                  ori          s6, s9, -734
                  srl          zero, sp, a6
                  slli         s6, s11, 2
                  xor          s11, s3, t5
203:              nop
                  xor          s0, s4, zero
                  add          a2, t3, s10
206:              slti         a3, ra, -371
                  sub          t4, a5, sp
                  bne          s7, a7, 228f
                  xori         t5, s4, 599
                  bge          s6, a6, 219f
                  blt          a5, a7, 223f
                  beq          a1, s8, 224f
213:              nop
                  auipc        a4, 787937
                  nop
                  bltu         t3, t0, 219f
                  ori          gp, t0, -735
                  srl          tp, t2, s9
219:              beq          s4, sp, 235f
                  sra          t1, s8, ra
                  bgeu         t1, ra, 239f
                  xor          s5, zero, a2
223:              xor          t1, s4, t1
224:              bgeu         gp, sp, 242f
                  bltu         t6, t4, 236f
                  sll          a6, a4, t6
                  andi         s2, s4, 1282
228:              addi         s2, a4, 1578
                  srl          s6, s2, s3
                  sra          a2, a5, s9
                  bne          a3, a3, 240f
                  add          a7, t4, s6
                  beq          s5, s10, 250f
                  andi         s0, s5, -1755
235:              lui          s7, 379705
236:              beq          s0, t1, 254f
                  nop
                  auipc        s8, 108198
239:              bltu         a7, a3, 253f
240:              andi         a0, s5, 786
                  bne          s11, s5, 258f
242:              sltu         t3, sp, s7
                  or           tp, t0, t6
                  bgeu         tp, s3, 256f
                  srai         t3, a5, 2
                  xor          s0, a0, s1
                  sub          gp, a6, gp
                  beq          t4, sp, 258f
                  addi         tp, tp, 1823
250:              slt          s0, s11, s3
                  sub          s9, s10, tp
                  ori          a3, t6, 997
253:              sub          ra, t4, ra
254:              srai         tp, s8, 0
                  srli         s4, s1, 20
256:              nop
                  blt          a5, t6, 277f
258:              sub          s2, s8, s4
                  andi         a7, s9, -2045
                  slt          gp, t0, t4
                  sub          tp, s2, s4
                  or           t3, s6, zero
                  xori         s10, s0, -1609
                  xor          t1, ra, ra
                  sltu         gp, a3, t0
                  auipc        s0, 608841
                  addi         s2, zero, -4
                  sltiu        s11, s5, 230
                  nop
                  xori         s7, t4, 1022
                  addi         tp, s3, -721
                  bne          a2, s2, 274f
                  or           s0, t4, t3
274:              lui          s11, 604865
                  srl          s4, a1, t2
                  sub          ra, s8, s2
277:              bltu         ra, s11, 280f
                  andi         sp, s1, -824
                  srli         s6, a1, 28
280:              bltu         t0, s3, 291f
                  sltu         a3, s8, a0
                  ori          a0, t4, -217
                  nop
                  sub          t2, a6, t6
                  slli         s8, s8, 22
                  bltu         t6, t3, 300f
                  slti         s0, a2, 2011
                  nop
                  and          a7, s3, s8
                  sll          a7, ra, t6
291:              nop
                  xori         s2, s7, 1228
                  beq          a7, a6, 299f
                  slli         a7, t2, 13
                  slli         s6, a5, 6
                  srl          s10, s3, s10
                  andi         s6, s0, -1050
                  sra          s8, a5, t0
299:              xori         s6, sp, 390
300:              and          s2, a5, s6
                  andi         a3, ra, -1832
                  slli         a7, s3, 15
                  ori          a0, s2, -578
                  andi         gp, s5, 1946
                  xor          s7, t5, s5
                  or           s7, s9, s0
                  srl          s0, t0, s4
                  addi         a6, s2, 1124
                  blt          sp, tp, 315f
                  sltiu        a5, s6, 1915
                  sub          tp, ra, a2
                  srli         t4, s10, 4
                  bltu         t6, s0, 328f
                  andi         sp, s2, -103
315:              addi         a2, zero, 926
                  bge          a5, a6, 329f
                  ori          a0, t4, -1332
                  nop
                  slli         a5, s7, 2
                  slti         gp, s3, 1504
                  srli         s4, gp, 7
                  bge          s2, s0, 340f
                  beq          a1, s11, 332f
                  srli         s9, s11, 11
                  sll          s4, s11, s9
                  or           a6, t6, s3
                  slti         a6, s8, 714
328:              srai         tp, s10, 31
329:              sltu         t1, s4, t3
                  bne          s10, a6, 346f
                  andi         gp, a3, -501
332:              bge          tp, gp, 342f
                  bgeu         s3, s11, 337f
                  and          s10, a0, a5
                  bne          t1, gp, 337f
                  addi         s5, s4, 1856
337:              and          s4, a2, s7
                  srl          t4, zero, s1
                  nop
340:              addi         t4, s3, 846
                  xor          s3, s0, a6
342:              bgeu         t3, t3, 345f
                  slli         s2, t3, 10
                  slli         zero, a1, 11
345:              auipc        a6, 939098
346:              add          a1, s4, gp
                  bne          t4, s5, 365f
                  lui          s0, 1044556
                  slti         t1, a1, 821
                  srl          a1, ra, s3
                  sll          s6, s7, s1
                  sll          s3, t0, a0
                  sltu         s9, s3, a6
                  xor          t3, s4, a0
                  xor          s10, s7, s5
                  srai         s3, a0, 17
                  slt          s9, a0, s0
                  slt          a4, s5, s2
                  nop
                  slti         sp, s7, -1627
                  sra          tp, s3, zero
                  addi         s6, s4, -1162
                  bge          a2, t3, 377f
                  ori          s5, s3, -210
365:              andi         s3, s7, 978
                  bltu         t4, ra, 384f
                  srli         t5, s7, 11
                  slti         s8, t2, -950
                  xor          t4, s11, a5
                  nop
                  ori          ra, s0, 918
                  and          s0, s11, zero
                  lui          t5, 945229
                  beq          s11, t4, 386f
                  sub          a4, s4, a5
                  xori         a3, t1, -1050
377:              nop
                  sub          s4, t4, t5
                  blt          s6, a7, 392f
                  auipc        t1, 614156
                  slt          a4, a0, s5
                  slli         tp, a3, 4
                  slt          ra, s4, s8
384:              blt          a0, t0, 395f
                  slt          a4, sp, s2
386:              srai         s10, s1, 26
                  ori          s2, s10, -1794
                  slli         s6, s9, 30
                  bgeu         a0, s0, 407f
                  xori         s6, a3, -21
                  lui          t5, 824222
392:              slli         a5, s8, 26
                  sra          sp, s7, a4
                  auipc        s6, 675943
395:              andi         t2, t5, -1628
                  bltu         t6, a5, 407f
                  or           s7, tp, s0
                  ori          s9, s9, 638
                  and          s2, s3, s10
                  sra          s11, t3, t4
                  sra          a6, t2, a6
                  xor          sp, s11, ra
                  srl          sp, t1, a6
                  addi         s7, a4, 1629
                  nop
                  bge          a3, s7, 407f
407:              addi         s2, s0, 487
                  or           s11, t6, a3
                  sub          a4, t1, a2
                  slt          a7, s11, t1
                  lw           s7, 4(s1)
                  addi         s1, s1, 48
                  sub          tp, s11, s8
                  andi         a3, s10, 932
                  xori         a0, s9, 1238
                  sll          t3, s4, tp
                  xori         s8, zero, -828
                  or           zero, t1, a5
557:              addi x19, x23, 0
557:              jalr x19, x19, 0
sub_10:           srl          t1, s6, a6
                  sra          s8, a7, tp
                  sub          a2, zero, zero
                  sll          s5, s5, s11
                  blt          zero, s7, sub_10_stack_p
                  srli         s6, s9, 27
                  ori          s11, s3, 87
sub_10_stack_p:   addi         s1, s1, -28
                  srli         s11, ra, 24
                  sw           s7, 4(s1)
                  sll          a3, s11, s5
                  sltu         t5, s8, a3
                  nop
                  or           s7, s1, s0
                  srli         s11, s0, 5
                  bgeu         sp, s2, 15f
                  slt          s9, s11, s2
                  bne          s9, s4, 12f
                  srli         s0, a5, 1
                  srli         a3, a3, 9
                  add          t1, t2, s11
                  bltu         sp, a6, 10f
                  sll          s2, zero, zero
10:               lui          s6, 489078
                  and          a1, s8, s5
12:               xori         a1, s0, 43
                  bltu         a4, a6, 29f
                  slti         s2, t6, 2030
15:               and          s9, s5, s10
                  auipc        s5, 688482
                  andi         s3, t3, 1019
                  auipc        a4, 138152
                  addi         s8, t3, -609
                  beq          t0, t5, 39f
                  xori         s11, t1, 1481
                  bne          s7, tp, 30f
                  sub          a7, ra, s8
                  sra          s4, zero, tp
                  blt          s11, s11, 39f
                  sltiu        s2, gp, -830
                  nop
                  bge          sp, s11, 32f
29:               add          a2, t1, zero
30:               sltiu        t5, zero, -1618
                  slt          t3, a3, t1
32:               nop
                  slt          t3, t5, s6
                  and          a3, gp, s7
                  ori          a5, a6, 1526
                  bltu         t6, s10, 44f
                  slt          gp, a1, a5
                  addi         sp, t1, 45
39:               srl          s8, a2, s1
                  nop
                  ori          a3, s2, -671
                  srl          gp, s5, s2
                  slti         s7, sp, 9
44:               slt          s10, t6, a0
                  lw           s7, 4(s1)
                  slli         a7, a6, 30
                  lui          a6, 480301
                  slli         s8, s11, 6
                  nop
                  addi         s1, s1, 28
                  slti         gp, s8, 1449
                  slt          s8, s8, s7
66:               addi x26, x23, 1
66:               jalr x26, x26, 0
sub_3:            xori         t4, zero, 128
                  ori          s11, s8, 1802
                  sub          a7, s9, s2
                  bltu         a6, s3, sub_3_stack_p
                  slli         s11, a2, 4
                  sltu         zero, a6, zero
                  srl          s3, a3, ra
sub_3_stack_p:    addi         s1, s1, -20
                  or           t3, a6, a4
                  sw           s7, 4(s1)
                  sra          s5, s1, s6
                  ori          s9, s7, 1815
                  sll          ra, s10, s1
                  la           tp, region_1+1213 #start riscv_load_store_rand_instr_stream_8
                  sb           gp, 158(tp)
                  xor          s0, t1, tp
                  auipc        a7, 884177
                  lbu          a4, -20(tp)
                  lb           a5, -120(tp)
                  srl          a5, s4, a3
                  sll          gp, s11, s5
                  slti         s3, t1, 1314
                  lbu          s4, -80(tp)
                  xori         t1, s5, 443
                  lbu          a6, 222(tp)
                  sh           t4, -177(tp)
                  lhu          s2, -255(tp)
                  xori         s9, t6, -1681
                  sb           tp, 107(tp)
                  srai         t2, t5, 19
                  lb           s9, 156(tp)
                  lh           s3, 229(tp)
                  xor          a3, gp, tp
                  slti         a5, s5, 384
                  xori         s6, s10, -1546
                  sll          a3, a7, t4
                  sb           t5, 182(tp)
                  add          s2, s3, s0
                  slt          s4, t6, a1
                  xor          s8, a4, s1
                  lbu          s2, -56(tp)
                  xor          s6, s10, s7
                  sb           s1, -18(tp)
                  and          s5, s1, s3
                  slt          a7, a2, s8
                  srl          s0, a5, t0
                  sltiu        t4, a3, 639
                  xor          a0, a7, a2
                  srai         s8, a7, 27
                  sll          s5, s0, s4
                  sb           s5, -253(tp)
                  and          a0, gp, t0
                  sltiu        a0, t5, -1186
                  sll          a6, t0, a7
                  sb           t2, -90(tp)
                  lbu          s6, 84(tp)
                  lb           s0, 218(tp)
                  xori         s11, t3, 1770
                  lw           ra, 227(tp) #end riscv_load_store_rand_instr_stream_8
                  la           t5, region_1+456 #start riscv_load_store_rand_instr_stream_1
                  addi         a6, a7, 717
                  sb           s5, 11(t5)
                  nop
                  lbu          s3, 78(t5)
                  sb           t3, 47(t5)
                  or           s2, s1, a6
                  xori         a3, s7, -1581
                  auipc        zero, 860389
                  lb           t2, 239(t5)
                  srai         s4, a7, 9
                  srl          s10, a0, t5
                  or           s10, a5, s1
                  srai         t3, s11, 3
                  sltiu        a7, s6, 152
                  lb           tp, -247(t5)
                  nop
                  lh           a4, 118(t5)
                  lb           s7, -34(t5)
                  sra          t2, zero, t6
                  auipc        sp, 209600
                  lbu          a6, 170(t5)
                  lbu          s8, 35(t5)
                  and          a7, s7, t1
                  sw           s10, 76(t5)
                  andi         s9, a7, -791
                  sll          a1, sp, t6
                  ori          s5, s1, -1669
                  add          a5, s0, t4
                  xori         sp, s11, 617
                  sltiu        a3, s7, -1992
                  lb           a5, -139(t5)
                  sb           t2, -215(t5)
                  xor          t1, a6, t1
                  sll          t1, s2, a6
                  lbu          gp, 231(t5)
                  sb           t3, 232(t5)
                  andi         t4, s6, 1602
                  sra          s11, s1, t5
                  add          s9, s0, s7
                  sb           a7, -99(t5)
                  slt          a6, a0, t0
                  lbu          a0, 151(t5)
                  slli         gp, t5, 24
                  sltu         a6, gp, a6
                  sb           ra, -138(t5)
                  srl          s5, s5, s4
                  sb           a4, 81(t5)
                  sw           t3, -140(t5) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_1+686 #start riscv_load_store_rand_instr_stream_7
                  sb           a5, 13(s6)
                  sb           s4, -6(s6)
                  sb           t6, -13(s6)
                  add          a1, s0, sp
                  lb           s8, 4(s6)
                  sll          a2, s11, a0
                  and          a3, a5, s10
                  sh           s2, 8(s6)
                  lh           s8, 12(s6)
                  srai         s10, a2, 6
                  lhu          a3, -10(s6)
                  slli         a0, t2, 21
                  lh           s10, -12(s6)
                  lbu          s10, 13(s6)
                  lb           gp, 4(s6)
                  sb           s11, 1(s6)
                  lh           a4, 14(s6)
                  sll          s7, s3, s7
                  andi         t2, tp, 135
                  lbu          a4, 11(s6)
                  or           t2, ra, t5
                  sb           t3, 1(s6)
                  sltiu        s9, s5, -1844
                  sltu         tp, a3, s3
                  slt          a4, s10, a3
                  sh           t0, -4(s6)
                  sb           s2, 12(s6)
                  srl          gp, t4, a2
                  lh           t2, -6(s6)
                  sh           s3, -8(s6) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+584 #start riscv_load_store_rand_instr_stream_0
                  and          s0, s9, s6
                  addi         t5, t2, 1590
                  sb           a0, 749(sp)
                  sb           s0, 534(sp)
                  slt          s3, a7, s5
                  srai         t1, a6, 11
                  slti         a4, tp, -1299
                  or           a6, a7, t1
                  xor          s6, ra, a4
                  sltiu        t5, s10, 235
                  sb           t6, 954(sp)
                  or           s5, s10, a3
                  and          a1, a4, a4
                  nop
                  auipc        s0, 1013614
                  lhu          s11, 200(sp)
                  slt          s3, s7, s6
                  sub          gp, t1, s2
                  and          t5, s10, s10
                  andi         ra, a3, -790
                  andi         a2, tp, 1092
                  sh           t3, 658(sp)
                  lbu          t1, -481(sp)
                  addi         t2, t4, -1442
                  sb           s2, 393(sp)
                  lb           t3, -189(sp)
                  lhu          a2, -498(sp)
                  add          s8, a1, s9
                  lw           s11, 1116(sp)
                  slti         a6, s0, -1002
                  lb           ra, -474(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1316 #start riscv_load_store_rand_instr_stream_5
                  lbu          a0, 5(s2)
                  slt          t1, zero, t5
                  lbu          a5, 14(s2)
                  xor          t2, a4, ra
                  andi         a4, s7, -672
                  lb           s0, 7(s2)
                  sra          s11, s0, s8
                  lbu          sp, 7(s2)
                  lb           ra, -15(s2)
                  and          s5, ra, a6
                  slt          a0, tp, s4
                  lb           a2, 0(s2)
                  sb           t3, -8(s2)
                  slti         s5, t0, -244
                  slli         zero, s10, 20
                  slti         s8, a4, 2037
                  lb           s11, 5(s2)
                  sll          ra, a5, a0
                  srai         a3, s10, 5
                  and          a5, a4, s7
                  xor          s6, a7, a1
                  lhu          t1, -10(s2)
                  slti         zero, a4, -1295
                  lbu          s6, 10(s2)
                  xor          s0, s11, s2
                  srl          s7, a4, a4
                  addi         a1, sp, 1794
                  xori         a2, s5, -673
                  slt          gp, t5, s1
                  lb           t4, 16(s2)
                  lbu          t4, 3(s2) #end riscv_load_store_rand_instr_stream_5
                  la           s6, region_1+321 #start riscv_load_store_rand_instr_stream_6
                  srli         a7, s4, 2
                  sb           ra, 32(s6)
                  or           s3, s11, t3
                  lb           s9, 47(s6)
                  srai         zero, t4, 20
                  addi         t4, a0, -356
                  ori          t2, gp, -1367
                  and          s5, t6, a2
                  lh           s2, -33(s6)
                  ori          s9, s4, 1118
                  or           s2, s7, ra
                  lh           ra, 27(s6)
                  srai         t5, t1, 23
                  sltiu        gp, s2, 103
                  ori          a7, t0, 1661
                  xor          ra, gp, s0
                  addi         s4, t4, 697
                  lbu          a1, -21(s6)
                  lbu          t4, 20(s6)
                  srl          s10, s4, s10
                  srli         a4, s6, 23
                  slti         sp, zero, -107
                  lw           s10, -13(s6)
                  slti         zero, t4, -1154
                  srl          a3, s1, s5
                  lw           a5, -29(s6)
                  sll          s10, s2, t3
                  slt          ra, t1, s4
                  srl          s4, s5, s11
                  or           a5, s4, t3
                  lbu          sp, 64(s6)
                  lbu          a3, 3(s6) #end riscv_load_store_rand_instr_stream_6
                  bltu         s4, s4, 11f
                  blt          s2, gp, 2f
2:                ori          a2, a3, -138
                  bne          a4, s10, 6f
                  or           s5, s6, s7
                  sub          a3, s9, s6
6:                nop
                  sub          ra, a7, t4
                  bltu         t5, s0, 17f
                  ori          s9, t0, -1005
                  srli         s7, a0, 3
11:               auipc        ra, 843841
                  blt          s6, s5, 28f
                  nop
                  andi         t4, t4, -1244
                  ori          s3, t2, 1635
                  lui          a2, 144858
17:               bltu         s2, s3, 20f
                  bne          zero, s1, 28f
                  bne          s11, s1, 22f
20:               add          a5, a7, tp
                  sll          s10, s4, t0
22:               sltiu        s3, s3, -736
                  blt          a4, s1, 26f
                  addi         t2, a2, -1586
                  beq          a4, s7, 35f
26:               addi         gp, s1, 1082
                  slti         a7, a2, -349
28:               blt          a7, s2, 33f
                  srl          a6, t2, s0
                  ori          t5, t6, -201
                  slti         t3, t1, -191
                  sub          a6, a4, s5
33:               lui          s3, 762622
                  beq          s1, a6, 36f
35:               bge          s1, a5, 45f
36:               bge          s4, t0, 55f
                  srli         a3, a7, 13
                  sll          tp, s11, s3
                  srli         a4, a3, 17
                  bge          a7, s6, 57f
                  slli         a2, zero, 9
                  srli         a3, s4, 14
                  and          t4, a7, t4
                  sub          a2, a5, s8
45:               slti         a3, a2, -948
                  beq          t3, s1, 57f
                  slt          t2, a4, t5
                  auipc        t1, 411274
                  sltu         s9, s2, t3
                  sltu         a2, t3, t4
                  sltiu        s7, a1, 1926
                  and          s2, s11, s3
                  sra          tp, a0, a6
                  bge          s9, s9, 60f
55:               bgeu         t3, t6, 56f
56:               add          s3, a7, t2
57:               nop
                  slli         a0, t5, 9
                  sltu         a2, t0, s6
60:               ori          s0, t2, -316
                  sltu         sp, s3, sp
                  or           s11, t3, s3
                  sra          s7, s3, tp
                  sltiu        t4, s0, -1651
                  sub          a5, a1, s3
                  nop
                  andi         gp, tp, 723
                  bne          a7, a6, 72f
                  srai         s3, t0, 30
                  slt          s7, a2, a2
                  bne          t5, s7, 76f
72:               sltu         a3, s1, t1
                  sltiu        s0, s10, 1411
                  xori         s8, s2, -1807
                  andi         a3, a1, -569
76:               srl          zero, a1, s9
                  bge          s1, a4, 81f
                  sltiu        s3, s6, 1786
                  sll          a7, a2, ra
                  and          t1, s10, t6
81:               sll          s0, s2, a7
                  add          t1, sp, s10
                  sub          sp, s9, t3
                  ori          ra, s5, 1469
                  beq          ra, s11, 95f
                  bge          ra, t1, 101f
                  addi         s5, a5, -1903
                  sltu         a1, sp, t1
                  xor          s5, s3, t6
                  or           a0, a1, zero
                  auipc        sp, 642380
                  bne          a0, zero, 93f
93:               sra          s2, t0, s7
                  xor          a3, zero, s3
95:               xori         s4, a6, 115
                  add          a1, t0, a6
                  xor          zero, t3, zero
                  sra          a2, a2, t1
                  beq          s3, s7, 115f
                  add          s7, a0, a2
101:              bgeu         s1, s5, 119f
                  bne          s6, s6, 120f
                  srli         s5, s10, 26
                  srai         a2, s1, 0
                  bgeu         t1, tp, 114f
                  slli         t1, a1, 28
                  bne          s9, s4, 114f
                  xor          gp, sp, a2
                  sra          s2, s9, a4
                  srl          a4, a1, s8
                  blt          t5, s5, 123f
                  sltiu        s4, t3, 1923
                  and          sp, tp, a7
114:              bltu         a7, a2, 124f
115:              sltu         s5, s3, s3
                  add          a5, s5, t6
                  sltiu        a7, a6, 1968
                  andi         s2, s9, -655
119:              srli         a0, t0, 14
120:              beq          s5, a4, 123f
                  ori          gp, zero, -1786
                  sltu         a7, a7, t2
123:              blt          s4, s9, 138f
124:              beq          sp, a0, 135f
                  srli         a1, sp, 27
                  andi         s6, s2, -223
                  nop
                  xori         tp, s6, 1979
                  blt          s4, a5, 140f
                  auipc        s4, 1003880
                  xor          s4, tp, a7
                  slt          s0, s5, a3
                  slti         a3, s3, 1118
                  xor          a6, t1, a2
135:              or           a2, s9, ra
                  auipc        t5, 34660
                  xori         s5, s6, 193
138:              slt          t2, a6, gp
                  beq          s4, s7, 142f
140:              srli         s7, a2, 15
                  add          t3, t2, s2
142:              lui          a5, 303333
                  bge          a6, ra, 153f
                  beq          a5, s4, 147f
                  sll          a4, t5, s4
                  srli         s6, s9, 15
147:              srli         a3, t0, 11
                  bne          a1, s4, 160f
                  slti         a4, t5, 464
                  slti         a0, s4, 1393
                  la           sp, region_0+965 #start riscv_load_store_rand_instr_stream_3
                  xor          s6, s2, a4
                  lw           a2, -17(sp)
                  sb           a6, 813(sp)
                  sh           s0, 475(sp)
                  lb           s10, 324(sp)
                  lui          s2, 809111
                  lbu          a4, 437(sp)
                  sltiu        t2, t1, 1334
                  lhu          gp, 201(sp)
                  srl          a3, ra, zero
                  lh           s2, -495(sp)
                  sw           a5, 19(sp)
                  auipc        s4, 306701
                  add          s2, a2, t0
                  addi         a2, s0, 1474
                  sb           s6, -820(sp)
                  lb           gp, -31(sp)
                  srai         a5, t1, 1
                  srl          a7, a6, ra
                  lh           s5, -333(sp)
                  lb           gp, -318(sp)
                  lb           s3, 618(sp)
                  sh           t1, -685(sp)
                  sra          s0, a0, s4
                  lbu          s4, 411(sp)
                  lbu          s3, -522(sp)
                  lbu          s4, -90(sp)
                  lb           t4, -900(sp)
                  lbu          a0, 1004(sp)
                  srai         tp, s11, 9
                  sll          a6, sp, t1
                  sb           a0, -954(sp)
                  lh           zero, 285(sp)
                  lb           gp, -599(sp) #end riscv_load_store_rand_instr_stream_3
                  slli         s11, a3, 18
                  or           a1, t2, a4
153:              bne          s0, s11, 169f
                  add          t3, t3, s10
                  bne          t1, a2, 160f
                  or           s11, gp, t1
                  srl          a7, zero, t2
                  beq          s9, s9, 161f
                  slti         s3, s3, 1692
160:              add          s10, s10, s4
161:              bltu         a6, a3, 162f
162:              bgeu         ra, zero, 172f
                  srl          s9, a4, ra
                  and          a4, a2, gp
                  sub          gp, s6, t3
                  xori         s0, s3, 113
                  sltiu        tp, t3, 1773
                  andi         s4, s5, 37
169:              or           a1, s8, t5
                  sltu         a5, a6, s8
                  andi         s2, a4, -1237
172:              add          s5, a1, zero
                  auipc        a3, 1001530
                  bge          t2, t4, 180f
                  ori          a6, s3, -884
                  sltu         s10, t3, t2
                  blt          a0, ra, 194f
                  srl          a1, t2, s6
                  sltiu        a5, s5, -1316
180:              beq          sp, t0, 190f
                  sll          s3, a1, s2
                  sll          t1, sp, zero
                  beq          s9, s10, 190f
                  and          t1, t5, s8
                  bge          t1, s10, 189f
                  blt          t0, t2, 202f
                  srli         ra, s1, 30
                  or           s5, t6, t3
189:              slli         s0, sp, 22
190:              bge          s0, t4, 208f
                  nop
                  add          s5, s2, s9
                  beq          s5, s6, 211f
194:              nop
                  sub          a5, a2, t6
                  beq          s9, s3, 200f
                  xori         gp, tp, -1505
                  srl          t4, s8, a4
                  slti         a2, gp, -1065
200:              bgeu         s3, a7, 219f
                  srli         a7, a6, 29
202:              sra          s7, a3, t1
                  sra          t1, t6, t0
                  sltiu        a1, t2, -1548
                  andi         t2, s5, 783
                  bne          a7, s10, 215f
                  ori          a4, a6, -1033
208:              sll          t4, a7, s9
                  xori         s8, a5, -2007
                  lui          t3, 164108
211:              and          t5, s0, t1
                  slli         s5, s11, 20
                  sltu         s7, s0, tp
                  sub          a4, t4, t2
215:              or           zero, s1, s5
                  and          sp, sp, s7
                  xor          t2, s9, a6
                  addi         s3, s2, -744
219:              ori          s9, a3, -1327
                  lui          a3, 214620
                  bltu         sp, s3, 222f
222:              lui          tp, 540754
                  bge          s6, s2, 224f
224:              or           s3, t1, s9
                  xori         sp, gp, -1001
                  sltu         t5, t4, s9
                  srl          a6, s4, a2
                  ori          a1, s2, 391
                  bgeu         gp, a4, 238f
                  sll          a2, tp, s6
                  srl          t3, t1, s3
                  slli         s3, s2, 9
                  auipc        t1, 554380
                  bgeu         a7, tp, 239f
                  sll          s2, t3, s1
                  lui          s8, 931062
                  bne          a4, s5, 239f
238:              xori         s8, s4, 1672
239:              xor          ra, a4, s11
                  srli         t3, a5, 30
                  sub          t2, s10, s5
                  andi         s6, s0, -1745
                  bltu         s6, a0, 250f
                  xori         zero, s1, 833
                  sra          sp, a4, t5
                  andi         a1, a1, -1524
                  addi         t1, s1, -1681
                  sll          s4, s3, s0
                  lui          a7, 645461
250:              srai         zero, s9, 4
                  sll          a5, gp, a7
                  bltu         s7, t4, 268f
                  slti         a6, s5, -724
                  bgeu         s2, s4, 255f
255:              beq          zero, s0, 261f
                  add          s3, a3, t6
                  srl          a2, a6, t6
                  bgeu         s3, t3, 263f
                  addi         s11, a2, 72
                  bltu         s9, t4, 270f
261:              andi         a1, a1, -1008
                  slt          s3, s11, gp
263:              auipc        a6, 765108
                  sltu         sp, s8, ra
                  bgeu         t2, t3, 275f
                  beq          a5, s8, 269f
                  slli         a2, a2, 13
268:              addi         t3, a4, -700
269:              srai         s9, ra, 15
270:              ori          a1, s0, 1626
                  sltu         a1, s7, s3
                  sra          a4, s9, s6
                  xor          t1, s3, s4
                  srai         a2, s5, 14
275:              bne          tp, s6, 276f
276:              beq          ra, gp, 293f
                  srli         a5, gp, 23
                  bgeu         s4, a4, 279f
279:              srli         tp, s11, 19
                  xor          gp, s3, s0
                  and          t4, s10, s5
                  sll          s8, a2, s1
                  xor          s2, s2, a1
                  sll          a7, s5, a3
                  xor          s5, ra, a6
                  xori         a4, a0, -150
                  xor          tp, s2, s11
                  bltu         a3, a4, 306f
                  xor          s5, t5, s10
                  blt          a0, s10, 302f
                  bgeu         t3, a7, 301f
                  andi         t2, a1, -337
293:              xori         s9, a3, -1097
                  sltu         s2, s0, s8
                  slti         s10, s8, -31
                  slt          sp, s9, t3
                  sltiu        s9, s4, -1335
                  nop
                  sub          t5, t3, s9
                  blt          gp, t4, 311f
301:              nop
302:              srli         s10, a1, 19
                  sub          a7, a4, tp
                  addi         t4, a7, 296
                  srli         s4, s7, 14
306:              add          t1, a3, s11
                  addi         a4, a5, 1452
                  sub          t3, ra, t0
                  sll          s6, s2, a2
                  add          a5, sp, s6
311:              srli         a5, s0, 1
                  beq          t6, s1, 323f
                  slt          t1, zero, a0
                  lui          s6, 114214
                  xori         s4, a0, 1788
                  sltiu        t4, a4, -1011
                  xor          a6, a4, sp
                  xori         t1, s4, -1110
                  bge          s1, s10, 328f
                  beq          a5, s4, 323f
                  or           s10, a7, s2
                  or           a2, s4, s4
323:              sltiu        s7, a7, -1743
                  lui          a3, 48950
                  add          a4, sp, t0
                  and          t4, a5, t0
                  add          s3, a4, a6
328:              sltu         a7, a1, a6
                  slli         a2, a3, 17
                  xor          a6, t2, a5
                  slt          s11, s0, a6
                  andi         t4, s3, 742
                  xori         a4, s6, 1868
                  nop
                  srli         s2, t0, 23
                  bge          t3, gp, 346f
                  srai         s8, ra, 23
                  slli         tp, s10, 8
                  slti         t3, zero, 1904
                  beq          a1, a0, 359f
                  andi         a3, t4, -970
                  andi         t1, sp, 789
                  nop
                  blt          s6, s0, 347f
                  bltu         s10, a5, 354f
346:              or           s8, ra, s5
347:              slt          s11, s5, a1
                  srl          s10, s1, a7
                  slt          a3, s5, s4
                  or           a7, t5, t1
                  and          s0, s6, t5
                  sll          s10, gp, a6
                  sra          s11, tp, ra
354:              xor          a6, a4, s7
                  sltiu        a3, t0, -1937
                  and          ra, s6, t6
                  slli         a1, a2, 24
                  or           ra, t6, t4
359:              sltiu        t2, s8, 1321
                  sltu         ra, s10, t1
                  srl          t5, t4, s0
                  srl          s6, s5, s1
                  sll          a4, gp, a1
                  sub          a0, t3, s4
                  srli         sp, t6, 29
                  slli         t1, t5, 6
                  or           s11, t2, t4
                  slt          a3, s7, a6
                  slti         t1, s3, -1153
                  or           s9, s8, tp
                  sll          tp, t0, a0
                  nop
                  slli         a6, s3, 27
                  nop
                  nop
                  beq          a0, s10, 391f
                  sll          t4, a3, s2
                  xor          s9, a0, a5
                  nop
                  beq          a4, t2, 385f
                  sra          s2, s4, a0
                  sra          s9, t3, gp
                  nop
                  auipc        t4, 844001
385:              sub          a4, a3, zero
                  or           s11, t0, a4
                  sltiu        a1, s6, 427
                  bge          a3, t2, 392f
                  bgeu         t2, zero, 405f
                  and          a1, zero, zero
391:              andi         a1, ra, -538
392:              sra          s8, a3, t4
                  bne          a2, sp, 395f
                  srai         a1, a4, 23
395:              beq          s8, t2, 398f
                  xori         t3, a6, -171
                  and          t2, s6, ra
398:              nop
                  srl          s5, t6, s8
                  andi         s3, s7, 1210
                  lui          s9, 454964
                  srl          a7, s4, s8
                  beq          s9, s8, 407f
                  or           s2, t1, s4
405:              add          s6, s9, a4
                  sltu         s7, gp, a0
407:              sltu         zero, a5, s1
                  bge          s5, gp, 426f
                  xori         ra, s5, -1119
                  bltu         a7, s5, 415f
                  sltu         s3, s2, s10
                  add          sp, s0, a5
                  slli         a6, s0, 15
                  slli         s11, t4, 23
415:              nop
                  sub          t5, tp, s10
                  sll          gp, ra, a6
                  addi         s2, t6, -1063
                  slli         a3, s0, 27
                  srai         a2, a4, 28
                  xori         t5, s7, 299
                  ori          a6, s3, -1028
                  or           s2, s1, a5
                  bne          gp, t2, 428f
                  bge          s2, a5, 436f
426:              ori          s11, t6, -949
                  srl          a3, t1, t1
428:              sub          a1, a2, a7
                  slti         zero, s7, 1899
                  bltu         s5, t0, 442f
                  lui          s2, 866266
                  add          a5, s3, a7
                  bgeu         gp, s1, 436f
                  andi         a2, a2, -1205
                  bne          s11, t1, 445f
436:              xori         s10, a3, 1317
                  sra          s3, s6, a5
                  sltiu        s7, s7, -143
                  srai         s6, a7, 0
                  bge          s2, a2, 441f
441:              bgeu         s4, s1, 444f
442:              xori         a7, s0, -1232
                  addi         s5, a3, 263
444:              slli         a3, a3, 6
445:              sltu         tp, s6, a1
                  srli         t3, s4, 2
                  sll          zero, t0, a7
                  xori         t5, a3, -1271
                  srl          t3, s1, gp
                  lui          t1, 1025611
                  add          s8, s2, t4
                  nop
                  sltiu        s6, zero, -1650
                  bltu         s0, s6, 457f
                  add          a3, zero, a4
                  sll          t3, s1, s2
457:              xor          s4, s3, s1
                  bne          ra, a7, 473f
                  bltu         t4, s2, 460f
460:              slli         s5, t2, 3
                  ori          a7, s10, 71
                  addi         s9, a4, -830
                  sub          a4, t0, s11
                  and          s10, t3, s5
                  sll          s7, t3, gp
                  bge          ra, s6, 475f
                  srl          s4, s6, t3
                  beq          t0, t2, 478f
                  sltu         ra, a4, a3
                  xori         a6, s8, -69
                  add          s5, a2, s3
                  blt          t6, zero, 481f
473:              bltu         s2, gp, 476f
                  slt          a3, sp, sp
475:              srli         s6, s4, 26
476:              sra          t5, ra, sp
                  slli         s0, a5, 24
478:              auipc        a5, 522546
                  slt          gp, t3, a0
                  sll          ra, a4, s7
481:              bgeu         s6, a5, 492f
                  la           s5, region_0+778 #start riscv_load_store_rand_instr_stream_4
                  sh           a6, 556(s5)
                  sb           zero, -189(s5)
                  auipc        t1, 312165
                  lui          s10, 1002258
                  add          s2, a3, s4
                  lbu          s11, -727(s5)
                  lh           s2, 796(s5)
                  sb           s4, -299(s5)
                  add          sp, a2, t4
                  lw           zero, 22(s5)
                  auipc        a0, 978215
                  sb           t4, -497(s5)
                  lbu          a0, -271(s5)
                  lui          sp, 870688
                  lw           t4, 70(s5)
                  sll          a5, s10, s3
                  srl          s0, a7, t4
                  sb           t1, -383(s5)
                  lw           sp, 366(s5)
                  lbu          s7, 836(s5)
                  lb           sp, -766(s5)
                  sb           t3, 412(s5)
                  slti         s3, s0, 1642
                  lui          s3, 602153
                  lbu          a0, -352(s5)
                  lbu          s2, 350(s5)
                  lw           s0, -314(s5)
                  sb           a2, 727(s5)
                  srai         a5, zero, 11
                  ori          s3, s9, 568
                  lbu          a3, 1151(s5)
                  slti         t1, s10, 241
                  andi         t2, s1, -1679
                  sb           s10, -171(s5)
                  lb           s9, -162(s5)
                  lui          s3, 112344
                  lb           a2, -15(s5)
                  srl          t3, a1, s4
                  sltu         a6, s1, t6
                  lb           zero, -465(s5)
                  auipc        t5, 685247
                  lb           a0, -585(s5)
                  sh           s9, 404(s5)
                  slt          a6, a3, a3
                  srli         s6, t1, 29
                  xori         a7, a3, 1887
                  nop
                  sb           sp, 400(s5)
                  sll          s8, t1, s7
                  sh           a2, 62(s5) #end riscv_load_store_rand_instr_stream_4
                  sltiu        s2, s2, 958
                  xori         s4, t2, -949
                  sub          s9, t0, s3
                  sltu         a0, s3, s7
                  sub          a1, s6, sp
                  and          a6, a4, gp
                  auipc        s7, 154198
                  xori         s0, s3, -894
                  andi         gp, s8, 2018
                  addi         a0, s9, 1434
492:              sub          a0, t2, a1
                  slt          tp, t0, s8
                  srl          s0, s9, a3
                  srai         sp, a5, 8
                  bge          a7, s3, 513f
                  lui          a4, 40614
                  sltu         s10, t4, a6
                  sll          s6, s1, t3
                  and          s8, s5, a0
                  sltiu        a0, t4, 949
                  bltu         s4, t2, 509f
                  bltu         s1, t6, 505f
                  sltu         s5, s7, a6
505:              auipc        s4, 226494
                  sub          gp, s7, a2
                  or           t3, a6, t1
                  lui          t5, 793368
509:              nop
                  xor          a3, s10, a7
                  nop
                  bge          a0, s2, 522f
513:              andi         a2, a2, 1008
                  slt          gp, t3, t6
                  ori          t4, s5, -242
                  slt          s9, t4, t5
                  sub          s0, tp, t2
                  srai         a5, t2, 23
                  lui          a5, 810427
                  add          s3, a5, tp
                  andi         a6, a1, -1233
522:              auipc        gp, 210576
                  nop
                  bne          s10, a3, 530f
                  bne          a3, s9, 544f
                  beq          tp, a4, 542f
                  sll          s11, s2, t5
                  slli         s5, a4, 27
                  slt          a6, s4, s5
530:              srai         t2, t6, 14
                  sll          sp, t4, s1
                  srl          s0, a4, t2
                  bltu         a0, a0, 543f
                  sll          gp, zero, a0
                  auipc        zero, 525123
                  and          a6, s5, a2
                  nop
                  srli         t1, a5, 31
                  srai         a6, s5, 19
                  srai         t2, a1, 6
                  slli         s5, a6, 7
542:              slti         a2, a3, 686
543:              lui          t1, 966383
544:              blt          a4, t1, 548f
                  add          s5, a1, tp
                  auipc        zero, 355221
                  ori          a6, t6, 812
548:              lui          a4, 895904
                  blt          s5, t2, 567f
                  auipc        s4, 22864
                  srl          s7, a1, s4
                  addi         s8, t4, 920
                  beq          a0, t0, 558f
                  blt          gp, a3, 572f
                  srai         s8, s5, 8
                  sltu         t2, a5, s8
                  xor          s10, s5, tp
558:              bge          zero, gp, 559f
559:              sll          s6, a2, a7
                  and          t5, a3, t1
                  and          s4, s4, t5
                  bgeu         s3, ra, 578f
                  bge          a0, s2, 573f
                  sltu         a6, s1, t1
                  slli         s0, tp, 19
                  add          zero, ra, s8
567:              slti         s6, tp, 541
                  bne          sp, tp, 569f
569:              slt          s2, a3, s3
                  nop
                  sll          a4, s8, s9
572:              slti         sp, sp, -1681
573:              sra          t3, s1, t2
                  lui          s4, 1042771
                  nop
                  xori         a3, a5, 797
                  srl          t4, s8, s0
578:              bne          t1, s6, 588f
                  blt          t6, t6, 580f
580:              sltiu        s3, t3, 336
                  la           t1, region_1+459 #start riscv_load_store_rand_instr_stream_2
                  auipc        t5, 156954
                  slti         tp, s3, 1187
                  sb           s2, -3(t1)
                  sb           t6, -5(t1)
                  srli         s3, s10, 9
                  xor          t4, a3, s9
                  xori         s0, t1, -409
                  lw           t3, 13(t1)
                  sb           t6, -10(t1)
                  srli         t4, a0, 28
                  sltiu        t3, s0, 1630
                  sb           ra, -8(t1)
                  xor          s0, s2, s1
                  sltiu        sp, a0, 802
                  sra          zero, a0, a5
                  sltu         s11, t2, s9
                  slt          s5, t6, zero
                  sll          a7, s10, sp
                  lb           s5, 2(t1)
                  lhu          t4, 3(t1)
                  sb           t4, 2(t1)
                  or           t3, t4, s0
                  sub          zero, s11, tp
                  sb           zero, 7(t1)
                  or           s5, sp, s3
                  sra          a5, s6, t6
                  lb           s5, -10(t1)
                  sltu         s3, t2, t4
                  sltu         a3, a7, t1
                  xor          s4, a6, t3
                  lhu          s9, -1(t1) #end riscv_load_store_rand_instr_stream_2
                  bgeu         s10, zero, 590f
                  or           s7, a5, a3
                  beq          ra, a2, 587f
                  srai         a5, s11, 26
                  srai         a2, s7, 26
                  bne          s2, a1, 590f
587:              addi         ra, s8, 1721
588:              slt          a4, s1, s8
                  sub          s2, s5, a5
590:              sll          gp, t0, a6
                  addi         s10, s7, -866
                  slt          a0, tp, a6
                  bne          t6, gp, 594f
594:              slt          s3, s9, t4
                  sll          s10, t2, t0
                  and          s0, s10, zero
                  sltiu        s6, t2, -445
                  srli         a4, s4, 2
                  bltu         tp, s8, 604f
                  andi         ra, s2, -1230
                  slt          tp, s4, ra
                  bne          s2, s9, 605f
                  add          a7, a2, s10
604:              sub          s6, ra, ra
605:              slt          a3, s11, zero
                  bgeu         s10, t3, 617f
                  addi         a3, a1, 468
                  add          s3, s10, a6
                  srli         s6, a1, 1
                  srl          sp, s6, s0
                  slti         a4, a5, -1617
                  bgeu         s7, t0, 630f
                  ori          sp, a5, 1393
                  andi         s6, a7, -707
                  bltu         a5, a0, 630f
                  ori          s10, a7, -1398
617:              bne          t6, gp, 623f
                  srl          zero, s9, s3
                  srai         a4, s11, 16
                  sltu         s3, gp, t5
                  ori          s11, t5, -704
                  or           gp, a2, s1
623:              srli         a3, t4, 8
                  beq          tp, sp, 633f
                  ori          a3, tp, 892
                  blt          a0, a0, 642f
                  blt          a4, sp, 630f
                  slt          zero, s1, t5
                  slt          t2, s9, t1
630:              sra          a4, s5, t1
                  slli         a5, t3, 30
                  addi         s9, zero, 335
633:              add          s3, a7, a6
                  bltu         s7, tp, 651f
                  srli         a2, t0, 29
                  ori          a6, s5, 676
                  blt          zero, a6, 649f
                  xori         s4, t3, -1927
                  sltu         zero, s3, sp
                  xori         ra, s0, -1401
                  or           a4, zero, a2
642:              blt          t6, a0, 647f
                  slti         a5, a7, 599
                  bge          s11, s1, 651f
                  blt          ra, s2, 655f
                  addi         s0, s2, 281
647:              andi         a2, t5, 522
                  xori         t1, zero, -1256
649:              bge          s10, a5, 660f
                  and          s5, t0, s3
651:              bne          s6, t3, 667f
                  xor          ra, t5, s11
                  srli         a2, a6, 11
                  add          a0, s5, s10
655:              sltiu        sp, ra, 110
                  addi         s6, a1, -1840
                  bgeu         s8, t5, 676f
                  xori         s6, s1, 1106
                  srli         t4, a3, 25
660:              and          a1, s7, a1
                  bne          a2, a6, 664f
                  bne          t5, t6, 664f
                  xor          s10, t4, t5
664:              srai         t1, s6, 5
                  slti         a5, s1, 272
                  slti         a2, a5, -948
667:              srli         a1, t1, 12
                  bgeu         t4, ra, 686f
                  add          s8, s7, s11
                  srli         s7, zero, 7
                  nop
                  beq          a2, t0, 675f
                  xori         sp, t5, -2029
                  lui          t5, 810884
675:              xor          s5, s10, t6
676:              sll          s6, a4, a2
                  ori          s0, a7, 470
                  and          a6, a0, sp
                  auipc        t1, 242730
                  srai         t5, t3, 11
                  bgeu         t6, a2, 691f
                  blt          s11, t5, 687f
                  or           s10, a7, s8
                  srli         s9, sp, 1
                  srli         s10, ra, 23
686:              sub          gp, t3, gp
687:              auipc        a3, 945043
                  sra          t2, s0, ra
                  sra          s5, t3, s1
                  sltiu        sp, t3, -536
691:              blt          a7, t1, 707f
                  lui          a3, 77308
                  srli         a7, ra, 16
                  bne          t6, t5, 705f
                  sub          s3, s4, zero
                  srai         s7, s9, 5
                  beq          s8, ra, 700f
                  xor          a5, gp, t4
                  and          t5, t1, tp
700:              slt          a4, a0, s9
                  sra          a4, s4, s9
                  sltu         ra, ra, s1
                  lui          s8, 954320
                  srai         a4, s1, 25
705:              slt          a6, s7, s0
                  bge          gp, t0, 707f
707:              beq          t1, t4, 725f
                  blt          s5, s7, 712f
                  sra          t4, s5, s11
                  blt          a4, t3, 720f
                  or           t1, gp, s1
712:              addi         s7, s4, -1189
                  add          s2, sp, t6
                  bne          a1, a2, 717f
                  ori          s3, s1, 1554
                  sub          s6, t5, t5
717:              sra          zero, a3, s4
                  sltu         a2, ra, gp
                  srli         s10, s8, 15
720:              sra          a6, a6, a3
                  srai         s3, s1, 17
                  bgeu         t4, s9, 731f
                  sltu         s6, t3, zero
                  sub          t4, a2, a4
725:              bge          s7, a0, 727f
                  blt          t4, a5, 729f
727:              bne          gp, a1, 739f
                  bgeu         a6, a1, 733f
729:              add          a2, s1, ra
                  addi         a0, zero, -1862
731:              bltu         ra, a7, 747f
                  sub          s9, a6, a1
733:              xori         a7, a3, 455
                  beq          a0, a0, 744f
                  auipc        gp, 147336
                  slli         s9, s1, 13
                  lui          a3, 270096
                  sltiu        tp, s10, 540
739:              srl          t2, zero, s3
                  slli         a1, s1, 3
                  andi         s9, a0, 637
                  slt          a6, a2, tp
                  ori          s8, t6, 371
744:              or           sp, s0, a0
                  sub          t3, s9, s7
                  sltu         a4, s4, zero
747:              slti         s9, a0, 1429
                  bgeu         zero, gp, 751f
                  or           a1, a3, gp
                  andi         s9, a2, -1104
751:              sll          a6, s1, sp
                  auipc        t2, 152818
                  blt          s1, sp, 763f
                  and          a5, a4, s11
                  add          t4, a4, zero
                  xor          s0, s11, ra
                  sll          t4, t2, a7
                  bgeu         s5, s1, 762f
                  bge          t5, s9, 760f
760:              slt          t2, t0, ra
                  or           s3, s1, t2
762:              sub          a2, t4, s8
763:              addi         s4, t1, -668
                  and          s0, s2, a5
                  or           a7, t2, gp
                  bne          gp, zero, 776f
                  addi         zero, a5, 1089
                  lui          a6, 944136
                  beq          s10, s9, 776f
                  sub          a0, t6, tp
                  auipc        t1, 346091
                  ori          t4, s9, 208
                  add          s8, a4, s7
                  nop
                  and          t5, ra, s10
776:              slli         s3, zero, 14
                  xor          s3, ra, t5
                  xor          a7, s0, a5
                  srli         t5, s6, 23
                  slt          ra, s9, a3
                  sltiu        a0, t3, -1443
                  auipc        a5, 603524
                  srli         a1, s1, 26
                  sll          s6, s9, s6
                  auipc        t1, 911107
                  srli         gp, s1, 30
                  srai         a2, a6, 21
                  slt          s7, t1, s5
                  and          a3, t4, a0
                  add          s10, s4, t3
                  bgeu         gp, a5, 809f
                  xor          s7, s6, gp
                  xori         s10, s6, 81
                  sltu         s2, a4, sp
                  andi         sp, a0, -179
                  sltu         s4, a7, s9
                  blt          s2, s5, 798f
798:              andi         s2, sp, 194
                  srl          a6, ra, s6
                  and          a2, ra, t5
                  srl          s7, a3, gp
                  andi         s10, s1, 1787
                  add          gp, a6, s10
                  sltu         s5, s4, a5
                  slli         a4, t5, 4
                  srai         s4, s10, 20
                  bne          tp, s8, 826f
                  blt          s1, a5, 823f
809:              add          s2, t4, a4
                  sub          s7, a7, a5
                  beq          t3, s10, 817f
                  bge          a6, t6, 829f
                  xor          s4, a4, sp
                  bltu         t3, t0, 825f
                  srl          t1, a5, s1
                  beq          a0, t1, 825f
817:              xori         t4, s6, -1807
                  add          ra, sp, ra
                  sub          s2, ra, s9
                  sub          t5, s0, s11
                  slti         s0, a5, 1817
                  lui          a7, 280341
823:              auipc        t4, 869306
                  and          a7, s10, gp
825:              and          ra, s7, a4
826:              add          sp, s2, s6
                  xor          a0, s0, s10
                  beq          sp, gp, 839f
829:              srli         sp, tp, 16
                  sra          zero, t3, t0
                  nop
                  slti         s2, s11, -1273
                  ori          zero, a1, -541
                  bltu         tp, t3, 839f
                  ori          a2, a4, 1423
                  slti         a1, a6, -1931
                  sra          s3, s4, t1
                  srli         ra, t1, 13
839:              srl          s2, gp, t4
                  slti         s9, s0, -482
                  andi         tp, a0, -1211
                  sltiu        s3, a6, -1872
                  blt          s0, a0, 846f
                  andi         gp, a4, -255
                  bne          a2, a1, 855f
846:              bltu         a2, s2, 858f
                  xor          s10, t0, a7
                  beq          t4, s8, 849f
849:              bge          s7, a0, 866f
                  xor          s0, s2, s5
                  add          s8, a0, a4
                  sltu         sp, a0, t6
                  bgeu         a6, sp, 860f
                  srli         s6, s6, 11
855:              blt          s7, s1, 873f
                  bge          a3, s6, 867f
                  andi         s7, a5, -1409
858:              bltu         a7, t2, 876f
                  nop
860:              sra          s7, a6, zero
                  sub          tp, ra, a0
                  bltu         sp, a6, 872f
                  nop
                  add          t2, a0, ra
                  srai         a5, s0, 6
866:              beq          t1, t5, 875f
867:              addi         s0, a6, 2020
                  slt          s7, gp, a5
                  srli         s10, a4, 27
                  blt          a2, s3, 885f
                  srl          sp, a1, t1
872:              lui          a5, 129792
873:              bne          t6, a7, 879f
                  srai         a6, a3, 9
875:              lui          t1, 749595
876:              slt          s6, s4, t4
                  add          a4, s2, tp
                  bge          t1, t2, 881f
879:              srli         s6, a6, 31
                  xori         s6, s2, 1878
881:              lui          gp, 107534
                  bne          s5, s4, 883f
883:              sub          s6, a7, a1
                  and          s8, a7, t1
885:              bge          s0, a4, 886f
886:              sltu         a0, s3, s8
                  or           a0, s2, t3
                  srai         t2, s11, 15
                  srl          s7, a7, a3
                  xor          s6, t0, tp
                  sra          a3, t6, a7
                  xor          zero, a7, s5
                  bne          a6, t3, 895f
                  lui          t3, 562140
895:              slt          t3, s2, a7
                  auipc        tp, 1010173
                  slt          t1, s8, s9
                  and          t4, ra, s8
                  lui          s8, 960005
                  slli         s6, s5, 22
                  slti         t3, t6, -1589
                  sltiu        s7, a7, -1054
                  bge          s11, s9, 912f
                  srai         a5, t0, 11
                  slti         s10, s4, -17
                  xori         t1, t5, -639
                  srli         zero, t3, 7
                  auipc        t3, 525692
                  nop
                  addi         s5, a3, 33
                  sltiu        t3, s0, 1996
912:              bge          a5, sp, 931f
                  bge          s0, sp, 923f
                  blt          s7, s4, 918f
                  and          zero, s1, s0
                  bgeu         t6, s9, 932f
                  sra          sp, s11, a7
918:              sltiu        a7, s5, -1867
                  nop
                  slli         s10, a1, 25
                  bltu         zero, t1, 925f
                  xor          a5, t2, gp
923:              sltu         t3, t5, t5
                  bltu         s4, a4, 929f
925:              srl          t2, a2, s7
                  xori         s11, tp, 1470
                  sltiu        a1, gp, 662
                  addi         tp, s9, 902
929:              or           t2, gp, s2
                  auipc        s6, 545041
931:              xor          a0, a7, a4
932:              bgeu         s10, t0, 935f
                  addi         t5, s11, 113
                  slli         s6, a4, 29
935:              sub          s9, sp, a5
                  bge          t5, a6, 952f
                  xori         t2, s5, 234
                  xor          t3, s0, t6
                  slli         tp, s0, 17
                  ori          t4, a2, -793
                  sltu         a7, t1, s11
                  add          s7, a4, t0
                  slt          sp, t6, zero
                  sltu         zero, s0, t2
                  srai         s2, t1, 13
                  xor          a0, s3, t0
                  sll          s8, a2, t1
                  bge          sp, t5, 951f
                  lui          a2, 693011
                  addi         t4, t3, 1072
951:              andi         s7, s9, 1762
952:              slt          s0, s7, a7
                  xor          zero, t0, t1
                  andi         sp, a5, 844
                  srai         s9, s3, 12
                  bge          a0, a7, 966f
                  srl          t5, sp, s0
                  srai         tp, a7, 16
                  bge          s7, s11, 975f
                  ori          sp, a4, -1175
                  srl          a7, s4, ra
                  nop
                  sra          s6, t5, a2
                  xor          t1, s7, s3
                  and          t4, gp, s4
966:              srl          a6, s1, a1
                  and          sp, gp, s6
                  slt          a1, s10, a2
                  xor          s7, s0, s8
                  srl          a4, a7, s10
                  slt          t5, a1, tp
                  andi         a2, ra, 351
                  add          t2, s8, s11
                  bgeu         t4, s6, 992f
975:              auipc        t1, 283399
                  bne          s2, s8, 977f
977:              auipc        tp, 263912
                  sll          sp, a7, tp
                  sll          s7, sp, a3
                  blt          t5, t4, 997f
                  sra          s4, a4, s4
                  addi         s4, a6, 936
                  ori          t2, s7, 1519
                  or           s4, sp, sp
                  andi         s10, gp, -1697
                  sub          a4, s8, s10
                  xor          tp, a5, t3
                  slti         a4, t3, -800
                  srai         s9, t5, 28
                  sub          s3, a1, a6
                  or           s8, s11, a6
992:              sra          s0, s2, s5
                  slt          sp, ra, t1
                  and          t1, a6, a3
                  sub          s11, s6, s7
                  slt          zero, t1, s1
997:              blt          s10, t0, 1007f
                  nop
                  sltu         s7, s3, s10
                  and          s9, a4, a3
                  blt          a1, sp, 1006f
                  andi         a3, t5, 2001
                  blt          t1, t5, 1006f
                  andi         s7, a5, -1199
                  addi         t3, a7, -1695
1006:             sra          s4, a3, zero
1007:             or           a4, a0, s7
                  slti         s3, sp, 85
                  xori         t3, t4, 1766
                  bne          zero, t1, 1014f
                  srli         s6, t1, 26
                  sltu         t3, t4, gp
                  sra          t2, s5, s4
1014:             xor          s0, t0, s7
                  sltiu        t5, a7, -1907
                  xor          s4, t2, s10
                  srai         s5, t6, 26
                  xori         s4, t1, -1815
                  nop
                  xori         a4, a3, -480
                  slti         a4, t5, 600
                  bgeu         s7, s3, 1025f
                  srl          t1, a6, ra
                  xor          s4, s6, s3
1025:             xori         ra, s0, -173
                  srli         gp, t0, 3
                  addi         a3, t2, -1132
                  slti         a1, t2, 992
                  srl          s7, a5, s1
                  sltu         s8, t6, s7
                  bge          a5, zero, 1041f
                  bltu         s7, ra, 1050f
                  add          t1, t3, t0
                  srai         tp, t5, 6
                  bne          s7, a1, 1036f
1036:             srli         sp, t6, 19
                  sltiu        a7, s4, 1706
                  bltu         sp, t2, 1057f
                  bge          t6, s3, 1055f
                  slli         s2, t6, 31
1041:             slti         t5, s9, -655
                  add          a0, a6, tp
                  ori          a4, s6, 405
                  beq          t0, a1, 1056f
                  nop
                  slt          s7, s7, tp
                  sltiu        s11, t6, 497
                  lui          zero, 468455
                  srl          a5, t4, s6
1050:             srl          s5, t5, s8
                  sra          s2, a4, s10
                  sltu         a3, s11, s10
                  sra          a6, a0, ra
                  xor          a6, s11, s7
1055:             addi         t1, s6, 731
1056:             slt          a2, t1, s5
1057:             bne          s8, tp, 1063f
                  sltiu        s11, s7, -1511
                  sll          s2, a7, a4
                  sltu         a3, s9, t1
                  xori         s5, tp, 75
                  and          s11, s8, t5
1063:             srai         s10, a6, 27
                  xor          t4, a6, s8
                  sub          a0, s0, s5
                  sub          t2, a4, a3
                  addi         s11, a6, -1848
                  xori         tp, t0, 1201
                  xor          s3, s10, a3
                  slli         t5, t5, 24
                  slt          s3, gp, s4
                  lui          t3, 238836
                  lui          s11, 402234
                  xor          s7, sp, s11
                  ori          a1, a6, -479
                  bltu         t5, t2, 1079f
                  sltu         s10, t1, t2
                  xor          sp, s11, s5
1079:             sra          s3, t2, s3
                  and          t4, zero, a4
                  add          zero, t6, a3
                  srli         t4, s8, 23
                  addi         gp, t0, 1
                  andi         s3, tp, 1520
                  or           s2, s4, a1
                  add          t4, t2, s9
                  auipc        tp, 300247
                  sub          t2, s7, s1
                  slt          a2, s7, zero
                  slli         s4, s3, 5
                  andi         a0, a7, -1753
                  sll          s8, s11, a7
                  slli         a6, s5, 25
                  srai         s11, a7, 5
                  andi         ra, a3, 1405
                  andi         t5, t0, 368
                  nop
                  xori         a2, s4, 1265
                  nop
                  lui          s0, 481469
                  xor          a6, s2, t5
                  sub          s7, s6, a4
                  add          a0, a6, s1
                  bltu         a4, s0, 1108f
                  sltiu        t3, tp, -1520
                  sltu         s6, a1, t5
                  xori         s8, t5, 1011
1108:             nop
                  bltu         t6, s5, 1116f
                  and          a4, s9, a7
                  add          a7, s4, a1
                  and          ra, a6, t1
                  slli         t4, s4, 9
                  add          t4, s9, t2
                  nop
1116:             bne          s3, s1, 1125f
                  sltu         s0, a5, s5
                  and          s0, s10, t2
                  addi         s10, s5, 1334
                  and          s11, a4, zero
                  slti         s2, zero, 1395
                  sra          s3, t1, s5
                  or           t5, s2, s10
                  xori         s8, a1, -893
1125:             addi         a3, tp, -520
                  addi         tp, a1, 1022
                  xori         t1, a0, -166
                  xori         t1, s5, 1398
                  or           gp, t5, a7
                  bne          a5, ra, 1140f
                  bge          s6, a1, 1141f
                  lui          s4, 622599
                  srl          s3, a3, s10
                  or           s5, s11, t5
                  nop
                  slt          a7, a4, s11
                  srai         a3, t2, 12
                  sra          ra, s11, a3
                  slli         a0, s8, 12
1140:             beq          t6, zero, 1141f
1141:             sltu         a6, a0, t3
                  xor          t5, ra, s7
                  srai         t5, a4, 29
                  sra          a6, a0, t1
                  or           a7, s2, a1
                  lui          s0, 685956
                  lw           s7, 4(s1)
                  sll          gp, s3, s7
                  or           a1, gp, s11
                  addi         s1, s1, 20
                  ori          t4, a4, -1521
                  sltu         s0, a0, zero
1507:             addi x11, x23, 1
1507:             jalr x11, x11, 0
sub_4:            addi         s1, s1, -24
                  sub          s0, s8, t6
                  srai         zero, s3, 28
                  sw           s7, 4(s1)
                  xori         t5, a6, -110
                  la           s7, region_0+29 #start riscv_load_store_rand_instr_stream_3
                  lhu          sp, -9(s7)
                  lb           s5, -6(s7)
                  slli         s5, a4, 31
                  or           sp, t4, s3
                  nop
                  lhu          a4, -3(s7)
                  addi         s3, a1, -1946
                  and          gp, sp, t6
                  andi         s3, tp, 1823
                  slli         s4, s4, 9
                  lb           tp, 1(s7)
                  lb           a2, -4(s7)
                  lbu          s4, -12(s7)
                  lhu          ra, -7(s7)
                  lbu          s8, -11(s7)
                  slt          s4, a2, t6
                  sb           ra, 0(s7)
                  sub          s5, t6, s7
                  slt          a6, a1, t1
                  lh           s0, 3(s7)
                  sh           s7, -9(s7)
                  or           s8, t5, a1
                  sb           s1, 4(s7)
                  srl          s6, t0, s8
                  srl          t2, a4, a5
                  or           a3, s10, s7
                  slli         t2, gp, 13
                  lui          a5, 847265
                  srli         s10, s1, 21
                  slli         t4, t6, 18
                  srai         s5, a4, 25
                  lh           zero, -9(s7)
                  andi         gp, a0, 762
                  lhu          zero, -9(s7)
                  sh           t2, -5(s7)
                  or           s8, s7, s5
                  slli         a2, t3, 23
                  lb           zero, 10(s7)
                  sltu         tp, t5, zero
                  srl          t5, a0, s8
                  lbu          s10, 0(s7)
                  xori         s5, a1, 730
                  lbu          t2, 15(s7)
                  lbu          t3, 16(s7)
                  slli         s4, s5, 21
                  lh           zero, 5(s7) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+580 #start riscv_load_store_rand_instr_stream_0
                  sltiu        zero, t4, 1497
                  lbu          s6, 9(sp)
                  srl          a7, tp, s1
                  sb           s4, -39(sp)
                  andi         t3, tp, -1489
                  lbu          t2, -49(sp)
                  nop
                  and          t1, s7, s3
                  sb           s1, -21(sp)
                  lbu          a6, -11(sp)
                  sb           s5, 23(sp)
                  or           a7, a1, a5
                  sltiu        t4, s8, -1191
                  lh           a6, 10(sp)
                  sh           s11, 38(sp)
                  ori          a4, t2, 1180
                  slli         s7, zero, 16
                  sb           s4, -57(sp)
                  sb           t5, -43(sp)
                  lhu          s10, 28(sp)
                  lhu          s11, 30(sp)
                  slli         t3, s10, 25
                  sb           t6, 17(sp)
                  sw           ra, 64(sp)
                  lbu          t5, -57(sp)
                  nop
                  lb           s0, -41(sp)
                  sltu         s7, s1, t2
                  add          gp, t2, s2
                  lui          s8, 212489
                  addi         s4, s3, 1484
                  xori         s10, a5, 378
                  sltiu        t5, a0, -341
                  addi         ra, zero, 675
                  slli         s10, s4, 30
                  lhu          zero, -24(sp)
                  sb           s3, -1(sp)
                  lb           zero, 9(sp)
                  lhu          a4, 36(sp)
                  addi         t1, s11, -706
                  srli         a4, s2, 16
                  sb           a4, 50(sp)
                  lbu          t1, -59(sp)
                  sub          s11, s10, ra
                  sltiu        gp, s11, 752
                  sll          a0, s2, gp
                  lb           s5, 9(sp)
                  sb           gp, 55(sp)
                  and          s11, s10, a4
                  sw           s7, 20(sp)
                  sw           sp, -56(sp)
                  lh           a4, 34(sp)
                  ori          t1, s9, 657
                  lb           t5, 44(sp)
                  sb           t1, 15(sp)
                  sub          s5, t4, a5
                  or           tp, tp, s9
                  lbu          tp, 14(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_0+14 #start riscv_load_store_rand_instr_stream_1
                  sll          s3, s11, a6
                  sub          s7, s4, ra
                  sb           t0, 21(s6)
                  srl          a7, s0, s10
                  lw           s8, 6(s6)
                  sb           a1, -1(s6)
                  auipc        t2, 194369
                  sh           t6, 22(s6)
                  and          s8, a3, s4
                  lb           s8, 51(s6)
                  srl          s7, s1, s3
                  sb           s5, 43(s6)
                  or           a2, a1, t6
                  sh           a7, 0(s6)
                  xori         s7, a4, 360
                  lbu          s0, 8(s6)
                  sltu         a2, s0, sp
                  lui          a7, 316292
                  sb           t4, 43(s6)
                  lbu          t1, 3(s6)
                  xori         zero, tp, -773
                  sltu         a7, a3, sp
                  andi         t2, s8, -339
                  sll          gp, s11, a2
                  lui          a1, 530865
                  nop
                  lui          a7, 978394
                  xor          a7, s7, s7
                  auipc        tp, 87006
                  or           s9, t2, a6
                  add          gp, s11, a6
                  auipc        s0, 1032970
                  xori         a3, a0, -1396
                  lbu          a6, -5(s6)
                  slli         s0, a6, 0
                  lb           a0, 31(s6) #end riscv_load_store_rand_instr_stream_1
                  beq          t5, tp, 3f
                  xori         a5, s2, 1580
                  nop
3:                or           s4, a4, ra
                  bltu         zero, s7, 13f
                  srl          tp, s9, s10
                  sub          zero, s8, s9
                  auipc        s8, 548889
                  bne          a3, ra, 28f
                  xor          zero, a3, s4
                  srli         a3, s4, 30
                  auipc        t1, 553925
                  sub          a5, a7, a4
13:               lui          t4, 446018
                  nop
                  slli         s5, t3, 13
                  bge          a7, t5, 36f
                  sub          a6, t5, t6
                  slli         t1, ra, 13
                  sltu         a7, t6, t0
                  sub          a6, s6, t1
                  lui          t1, 966029
                  beq          sp, a4, 25f
                  slt          a2, ra, s5
                  slt          s7, gp, a4
25:               bne          s1, t1, 28f
                  or           s9, s8, a6
                  beq          s4, a5, 30f
28:               xori         a2, tp, 1663
                  andi         s10, s1, 2038
30:               xori         s8, ra, -787
                  lui          t2, 256280
                  addi         a6, ra, -457
                  slli         a0, tp, 21
                  nop
                  auipc        s9, 990983
36:               or           t3, t6, s3
                  slli         a7, gp, 10
                  sltu         s6, a6, t2
                  bltu         s2, ra, 43f
                  sra          s4, a0, s4
                  addi         s3, s8, -343
                  slt          a5, a4, s8
43:               srai         t1, s0, 29
                  beq          t2, s1, 48f
                  srl          s9, t3, s1
                  beq          t2, s6, 47f
47:               xori         a1, t1, 1134
48:               xori         s9, t5, 1629
                  andi         s6, s3, 1387
                  and          s3, s5, a1
                  slti         a3, a3, 1206
                  bne          a7, a1, 70f
                  slli         s7, a5, 2
                  ori          ra, t1, -56
                  xori         s8, s2, -94
                  auipc        t3, 405016
                  lui          s6, 73039
                  xori         t5, a4, 1830
                  slli         a4, s0, 1
                  slti         t3, ra, -983
                  and          a5, t0, t0
                  sltu         s9, t6, ra
                  bne          s3, s2, 68f
                  lui          s9, 613903
                  bne          s1, s7, 82f
                  add          s2, a3, s3
                  and          sp, a7, t3
68:               add          a1, a2, ra
                  andi         ra, t4, 1332
70:               sltu         t2, t5, sp
                  bltu         a3, t3, 74f
                  bltu         a0, t2, 82f
                  sra          a1, a2, s11
74:               add          t1, t1, t2
                  slt          t4, ra, gp
                  beq          s1, a7, 87f
                  bne          gp, s7, 90f
                  slli         a2, sp, 26
                  add          s11, t1, s5
                  slt          ra, s7, s9
                  slli         gp, gp, 25
82:               beq          ra, t6, 90f
                  slli         t5, s3, 15
                  sltiu        s0, s1, -1368
                  bgeu         s11, a5, 86f
86:               nop
87:               lui          a5, 268541
                  auipc        s5, 84229
                  srli         s3, t6, 2
90:               srl          t5, s5, ra
                  srli         s3, s4, 26
                  bgeu         s5, a4, 110f
                  or           s10, t0, ra
                  sltiu        tp, s9, 1057
                  sll          s2, ra, a2
                  auipc        sp, 118662
                  sra          a4, a7, s8
                  srai         a3, t1, 10
                  bltu         ra, t4, 106f
                  or           s0, t1, t0
                  bltu         a2, a0, 113f
                  bltu         s1, t1, 107f
                  and          s7, s7, s6
                  bltu         s5, t2, 116f
                  sll          s0, s3, s11
106:              or           s3, s1, a5
107:              srl          a2, s0, t0
                  bltu         s2, a3, 111f
                  slli         tp, a4, 24
110:              sra          a2, t2, s4
111:              sltu         a1, t3, a2
                  auipc        sp, 549065
113:              sll          t2, s0, s10
                  and          zero, s11, sp
                  sltiu        sp, s5, 810
116:              beq          t0, s3, 134f
                  slli         t3, t1, 19
                  bge          s6, s0, 131f
                  bne          t5, s8, 139f
                  addi         a7, s0, -288
                  xor          s11, t3, s11
                  xor          t3, s7, a3
                  or           gp, t0, a4
                  bltu         ra, a7, 143f
                  or           s4, s5, a6
                  xor          a2, s8, a3
                  lui          s2, 465008
                  andi         s5, s1, -186
                  bltu         s6, gp, 135f
                  auipc        s2, 429847
131:              srai         t4, t5, 5
                  srli         zero, a4, 12
                  sltu         gp, s7, zero
134:              slli         t4, s2, 8
135:              lui          s4, 613793
                  sltu         s6, a7, a0
                  nop
                  or           sp, s5, t0
139:              sltiu        s2, tp, 606
                  sra          s7, t4, t5
                  ori          a0, s10, -813
                  sll          s11, a6, tp
143:              bge          a3, tp, 156f
                  beq          s7, s8, 163f
                  sltiu        s11, t1, -1612
                  sll          s2, a5, s9
                  slli         s4, sp, 23
                  srl          a4, a1, zero
                  beq          s8, zero, 162f
                  bge          a7, s2, 151f
151:              srli         a6, t3, 27
                  sll          s6, a0, a6
                  lui          s11, 16564
                  blt          a7, a3, 157f
                  sll          tp, ra, a4
156:              lui          s5, 94685
157:              add          s2, sp, tp
                  nop
                  lui          a5, 248481
                  srl          s3, t0, a6
                  slt          t4, s9, t3
162:              slli         s0, s8, 22
163:              sll          a5, s7, s5
                  slti         tp, t5, 1729
                  srl          a3, t0, s5
                  or           s11, t4, sp
                  blt          s4, s6, 170f
                  srli         s9, s11, 29
                  beq          t6, s8, 186f
170:              ori          a5, s6, -431
                  andi         s6, s11, -72
                  ori          a2, s0, -343
                  or           a2, a2, a2
                  bne          t2, s1, 177f
                  sltiu        t3, s9, 271
                  or           t4, tp, s8
177:              sll          t5, tp, s3
                  xori         tp, t3, 1175
                  srai         a4, s10, 11
                  sltiu        a4, a5, 863
                  srai         a6, t1, 27
                  lui          a3, 253699
                  slli         a0, t2, 0
                  slli         zero, a5, 17
                  srai         a4, a1, 25
186:              slli         s11, zero, 5
                  srli         s4, a7, 28
                  bge          a5, t2, 200f
                  and          sp, t5, s10
                  or           t2, a5, s8
                  addi         s8, ra, 416
                  addi         a5, t4, -1550
                  slti         sp, t0, 545
                  srli         s2, t0, 27
                  bge          s0, s5, 215f
                  bgeu         a7, a4, 200f
                  auipc        s4, 1003113
                  addi         s4, sp, -126
                  bgeu         a3, s11, 202f
200:              xor          a6, a4, a4
                  nop
202:              ori          s10, t3, 1188
                  sub          a7, s7, t0
                  sra          a5, t0, a3
                  xor          t4, a7, a7
                  slti         a3, s3, 1582
                  blt          a1, s2, 214f
                  sra          a4, s5, a7
                  beq          t3, s0, 227f
                  auipc        t3, 698232
                  bge          t5, s5, 216f
                  bltu         t0, s6, 222f
                  slti         s11, s6, 863
214:              sra          zero, ra, s4
215:              slt          zero, zero, t3
216:              sltu         a0, t5, tp
                  addi         ra, t6, -427
                  xori         s3, ra, 664
                  slli         s10, s9, 20
                  srai         a2, gp, 24
                  slli         s8, s0, 5
222:              sltu         zero, s8, a2
                  sll          s2, s4, s5
                  auipc        t4, 627369
                  add          s2, tp, s5
                  andi         s2, t2, -100
227:              nop
                  nop
                  sll          s3, s3, s5
                  sltiu        a1, s2, 157
                  srl          a6, s7, s8
                  sra          s2, s10, zero
                  slti         gp, t2, -1087
                  add          t1, s10, s8
                  slt          s5, t6, s9
                  blt          s4, t2, 254f
                  bgeu         a0, a5, 257f
                  blt          s11, s9, 241f
                  blt          a6, a5, 251f
                  blt          s1, t5, 249f
241:              blt          s4, s7, 242f
242:              beq          s0, a4, 250f
                  bge          sp, s5, 254f
                  srai         s5, a6, 19
                  ori          tp, s3, 1134
                  srai         a3, tp, 4
                  sltiu        s7, t0, -1161
                  slt          s2, t1, ra
249:              sub          a6, s6, s5
250:              srl          zero, a2, t6
251:              xori         s0, a4, -916
                  srli         s2, a4, 1
                  srai         a0, s8, 26
254:              sltiu        s5, s8, -1628
                  sra          s10, a2, a2
                  beq          ra, a4, 262f
257:              sra          s10, s11, t5
                  bge          t5, a4, 278f
                  srai         s4, s3, 12
                  blt          s9, a5, 278f
                  sltu         s9, s8, s10
262:              and          s5, a1, s8
                  sltu         a5, tp, s0
                  srli         s9, a3, 20
                  bge          s1, s2, 270f
                  sltiu        ra, a1, -1656
                  sltiu        sp, s0, -534
                  sra          t1, t4, t1
                  auipc        t5, 433150
270:              bgeu         a5, t4, 273f
                  slti         zero, tp, 7
                  bne          t0, s3, 276f
273:              xori         t2, a3, -884
                  bge          s6, sp, 291f
                  bne          t1, s1, 278f
276:              bne          s11, a6, 282f
                  srai         t4, s11, 1
278:              slli         a4, t6, 18
                  andi         a7, a6, -1447
                  slti         s5, sp, 905
                  xor          s7, s9, t0
282:              sra          s6, t2, gp
                  or           a3, s11, s3
                  slli         s9, s4, 1
                  sltu         t5, t0, s0
                  or           s11, tp, t4
                  sltiu        t4, s10, -141
                  blt          s5, t1, 293f
                  lui          sp, 526700
                  sltu         s7, t4, s1
291:              bltu         tp, a6, 302f
                  sub          tp, t1, t6
293:              sra          t2, t5, t6
                  nop
                  addi         s9, s8, 961
                  srai         s11, t1, 16
                  ori          zero, s1, -2027
                  slt          a5, a1, gp
                  lui          t2, 430031
                  srli         s4, a5, 14
                  slli         sp, t5, 23
302:              srai         a7, a0, 25
                  or           s0, a0, s1
                  sub          a0, gp, s3
                  andi         s7, t1, 1006
                  slt          s7, a3, a0
                  addi         zero, s3, 827
                  sub          a2, t1, s6
                  slli         a4, s5, 21
                  bgeu         s3, s10, 330f
                  bgeu         a1, t6, 321f
                  bgeu         s4, tp, 332f
                  beq          gp, s1, 326f
                  srai         t2, t5, 30
                  beq          t6, t6, 335f
                  ori          s7, sp, 1334
                  beq          s8, s10, 329f
                  xori         gp, t1, -1235
                  bgeu         s3, a7, 322f
                  sltiu        ra, s4, -1565
321:              sltu         s5, t5, a4
322:              and          a6, t0, s2
                  sub          t1, s1, s3
                  slt          s0, t1, tp
                  bne          s0, gp, 328f
326:              blt          t1, s3, 330f
                  addi         t3, s10, 39
328:              andi         t5, a5, -630
329:              bltu         t5, ra, 342f
330:              nop
                  slt          t5, s10, t2
332:              xor          ra, sp, a0
                  nop
                  sltiu        a1, s6, -1285
335:              slti         s3, t4, 180
                  xori         a3, s7, -1331
                  sltu         a7, s6, a5
                  slti         a5, s3, -1270
                  slti         s4, t5, -1696
                  sra          s5, a6, s9
                  blt          s1, s3, 360f
342:              srl          s9, tp, s4
                  bge          a7, s7, 351f
                  and          a5, s5, s6
                  and          tp, ra, a6
                  and          s5, a1, s6
                  srai         s4, zero, 9
                  sra          gp, s8, t0
                  sra          a6, t0, a5
                  sltiu        s7, sp, 1650
351:              auipc        a2, 836835
                  beq          s9, sp, 357f
                  srli         a4, ra, 31
                  bgeu         gp, a1, 358f
                  ori          s11, t5, 940
                  beq          s4, a0, 363f
357:              bne          s4, s4, 358f
358:              andi         gp, a0, 774
                  andi         a1, t3, -580
360:              slt          t3, s1, a0
                  xor          tp, t1, s2
                  slti         sp, s11, 408
363:              slti         a7, s5, 1983
                  srai         t3, t2, 1
                  slt          t4, s10, t0
                  bgeu         a6, s4, 375f
                  bltu         t5, t4, 370f
                  sra          a1, sp, a5
                  add          t2, s3, a5
370:              bltu         t1, a5, 388f
                  sltu         s9, t4, t5
                  slli         s9, s10, 30
                  sltiu        zero, s7, -257
                  srl          s6, s10, a3
375:              lui          sp, 169527
                  sltiu        a5, a1, -1474
                  sll          a1, s11, t0
                  sltu         a6, t2, zero
                  sll          a0, s7, s6
                  slli         t5, t3, 7
                  sll          t5, t1, a0
                  ori          t3, t5, -285
                  srai         a7, s7, 6
                  and          t4, s5, zero
                  slli         ra, s7, 4
                  add          a3, s9, s3
                  andi         ra, tp, -1366
388:              blt          ra, a3, 400f
                  nop
                  and          s11, ra, t3
                  bne          s11, a3, 394f
                  bge          s8, t5, 410f
                  beq          s7, a4, 394f
394:              ori          ra, t3, -660
                  nop
                  addi         a2, ra, -1319
                  addi         s9, s11, 914
                  slt          s3, t6, zero
                  blt          s7, s8, 402f
400:              slli         a6, s7, 21
                  sltu         s6, sp, s6
402:              sub          s6, t6, s4
                  sltiu        s9, s10, -375
                  xori         s9, gp, -1413
                  srai         t3, s9, 2
                  bge          s11, zero, 424f
                  xori         s4, s3, 793
                  auipc        a5, 440796
                  blt          a7, tp, 412f
410:              slti         a6, t4, -174
                  slli         s11, s2, 20
412:              and          sp, a1, t3
                  xori         s6, zero, -54
                  sub          a3, zero, sp
                  srai         a5, s10, 10
                  and          a0, t5, t5
                  sltiu        t5, ra, 598
                  bne          sp, s10, 423f
                  auipc        a1, 353702
                  lui          tp, 300665
                  addi         s4, s6, -197
                  addi         s8, a6, 255
423:              slli         t1, t3, 2
424:              add          s8, s10, s10
                  bge          a0, t1, 442f
                  srl          a7, zero, a7
                  slti         s3, s4, 1857
                  lui          a6, 560971
                  sra          tp, s11, t2
                  ori          s7, tp, -563
                  or           t1, t2, t6
                  slti         s3, s11, 785
                  blt          s2, t2, 437f
                  andi         s9, t6, 1459
                  nop
                  srl          a5, a3, t2
437:              bne          s11, a0, 456f
                  or           s2, s3, tp
                  srai         s11, s2, 15
                  srai         s9, s3, 20
                  bge          t2, t6, 444f
442:              srai         s9, s1, 12
                  lui          sp, 51346
444:              ori          a3, s7, 1986
                  beq          a5, s9, 448f
                  bne          ra, t6, 464f
                  srl          a5, a3, a0
448:              slt          zero, t2, t5
                  ori          s4, tp, 161
                  sll          t4, t6, s9
                  srli         a5, s0, 29
                  sll          a4, t2, s1
                  sub          sp, zero, t3
                  beq          t6, s3, 457f
                  auipc        a6, 300335
456:              and          s3, s3, t2
457:              blt          tp, t5, 469f
                  srl          gp, gp, s2
                  beq          t5, ra, 466f
                  add          s2, s5, a5
                  bge          a0, t5, 479f
                  bgeu         s11, s4, 471f
                  bgeu         s7, tp, 475f
464:              nop
                  la           s11, region_1+518 #start riscv_load_store_rand_instr_stream_2
                  lbu          t1, 1(s11)
                  slt          a6, a0, a2
                  sll          t3, a1, s7
                  sub          s4, a5, s1
                  nop
                  lb           t3, 13(s11)
                  lb           gp, -11(s11)
                  sb           s9, -9(s11)
                  sb           s11, 3(s11)
                  slli         s2, t0, 1
                  slli         s9, a4, 20
                  lui          s10, 968351
                  lbu          tp, -10(s11)
                  lbu          zero, 5(s11)
                  nop
                  lb           a1, 8(s11)
                  sb           a2, 0(s11)
                  sub          a1, sp, s0
                  sb           s11, -11(s11)
                  sb           t1, -9(s11)
                  lb           t3, -4(s11)
                  sh           a1, 2(s11)
                  lbu          s3, -11(s11)
                  addi         s9, s2, 344
                  sh           a4, 12(s11)
                  sh           s7, -8(s11)
                  lbu          a2, 15(s11)
                  sub          a6, t3, t2
                  lhu          a6, -10(s11)
                  sltiu        t5, t3, -193
                  lb           s2, 11(s11)
                  sb           s4, -8(s11)
                  sb           tp, -10(s11)
                  lb           gp, -1(s11)
                  nop
                  lui          s0, 711839
                  lb           s8, 5(s11)
                  lb           a5, -15(s11)
                  andi         a5, gp, -1226
                  sltiu        gp, a1, -1165
                  sltiu        s3, s11, 1446
                  sh           s4, -16(s11)
                  slt          a0, a3, ra
                  srai         s6, t4, 28
                  sb           t6, 10(s11)
                  sb           s5, 13(s11)
                  lh           s8, -16(s11)
                  lh           t2, 8(s11)
                  lb           a2, -8(s11) #end riscv_load_store_rand_instr_stream_2
                  beq          s8, gp, 466f
466:              ori          zero, s9, 694
                  bgeu         tp, a5, 475f
                  beq          s0, s11, 488f
469:              andi         s10, a0, -1893
                  srai         t1, s7, 27
471:              bgeu         t2, zero, 474f
                  xor          s8, t6, sp
                  xor          s10, a5, s9
474:              slt          t4, s9, s4
475:              ori          s0, s7, -85
                  srli         s10, s8, 15
                  add          t3, s5, s4
                  srl          zero, a7, s4
479:              bge          gp, s6, 497f
                  nop
                  addi         t4, a6, -1048
                  beq          a4, zero, 495f
                  and          s9, a2, t5
                  slli         a4, a2, 22
                  addi         t5, s10, 991
                  add          ra, s2, zero
                  xor          a7, s4, sp
488:              and          t1, a0, ra
                  sra          a1, zero, s8
                  andi         a6, s11, -1902
                  srl          s4, s0, t6
                  bgeu         a5, t3, 498f
                  slli         t4, t3, 1
                  add          sp, s3, s1
495:              blt          a2, s3, 499f
                  sll          s8, t1, ra
497:              auipc        s6, 195083
498:              srli         sp, zero, 12
499:              ori          sp, t5, 288
                  sltu         t3, s8, s2
                  beq          s8, a3, 521f
                  xori         a7, gp, 1661
                  andi         a2, a2, -847
                  bgeu         s4, t6, 514f
                  beq          ra, s4, 508f
                  bltu         a5, gp, 526f
                  sll          t3, a5, s8
508:              bltu         t5, t3, 513f
                  sra          s9, s4, s9
                  andi         ra, zero, -349
                  bgeu         a3, a1, 512f
512:              bge          a0, s5, 525f
513:              bltu         s8, t6, 524f
514:              lui          t1, 147993
                  lui          ra, 34496
                  nop
                  blt          s11, sp, 521f
                  bge          s3, a4, 538f
                  bltu         t4, a6, 520f
520:              addi         a4, sp, 1230
521:              beq          t0, tp, 525f
                  lui          s4, 794264
                  sltiu        t1, a0, -992
524:              nop
525:              sub          a2, t4, s11
526:              xori         gp, s4, 2026
                  sra          s4, s2, a4
                  sll          s9, s10, t6
                  bltu         t0, s0, 532f
                  bltu         s6, s10, 538f
                  sra          a3, ra, gp
532:              srl          tp, t0, t2
                  addi         s4, s0, 2041
                  srai         s2, t1, 17
                  slli         gp, t2, 14
                  bne          t5, ra, 554f
                  sltiu        s3, t0, -1315
538:              sltu         zero, s10, s6
                  bgeu         t2, s4, 546f
                  sll          s11, a0, s10
                  nop
                  blt          s2, t5, 560f
                  or           s0, t2, t6
                  bne          a2, a1, 564f
                  xor          s3, a1, s9
546:              sll          a5, t2, t0
                  srl          s7, s2, t0
                  bltu         a7, t4, 549f
549:              add          sp, s6, s3
                  xori         a7, gp, 1607
                  slli         tp, a6, 14
                  slli         s5, a0, 30
                  srli         a3, s7, 4
554:              lui          s0, 222492
                  slti         a7, s1, -1558
                  sltiu        s11, t6, -1515
                  xori         s11, a4, 34
                  bne          tp, ra, 576f
                  slli         gp, s5, 14
560:              blt          a7, a5, 580f
                  bge          t3, s6, 567f
                  slti         a2, a1, -1286
                  slli         a1, t5, 16
564:              slt          t4, t6, t0
                  slti         s2, s3, 598
                  srai         s5, s8, 18
567:              bltu         a5, s3, 570f
                  srli         s6, a5, 15
                  slt          a4, s3, t3
570:              sll          s8, s1, t2
                  xor          t3, s5, sp
                  nop
                  sra          t1, a5, t2
                  slli         s2, s2, 12
                  nop
576:              sub          s8, s7, t4
                  slt          s10, s3, a0
                  sub          t3, a2, sp
                  ori          sp, s11, 633
580:              blt          a7, a0, 589f
                  add          a4, s3, a5
                  slti         s3, t4, -1165
                  auipc        t1, 824182
                  sltu         s2, a6, s0
                  srl          sp, s1, a0
                  xor          sp, a6, t5
                  slli         s8, zero, 1
                  and          s9, s7, s8
589:              bltu         s7, a0, 592f
                  andi         s3, s4, -1877
                  slli         a4, s9, 24
592:              bgeu         s11, a7, 596f
                  bge          a7, t4, 596f
                  bltu         t4, a5, 596f
                  blt          t2, s7, 596f
596:              srli         s5, tp, 15
                  srl          a5, t3, t5
                  xor          s0, a5, s5
                  srai         gp, s8, 31
                  add          a7, sp, t4
                  lw           s7, 4(s1)
                  sltu         ra, s5, a3
                  xori         t4, t1, 720
                  xori         s10, t6, -863
                  add          t2, s5, s9
                  addi         s1, s1, 24
                  slti         a4, s9, 69
                  sltiu        s9, t6, -1213
807:              addi x7, x23, 0
807:              jalr x7, x7, 0
sub_6:            srli         t1, s7, 17
                  addi         s1, s1, -44
                  slti         a0, s11, -1806
                  sw           s7, 4(s1)
                  ori          zero, a3, 1812
                  lui          gp, 990738
                  slti         s4, a4, -268
                  andi         s0, t5, 37
                  sltiu        tp, t4, 650
                  sltu         t3, t4, s2
                  slli         s4, s9, 4
                  la           sp, region_1+1795 #start riscv_load_store_rand_instr_stream_0
                  sltu         s11, s11, s1
                  lbu          s0, -664(sp)
                  lbu          a2, -1313(sp)
                  lui          a7, 951480
                  lb           t4, -282(sp)
                  andi         a6, a3, 304
                  sll          a4, a4, t5
                  srai         s0, s9, 0
                  lbu          t4, -850(sp)
                  lb           s2, -1784(sp)
                  lhu          a7, -1169(sp)
                  slt          ra, s11, a3
                  lbu          s8, -1522(sp)
                  sb           t4, -663(sp)
                  sll          a5, zero, s4
                  sb           s5, -1521(sp)
                  lui          s6, 865504
                  slti         a4, zero, -1302
                  addi         a1, a4, 1721
                  and          a1, s0, s11
                  lw           gp, -311(sp)
                  slli         s5, zero, 9
                  and          s11, sp, t4
                  lb           a5, -576(sp)
                  sb           zero, -46(sp)
                  sh           a6, -887(sp)
                  srli         s11, s3, 5
                  sh           t4, -485(sp)
                  lw           a5, -215(sp)
                  sub          s8, t4, a6
                  or           t3, t3, a4
                  auipc        s10, 761909
                  lb           s0, -1127(sp)
                  lb           s9, 50(sp)
                  sb           a6, -1687(sp)
                  lbu          s11, -885(sp)
                  lb           t4, -1213(sp)
                  srai         s5, a3, 8
                  sw           a2, -443(sp) #end riscv_load_store_rand_instr_stream_0
                  beq          zero, t6, 18f
                  bgeu         a7, s8, 5f
                  bge          s8, s0, 22f
                  sll          a0, s0, t6
                  bltu         s10, a3, 19f
5:                bgeu         t3, s6, 15f
                  or           t4, t4, zero
                  srli         a3, a5, 2
                  blt          a2, s2, 18f
                  sub          gp, s9, tp
                  sltu         s7, s6, t3
                  srl          tp, zero, s7
                  sra          t4, t2, t4
                  sll          t5, s8, t3
                  slli         a1, sp, 10
15:               srai         s2, s2, 8
                  nop
                  auipc        t5, 124375
18:               andi         t2, a7, -712
19:               lui          s2, 318166
                  sltiu        s2, t4, 296
                  bne          s11, tp, 22f
22:               srli         s10, s7, 7
                  bne          s4, s1, 31f
                  sra          t1, s8, s9
                  and          ra, t0, t0
                  sltiu        a5, t3, 581
                  xor          a0, a2, t2
                  nop
                  nop
                  srli         s5, s8, 3
31:               srai         s10, a5, 22
                  la           sp, region_0+603 #start riscv_load_store_rand_instr_stream_1
                  lw           a5, -31(sp)
                  lhu          t5, 35(sp)
                  xor          a7, s5, s0
                  and          s7, a6, gp
                  sb           sp, -57(sp)
                  lh           s2, 13(sp)
                  lhu          zero, 7(sp)
                  lb           tp, 40(sp)
                  sb           s10, -45(sp)
                  lb           t1, 23(sp)
                  lb           a5, 7(sp)
                  lbu          a5, 54(sp)
                  sb           s4, 40(sp)
                  sh           a1, -17(sp)
                  lhu          s9, 51(sp)
                  srai         t4, s1, 10
                  ori          a3, s8, 245
                  sw           t0, 21(sp)
                  sw           a2, 33(sp)
                  lbu          a3, 25(sp)
                  auipc        t4, 879299
                  lbu          s9, 53(sp)
                  ori          s7, s8, -1832
                  auipc        ra, 170957
                  xori         s7, s3, -417
                  sb           a6, -4(sp)
                  lb           a6, 54(sp)
                  lb           s11, 24(sp)
                  slli         t1, s5, 22
                  lb           a4, 48(sp)
                  sltu         a2, a4, s1
                  sb           t3, 16(sp) #end riscv_load_store_rand_instr_stream_1
                  sll          a1, s0, s11
                  srli         s4, a0, 26
                  sub          s6, t3, s9
                  slti         zero, s0, -1284
                  ori          sp, s11, 1526
                  srli         a4, t2, 7
                  xori         a7, s4, -1944
                  lui          s8, 975644
                  or           t5, tp, tp
                  slti         s3, t3, 440
                  andi         a6, t2, 1044
                  srli         s7, tp, 6
                  sub          s5, a6, s1
                  lui          a3, 985458
                  bne          a2, s8, 55f
                  sltu         s8, s6, a4
                  addi         a7, s8, 1134
                  andi         s2, t2, 1922
                  sltu         s7, s8, a4
                  bgeu         t2, zero, 67f
                  sltu         s4, a5, a0
                  xor          a3, s0, s0
                  addi         a3, s3, -1509
55:               sltu         a7, t1, a0
                  sltiu        a7, a2, 789
                  or           s11, s6, s0
                  nop
                  or           s4, t3, s9
                  xori         t3, s8, 1893
                  sltu         t5, a1, a1
                  and          s11, s7, ra
                  sll          t3, t5, zero
                  andi         s0, tp, -104
                  and          a4, s7, a2
                  xori         a5, s11, 1990
67:               addi         s11, t0, 628
                  srl          s6, a5, s7
                  bne          s5, s0, 79f
                  sll          gp, ra, a7
                  ori          a2, gp, -333
                  bne          s6, ra, 89f
                  bne          t4, a7, 91f
                  or           s10, s7, gp
                  sltiu        t4, s11, 702
                  slt          s11, s10, a7
                  addi         a0, sp, 1455
                  sltu         tp, t6, t5
79:               bge          tp, a5, 90f
                  sltu         a0, s10, a4
                  slli         a3, s5, 26
                  slli         gp, s0, 2
                  nop
                  add          t3, t2, t2
                  srl          gp, a4, t4
                  xori         t2, t6, -1310
                  srai         a1, t5, 20
                  sltiu        tp, s5, -1765
89:               slli         tp, t2, 19
90:               sub          s11, a5, s8
91:               add          s10, s10, t5
                  bge          s6, t0, 105f
                  slli         s8, s0, 19
                  slt          s10, a4, a4
                  addi         s0, s11, 752
                  addi         t4, a2, -1204
                  auipc        t3, 436423
                  slli         t5, s10, 28
                  sub          a4, a5, a5
                  auipc        t3, 669860
                  bltu         t5, s8, 117f
                  sub          s0, gp, a5
                  xor          a0, s2, a7
                  sub          a0, ra, s5
105:              slt          t5, s3, s1
                  blt          t2, t2, 109f
                  blt          zero, sp, 117f
                  bge          zero, a7, 111f
109:              sub          gp, ra, s6
                  sub          a1, a7, s1
111:              sub          ra, a1, zero
                  ori          s5, t0, 2020
                  addi         s5, s7, -257
                  lui          t4, 402074
                  ori          a6, t6, -1550
                  slti         ra, a7, 238
117:              bge          s7, s8, 135f
                  sra          s10, sp, tp
                  slti         a4, t0, 658
                  beq          a4, s7, 136f
                  sub          a2, zero, ra
                  sll          s6, s10, a4
                  addi         t3, t6, 34
                  srli         t2, t0, 4
                  xor          s2, s11, a4
                  ori          t1, s2, -1308
                  sltiu        t4, a2, -1257
                  or           s7, s11, s8
                  bltu         s4, a2, 141f
                  lui          t4, 900926
                  and          t4, ra, t4
                  sra          t5, s10, a2
                  andi         tp, s4, -723
                  auipc        t1, 658966
135:              srli         a1, t1, 5
136:              add          t1, a2, zero
                  add          ra, s7, t0
                  sub          s3, t1, t2
                  and          a1, s0, s7
                  bltu         a2, t3, 158f
141:              srai         t3, s1, 2
                  srai         ra, s5, 2
                  sub          zero, s5, a3
                  sltiu        a4, s7, -1651
                  srai         s4, gp, 17
                  addi         s11, s7, 1458
                  and          s3, a0, a2
                  slti         a6, ra, -222
                  sub          a6, a1, s11
                  or           zero, ra, t5
                  ori          s2, s8, -843
                  and          a7, a3, s10
                  bne          s8, zero, 156f
                  srai         t4, t4, 4
                  sll          sp, s10, tp
156:              bltu         s1, s0, 171f
                  and          s2, a6, s10
158:              ori          a2, s7, 80
                  slt          t4, a4, zero
                  bltu         sp, gp, 173f
                  and          a1, s5, s0
                  sll          s11, s3, a7
                  add          s7, gp, t0
                  srli         a4, a0, 26
                  slti         s4, a4, 200
                  sub          ra, s1, s5
                  xori         a6, a3, -657
                  blt          a1, s1, 170f
                  andi         gp, a4, -139
170:              sll          a2, gp, s4
171:              sra          s8, s10, s4
                  or           s3, s5, a7
173:              sll          a6, s2, a3
                  srli         ra, zero, 0
                  nop
                  andi         t3, t5, -1453
                  sub          s3, gp, sp
                  addi         a4, t0, 1690
                  nop
                  srli         tp, sp, 28
                  sra          s8, s2, s11
                  xor          a5, a2, s11
                  bgeu         a0, s4, 194f
                  srl          t4, s1, a1
                  bne          a2, t0, 191f
                  add          t1, a5, a2
                  sltiu        a6, s11, 1518
                  xori         s0, s6, 1396
                  sub          s0, zero, s5
                  bge          tp, t1, 210f
191:              auipc        t2, 33873
                  bltu         a7, s6, 210f
                  bltu         a1, s6, 201f
194:              slti         gp, t3, 826
                  srli         t2, t1, 20
                  srai         a1, a4, 2
                  addi         t1, a6, 884
                  bltu         a3, t5, 209f
                  and          a3, a2, a6
                  bge          zero, a3, 209f
201:              sltiu        s2, a5, -759
                  and          a7, ra, s2
                  slti         a4, s11, -252
                  add          a3, s8, s1
                  addi         zero, a3, 333
                  or           t4, a7, t6
                  slti         s2, t2, 168
                  ori          sp, a0, 315
209:              bgeu         t0, s2, 221f
210:              bge          tp, a4, 223f
                  auipc        a3, 114566
                  lui          s2, 308430
                  xori         s7, zero, 1242
                  addi         zero, t6, -763
                  bne          a2, t0, 218f
                  lui          a5, 557243
                  bne          s5, gp, 237f
218:              auipc        t5, 848504
                  andi         s3, a3, -1567
                  sll          a5, zero, sp
221:              bne          s0, t6, 237f
                  sra          zero, s11, a0
223:              add          s7, s5, s1
                  slt          a0, a0, t2
                  sra          a5, a3, s8
                  sll          gp, s2, t3
                  and          a6, t2, s8
                  bgeu         s6, tp, 246f
                  ori          t5, a3, 109
                  srl          s7, ra, t6
                  bne          s7, s1, 248f
                  sub          s6, a6, t6
                  auipc        a4, 930217
                  bltu         t1, a4, 250f
                  sll          a1, gp, t3
                  bltu         s7, s10, 242f
237:              ori          a6, s4, -1250
                  srli         tp, s8, 19
                  or           s6, t6, t5
                  blt          zero, s1, 243f
                  sltu         a3, a5, a1
242:              slti         a4, a1, 1439
243:              nop
                  sltiu        ra, zero, 668
                  bge          s3, t2, 255f
246:              beq          s7, a7, 266f
                  add          s8, s3, a3
248:              bltu         t3, t5, 250f
                  srli         s2, gp, 6
250:              and          s2, t6, s3
                  bltu         a3, s6, 266f
                  andi         zero, t5, -1088
                  lui          s2, 469937
                  auipc        t4, 662571
255:              lui          zero, 781630
                  ori          a0, s3, -1071
                  srai         t5, a4, 2
                  xor          s2, s5, t4
                  addi         a2, s10, 1312
                  bgeu         a1, t1, 264f
                  andi         a3, t1, -423
                  beq          s5, tp, 263f
263:              slt          s10, s7, s0
264:              xori         s3, s4, -1956
                  sltu         a3, s0, t3
266:              srai         t2, s4, 21
                  addi         a3, s1, -2044
                  auipc        a2, 1014649
                  nop
                  bne          t4, a3, 288f
                  blt          tp, s9, 281f
                  slt          s10, a7, s2
                  srli         s6, s2, 8
                  bltu         a0, s6, 292f
                  sra          a6, s8, ra
                  add          ra, a2, t2
                  xor          t5, t1, s4
                  auipc        s3, 793093
                  sltu         tp, t2, s8
                  bltu         s2, a1, 290f
281:              xori         a4, t6, -298
                  sub          gp, t4, s6
                  srli         a0, s1, 15
                  auipc        s9, 299671
                  slti         s7, s0, -515
                  slt          a6, s11, a2
                  bne          s3, s11, 300f
288:              sll          s6, s0, a5
                  beq          a6, tp, 302f
290:              andi         t5, a4, -829
                  andi         a5, a6, 1189
292:              and          s2, a1, s11
                  sll          s2, t3, ra
                  bge          ra, ra, 302f
                  bne          s5, a7, 298f
                  and          s2, a3, s8
                  and          s6, s1, sp
298:              blt          s8, a3, 302f
                  xori         a3, s1, -485
300:              bgeu         sp, tp, 302f
                  and          s9, a5, s9
302:              sub          a3, gp, s9
                  ori          s5, s2, -907
                  xori         t4, s10, -1803
                  add          t4, t4, t3
                  slli         a1, a4, 6
                  and          t2, s5, sp
                  srli         s6, t5, 25
                  lw           s7, 4(s1)
                  addi         s1, s1, 44
                  sltiu        t3, a3, -1168
396:              addi x16, x23, 0
396:              jalr x16, x16, 0
sub_7:            sub          gp, s8, s8
                  srl          s3, gp, a3
                  bgeu         t3, s2, sub_7_stack_p
                  sll          tp, zero, s4
                  or           s0, s5, s0
                  auipc        sp, 715105
                  srli         s0, a7, 20
sub_7_stack_p:    addi         s1, s1, -20
                  slt          sp, s11, s11
                  sw           s7, 4(s1)
                  sltu         t5, t1, s11
                  la           a2, region_1+1005 #start riscv_load_store_rand_instr_stream_2
                  slli         s6, a6, 10
                  xor          a0, t0, s10
                  lb           gp, 5(a2)
                  lui          s2, 762408
                  add          a3, s2, s1
                  sb           a6, 3(a2)
                  slti         s7, t5, -549
                  srai         gp, s6, 4
                  lh           sp, 7(a2)
                  add          s2, s9, s9
                  xor          a5, t1, a4
                  sra          a5, a6, t1
                  slt          t5, a5, a6
                  sb           s9, 12(a2)
                  lbu          s8, -16(a2)
                  xori         s6, a6, -318
                  addi         s7, t0, -1059
                  sub          a5, s8, gp
                  lui          t2, 609393
                  addi         s7, s0, -1195
                  and          a3, a7, a7
                  lbu          s5, 0(a2)
                  lbu          t5, 13(a2)
                  srli         s5, t4, 12
                  slt          t2, s5, s5
                  lui          t4, 466687
                  sra          t4, s7, s5
                  lb           zero, 16(a2)
                  lb           t3, -14(a2)
                  sra          s11, t2, s11
                  sra          a7, a5, zero
                  srli         sp, a0, 12
                  sra          t3, a4, ra
                  lb           t5, -8(a2)
                  addi         s11, t6, -1673
                  lbu          s4, 8(a2)
                  lbu          t5, 16(a2)
                  lh           zero, -13(a2)
                  sra          a5, s2, sp
                  slti         s7, s2, -1054
                  lbu          a5, -16(a2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+773 #start riscv_load_store_rand_instr_stream_0
                  lw           a2, 239(sp)
                  lbu          s8, 188(sp)
                  lhu          t3, 229(sp)
                  lbu          t1, 63(sp)
                  sh           s5, 31(sp)
                  xori         a4, s2, 1601
                  sb           s8, 96(sp)
                  lui          a6, 920660
                  lb           t5, -103(sp)
                  lb           ra, -236(sp)
                  lb           s9, -223(sp)
                  addi         a6, s3, -1910
                  andi         a1, s9, -1450
                  auipc        s5, 245639
                  sb           s8, -166(sp)
                  sh           s2, -103(sp)
                  srli         s8, a7, 28
                  and          a1, zero, s10
                  sb           s1, 68(sp)
                  lbu          t4, 26(sp)
                  sb           a6, 22(sp)
                  lhu          s6, 227(sp)
                  lbu          s5, 223(sp)
                  add          s11, a4, t5
                  andi         s6, t2, 1982
                  add          s2, a6, gp
                  lhu          s9, -97(sp)
                  sb           a1, -36(sp)
                  lh           a5, 65(sp)
                  sb           t1, 58(sp)
                  lb           zero, -140(sp)
                  srl          ra, s10, sp
                  sltiu        a3, s8, 1539
                  lbu          ra, -47(sp)
                  lb           t4, -198(sp)
                  auipc        t5, 54305
                  addi         s7, t5, 1284
                  add          s5, a0, tp
                  andi         a3, s1, 1807
                  srl          gp, t1, s11
                  sub          s8, t6, a5
                  sh           s2, -65(sp)
                  andi         s3, a2, -1907
                  lui          s0, 45307
                  sll          s10, zero, s7
                  or           ra, t3, sp
                  lb           a5, 48(sp)
                  sltu         a2, gp, a4
                  sb           a2, -81(sp)
                  sb           t0, 29(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1247 #start riscv_load_store_rand_instr_stream_3
                  xor          s2, a7, t1
                  xor          a6, a1, s9
                  sb           s5, -10(sp)
                  sb           a5, -1(sp)
                  sh           zero, -7(sp)
                  nop
                  slt          s5, s4, zero
                  srl          s9, a0, a4
                  addi         a4, t1, -380
                  auipc        s0, 319602
                  ori          a1, a3, 1924
                  sra          s7, t3, tp
                  lb           s10, 10(sp)
                  sb           t2, -16(sp)
                  sll          a4, t1, s5
                  lb           t1, -4(sp)
                  add          zero, s5, t5
                  sb           s1, -7(sp)
                  sltiu        s9, s3, 135
                  slt          zero, s7, s9
                  lb           s7, -11(sp)
                  lb           t1, 14(sp)
                  srl          t3, s10, s4
                  nop
                  sb           t6, 12(sp)
                  sb           s11, 0(sp)
                  xori         s8, s5, -1662
                  sh           s6, -9(sp)
                  sltiu        a4, s0, -643
                  srli         s6, s8, 6
                  lbu          t4, 2(sp)
                  sll          a6, a5, s11
                  lbu          s3, -8(sp) #end riscv_load_store_rand_instr_stream_3
                  bltu         a4, a6, 5f
                  ori          a2, s6, 1854
                  srli         a6, s9, 2
                  bne          s4, s4, 15f
                  srl          s4, s4, t2
5:                slli         ra, t0, 14
                  beq          a7, s4, 10f
                  addi         a5, ra, -1984
                  xori         s9, a6, 298
                  nop
10:               slli         t2, t3, 3
                  ori          a1, tp, -788
                  lui          zero, 1028195
                  xori         sp, a4, 336
                  auipc        t4, 926134
15:               blt          a0, t0, 17f
                  srl          a6, a2, t3
17:               addi         a7, gp, 303
                  bgeu         s0, s8, 20f
                  blt          s6, s7, 20f
20:               srli         a1, t0, 31
                  and          a5, t1, s6
                  xori         gp, a3, 1268
                  bltu         t0, sp, 40f
                  sltu         zero, s2, a7
                  add          s7, a6, s0
                  sltu         s5, a2, zero
                  blt          tp, t4, 43f
                  add          a4, t0, a5
                  or           a2, s9, a6
                  sltiu        s8, s8, 818
                  bne          t5, t2, 37f
                  sltiu        t4, s0, -545
                  bltu         a1, t4, 35f
                  bge          a2, a3, 42f
35:               add          s5, t1, t0
                  ori          s11, s11, -2044
37:               beq          a5, a6, 49f
                  add          s0, t0, s10
                  bge          s3, tp, 48f
40:               ori          a0, a1, -1179
                  nop
42:               bne          t0, s3, 52f
43:               srl          t2, s6, t3
                  srai         t1, s5, 14
                  sra          s11, s5, s1
                  bne          t0, a7, 50f
                  xori         t1, s1, 984
48:               srli         a5, a2, 6
49:               blt          t0, tp, 65f
50:               add          a2, tp, s3
                  or           t4, tp, s7
52:               sltiu        a4, gp, 1558
                  xori         s2, zero, 1298
                  auipc        a5, 1046036
                  srli         s0, t6, 10
                  srli         gp, s3, 27
                  add          sp, a3, t3
                  beq          t3, s11, 73f
                  bne          t0, t0, 71f
                  xori         s6, sp, 1180
                  slli         a2, s0, 23
                  lui          a5, 665056
                  slt          s4, t5, s0
                  bltu         s4, s0, 82f
65:               sltiu        a4, t1, -1999
                  slli         t4, t5, 31
                  srl          t1, gp, s4
                  or           s11, s1, a4
                  and          s7, s9, sp
                  xori         tp, t3, 192
71:               bge          a6, a2, 78f
                  bltu         s3, t3, 74f
73:               sra          s5, s11, s2
74:               addi         t1, sp, -1121
                  srai         s2, gp, 9
                  xor          s7, a4, s3
                  la           s5, region_0+1218 #start riscv_load_store_rand_instr_stream_1
                  sltiu        s10, a4, 323
                  addi         t3, s5, 967
                  andi         a6, a7, -1178
                  slli         t3, s0, 30
                  nop
                  srli         t4, t2, 21
                  srli         a0, t6, 3
                  and          t4, s7, s3
                  slti         a6, a3, -1369
                  srli         a1, t5, 15
                  sb           s6, -89(s5)
                  srl          s6, zero, s4
                  add          t4, t6, sp
                  srl          a3, s11, s10
                  sltu         a0, t1, a5
                  srai         s10, s6, 1
                  and          s8, t2, t2
                  sb           s11, -53(s5)
                  sb           ra, -181(s5)
                  lbu          s11, 125(s5)
                  lb           sp, 67(s5)
                  srl          t1, t4, a1
                  srl          s11, ra, a0
                  xor          s7, t0, s7
                  sll          s10, t0, s7
                  slti         ra, s9, 1438
                  lbu          s4, -238(s5)
                  slti         a1, t6, -1887
                  lh           s2, -254(s5)
                  srai         t1, s5, 25
                  srl          a2, s3, gp
                  sb           t0, -241(s5)
                  slti         s3, a3, -729
                  sb           t6, 175(s5)
                  sb           s1, 32(s5)
                  xori         sp, s9, 202
                  srl          s8, s7, t5
                  slli         a6, s11, 1
                  lbu          zero, 162(s5)
                  sb           s7, 193(s5)
                  sltiu        s4, a5, -387
                  sb           t3, 73(s5)
                  lb           s6, 79(s5)
                  srl          s3, s9, ra
                  sb           a1, 243(s5) #end riscv_load_store_rand_instr_stream_1
                  sltu         s8, s3, tp
78:               bltu         s0, t4, 86f
                  add          t4, gp, a3
                  andi         s2, a4, 703
                  bne          ra, a5, 96f
82:               slt          t3, s6, s0
                  srli         a7, s5, 9
                  srli         a2, t0, 11
                  srli         a7, a4, 7
86:               and          a1, zero, sp
                  sltu         s5, a7, t6
                  andi         s11, t4, -1233
                  or           a2, s7, s3
                  bne          s11, s5, 109f
                  auipc        sp, 170597
                  xor          s7, a2, t4
                  sll          a3, ra, s3
                  or           s2, s6, a3
                  slt          zero, t6, a4
96:               srli         s3, t3, 22
                  andi         a1, gp, -1667
                  bne          s4, s9, 105f
                  sra          s9, tp, a0
                  auipc        s11, 845813
                  bge          a0, a4, 112f
                  and          a4, a0, s3
                  srli         s11, a7, 8
                  add          a3, a6, a4
105:              bge          t1, s10, 106f
106:              ori          s6, s0, -1625
                  sltiu        s11, t6, -1000
                  lui          s8, 1038588
109:              srl          tp, s7, sp
                  srai         a7, a1, 1
                  or           a6, tp, tp
112:              sll          a7, a2, sp
                  slli         a5, a0, 18
                  andi         s6, tp, -1078
                  lui          a4, 561899
                  xor          s4, a2, sp
                  sltiu        t2, s9, 1193
                  sra          t2, a7, s11
                  andi         s10, a4, -1980
                  blt          a1, s7, 131f
                  slti         t4, s5, 486
                  bltu         t5, s7, 125f
                  xor          t3, s6, t6
                  addi         s7, s6, 1107
125:              slli         a6, t4, 13
                  nop
                  bltu         t3, s4, 135f
                  or           a1, zero, a0
                  andi         t4, s9, 1491
                  slli         s9, t0, 19
131:              bgeu         s6, a2, 146f
                  bltu         s0, a1, 139f
                  and          a3, s2, s2
                  bltu         t0, t2, 139f
135:              slli         sp, a2, 25
                  slti         t1, a5, -1894
                  xori         s8, t4, 1236
                  bltu         a3, s6, 150f
139:              nop
                  bgeu         t1, a0, 158f
                  bltu         a4, s1, 149f
                  nop
                  bne          t1, s6, 160f
                  bgeu         s5, s1, 155f
                  and          s10, a1, s1
146:              andi         t4, s2, -1068
                  slli         a1, s8, 18
                  srai         s2, s1, 3
149:              lui          t3, 8343
150:              lui          t5, 914749
                  beq          t6, s10, 170f
                  slli         s3, a2, 5
                  beq          a0, s11, 157f
                  bgeu         zero, a4, 166f
155:              sub          s11, t4, a6
                  sltu         s10, t1, s10
157:              beq          s6, a2, 167f
158:              sll          s11, t1, t1
                  sltiu        s4, t1, -1120
160:              sltiu        s8, a5, 1283
                  xor          a7, gp, t2
                  addi         s9, s2, 1241
                  sltu         zero, a1, s2
                  bgeu         a2, s10, 173f
                  auipc        s2, 720283
166:              beq          s9, t4, 168f
167:              bltu         s9, t0, 170f
168:              sll          t5, a3, t1
                  sub          s4, t5, t5
170:              sltiu        s0, s10, -1586
                  sra          s11, s11, t6
                  lui          zero, 766635
173:              andi         ra, t0, -1911
                  sra          sp, s2, zero
                  addi         s9, a0, -1459
                  nop
                  bne          sp, s8, 185f
                  nop
                  bne          s3, zero, 191f
                  bltu         t5, a2, 181f
181:              lui          t1, 877345
                  blt          a4, s2, 198f
                  sltiu        s2, s0, 228
                  and          s7, t6, a1
185:              add          zero, s2, t6
                  lui          tp, 178944
                  xori         s3, a3, -1276
                  slli         t4, s11, 5
                  sll          t5, s6, a0
                  blt          s6, t4, 198f
191:              or           a6, s11, a1
                  blt          zero, s4, 194f
                  sltiu        gp, t4, -791
194:              and          a2, a2, t0
                  ori          a3, a2, -448
                  srli         a6, s7, 15
                  beq          a7, a1, 208f
198:              addi         t1, s0, -1537
                  slti         s9, a1, -881
                  lui          a4, 667563
                  bltu         t0, s10, 207f
                  xori         a7, a6, -1953
                  and          s4, ra, sp
                  bne          s4, t0, 206f
                  blt          t2, a3, 212f
206:              and          t2, a7, s6
207:              sltiu        a5, s9, 1314
208:              xor          s8, s2, t5
                  slli         t1, a1, 6
                  xor          a4, t2, s10
                  andi         a0, s3, -1961
212:              sltu         a4, a3, a4
                  add          s6, s10, s1
                  nop
                  srai         t5, t2, 4
                  sltiu        s2, s11, 1066
                  nop
                  srai         t3, s9, 31
                  sub          t3, ra, t0
                  sltiu        s11, t4, 728
                  slt          s4, ra, ra
                  sll          s5, t3, t5
                  nop
                  auipc        s11, 238274
                  bge          s8, a7, 240f
                  xori         a0, sp, -1539
                  sra          s6, t3, sp
                  sra          s8, t5, t1
                  slli         s2, tp, 8
                  slli         a2, a5, 17
                  addi         ra, s1, -95
                  add          a6, a7, sp
                  slt          s9, t5, a0
                  andi         zero, tp, 1412
                  sll          a4, a4, a2
                  srli         a1, gp, 22
                  sra          s7, s11, t4
                  or           zero, s11, a0
                  nop
240:              sltu         tp, s3, a4
                  sub          t3, t1, t0
                  slli         s2, t1, 4
                  andi         a5, zero, -152
                  srli         gp, s0, 24
                  sltiu        a7, s8, 398
                  srl          s0, a0, gp
                  and          gp, s7, ra
                  sltiu        a6, s5, 1296
                  bge          a3, t2, 251f
                  sll          gp, zero, s9
251:              andi         s2, s8, -174
                  sll          s5, a3, t4
                  ori          a2, s8, 22
                  bgeu         s3, s8, 258f
                  sltiu        a1, s1, -1242
                  bge          a5, t0, 257f
257:              slt          a4, t5, zero
258:              slt          t3, s9, t0
                  addi         a6, t5, 1429
                  or           s5, s9, s11
                  bltu         sp, s6, 277f
                  xor          s9, s5, a4
                  xori         t2, sp, 714
                  srl          a2, a7, s2
                  slt          a3, s3, zero
                  addi         s0, s1, 902
                  srai         a4, s8, 9
                  bltu         a0, tp, 275f
                  lui          t1, 443156
                  or           s7, s1, s6
                  lui          a5, 668279
                  auipc        s11, 1008139
                  sub          s6, a7, a2
                  andi         t4, t5, 1915
275:              sltu         a6, t6, t1
                  addi         t4, t5, -1547
277:              beq          s0, sp, 285f
                  xor          a4, s4, sp
                  bgeu         s4, s11, 280f
280:              srl          t1, sp, t4
                  and          ra, a1, t3
                  ori          a0, s7, -374
                  slti         s3, s11, 528
                  andi         t1, s5, -1372
285:              bne          s2, tp, 291f
                  bltu         s2, t1, 297f
                  add          s9, ra, s9
                  add          a7, a5, a3
                  slti         gp, s0, -483
                  bge          s0, s0, 294f
291:              beq          s8, s4, 293f
                  addi         s8, s6, -1789
293:              add          a2, a4, s3
294:              srl          s5, s10, s3
                  sll          s6, t1, t5
                  xor          a1, s11, s5
297:              sll          s0, a1, s9
                  sra          zero, sp, zero
                  slt          s8, s8, s5
                  sltu         s3, s3, s6
                  or           t1, t1, a1
                  beq          s3, s5, 304f
                  xori         t1, s10, -1421
304:              auipc        t2, 692422
                  sltiu        s2, a5, -797
                  auipc        a5, 651432
                  srli         s0, a5, 14
                  add          t4, s3, s6
                  sltiu        a0, a4, -1746
                  ori          zero, t3, -564
                  slti         s5, t1, -816
                  srli         a0, t3, 4
                  sltiu        a3, gp, -1455
                  bltu         s11, s8, 315f
315:              slli         a0, s2, 23
                  add          gp, s3, a7
                  lui          ra, 927395
                  blt          s7, t3, 329f
                  sra          t5, s8, ra
                  sub          a6, s2, a7
                  blt          s5, a3, 337f
                  xor          a4, t2, s4
                  bne          s6, t0, 340f
                  sltiu        t5, a2, -1289
                  slli         s7, s4, 12
                  sra          a4, t5, s6
                  andi         t3, tp, -1954
                  sll          a6, t4, s11
329:              andi         t3, s11, 372
                  ori          s9, t1, 115
                  sub          a3, s1, s4
                  sltiu        s11, a0, -59
                  srli         s2, a0, 25
                  sltu         t1, t1, s0
                  nop
                  and          t4, t4, s5
337:              ori          a1, s3, -1504
                  ori          s6, a4, 14
                  sub          a7, s8, t4
340:              sub          t2, a7, gp
                  nop
                  or           t5, s6, s7
                  auipc        t4, 556972
                  xori         s9, s4, -985
                  slti         t3, a6, -747
                  sltu         a6, zero, ra
                  srl          a0, s4, a1
                  add          t3, a1, sp
                  sll          s3, s3, t5
                  nop
                  bltu         s4, a2, 370f
                  addi         s11, t5, 373
                  sltiu        s3, s4, 659
                  addi         s11, a6, -836
                  ori          a4, gp, 214
                  xor          s11, gp, s11
                  xor          a4, t0, tp
                  and          t1, s9, t3
                  sub          s10, s9, s7
                  bne          s8, t1, 375f
                  andi         tp, s9, 1579
                  srli         s8, s0, 7
                  srl          s8, ra, a2
                  bne          t5, a7, 368f
                  or           zero, s10, t4
                  bne          zero, ra, 378f
                  srl          sp, s2, zero
368:              or           s2, s3, t5
                  ori          a7, s5, -48
370:              add          s3, a3, ra
                  bge          gp, ra, 379f
                  bltu         t3, s4, 388f
                  bltu         s8, a0, 375f
                  slt          s3, tp, s9
375:              sltiu        s4, t2, 1969
                  sltu         a3, s11, ra
                  bgeu         ra, a7, 395f
378:              beq          s8, s4, 386f
379:              lui          s5, 1046798
                  sltu         gp, sp, s8
                  lui          a1, 361813
                  addi         s6, gp, -1824
                  blt          t0, t4, 385f
                  sll          gp, t4, t3
385:              lui          s3, 148191
386:              sltu         t3, t1, s8
                  nop
388:              andi         s10, s7, 264
                  lui          a5, 308310
                  lui          zero, 1005970
                  bge          a3, t1, 400f
                  or           zero, s7, a5
                  slti         a2, t5, 1883
                  add          a0, s3, t1
395:              srli         a0, t3, 4
                  andi         t5, s6, 694
                  and          t3, s3, s4
                  and          a1, t2, s3
                  slt          tp, a3, a4
400:              auipc        s5, 417250
                  bge          s8, sp, 413f
                  bne          t4, ra, 405f
                  nop
                  lui          sp, 977271
405:              slt          s0, s5, sp
                  sll          s5, t2, a5
                  slli         s4, s8, 26
                  srli         a0, a0, 31
                  and          zero, a7, a2
                  sll          ra, t6, a4
                  blt          t6, t6, 426f
                  sltiu        s11, a0, -1816
413:              or           a7, s1, ra
                  sra          a6, t4, s4
                  sltiu        ra, t4, -1432
                  sltiu        a0, t3, -1296
                  bgeu         gp, s5, 422f
                  bne          a4, a4, 430f
                  xori         a2, s7, 1010
                  srl          zero, s5, a4
                  sra          t2, s7, s6
422:              beq          a2, t4, 432f
                  xor          s8, a4, a1
                  srai         s6, a5, 13
                  sll          t3, s1, a6
426:              bltu         zero, t4, 433f
                  srai         a6, s10, 11
                  lui          a6, 3435
                  sll          s7, tp, s8
430:              nop
                  srli         t2, s8, 21
432:              sra          s5, gp, s5
433:              bge          s3, s11, 451f
                  addi         s5, s0, -82
                  xori         s4, s1, 326
                  and          s7, a3, t0
                  ori          s9, sp, 1172
                  lui          a5, 821588
                  slt          tp, a4, a1
                  bltu         s6, s2, 451f
                  bne          t1, ra, 449f
                  bne          ra, s7, 458f
                  sll          s3, s11, a7
                  beq          s4, s6, 460f
                  and          s0, t6, t0
                  and          s4, sp, t2
                  beq          s9, ra, 449f
                  bgeu         ra, sp, 450f
449:              xor          a1, s4, t6
450:              andi         s0, a6, 468
451:              srai         s6, gp, 6
                  auipc        gp, 841801
                  bge          gp, a6, 457f
                  sra          t4, s6, t4
                  add          tp, a2, a2
                  srli         a7, s4, 20
457:              bltu         a6, sp, 463f
458:              bltu         s1, s11, 466f
                  blt          s4, s4, 464f
460:              slt          a3, t3, t6
                  nop
                  sra          s10, a3, zero
463:              sub          t4, gp, s3
464:              sub          a6, s7, sp
                  bne          a0, sp, 474f
466:              add          t1, a5, a1
                  xori         t1, a3, 1188
                  bltu         s1, s3, 479f
                  addi         ra, s1, 1629
                  ori          tp, t2, 1525
                  srl          tp, a5, a1
                  add          ra, a4, s7
                  auipc        a3, 797918
474:              addi         s2, t0, 391
                  ori          ra, s10, -1323
                  bne          a6, t0, 495f
                  blt          s8, a6, 492f
                  auipc        s8, 913593
479:              sll          s7, a7, s2
                  lui          t1, 638384
                  slli         s11, t5, 21
                  srai         s7, t0, 21
                  sll          s2, s9, s8
                  xori         sp, gp, 451
                  slt          s5, s7, t6
                  sltiu        s2, s8, 891
                  andi         s8, s5, -1167
                  addi         a0, t4, 1112
                  bltu         t1, t2, 490f
490:              beq          t3, s9, 502f
                  or           a1, s8, t2
492:              bgeu         s2, s4, 499f
                  sra          s6, s2, t0
                  or           s4, s10, t4
495:              srli         zero, s8, 8
                  sltiu        a4, t0, 832
                  xori         s0, t0, -1884
                  srl          a2, s3, s9
499:              bne          a2, a7, 503f
                  bne          s5, s6, 502f
                  sll          s5, t6, s8
502:              bltu         s3, a7, 509f
503:              srai         s10, t0, 26
                  bgeu         s1, a5, 506f
                  xor          s10, a3, s5
506:              srli         a5, s8, 5
                  slt          s4, a0, s8
                  nop
509:              sltu         zero, a7, ra
                  xor          t5, a2, s10
                  bne          s8, a1, 513f
                  sub          s7, s8, a5
513:              sub          a1, a1, sp
                  add          s8, a7, s2
                  ori          a4, s3, -1576
                  slli         a4, a7, 16
                  lw           s7, 4(s1)
                  addi         s2, s11, 1432
                  srli         t2, t0, 5
                  and          s8, t0, t1
                  xori         a2, s0, -1082
                  srl          s6, t6, a2
                  xori         a6, t5, 1037
                  addi         s1, s1, 20
                  lui          t5, 831714
710:              addi x29, x23, 1
710:              jalr x29, x29, 0
sub_2:            sub          ra, t2, s8
                  sra          t3, a3, zero
                  srai         s9, t4, 6
                  srli         s9, t4, 11
                  addi         s1, s1, -64
                  sw           s7, 4(s1)
                  slt          s5, a4, s4
                  xor          t5, sp, t4
                  la           a6, region_0+1291 #start riscv_load_store_rand_instr_stream_2
                  sll          a7, t6, s1
                  lb           a7, -6(a6)
                  lbu          a3, 58(a6)
                  xori         s11, t4, 1344
                  srli         a7, s8, 29
                  sh           tp, -37(a6)
                  srli         a2, t0, 8
                  lbu          s2, -28(a6)
                  lbu          tp, 48(a6)
                  lh           a4, 53(a6)
                  lbu          s9, -50(a6)
                  srai         a5, t0, 24
                  nop
                  lbu          s6, 34(a6)
                  andi         tp, a7, 1121
                  sb           a6, 54(a6)
                  lb           s8, 24(a6)
                  lhu          a2, -59(a6)
                  sb           a7, -20(a6)
                  sw           t3, -43(a6)
                  sra          a3, s2, t5
                  lb           ra, -63(a6)
                  srli         s4, a1, 5
                  srl          ra, s0, a4
                  lb           ra, 56(a6)
                  sra          s8, s11, t6
                  srl          t2, s2, a0
                  auipc        gp, 682304
                  xor          s4, tp, s3
                  lh           s4, 29(a6)
                  sub          ra, zero, t3
                  slt          s0, t0, a4
                  sb           ra, 46(a6)
                  sb           tp, 22(a6)
                  lh           a2, -63(a6)
                  lw           a2, -31(a6) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_1+216 #start riscv_load_store_rand_instr_stream_5
                  lbu          a4, 1147(s2)
                  auipc        tp, 724187
                  sw           s0, 248(s2)
                  lbu          s11, 687(s2)
                  sb           t5, 755(s2)
                  sltiu        sp, a2, -1511
                  ori          a3, s7, -342
                  andi         a3, s5, -1068
                  auipc        t1, 723741
                  xor          s8, a5, a2
                  ori          t3, tp, 1016
                  lbu          s10, 1625(s2)
                  lbu          a0, 633(s2)
                  sub          a1, t3, s0
                  sltu         t1, s6, a2
                  add          ra, s6, s5
                  slti         s0, s7, 973
                  lb           s6, 953(s2)
                  lb           s6, -203(s2)
                  sltu         a3, s4, t4
                  sb           ra, 1011(s2)
                  andi         t2, s7, -1406
                  and          a6, ra, s11
                  sb           s3, 1016(s2)
                  addi         s0, a1, 1
                  lbu          a1, 945(s2)
                  srl          sp, a0, t6
                  sb           ra, 1005(s2)
                  andi         s0, s0, 1449
                  lb           s8, 853(s2)
                  lh           t3, -208(s2)
                  sb           t0, 556(s2)
                  lbu          ra, 1425(s2)
                  addi         tp, a6, -135
                  sb           s8, 766(s2)
                  xori         sp, a5, -1835
                  lbu          t2, 1713(s2) #end riscv_load_store_rand_instr_stream_5
                  la           ra, region_1+965 #start riscv_load_store_rand_instr_stream_4
                  lh           s6, -91(ra)
                  ori          t1, t5, 1546
                  xori         t5, gp, 2007
                  lb           tp, -513(ra)
                  nop
                  add          s0, a1, t2
                  sltu         s8, a5, s5
                  slli         gp, s0, 24
                  addi         a5, s3, 841
                  sb           s7, 228(ra)
                  lui          s4, 302946
                  xori         s5, s10, -553
                  auipc        s6, 747859
                  andi         s7, t3, -1352
                  sb           s10, 568(ra)
                  lhu          t2, -839(ra)
                  srl          s0, s11, s11
                  add          s9, a2, s8
                  xori         a5, a0, 488
                  ori          s6, t4, 458
                  sltiu        t4, s4, -543
                  slli         sp, sp, 29
                  srai         a2, t5, 29
                  sb           t3, -933(ra)
                  sub          s4, s3, s4
                  sra          s11, t3, s2
                  lbu          t5, 721(ra)
                  sb           a7, 558(ra)
                  srai         a0, t5, 30
                  lb           s0, 592(ra)
                  sll          s11, t6, t2
                  lbu          s6, 390(ra)
                  lbu          s2, -420(ra)
                  lb           s5, -857(ra)
                  addi         s3, a5, 1619
                  nop
                  sltiu        a6, s8, -2014
                  lhu          a1, 645(ra)
                  lb           s0, -337(ra)
                  or           a6, a2, s0
                  xor          s9, t2, s1
                  ori          sp, s0, 851
                  sb           s3, -872(ra) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_1+741 #start riscv_load_store_rand_instr_stream_3
                  slli         s4, s11, 21
                  sh           s6, 3(s10)
                  xor          s9, t6, s7
                  sltiu        s7, s5, 1645
                  lw           t4, 191(s10)
                  lb           a2, 159(s10)
                  lb           ra, 232(s10)
                  auipc        t4, 484305
                  sb           s2, -93(s10)
                  slt          gp, gp, s6
                  sra          ra, ra, s6
                  lb           s7, -16(s10)
                  lbu          t5, -114(s10)
                  lb           s3, 94(s10)
                  lhu          s11, -175(s10)
                  lbu          a6, -93(s10)
                  sb           s7, -144(s10)
                  lbu          a3, -164(s10)
                  lb           tp, 191(s10)
                  sb           a6, -240(s10)
                  sb           t6, -20(s10)
                  lb           t4, -200(s10)
                  sltu         a2, t6, a1
                  nop
                  andi         tp, t5, 2040
                  lh           s4, -121(s10)
                  lh           t5, 171(s10)
                  ori          s3, s10, -536
                  sb           s2, -47(s10)
                  srl          a0, t2, s5
                  sh           s7, 15(s10)
                  sub          s9, s7, t0
                  sh           s3, 161(s10)
                  addi         s2, s0, 872
                  lbu          t2, 156(s10)
                  sh           s6, 203(s10)
                  and          s11, s3, s9
                  sb           s10, 46(s10)
                  srli         s2, s9, 9
                  sltiu        s6, gp, 1739
                  lb           t1, -102(s10)
                  add          s9, a0, s11
                  lb           a3, 172(s10)
                  lh           s6, 73(s10)
                  xori         sp, s11, 1744
                  lb           a7, 102(s10)
                  ori          s4, t6, -645
                  srai         s9, t3, 16
                  lbu          ra, 29(s10)
                  nop
                  sltiu        s4, a3, -965
                  sb           t5, -237(s10) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1321 #start riscv_load_store_rand_instr_stream_1
                  lbu          t1, 168(sp)
                  sw           s6, -77(sp)
                  lhu          s8, 31(sp)
                  lb           s11, -211(sp)
                  lh           s7, -255(sp)
                  and          a7, s6, a6
                  sh           a0, -137(sp)
                  sb           a7, -52(sp)
                  sb           a3, 139(sp)
                  srli         a6, t2, 27
                  sh           s0, -121(sp)
                  lbu          t2, -88(sp)
                  nop
                  slt          zero, a6, s5
                  lui          ra, 176461
                  lbu          a5, -220(sp)
                  andi         s4, sp, -891
                  sb           s1, 218(sp)
                  lbu          s7, 139(sp)
                  srli         a4, a0, 28
                  lbu          s9, 236(sp)
                  sub          t4, a5, ra
                  sb           s4, -224(sp)
                  or           a7, a1, t5
                  slt          a5, s1, s10
                  add          s4, s2, tp
                  sw           sp, -233(sp)
                  lbu          s10, -240(sp)
                  sb           a3, 20(sp)
                  lbu          a7, 136(sp)
                  nop
                  lb           zero, -204(sp)
                  sb           t6, -136(sp)
                  sltu         t3, t1, t5
                  sb           tp, -79(sp)
                  sb           a3, 208(sp)
                  lb           s4, -212(sp)
                  lbu          a2, 217(sp)
                  lb           t4, -116(sp)
                  sh           s6, -55(sp)
                  sb           s9, -47(sp)
                  sb           s0, -140(sp) #end riscv_load_store_rand_instr_stream_1
                  bgeu         t5, t0, 10f
                  sltu         s9, tp, t0
                  xori         s5, s4, -427
                  srai         a4, s1, 9
                  sra          a4, s11, ra
                  bgeu         a5, s6, 10f
                  beq          s9, s3, 9f
                  bgeu         s9, s3, 18f
                  sltiu        a7, t0, -1104
9:                bltu         a4, ra, 10f
10:               slt          t4, s4, ra
                  sub          ra, t2, t5
                  sltu         a3, a2, gp
                  blt          gp, s2, 23f
                  and          s9, gp, t1
                  sltu         a5, s2, t1
                  and          gp, a3, sp
                  slti         a5, a1, 274
18:               xor          s7, gp, t0
                  sltiu        a5, ra, -1242
                  bgeu         s5, a2, 29f
                  slt          s9, ra, a7
                  sll          t5, s7, a7
23:               srli         ra, a1, 14
                  blt          t1, s4, 41f
                  bge          gp, a4, 30f
                  sll          t1, t3, a3
                  slti         gp, a6, -1351
                  bge          s3, t2, 42f
29:               blt          s6, t2, 36f
30:               andi         gp, gp, 1200
                  bgeu         gp, s5, 40f
                  bgeu         a7, s4, 37f
                  srl          zero, a5, t6
                  lui          gp, 277219
                  slti         s4, a6, -1652
36:               sll          s4, tp, zero
37:               xor          t3, a6, ra
                  sltiu        t2, a1, -1385
                  addi         a6, a1, -839
40:               bge          s10, s1, 49f
41:               sltiu        s7, s8, 1525
42:               slti         t4, t3, -174
                  sub          a7, a1, a3
                  add          a7, a3, a0
                  bne          a1, a0, 47f
                  bltu         ra, a2, 50f
47:               bltu         s5, t4, 66f
                  ori          a1, a0, -1276
49:               bne          s2, s5, 50f
50:               sra          gp, a6, a1
                  bgeu         s3, s2, 52f
52:               and          s7, ra, s6
                  bgeu         t5, a0, 61f
                  srai         a3, t0, 21
                  sll          a4, s6, ra
                  xori         s2, s3, -170
                  addi         s9, s7, 1418
                  xor          a5, s4, s3
                  sra          a4, zero, s3
                  bltu         a4, t0, 76f
61:               auipc        s9, 1045414
                  sltiu        s7, s1, 568
                  addi         t4, t3, -1609
                  xori         ra, a6, -1184
                  blt          s0, t0, 79f
66:               auipc        s0, 426762
                  sltiu        s4, a6, -1436
                  sll          t5, s2, s4
                  sll          s6, t3, t6
                  beq          s9, t3, 79f
                  slti         s6, a0, 312
                  addi         a6, tp, 1317
                  nop
                  slli         s6, t6, 15
                  sll          s4, t5, a2
76:               auipc        ra, 281684
                  slt          a7, a7, a1
                  srai         a3, s10, 8
79:               bne          a2, t0, 90f
                  slt          a6, s6, a3
                  blt          s2, s6, 100f
                  srl          s3, t6, tp
                  auipc        t2, 176841
                  sra          s6, a3, gp
                  xor          t4, s6, sp
                  sub          s4, t6, tp
                  or           a4, s7, ra
                  auipc        s0, 514156
                  slt          a1, a1, a6
90:               andi         s8, t1, -375
                  sub          t5, ra, t6
                  and          s11, zero, s8
                  srl          ra, s10, s9
                  ori          s11, gp, -1745
                  xori         ra, s3, -1833
                  srl          a4, s3, a6
                  ori          a0, s5, 70
                  auipc        s8, 511819
                  xori         s9, a3, 1127
100:              srai         s5, a4, 30
                  bltu         s9, s8, 116f
                  add          s6, ra, s11
                  ori          s11, s9, 909
                  sra          ra, a3, s10
                  beq          t6, s0, 121f
                  xor          zero, ra, s6
                  bge          s8, ra, 126f
                  lui          s3, 580461
                  addi         s7, a1, -1197
                  sltu         s8, s4, zero
                  sltu         tp, t6, s8
                  srl          ra, t3, s4
                  srli         sp, s9, 13
                  sub          sp, t6, s2
                  auipc        a3, 481396
116:              ori          ra, t1, -855
                  bge          s8, a4, 128f
                  sltu         s11, s1, ra
                  blt          sp, s10, 137f
                  add          a1, t2, ra
121:              nop
                  sltu         ra, t1, a7
                  addi         t2, a4, -200
                  slti         s6, zero, -941
                  xor          t3, t3, sp
126:              bltu         gp, t1, 136f
                  addi         a0, a0, -100
128:              xori         s3, tp, -510
                  blt          s10, t0, 136f
                  addi         t5, s8, -1199
                  nop
                  slli         a1, t1, 11
                  sll          a0, s11, ra
                  bne          s6, s8, 153f
                  sltu         s10, t0, a7
136:              addi         t5, t6, -72
137:              bltu         a3, a6, 146f
                  or           a2, t1, s3
                  auipc        s7, 556236
                  beq          s2, tp, 141f
141:              bgeu         tp, zero, 150f
                  xor          t3, t1, s8
                  sll          a6, s9, t0
                  sub          ra, sp, s2
                  bge          t1, s6, 164f
146:              and          gp, s7, s9
                  sra          a2, zero, s7
                  and          s10, t4, a1
                  xor          tp, s8, tp
150:              srl          t4, a6, s11
                  and          s10, s5, t1
                  auipc        a7, 8095
153:              srai         a6, t3, 25
                  addi         s7, zero, 175
                  beq          a4, sp, 169f
                  add          tp, ra, a0
                  xor          a1, s3, t1
                  nop
                  srl          gp, s11, s11
                  ori          a7, s7, -1702
                  andi         s9, s5, -670
                  xor          s10, gp, t2
                  blt          a0, s4, 165f
164:              sltu         a4, gp, a6
165:              add          a1, a1, s7
                  bge          s5, a1, 175f
                  xori         sp, a3, 618
                  sltu         t3, t2, s3
169:              srli         t2, s10, 2
                  bge          s0, a6, 171f
171:              bltu         a0, s9, 185f
                  bge          s5, a5, 187f
                  sltiu        a3, a2, -1749
                  and          s6, s2, tp
175:              auipc        s5, 978942
                  or           s5, a3, a1
                  bltu         s0, t1, 188f
                  addi         a1, s6, 1267
                  srl          a2, a6, s9
                  sub          t2, s6, tp
                  bne          s5, a0, 186f
                  sltiu        s0, sp, -617
                  and          t5, a7, ra
                  sra          s8, s8, s1
185:              beq          t1, t0, 202f
186:              slti         t4, a3, -210
187:              add          a0, s9, s10
188:              sub          tp, zero, t2
                  ori          s3, t5, -1783
                  ori          t2, gp, -503
                  sra          a4, sp, a6
                  bltu         t3, a4, 210f
                  srl          s11, a7, t5
                  xor          t4, tp, s9
                  sra          s3, t0, sp
                  beq          tp, a5, 199f
                  or           sp, s8, gp
                  lui          s2, 326142
199:              srli         t2, t6, 23
                  sltu         t1, a2, t6
                  auipc        s10, 125616
202:              sltu         tp, sp, a3
                  beq          s3, a7, 213f
                  sub          t5, a0, a0
                  bne          s1, a2, 206f
206:              or           a1, s4, t5
                  srai         s0, gp, 8
                  srli         s6, zero, 16
                  blt          a2, s2, 217f
210:              bltu         t6, s7, 221f
                  sltiu        t1, s5, -1528
                  sll          zero, s0, s11
213:              sll          ra, zero, a2
                  blt          s3, s4, 219f
                  slti         t3, s3, 1837
                  srai         ra, s4, 5
217:              bgeu         s11, s7, 236f
                  bne          ra, s5, 234f
219:              bge          ra, a7, 230f
                  bltu         ra, s10, 225f
221:              ori          s11, t6, 754
                  bge          a5, zero, 226f
                  beq          s11, a6, 232f
                  lui          s6, 593904
225:              bge          gp, a0, 241f
226:              addi         a7, a7, -1199
                  slli         s3, t5, 15
                  bltu         t4, t1, 244f
                  sltiu        t1, t3, 192
230:              bltu         t2, s3, 245f
                  bltu         t1, s8, 232f
232:              sub          s4, s4, sp
                  nop
234:              slli         sp, s6, 16
                  ori          a3, gp, 272
236:              sltiu        a1, a7, 236
                  add          a7, s5, a5
                  bgeu         a3, s10, 255f
                  srai         sp, t6, 22
                  bltu         a3, zero, 249f
241:              xori         s8, s9, -1269
                  ori          a2, s3, 1079
                  ori          zero, a0, 989
244:              xori         s2, t0, 1865
245:              and          s8, t0, zero
                  sub          tp, s0, t5
                  bltu         ra, ra, 252f
                  addi         a6, gp, 463
249:              blt          s7, t5, 252f
                  bgeu         a6, t6, 259f
                  ori          s4, a5, -1158
252:              slli         t1, a3, 13
                  slti         sp, a1, 1388
                  xor          s4, s10, ra
255:              bgeu         s3, t0, 269f
                  srai         t4, s1, 8
                  bgeu         a2, s0, 268f
                  and          a3, s11, s9
259:              bge          s0, s0, 277f
                  bge          zero, s9, 264f
                  sll          s7, s6, t2
                  srai         a3, a4, 3
                  or           a0, sp, a7
264:              sltiu        s7, s11, -1094
                  sltu         gp, a2, a5
                  nop
                  andi         s0, s5, 464
268:              ori          s0, ra, 1492
269:              srl          zero, t5, a0
                  srl          s3, s6, a7
                  bne          tp, gp, 272f
272:              srli         s7, s2, 29
                  sub          a6, a3, a2
                  addi         s7, a4, -1693
                  or           t4, a7, t2
                  srli         s0, s8, 15
277:              addi         s8, t1, -1172
                  bge          a2, t0, 287f
                  slti         a0, t2, 1450
                  nop
                  beq          a1, a5, 300f
                  beq          t3, s0, 296f
                  slti         gp, t0, 1368
                  sll          t2, s6, t2
                  xor          t3, s6, s2
                  xori         t1, tp, -514
287:              addi         s3, t3, 439
                  sll          t2, t4, a1
                  bne          ra, zero, 294f
                  bne          s1, t5, 301f
                  sub          a4, a3, t1
                  xor          t2, s4, s3
                  bge          t5, s0, 298f
294:              addi         s9, a2, -663
                  addi         t5, s0, 1548
296:              sll          sp, a7, t6
                  xor          s2, t5, t3
298:              addi         a6, s0, -1383
                  sub          ra, t0, sp
300:              beq          a6, s7, 308f
301:              srai         s3, a5, 0
                  nop
                  add          gp, gp, a3
                  srli         ra, s8, 30
                  bge          a1, s4, 312f
                  bge          a2, s1, 316f
                  slli         a0, t3, 20
308:              bge          s1, a5, 318f
                  blt          zero, sp, 328f
                  sltu         a0, s3, tp
                  srli         s5, ra, 8
312:              beq          s8, a5, 314f
                  slli         t1, gp, 1
314:              sra          s2, sp, t4
                  lui          s5, 607528
                  la           sp, region_1+1353 #start riscv_load_store_rand_instr_stream_0
                  srl          s0, t6, a6
                  srl          a5, s6, t2
                  sll          s7, a3, t6
                  sll          s6, a7, t6
                  nop
                  sra          t5, t5, tp
                  add          tp, s4, a1
                  xori         a5, t5, -498
                  and          s10, s1, s9
                  andi         a4, t2, 349
                  addi         t1, ra, 1060
                  addi         s11, s0, -177
                  srai         zero, t4, 29
                  nop
                  sltu         zero, s11, t4
                  sltiu        s0, s1, 1982
                  lhu          a2, -1(sp)
                  add          a5, s3, t1
                  andi         s6, a7, 155
                  addi         s4, t5, 142
                  sll          a0, t2, t5
                  sra          gp, s6, s4
                  sb           t6, 173(sp)
                  addi         s2, s3, -404
                  or           s6, t5, t4
                  srai         a1, a3, 20
                  ori          s4, a0, -1259
                  xori         tp, t1, 55
                  lw           t1, -45(sp)
                  sll          t1, a4, s2
                  sb           sp, 216(sp)
                  lh           s3, 65(sp)
                  lb           a2, -214(sp)
                  sh           t1, 35(sp)
                  xori         t2, a0, 1150
                  add          a0, s10, s5
                  lbu          a6, -230(sp)
                  xor          a0, a6, a6
                  lbu          s3, -40(sp)
                  lbu          a6, -86(sp)
                  lbu          s10, 174(sp) #end riscv_load_store_rand_instr_stream_0
316:              auipc        a7, 833165
                  xor          t5, tp, a4
318:              xor          a1, t4, ra
                  sll          s0, t4, s0
                  add          s2, t1, a1
                  slli         tp, s8, 0
                  auipc        gp, 404798
                  srl          s6, t5, a1
                  bne          a5, a3, 333f
                  srli         zero, a1, 23
                  bge          s2, zero, 337f
                  or           a3, a1, t3
328:              bne          a5, s10, 347f
                  lui          gp, 126064
                  sltu         t1, t3, s1
                  blt          s7, sp, 332f
332:              srli         sp, a0, 20
333:              bgeu         sp, t1, 349f
                  auipc        s5, 45664
                  sll          a3, ra, s6
                  add          t2, a1, s3
337:              add          t3, s5, tp
                  bltu         a4, t6, 352f
                  ori          s5, tp, 2020
                  srl          a6, t0, a1
                  xor          a4, t2, s11
                  sll          a2, t4, s3
                  lui          s0, 273106
                  srl          t4, t1, s3
                  slli         t4, s3, 29
                  slt          a2, t6, s7
347:              slti         t5, ra, 1972
                  sub          s8, a1, t2
349:              bltu         t6, t2, 368f
                  bne          s3, s8, 369f
                  bge          tp, gp, 358f
352:              bgeu         s1, t4, 362f
                  sra          a3, s4, s7
                  sltu         s7, zero, gp
                  sltiu        tp, a4, -276
                  beq          t0, a5, 361f
                  add          t4, t1, tp
358:              xori         s5, a1, -1199
                  sltiu        sp, t2, 1747
                  xor          a2, a3, a4
361:              or           t5, s11, t2
362:              srl          s8, a5, s6
                  xor          t3, s0, zero
                  ori          zero, s9, 724
                  xor          s0, sp, s4
                  bgeu         t2, t0, 369f
                  nop
368:              bltu         t3, s6, 382f
369:              sub          t5, a3, s6
                  xor          a1, a1, s2
                  auipc        t2, 491097
                  ori          s7, t6, -1731
                  bgeu         t1, s3, 378f
                  beq          a6, s4, 390f
                  ori          s4, a0, 670
                  xori         s11, s9, 2044
                  auipc        ra, 950738
378:              slt          s10, s1, t1
                  bltu         s6, a0, 389f
                  blt          s5, t4, 385f
                  sltiu        tp, a5, 1464
382:              xori         s8, a1, -1983
                  slli         zero, s11, 21
                  xori         s2, s6, 26
385:              slt          t2, ra, s0
                  xori         s10, s9, -1304
                  ori          zero, s2, -2000
                  slt          s0, a4, s3
389:              ori          s3, s7, 902
390:              bge          t5, s6, 401f
                  nop
                  srl          s11, a2, a7
                  add          a5, t0, ra
                  add          gp, t0, gp
                  srai         gp, ra, 26
                  add          s0, s9, s6
                  nop
                  xori         sp, s4, 776
                  nop
                  srl          s10, gp, a0
401:              andi         s6, t0, 1338
                  ori          gp, s11, 1635
                  ori          zero, gp, 2011
                  and          t2, t6, t3
                  beq          s10, tp, 406f
406:              sltiu        t4, s7, -1738
                  nop
                  beq          a0, t0, 416f
                  slli         zero, s11, 23
                  lui          s11, 702880
                  srl          s3, s2, tp
                  beq          t6, ra, 431f
                  sltiu        a0, t3, 1744
                  andi         a4, s11, -1725
                  nop
416:              xor          a6, s6, a0
                  lui          gp, 794706
                  sll          t5, zero, t1
                  slli         s3, a0, 11
                  auipc        a6, 50387
                  sub          t3, a5, s11
                  sltiu        s2, s0, 2010
                  and          t1, s5, s0
                  bgeu         t2, s1, 435f
                  sltu         s2, a2, a3
                  and          a5, tp, gp
                  srl          s2, a5, a2
                  srai         a1, t6, 13
                  slli         a6, s7, 9
                  sra          sp, a6, a2
431:              ori          s8, t2, 813
                  ori          t3, tp, -1218
                  auipc        a5, 386224
                  slti         sp, ra, 1122
435:              bge          s1, a6, 444f
                  beq          t0, s10, 438f
                  sra          s0, a7, a1
438:              blt          ra, s2, 453f
                  blt          s5, s1, 440f
440:              beq          zero, s11, 449f
                  sltu         a0, t6, s1
                  sub          a4, a2, a3
                  bge          t6, s10, 444f
444:              beq          t0, a4, 448f
                  sltu         a4, s8, t5
                  or           ra, t4, s6
                  sll          tp, a1, sp
448:              srl          a2, a6, s7
449:              sra          s4, zero, zero
                  and          zero, t4, a5
                  sra          a6, zero, s0
                  and          t3, gp, ra
453:              sltu         s6, t0, a6
                  slt          gp, a6, ra
                  addi         s11, s5, -1719
                  auipc        s0, 216148
                  bge          t1, zero, 466f
                  bgeu         a6, t1, 475f
                  beq          a3, s5, 468f
                  or           t4, s9, s1
                  xori         a4, s7, -1180
                  bne          sp, ra, 480f
                  xori         tp, s7, -113
                  and          zero, s10, gp
                  xor          sp, s6, t2
466:              blt          s4, s3, 477f
                  addi         gp, gp, 1658
468:              slli         a6, a7, 13
                  lui          a6, 17696
                  auipc        a1, 776893
                  sltu         s3, a6, s9
                  blt          s10, s0, 488f
                  add          s4, t0, a4
                  lui          a6, 926758
475:              or           gp, a4, s4
                  beq          ra, s7, 481f
477:              bne          t1, a7, 478f
478:              lui          t5, 741872
                  and          a7, s7, ra
480:              srai         t4, s10, 29
481:              sltu         s5, s4, s2
                  bne          gp, t2, 496f
                  slli         t3, s2, 19
                  ori          t3, s0, -691
                  sltiu        t5, t5, 26
                  sra          tp, a3, s5
                  sub          t2, gp, s11
488:              srl          a5, a0, tp
                  add          a6, t4, a4
                  sll          a7, a6, s2
                  bgeu         s10, a1, 501f
                  srl          s10, t3, s8
                  bltu         s8, zero, 509f
                  beq          s2, a2, 503f
                  bltu         s3, t4, 504f
496:              or           s8, s10, t2
                  slti         zero, s6, 17
                  sltiu        s11, s5, 1016
                  andi         s0, t3, 1552
                  bge          s0, a6, 511f
501:              slt          s7, sp, s3
                  bne          zero, tp, 518f
503:              slli         a5, s2, 30
504:              sltu         zero, s4, s2
                  addi         gp, s2, -283
                  xori         a2, tp, -1194
                  sub          t2, s6, sp
                  sll          tp, t6, s10
509:              addi         sp, a4, 278
                  slt          s3, t0, s1
511:              blt          t6, t3, 520f
                  andi         a1, sp, 1127
                  sra          a1, s3, a6
                  slti         s8, a5, -729
                  blt          ra, s4, 534f
                  auipc        zero, 785592
                  xori         s11, s3, 525
518:              sra          s11, a2, a7
                  bltu         t1, a2, 537f
520:              sub          t2, s10, a0
                  and          ra, a2, ra
                  srl          a4, s2, a1
                  bltu         a1, t3, 537f
                  andi         ra, s10, 1565
                  addi         a3, t0, 406
                  addi         t3, t5, -1235
                  srai         s3, s10, 18
                  add          a6, s6, t2
                  bne          s7, a3, 539f
                  and          s4, a4, a7
                  sll          a3, s2, ra
                  slt          a2, t1, s8
                  sltiu        s0, s4, 39
534:              sltu         s4, s10, s11
                  or           a0, sp, s4
                  nop
537:              xori         s0, a6, -579
                  addi         a0, s4, 1684
539:              slt          s7, s4, a0
                  ori          a2, s1, 1295
                  slti         tp, s5, 1131
                  bgeu         s1, zero, 549f
                  slli         gp, s2, 12
                  sub          t4, s5, a2
                  beq          s6, s11, 556f
                  ori          s10, a1, 1050
                  bgeu         tp, a7, 548f
548:              and          tp, a6, zero
549:              beq          t6, t6, 558f
                  srli         a2, t2, 20
                  beq          a5, gp, 553f
                  srl          s4, t0, s2
553:              and          gp, s5, a1
                  ori          s8, t2, 537
                  auipc        a7, 626581
556:              bge          s10, s3, 575f
                  slti         a1, s3, 168
558:              sub          s6, s0, a3
                  ori          s2, tp, 1504
                  bne          a3, s1, 565f
                  sra          s3, s5, tp
                  andi         a3, a3, -423
                  srl          t4, a6, a3
                  beq          s11, a4, 565f
565:              sltu         t5, s1, t0
                  blt          sp, s0, 581f
                  blt          zero, t6, 586f
                  bgeu         s4, s2, 576f
                  nop
                  beq          s5, a3, 574f
                  xori         s3, sp, -1586
                  andi         s8, s8, 492
                  sra          a0, s6, s1
574:              xor          s7, t3, tp
575:              andi         s10, s1, 512
576:              bge          t5, s8, 587f
                  sra          s3, s7, s6
                  slti         s7, a0, -567
                  srli         s6, tp, 22
                  slli         s7, s7, 12
581:              slli         s7, t1, 18
                  sra          s5, s2, sp
                  slt          t5, t2, gp
                  add          tp, a6, s5
                  auipc        s10, 90195
586:              srl          a5, s6, a7
587:              lui          a0, 789200
                  slt          zero, a4, zero
                  blt          s5, s0, 592f
                  xor          a5, a4, sp
                  and          ra, gp, t2
592:              sltiu        a4, t5, -673
                  lui          s7, 145148
                  sltu         ra, tp, gp
                  sltu         a5, t0, a4
                  auipc        s6, 331821
                  bltu         s1, a3, 614f
                  andi         s8, s11, 1099
                  slli         a1, s1, 23
                  sltu         a4, s0, s2
                  blt          tp, s2, 606f
                  slli         s5, s0, 18
                  srai         a5, s5, 4
                  slt          sp, s7, s9
                  bge          s5, zero, 614f
606:              sltiu        a5, s9, 977
                  blt          t1, s1, 621f
                  and          s5, t4, s8
                  sltu         a7, a6, s7
                  slti         a5, t3, -1708
                  beq          s6, s8, 612f
612:              beq          a0, t4, 613f
613:              xori         a2, s5, -824
614:              addi         sp, t1, -171
                  andi         t2, t5, 378
                  srli         a4, t4, 22
                  srl          a1, a7, a4
                  lui          t2, 561799
                  bge          a4, a2, 623f
                  xori         a7, a7, 944
621:              bge          t2, s9, 631f
                  sub          s4, s3, t4
623:              sltu         s7, s7, a0
                  bge          s7, ra, 625f
625:              slt          a3, s6, a2
                  xor          t4, s8, a2
                  xor          a2, t5, a0
                  bltu         a1, a6, 637f
                  and          sp, s6, a4
                  bne          t4, t6, 632f
631:              sub          s0, t2, a7
632:              xor          a3, a3, a5
                  and          s5, t6, a3
                  sub          t5, a7, s5
                  or           tp, sp, s11
                  andi         s8, s2, -1717
637:              bne          s10, s9, 648f
                  sltiu        s0, t4, 481
                  sltu         s10, s8, s1
                  nop
                  nop
                  sub          a2, a7, t0
                  addi         t1, t6, -1648
                  bge          a2, a5, 658f
                  add          s5, a3, t1
                  addi         s0, a1, 1964
                  lui          t2, 500198
648:              and          zero, s3, t2
                  beq          s4, a6, 665f
                  slt          a4, t4, s8
                  sltu         a7, a6, t1
                  and          s6, a4, s5
                  sra          s9, s10, s6
                  auipc        s6, 981167
                  andi         a1, gp, -549
                  sll          gp, s11, t4
                  bltu         a5, s10, 664f
658:              srl          s4, a6, s1
                  beq          a3, gp, 668f
                  srl          s6, s1, a0
                  bne          t5, a3, 680f
                  sra          a6, t4, s2
                  lui          a5, 958262
664:              bltu         a5, t5, 669f
665:              andi         a1, s11, 314
                  or           sp, s3, s6
                  bne          s7, a4, 686f
668:              sltiu        a0, s5, -1619
669:              bltu         t4, t4, 678f
                  sra          s9, s9, a0
                  slli         a0, s6, 31
                  slli         s11, t5, 2
                  slli         s8, t2, 17
                  xor          gp, a5, s11
                  bgeu         zero, s11, 678f
                  bne          s0, s4, 687f
                  bne          a5, t5, 688f
678:              sltu         a1, a5, t5
                  ori          gp, s7, -1582
680:              sub          t4, s9, a5
                  blt          s0, s6, 686f
                  slli         zero, s8, 16
                  bne          s10, gp, 698f
                  andi         a5, s0, -1721
                  nop
686:              or           a2, t2, a2
687:              srai         a1, t6, 21
688:              nop
                  slli         t5, zero, 1
                  sub          a7, s7, a0
                  slt          s2, s4, t5
                  auipc        s5, 761929
                  ori          a5, s1, 1385
                  ori          a5, s8, 573
                  bge          s3, t6, 711f
                  srl          gp, s1, a1
                  auipc        s10, 22032
698:              sltiu        s0, a1, -1044
                  slti         s0, zero, -481
                  bgeu         t6, a3, 717f
                  srl          ra, ra, a6
                  bltu         s10, a1, 712f
                  bne          s0, s2, 722f
                  bgeu         ra, s4, 722f
                  addi         a2, zero, -719
                  srl          a4, s6, s11
                  srli         a7, s1, 5
                  add          a2, a0, a4
                  bgeu         a4, zero, 717f
                  add          s10, a4, t2
711:              or           s6, ra, t0
712:              nop
                  sub          s6, s5, s0
                  andi         s7, a1, 1477
                  xori         a6, a4, -731
                  srai         a4, ra, 25
717:              bltu         s0, t4, 722f
                  sltu         a5, a6, s6
                  blt          t0, ra, 730f
                  beq          a0, ra, 731f
                  or           sp, s10, a0
722:              slti         s2, a7, -618
                  sltiu        s2, s1, -601
                  and          t3, s10, ra
                  ori          a1, t3, 1760
                  sltiu        s11, a2, -1099
                  or           s2, t5, a1
                  lui          t3, 128635
                  or           a6, tp, a1
730:              slli         s3, t2, 16
731:              sll          s8, t3, sp
                  srli         s3, a2, 7
                  xor          sp, a5, s4
                  sra          s6, t4, s11
                  andi         a5, t3, 1696
                  beq          a1, s10, 753f
                  andi         t5, s4, -1184
                  andi         s5, a7, 1662
                  lui          zero, 1016353
                  slti         s6, s11, -1665
                  lui          s6, 823761
                  add          t3, tp, s4
                  blt          tp, tp, 750f
                  lui          t2, 296862
                  blt          ra, t6, 759f
                  srl          tp, s7, t5
                  xori         t2, t0, -862
                  bgeu         t0, a5, 756f
                  srl          s11, t3, ra
750:              blt          s5, a6, 764f
                  sra          sp, s9, s1
                  sltu         t5, s8, s11
753:              bne          a2, gp, 769f
                  bge          s9, s11, 773f
                  nop
756:              or           a6, gp, a6
                  ori          s5, sp, -889
                  xor          a0, s7, t0
759:              xor          a4, t3, a3
                  bne          s11, t0, 765f
                  sll          a7, ra, gp
                  slti         a0, ra, -1764
                  sltiu        s2, t6, -1075
764:              bge          s10, s8, 775f
765:              bltu         t3, t5, 767f
                  nop
767:              srli         ra, ra, 12
                  sra          a7, s8, a3
769:              add          sp, a5, s3
                  bltu         a4, s9, 779f
                  beq          t0, s6, 775f
                  sltiu        s9, gp, 490
773:              sub          s7, t6, a5
                  bge          s0, tp, 783f
775:              bltu         sp, t4, 778f
                  blt          gp, ra, 785f
                  bgeu         s4, s0, 778f
778:              ori          a1, s10, 1710
779:              bgeu         t6, s6, 785f
                  lui          t4, 723997
                  sra          a7, ra, t3
                  andi         t5, ra, 771
783:              slti         a4, s4, -1452
                  xori         a3, tp, -1720
785:              xori         t2, s3, 1892
                  and          zero, t4, s3
                  andi         a2, a5, 895
                  srl          s4, a0, a5
                  lw           s7, 4(s1)
                  sltiu        a0, a5, 835
                  nop
                  sltu         s8, s5, s9
                  xori         a4, t2, 15
                  addi         s1, s1, 64
                  sub          a4, s6, t0
                  sub          s9, s8, t3
1062:             addi x27, x23, 0
1062:             jalr x27, x27, 0
sub_9:            add          t4, ra, s8
                  lui          t1, 261481
                  bne          a2, a1, sub_9_stack_p
                  or           a5, s11, s5
sub_9_stack_p:    addi         s1, s1, -36
                  sw           s7, 4(s1)
                  srli         s3, s10, 3
                  la           sp, region_0+390 #start riscv_load_store_rand_instr_stream_0
                  sh           s11, 136(sp)
                  lb           s7, -91(sp)
                  lbu          s8, -111(sp)
                  xor          s7, s5, a4
                  lbu          ra, -51(sp)
                  srl          s2, zero, t1
                  srli         a0, tp, 30
                  sb           t0, 125(sp)
                  sltiu        s8, s11, 1748
                  lb           s9, -225(sp)
                  sh           tp, -100(sp)
                  sb           a0, -238(sp)
                  lhu          t3, -148(sp)
                  lbu          gp, 115(sp)
                  lb           s8, 165(sp)
                  lbu          zero, -18(sp)
                  xor          s6, gp, a4
                  lbu          a6, -159(sp)
                  auipc        tp, 430846
                  nop
                  sb           a4, 51(sp)
                  sub          s10, sp, s4
                  lb           a4, -83(sp)
                  slli         s10, a1, 20
                  srli         s8, a2, 19
                  add          t4, s2, s3
                  slti         t3, s6, -572
                  sb           gp, -54(sp)
                  lhu          s6, 232(sp)
                  lh           a6, -88(sp)
                  lb           gp, 243(sp)
                  lhu          t1, 192(sp)
                  lb           s0, -152(sp)
                  sb           a6, 112(sp)
                  auipc        a7, 95760
                  srl          t2, s6, s1
                  sb           s1, -219(sp)
                  lw           s6, 50(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+1571 #start riscv_load_store_rand_instr_stream_2
                  sub          a1, sp, gp
                  sb           s9, -915(s3)
                  sb           s6, -1112(s3)
                  lbu          t2, -636(s3)
                  slli         s4, a5, 13
                  lb           a5, -556(s3)
                  or           tp, s10, a6
                  sltu         s0, t0, a7
                  sub          a1, zero, t0
                  srli         s4, zero, 17
                  slti         a0, t6, 1836
                  sb           a0, -157(s3)
                  auipc        ra, 245525
                  lbu          a5, -492(s3)
                  auipc        gp, 971224
                  lbu          s4, 374(s3)
                  lb           s7, -628(s3)
                  xori         s4, sp, -1722
                  sltiu        s4, t3, -590
                  sb           a7, 249(s3)
                  srl          zero, t2, a0
                  and          s7, t4, t0
                  and          a0, a6, s2
                  srl          tp, t5, a5
                  sll          t1, a3, s0
                  lbu          t2, -167(s3)
                  sltiu        s10, t1, 1001
                  lbu          a5, -478(s3)
                  lhu          a3, 407(s3) #end riscv_load_store_rand_instr_stream_2
                  xori         s2, sp, -283
                  addi         a5, s2, 620
                  sltiu        a5, s3, -1839
                  bge          s11, s4, 23f
                  xor          s7, s11, a4
                  auipc        s6, 132148
                  add          zero, s6, t1
                  srai         a4, s7, 17
                  beq          a3, t3, 21f
                  sltu         s11, s10, t5
                  sltiu        a3, s10, 140
                  srai         s8, s8, 4
                  sll          s7, ra, a3
                  bge          s4, a2, 19f
                  slt          s7, gp, t2
                  xori         s0, tp, -965
                  sub          a5, sp, a7
                  srl          a6, s2, s7
                  add          a7, s8, t3
19:               sub          a2, tp, ra
                  andi         s4, s3, 1138
21:               sll          t1, s5, s4
                  srl          a7, t6, s7
23:               and          s8, t2, s1
                  bltu         s11, s8, 25f
25:               xori         zero, s4, 433
                  andi         t5, s4, 802
                  or           a2, a4, s3
                  sra          s10, t0, a2
                  beq          t4, t3, 45f
                  or           s5, tp, s2
                  bge          s3, s5, 50f
                  xor          t1, a2, a2
                  sltiu        a5, a1, 1294
                  add          s2, zero, a1
                  bltu         gp, a1, 41f
                  slti         t1, s5, 1791
                  and          s0, s10, s4
                  nop
                  lui          t4, 397831
                  beq          s6, a6, 54f
41:               xori         a6, t6, 1109
                  srai         s6, s5, 12
                  slli         s0, s11, 25
                  andi         s8, s8, 1378
45:               srai         sp, s1, 27
                  ori          a0, a7, -725
                  sltiu        s10, a0, 1504
                  srl          s9, s5, s5
                  sltiu        s6, s10, -371
50:               bne          t3, a7, 61f
                  xori         t4, s2, -1239
                  slt          s11, tp, s3
                  addi         s0, s10, 1158
54:               blt          s10, s5, 69f
                  nop
                  or           s8, sp, a5
                  auipc        a1, 423415
                  lui          s11, 299975
                  slt          s3, a6, a4
                  addi         t1, a7, 784
61:               andi         t2, t3, -1588
                  sltu         s0, tp, a2
                  bgeu         t2, s11, 65f
                  sra          s7, t5, s3
65:               or           s0, s9, a6
                  auipc        s6, 986193
                  lui          a6, 563171
                  nop
69:               beq          s3, s6, 79f
                  add          t5, a7, sp
                  add          s4, t2, t4
                  sub          a3, s10, s9
                  slti         a6, s10, -1159
                  xori         s4, t0, 1490
                  srai         s9, s9, 18
                  blt          t1, a7, 96f
                  sltu         zero, sp, tp
                  bge          a3, s4, 83f
79:               xor          s5, tp, t6
                  bltu         a6, s3, 85f
                  beq          a0, s6, 90f
                  srai         s2, a3, 0
83:               ori          gp, a7, 1173
                  ori          t3, a1, -234
85:               and          a1, a0, ra
                  ori          s4, a1, 401
                  bge          gp, a2, 99f
                  andi         a3, t6, -1699
                  and          a7, a3, s9
90:               sltiu        t2, a2, -422
                  srl          s6, s1, sp
                  add          a5, t3, zero
                  or           a0, t5, t3
                  srai         t2, t4, 22
                  ori          gp, a4, 1308
96:               addi         a3, s2, 1936
                  bne          t6, zero, 99f
                  sltiu        t3, s7, -1651
99:               sub          a0, s9, s8
                  sra          s11, s6, t0
                  beq          t3, s2, 120f
                  slt          s5, s3, s5
                  srai         s0, t4, 24
                  beq          t6, tp, 110f
                  blt          s4, sp, 115f
                  sltu         s11, a3, a3
                  and          t2, s2, a0
                  nop
                  addi         a7, s10, 88
110:              auipc        a1, 799844
                  bge          s11, t0, 124f
                  sll          s8, s0, t5
                  or           t1, s4, s9
                  addi         a2, s1, 1238
115:              slli         a1, zero, 22
                  and          tp, s2, a3
                  andi         zero, s7, 1701
                  bltu         s1, sp, 121f
                  and          sp, s4, a0
120:              nop
121:              beq          s7, s4, 123f
                  lui          t2, 632696
123:              lui          a5, 268441
124:              or           sp, a6, sp
                  and          t1, t5, a0
                  srai         sp, t4, 26
                  bgeu         t3, t4, 144f
                  bltu         s0, s3, 129f
129:              or           s10, zero, a2
                  sltiu        s8, a1, -1154
                  srl          a2, s2, t2
                  srai         s4, t2, 19
                  bne          s1, zero, 136f
                  slti         sp, s5, -664
                  beq          s10, t3, 149f
136:              lui          s10, 632257
                  andi         s8, t5, 1171
                  blt          gp, sp, 143f
                  bltu         s11, s11, 151f
                  slti         s6, ra, 1209
                  xori         t5, s11, 1251
                  nop
143:              addi         ra, s1, -38
144:              add          s11, t2, s11
                  sll          s10, a6, a6
                  bne          a3, s11, 159f
                  bgeu         s2, zero, 161f
                  sltu         t1, t4, a1
149:              or           s3, s11, a3
                  bgeu         t1, t1, 152f
151:              sltiu        a7, t4, 219
152:              slti         a4, s7, -213
                  xori         gp, s6, 161
                  sltiu        a1, a5, 2043
                  sltu         a3, t4, t1
                  or           s3, a4, s2
                  ori          zero, a3, 775
                  xori         s10, a6, 1831
159:              sub          t2, s4, s10
                  andi         s5, t1, 591
161:              srai         a6, t4, 18
                  xori         a0, a1, -1829
                  sll          a1, s3, gp
                  add          a2, s11, s4
                  bne          s5, s2, 167f
                  or           a4, s11, tp
167:              slti         a3, s2, -774
                  auipc        s10, 298002
                  nop
                  bgeu         t3, t2, 175f
                  xor          gp, t6, s3
                  addi         s8, s5, -1039
                  xor          s2, a2, zero
                  srli         a0, a4, 6
175:              slti         t4, s2, 510
                  bgeu         a2, gp, 196f
                  and          t5, t1, a4
                  or           s10, zero, s0
                  lui          a4, 728358
                  srl          a2, a1, a6
                  sltu         s2, s11, s1
                  sltiu        t2, a0, 1384
                  or           a6, s1, a7
                  xori         a5, s1, -1437
                  auipc        s6, 51091
                  auipc        a5, 499495
                  bne          s1, a3, 188f
188:              slli         a0, t6, 26
                  srl          s4, s0, a3
                  add          s9, t0, t1
                  srli         s11, s4, 22
                  srl          s10, s7, a4
                  sltiu        a6, s10, -1092
                  or           a2, t6, s3
                  add          a6, a7, s5
196:              nop
                  slti         s11, s2, -1400
                  sltu         t5, t6, a7
                  bgeu         a0, tp, 205f
                  and          a3, s5, zero
                  sra          s3, t5, t0
                  nop
                  slli         s11, a6, 27
                  slli         s7, s5, 11
205:              ori          a0, tp, 374
                  sltiu        a4, t6, -871
                  addi         a2, s11, 231
                  sll          sp, a4, t1
                  bgeu         t1, t5, 218f
                  lui          a2, 469397
                  and          s11, a5, zero
                  beq          t6, s9, 231f
                  and          s8, s3, a5
                  nop
                  sra          a2, s9, t4
                  ori          s7, t6, -23
                  add          a0, gp, a1
218:              slti         s5, s9, 706
                  lui          a4, 436733
                  ori          sp, s5, -1506
                  and          ra, t3, zero
                  ori          tp, t4, 309
                  sltu         s8, sp, t5
                  sll          a1, t1, s2
                  sltiu        a5, s3, -264
                  sra          s11, a5, a3
                  bgeu         s1, t5, 242f
                  bltu         a3, s2, 241f
                  auipc        a1, 683468
                  bgeu         gp, a7, 244f
231:              or           sp, t6, t1
                  andi         a2, t6, -146
                  blt          s3, t3, 252f
                  add          s9, t5, s1
                  slli         sp, a7, 31
                  auipc        t1, 967992
                  bltu         t5, t3, 253f
                  blt          a3, a2, 248f
                  srli         a4, zero, 27
                  auipc        t3, 620476
241:              sra          a1, s7, s0
242:              auipc        a1, 537508
                  sub          s4, t4, t1
244:              or           t3, tp, t6
                  bne          a5, s9, 246f
246:              lui          s10, 795102
                  slti         s3, s7, -1473
248:              bge          t6, tp, 265f
                  ori          t4, a7, 1119
                  bgeu         s2, s1, 256f
                  sub          s2, t0, t2
252:              andi         tp, a3, 414
253:              sltu         t1, s9, t0
                  auipc        t2, 126641
                  srl          s10, s3, s5
256:              nop
                  sltu         a2, s2, t5
                  add          a4, t2, s4
                  auipc        s6, 768081
                  auipc        s9, 87748
                  srl          s4, t3, a0
                  addi         s9, a5, 1879
                  srli         s11, s3, 12
                  bge          tp, s3, 284f
265:              nop
                  sub          ra, t6, ra
                  sltu         gp, a1, t4
                  and          s2, s8, s0
                  ori          tp, a6, 620
                  sltiu        t3, t2, 1716
                  xori         s9, s6, 1824
                  bgeu         s3, s2, 284f
                  blt          sp, ra, 283f
                  sra          ra, t3, s5
                  auipc        a1, 812370
                  sra          t3, t2, s8
                  ori          t5, s9, 620
                  bge          a5, s6, 283f
                  bgeu         t0, s3, 291f
                  bne          s10, t2, 283f
                  beq          ra, gp, 292f
                  bgeu         s9, tp, 288f
283:              ori          a7, a2, 1113
284:              bne          gp, t1, 286f
                  nop
286:              sll          t3, a3, tp
                  bge          a2, a5, 290f
288:              bge          a3, s0, 293f
                  bltu         s9, a5, 306f
290:              sub          a1, s7, t3
291:              bne          gp, s4, 310f
292:              sra          a1, a6, a1
293:              slti         s2, s9, -291
                  add          s3, t1, t3
                  xori         a6, a6, -1496
                  slti         tp, s10, -1635
                  or           s6, a4, a0
                  sub          s4, s8, s8
                  xor          s10, a2, s10
                  srli         a4, t0, 28
                  sltu         s3, s2, s11
                  sub          a6, a6, a6
                  sltiu        t1, t3, 1451
                  srl          a7, a4, t2
                  slli         s8, a6, 25
306:              add          t3, s5, t5
                  ori          s8, t0, 193
                  srai         gp, s0, 13
                  bge          t6, s10, 315f
310:              andi         a0, t3, 394
                  srai         s7, t5, 23
                  bgeu         s1, s9, 326f
                  sra          t2, t0, t4
                  srli         s2, s1, 8
315:              auipc        a7, 638670
                  bne          s10, gp, 327f
                  srai         s0, s0, 30
                  sra          s5, a1, t6
                  auipc        s8, 860062
                  bgeu         s8, gp, 322f
                  bltu         a0, a0, 340f
322:              blt          a4, s8, 342f
                  slt          s0, t6, a7
                  sltiu        s10, t6, 2031
                  bgeu         t4, zero, 335f
326:              bge          a2, s2, 346f
327:              bne          s4, a6, 329f
                  srai         t2, t1, 18
329:              beq          a6, s10, 334f
                  sra          a1, s5, s1
                  andi         t4, s10, 754
                  addi         t5, a2, -666
                  slt          s10, t3, s4
334:              sub          s9, t1, a1
335:              bltu         a4, ra, 341f
                  slti         a1, t5, 1118
                  sltu         s0, a7, a1
                  slti         ra, a5, -1955
                  slt          a3, a0, a0
340:              auipc        a5, 1029349
341:              beq          a0, t3, 346f
342:              or           s2, s0, s7
                  blt          a2, ra, 345f
                  srai         t5, ra, 23
345:              bge          t3, ra, 359f
346:              addi         a4, s3, 1317
                  bge          t6, a3, 359f
                  xori         s2, s11, 545
                  sltu         s3, s11, s0
                  bltu         s11, tp, 365f
                  andi         t2, a2, 217
                  srai         s6, zero, 2
                  lui          s11, 408793
                  slt          a3, s3, t4
                  xori         a1, t3, 520
                  srli         sp, s3, 26
                  sltiu        s11, s5, 71
                  andi         t4, a4, -4
359:              andi         s3, t1, -1106
                  xori         s5, gp, 952
                  xori         s4, s10, 1771
                  auipc        a3, 39264
                  sra          s4, a4, tp
                  lui          s8, 642920
365:              nop
                  ori          t4, s5, 1654
                  and          t4, t2, a7
                  nop
                  sltiu        a3, a2, -1487
                  xori         a2, s7, -1079
                  bge          s11, ra, 372f
372:              addi         s11, t3, 1961
                  or           s7, a7, t5
                  add          s9, s2, t5
                  sub          a4, a2, a6
                  sra          s4, a3, s4
                  xori         s10, s9, 1891
                  bltu         s8, t2, 387f
                  beq          a7, s5, 389f
                  bltu         a5, s3, 385f
                  slti         a1, zero, -895
                  slti         s3, a6, -1794
                  bgeu         s1, s5, 396f
                  beq          s3, t1, 396f
385:              slt          a5, t6, a1
                  srai         s10, t2, 17
387:              blt          sp, a0, 400f
                  auipc        a5, 671942
389:              bgeu         s9, t2, 390f
390:              add          ra, s1, a1
                  srli         a6, s5, 25
                  bltu         t3, a2, 398f
                  andi         s7, a3, -1519
                  addi         a2, s9, 716
                  nop
396:              andi         tp, tp, -301
                  add          ra, s7, ra
398:              blt          t5, s2, 401f
                  bltu         t6, t4, 415f
400:              or           gp, s3, t0
                  la           s10, region_0+647 #start riscv_load_store_rand_instr_stream_1
                  or           a2, s2, s1
                  sb           t4, -63(s10)
                  ori          s5, s1, 102
                  auipc        s7, 697948
                  lw           a2, 89(s10)
                  lui          s5, 803247
                  addi         s9, t1, -1754
                  srai         t1, a5, 16
                  slli         t5, t0, 3
                  sb           sp, -192(s10)
                  srli         s6, s7, 2
                  sb           a6, -188(s10)
                  srli         s6, s1, 3
                  lb           t1, 232(s10)
                  sb           ra, -37(s10)
                  slt          t3, a3, gp
                  sltu         s2, s1, s6
                  sb           s10, 134(s10)
                  slti         a6, a4, -16
                  auipc        gp, 17371
                  lw           s7, 89(s10)
                  slt          gp, s5, s8
                  lbu          a3, -13(s10)
                  sub          s2, s3, a1
                  lb           sp, -130(s10)
                  ori          ra, s8, -328
                  sll          t5, t3, tp
                  sub          t1, t2, a3
                  sra          a7, s10, t0
                  srli         zero, s0, 6
                  auipc        t3, 266331
                  sll          s3, zero, t4
                  lbu          a6, -92(s10)
                  srl          s7, a1, s0
                  sb           s3, 114(s10)
                  sb           a5, 212(s10) #end riscv_load_store_rand_instr_stream_1
401:              sub          s8, a6, t2
                  blt          t4, ra, 405f
                  andi         sp, s4, 359
                  blt          a4, a1, 421f
405:              bltu         a2, s1, 411f
                  sltu         s9, a5, ra
                  and          a1, a7, s0
                  xori         t5, t6, 847
                  ori          a1, t1, 468
                  bne          a0, a1, 424f
411:              slt          s11, t3, s11
                  ori          zero, sp, 1187
                  slt          s10, t3, a2
                  ori          t1, s1, 1508
415:              nop
                  lui          a7, 693028
                  lui          s3, 452607
                  srai         a3, a1, 21
                  blt          s6, s4, 420f
420:              slli         s5, gp, 16
421:              srl          a2, t5, s11
                  auipc        t4, 351146
                  sll          t2, t3, a6
424:              blt          s9, s1, 437f
                  xori         s4, zero, -405
                  sll          ra, a5, s0
                  ori          s11, t2, -77
                  beq          ra, s0, 438f
                  slti         a2, sp, 798
                  bne          zero, a7, 439f
                  sub          tp, t5, a2
                  bgeu         a0, a6, 438f
                  andi         t3, a6, 1139
                  or           ra, s0, a3
                  auipc        a6, 938007
                  bge          ra, s5, 455f
437:              auipc        s6, 381080
438:              lui          s3, 987616
439:              xori         s0, t0, 1635
                  add          a2, s9, s0
                  blt          t0, t6, 457f
                  sltiu        s10, a3, -1404
                  bgeu         tp, s10, 454f
                  lui          a6, 643110
                  srai         s7, s4, 19
                  bge          a0, s1, 452f
                  bgeu         gp, zero, 464f
                  slti         t4, a3, -492
                  bltu         s6, t6, 459f
                  srai         a0, s1, 3
                  beq          t2, s10, 454f
452:              nop
                  slli         s10, s5, 2
454:              ori          s7, a3, 299
455:              slli         ra, a4, 4
                  ori          a3, gp, 868
457:              lui          s6, 17234
                  lui          tp, 66231
459:              bge          s9, s10, 464f
                  srli         t5, t6, 6
                  addi         t2, a7, -1128
                  srai         s4, s7, 9
                  auipc        t5, 667016
464:              xor          a2, s5, gp
                  and          a1, a7, s1
                  addi         t1, a2, 524
                  lw           s7, 4(s1)
                  srai         t3, a5, 31
                  and          s4, s4, a3
                  addi         s1, s1, 36
                  addi         a0, s2, 210
                  slt          s2, gp, tp
                  nop
                  slli         a3, s2, 7
                  sll          s10, a6, gp
589:              addi x6, x23, 1
589:              jalr x6, x6, 0
sub_1:            sra          gp, t3, ra
                  slt          a7, a6, s7
                  addi         s1, s1, -8
                  sw           s7, 4(s1)
                  andi         zero, t2, -191
                  auipc        a6, 51242
                  sra          t5, a5, s9
                  sll          a2, s7, gp
                  sltiu        a3, a4, 755
                  sltu         gp, s3, s4
                  la           t3, sub_7
                  slli         s8, a1, 0
                  addi         t3, t3, -897
                  sltu         gp, s8, a3
                  bne          a6, s11, sub_1_j2 #branch to jump instr
                  sll          a3, tp, s6
                  slli         s4, s8, 3
                  sll          gp, t0, a7
sub_1_j2:         jalr         s7, t3, 897 #jump sub_1 -> sub_7
                  slti         s0, s4, -2032
                  sra          a5, a4, t2
                  slti         t3, t6, -1862
                  srli         s11, gp, 5
                  auipc        t4, 649222
                  nop
                  auipc        a4, 945478
                  slti         a0, a3, -1454
                  or           gp, a1, sp
                  slti         s8, s8, 1135
sub_1_j3:         jal          s7, sub_5 #jump sub_1 -> sub_5
                  add          s2, a3, gp
                  lui          a3, 937564
                  sll          a4, t3, s5
                  la           s0, sub_4
                  addi         s0, s0, 1011
                  sll          s5, s7, s10
                  slt          a4, sp, a0
                  sra          s6, a2, s0
                  srai         s11, s2, 27
                  beq          a7, t0, sub_1_j4 #branch to jump instr
                  srli         ra, t4, 31
sub_1_j4:         jalr         s7, s0, -1011 #jump sub_1 -> sub_4
                  sub          s11, t4, tp
                  srli         s7, gp, 31
                  sll          s10, t5, t6
                  bltu         s11, a1, sub_1_j5 #branch to jump instr
                  sll          s9, tp, s10
                  slt          t4, a5, a3
                  and          a2, t2, s11
                  sltu         s7, s9, a2
                  slli         gp, a4, 7
                  slli         sp, s11, 7
                  sll          a2, s8, t6
sub_1_j5:         jal          s7, sub_8 #jump sub_1 -> sub_8
                  nop
                  sltu         s3, t3, sp
                  addi         ra, a0, -90
                  sltu         s2, a4, a2
                  srai         a3, s7, 14
                  add          ra, t3, ra
sub_1_j6:         jal          s7, sub_2 #jump sub_1 -> sub_2
                  slt          s3, a4, a5
                  slli         t5, t0, 29
                  ori          s5, tp, -1192
                  and          s10, t5, t0
                  la           gp, sub_10
                  addi         gp, gp, -783
                  xori         t1, sp, 1157
                  blt          t1, s5, sub_1_j7 #branch to jump instr
                  srli         a2, s3, 9
                  lui          s3, 360043
                  addi         a7, t1, -1325
                  or           a7, t4, a4
sub_1_j7:         jalr         s7, gp, 783 #jump sub_1 -> sub_10
                  lui          t4, 71375
                  srai         zero, t6, 3
                  sltiu        a7, s2, -938
                  la           s6, sub_9
                  addi         s6, s6, 355
                  nop
                  add          a5, sp, s10
sub_1_j8:         jalr         s7, s6, -355 #jump sub_1 -> sub_9
                  slt          t4, s4, tp
                  slli         s0, sp, 26
                  srai         a4, gp, 10
                  xor          a3, s4, s9
                  beq          zero, t6, sub_1_j9 #branch to jump instr
                  ori          t4, s2, -354
                  srli         s3, zero, 23
sub_1_j9:         jal          s7, sub_3 #jump sub_1 -> sub_3
                  or           sp, a6, a3
                  sll          a0, s7, gp
                  andi         a4, a2, -1810
                  sub          a1, ra, a3
                  addi         s2, s6, -11
                  auipc        a2, 22479
                  nop
                  bltu         s0, zero, sub_1_j10 #branch to jump instr
                  addi         s9, t5, -417
sub_1_j10:        jal          s7, sub_6 #jump sub_1 -> sub_6
                  nop
                  bgeu         s8, t5, 17f
                  sll          s8, t4, sp
                  xor          s6, tp, a2
                  and          a3, t0, a2
                  xori         tp, a7, 1014
                  srai         a4, t3, 22
                  ori          s2, t1, 1434
                  sll          t4, a7, s6
                  xori         s0, a1, 845
                  or           zero, t0, s0
                  nop
                  srl          s2, s5, t0
                  addi         t4, s6, -611
                  sltu         t2, t1, zero
                  slti         t5, a7, 637
                  add          zero, a1, t1
17:               sltu         a7, s4, a0
                  lw           s7, 4(s1)
                  and          t3, t4, s11
                  auipc        s10, 474484
                  sll          s8, sp, s6
                  addi         s1, s1, 8
                  andi         s8, t3, 1500
                  sltiu        s6, s1, -1802
                  slli         a7, t6, 28
                  srai         t2, a6, 8
                  nop
                  andi         s8, a4, 694
                  sltiu        s11, s11, -1391
130:              addi x1, x23, 1
130:              jalr x1, x1, 0
sub_5:            sltiu        a6, gp, -1241
                  beq          t0, tp, sub_5_stack_p
                  ori          s9, a2, 1455
sub_5_stack_p:    addi         s1, s1, -40
                  sw           s7, 4(s1)
                  or           tp, t1, t2
                  sltu         s3, s7, a7
                  sll          s7, sp, s7
                  bne          t0, s0, 20f
                  bge          s7, sp, 21f
                  xori         t4, s5, -306
                  bgeu         a0, t1, 10f
                  slti         a5, t6, 1168
                  slti         t3, t6, -1519
                  sra          s4, s3, tp
                  bgeu         t2, a1, 17f
10:               blt          a4, tp, 25f
                  blt          a5, s3, 29f
                  sll          a1, s1, t3
                  slli         s4, sp, 30
                  slli         a6, t5, 27
                  addi         s0, s3, -1385
                  srai         s8, s3, 2
17:               srli         t2, ra, 4
                  bltu         t3, ra, 37f
                  sll          t1, s1, tp
20:               slt          t5, a6, s8
21:               beq          s8, t3, 33f
                  bge          s7, zero, 28f
                  or           s2, a3, a0
                  xori         a3, zero, -1492
25:               auipc        t5, 744992
                  bne          s2, t3, 44f
                  andi         sp, sp, -267
28:               ori          a0, t6, -1614
29:               ori          s4, s4, 573
                  bltu         t1, t0, 33f
                  slt          a0, tp, ra
                  srl          a4, ra, s8
33:               bge          s7, a3, 37f
                  srai         t4, s7, 26
                  slti         s2, a3, -1592
                  slli         t5, s8, 25
37:               slti         gp, ra, 1104
                  or           s11, sp, s11
                  beq          s0, t2, 45f
                  xor          s11, a5, zero
                  add          tp, a0, a4
                  sltiu        s0, s4, -181
                  xor          s11, a0, t0
44:               nop
45:               bgeu         s4, s8, 47f
                  slti         gp, t3, 1489
47:               srli         a1, t4, 8
                  addi         tp, a7, -1784
                  beq          a2, s7, 54f
                  nop
                  srl          t1, t5, ra
                  slli         a7, a5, 12
                  or           s4, t5, t1
54:               lui          a4, 564389
                  ori          s0, s0, 1535
                  sll          gp, t5, s10
                  xori         a7, s3, -1025
                  and          ra, t6, t1
                  srl          s7, a2, a2
                  beq          t6, s2, 61f
61:               sltu         gp, a0, t0
                  slti         gp, t2, 1387
                  bgeu         t1, a1, 71f
                  slti         zero, t1, 1076
                  auipc        a1, 140897
                  beq          s3, t1, 84f
                  slti         a4, tp, 517
                  srl          a7, s3, gp
                  slt          t1, t0, t5
                  add          s6, s8, t1
71:               auipc        s6, 64575
                  sll          s7, sp, t5
                  blt          gp, t0, 77f
                  auipc        a6, 282438
                  lui          t4, 198070
                  add          tp, t5, a0
77:               slti         s10, s4, 1893
                  and          sp, ra, t2
                  or           s3, a0, a2
                  slti         sp, t4, -899
                  srl          a2, s4, a4
                  slli         s2, t0, 28
                  addi         s10, s1, -1807
84:               bge          s2, s8, 103f
                  bne          t3, sp, 98f
                  slli         a0, t0, 28
                  sub          s0, a7, sp
                  bne          a7, t6, 101f
                  addi         a1, t1, 2004
                  beq          s1, a0, 110f
                  sub          ra, t1, s5
                  andi         t4, t6, -1600
                  ori          s5, a3, -1291
                  slli         s3, tp, 19
                  ori          tp, s5, -709
                  srai         s11, ra, 27
                  addi         a3, t1, 611
98:               andi         t4, s0, -712
                  add          ra, a2, t2
                  bgeu         a6, t6, 110f
101:              sltu         a6, s9, s9
                  sltu         a0, t4, gp
103:              or           a4, a3, s9
                  add          a1, a1, tp
                  bge          t2, a3, 113f
                  lui          zero, 657415
                  blt          tp, a6, 119f
                  bge          t5, s1, 119f
                  xor          t5, s0, t2
110:              addi         a2, t2, 177
                  bne          a2, a2, 118f
                  sltiu        t5, tp, -1796
113:              srl          a6, t0, t4
                  sltu         s11, s0, a4
                  sll          a7, t2, a2
                  xori         s8, t4, -2028
                  slti         a2, a7, 453
118:              add          s6, a7, t1
119:              auipc        ra, 136037
                  srl          s9, s1, t4
                  lw           s7, 4(s1)
                  add          t3, a7, t6
                  slti         s3, zero, 1251
                  auipc        t1, 89615
                  sub          a5, a3, ra
                  addi         s1, s1, 40
                  ori          zero, t1, -149
                  srl          t4, s0, gp
135:              addi x19, x23, 1
135:              jalr x19, x19, 0
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
mmode_intr_vector_1:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x31, x9, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x20, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x20, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x20, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x20, x17, ecall_handler
                  li x17, 0x1
                  beq x20, x17, instr_fault_handler
                  li x17, 0x5
                  beq x20, x17, load_fault_handler
                  li x17, 0x7
                  beq x20, x17, store_fault_handler
                  li x17, 0xc
                  beq x20, x17, pt_fault_handler
                  li x17, 0xd
                  beq x20, x17, pt_fault_handler
                  li x17, 0xf
                  beq x20, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x9, x31, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
