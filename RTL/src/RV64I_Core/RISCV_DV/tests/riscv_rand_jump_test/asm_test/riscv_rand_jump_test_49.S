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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 0
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0xac303255
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x4
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xa72c6117
                  li x7, 0xfce3e500
                  li x8, 0x8
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xb
                  li x13, 0xc25869b7
                  li x14, 0x0
                  li x15, 0xf05fff13
                  li x17, 0x80000000
                  li x18, 0xfa068898
                  li x19, 0x80000000
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0xa
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x3
                  li x31, 0x1
                  la x20, user_stack_end
main:             la           s7, region_0+1398 #start riscv_load_store_rand_instr_stream_0
                  lw           s0, -38(s7)
                  add          s9, s2, s10
                  nop
                  sll          a0, s4, t1
                  sb           zero, 37(s7)
                  lbu          a0, 58(s7)
                  sb           s8, 6(s7)
                  sub          s11, a3, s1
                  sub          s3, s7, a7
                  sltiu        s11, a5, -1186
                  srli         s5, t2, 25
                  sh           t0, 0(s7)
                  lb           t1, 37(s7)
                  sb           a2, 11(s7)
                  or           s6, t6, s0
                  srli         t5, gp, 2
                  sb           s4, -3(s7)
                  or           a2, s7, s9
                  auipc        s1, 281323
                  addi         tp, gp, -1320
                  lbu          s11, -55(s7)
                  auipc        s0, 343332
                  slt          a2, s2, t6
                  sub          s6, t5, a6
                  sltu         a7, t1, s11
                  lui          t0, 1016741
                  andi         t4, t2, -697
                  xori         t4, t4, -1738
                  add          s11, ra, a4
                  lb           a7, 9(s7)
                  slt          t5, s0, t3
                  sll          a3, a5, t3
                  xor          s10, a3, s11
                  xori         a2, s2, 731
                  xori         t1, s2, -1843
                  nop
                  lhu          s6, -50(s7)
                  sh           s0, 32(s7)
                  nop
                  lb           a5, -39(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_0+165 #start riscv_load_store_rand_instr_stream_1
                  sb           t1, 128(s10)
                  sll          a4, gp, s10
                  sb           s3, 144(s10)
                  nop
                  lb           sp, 71(s10)
                  slt          s3, t5, a2
                  lb           t6, -147(s10)
                  and          a5, a1, t3
                  sra          gp, s0, a5
                  or           s1, s6, s10
                  lbu          zero, -126(s10)
                  lb           s1, 106(s10)
                  slt          zero, tp, a6
                  sltiu        a7, sp, -669
                  lbu          a5, 116(s10)
                  add          zero, tp, s8
                  nop
                  lbu          s9, 199(s10)
                  slt          s5, t4, a0
                  sub          t4, s2, a6
                  lbu          s6, 106(s10)
                  sltu         t6, s11, a6
                  lh           s7, -97(s10)
                  sub          ra, a7, s5
                  sb           t3, 142(s10)
                  add          gp, s11, a7
                  lhu          s5, 105(s10)
                  lb           t0, -30(s10)
                  sltu         s9, s1, a2
                  srli         t5, t2, 22
                  lb           t3, 163(s10)
                  auipc        s9, 17232
                  andi         sp, gp, 463
                  lh           t5, 173(s10)
                  lui          t6, 906473
                  or           ra, t0, a5
                  slti         s0, s9, 1536
                  lb           s1, 243(s10)
                  lbu          t4, 182(s10) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+924 #start riscv_load_store_rand_instr_stream_2
                  sh           a7, -6(sp)
                  lhu          t6, -6(sp)
                  lbu          t5, 6(sp)
                  xori         s10, ra, 1503
                  lui          s3, 386046
                  slti         t2, gp, 1592
                  xor          t3, t4, a3
                  sltu         s7, s3, s8
                  sb           s5, -5(sp)
                  sw           s0, 8(sp)
                  addi         t0, s11, -1866
                  sb           t4, 7(sp)
                  srai         a3, zero, 31
                  lui          tp, 214536
                  sb           ra, -1(sp)
                  sb           s3, -9(sp)
                  lb           a2, -10(sp)
                  sub          t6, a7, s3
                  add          s8, s2, ra
                  ori          s8, s0, -460
                  lh           s2, -10(sp)
                  lb           t5, 6(sp)
                  lbu          s10, 15(sp)
                  sw           a5, -4(sp)
                  sw           s4, 16(sp)
                  xori         s6, s4, -1763
                  lhu          s8, 16(sp)
                  lbu          s5, 1(sp)
                  sra          t4, gp, sp
                  srai         t6, a0, 13
                  lhu          t4, -14(sp)
                  lb           t2, -15(sp)
                  sb           s9, 12(sp)
                  andi         t6, s3, -617
                  addi         gp, t3, -257
                  lbu          s5, -14(sp)
                  ori          s8, t3, -899
                  lbu          s11, 15(sp)
                  lui          gp, 924601
                  lhu          tp, 14(sp)
                  lw           s8, -16(sp)
                  or           s7, t1, t6
                  srai         a0, t5, 7
                  sub          t4, zero, sp
                  srl          s9, t5, s0
                  slt          t0, t1, t4
                  lb           gp, -7(sp)
                  ori          t3, s4, -1541
                  sh           s3, 2(sp)
                  lbu          s5, 6(sp)
                  sra          s2, zero, s9
                  add          a0, a1, a0
                  srl          s7, t3, s3
                  sb           s8, 13(sp)
                  lb           s10, -13(sp)
                  lhu          a4, 0(sp) #end riscv_load_store_rand_instr_stream_2
                  slt          zero, a4, sp
                  bgeu         tp, zero, 15f
                  xor          a3, s5, a6
                  and          sp, a6, gp
                  and          a3, t0, s7
                  blt          a1, s5, 23f
                  srl          a7, a2, tp
                  auipc        s5, 746953
                  srai         s5, ra, 10
                  xori         a2, s6, 392
                  sltiu        tp, a6, -427
                  sll          t5, a0, t1
                  xor          t3, zero, a7
                  ori          s11, s3, 595
                  or           s5, sp, t5
15:               slt          t0, a3, t1
                  bne          a4, a2, 32f
                  and          t6, t0, ra
                  srl          a7, a4, a2
                  andi         t4, s1, 685
                  sra          tp, s5, t6
                  srli         t5, gp, 31
                  lui          t6, 14993
23:               slt          s6, a7, t5
                  or           s2, tp, a2
                  slt          tp, s11, s6
                  add          t0, a3, s4
                  xor          s10, s11, s1
                  and          t5, t5, zero
                  ori          a3, s0, -1947
                  bgeu         s0, s4, 42f
                  srli         a5, gp, 30
32:               srli         t0, a0, 11
                  bge          s2, ra, 42f
                  srl          s5, zero, t0
                  bge          a4, a0, 55f
                  bne          a6, zero, 39f
                  lui          t4, 775947
                  and          s11, s3, gp
39:               andi         a7, s0, 51
                  and          a0, a0, s3
                  add          s7, t6, a1
42:               beq          s2, s10, 45f
                  bgeu         t0, a0, 51f
                  ori          s10, t1, -156
                  la           gp, sub_2
                  auipc        s10, 438553
                  auipc        s7, 693738
                  sra          s7, t1, s1
                  sltu         s6, t2, s8
                  lui          t1, 944618
                  sra          t6, s5, a2
                  addi         gp, gp, 631
                  xor          tp, t4, t1
                  slli         t6, s7, 15
                  ori          a0, t2, -52
                  sltu         t0, a2, t5
main_j1:          jalr         t2, gp, -630 #jump main -> sub_2
45:               sub          s1, s1, a4
                  slt          s2, s0, t3
                  nop
                  xori         s11, s9, -772
                  bne          gp, t5, 69f
                  ori          zero, a7, 920
51:               beq          s11, s1, 58f
                  bltu         t5, s2, 63f
                  blt          s7, a3, 67f
                  and          s10, t6, s8
55:               srai         tp, s5, 30
                  blt          t3, ra, 72f
                  xori         a0, a5, 1649
58:               addi         a5, a7, -136
                  xor          a0, a3, t4
                  srai         zero, s11, 24
                  srl          ra, t5, ra
                  bge          s5, a6, 81f
63:               slli         a5, t0, 10
                  sra          t5, s8, s10
                  ori          ra, gp, -276
                  slt          gp, t5, a6
67:               bltu         ra, zero, 76f
                  srai         s1, a6, 23
69:               sll          t2, t6, s9
                  lui          zero, 778609
                  srl          s7, t0, s3
72:               slti         s10, s4, 287
                  bne          s0, s8, 83f
                  addi         s0, s5, -1618
                  xor          a7, t5, s2
76:               bne          a7, s7, 84f
                  ori          t5, s7, -366
                  bge          t4, s0, 89f
                  sll          a2, s10, t0
                  addi         s7, gp, 1095
81:               bltu         a1, a7, 97f
                  bgeu         a0, tp, 97f
83:               ori          a3, ra, -947
84:               slti         t0, s9, 1611
                  sll          t4, s6, s10
                  bne          t0, a1, 100f
                  xori         s10, t1, 1425
                  bge          a7, a4, 89f
89:               nop
                  srai         s9, tp, 13
                  bltu         a1, s7, 107f
                  bge          s6, s0, 106f
                  beq          s4, s5, 101f
                  and          a0, sp, s4
                  slli         s10, s1, 28
                  srli         t4, s0, 24
97:               or           sp, t6, s0
                  bne          s2, s1, 112f
                  blt          t2, t0, 106f
100:              sltu         t3, s8, s3
101:              bltu         t3, a4, 113f
                  sra          t0, a1, gp
                  ori          sp, s2, -1379
                  bltu         s6, t4, 115f
                  sltiu        s5, s1, -1306
106:              bge          s2, t3, 120f
107:              add          t5, a4, t6
                  xor          t6, s2, ra
                  nop
                  beq          s11, t3, 118f
                  blt          a3, sp, 126f
112:              lui          s0, 273372
113:              nop
                  add          a2, t0, s3
115:              sub          t0, t4, a4
                  sll          ra, a5, ra
                  sll          a5, s6, a6
118:              xori         t6, t4, -1475
                  addi         a3, sp, 1063
120:              srai         t6, t3, 4
                  addi         s8, t5, 120
                  and          t4, a6, s4
                  xori         s3, sp, 1615
                  sra          gp, s9, s6
                  slti         s5, s8, -1070
126:              ori          zero, a4, 797
                  sltu         zero, s2, t6
                  bge          a7, a1, 135f
                  sub          t2, s9, s9
                  or           t0, t6, sp
                  bne          gp, a6, 145f
                  bge          a4, s6, 135f
                  xori         s0, s4, 1441
                  slli         s5, a1, 13
135:              slli         s0, t2, 25
                  srai         t6, s4, 31
                  bne          sp, s8, 146f
                  nop
                  xori         a3, t6, -374
                  srli         a0, sp, 16
                  slli         t5, s1, 21
                  sll          a0, a7, a0
                  slti         s0, s6, -1134
                  bge          t1, s10, 155f
145:              sub          t4, a2, t6
146:              sll          s5, a4, a6
                  slt          s0, s11, ra
                  slli         a2, s9, 26
                  beq          sp, ra, 157f
                  srai         t1, s1, 20
                  bge          a5, s11, 152f
152:              srli         t1, a7, 17
                  bgeu         s1, a4, 162f
                  sltu         s8, gp, a5
155:              srl          t0, a3, a5
                  or           a2, ra, a4
157:              beq          t4, gp, 171f
                  add          s8, t2, a0
                  beq          t5, s9, 178f
                  xori         gp, t2, 979
                  xori         t0, a7, -1364
162:              srli         s7, s8, 4
                  addi         t5, s0, 1896
                  and          a5, t3, sp
                  or           s6, s10, a4
                  addi         s0, a3, 1147
                  bge          s8, gp, 178f
                  sub          s3, s1, s6
                  slt          s2, t0, s11
                  xori         s8, a4, 276
171:              sltu         a2, ra, a2
                  andi         gp, t1, -1703
                  ori          t1, s9, -850
                  slt          t1, a5, t3
                  slti         s11, a4, 1463
                  bne          s4, s4, 192f
                  sltu         t1, a4, t3
178:              sra          t0, a3, a2
                  andi         t1, t6, -701
                  srl          t3, t2, gp
                  bgeu         s10, a2, 188f
                  andi         a2, s1, -1416
                  sltu         a3, s0, s10
                  sub          s2, sp, t0
                  xor          t0, gp, s3
                  sltiu        gp, s6, 808
                  slt          tp, t2, a4
188:              bne          s6, t0, 202f
                  bge          sp, a2, 201f
                  add          s11, a5, a6
                  xori         a2, s1, 960
192:              or           t0, t0, t3
                  slli         s8, s10, 22
                  srl          a3, a6, s6
                  blt          t4, s5, 206f
                  sltu         s2, t2, a2
                  addi         s10, s3, -834
                  add          s0, a2, ra
                  nop
                  lui          s5, 453045
201:              bge          t5, a1, 211f
202:              nop
                  slli         gp, s5, 21
                  sub          a2, a2, s1
                  sll          a5, s1, tp
206:              lui          t3, 13180
                  xor          gp, t4, s0
                  addi         s2, a1, -1758
                  sll          s7, s2, a4
                  and          tp, tp, s9
211:              nop
                  sub          s2, a6, s7
                  lui          a2, 903603
                  auipc        t2, 778582
                  or           a5, t4, s9
                  bge          t3, a3, 232f
                  slli         s5, a0, 30
                  srli         a7, s8, 16
                  xor          s9, s8, s2
                  srai         tp, a6, 4
                  sltu         sp, s7, s4
                  xor          s11, s2, ra
                  addi         s6, a1, -1224
                  srli         t1, t6, 6
                  sub          a7, s10, t3
                  auipc        a7, 593934
                  srli         s9, s1, 18
                  addi         gp, a5, -468
                  ori          t2, s4, -1659
                  auipc        s3, 630017
                  sub          s1, a1, a5
232:              sll          a5, gp, t2
                  xor          ra, s7, a7
                  bgeu         zero, a4, 250f
                  and          t3, sp, s4
                  beq          s3, a4, 254f
                  bge          a5, sp, 249f
                  lui          t0, 824529
                  add          s6, a5, a1
                  ori          t4, zero, 1301
                  sub          t0, s4, t2
                  bgeu         t6, t2, 245f
                  sltiu        ra, a6, 1934
                  bge          a2, s1, 258f
245:              xori         s1, a4, 1301
                  la           s6, sub_2
                  lui          ra, 850694
                  addi         s6, s6, -1000
                  sra          tp, a6, a1
                  bgeu         s1, t0, main_j3 #branch to jump instr
                  sub          zero, s6, s8
                  add          s5, ra, s6
                  slti         s5, tp, 6
                  slti         t4, s9, -85
main_j3:          jalr         t2, s6, 1000 #jump main -> sub_2
                  bgeu         a5, s3, 254f
                  sub          s11, s5, ra
                  add          t2, a2, a1
249:              or           s1, sp, t6
250:              bltu         s10, t5, 270f
                  xor          s6, t2, t3
                  slli         t2, a4, 30
                  ori          gp, s2, 1658
254:              sll          s8, s0, t0
                  srai         a7, zero, 27
                  nop
                  blt          s6, a3, 273f
258:              slti         gp, a6, -715
                  bne          t6, tp, 279f
                  nop
                  xor          s10, s8, s1
                  srl          tp, s7, a5
                  xori         t5, zero, -1328
                  addi         s8, t1, -1577
                  ori          a3, sp, -189
                  slt          tp, s8, s10
                  add          s9, a2, ra
                  andi         ra, a6, 859
                  srai         t1, a6, 25
270:              srl          s9, a3, tp
                  sub          t1, s6, s3
                  lui          t1, 907498
273:              sltiu        s2, s11, -1177
                  addi         t6, a1, 864
                  bltu         a3, s4, 278f
                  add          s0, a0, s7
                  sltu         s7, a5, s1
278:              lui          s2, 645976
279:              srai         s7, a0, 0
                  srli         ra, sp, 15
                  bge          s5, s3, 295f
                  xori         t3, s9, 906
                  addi         a0, ra, 1707
                  add          t5, s10, gp
                  lui          s0, 265938
                  nop
                  and          tp, s1, s6
                  sll          zero, zero, a2
                  andi         a7, s3, 1279
                  slli         s7, s7, 29
                  bne          a5, a4, 307f
                  auipc        tp, 734882
                  beq          a7, s0, 294f
294:              slli         s2, s1, 29
295:              sub          s0, a0, s7
                  sra          ra, zero, tp
                  bltu         t5, a1, 312f
                  slt          s5, sp, s11
                  lui          a3, 930389
                  lui          t2, 473727
                  lui          sp, 329086
                  sltiu        s2, s7, 322
                  add          s10, gp, t3
                  blt          t0, t1, 313f
                  xor          t2, a0, s9
                  auipc        s8, 559377
307:              auipc        a5, 28286
                  blt          a7, a6, 322f
                  bltu         a2, t6, 328f
                  srl          s10, s2, a5
                  slt          s2, t3, s8
312:              bltu         s4, s8, 328f
313:              srai         tp, a0, 30
                  add          t2, gp, gp
                  sub          t6, s4, a2
                  sltu         s1, tp, a0
                  sll          gp, t2, gp
                  add          s11, a5, s4
                  ori          t0, s4, -1083
                  slti         a5, t3, -1061
                  and          t1, ra, a0
322:              lui          a3, 131076
                  bltu         t5, s9, 333f
                  bne          gp, a5, 335f
                  bge          s9, a7, 337f
                  addi         a7, s3, -1619
                  andi         sp, t6, -169
328:              bge          tp, a7, 336f
                  sltu         s5, t1, t2
                  bgeu         a0, t4, 337f
                  lui          s11, 73582
                  add          a3, t5, t2
333:              slti         s10, t2, 2040
                  lui          a0, 525011
335:              xori         s5, a7, -1264
336:              add          a0, s3, s9
337:              sltiu        t6, t2, -1342
                  nop
                  xori         s6, gp, 658
                  xor          a5, sp, a6
                  addi         s9, s9, -1279
                  blt          s2, ra, 362f
                  sub          s2, s2, a4
                  add          a5, s7, s6
                  sltiu        a3, t6, -1209
                  add          zero, s1, a0
                  addi         s11, ra, -1347
                  or           t6, t2, s0
                  ori          s5, s8, -1715
                  auipc        a0, 540678
                  sltiu        s11, t6, 971
                  sltiu        sp, gp, 1544
                  bge          a5, s6, 369f
                  ori          s2, t1, 1299
                  la           s11, sub_1
                  slt          s1, s9, a5
                  andi         a3, s3, 1309
                  slti         s7, s3, -38
                  addi         s11, s11, -6
                  xori         a2, t3, -882
                  slli         a0, s9, 21
                  bge          zero, a3, main_j2 #branch to jump instr
                  slti         t0, a5, -1879
                  nop
                  slti         s9, a6, -47
                  slti         gp, t1, -98
                  slli         t2, s1, 11
main_j2:          jalr         t2, s11, 7 #jump main -> sub_1
                  sub          s7, a2, s8
                  slli         zero, a0, 7
                  sra          s9, t4, a0
                  srli         s8, a3, 7
                  slli         zero, t0, 19
                  sub          s7, t5, s9
                  slli         s9, s5, 9
362:              beq          s3, t2, 376f
                  auipc        zero, 131210
                  or           t1, s8, a3
                  bltu         t4, t3, 379f
                  ori          t2, tp, 638
                  sltiu        s2, a6, 1667
                  sltiu        tp, s8, -860
369:              sltu         a5, t1, a4
                  sltiu        s8, s11, 930
                  ori          s9, t1, 1698
                  lui          a5, 352651
                  srl          s2, t3, t2
                  or           zero, t2, ra
                  auipc        s7, 782506
376:              addi         a2, s0, 1807
                  srl          s8, s6, t5
                  slt          t3, t4, t2
379:              addi         s1, ra, -1047
                  nop
                  blt          a1, a0, 384f
                  andi         t3, s0, -347
                  ori          t1, a6, 1485
384:              sll          zero, sp, s6
                  nop
                  sub          a3, t6, s1
                  addi         sp, tp, -588
                  xor          a5, s9, s0
                  xor          a7, t5, ra
                  sltu         tp, zero, s6
                  or           a4, s9, sp
                  sra          t5, s4, t2
                  srli         ra, a7, 1
                  srl          s5, s10, s4
                  beq          a6, ra, 403f
                  nop
                  sra          s10, t0, a7
                  nop
                  ori          t4, a4, -1413
                  xori         s9, gp, 1852
                  xor          s5, s6, s3
                  auipc        t2, 797769
403:              sltu         gp, sp, a5
                  blt          s5, a7, 418f
                  beq          s3, s6, 417f
                  lui          a0, 347067
                  srai         a7, s5, 10
                  ori          s1, a6, 1868
                  slti         a7, s11, -1683
                  sub          t6, a6, zero
                  auipc        s8, 784585
                  sltu         t4, a5, a4
                  and          s1, a1, s11
                  srl          s9, t5, a6
                  blt          a2, a3, 422f
                  sltiu        ra, a6, -406
417:              sll          s8, t1, t4
418:              bltu         s11, a0, 422f
                  sltu         t5, a6, s9
                  slti         s5, a3, 2035
                  sra          s9, zero, s4
422:              add          a7, a3, gp
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            sltu         t0, a6, a4
                  bltu         s2, s5, sub_8_stack_p
sub_8_stack_p:    addi         s4, s4, -60
                  sltiu        ra, s6, 1530
                  sw           t2, 4(s4)
                  ori          t4, s11, -1899
                  sra          s2, s6, t4
                  slti         t3, t4, 140
                  sltu         a2, s6, gp
                  bltu         t4, t6, 16f
                  xor          t3, s1, a0
                  srai         t5, a0, 1
                  sltu         s8, sp, s5
                  slti         s5, s1, 1753
                  and          s0, s11, a4
                  slli         ra, t5, 16
                  bge          t2, s3, 26f
                  or           s6, t3, s6
                  bgeu         ra, zero, 23f
                  sra          s5, t0, a1
                  sra          s7, t1, t4
                  ori          a7, t0, -1403
                  slt          sp, t3, s2
                  slti         ra, s10, -463
16:               sll          t2, t0, a7
                  ori          ra, a6, 49
                  bge          t6, a1, 37f
                  sra          tp, t1, s10
                  auipc        t5, 272871
                  slli         s10, s0, 20
                  xori         a2, t3, 345
23:               xori         t2, a7, -1568
                  sra          sp, s8, gp
                  ori          s3, a6, 714
26:               slli         tp, t0, 0
                  addi         t1, t4, -980
                  andi         t3, s10, -1880
                  xor          s9, s6, s1
                  auipc        a0, 103634
                  and          tp, t4, a1
                  and          s7, s3, s10
                  srai         s9, t3, 13
                  auipc        s7, 845996
                  sltu         t6, tp, a1
                  slti         s8, a7, 1639
37:               sub          a7, a7, s1
                  lui          a4, 663997
                  sltiu        s0, t1, 1822
                  slt          t6, s7, a4
                  slti         s8, sp, -1660
                  bne          t0, s8, 58f
                  and          s8, t3, s4
                  slti         t1, a0, 1907
                  slli         s11, gp, 9
                  sub          a4, ra, t4
                  srli         s8, s4, 26
                  ori          t6, a2, 1829
                  sra          s7, tp, a2
                  add          t3, s1, a1
                  xori         a4, a6, 1719
                  srl          s10, gp, s3
                  lui          s6, 170599
                  sub          gp, a2, a7
                  or           t6, a4, s5
                  sltiu        a4, t4, -943
                  sltu         a7, t2, t2
58:               sra          t1, s0, t3
                  lui          a7, 855496
                  auipc        s9, 345769
                  bgeu         a6, sp, 74f
                  slti         s7, a3, -1207
                  beq          a5, t0, 68f
                  srai         sp, s1, 9
                  xor          t4, s9, sp
                  slt          sp, s4, s7
                  nop
68:               srai         t4, a7, 0
                  xori         t0, t5, -307
                  nop
                  addi         s10, gp, 460
                  srl          t6, t1, s5
                  sltu         a2, ra, t3
74:               nop
                  beq          t2, a0, 93f
                  add          a2, s3, a2
                  andi         s9, s11, 1096
                  and          a7, zero, s5
                  xori         s8, s7, -1581
                  bgeu         a7, gp, 85f
                  or           a2, s6, zero
                  beq          zero, a1, 85f
                  sub          a2, s0, s11
                  srl          tp, s5, t3
85:               lui          gp, 51245
                  xori         a0, s4, 1128
                  slt          sp, gp, a0
                  lui          sp, 99964
                  slti         a3, ra, 1939
                  add          a4, t2, ra
                  slt          s3, a3, s10
                  lui          ra, 952728
93:               or           tp, s6, s8
                  srl          tp, s6, a2
                  slli         a7, s5, 4
                  slti         zero, s1, 241
                  lw           t2, 4(s4)
                  ori          s7, a3, -1947
                  nop
                  addi         s4, s4, 60
                  xor          a3, s6, t6
110:              addi x1, x7, 1
110:              jalr x1, x1, 0
sub_4:            addi         s4, s4, -56
                  sw           t2, 4(s4)
                  sltiu        s0, s0, 1955
                  sra          a5, t3, gp
                  srli         zero, t6, 24
                  add          s3, s6, t3
                  auipc        s7, 92113
                  slt          s5, t4, tp
                  nop
                  la           sp, region_0+165 #start riscv_load_store_rand_instr_stream_1
                  lw           a4, 351(sp)
                  lb           a3, 291(sp)
                  srli         t0, s10, 4
                  srli         t0, s4, 13
                  lb           gp, 588(sp)
                  lb           a4, 516(sp)
                  lb           a3, 990(sp)
                  addi         a3, t0, 415
                  add          a5, s10, t2
                  lbu          a7, 333(sp)
                  addi         s11, s9, 1868
                  lb           s5, 164(sp)
                  sub          a2, s0, s8
                  sll          s6, s1, a1
                  lb           s3, 152(sp)
                  lbu          t4, 1192(sp)
                  xor          t0, s11, s2
                  lh           s6, 1749(sp)
                  lbu          a2, -158(sp)
                  ori          ra, s1, -2035
                  xor          s11, s4, s9
                  add          t5, s5, a6
                  and          s7, s5, ra
                  slti         t0, a7, -231
                  lb           s7, 1688(sp)
                  lbu          a0, -21(sp)
                  sh           t0, 753(sp)
                  slti         s9, zero, -1311
                  lbu          t5, 1140(sp)
                  lbu          s0, 1166(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_0+1740 #start riscv_load_store_rand_instr_stream_6
                  auipc        s2, 620538
                  srl          t3, s0, a4
                  sltu         tp, s2, t1
                  sra          s9, s1, s6
                  xor          s0, t1, s9
                  sll          s7, ra, a1
                  lbu          s6, 10(t0)
                  lh           t3, 0(t0)
                  lb           t4, -8(t0)
                  sll          zero, a4, sp
                  auipc        a3, 505386
                  sub          gp, s2, a1
                  srl          tp, t5, sp
                  lb           s10, -5(t0)
                  lb           sp, 4(t0)
                  xori         s6, s0, -1364
                  sh           ra, -6(t0)
                  nop
                  slti         a5, s1, 1939
                  srl          s0, a2, s4
                  slli         gp, t3, 8
                  srli         a2, a2, 27
                  lbu          t3, -9(t0)
                  xor          t4, s6, s10
                  ori          s11, tp, -1536
                  lbu          zero, 10(t0)
                  lb           a2, -2(t0)
                  lbu          a2, -15(t0)
                  sw           gp, 4(t0)
                  srli         s2, tp, 4
                  sw           t3, 8(t0)
                  sb           t6, -14(t0) #end riscv_load_store_rand_instr_stream_6
                  la           a4, region_0+1926 #start riscv_load_store_rand_instr_stream_3
                  lb           s11, 13(a4)
                  lhu          s7, -10(a4)
                  lbu          a5, -11(a4)
                  and          s10, sp, a5
                  sltu         tp, a4, a2
                  lbu          s10, 4(a4)
                  srai         s8, t6, 25
                  sltu         t0, t3, a6
                  lbu          t4, 1(a4)
                  lbu          sp, 11(a4)
                  lbu          sp, 0(a4)
                  or           t6, s7, a5
                  addi         s5, s4, -1955
                  andi         a5, a5, 171
                  lui          t4, 735803
                  sltu         s6, s5, s0
                  srai         t2, a4, 8
                  lb           s0, -2(a4)
                  lw           sp, 2(a4)
                  srai         a2, s10, 24
                  srai         s8, s2, 1
                  slt          gp, sp, s7
                  auipc        s8, 299804
                  sra          t5, a1, t3
                  sb           s3, 1(a4)
                  lb           t4, -12(a4)
                  sltiu        t0, s11, -1726
                  lbu          t1, -7(a4)
                  ori          s9, s5, 1247
                  sra          s8, t6, a6
                  sltu         s1, a1, s1
                  and          s3, s0, s10
                  sb           a1, -15(a4) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_0+1010 #start riscv_load_store_rand_instr_stream_5
                  or           a3, t5, s5
                  sra          a5, s1, gp
                  lh           zero, -2(a0)
                  ori          a4, t3, 316
                  lb           a3, -11(a0)
                  auipc        s8, 44358
                  slti         a7, ra, 1104
                  lh           s3, -14(a0)
                  sub          a2, a5, t5
                  xor          t4, t5, a4
                  or           gp, a0, s9
                  sub          zero, s0, t0
                  sb           a7, -13(a0)
                  lhu          s2, 16(a0)
                  addi         s3, zero, 1111
                  sb           t5, -7(a0)
                  sltiu        s5, a1, -1424
                  srl          s0, s9, t2
                  slli         s6, zero, 1
                  sra          sp, s5, a3
                  lb           s2, -11(a0)
                  slt          t5, s0, s2
                  lbu          a3, 12(a0)
                  sltiu        a3, s8, -1932
                  ori          t0, s0, 485
                  auipc        t6, 12392
                  xori         t3, sp, 714
                  srai         s10, ra, 21
                  auipc        s9, 210391
                  sb           s6, 1(a0)
                  sltu         s3, t3, zero
                  srai         gp, s4, 20
                  sh           t4, -12(a0)
                  lh           t3, -6(a0)
                  lbu          s3, -15(a0) #end riscv_load_store_rand_instr_stream_5
                  la           s9, region_1+1554 #start riscv_load_store_rand_instr_stream_8
                  lb           t2, -39(s9)
                  xor          s7, t6, s10
                  sltu         s1, a0, a4
                  sh           t3, -236(s9)
                  sltiu        a0, zero, -875
                  slti         a5, s6, 1289
                  lw           gp, 246(s9)
                  srli         sp, a7, 12
                  xor          zero, s2, sp
                  lb           t4, 176(s9)
                  lbu          tp, 170(s9)
                  lbu          sp, -207(s9)
                  sb           a5, -249(s9)
                  lw           a3, 50(s9)
                  slti         tp, ra, 904
                  lb           a4, -9(s9)
                  srli         t6, gp, 6
                  ori          t2, a0, -1068
                  sb           zero, -189(s9)
                  lh           s10, 92(s9)
                  xor          t4, a5, s5
                  lbu          t4, -21(s9)
                  srai         s5, ra, 31
                  slli         a7, sp, 0
                  sltu         a5, t5, tp
                  add          a0, t1, t3
                  and          s3, t3, t0
                  xor          a3, a3, s2
                  sh           s11, -6(s9)
                  sltiu        a5, a3, 528
                  lb           s10, 161(s9)
                  addi         zero, s11, -1169
                  sb           t5, -227(s9)
                  slti         s2, a1, -448
                  sub          s6, sp, s4
                  ori          zero, s6, 287
                  lb           s7, -50(s9)
                  andi         a4, s3, 1529
                  sll          t5, s10, s8
                  sltiu        t2, s10, -1705
                  sw           zero, 90(s9)
                  slli         s5, t4, 31
                  lbu          a7, -241(s9)
                  andi         t3, t4, 605
                  sll          s7, s1, a5
                  nop
                  and          tp, a1, t5
                  lb           s11, 171(s9) #end riscv_load_store_rand_instr_stream_8
                  bge          a6, s1, 4f
                  beq          t6, s8, 2f
2:                bgeu         t6, a6, 4f
                  andi         t5, s4, 1183
4:                xor          s9, t2, t4
                  srl          s9, sp, a3
                  srai         ra, sp, 19
                  xori         s10, t5, 1073
                  ori          t0, t0, 1235
                  slt          sp, tp, t1
                  and          t4, a5, a6
                  blt          a3, a4, 12f
12:               sltu         zero, t4, s0
                  xori         t1, a0, 1438
                  bgeu         a4, t0, 27f
                  sub          s11, sp, t0
                  bltu         zero, sp, 33f
                  ori          zero, s0, -615
                  srli         s9, t2, 1
                  slti         s5, t0, 601
                  xori         a4, s3, -37
                  sub          t4, s11, ra
                  srli         s8, s2, 9
                  add          t0, zero, tp
                  ori          a4, t4, -1892
                  bne          a7, ra, 26f
26:               srli         t5, a5, 31
27:               srli         a2, s3, 20
                  auipc        s6, 621355
                  srai         a0, t1, 26
                  nop
                  sub          gp, a1, s5
                  sll          zero, a7, tp
33:               slti         a3, s10, -267
                  srl          s2, tp, t6
                  slti         s6, t5, 772
                  andi         sp, a6, 1348
                  blt          a4, t3, 38f
38:               bgeu         s5, a2, 39f
39:               andi         t3, t3, 1540
                  xor          a2, gp, s5
                  sra          a7, t1, t6
                  srai         s8, tp, 1
                  srli         s10, s1, 28
                  addi         t0, s6, -820
                  auipc        t0, 945815
                  auipc        tp, 950943
                  slt          s8, a3, a5
                  beq          s10, s5, 63f
                  xor          a4, s6, t3
                  andi         s11, t4, 1786
                  sltiu        t4, a7, 1521
                  slti         gp, s4, 679
                  sll          s1, a7, t3
                  slt          s10, t3, gp
                  beq          s7, s8, 75f
                  bge          t6, t0, 61f
                  add          a0, a2, s4
                  auipc        s9, 194248
                  sltu         a2, s3, sp
                  bltu         tp, sp, 76f
61:               srli         a3, t1, 7
                  sra          a3, s11, s10
63:               bne          zero, a2, 67f
                  slt          tp, a1, a7
                  srl          t3, a4, s9
                  xor          s7, t3, t2
67:               beq          ra, t4, 83f
                  blt          t5, a7, 71f
                  bne          ra, a5, 74f
                  and          t0, tp, a4
71:               sra          a2, t0, a1
                  sltu         a7, a5, tp
                  sltiu        a4, s2, 272
74:               xori         s8, s8, -118
75:               xor          s6, s5, t1
76:               bne          a1, s5, 77f
77:               srai         s9, s3, 25
                  sltu         s3, t1, s11
                  beq          a1, s8, 90f
                  srl          zero, a7, s11
                  nop
                  bne          s9, a6, 87f
83:               auipc        s10, 485561
                  bne          zero, t1, 101f
                  beq          s4, t1, 97f
                  bgeu         t5, a4, 91f
87:               xor          s5, s1, a3
                  nop
                  xori         ra, a7, -1522
90:               bltu         s4, t2, 99f
91:               srl          t0, a3, a4
                  bgeu         a2, s4, 109f
                  sltu         a0, t3, t0
                  bgeu         gp, a7, 114f
                  slti         s0, a6, -1495
                  sltiu        t3, a0, -1662
97:               srai         s11, a1, 1
                  sll          s7, t3, a4
99:               auipc        zero, 800192
                  slli         a5, s10, 25
101:              sltu         t3, t4, t1
                  or           a5, tp, s11
                  nop
                  bge          a5, s0, 113f
                  sub          s5, a2, a0
                  bltu         a4, sp, 126f
                  andi         t2, s10, -694
                  slti         sp, t0, -1359
109:              sltu         a7, s10, t2
                  sltu         ra, s6, a7
                  bltu         tp, t5, 117f
                  xori         s10, sp, -767
113:              slt          gp, a1, t3
114:              bgeu         s2, a4, 124f
                  srl          t5, s5, zero
                  sra          a3, t1, t1
117:              auipc        t3, 1018670
                  bltu         a4, a1, 122f
                  sub          a7, tp, t2
                  srai         zero, a4, 4
                  lui          s8, 941395
122:              nop
                  sub          a5, s1, a2
124:              sll          s3, s11, a1
                  xor          s9, t3, s7
126:              xor          a0, s10, a4
                  bne          s7, s1, 136f
                  lui          t2, 716123
                  bge          zero, a6, 145f
                  sll          a5, a7, t0
                  bge          s0, s0, 132f
132:              auipc        s0, 390403
                  beq          a0, t2, 142f
                  bne          s2, a5, 135f
135:              srl          a5, a0, a4
136:              bne          s6, gp, 156f
                  and          zero, t4, s3
                  sltu         s2, a0, tp
                  addi         a3, a6, -1223
                  xor          sp, s10, gp
                  blt          s1, s6, 154f
142:              srli         a7, s7, 26
                  slti         t4, t5, -292
                  andi         a5, s2, 1856
145:              auipc        a0, 919795
                  sra          s1, s9, a5
                  beq          sp, s10, 164f
                  srl          a2, a0, s0
                  sltu         t2, s5, t6
                  auipc        a5, 413215
                  slt          a2, a1, s9
                  srli         s11, s7, 3
                  blt          t1, a4, 154f
154:              srai         s10, s0, 3
                  sra          s6, a7, t3
156:              lui          a5, 1006227
                  xori         s3, a0, -1918
                  bge          a4, s7, 163f
                  ori          t5, zero, 1768
                  beq          t2, a4, 177f
                  sltu         ra, t2, s6
                  slli         t2, s5, 21
163:              auipc        s7, 340447
164:              beq          s2, gp, 181f
                  bne          gp, s6, 168f
                  sub          s1, tp, s2
                  andi         zero, a7, 1424
168:              srai         a7, s6, 12
                  bge          s3, s2, 180f
                  add          ra, a6, t0
                  addi         t1, a1, 305
                  sltu         s6, t6, a7
                  auipc        s8, 539744
                  bgeu         s10, s4, 194f
                  slti         t0, a4, 193
                  xor          s3, s8, s2
177:              xori         s7, zero, 1328
                  srai         s1, gp, 24
                  xor          t0, a3, ra
180:              slti         a0, s10, -1857
181:              bltu         a1, t3, 186f
                  slt          ra, tp, s9
                  srai         sp, a1, 8
                  bne          s8, sp, 185f
185:              slli         s1, s3, 2
186:              add          s10, s0, s11
                  slli         t1, a4, 30
                  sll          s9, a4, sp
                  sll          a4, t2, sp
                  bne          a6, s10, 200f
                  and          ra, a6, gp
                  sll          t1, t2, s4
                  slli         t1, t0, 3
194:              sub          t2, a2, a3
                  slli         zero, s4, 11
                  add          a5, a5, s7
                  srl          a5, s6, s6
                  beq          sp, t3, 202f
                  slti         gp, s2, -1078
200:              bge          s9, a3, 220f
                  slli         s5, t0, 5
202:              xor          a7, s7, s8
                  sll          ra, s4, s0
                  bne          s11, a6, 219f
                  or           sp, t1, zero
                  sltiu        s3, s6, -676
                  slti         t2, t5, 1436
                  bltu         s2, t1, 224f
                  bge          zero, s0, 214f
                  srl          s2, a0, t6
                  blt          t4, s5, 212f
212:              nop
                  bgeu         a4, a1, 214f
214:              addi         t1, t4, -1113
                  addi         s8, s10, -1304
                  addi         s7, s6, -1318
                  srl          zero, s4, s9
                  sra          tp, t3, t2
219:              slli         zero, a4, 1
220:              xori         t4, t3, -941
                  sltiu        a0, s1, 995
                  sra          a4, t2, t6
                  bltu         t0, s8, 235f
224:              bge          zero, t2, 229f
                  nop
                  bgeu         s2, a3, 232f
                  sltiu        s11, s8, 1520
                  auipc        s6, 1025976
229:              auipc        t4, 622279
                  bltu         gp, t5, 232f
                  sltu         sp, s8, ra
232:              andi         s6, a0, 917
                  auipc        a7, 504120
                  sltiu        t0, t4, -1281
235:              beq          tp, s5, 252f
                  and          t4, a6, s11
                  beq          s8, s3, 240f
                  ori          s8, t2, -1524
                  or           zero, t5, a6
240:              beq          t2, a1, 260f
                  blt          tp, a2, 242f
242:              addi         a3, s11, -1
                  xor          t2, a2, s7
                  slt          sp, s9, s7
                  and          s1, ra, a6
                  ori          a0, a1, 1505
                  beq          a5, a0, 253f
                  bgeu         a4, t4, 268f
                  sltu         a2, s1, a2
                  slli         tp, s8, 0
                  ori          t2, t3, 2040
252:              slt          s9, t0, a7
253:              ori          s3, zero, -1501
                  auipc        sp, 707400
                  slti         s7, s4, 356
                  bgeu         s0, a3, 260f
                  bgeu         t6, s4, 266f
                  slti         t1, a6, -967
                  bgeu         s9, tp, 260f
260:              bltu         t6, s11, 273f
                  lui          s10, 505979
                  blt          s5, s2, 282f
                  sltu         s7, s6, a2
                  or           s6, s4, a2
                  slt          tp, a0, a6
266:              bne          a4, a0, 276f
                  sub          t5, a1, s6
268:              xor          t6, a1, t6
                  bgeu         a5, a3, 274f
                  sll          tp, a6, a3
                  andi         s5, t6, -1352
                  bge          s3, a7, 277f
273:              bne          s0, s2, 277f
274:              slti         a5, s0, -1476
                  andi         t3, a0, 484
276:              srl          s6, t6, s3
277:              auipc        t3, 50271
                  srl          sp, ra, a0
                  nop
                  sltu         t4, a6, s10
                  nop
282:              xori         s5, s1, -1556
                  sra          t3, a7, t3
                  bne          s10, s6, 293f
                  andi         t0, s10, -898
                  addi         a4, s4, 1988
                  blt          s0, sp, 288f
288:              sra          a3, sp, s8
                  ori          tp, a4, 29
                  slli         s3, s3, 24
                  lui          s9, 390487
                  la           sp, region_0+1602 #start riscv_load_store_rand_instr_stream_4
                  sb           s4, -37(sp)
                  sll          a4, a1, sp
                  srai         tp, t1, 30
                  lb           t6, 18(sp)
                  sb           t4, 57(sp)
                  lhu          s3, 22(sp)
                  ori          gp, s1, -1432
                  andi         a7, sp, -344
                  lbu          s1, 16(sp)
                  sub          s0, a4, a5
                  lh           s8, -14(sp)
                  sub          s3, t6, t2
                  lbu          s7, 12(sp)
                  sll          s0, s8, gp
                  lbu          s2, 42(sp)
                  srai         t3, s9, 11
                  lhu          tp, -22(sp)
                  slti         t1, t0, 557
                  add          s0, a1, s4
                  lb           a0, -30(sp)
                  sb           s8, -53(sp) #end riscv_load_store_rand_instr_stream_4
                  add          t0, tp, s4
293:              and          sp, s5, a7
                  ori          s2, s9, 859
                  ori          s11, s10, -2005
                  auipc        s0, 383662
                  blt          s3, t3, 298f
298:              xor          s7, s8, s11
                  sltiu        a4, a4, 687
                  auipc        a5, 37895
                  nop
                  srai         sp, t3, 7
                  slt          s1, sp, s11
                  slli         a4, a3, 26
                  bgeu         s0, s1, 306f
306:              sltiu        s9, t1, 1384
                  slt          a0, a4, s8
                  nop
                  bgeu         s1, a6, 310f
310:              bge          t1, t3, 326f
                  sltu         s11, s9, a4
                  bgeu         s2, t0, 329f
                  bgeu         t1, a3, 329f
                  blt          a2, s4, 319f
                  sra          s3, t0, a1
                  bltu         t5, gp, 331f
                  sll          s11, a6, s11
                  slli         t4, t2, 12
319:              auipc        s11, 476322
                  bgeu         t3, a2, 325f
                  addi         s11, a6, 1654
                  nop
                  srli         s5, tp, 31
                  xori         a2, s6, 1280
325:              bgeu         s9, a7, 337f
326:              beq          a3, s3, 343f
                  bge          s4, a6, 329f
                  blt          a4, ra, 339f
329:              sub          zero, s4, t6
                  sltiu        t4, sp, -1301
331:              srl          zero, s6, a2
                  sra          t3, s5, t6
                  sub          a0, zero, t3
                  beq          a2, ra, 339f
                  sra          t0, s3, t0
                  beq          t6, s9, 337f
337:              add          s7, t5, s0
                  sll          s11, t1, t4
339:              blt          a1, s5, 340f
340:              xor          sp, t6, t1
                  andi         s1, a5, 1110
                  ori          s11, s5, 1721
343:              bne          zero, t1, 358f
                  blt          s9, a1, 345f
345:              sra          s1, a7, t2
                  andi         a0, t0, -1201
                  sub          s6, t6, a0
                  slt          s11, s0, tp
                  srli         sp, s0, 16
                  and          t0, zero, t5
                  sltiu        s5, a1, -1422
                  srai         a7, s1, 7
                  srai         a2, a7, 4
                  srai         tp, sp, 22
                  xor          s10, s1, t4
                  auipc        s7, 300213
                  xor          a7, s8, s6
358:              slt          tp, s6, t1
                  srli         gp, a5, 27
                  blt          zero, a3, 370f
                  bgeu         t6, s0, 373f
                  srai         a5, t5, 6
                  srl          s1, s7, t1
                  add          a5, t1, ra
                  bgeu         t0, s2, 366f
366:              lui          s2, 959788
                  sra          a3, a2, a0
                  andi         a7, t5, 1693
                  nop
370:              and          s7, s5, t3
                  nop
                  nop
373:              sll          sp, a1, a0
                  auipc        s0, 415223
                  add          t6, s2, s0
                  sra          s5, s5, s8
                  add          zero, s10, a4
                  srl          zero, s2, s5
                  srli         s5, t0, 28
                  bge          t4, t4, 397f
                  nop
                  sltu         t3, s11, a7
                  slti         s3, t4, 1827
                  sltu         a5, a3, t4
                  ori          s11, s9, 782
                  slti         s3, a0, -1064
                  lui          s3, 406379
                  auipc        s11, 331395
                  slti         s2, s2, 1191
                  slt          ra, s1, a2
                  and          s5, t1, s10
                  andi         a4, a1, -1505
                  xor          t6, a7, s7
                  bge          t0, s4, 414f
                  nop
                  beq          t1, a3, 401f
397:              auipc        s10, 349311
                  xori         t1, s3, -53
                  bgeu         a7, a6, 404f
                  xor          gp, s3, s6
401:              lui          tp, 492440
                  and          a3, s5, zero
                  sltiu        s3, s1, -140
404:              sra          zero, t2, s5
                  sra          t3, t3, s3
                  bge          a0, s11, 411f
                  xori         s11, s6, 65
                  bge          a6, s0, 421f
                  andi         s2, s3, 839
                  xori         a0, a1, -542
411:              srl          tp, ra, s9
                  srai         a7, s9, 25
                  sltu         s3, t6, s7
414:              bgeu         ra, s5, 431f
                  sub          t0, s10, t4
                  auipc        a3, 371423
                  srli         s10, zero, 4
                  bltu         t6, sp, 427f
                  or           t2, s6, tp
                  add          a3, t6, a1
421:              auipc        s10, 573874
                  bgeu         a1, a5, 424f
                  lui          s10, 212314
424:              bge          a6, a0, 441f
                  andi         a3, s0, -783
                  bne          a0, a1, 429f
427:              add          a2, t5, s7
                  nop
429:              xor          s9, t2, a7
                  srai         gp, s9, 31
431:              bne          s4, gp, 440f
                  sltiu        a3, s0, -1861
                  sltu         t0, t4, gp
                  slli         s3, s11, 11
                  srai         t0, s2, 15
                  addi         s8, tp, -1102
                  slli         t3, s0, 26
                  ori          s11, a3, 1308
                  beq          a3, a4, 443f
440:              and          t4, s9, a0
441:              bgeu         a3, ra, 445f
                  slli         a4, a6, 2
443:              bltu         t5, ra, 444f
444:              sll          s2, s9, a3
445:              sra          sp, t2, s8
                  sltu         s3, s8, ra
                  srai         zero, a3, 26
                  nop
                  sltu         a3, s8, s6
                  sltu         s11, ra, a4
                  bgeu         s0, a2, 467f
                  nop
                  ori          t4, a4, 1569
                  nop
                  and          t6, t6, s4
                  bge          t3, sp, 457f
457:              or           a2, a7, a4
                  bgeu         s1, gp, 474f
                  andi         t3, ra, -1764
                  sub          a0, s0, t3
                  blt          a3, t3, 481f
                  addi         t1, s0, -2033
                  slti         t3, a6, 1577
                  xori         s3, t6, 240
                  bltu         a6, s11, 476f
                  and          a7, t0, s8
467:              bltu         a1, a1, 473f
                  lui          s8, 511025
                  sll          s9, t3, t2
                  blt          a3, t0, 490f
                  bltu         t5, s5, 491f
                  srl          a7, t4, a1
473:              srl          tp, s6, s4
474:              srai         t3, a3, 24
                  srli         t4, s3, 2
476:              sltiu        s10, a2, 989
                  bge          s4, t4, 479f
                  sll          s7, t1, a6
479:              or           sp, s0, gp
                  nop
481:              auipc        s10, 124789
                  or           s1, s7, s10
                  bne          s10, tp, 500f
                  auipc        a0, 905166
                  addi         s8, s6, -1792
                  srl          a3, t4, s6
                  srai         a3, a5, 14
                  auipc        t3, 670104
                  srai         t2, s1, 17
490:              sltu         ra, t2, a1
491:              slli         s7, s10, 7
                  bne          s5, s9, 509f
                  or           a7, sp, t5
                  beq          t6, s10, 499f
                  bne          gp, a7, 504f
                  addi         s2, t5, -811
                  or           a7, t0, a2
                  beq          t1, s8, 499f
499:              slti         t0, s2, 186
500:              and          t3, a6, s4
                  blt          s9, tp, 502f
502:              sub          t0, a1, s7
                  bge          t0, a3, 518f
504:              xori         t6, t3, 1046
                  and          s1, t0, t0
                  blt          a0, s4, 523f
                  sltiu        zero, tp, 800
                  sub          ra, t2, t3
509:              slti         s10, gp, 790
                  addi         s1, s7, -623
                  bgeu         t5, t6, 527f
                  slti         tp, a7, 470
                  bne          a1, s10, 518f
                  srl          t3, s8, ra
                  addi         ra, a0, -1394
                  xori         s2, a4, -748
                  sub          a3, t3, a4
518:              sub          s8, a0, ra
                  slt          a5, t6, s5
                  slli         s8, s4, 1
                  bgeu         s2, t6, 522f
522:              bgeu         s9, a1, 532f
523:              srai         a4, s7, 25
                  srli         gp, sp, 12
                  sll          zero, s0, a5
                  and          a4, t4, s0
527:              add          t5, a6, s3
                  sub          zero, s10, s2
                  beq          a0, a1, 530f
530:              auipc        t2, 942211
                  slt          s1, s4, t3
532:              and          s3, a3, s3
                  slt          a0, a3, a2
                  sltu         t6, ra, t5
                  srli         s5, a1, 24
                  ori          t1, sp, 1112
                  slt          t1, t6, a3
                  sll          tp, t4, a2
                  lui          t5, 337355
                  bge          a7, ra, 560f
                  ori          t5, a3, -508
                  slli         s2, a1, 23
                  slli         a0, a6, 4
                  sltu         t0, a0, a0
                  srl          t6, s4, a1
                  ori          ra, zero, 803
                  bgeu         s6, s3, 550f
                  srai         s10, t1, 15
                  srli         s5, t0, 13
550:              or           sp, s7, a2
                  and          s11, a7, a6
                  andi         s0, s10, -387
                  add          a7, a1, tp
                  or           a2, a2, s10
                  sltiu        ra, s11, -1503
                  auipc        t5, 518994
                  xor          gp, s8, zero
                  andi         t6, s3, -1139
                  lui          zero, 586622
560:              bge          t2, s2, 576f
                  sltu         zero, t6, a2
                  slti         a2, t2, -38
                  sra          s9, s4, a5
                  slt          tp, t6, a3
                  addi         s9, s1, 867
                  sll          s6, t4, s5
                  xori         zero, a5, -1382
                  bne          t0, s10, 569f
569:              bltu         t6, a3, 574f
                  sltiu        s1, gp, -862
                  srli         t3, ra, 29
                  srai         t2, a2, 3
                  sll          t3, s1, s9
574:              beq          t0, a3, 585f
                  nop
576:              add          a4, ra, tp
                  srl          s11, s10, s6
                  addi         s11, t3, -1253
                  bne          a5, s7, 599f
                  xori         s3, a0, 1149
                  sltu         a3, t3, s1
                  add          s10, s3, sp
                  addi         a4, s10, -561
                  andi         t3, gp, -1843
585:              add          s0, s10, a0
                  addi         s7, t5, -1870
                  sltu         t1, s5, t2
                  nop
                  sll          s5, t6, a4
                  auipc        s11, 941130
                  bltu         zero, s0, 592f
592:              andi         s2, t4, 1430
                  slt          t5, zero, s10
                  bne          s9, s7, 606f
                  slli         ra, s1, 1
                  beq          s2, gp, 609f
                  sltiu        t3, a2, -640
                  xori         a5, a1, 1416
599:              or           t5, s5, ra
                  slli         s11, t6, 0
                  bltu         a1, tp, 605f
                  sltu         s9, s8, s4
                  srl          zero, a2, s8
                  lui          t1, 1012859
605:              slti         sp, s2, -119
606:              sll          sp, t0, tp
                  addi         a3, s8, 105
                  add          a2, s9, t3
609:              bge          sp, ra, 613f
                  lui          a7, 238797
                  bltu         a0, s6, 620f
                  slti         t2, a6, -1098
613:              slti         s8, t4, 907
                  bltu         ra, s5, 620f
                  sra          s11, ra, s3
                  auipc        a2, 167124
                  slli         t6, s1, 20
                  bne          t6, s3, 623f
                  la           s6, region_0+226 #start riscv_load_store_rand_instr_stream_2
                  lhu          t0, -220(s6)
                  sh           s9, 148(s6)
                  lbu          a2, 47(s6)
                  addi         t6, t6, 922
                  sra          t6, s4, s1
                  sb           a7, -127(s6)
                  sh           tp, -226(s6)
                  sh           s11, 132(s6)
                  sb           s7, 239(s6)
                  lb           s7, 132(s6)
                  lbu          t4, -77(s6)
                  sb           s10, -184(s6)
                  lhu          a5, -64(s6)
                  sub          s11, a4, a7
                  lh           a2, 70(s6)
                  lh           sp, 140(s6)
                  lb           s8, 165(s6)
                  lbu          a7, -133(s6)
                  lb           s0, -103(s6)
                  ori          t5, a2, -921
                  sb           s7, 2(s6)
                  and          s0, t0, a2
                  sra          a2, s2, s0
                  sb           s5, 226(s6)
                  sh           a4, -86(s6)
                  sra          zero, a3, a0
                  sra          s2, s2, gp
                  and          s10, ra, a5
                  lbu          a7, 0(s6)
                  lb           t1, -147(s6)
                  sll          zero, tp, s1
                  xor          a4, a0, a5
                  sb           a0, 24(s6)
                  lhu          s8, -144(s6)
                  lbu          ra, 219(s6)
                  lbu          a0, -61(s6)
                  sb           a1, -145(s6)
                  sb           s7, 251(s6) #end riscv_load_store_rand_instr_stream_2
                  lui          a7, 41271
620:              slt          zero, s9, t1
                  sltu         ra, a4, a7
                  beq          s10, t5, 627f
623:              or           a0, s2, t2
                  andi         s3, t3, -1142
                  lui          tp, 133783
                  beq          s10, tp, 637f
627:              beq          s2, s5, 647f
                  auipc        t3, 432065
                  andi         s2, s8, -386
                  ori          a0, t5, -828
                  srl          s8, a1, t6
                  and          s6, ra, s4
                  blt          gp, a7, 634f
634:              srai         zero, a2, 19
                  blt          a4, s0, 636f
636:              xori         t1, tp, -664
637:              slt          s2, s3, s6
                  lui          t2, 542564
                  srl          t4, ra, t2
                  bne          s1, t0, 643f
                  xor          a0, gp, tp
                  nop
643:              xori         a4, s9, 1825
                  beq          s10, s4, 648f
                  auipc        sp, 282391
                  blt          s6, tp, 651f
647:              slt          s8, s4, s11
648:              or           s9, s4, s2
                  and          t1, a7, a3
                  or           ra, sp, s8
651:              bge          t4, a4, 663f
                  bne          a1, s8, 669f
                  nop
                  ori          s5, t6, -57
                  blt          gp, t0, 665f
                  and          a3, a5, ra
                  sltu         s5, s9, s5
                  lui          s5, 341540
                  srai         s5, t2, 8
                  bne          t1, ra, 661f
661:              or           gp, a1, s7
                  slti         tp, t3, 85
663:              addi         t6, sp, 1038
                  srai         t6, s9, 6
665:              srli         zero, s8, 4
                  srli         a3, zero, 27
                  bgeu         t4, s3, 672f
                  srai         a5, a0, 6
669:              or           a2, a5, s1
                  lui          t6, 988164
                  sltiu        t1, s8, 1590
672:              nop
                  and          ra, s0, t1
                  sltiu        s8, a1, 491
                  lui          t2, 540826
                  ori          t3, s4, 1904
                  nop
                  auipc        a0, 861667
                  sra          a7, t6, sp
                  and          s5, a2, s5
                  sltu         s5, s2, t0
                  sub          a7, t6, ra
                  nop
                  slli         s0, zero, 27
                  bltu         a3, s10, 701f
                  slti         zero, s7, -379
                  ori          t2, t0, 2011
                  addi         t3, s3, -1226
                  addi         sp, gp, -849
                  addi         s9, ra, -90
                  or           s3, s9, s8
                  xori         s11, a0, -835
                  addi         gp, t4, -1287
                  sltu         s9, zero, t1
                  add          a4, s6, a7
                  and          a4, a7, s5
                  xori         s5, a4, -573
                  srl          tp, s7, tp
                  xori         a5, s8, 2030
                  slli         t3, t5, 0
701:              slt          zero, a0, s11
                  slli         a5, a6, 1
                  srl          t5, t2, gp
                  sll          t6, t5, a0
                  auipc        t0, 960988
                  lui          a4, 19953
                  srl          s10, a7, t5
                  xor          sp, s5, gp
                  slt          a5, a2, s5
                  srai         a3, a3, 0
                  beq          s8, s8, 715f
                  sltu         s6, tp, a0
                  sra          s8, ra, t5
                  or           tp, sp, sp
715:              beq          s6, s8, 721f
                  slti         s0, zero, 1159
                  sub          s6, a1, s8
                  bne          s0, gp, 719f
719:              bgeu         t1, zero, 721f
                  bltu         a7, t3, 737f
721:              addi         ra, t0, 880
                  nop
                  bgeu         zero, t4, 739f
                  and          s7, gp, a6
                  sra          t4, zero, a6
                  bne          ra, a5, 746f
                  andi         gp, zero, -3
                  bltu         a7, t5, 729f
729:              srli         tp, a0, 22
                  srli         s5, t4, 24
                  bltu         gp, t4, 744f
                  srai         t2, s4, 29
                  add          s6, zero, a6
                  bge          s3, s2, 739f
                  sll          s7, t3, s5
                  ori          t6, a1, -1960
737:              sll          s1, t5, s10
                  ori          a2, ra, -365
739:              sll          a2, a1, ra
                  bltu         s2, s4, 749f
                  lui          t2, 215969
                  and          t6, s2, a1
                  and          zero, t2, a5
744:              sll          a7, t0, gp
                  bltu         s5, s1, 760f
746:              srai         t0, s5, 21
                  bgeu         s10, ra, 756f
                  and          gp, s9, a1
749:              srli         a4, tp, 23
                  srl          s2, s6, s9
                  srl          tp, s11, t2
                  add          tp, s1, t3
                  bgeu         s6, tp, 770f
                  slti         s5, a6, -793
                  sll          s5, t3, s5
756:              slti         t6, gp, 1052
                  auipc        s7, 330311
                  sub          a5, t3, s8
                  nop
760:              add          t1, a6, zero
                  addi         t2, t4, 100
                  andi         a7, s6, 1347
                  slli         t1, a3, 12
                  lui          s1, 12159
                  sll          s3, s4, s0
                  bgeu         s7, s10, 767f
767:              xori         a4, a7, -503
                  bne          s8, s1, 788f
                  slli         s10, s7, 28
770:              srli         t5, t6, 12
                  sub          a3, s4, s0
                  and          s11, zero, s10
                  sra          ra, a3, a5
                  bne          s7, s4, 783f
                  bge          t6, s9, 780f
                  or           t3, a7, s11
                  auipc        s1, 495354
                  blt          s7, s6, 787f
                  lui          s10, 812812
780:              sltu         s7, s0, s10
                  nop
                  nop
783:              bge          sp, s7, 800f
                  sub          a2, t6, a7
                  sltiu        t2, s9, -1635
                  sub          gp, a7, sp
787:              addi         gp, s10, 1101
788:              ori          t2, a5, -1554
                  xor          s6, gp, a0
                  srai         s10, t3, 18
                  xor          s1, tp, tp
                  bltu         s2, t5, 797f
                  addi         t1, t1, -447
                  beq          a7, a2, 797f
                  andi         s0, a1, 1734
                  add          a5, s4, t2
797:              srli         t6, s1, 21
                  srai         t1, tp, 3
                  bge          s0, t3, 815f
800:              sub          ra, t1, a7
                  srli         t6, ra, 25
                  sll          ra, s8, s11
                  xor          t4, a5, gp
                  xor          t4, ra, s2
                  add          t5, s6, s9
                  bne          t2, s9, 823f
                  add          s1, t4, s10
                  bge          a1, s8, 809f
809:              addi         s0, s7, 1453
                  slti         gp, s11, -1558
                  sltu         s9, t0, zero
                  add          a5, t6, a1
                  beq          t4, a5, 814f
814:              srli         t0, a3, 18
815:              sltiu        a7, t3, 1216
                  xori         a5, zero, -1455
                  sub          s0, gp, s2
                  ori          t6, t0, 28
                  beq          a1, s7, 821f
                  xori         t5, s4, -1399
821:              or           t3, a1, t1
                  add          tp, t6, gp
823:              sltu         t4, s0, s7
                  lui          t3, 121609
                  ori          t0, sp, 1682
                  srli         t2, t3, 28
                  nop
                  bltu         t3, s9, 832f
                  lui          t2, 727274
                  sra          ra, a1, ra
                  la           sp, region_1+229 #start riscv_load_store_rand_instr_stream_0
                  lbu          s7, 26(sp)
                  sra          a5, t5, tp
                  lb           s6, -42(sp)
                  xor          s9, s1, t5
                  lbu          s11, -38(sp)
                  slti         t3, gp, -2006
                  srai         s6, a2, 31
                  nop
                  xori         t4, s10, 817
                  xor          s3, a2, s10
                  and          t5, s10, t4
                  lb           s8, -34(sp)
                  lbu          s11, 44(sp)
                  nop
                  srai         a5, gp, 5
                  sb           s1, -48(sp)
                  lhu          s10, 51(sp)
                  lhu          s8, -47(sp)
                  sb           s9, 62(sp)
                  slt          a2, a1, a7
                  srl          a4, a3, ra
                  lb           zero, 43(sp)
                  sh           s8, 51(sp)
                  lb           a5, -60(sp)
                  srli         a0, s1, 24
                  ori          t0, t2, -1288
                  sb           t6, -2(sp)
                  xori         gp, t2, 927
                  slti         s6, s0, -1280
                  srl          tp, s4, a7
                  sra          a2, t1, t0
                  lh           a4, -19(sp)
                  sltiu        s10, s1, -465
                  sw           a3, -53(sp)
                  lb           a0, 16(sp) #end riscv_load_store_rand_instr_stream_0
                  srli         s11, s3, 2
832:              slti         s9, a1, -1970
                  ori          tp, s7, 2033
                  srli         a4, zero, 8
                  nop
                  sub          s0, tp, s6
                  srl          a2, a4, s8
                  sltu         gp, sp, s11
                  andi         s5, a5, -1646
                  slli         gp, gp, 3
                  xor          a5, t2, a1
                  slti         s7, a2, -1732
                  beq          s0, s11, 853f
                  auipc        t1, 731164
                  beq          s10, t0, 849f
                  blt          s5, t3, 858f
                  bne          a5, s8, 853f
                  auipc        ra, 994460
849:              andi         s5, s10, 312
                  srai         t6, tp, 9
                  bge          s0, ra, 867f
                  srai         s8, s1, 24
853:              lui          s11, 1026465
                  sra          a3, a0, s1
                  beq          s2, s10, 856f
856:              sll          s1, sp, a5
                  bltu         s8, tp, 862f
858:              auipc        tp, 629288
                  bltu         s7, t4, 860f
860:              sltiu        t6, t5, -1558
                  andi         t4, s6, 140
862:              srli         s10, a0, 3
                  bgeu         ra, s2, 878f
                  and          a3, a0, s9
                  xor          s10, a3, a6
                  bge          s11, a1, 867f
867:              sltu         ra, a7, s9
                  slt          s1, s3, a2
                  auipc        a0, 815464
                  beq          t2, a0, 883f
                  nop
                  srai         a0, a3, 22
                  srli         t1, s9, 1
                  bne          a5, s11, 891f
                  srl          s8, a6, a0
                  slt          s5, s9, t2
                  add          s1, s0, a2
878:              sltiu        s1, s9, -1511
                  slt          t2, t1, t3
                  auipc        s2, 433353
                  sra          s2, s10, a5
                  sra          tp, s6, s3
883:              lui          gp, 667917
                  bne          s7, s6, 885f
885:              auipc        s9, 562572
                  blt          a0, ra, 906f
                  srl          s8, zero, s1
                  xor          s0, gp, a3
                  sll          sp, a5, t0
                  beq          t2, sp, 895f
891:              sltu         s5, s3, s4
                  auipc        gp, 317861
                  beq          s7, a2, 913f
                  slt          a7, s5, a2
895:              bltu         t2, t3, 915f
                  blt          a7, t0, 907f
                  sra          ra, a1, ra
                  ori          s8, a2, -934
                  slli         ra, sp, 24
                  blt          a7, t3, 917f
                  sll          s6, ra, t4
                  slli         s9, s2, 0
                  sltu         a3, s2, t1
                  bltu         ra, s6, 921f
                  slt          t4, t3, s5
906:              sra          t0, s10, a5
907:              sll          s11, a4, a3
                  sltiu        a3, a4, 338
                  srl          a5, ra, s4
                  ori          a4, t0, -1444
                  xori         zero, s6, -1470
                  ori          t3, a2, 1643
913:              nop
                  and          s2, s10, s6
915:              sltu         sp, s0, t1
                  bltu         s4, a2, 919f
917:              addi         gp, t2, -1270
                  add          s8, s0, s5
919:              srli         s7, s1, 1
                  andi         t6, s4, 1777
921:              xor          s0, t4, s2
                  bltu         t2, s7, 938f
                  add          s6, s6, t2
                  xori         gp, a1, -1280
                  xori         s0, s8, -373
                  sra          a4, t2, a0
                  sltu         t5, s10, s0
                  add          s0, t4, t1
                  add          sp, a3, t5
                  addi         ra, gp, -1286
                  and          s10, a1, t1
                  blt          ra, t2, 937f
                  slti         s3, s3, -745
                  bgeu         a7, s10, 950f
                  sltiu        s8, s4, -1
                  bltu         t4, t1, 937f
937:              sll          s6, a5, s1
938:              bltu         s5, t1, 944f
                  sltu         tp, t0, s9
                  slt          t5, t3, ra
                  andi         s1, t1, -1528
                  beq          s8, tp, 943f
943:              xor          a3, a6, s1
944:              sltiu        t3, t3, -1524
                  and          t6, a7, s4
                  nop
                  xori         s7, t5, -1375
                  lui          s3, 128884
                  andi         a2, s11, 586
950:              srai         s3, a4, 10
                  bne          s6, gp, 960f
                  sll          s5, gp, a5
                  slli         s1, t1, 15
                  auipc        s3, 431001
                  sra          t4, a5, s7
                  lui          sp, 107572
                  beq          t1, t5, 959f
                  bge          a7, s1, 973f
959:              sll          a4, s2, a0
960:              srai         t1, s5, 31
                  beq          t6, s5, 965f
                  la           s7, region_1+1084 #start riscv_load_store_rand_instr_stream_7
                  lbu          s6, -17(s7)
                  sltiu        t3, s9, -1779
                  lbu          s5, -45(s7)
                  or           tp, t0, t4
                  slt          s0, s8, a6
                  sll          t0, t0, s11
                  sltiu        s5, a5, -1183
                  lb           s2, -4(s7)
                  xor          t3, s5, s7
                  sb           s1, -59(s7)
                  sltu         a4, a1, s6
                  lb           a4, 47(s7)
                  lbu          s6, 57(s7)
                  sra          zero, t3, t4
                  sltu         a2, t3, a2
                  srai         s10, t1, 22
                  ori          s9, a3, 1405
                  addi         t6, s5, 732
                  sh           s2, 18(s7)
                  sh           t5, 32(s7)
                  slli         s9, t2, 8
                  sub          sp, s5, sp
                  andi         t6, sp, 1808
                  and          s11, gp, t6
                  lui          t1, 23542
                  sh           s9, 44(s7)
                  sltiu        t5, s2, -556
                  sub          zero, s0, a1
                  add          t6, a2, t3
                  slt          t4, a2, s6
                  sb           s3, 3(s7)
                  srai         a2, a6, 19
                  lb           t6, 53(s7)
                  nop
                  slti         s9, s1, -1794
                  slli         tp, s4, 24
                  sra          gp, t3, s2
                  sll          s0, s1, a0
                  sll          s10, s10, s6
                  srl          s8, a6, t2
                  slli         t5, t1, 25
                  lb           s1, -53(s7) #end riscv_load_store_rand_instr_stream_7
                  slt          s3, tp, t6
                  or           s1, t6, t1
                  or           t2, s2, t4
965:              xori         sp, a7, 728
                  ori          s0, a4, 843
                  addi         gp, s1, 833
                  srl          s2, t3, t1
                  and          s10, a3, a2
                  ori          s3, a4, 850
                  or           t0, a5, t6
                  lui          s11, 858051
973:              bne          t3, zero, 984f
                  xori         a7, a7, 1081
                  and          zero, t6, t6
                  addi         a0, s4, 1823
                  slti         s2, tp, 606
                  srai         s10, s0, 5
                  and          zero, zero, a3
                  add          ra, s2, gp
                  sll          a3, t2, t3
                  bne          s9, s4, 987f
                  lui          s10, 910618
984:              sll          t5, a0, t1
                  sra          zero, s0, tp
                  sltu         t5, gp, s8
987:              auipc        s3, 270436
                  srl          t5, s8, a6
                  slti         t6, gp, 276
                  and          gp, s8, a2
                  xor          s7, a0, t5
                  bltu         s2, s3, 1004f
                  lui          a5, 138727
                  xor          t2, s5, a7
                  bne          t1, s4, 1008f
                  or           s9, a4, sp
                  bltu         s9, a6, 1001f
                  beq          s0, t5, 1003f
                  xor          t0, s1, t3
                  bne          ra, t3, 1005f
1001:             bne          t4, tp, 1021f
                  slti         ra, s9, 1417
1003:             add          a2, a5, gp
1004:             bgeu         ra, s6, 1014f
1005:             sll          sp, t0, s8
                  srli         s5, t0, 5
                  sra          s11, gp, tp
1008:             and          s11, s11, s7
                  addi         s2, t3, 1143
                  ori          t6, t5, 211
                  bne          t0, tp, 1012f
1012:             xor          t4, t2, a0
                  srai         t4, a6, 24
1014:             slt          a0, s1, t4
                  srl          gp, t5, t4
                  sll          t5, t3, gp
                  slt          t6, t6, a4
                  sll          s8, s9, a0
                  xor          t2, s2, ra
                  slti         sp, a6, -412
1021:             bgeu         tp, a3, 1041f
                  lui          t0, 719557
                  slti         s6, s9, -1216
                  nop
                  xori         a0, gp, 1101
                  sll          s11, s1, a2
                  srai         s5, a6, 27
                  xori         t2, s0, -1876
                  bge          s3, s8, 1046f
                  xor          a2, t6, tp
                  slt          s1, zero, s4
                  lui          s6, 557154
                  sub          a5, gp, a0
                  addi         gp, s5, -1323
                  sltiu        s8, a6, -404
                  bgeu         zero, a0, 1037f
1037:             srai         t6, s9, 13
                  sra          s3, s7, s10
                  andi         sp, s7, -888
                  slt          s6, t1, s6
1041:             bgeu         s8, a4, 1042f
1042:             nop
                  and          zero, t6, t3
                  sra          t4, s5, s9
                  xor          tp, s3, s10
1046:             auipc        a7, 341980
                  and          t0, s6, s7
                  bltu         s10, s2, 1049f
1049:             slt          s3, s10, zero
                  sra          t1, a6, s9
                  blt          t4, t3, 1060f
                  sltiu        sp, s4, 847
                  sub          s3, a6, t2
                  and          t3, s6, a3
                  srl          t3, gp, gp
                  sra          s3, a3, s5
                  add          a0, a7, a3
                  add          a5, s0, s9
                  sll          zero, ra, s9
1060:             blt          s5, gp, 1080f
                  srl          s1, gp, ra
                  bgeu         sp, a0, 1082f
                  beq          sp, gp, 1076f
                  beq          a6, s10, 1068f
                  ori          a0, t3, 905
                  blt          a7, t4, 1067f
1067:             sltiu        t1, s1, 1260
1068:             nop
                  sra          t2, s8, t4
                  add          s6, t3, s11
                  sll          zero, s5, zero
                  slti         sp, t5, -744
                  andi         s0, t5, -439
                  bgeu         zero, s11, 1085f
                  srai         gp, s4, 22
1076:             srl          a5, gp, gp
                  slti         s9, s3, -1699
                  slt          s5, ra, t4
                  sltu         sp, s5, s1
1080:             sub          t3, zero, a1
                  nop
1082:             sll          sp, s9, s11
                  slt          t3, t3, s5
                  sltu         s2, t0, s11
1085:             srl          gp, tp, zero
                  nop
                  sltiu        s5, a6, -438
                  bgeu         tp, t2, 1103f
                  bge          s5, t0, 1090f
1090:             bgeu         t5, a0, 1110f
                  bltu         gp, t3, 1094f
                  blt          gp, tp, 1097f
                  beq          gp, a6, 1110f
1094:             sltiu        tp, a7, 1716
                  blt          a0, gp, 1097f
                  ori          s8, t3, 1801
1097:             srai         gp, s5, 19
                  auipc        s11, 557407
                  and          tp, a1, t5
                  nop
                  or           a7, a2, t5
                  slt          t4, a1, a0
1103:             sra          s7, a6, s9
                  srli         gp, t3, 8
                  lui          s6, 716714
                  nop
                  andi         t6, s11, 1360
                  sra          a5, sp, t2
                  auipc        s6, 308664
1110:             andi         s9, s11, -741
                  add          s8, a4, gp
                  sll          t5, a2, s4
                  andi         s0, a7, 1597
                  blt          gp, gp, 1115f
1115:             bltu         a2, a3, 1116f
1116:             ori          s3, zero, -1824
                  bge          a5, s2, 1122f
                  xori         tp, a7, 329
                  srl          s6, a4, ra
                  auipc        s9, 551738
                  lui          zero, 907853
1122:             lui          tp, 272325
                  slli         t4, sp, 10
                  xori         a5, s2, -1203
                  nop
                  and          a0, s4, s1
                  xori         s6, s0, 1618
                  bgeu         a1, a2, 1145f
                  sll          s7, s8, a0
                  add          a4, s7, a2
                  bltu         s3, a6, 1136f
                  srl          a0, s11, a5
                  and          sp, zero, gp
                  xor          a5, t6, s2
                  sltiu        s5, s2, 454
1136:             sltiu        ra, t2, 1324
                  auipc        sp, 991995
                  blt          s5, s8, 1148f
                  xori         s6, s9, -1769
                  blt          t0, a4, 1160f
                  add          s3, ra, s0
                  or           s5, s10, a4
                  slli         s10, s2, 31
                  andi         s8, s2, 1606
1145:             andi         t5, a7, 1229
                  bltu         t2, s9, 1155f
                  blt          s2, tp, 1148f
1148:             srli         zero, s9, 23
                  ori          a2, s9, -864
                  and          a5, s0, gp
                  sub          t1, t6, t0
                  auipc        a7, 360199
                  add          s8, t4, zero
                  xori         a2, s1, 1085
1155:             srli         tp, t3, 17
                  blt          s4, s7, 1157f
1157:             sub          t2, s1, t6
                  addi         s2, t6, -1232
                  auipc        a7, 410276
1160:             bgeu         t1, s4, 1177f
                  srli         a2, t5, 13
                  and          t6, s3, t5
                  andi         s5, tp, -968
                  slti         ra, s5, 1481
                  sll          s3, sp, a5
                  slli         a4, s2, 7
                  xori         tp, a0, 824
                  bne          s1, s0, 1180f
                  or           a0, a3, t5
                  sll          a2, ra, s8
                  bne          t2, a3, 1177f
                  srli         a7, a0, 31
                  addi         t1, s10, -253
                  sll          t4, a0, zero
                  andi         t6, s5, 1610
                  auipc        sp, 724567
1177:             or           sp, ra, s5
                  add          s0, a7, tp
                  slti         t3, a1, -876
1180:             lui          tp, 9729
                  beq          s11, a5, 1186f
                  andi         tp, t1, 1901
                  srli         a5, s8, 7
                  bne          t2, gp, 1193f
                  srl          t5, a7, s9
1186:             xori         s7, a0, -1733
                  add          t3, s4, s4
                  slti         t0, s9, 1598
                  sra          a5, a7, sp
                  or           a0, sp, s11
                  slli         t5, t4, 17
                  slti         s0, a3, 1978
1193:             slti         t4, a0, -2009
                  add          s11, sp, s11
                  nop
                  bge          t3, s4, 1200f
                  beq          a6, sp, 1213f
                  ori          t4, s1, -470
                  sltiu        s1, s5, 1696
1200:             sll          a2, s6, a1
                  sub          a2, s5, t2
                  srl          a3, s6, a2
                  xor          s11, t0, s8
                  xori         a2, tp, -390
                  sltu         t0, s2, t0
                  bne          a0, t0, 1222f
                  bltu         a5, s7, 1224f
                  bne          t3, a7, 1228f
                  srl          tp, a0, t1
                  sltu         gp, zero, ra
                  lui          s1, 851354
                  ori          s10, s7, 984
1213:             blt          a3, a6, 1226f
                  blt          t2, s6, 1231f
                  andi         t2, s1, 461
                  sub          s5, s5, t1
                  slli         zero, s8, 28
                  beq          sp, a2, 1222f
                  blt          s11, t1, 1220f
1220:             srli         t4, ra, 19
                  bgeu         a2, s3, 1226f
1222:             slt          s0, s11, gp
                  addi         s11, s4, -1811
1224:             slt          s5, s4, t2
                  bgeu         gp, s10, 1233f
1226:             bgeu         s6, t1, 1233f
                  sltiu        t4, s10, 1363
1228:             beq          s9, gp, 1229f
1229:             auipc        s1, 438739
                  bne          zero, a3, 1231f
1231:             blt          a2, t6, 1233f
                  srai         s11, s6, 23
1233:             slt          s9, a7, a0
                  lw           t2, 4(s4)
                  addi         s4, s4, 56
                  srli         s8, t0, 26
                  andi         s0, t6, 1112
                  and          t0, t3, s7
1571:             addi x14, x7, 0
1571:             jalr x14, x14, 0
sub_2:            slt          s8, s8, s8
                  slti         s1, a7, -1979
                  xor          s2, sp, s7
                  addi         s4, s4, -52
                  srai         tp, t6, 14
                  sw           t2, 4(s4)
                  and          s5, a1, zero
                  slt          s5, s6, t5
                  la           sp, region_0+1678 #start riscv_load_store_rand_instr_stream_2
                  lhu          tp, -14(sp)
                  andi         t1, s10, -1680
                  sb           t2, -11(sp)
                  slli         s10, s10, 0
                  lbu          ra, -15(sp)
                  and          gp, zero, t2
                  sh           s7, -2(sp)
                  lhu          t2, -8(sp)
                  srli         a5, t4, 5
                  sh           s0, -14(sp)
                  srl          t1, t6, t0
                  srli         a3, t3, 2
                  auipc        s3, 986893
                  or           a3, a2, s11
                  lhu          s0, -12(sp)
                  sw           s11, 10(sp)
                  ori          a3, a2, 520
                  add          s8, a1, s7
                  lbu          t2, 13(sp)
                  sb           t6, 9(sp)
                  andi         a5, s3, -316
                  sra          t5, t1, tp
                  sb           s8, 9(sp)
                  srl          a3, s5, s0
                  lbu          s2, 16(sp)
                  addi         s11, t5, 1919
                  lb           t1, -12(sp)
                  sltiu        s3, t2, 915
                  sh           s11, -4(sp)
                  srai         s1, a5, 8
                  sb           a2, -7(sp)
                  srl          a2, a6, sp
                  lbu          s10, -1(sp)
                  lbu          s2, 13(sp)
                  sb           a1, -11(sp)
                  lbu          s6, 5(sp)
                  srl          a4, s9, s2
                  lbu          s0, -11(sp)
                  srl          tp, s10, s5
                  lbu          t6, -14(sp)
                  sb           s6, 13(sp)
                  slli         ra, s6, 18
                  sb           a5, 12(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_1+783 #start riscv_load_store_rand_instr_stream_0
                  sub          t5, t4, t6
                  lbu          s2, 12(a4)
                  sub          s6, zero, s9
                  slt          s0, a7, a6
                  lhu          s8, -39(a4)
                  sltu         s9, s9, s0
                  lb           a5, -164(a4)
                  srai         zero, s3, 21
                  andi         s11, tp, -987
                  srl          t4, s2, a4
                  lui          s3, 369003
                  lbu          a3, -135(a4)
                  and          ra, s11, s2
                  srai         s0, t2, 26
                  auipc        s2, 667592
                  lui          s9, 961114
                  srai         s11, t1, 22
                  sh           a2, -131(a4)
                  lhu          s1, 181(a4)
                  sb           t5, 115(a4)
                  sltu         t1, a4, s1
                  lui          s9, 120888
                  auipc        a7, 509995
                  xori         s10, a2, -1921
                  lh           s6, -45(a4)
                  ori          t5, t0, 1684
                  srli         s10, a4, 10
                  sb           t2, -82(a4)
                  andi         t0, a0, 1464
                  slt          sp, s5, s5
                  sub          s7, a0, tp
                  lui          t1, 71292
                  and          s1, gp, s8
                  sltu         ra, s4, zero
                  andi         s10, t4, 1606
                  sb           s0, 8(a4)
                  sll          s0, t1, s8
                  nop
                  lh           gp, -111(a4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1841 #start riscv_load_store_rand_instr_stream_3
                  xori         s5, s3, -452
                  xori         s2, t5, 1136
                  lb           t2, -124(sp)
                  lbu          s9, -1184(sp)
                  sra          zero, tp, a1
                  lw           s9, -1733(sp)
                  xor          s9, a6, s10
                  sb           t3, 0(sp)
                  sb           s7, -1199(sp)
                  sw           t4, -221(sp)
                  sb           s11, -1628(sp)
                  lb           s10, -535(sp)
                  lui          a4, 319232
                  nop
                  xori         t5, ra, 1688
                  lui          s8, 326304
                  sh           s11, -467(sp)
                  lbu          s10, -518(sp)
                  lbu          a4, -50(sp)
                  lh           zero, -1671(sp)
                  sra          t5, gp, a6
                  slt          t5, a1, s5
                  sb           s5, -334(sp)
                  or           t2, s0, a0
                  sb           ra, -1723(sp)
                  xori         s0, t3, 1029
                  xori         s6, a2, -50
                  lbu          t1, 127(sp)
                  and          t3, s4, s1
                  lbu          a2, -1117(sp)
                  srai         t4, gp, 6
                  lbu          a2, -175(sp)
                  sb           s1, -152(sp)
                  xor          t5, t1, ra
                  sb           a6, -8(sp)
                  lbu          s9, -1198(sp)
                  slti         a7, tp, -677
                  sltu         t6, t1, s5
                  andi         t1, s7, -448
                  xori         s8, t5, 1982
                  lb           t6, -589(sp)
                  sra          a2, a5, sp
                  and          a2, t1, t1
                  sltiu        t5, a5, 1936
                  sb           ra, -1841(sp)
                  sub          a3, t4, t5
                  lbu          s10, -147(sp)
                  sh           t1, -1711(sp)
                  xor          t1, t0, s10
                  sb           a5, 20(sp)
                  sh           sp, -899(sp)
                  sh           s7, -805(sp)
                  sub          t0, t6, a7
                  slt          a0, zero, s4
                  lbu          t4, -1717(sp)
                  lh           t5, -459(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_0+1302 #start riscv_load_store_rand_instr_stream_5
                  lbu          t3, 216(t1)
                  ori          gp, ra, -1780
                  lbu          t4, -68(t1)
                  sll          a3, s8, s8
                  lb           s10, 163(t1)
                  sb           zero, -235(t1)
                  add          a5, s2, t2
                  lhu          s2, -4(t1)
                  sra          s6, t5, s8
                  lb           s10, 145(t1)
                  sb           a4, 74(t1)
                  add          sp, tp, s9
                  lui          s6, 697326
                  lb           t3, -25(t1)
                  slt          t6, a0, t1
                  nop
                  lui          tp, 1028011
                  sb           sp, 181(t1)
                  ori          tp, s10, 1852
                  sltu         ra, s4, t2
                  andi         a7, s2, -1680
                  xor          s6, s9, a1
                  sb           a4, 5(t1)
                  lb           t0, -77(t1)
                  xor          s3, a4, s10
                  lui          a5, 111859
                  sra          a4, s0, a2
                  sll          tp, s4, a6
                  sh           s5, -178(t1)
                  sra          s8, s3, zero
                  lb           s7, -202(t1)
                  lb           a7, -247(t1)
                  lhu          t2, -112(t1)
                  xori         s11, s10, 1179
                  lbu          t4, -51(t1)
                  xori         zero, t5, -1997
                  sub          a0, s3, a6
                  and          s2, t4, tp
                  sb           zero, -119(t1)
                  srl          t3, s11, s11
                  xor          a2, tp, s6
                  auipc        a7, 26938
                  lb           s6, 150(t1) #end riscv_load_store_rand_instr_stream_5
                  la           s1, region_0+813 #start riscv_load_store_rand_instr_stream_1
                  lb           s2, 17(s1)
                  lb           s3, 10(s1)
                  sb           a1, 57(s1)
                  andi         t1, s0, 1343
                  ori          a4, a5, 1173
                  lhu          a4, -5(s1)
                  sb           a1, -21(s1)
                  sll          sp, a6, sp
                  sb           t2, 4(s1)
                  srl          a0, a7, t3
                  lbu          s6, 9(s1)
                  sb           s11, 31(s1)
                  andi         t5, t0, -1695
                  auipc        t6, 16841
                  sb           t4, -57(s1)
                  lhu          a0, -3(s1)
                  xor          ra, a6, s11
                  lb           t1, -27(s1)
                  sll          a7, t4, s5
                  sll          a2, a2, s4
                  xori         t0, t0, 521
                  or           a0, a6, a3
                  srli         s11, a4, 27
                  xor          s2, t0, s8
                  sh           s11, -3(s1)
                  ori          s8, s3, -1616
                  sra          s5, s7, s7
                  and          s0, s1, s2
                  addi         s5, s7, 294
                  sb           gp, 14(s1)
                  slt          t5, s9, gp
                  andi         sp, a0, 1536
                  lbu          ra, 60(s1)
                  add          s2, a2, zero
                  add          a0, s0, tp
                  ori          ra, gp, 294
                  slt          t2, t1, s9
                  sh           ra, 45(s1)
                  add          ra, a0, a0
                  slt          s10, a2, sp
                  sh           a7, -49(s1)
                  sb           s11, 17(s1)
                  sub          s3, s4, a0
                  lhu          a0, -47(s1)
                  addi         a7, t3, 1335
                  sltiu        s8, s7, -1685
                  lb           a0, -62(s1)
                  sub          t4, a4, t6
                  or           ra, s3, a5
                  lb           s11, -2(s1) #end riscv_load_store_rand_instr_stream_1
                  bltu         t6, s10, 6f
                  sra          s11, a3, t1
                  ori          s8, s4, -1401
                  sltiu        a7, t5, -1148
                  auipc        a3, 250114
                  sltiu        t4, t5, 1651
6:                or           gp, ra, s2
                  xori         s3, zero, -104
                  slti         gp, sp, -1876
                  sra          s2, t2, s7
                  srl          s8, gp, a3
                  sll          s0, a0, tp
                  bgeu         s10, s6, 16f
                  sra          a3, s6, s4
                  bge          sp, ra, 21f
                  srl          s10, a5, t0
16:               nop
                  or           sp, t1, t6
                  andi         a4, ra, 309
                  bge          t3, s8, 27f
                  sub          tp, s8, tp
21:               bge          zero, t2, 32f
                  bne          s2, t5, 41f
                  and          s11, s1, s9
                  slli         s6, a3, 8
                  blt          a1, a2, 32f
                  addi         t0, a1, 221
27:               lui          t5, 188114
                  andi         s7, a2, -1843
                  and          s1, t0, t4
                  slti         t1, ra, 1421
                  nop
32:               bgeu         s9, s8, 49f
                  blt          s9, t4, 38f
                  nop
                  add          a5, t1, s0
                  andi         s5, s1, -1419
                  srl          t1, s11, a1
38:               bge          a0, a1, 39f
39:               sltiu        s9, a5, -1986
                  beq          a6, s1, 49f
41:               addi         t5, a2, 1762
                  sltiu        a0, a7, -1502
                  sub          a4, s6, a3
                  sltu         t3, a3, s11
                  auipc        s11, 59246
                  srl          s10, s4, s10
                  add          t4, ra, a4
                  nop
49:               or           a7, a1, a7
                  bne          t1, s10, 57f
                  sub          t6, s8, s7
                  beq          t2, s9, 55f
                  beq          t0, t1, 61f
                  or           a0, ra, s11
55:               blt          t1, zero, 56f
56:               and          s6, s3, t6
57:               srai         zero, s3, 15
                  bge          s10, a6, 75f
                  srl          a2, sp, s5
                  slt          t6, ra, t5
61:               slt          s7, a0, s0
                  bge          t2, a3, 65f
                  lui          a2, 551187
                  ori          sp, s6, 399
                  la           s5, sub_4
                  srl          s9, s5, zero
                  addi         s5, s5, 329
                  srai         s7, t6, 8
                  auipc        s6, 562368
                  slti         a4, s10, -1171
                  sra          s7, tp, a0
                  bne          s2, zero, sub_2_j6 #branch to jump instr
                  lui          tp, 486038
                  slli         a7, s7, 31
sub_2_j6:         jalr         t2, s5, -328 #jump sub_2 -> sub_4
65:               xor          s7, s11, t6
                  bne          a0, t0, 81f
                  beq          t0, s11, 83f
                  bgeu         a7, t1, 81f
                  slt          sp, s7, s4
                  slt          s1, a1, t4
                  sltu         t1, t1, tp
                  slti         s11, a0, 1072
                  xor          a4, a6, a1
                  bltu         a4, t1, 88f
75:               lui          s8, 614866
                  auipc        s5, 668976
                  srli         s3, t6, 20
                  sra          s7, t3, s9
                  beq          t3, s2, 91f
                  addi         t5, s10, -1901
81:               or           zero, s6, zero
                  sltiu        a5, a3, 1623
83:               bge          gp, s5, 96f
                  addi         a3, a3, 596
                  bgeu         a0, s4, 91f
                  and          t3, s9, s7
                  and          t1, s11, s1
88:               nop
                  bne          zero, t3, 100f
                  srl          a0, s2, t2
91:               bge          a2, a7, 109f
                  or           ra, t4, s9
                  slt          s11, t6, tp
                  bge          a4, t6, 114f
                  lui          a4, 395166
96:               or           s10, t6, a0
                  lui          a5, 156100
                  bge          s0, a4, 105f
                  sltiu        tp, a2, -1222
100:              beq          s3, tp, 111f
                  sra          a5, zero, s10
                  sub          s7, ra, ra
                  sub          s6, a1, t0
                  andi         s11, s10, -1984
105:              srl          s5, s1, a7
                  slli         tp, a7, 7
                  slli         s3, a7, 16
                  slt          s10, sp, zero
109:              ori          a7, s9, 466
                  bgeu         t1, tp, 122f
111:              sltiu        s1, t2, -1794
                  bge          s6, a7, 130f
                  beq          gp, a1, 114f
114:              sltu         s9, a5, s0
                  bge          s11, t5, 120f
                  xor          s9, gp, gp
                  beq          a6, ra, 132f
                  xor          tp, a7, s7
                  sra          s8, a1, t3
120:              ori          s7, a4, -1351
                  add          t0, s5, a4
122:              sub          s8, s4, t4
                  srl          tp, a5, t1
                  bne          s9, t3, 125f
125:              lui          s7, 62707
                  slli         a5, s7, 2
                  bne          s6, gp, 138f
                  sltiu        s1, s1, 971
                  andi         s5, a4, 1243
130:              sltiu        zero, a0, 378
                  beq          gp, s10, 142f
132:              xori         tp, gp, -415
                  sub          t4, t6, a2
                  slt          zero, s3, a2
                  andi         s0, a0, -1196
                  xori         t0, s3, 250
                  blt          t3, s8, 144f
138:              xor          a7, t3, a6
                  srli         sp, s6, 24
                  sltu         tp, s8, t5
                  sll          s7, a4, t6
142:              slt          t2, s4, s11
                  slt          a4, t0, s9
144:              or           t6, s7, a3
                  bgeu         s4, s8, 157f
                  beq          s11, s8, 154f
                  and          t0, t3, t4
                  ori          s2, t5, 1426
                  nop
                  blt          a5, s4, 154f
                  nop
                  bgeu         a7, t1, 155f
                  auipc        s10, 615452
154:              addi         s10, s1, -601
155:              or           s1, s7, s5
                  xori         ra, tp, -135
157:              slt          s8, a2, a4
                  sll          s2, a1, s7
                  nop
                  sltu         s1, s2, a5
                  and          ra, a7, s1
                  slli         t2, sp, 0
                  and          t1, a1, s3
                  and          s3, a5, zero
                  andi         t0, a1, -689
                  beq          s10, s8, 180f
                  ori          a5, s10, 1567
                  slli         s9, gp, 1
                  auipc        t3, 213853
                  sra          zero, a5, s2
                  blt          s0, s11, 178f
                  sltiu        a3, t5, -647
                  bltu         zero, a4, 181f
                  sltu         ra, a6, s2
                  xori         s10, a4, 1854
                  nop
                  or           zero, a3, s6
178:              slli         s0, s8, 29
                  bge          s7, a2, 188f
180:              srl          t3, a5, a7
181:              sub          t6, t1, s5
                  bgeu         t5, ra, 185f
                  srl          s1, t5, s3
                  bge          a1, a3, 201f
185:              and          a7, tp, a1
                  nop
                  lui          s10, 826631
188:              srli         a4, t3, 16
                  or           s5, s4, a0
                  auipc        s6, 933636
                  xori         t5, a4, -139
                  bgeu         s3, t0, 198f
                  ori          t2, t0, -556
                  bltu         a0, s3, 205f
                  addi         a5, sp, -1485
                  or           t2, tp, a3
                  addi         t2, s6, 1083
198:              sltiu        t1, s9, -989
                  nop
                  lui          tp, 308745
201:              sub          a7, t2, s4
                  add          s2, zero, a1
                  sll          zero, t2, a5
                  ori          s8, a0, 1413
205:              sll          t1, t0, zero
                  xori         s8, t4, 943
                  srl          a4, a2, a5
                  xori         s10, tp, -1573
                  beq          s1, tp, 229f
                  bgeu         s6, s10, 227f
                  auipc        t1, 521790
                  bgeu         gp, gp, 218f
                  xori         t1, t4, -1547
                  bge          a7, t6, 221f
                  sll          t2, t4, a4
                  sub          s8, t6, t5
                  nop
218:              srl          a4, s10, s3
                  bne          t5, s1, 235f
                  bne          a0, s3, 233f
221:              ori          t4, s6, -386
                  sll          s1, a7, a3
                  nop
                  sll          ra, s6, a0
                  xori         ra, a6, -753
                  and          gp, ra, s9
227:              xori         s3, s2, 799
                  nop
229:              sra          a5, a4, a6
                  and          a0, s10, a1
                  srl          a2, s7, s7
                  srai         t3, s5, 1
233:              xor          a0, a7, zero
                  nop
235:              slli         tp, t3, 22
                  bne          s9, gp, 248f
                  add          a0, t2, a4
                  lui          t3, 66436
                  slti         sp, tp, -1477
                  lui          s11, 82244
                  blt          s5, s1, 260f
                  blt          a6, s1, 255f
                  bgeu         s2, a1, 250f
                  srai         s5, a6, 21
                  srai         a5, t6, 31
                  srli         s11, s3, 30
                  andi         t4, ra, 1248
248:              bne          a2, t2, 259f
                  sra          a7, s0, a6
250:              sra          t3, a2, s3
                  slli         gp, s2, 6
                  bge          a5, t2, 257f
                  and          gp, s8, s4
                  blt          t2, t0, 273f
255:              slli         a7, s4, 0
                  xor          t3, a1, sp
257:              slt          a0, t2, a0
                  xori         a3, s8, -1909
259:              sub          t0, sp, s6
260:              xori         t4, a1, -1473
                  slt          s6, tp, zero
                  or           t6, s4, t6
                  add          zero, t0, t0
                  ori          s3, t3, -1872
                  lui          t2, 378439
                  nop
                  srai         s7, a5, 9
                  lui          t0, 393
                  bne          s2, t1, 277f
                  srli         t0, a7, 16
                  bge          a4, s8, 283f
                  xori         a7, a3, 1431
273:              andi         t3, s11, -1226
                  ori          a2, t5, -1419
                  bge          s9, a2, 295f
                  sltiu        s10, s7, -43
277:              srai         s2, sp, 23
                  add          sp, sp, a2
                  srl          s2, a6, tp
                  ori          t3, t6, 1068
                  sll          ra, s5, t6
                  bltu         t3, a1, 283f
283:              andi         s3, s2, -561
                  sltu         s11, a3, zero
                  and          a3, t5, s3
                  bltu         t6, sp, 294f
                  slti         s3, a1, 1855
                  srai         t1, t2, 27
                  sra          a4, t1, a5
                  add          s3, a0, t2
                  bge          ra, s9, 298f
                  sltu         tp, s10, a3
                  srai         t1, s8, 26
294:              sub          zero, a1, s7
295:              srl          t4, s1, sp
                  andi         s5, t3, 1237
                  blt          sp, a2, 300f
298:              sra          a4, a4, tp
                  andi         s11, s4, 1517
300:              srl          s9, tp, sp
                  bge          ra, a3, 318f
                  sltiu        gp, zero, 1884
                  sub          gp, t1, t4
                  bgeu         sp, t3, 319f
                  slti         s7, s2, -942
                  bltu         a6, t5, 323f
                  srli         gp, s8, 14
                  srl          s2, a5, s11
                  sll          s0, s5, s5
                  nop
                  sub          a3, a0, s9
                  ori          s0, s3, 528
                  and          s10, a2, a5
                  addi         ra, a5, 156
                  sll          a2, s6, a0
                  or           t4, a5, t5
                  and          a2, s7, t6
318:              slt          s8, t4, s1
319:              or           s11, s11, a4
                  nop
                  ori          a0, a7, 2015
                  addi         s0, s7, 440
323:              add          t2, t3, t1
                  srai         s10, t6, 2
                  add          s11, a6, s7
                  addi         a4, t2, 397
                  slt          s7, a3, gp
                  lui          s1, 405353
                  blt          a4, s9, 336f
                  srai         s2, s8, 29
                  slti         s2, zero, 1473
                  bge          s5, t4, 345f
                  add          t1, s6, a4
                  sra          t1, s2, sp
                  andi         s1, t1, -1126
336:              ori          s0, s4, -965
                  sltiu        s8, s11, -696
                  bne          t0, t5, 344f
                  andi         t1, s2, 121
                  xori         s11, s4, -234
                  sra          s6, a2, a2
                  sll          s2, s5, a1
                  srai         s8, s5, 14
344:              srl          s2, s1, s9
345:              bge          t3, tp, 361f
                  xori         s1, s9, 1233
                  bge          s3, a7, 356f
                  sltiu        t6, s4, 1769
                  slti         sp, s8, -597
                  or           t4, s2, t1
                  auipc        s2, 646677
                  lui          ra, 1017033
                  srli         a5, a1, 25
                  sll          zero, s9, ra
                  auipc        s7, 137840
356:              bgeu         t4, t1, 374f
                  and          s6, ra, t5
                  auipc        zero, 265622
                  or           a5, a2, s2
                  slt          s9, a4, s0
361:              srli         s5, s4, 22
                  nop
                  srli         t2, s7, 9
                  sub          t6, t4, s7
                  slli         t3, tp, 4
                  andi         a4, t0, 101
                  srli         s11, ra, 31
                  add          t2, a4, ra
                  sltiu        ra, s4, -933
                  xori         s7, a1, -1769
                  auipc        s6, 246650
                  andi         gp, a3, 946
                  sub          s10, t1, s11
374:              sll          s1, s0, a6
                  sltu         zero, s4, s5
                  sra          s0, s2, a1
                  ori          a4, s7, 649
                  add          s7, s3, a2
                  srai         s6, t1, 13
                  slli         t1, a5, 18
                  bne          ra, t0, 384f
                  bne          t2, zero, 393f
                  srli         t1, tp, 7
384:              andi         s7, s6, 684
                  auipc        a4, 647050
                  auipc        a4, 353888
                  beq          a1, a2, 393f
                  sra          t4, sp, t5
                  and          s1, s2, s8
                  srl          s11, zero, zero
                  sra          s3, gp, a5
                  addi         gp, a2, -81
393:              srai         t1, gp, 7
                  bne          s6, s4, 395f
395:              sra          s11, tp, a3
                  blt          sp, s7, 403f
                  bgeu         s1, a1, 411f
                  sltu         a7, tp, t4
                  sra          zero, s6, tp
                  xori         s9, t1, -430
                  xori         sp, a1, 252
                  sltiu        gp, s7, -1070
403:              slti         s3, a0, 1655
                  and          t4, gp, s5
                  beq          a7, s8, 409f
                  auipc        s6, 777449
                  and          s6, a4, s0
                  lui          t1, 461768
409:              sub          s10, t4, zero
                  andi         a7, ra, 1238
411:              sltiu        a4, s0, -1083
                  add          s8, s5, a0
                  slti         t3, t1, 736
                  srli         a2, s4, 16
                  beq          t3, s10, 422f
                  and          a5, t5, s8
                  slti         s9, t4, 591
                  bltu         s10, t5, 430f
                  bge          s7, a2, 432f
                  sub          a5, zero, tp
                  bge          t2, t2, 432f
422:              addi         a4, t6, 9
                  slt          s7, a1, a6
                  ori          a3, s3, 1611
                  srli         s2, s10, 0
                  sll          s9, a4, a5
                  auipc        a2, 781121
                  slt          t4, a6, t1
                  beq          a7, a4, 443f
430:              sub          a3, s7, a0
                  beq          a1, t2, 440f
432:              slti         t3, t5, -1059
                  sll          s2, t3, a1
                  bgeu         t3, a0, 435f
435:              beq          t3, s6, 442f
                  srai         s7, a0, 20
                  xori         sp, s1, 1701
                  add          a7, s0, s4
                  srl          t5, s10, s5
440:              addi         gp, s2, -912
                  or           t6, s4, t4
442:              xor          t5, s7, s11
443:              lui          s8, 812262
                  sltiu        t5, t0, 412
                  add          s7, a0, t1
                  srl          a3, t0, t4
                  beq          s0, tp, 462f
                  sll          s10, a5, t3
                  slti         t3, s11, -1903
                  bge          t5, s8, 462f
                  addi         a4, t1, 587
                  auipc        t4, 590236
                  sltiu        a0, s0, -145
                  beq          zero, a1, 465f
                  ori          s3, t5, 1021
                  and          a4, s10, a5
                  sra          t3, t5, s5
                  ori          s3, s7, -2013
                  bge          t0, a6, 463f
                  xor          ra, s1, zero
                  ori          s2, s4, -444
462:              xor          t3, t3, zero
463:              slli         a3, a5, 9
                  bltu         s7, t4, 483f
465:              auipc        s1, 502972
                  blt          a4, a2, 473f
                  sra          s3, s6, a6
                  sll          sp, t3, a6
                  lui          s5, 12993
                  bge          a1, s8, 477f
                  sltiu        tp, a4, 746
                  add          a2, t1, a0
473:              addi         t4, t3, -1164
                  ori          s6, s8, -870
                  bltu         s9, zero, 482f
                  bge          t1, t0, 488f
477:              nop
                  beq          a6, t2, 481f
                  ori          s7, s5, 1736
                  bltu         tp, s10, 488f
481:              ori          a3, t0, 729
482:              srai         s6, s6, 7
483:              and          s11, zero, t2
                  sub          s3, a1, s3
                  beq          a4, s4, 502f
                  sra          a7, s11, a3
                  sub          a5, a6, a2
488:              bne          s0, a5, 496f
                  sll          s3, s1, s5
                  add          a3, t5, zero
                  add          s6, s7, t5
                  xor          t5, s8, tp
                  beq          a6, a0, 499f
                  slli         ra, ra, 23
                  andi         zero, a2, -387
496:              andi         zero, t3, 963
                  la           t6, region_1+1315 #start riscv_load_store_rand_instr_stream_4
                  lbu          s6, 176(t6)
                  xori         t0, t0, 1158
                  lb           t0, -4(t6)
                  lb           s7, 27(t6)
                  lb           t2, 90(t6)
                  sb           a5, -246(t6)
                  lw           s5, 29(t6)
                  sh           a6, 149(t6)
                  lbu          t5, 194(t6)
                  and          a7, t5, s5
                  sh           a6, 5(t6)
                  lbu          s11, -248(t6)
                  slli         a4, s4, 13
                  sb           t5, -192(t6)
                  sltiu        a3, t4, 1706
                  lbu          a3, 113(t6)
                  lb           a4, -236(t6)
                  srl          s10, s7, s11
                  lb           a3, -100(t6)
                  lb           t3, -83(t6)
                  sb           tp, 61(t6)
                  srl          t3, a2, s0
                  slt          t2, tp, gp
                  sltiu        t0, gp, -1584
                  lb           t0, 126(t6)
                  lb           a0, 237(t6)
                  sltiu        a4, t5, 1685
                  andi         zero, t0, -1927
                  auipc        sp, 815475
                  lbu          gp, 8(t6) #end riscv_load_store_rand_instr_stream_4
                  sltu         sp, t6, a6
                  nop
499:              bne          s9, sp, 505f
                  xori         sp, s9, -813
                  sra          s11, ra, s1
502:              or           s1, s10, tp
                  sltu         s6, a3, sp
                  sltiu        s5, a2, -1542
505:              add          t2, tp, t2
                  nop
                  auipc        s3, 742270
                  xori         s11, s1, -377
                  lui          t5, 391330
                  xor          t6, gp, gp
                  bge          s0, a5, 531f
                  add          a5, a4, a7
                  srai         sp, ra, 0
                  addi         s2, t5, 843
                  blt          s11, t6, 516f
516:              xori         a5, a6, -1267
                  srl          t0, gp, s0
                  blt          gp, ra, 531f
                  slli         a2, s11, 22
                  slt          s7, gp, t5
                  ori          s8, s4, -87
                  sub          s9, s2, tp
                  srl          a5, s10, s5
                  slt          a4, s5, t6
                  beq          ra, gp, 538f
                  andi         s3, sp, 1595
                  or           a5, a1, a0
                  sra          s8, s1, a7
                  sltu         s2, a2, s10
                  srli         s8, t3, 25
531:              auipc        ra, 954320
                  or           s2, s11, ra
                  beq          a5, s4, 551f
                  slt          zero, t0, tp
                  lui          s3, 641214
                  ori          a3, s0, 1275
                  andi         a2, tp, -1941
538:              andi         t3, s8, -633
                  slli         s1, a4, 29
                  addi         tp, t0, -425
                  slt          s2, s4, s7
                  bge          t2, gp, 545f
                  xor          s11, t3, t4
                  sub          s5, t3, t6
545:              blt          s9, a3, 550f
                  and          t4, a3, a3
                  slt          zero, a1, t4
                  auipc        t6, 766048
                  srai         s10, ra, 28
550:              bne          s1, a2, 561f
551:              sltiu        s11, a5, 1176
                  slt          t6, t0, t1
                  slt          t1, a5, t2
                  srli         s0, s9, 23
                  addi         tp, sp, -208
                  nop
                  andi         t6, sp, 807
                  beq          a3, t1, 575f
                  nop
                  beq          a3, s10, 576f
561:              ori          s9, gp, 199
                  xori         a4, a5, 999
                  slt          s10, t6, t2
                  slti         a3, t1, -891
                  slli         t4, zero, 14
                  ori          t4, s10, 1273
                  and          s3, a0, s5
                  bgeu         s10, s3, 579f
                  sub          t1, a2, s4
                  bge          t2, a0, 582f
                  xor          a3, s6, sp
                  and          s6, t4, gp
                  sltu         s2, a0, s9
                  beq          a4, a3, 589f
575:              nop
576:              srl          a0, a5, s11
                  nop
                  slli         tp, t6, 30
579:              or           s7, a0, a0
                  slt          t4, s1, sp
                  addi         t1, a7, -59
582:              ori          t2, s1, 469
                  srli         ra, t0, 28
                  srl          t6, a0, t3
                  andi         t0, a6, -1591
                  sub          ra, zero, sp
                  sltu         s11, t5, t0
                  srl          zero, s4, t4
589:              ori          t1, ra, 28
                  srai         t6, s4, 11
                  bgeu         s2, ra, 610f
                  add          t0, a0, t1
                  bgeu         s2, s1, 613f
                  bltu         a5, t3, 612f
                  bge          t1, s1, 598f
                  srai         a3, t0, 10
                  srli         s8, s1, 23
598:              beq          s3, a3, 605f
                  auipc        s11, 61799
                  slt          s0, s4, t0
                  slt          gp, s2, s2
                  bgeu         sp, sp, 607f
                  ori          s2, a3, 266
                  or           t0, a5, s10
605:              slti         s3, zero, -634
                  bne          t5, s3, 612f
607:              bne          zero, a7, 618f
                  blt          s4, a5, 611f
                  andi         s6, s6, 1563
610:              or           sp, s6, t1
611:              bge          zero, t0, 618f
612:              blt          a2, a3, 613f
613:              srai         s2, a5, 21
                  blt          tp, a2, 618f
                  slt          ra, t2, t6
                  slti         gp, a3, -387
                  bltu         t2, a1, 618f
618:              add          ra, s3, a2
                  beq          t2, t2, 626f
                  and          t0, s1, t0
                  addi         ra, tp, 1162
                  srli         s3, t3, 19
                  beq          ra, a7, 631f
                  sll          t2, a1, s5
                  bne          t6, s4, 636f
626:              srli         s6, a4, 29
                  bne          s6, s5, 635f
                  slli         s0, s3, 21
                  bgeu         a4, a5, 638f
                  sltu         s9, t2, s11
631:              slt          t3, s9, a2
                  beq          t6, s2, 639f
                  sltu         s5, s10, s1
                  slt          s5, gp, gp
635:              or           s9, a1, s7
636:              bgeu         t2, t6, 649f
                  lui          a3, 412264
638:              xori         s2, t1, -1113
639:              srai         t3, s7, 22
                  xor          t1, t5, t4
                  auipc        t5, 999427
                  blt          ra, t6, 659f
                  bltu         t4, t4, 654f
                  beq          sp, s8, 661f
                  blt          gp, t4, 658f
                  sll          a3, s8, a7
                  andi         s10, t4, -940
                  or           s6, s6, s6
649:              slti         s1, zero, -53
                  addi         a4, a0, 1130
                  and          t0, s6, s2
                  auipc        t3, 419251
                  sra          a4, a2, t0
654:              bgeu         a5, zero, 668f
                  srl          s2, s1, sp
                  beq          tp, a0, 662f
                  beq          s3, t4, 669f
658:              slt          a4, gp, a2
659:              sub          s5, tp, t3
                  add          t2, zero, zero
661:              blt          ra, a6, 677f
662:              bge          a5, s0, 679f
                  sll          gp, a6, a5
                  bltu         gp, t5, 677f
                  blt          s11, s6, 671f
                  and          t0, s6, a7
                  sll          s2, s10, a6
668:              bge          s2, t5, 687f
669:              lui          t5, 668935
                  sll          t1, t3, gp
671:              srli         ra, a5, 2
                  or           s9, a3, s2
                  blt          s10, ra, 680f
                  xor          s2, tp, zero
                  addi         s11, t3, 953
                  bgeu         a6, zero, 677f
677:              nop
                  lui          s11, 898442
679:              add          a7, t3, t2
680:              lui          t1, 645237
                  srai         s10, s8, 4
                  srli         t5, t3, 19
                  srli         s11, a6, 24
                  bne          s6, a2, 688f
                  bgeu         t1, a6, 701f
                  ori          gp, s4, 1167
687:              bgeu         s3, ra, 695f
688:              bgeu         s5, s10, 700f
                  bge          s5, sp, 700f
                  slli         s11, t3, 1
                  nop
                  srli         a5, a2, 31
                  nop
                  bltu         t4, a6, 701f
695:              slti         a7, s3, 804
                  bgeu         s5, t4, 710f
                  srli         zero, s3, 23
                  xor          s6, s10, s7
                  srli         s7, s10, 12
700:              sltiu        t6, a0, 1330
701:              ori          t4, a7, 489
                  srai         s1, a5, 8
                  slti         ra, zero, 1117
                  auipc        t4, 685705
                  sltu         t3, zero, s4
                  sltu         a0, a1, s4
                  slti         t0, gp, -706
                  sra          t4, t2, s6
                  beq          a7, s6, 720f
710:              sltu         sp, a6, a1
                  nop
                  nop
                  srl          s6, s3, a3
                  srl          ra, t4, s3
                  sub          s8, a0, t3
                  sltu         t3, t2, t0
                  bgeu         gp, t2, 734f
                  srl          a0, sp, t1
                  slli         t3, s11, 12
720:              addi         zero, a2, -1172
                  sltu         t5, s7, t6
                  bge          s1, t0, 742f
                  sll          a5, t0, a4
                  and          s6, t6, s0
                  auipc        a0, 132386
                  andi         gp, a5, 1535
                  bne          s1, a3, 732f
                  sll          s8, tp, tp
                  add          sp, a1, a0
                  sltu         sp, s11, ra
                  bne          s8, t4, 737f
732:              andi         gp, t0, 1421
                  blt          a4, gp, 736f
734:              xor          s3, gp, t5
                  srai         t6, s4, 23
736:              and          s3, s0, t5
737:              sub          s11, t3, s11
                  andi         ra, s2, 1475
                  lui          t1, 20392
                  ori          s10, a3, 1556
                  lui          s5, 268984
742:              sll          a0, s0, t1
                  auipc        t1, 899360
                  bne          a4, s3, 751f
                  andi         ra, s4, 1657
                  sub          a4, a6, a2
                  bltu         t6, t5, 748f
748:              add          a4, s3, s6
                  xor          zero, s9, t1
                  slli         s9, a3, 17
751:              slt          s11, s5, a4
                  srai         t0, gp, 18
                  sltiu        a3, s5, 1049
                  bge          t2, s11, 767f
                  slt          t3, tp, ra
                  srai         gp, tp, 26
                  lui          s6, 637684
                  srl          s9, t3, t0
                  nop
                  beq          s6, a2, 763f
                  sltiu        sp, s1, -1659
                  lui          t4, 17542
763:              bge          s9, s6, 778f
                  bne          zero, ra, 775f
                  sll          sp, s2, t2
                  slt          s1, s11, a2
767:              xor          s11, s10, a4
                  beq          t1, s9, 780f
                  auipc        a7, 768564
                  srl          t5, t3, t2
                  srl          s6, sp, gp
                  sub          tp, s11, t3
                  sub          t5, s8, t0
                  srli         tp, ra, 3
775:              xori         t2, t0, -1185
                  andi         tp, t0, -1591
                  srli         a3, s7, 14
778:              blt          a4, a2, 785f
                  srai         zero, a1, 8
780:              sub          s10, s0, t1
                  bne          t2, t2, 789f
                  sltiu        s3, t4, 1547
                  bne          gp, s10, 792f
                  lui          a4, 708442
785:              andi         a5, s3, 1811
                  sll          s8, s6, s11
                  bltu         t0, a6, 805f
                  sltiu        s0, t4, -266
789:              sll          sp, s3, t4
                  add          tp, tp, t6
                  srl          t1, zero, s11
792:              sltiu        t4, a3, 1250
                  xori         s7, a0, 390
                  xor          a0, s0, s8
                  bge          s5, gp, 814f
                  srai         s7, t4, 1
                  srl          s8, t6, a0
                  ori          s0, t6, 8
                  slt          s8, a7, s10
                  srli         t2, s1, 6
                  slli         s7, a1, 0
                  sra          s7, s4, s11
                  sra          s11, s8, tp
                  sltu         s2, s4, s1
805:              sltu         s7, t1, t2
                  sub          s2, s2, t3
                  or           a3, s10, t0
                  and          t2, a1, s7
                  sll          t6, a0, s5
                  bltu         s3, s1, 814f
                  beq          s8, a3, 814f
                  bgeu         s6, s5, 817f
                  addi         s11, a1, 991
814:              srl          tp, t4, s2
                  blt          a6, ra, 823f
                  xor          t5, s8, s2
817:              addi         s10, s7, -274
                  or           a4, t1, a2
                  add          gp, s2, s0
                  slti         s10, gp, -1411
                  bne          a5, t1, 824f
                  andi         s3, t6, -129
823:              slli         s10, s3, 18
824:              sra          t3, s11, s9
                  beq          a7, a0, 832f
                  bltu         ra, a5, 837f
                  auipc        s6, 221309
                  sltiu        t5, t1, 615
                  add          a2, s1, t2
                  beq          a0, s9, 847f
                  blt          s4, a5, 838f
832:              blt          s6, ra, 839f
                  lui          a5, 571954
                  xor          t6, s9, s2
                  bge          a7, a7, 851f
                  sra          tp, a4, s3
837:              nop
838:              auipc        s0, 682713
839:              add          a3, s10, s8
                  slli         t3, s10, 15
                  sltiu        s2, a3, -809
                  bgeu         s3, a7, 855f
                  srl          s10, a4, a4
                  sll          gp, s9, s11
                  sll          gp, s5, t0
                  auipc        s11, 130400
847:              sll          a5, tp, s7
                  add          s8, s7, tp
                  bltu         sp, a6, 859f
                  add          s6, a6, s3
851:              and          sp, s9, s2
                  xori         s9, t2, 1860
                  bltu         s7, s6, 859f
                  addi         t1, s5, -349
855:              slt          t5, a1, a1
                  slti         ra, ra, -66
                  srl          a0, s8, t6
                  beq          a1, s2, 859f
859:              xori         a2, zero, 494
                  addi         s11, t3, -1630
                  nop
                  lw           t2, 4(s4)
                  srl          s5, s8, t5
                  addi         zero, tp, 1854
                  sra          tp, ra, s6
                  slt          a0, t4, a6
                  addi         s4, s4, 52
                  and          s5, a1, a5
                  slli         s3, a0, 14
                  slti         t3, t3, -1313
                  lui          a2, 449709
1158:             addi x12, x7, 0
1158:             jalr x12, x12, 0
sub_5:            xor          a4, a7, t1
                  bge          t4, zero, sub_5_stack_p
sub_5_stack_p:    addi         s4, s4, -12
                  add          s6, s6, s1
                  sltiu        t6, t0, -1541
                  xori         s7, a5, -1414
                  sra          t1, a5, s6
                  srai         s11, a6, 1
                  sw           t2, 4(s4)
                  auipc        t5, 697905
                  xor          s11, ra, a7
                  ori          s0, a6, 260
                  slt          s10, s5, a7
                  sll          t5, t2, t1
                  sra          s10, a5, a7
                  sub          s11, a4, a2
sub_5_j10:        jal          t2, sub_10 #jump sub_5 -> sub_10
                  sltiu        t2, t4, 1771
                  srai         s8, s6, 18
                  xor          s0, s8, zero
                  or           s0, a2, t3
                  sub          a3, a6, s3
                  addi         s7, t2, 1073
                  bgeu         t5, a2, sub_5_j11 #branch to jump instr
                  add          a4, s4, s6
                  slti         s0, s8, -636
sub_5_j11:        jal          t2, sub_8 #jump sub_5 -> sub_8
                  la           s11, region_1+1724 #start riscv_load_store_rand_instr_stream_0
                  sb           s5, -366(s11)
                  lh           tp, -1174(s11)
                  sb           a2, -92(s11)
                  sb           ra, 35(s11)
                  sh           a3, -58(s11)
                  lb           t5, -1449(s11)
                  and          s7, s2, t0
                  sll          sp, a3, s11
                  or           s0, a2, t0
                  sh           s3, -1384(s11)
                  sh           a7, -1040(s11)
                  xori         ra, gp, 1310
                  lbu          t0, -1522(s11)
                  sh           s4, -1068(s11)
                  lb           tp, -887(s11)
                  sltiu        s10, a4, -616
                  lbu          s1, -67(s11)
                  sh           t0, -358(s11)
                  lh           a3, -514(s11)
                  sw           t5, -1088(s11)
                  lbu          s3, -119(s11)
                  lh           tp, -984(s11)
                  xor          s2, t0, s10
                  lh           a2, -1190(s11)
                  lhu          t0, -914(s11)
                  sh           s7, -1684(s11)
                  and          s5, t4, s2
                  lhu          gp, 110(s11)
                  sll          s7, s0, s5
                  sb           s7, -1277(s11)
                  lb           tp, -1605(s11)
                  sra          t4, s6, a4
                  auipc        s1, 636972
                  lh           s5, 88(s11)
                  sb           s10, -1440(s11)
                  lb           s3, -1667(s11)
                  sb           s6, -1094(s11) #end riscv_load_store_rand_instr_stream_0
                  srai         s9, t2, 28
                  sltiu        s6, a5, -765
                  add          gp, t0, s9
                  ori          s7, ra, 47
                  srl          ra, s9, t4
                  xor          s11, t0, t4
                  add          s5, a7, s1
                  bge          a3, t5, 15f
                  addi         gp, a5, -492
                  sub          a7, s8, s0
                  beq          s10, t3, 24f
                  lui          t2, 717789
                  sub          s7, a1, zero
                  srai         a0, a7, 29
                  bne          t6, s1, 15f
15:               lui          gp, 615238
                  and          s5, a0, s0
                  slt          a7, s1, s11
                  sltiu        s1, s7, 633
                  sub          t2, gp, t0
                  srai         zero, a2, 19
                  sra          a3, a4, tp
                  sltu         t3, a6, a7
                  srai         tp, t1, 11
24:               sub          a5, zero, a1
                  sub          gp, t2, s3
                  lui          s0, 611539
                  bltu         t0, zero, 38f
                  ori          t0, a7, 1380
                  sra          a4, t6, zero
                  slli         a4, s5, 10
                  srli         a4, a0, 14
                  sll          a0, a2, a3
                  sll          zero, a0, t0
                  addi         a5, a7, -692
                  beq          s9, s3, 43f
                  sltu         t0, s2, s6
                  and          t1, a4, s5
38:               beq          s10, a1, 56f
                  ori          s11, a4, 1692
                  lui          t5, 451079
                  andi         s9, t5, -1255
                  blt          s10, zero, 54f
43:               ori          a4, a4, -1759
                  sltiu        s1, a1, 543
                  bgeu         s9, s6, 58f
                  bne          zero, s11, 57f
                  nop
                  xor          s6, s10, a4
                  sub          s6, s11, s0
                  bne          s3, s5, 56f
                  addi         s10, s8, -195
                  bltu         s6, s7, 67f
                  srai         t5, a4, 26
54:               beq          tp, gp, 55f
55:               sll          a0, s0, s8
56:               srli         s10, tp, 17
57:               slt          s0, a4, s9
58:               or           t4, tp, s7
                  slti         s1, s4, 1721
                  bgeu         s0, a1, 69f
                  srli         s8, tp, 7
                  sll          s8, tp, s8
                  andi         s6, a2, 567
                  sra          s3, tp, t2
                  ori          ra, t6, -737
                  sll          s2, tp, s0
67:               lui          s9, 893030
                  andi         t0, s4, 79
69:               nop
                  auipc        a2, 523772
                  sra          s0, s3, s5
                  or           t1, a6, s3
                  sub          t6, a6, s5
                  slli         a3, a1, 18
                  bgeu         t0, a5, 87f
                  sra          t3, s9, s10
                  sltu         a5, s3, a2
                  srai         sp, s1, 15
                  slli         zero, s2, 3
                  nop
                  ori          zero, ra, -1307
                  addi         s11, a4, -1562
                  bne          s8, s4, 92f
                  auipc        gp, 681678
                  and          t0, t2, s4
                  or           s11, s3, a1
87:               srli         s5, a7, 11
                  bne          s8, a1, 101f
                  sll          gp, a7, t5
                  beq          s3, a5, 104f
                  sub          t2, gp, gp
92:               sub          s10, zero, a6
                  blt          s7, a1, 96f
                  slt          gp, a5, s3
                  sll          a4, s8, s2
96:               nop
                  slti         t5, s3, 1100
                  slt          a3, ra, sp
                  nop
                  bge          gp, s10, 115f
101:              bgeu         t2, t4, 119f
                  srai         s1, tp, 3
                  srai         s7, sp, 7
104:              and          t4, tp, t2
                  lui          s11, 1034598
                  bltu         t4, s9, 118f
                  ori          s5, ra, -1212
                  nop
                  or           a5, zero, sp
                  slt          a4, s0, a5
                  andi         s7, s2, -804
                  or           s8, t2, t4
                  slt          s1, s5, t5
                  sra          s2, s11, s7
115:              auipc        t5, 19486
                  xor          t5, s4, t1
                  srli         a5, t0, 15
118:              beq          t6, sp, 120f
119:              ori          zero, t0, 1388
120:              or           s10, s1, tp
                  xor          s9, a0, t4
                  blt          t2, s3, 134f
                  or           t6, t1, sp
                  beq          s6, t0, 141f
                  xor          gp, a6, a3
                  srai         s8, s1, 20
                  sra          s1, s3, s7
                  blt          s5, s6, 147f
                  bne          a5, s5, 144f
                  sra          t0, s4, a4
                  bge          s2, a4, 136f
                  lui          tp, 885885
                  blt          tp, s2, 151f
134:              bgeu         t2, t5, 142f
                  lui          a7, 1019016
136:              or           t3, s10, s2
                  blt          s6, a1, 141f
                  srai         s9, a2, 20
                  add          s1, s5, s5
                  and          s3, s4, a0
141:              sub          a5, a6, zero
142:              bne          t4, gp, 154f
                  bge          t4, a2, 147f
144:              lui          s2, 508870
                  slti         a3, t5, -751
                  and          s1, t6, s2
147:              andi         a7, t1, -1788
                  addi         s1, a5, 442
                  beq          a0, s7, 158f
                  srl          s0, a3, a2
151:              or           zero, t6, zero
                  slt          s10, t1, a6
                  lui          s6, 767625
154:              sra          s6, s3, s3
                  slli         a2, t6, 5
                  bge          a5, ra, 174f
                  xori         t2, t3, 955
158:              slt          a0, s8, s6
                  nop
                  addi         a4, s2, 1090
                  andi         zero, t4, 1434
                  slli         s9, a0, 12
                  or           a2, s6, s5
                  bge          zero, t3, 175f
                  bne          tp, s7, 177f
                  lui          s8, 53666
                  and          t0, t1, s0
                  xori         s10, s8, -1947
                  bltu         a0, a3, 183f
                  srli         t0, a4, 0
                  slti         gp, ra, -913
                  xor          t3, a5, a1
                  addi         t1, t3, -103
174:              bge          t6, ra, 187f
175:              andi         s11, a1, 245
                  or           s5, s2, s8
177:              sra          a0, s5, s2
                  slti         zero, a1, -116
                  slti         t3, s9, -1346
                  xori         a2, s7, 1965
                  srli         t6, a7, 31
                  bgeu         tp, s1, 187f
183:              bltu         a5, t3, 187f
                  ori          s2, s9, -1812
                  srli         s8, t5, 27
                  sltiu        t5, s11, -700
187:              slt          gp, s3, a5
                  sub          t6, s2, t6
                  auipc        a7, 818830
                  slli         sp, a7, 26
                  xori         t6, zero, 1094
                  lw           t2, 4(s4)
                  xori         ra, s3, -1448
                  and          s1, a5, s9
                  addi         s4, s4, 12
                  srl          gp, tp, s10
262:              addi x22, x7, 0
262:              jalr x22, x22, 0
sub_6:            blt          s8, tp, sub_6_stack_p
sub_6_stack_p:    addi         s4, s4, -12
                  addi         zero, s6, -1046
                  andi         s10, a4, 824
                  srl          s8, sp, a3
                  xori         s9, s11, 854
                  sw           t2, 4(s4)
                  add          s9, a2, a0
                  la           s5, region_0+1140 #start riscv_load_store_rand_instr_stream_0
                  srli         s10, t4, 0
                  lbu          tp, -121(s5)
                  and          t5, t6, a5
                  sltiu        s6, s4, 1152
                  srai         t1, a7, 24
                  lw           a3, -660(s5)
                  slti         t5, s2, -1132
                  lbu          t2, -291(s5)
                  sra          gp, s8, s5
                  add          tp, sp, zero
                  slt          s11, zero, zero
                  auipc        t4, 848838
                  add          t4, s4, s9
                  sb           t2, -746(s5)
                  lw           t1, -692(s5)
                  lb           t0, 219(s5)
                  lbu          a4, 671(s5)
                  sb           a1, 589(s5)
                  xor          t6, a4, s7
                  and          ra, s3, tp
                  lbu          s11, -1134(s5)
                  lb           gp, 333(s5)
                  sra          a2, s10, tp
                  lui          t1, 570895
                  lw           s2, -768(s5) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_1+632 #start riscv_load_store_rand_instr_stream_5
                  and          t3, t4, a0
                  ori          s8, s7, -1081
                  xor          s6, a6, ra
                  sra          a2, t3, sp
                  lh           s2, -48(s11)
                  srai         t1, s6, 12
                  ori          s8, a2, -1604
                  sll          s9, s8, s9
                  lb           ra, 47(s11)
                  sltu         s0, gp, t4
                  lhu          a5, 42(s11)
                  sltu         ra, s10, s3
                  lb           s10, 24(s11)
                  lh           tp, 48(s11)
                  slt          s5, s7, a4
                  sb           zero, 33(s11)
                  slli         a0, sp, 14
                  srl          a2, a4, a6
                  andi         s7, a3, -389
                  srl          a3, a1, s11
                  srli         t4, s7, 30
                  lbu          gp, -37(s11)
                  lb           t1, -3(s11)
                  lb           t0, -32(s11)
                  sra          gp, t4, t0
                  lhu          a4, -60(s11) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+827 #start riscv_load_store_rand_instr_stream_9
                  sb           t0, -7(sp)
                  xor          s10, t6, t5
                  ori          s1, s6, -681
                  srai         a3, s9, 4
                  sb           t2, 14(sp)
                  srai         a4, s0, 3
                  lb           s2, 5(sp)
                  and          s0, sp, s6
                  ori          s11, s4, -1096
                  srl          s11, s6, t4
                  add          ra, a0, tp
                  nop
                  lbu          s3, 14(sp)
                  lui          a3, 647439
                  lb           s9, 4(sp)
                  sb           s5, 10(sp)
                  lbu          s5, -13(sp)
                  lhu          ra, -15(sp)
                  sb           ra, -16(sp)
                  lbu          t1, -2(sp)
                  sltu         a0, s3, s1
                  lbu          a7, -10(sp)
                  srli         tp, s10, 1
                  sltu         s9, s4, t5
                  lh           t4, 3(sp)
                  or           s0, a3, t3
                  sub          s10, s7, s9
                  sub          a3, s3, tp
                  slt          t6, s7, sp
                  sb           a6, 4(sp)
                  lhu          t6, -9(sp)
                  lui          s2, 127896
                  sb           s7, 14(sp)
                  add          a0, a5, a0
                  slt          a4, t3, a3
                  sh           ra, 11(sp)
                  sra          t1, sp, s4
                  lh           s1, 7(sp)
                  sb           ra, 5(sp)
                  lbu          t3, 1(sp)
                  and          zero, t2, sp
                  add          s3, s2, tp
                  sb           a0, 2(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+141 #start riscv_load_store_rand_instr_stream_3
                  srl          t6, gp, t6
                  sb           gp, 745(sp)
                  or           s8, s2, t0
                  auipc        t4, 632286
                  lh           s5, 1303(sp)
                  and          zero, gp, zero
                  lb           a7, 1366(sp)
                  srli         t4, a0, 14
                  lh           a5, 897(sp)
                  xor          a5, a5, s0
                  sll          s3, a6, t6
                  sb           s4, 886(sp)
                  sra          tp, s3, sp
                  and          s7, gp, s3
                  sh           a7, 377(sp)
                  sb           a0, 356(sp)
                  or           s3, t2, s4
                  add          ra, s3, tp
                  auipc        s9, 255580
                  sll          a5, tp, s9
                  sra          t2, a3, t1
                  sb           t0, 888(sp)
                  sb           zero, 44(sp)
                  sra          s10, t4, zero
                  lw           s9, 1587(sp)
                  add          ra, t4, a6
                  srai         t4, t0, 4
                  lb           a2, 321(sp)
                  add          t2, s6, s3
                  lb           tp, -78(sp)
                  slt          s10, a7, s11
                  lbu          ra, 613(sp)
                  slli         t5, a3, 12
                  sw           s11, 539(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_0+773 #start riscv_load_store_rand_instr_stream_7
                  lbu          s0, 104(a4)
                  sh           s8, -109(a4)
                  sw           s7, -121(a4)
                  addi         a2, s4, -847
                  nop
                  auipc        s3, 725473
                  sub          t6, s8, s4
                  sub          a5, t5, s7
                  sb           sp, -172(a4)
                  lb           s11, 245(a4)
                  xor          s1, s4, zero
                  lui          sp, 202358
                  lhu          s11, -21(a4)
                  lhu          a3, -217(a4)
                  sltiu        s11, sp, -920
                  lbu          s5, -66(a4)
                  lhu          gp, 159(a4)
                  slli         s3, s3, 16
                  sb           a0, 149(a4)
                  lbu          s2, 69(a4)
                  lbu          tp, 162(a4)
                  lh           s10, -31(a4)
                  add          a3, s7, s3
                  slti         gp, s1, 499
                  lbu          a2, 148(a4)
                  sh           s7, 171(a4)
                  andi         t1, s9, -28
                  lhu          a2, -171(a4)
                  sb           zero, -172(a4)
                  slt          s7, t6, s6
                  addi         s11, t6, -1601
                  sb           s11, 116(a4)
                  lbu          ra, -109(a4)
                  sw           s9, 247(a4)
                  lb           t3, -229(a4)
                  lb           tp, 12(a4)
                  lhu          s0, 65(a4)
                  srl          t6, t2, s10
                  slli         t3, a0, 29
                  sltu         s2, s2, s4
                  sll          sp, s9, s2
                  auipc        tp, 1045096
                  sb           s2, -82(a4)
                  lbu          t3, 199(a4)
                  sltiu        s2, t2, 1754
                  lb           ra, 166(a4)
                  lh           gp, -71(a4)
                  slti         s1, a5, 727
                  slti         s0, sp, -1208
                  lhu          tp, -119(a4) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+302 #start riscv_load_store_rand_instr_stream_8
                  xor          s8, a3, s11
                  xor          ra, s9, a2
                  srli         s10, a0, 23
                  sw           a3, 6(sp)
                  lb           s8, -36(sp)
                  srai         s3, t3, 28
                  xori         t6, s5, 1145
                  srl          s3, s8, a3
                  slti         tp, a4, 1841
                  xor          s0, s4, a3
                  lh           a3, -4(sp)
                  lbu          s8, -55(sp)
                  xori         s1, s0, -1780
                  sltu         s0, s11, s6
                  lh           s7, -4(sp)
                  sb           t3, -10(sp)
                  sltu         s3, s2, t1
                  sub          t4, a2, s2
                  lh           s0, -26(sp)
                  andi         t4, s5, 1692
                  slt          s7, s9, t2
                  xori         t0, a5, 183
                  lw           s7, -54(sp)
                  sh           t2, -48(sp)
                  slli         a7, s10, 0
                  addi         a4, s3, 1755
                  sb           ra, 8(sp)
                  xori         s7, sp, -1136
                  lui          a2, 871541
                  slt          s3, s3, t2
                  srli         t3, a6, 4
                  srli         t1, s4, 20
                  andi         ra, t1, 1583
                  slli         s9, ra, 3
                  or           s10, t0, sp
                  auipc        a3, 759194
                  nop
                  lhu          t0, -28(sp)
                  slti         a2, s6, -272
                  lw           t6, -46(sp)
                  lhu          a4, -2(sp)
                  sb           a5, 53(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1957 #start riscv_load_store_rand_instr_stream_4
                  ori          a7, a1, 1618
                  addi         a0, zero, 983
                  lb           a0, 36(sp)
                  xor          s5, s5, s1
                  srli         s3, s8, 9
                  lbu          a4, -60(sp)
                  lbu          t6, -64(sp)
                  lh           gp, -47(sp)
                  add          s0, zero, a7
                  sh           s9, 35(sp)
                  sub          t1, s2, zero
                  lui          s5, 224899
                  xor          s0, t3, s4
                  lh           t2, 29(sp)
                  or           t5, ra, a7
                  sh           s9, -15(sp)
                  and          s5, s2, t2
                  xor          t4, a1, a1
                  andi         s11, t6, -1107
                  srai         ra, a1, 15
                  slti         a0, t6, -1952
                  nop
                  lbu          s5, -10(sp)
                  sll          t5, gp, s4
                  lbu          s6, 2(sp)
                  sb           s10, 20(sp)
                  sub          s10, a5, a6
                  sltiu        a4, a3, -9
                  sh           a7, -59(sp)
                  addi         a0, t4, -683
                  srl          a0, t5, t5
                  srl          t6, t4, s1
                  lb           gp, 40(sp)
                  sra          s5, a1, a6
                  nop
                  xor          a0, a2, a2
                  sw           s0, -5(sp)
                  lbu          gp, -58(sp)
                  lbu          t6, 17(sp) #end riscv_load_store_rand_instr_stream_4
                  srai         a4, t6, 20
                  and          s1, t2, gp
                  slt          s9, s6, a7
                  ori          zero, s3, -351
                  srl          s7, s3, gp
                  sltu         s11, tp, s10
                  srai         t2, s4, 11
                  sltiu        gp, a5, 1797
                  addi         a0, ra, -445
                  xor          a2, gp, s11
                  sra          zero, ra, a6
                  bne          sp, t0, 23f
                  addi         gp, s1, 316
                  or           zero, s9, gp
                  bltu         t2, s9, 31f
                  bge          a5, gp, 33f
                  srai         a0, t2, 21
                  bne          s0, a7, 36f
                  add          s3, a4, s5
                  slli         t0, s2, 27
                  xori         s11, s4, -124
                  addi         zero, t2, 898
                  bgeu         t3, t0, 37f
23:               slt          s8, t5, s9
                  sub          sp, t1, s11
                  bge          t3, t4, 28f
                  blt          s11, t4, 37f
                  sltu         s1, t6, gp
28:               nop
                  slti         s2, a5, 718
                  bge          s2, ra, 50f
31:               bne          t4, s6, 39f
                  srl          s5, t2, s1
33:               sltiu        sp, t3, 447
                  lui          gp, 1026951
                  bltu         s7, a5, 37f
36:               bne          a7, t2, 56f
37:               beq          t0, s4, 44f
                  blt          a4, s10, 52f
39:               sltiu        a7, s8, -1786
                  bne          a6, t5, 51f
                  sub          s3, ra, t2
                  bgeu         a0, s8, 48f
                  sll          tp, s11, s0
44:               sltiu        t6, s6, -658
                  andi         zero, s7, 249
                  addi         t1, t5, 1869
                  srai         s8, t3, 15
48:               ori          s9, ra, 1785
                  bltu         s2, t3, 62f
50:               sltu         s7, a7, t6
51:               sub          a2, a6, sp
52:               sll          t1, s9, a6
                  xor          s9, s10, s5
                  auipc        zero, 683204
                  lui          tp, 364061
56:               beq          tp, a5, 67f
                  ori          tp, a5, 1883
                  srai         t2, t4, 0
                  add          t5, zero, a7
                  addi         a4, sp, -1352
                  lui          tp, 618102
62:               bltu         t3, a6, 80f
                  slli         s8, ra, 7
                  beq          zero, ra, 77f
                  andi         t0, s6, 610
                  xor          t1, t2, sp
67:               andi         t4, a0, -1125
                  or           t1, t0, t4
                  auipc        s8, 528160
                  xori         a3, t2, -1911
                  sll          s2, a4, zero
                  slli         t2, a1, 24
                  beq          a3, t0, 87f
                  xori         a5, t3, -88
                  andi         t3, zero, -993
                  lui          s0, 128197
77:               bge          s1, s0, 89f
                  sltu         s2, a4, a4
                  bgeu         s10, zero, 86f
80:               sll          tp, t6, t1
                  slt          a0, s8, s10
                  sltu         zero, t3, s1
                  slli         t4, sp, 15
                  lui          s11, 488932
                  and          zero, gp, s11
86:               sll          s9, t5, s9
87:               sll          a3, s5, ra
                  srli         tp, t5, 24
89:               nop
                  sra          s1, t6, t3
                  sra          zero, s1, a6
                  or           zero, sp, a0
                  sra          t4, s3, s6
                  andi         t5, s4, 1413
                  sub          tp, s10, s6
                  sll          a5, a4, s1
                  addi         s5, t3, -643
                  add          a3, a1, a7
                  bge          t5, t5, 107f
                  auipc        s2, 905453
                  addi         t0, a7, -1959
                  bgeu         tp, t4, 113f
                  addi         s3, a4, 1403
                  or           s7, t4, a3
                  slti         a7, s5, 1366
                  auipc        a0, 954935
107:              xori         ra, tp, 289
                  or           s2, sp, a1
                  blt          s9, a0, 123f
                  ori          t5, t1, 69
                  sra          tp, a2, s8
                  srl          s5, s10, zero
113:              slti         a3, t5, -1555
                  srai         zero, s5, 9
                  slt          t3, s1, a0
                  xori         s10, a0, -213
                  lui          s0, 942697
                  ori          t4, t5, -1514
                  sltiu        a5, t6, -1387
                  blt          t1, zero, 137f
                  beq          s0, a1, 126f
                  bgeu         zero, s4, 137f
123:              slti         s1, t4, -1505
                  blt          s2, a6, 136f
                  lui          s1, 958546
126:              xor          a2, t6, s10
                  add          s11, zero, s7
                  nop
                  slli         sp, s10, 22
                  bge          s6, s11, 134f
                  xori         ra, s8, 818
                  and          zero, t6, a3
                  or           s5, t5, gp
134:              slli         s11, t6, 3
                  blt          s11, a4, 147f
136:              srai         a2, s10, 18
137:              sltu         s2, tp, a4
                  nop
                  addi         sp, s2, 440
                  add          s0, a4, tp
                  and          s9, s10, t0
                  slt          a5, a3, zero
                  sll          s7, s9, s3
                  slti         s2, t0, 1573
                  srai         t6, a0, 11
                  bgeu         t6, s1, 166f
147:              and          s6, a3, s7
                  bgeu         sp, t4, 152f
                  sltu         s8, sp, ra
                  srai         t0, s4, 5
                  slt          a5, s0, s3
152:              nop
                  slt          tp, t5, a5
                  beq          s6, gp, 160f
                  xori         s0, s8, 1836
                  slli         s10, s2, 15
                  lui          zero, 641831
                  sub          t2, s2, a1
                  sltu         t4, t6, s10
160:              sub          s6, ra, t0
                  xori         s11, s5, -2036
                  bgeu         ra, a5, 173f
                  ori          s9, s1, 56
                  slti         tp, s1, -200
                  addi         a4, s2, 1806
166:              slli         t2, zero, 17
                  srl          a5, s0, t0
                  bge          a2, t2, 170f
                  slli         a0, s5, 19
170:              ori          t3, a4, -459
                  lui          s7, 215301
                  nop
173:              bgeu         s7, t1, 190f
                  srai         s6, ra, 12
                  bgeu         ra, s6, 180f
                  xor          gp, a7, t4
                  add          a7, a7, s8
                  addi         s3, a7, 1275
                  srl          a5, t0, s7
180:              slt          tp, a3, s4
                  ori          s5, a3, -1908
                  nop
                  sltiu        t5, s2, 1441
                  addi         a2, s9, -1942
                  and          s0, s2, a6
                  auipc        t6, 958778
                  beq          sp, s7, 198f
                  xori         t0, a2, -1010
                  srai         ra, zero, 16
190:              srl          t1, a7, s0
                  srai         s11, s11, 16
                  sub          s6, ra, s11
                  srai         s10, t4, 9
                  slt          a3, gp, s10
                  blt          s11, a2, 210f
                  bge          sp, s10, 208f
                  lui          a7, 710875
198:              bgeu         t3, a0, 210f
                  sll          s1, a1, s9
                  ori          t0, t4, 1492
                  slli         gp, s7, 6
                  slt          sp, s6, s5
                  slti         a3, s3, -1006
                  xor          gp, ra, s8
                  addi         sp, s10, -1175
                  sra          s6, a6, t3
                  add          s2, a5, s1
208:              srl          t6, a0, a0
                  andi         t2, sp, -517
210:              bltu         a3, a0, 224f
                  nop
                  bgeu         s10, a6, 225f
                  xori         t1, s11, 686
                  sltiu        t6, s7, 1087
                  addi         s11, a3, -856
                  addi         tp, zero, 274
                  bge          ra, a2, 231f
                  srl          zero, t5, a0
                  nop
                  slt          s5, a1, a0
                  blt          t2, ra, 232f
                  bge          ra, t4, 235f
                  slli         s6, tp, 5
224:              addi         s10, ra, -1057
225:              sub          a3, s7, zero
                  addi         s3, t6, -1557
                  sra          s10, t6, gp
                  sra          t4, s7, s9
                  srai         s6, s10, 31
                  srl          s7, a0, a7
231:              slti         t2, sp, -401
232:              srai         s2, s4, 20
                  bltu         t3, a2, 251f
                  srli         ra, s11, 19
235:              auipc        s3, 429345
                  sub          s7, a1, s6
                  slli         s7, s2, 9
                  sltu         s5, a7, s4
                  or           a7, s0, s10
                  auipc        a0, 53679
                  sltiu        gp, t3, 1607
                  slti         tp, t3, -1553
                  sltiu        a4, s3, -559
                  and          t6, zero, a6
                  sub          t0, s3, t6
                  srl          t4, s8, s5
                  auipc        s9, 1018852
                  beq          t3, s6, 259f
                  addi         s11, t5, -1261
                  xor          s10, s8, s0
251:              auipc        s9, 875649
                  srl          s5, a4, a6
                  add          s0, t3, s10
                  sltiu        a0, s11, -728
                  bltu         a1, t0, 269f
                  ori          s0, a6, -369
                  srli         s10, t5, 22
                  srl          gp, gp, a7
259:              sltiu        t1, zero, -671
                  bne          a7, t2, 267f
                  ori          tp, t0, 763
                  lui          s0, 819491
                  ori          ra, tp, 998
                  bgeu         a5, s6, 271f
                  or           a4, a6, s6
                  lui          sp, 497306
267:              ori          gp, a5, 956
                  sll          sp, s9, a7
269:              sll          s5, a1, t0
                  sltu         sp, s4, t5
271:              slli         a4, tp, 17
                  slt          a4, s2, t6
                  beq          t2, a6, 281f
                  sltiu        ra, gp, -376
                  srai         s2, t5, 17
                  sub          zero, s10, s5
                  bge          a4, s9, 297f
                  beq          s1, s5, 296f
                  or           a2, s11, ra
                  la           s9, region_0+679 #start riscv_load_store_rand_instr_stream_6
                  srl          s2, s4, s2
                  sltu         t1, ra, s4
                  add          s1, a4, a2
                  nop
                  sub          s5, ra, s2
                  sltiu        zero, gp, -1731
                  auipc        a4, 846315
                  xori         s3, t3, 571
                  addi         t1, s11, -313
                  sltiu        t1, s4, 1141
                  lbu          zero, -6(s9)
                  lh           s5, -59(s9)
                  sub          t4, s3, s9
                  lb           s3, 29(s9)
                  sb           zero, -53(s9)
                  lhu          zero, 61(s9)
                  andi         a5, sp, 1223
                  lhu          s10, -57(s9)
                  srli         t4, s4, 30
                  srl          a2, s9, gp
                  nop
                  slti         t4, a5, -966
                  andi         t1, s5, -1348
                  sra          t4, s2, s9
                  lb           s8, -34(s9)
                  srai         a2, zero, 25
                  sb           a3, 14(s9)
                  lb           a4, -38(s9)
                  slt          gp, a3, a4
                  lw           s6, 57(s9)
                  and          t0, sp, a1
                  andi         tp, s5, 1923
                  sll          s5, s7, a3
                  lbu          a2, 45(s9)
                  and          s7, a6, s9
                  or           t0, t5, s5
                  lw           a0, -51(s9)
                  sltiu        tp, s2, -1004
                  lbu          s2, 13(s9)
                  srl          t0, a5, s9
                  addi         t6, s10, -272
                  srli         ra, zero, 2
                  lbu          a0, 10(s9) #end riscv_load_store_rand_instr_stream_6
                  ori          a4, s0, -15
281:              slti         a3, s0, -1265
                  srli         t2, a0, 23
                  bge          t2, a0, 300f
                  andi         t2, a7, 1271
                  srli         s10, a1, 10
                  beq          s11, t2, 294f
                  slt          s7, zero, s10
                  ori          t2, s5, 1513
                  slt          t5, s6, gp
                  ori          s2, a4, 703
                  sub          s11, s4, t5
                  addi         sp, s6, -1773
                  bne          a2, s1, 308f
294:              beq          zero, s10, 297f
                  sltu         t1, t0, a5
296:              nop
297:              srl          tp, a0, s6
                  bge          a4, tp, 317f
                  slti         s8, t3, 1744
300:              bgeu         t6, sp, 311f
                  bltu         a0, a2, 314f
                  sll          s0, t5, t0
                  bne          t5, a5, 322f
                  blt          gp, t4, 316f
                  bne          t2, gp, 320f
                  sra          a4, sp, t2
                  nop
308:              bge          s8, a1, 325f
                  xori         s11, s8, 1835
                  bne          sp, s8, 324f
311:              sll          a5, t4, s3
                  srai         t3, s4, 14
                  andi         s3, zero, -91
314:              sll          t2, t3, s3
                  slli         s7, ra, 26
316:              sll          s8, t5, a3
317:              srl          a5, sp, s11
                  blt          s1, s4, 336f
                  nop
320:              bgeu         s11, a7, 332f
                  bne          t4, s8, 332f
322:              bne          s0, tp, 339f
                  add          tp, a7, zero
324:              lui          s5, 212248
325:              sltiu        t4, a0, 315
                  add          t5, a0, s2
                  xori         s11, s4, -1430
                  slli         s1, a7, 27
                  slt          t1, gp, s9
                  sub          s6, s5, t0
                  sra          s0, a3, a2
332:              bne          gp, ra, 345f
                  bge          s6, a6, 335f
                  and          s10, tp, s11
335:              and          zero, s3, s9
336:              bne          t6, t2, 351f
                  xori         t6, s5, -1858
                  slli         gp, s3, 14
339:              xor          a5, t3, ra
                  sll          s7, t6, s9
                  auipc        s10, 168631
                  nop
                  xor          t5, t1, s0
                  lui          t1, 452439
345:              slt          s1, a4, s2
                  andi         a4, t2, -1317
                  nop
                  sll          t0, a4, a5
                  bltu         a7, sp, 360f
                  slt          s10, s10, s3
351:              bge          s0, a5, 358f
                  beq          t5, s8, 360f
                  sub          s6, sp, sp
                  bge          a6, zero, 365f
                  bltu         s7, s5, 361f
                  beq          zero, s7, 376f
                  slti         s11, zero, -1653
358:              slli         s5, s2, 19
                  blt          a1, s10, 366f
360:              sub          zero, zero, t6
361:              sltu         t3, a5, s8
                  add          s10, s2, sp
                  add          sp, a1, a5
                  xori         s6, t0, -1252
365:              bltu         t1, a6, 379f
366:              sra          ra, a3, a5
                  bgeu         a1, t4, 385f
                  addi         t5, t0, 605
                  bge          a3, t1, 373f
                  ori          sp, a4, -1020
                  and          sp, a4, s9
                  xori         t6, s0, -1999
373:              sltiu        a0, sp, 1278
                  bltu         t0, sp, 379f
                  add          t5, s11, zero
376:              slti         a3, s3, 1076
                  slti         t6, sp, -33
                  nop
379:              sra          s11, a3, t3
                  blt          s2, s11, 383f
                  add          ra, s9, s7
                  bltu         a6, a6, 402f
383:              bge          tp, t4, 397f
                  lui          s5, 850436
385:              srl          s3, a5, s6
                  nop
                  addi         tp, a4, 1919
                  andi         s10, t4, -1804
                  sltiu        s8, a4, -1745
                  srai         s11, t1, 24
                  lui          t6, 151446
                  bltu         s2, s6, 400f
                  srl          s6, a4, s5
                  or           s6, a3, a6
                  beq          s11, a4, 407f
                  bne          s2, t3, 409f
397:              srli         t0, a2, 13
                  slli         ra, a2, 16
                  xor          t4, s10, a6
400:              sltu         a3, t0, s9
                  xor          t0, s1, a4
402:              add          a7, zero, gp
                  slt          a2, zero, s1
                  add          t1, t2, s7
                  srl          t0, s9, s3
                  slti         s10, s5, -503
407:              addi         ra, a0, -1281
                  bgeu         s4, s2, 419f
409:              srai         a5, t2, 31
                  sltiu        t1, s8, 879
                  lui          tp, 227266
                  bgeu         t5, ra, 424f
                  bge          t3, a0, 433f
                  ori          s7, ra, 537
                  sltiu        ra, zero, -1760
                  blt          a7, a2, 429f
                  bge          s9, a5, 425f
                  andi         s0, t1, 1386
419:              beq          s11, t6, 421f
                  slli         t0, zero, 10
421:              blt          a5, s4, 435f
                  bne          s8, a4, 441f
                  slli         s6, a6, 10
424:              srl          t2, a4, t6
425:              bgeu         s0, s0, 432f
                  srl          a2, s9, a0
                  and          a5, tp, a7
                  slti         s11, s0, 516
429:              sra          a3, a1, s4
                  addi         t4, s7, -1646
                  addi         s9, zero, 1551
432:              bgeu         s4, sp, 449f
433:              sll          a3, a5, s11
                  xori         tp, t4, -544
435:              nop
                  blt          zero, t4, 442f
                  xor          a0, tp, t5
                  or           s0, a2, tp
                  and          s11, t0, sp
                  sltu         s3, s5, t3
441:              lui          t3, 366830
442:              sll          a4, a5, s4
                  slti         s8, a3, 1184
                  ori          ra, sp, -75
                  add          t5, a5, s11
                  blt          a2, tp, 463f
                  srai         s3, s4, 8
                  and          a4, ra, tp
449:              ori          sp, s1, 486
                  sltiu        s3, t3, -1614
                  or           sp, s2, s5
                  addi         s6, a2, 1247
                  add          ra, a5, s0
                  nop
                  ori          s11, sp, 179
                  srl          s8, s11, zero
                  or           s9, t2, gp
                  auipc        s8, 30775
                  auipc        s5, 621455
                  bltu         s0, a0, 463f
                  bgeu         tp, s8, 469f
                  nop
463:              ori          a5, s10, -875
                  srli         s1, t2, 1
                  xori         a3, s5, -1733
                  slt          sp, s4, t1
                  slli         s6, s3, 11
                  beq          a5, s1, 479f
469:              srli         s1, ra, 12
                  slt          t1, s0, s6
                  sub          s3, a1, t6
                  nop
                  sltu         a0, a1, s7
                  xori         t3, s6, -678
                  sub          zero, a2, a7
                  lui          t1, 826604
                  xori         s9, a2, -995
                  bltu         a1, a6, 489f
479:              beq          s2, t3, 491f
                  sll          zero, a1, zero
                  bne          a5, a4, 499f
                  xor          a0, s8, t5
                  slt          a4, t0, tp
                  beq          s8, t4, 504f
                  addi         a0, tp, 1744
                  and          s6, a6, a5
                  sltu         t5, gp, t0
                  or           s10, s7, sp
489:              sltu         zero, ra, t3
                  nop
491:              sub          s7, s5, a3
                  or           t5, s11, a1
                  add          a0, s8, a5
                  srl          s1, s1, a2
                  bltu         s10, s10, 500f
                  sub          ra, s3, t3
                  and          s7, a7, s3
                  srai         zero, s9, 25
499:              sltiu        s8, t0, -1982
500:              auipc        zero, 922099
                  slt          t5, t1, s10
                  andi         s8, a3, -1768
                  xor          t1, a0, a0
504:              slt          s3, s0, t3
                  sltu         a5, s9, s3
                  sub          t3, sp, a7
                  bne          s7, s9, 519f
                  and          a3, a2, t4
                  slti         s6, s7, 160
                  srli         t0, gp, 21
                  and          s5, s9, a1
                  or           a7, s4, s0
                  srl          s10, s7, a5
                  add          s0, s10, a1
                  srl          t5, ra, t6
                  bge          s9, s9, 530f
                  srli         t3, s8, 29
                  sltiu        sp, s5, 1740
519:              and          a5, s10, a1
                  lui          s1, 654607
                  and          gp, s11, s2
                  add          s9, a5, s4
                  slt          a3, ra, s6
                  slti         s2, a5, 1813
                  srai         tp, s11, 22
                  sltu         sp, a6, t5
                  beq          tp, s7, 538f
                  ori          s5, tp, -1484
                  ori          gp, gp, 255
530:              beq          a4, t6, 545f
                  or           s9, s2, a4
                  andi         s11, a7, -893
                  blt          a3, gp, 551f
                  auipc        a7, 987643
                  sltiu        s11, zero, 1336
                  add          s8, a0, t6
                  xor          ra, a5, t0
538:              sub          a4, zero, s3
                  sltiu        t2, a7, 389
                  srl          s9, t5, s10
                  slli         s11, a7, 27
                  slti         s11, t6, 426
                  sltiu        s11, sp, 1630
                  ori          s2, a2, 1969
545:              xor          sp, s0, s11
                  bne          s6, t0, 550f
                  bge          t0, tp, 561f
                  bge          a1, t2, 563f
                  bne          s8, zero, 556f
550:              srai         a5, zero, 16
551:              xori         s7, s1, -58
                  nop
                  sra          tp, s1, ra
                  srli         a5, t5, 13
                  or           ra, t4, a3
556:              slt          s3, t3, a7
                  slli         a3, a6, 8
                  sltiu        t3, a1, 630
                  sra          zero, s9, s11
                  bltu         t6, a5, 575f
561:              sltu         a4, s4, s11
                  bne          t3, t5, 575f
563:              sltu         s0, s11, s2
                  sra          s7, a1, t5
                  slt          a5, t0, s7
                  sra          a2, s2, t6
                  bltu         a3, t5, 569f
                  and          s5, s3, t2
569:              slti         s0, a0, 1387
                  nop
                  sll          a0, zero, a4
                  andi         t4, a3, 946
                  srli         sp, gp, 19
                  bgeu         s5, a3, 587f
575:              bne          s3, gp, 587f
                  lui          s11, 779779
                  srl          t3, s9, s6
                  blt          tp, s4, 586f
                  and          ra, t4, t3
                  sltiu        s3, a4, 1399
                  bltu         a5, t4, 595f
                  bge          a0, t6, 601f
                  sub          t4, s7, s11
                  auipc        t3, 483073
                  auipc        t5, 107516
586:              srl          s7, s8, s9
587:              bne          s9, a3, 598f
                  sltu         t0, s3, a2
                  srl          s0, a2, s0
                  beq          t3, t6, 604f
                  sra          t2, s0, s11
                  srli         zero, zero, 8
                  add          s9, t6, s6
                  slti         a3, ra, -1801
595:              srai         gp, a2, 8
                  slt          s1, s8, s0
                  bltu         a2, t0, 608f
598:              slli         t1, s4, 24
                  nop
                  bge          ra, t6, 607f
601:              bltu         a1, a3, 618f
                  nop
                  auipc        s8, 74756
604:              andi         a0, s4, -1674
                  srl          s8, a7, t5
                  sltu         t0, s7, a6
607:              sub          s8, s9, a5
608:              srl          t6, a1, a7
                  sra          t6, s11, s0
                  sll          a7, s2, ra
                  addi         s11, a5, 188
                  bne          t1, s6, 630f
                  auipc        t1, 278891
                  sra          s5, t6, s1
                  srl          tp, t5, s11
                  srli         t2, s11, 7
                  xori         ra, a7, -627
618:              slti         a0, s10, -1504
                  srl          s10, s3, t1
                  bne          s2, zero, 632f
                  srli         a4, s11, 24
                  sra          s10, zero, s11
                  xori         tp, s0, 400
                  and          t6, s2, a6
                  nop
                  sltiu        a7, sp, 1166
                  nop
                  slt          s2, a3, s10
                  lui          s8, 942859
630:              bge          s10, s2, 642f
                  add          sp, a5, t2
632:              bltu         t5, s5, 638f
                  slli         a0, s6, 14
                  srl          s5, t1, t2
                  auipc        a5, 792567
                  xori         s10, s9, 855
                  sll          s0, s4, s8
638:              bgeu         a6, tp, 646f
                  slt          sp, s10, a2
                  add          t6, a1, ra
                  slt          s0, s7, t6
642:              srl          s1, sp, s5
                  andi         s6, t5, 986
                  srai         t0, s2, 25
                  bge          zero, a5, 656f
646:              sltiu        t6, a5, -1668
                  blt          s10, s2, 652f
                  slti         t2, s2, 1908
                  slti         t3, s4, 515
                  bne          gp, t2, 665f
                  sub          sp, zero, t0
652:              and          s11, s7, s6
                  srli         s1, s10, 18
                  and          ra, t5, a5
                  andi         tp, a2, 1093
656:              sll          s11, sp, gp
                  slti         s10, s11, -1375
                  beq          a6, t3, 669f
                  sra          a5, s10, t0
                  nop
                  xor          a3, t2, t0
                  srli         t4, s5, 17
                  auipc        a0, 804546
                  add          s1, t4, s2
665:              bge          s2, a7, 685f
                  xor          s0, zero, s11
                  xor          tp, a0, t6
                  add          t4, t3, t5
669:              auipc        t2, 444500
                  add          t6, a7, s11
                  auipc        s3, 422951
                  bge          gp, t5, 690f
                  ori          s11, s9, 1302
                  auipc        t3, 982762
                  slti         s11, s5, 1527
                  addi         tp, s8, -428
                  nop
                  slti         gp, s0, -1530
                  beq          s9, a0, 699f
                  sll          ra, s10, s4
                  slti         t1, t6, 379
                  sub          s0, s6, s6
                  auipc        s7, 492216
                  xori         s11, s6, -1541
685:              lui          s1, 503998
                  slli         zero, t4, 31
                  beq          t0, s3, 694f
                  addi         t4, s2, 1994
                  sltiu        zero, s1, -1555
690:              sltu         a0, s0, s5
                  nop
                  sltiu        a2, t6, 473
                  and          s9, a7, zero
694:              or           gp, s1, s3
                  sltiu        s5, a1, -2038
                  srai         a7, ra, 3
                  beq          s3, t3, 714f
                  slti         ra, sp, -1534
699:              srli         t1, a4, 6
                  srai         a3, s0, 22
                  addi         a3, a0, -332
                  andi         tp, s6, 1878
                  xori         s3, s11, -2030
                  sltiu        a5, s3, -1832
                  sra          s11, s11, t5
                  sltiu        s1, a3, -109
                  srl          s0, s3, a4
                  or           s5, a0, tp
                  xor          s8, tp, zero
                  auipc        s8, 722197
                  sltiu        t0, s9, 1253
                  sra          s8, a6, a3
                  add          ra, s7, a7
714:              and          a2, a1, t0
                  sra          s8, s2, t4
                  sll          a0, t2, sp
                  sltiu        s11, t0, 143
                  bne          s4, s11, 722f
                  bgeu         tp, a0, 722f
                  sltu         s5, s0, a3
                  slt          t4, t2, a3
722:              bgeu         a4, a1, 736f
                  or           t1, s6, s3
                  add          a2, gp, gp
                  xori         s3, t4, -1518
                  srai         t0, sp, 3
                  bne          a0, a3, 731f
                  beq          s7, sp, 734f
                  or           tp, s11, t6
                  srl          a0, a2, s0
731:              sltiu        s9, t4, -1779
                  slti         ra, s9, 1178
                  xor          a0, t6, s4
734:              sub          tp, t5, gp
                  srli         a0, zero, 10
736:              xori         t3, s1, -1217
                  srli         t3, a3, 4
                  sltiu        a0, t3, 1002
                  addi         t4, s0, -1227
                  xori         t3, zero, 219
                  la           sp, region_1+1675 #start riscv_load_store_rand_instr_stream_1
                  lbu          s8, -5(sp)
                  lb           s5, 6(sp)
                  sub          gp, sp, sp
                  xori         s9, a3, -1485
                  lw           s5, 13(sp)
                  sub          s2, s7, t4
                  lh           s2, 13(sp)
                  lui          t5, 498217
                  sltu         s11, sp, s4
                  sra          t6, t4, sp
                  srli         gp, t5, 20
                  sh           s10, 11(sp)
                  addi         s10, t6, 271
                  sb           ra, -10(sp)
                  sb           a2, -12(sp)
                  lbu          s6, 8(sp)
                  sra          s6, tp, tp
                  lbu          s6, 0(sp)
                  sb           t0, -10(sp)
                  srai         s9, t5, 8
                  sb           s0, 0(sp)
                  lui          s11, 551657
                  sub          s9, s11, tp
                  sb           t1, 8(sp)
                  slli         s10, s1, 27
                  slli         a0, s10, 26
                  sra          t6, a1, s10
                  lbu          a5, 6(sp) #end riscv_load_store_rand_instr_stream_1
                  sltiu        s0, s11, -1064
                  bltu         s2, a5, 753f
                  ori          ra, a2, 1850
                  add          s10, t2, s11
                  sra          ra, a7, a1
                  sll          s1, s2, t5
                  andi         a3, t4, -1237
                  auipc        gp, 535424
                  auipc        s6, 192261
                  beq          t5, a4, 765f
                  and          s6, s3, a0
                  ori          a5, sp, 987
753:              and          s6, a6, a5
                  slli         tp, s4, 4
                  bgeu         t0, s11, 767f
                  addi         a4, s9, -1594
                  add          s3, s8, s8
                  bge          a1, s7, 773f
                  xori         ra, s6, 1752
                  andi         gp, t2, -954
                  or           t4, a5, sp
                  sll          ra, a1, a7
                  sltiu        tp, a6, 1531
                  bne          a6, a5, 775f
765:              bltu         s2, a5, 778f
                  lui          t6, 441217
767:              sra          a7, sp, a1
                  lui          a0, 742406
                  sra          t3, a0, t4
                  sra          s11, s1, zero
                  and          t6, s4, s10
                  bgeu         gp, s2, 785f
773:              beq          zero, s4, 784f
                  xori         a7, tp, -508
775:              and          s11, s1, s0
                  slti         s5, s5, -1074
                  slti         ra, s8, -1689
778:              blt          t4, s0, 781f
                  sub          t1, s2, a2
                  sub          t3, tp, s3
781:              nop
                  sltu         s6, gp, a3
                  srai         s10, s2, 20
784:              sub          a2, s7, tp
785:              and          ra, a5, a3
                  nop
                  xori         gp, a1, -168
                  and          s0, a3, t0
                  addi         a7, s2, -1778
                  sll          s5, a3, a0
                  xor          s6, t0, a6
                  slli         a0, s0, 28
                  sltiu        t0, gp, -1942
                  xor          t6, s3, s8
                  srl          gp, s4, a4
                  addi         s3, a1, -2033
                  blt          a1, zero, 811f
                  auipc        a2, 274789
                  addi         t2, s2, 1532
                  auipc        a7, 589514
                  auipc        a3, 478826
                  slli         s1, a1, 19
                  srli         s3, ra, 7
                  andi         s8, s11, 1979
                  andi         s0, t3, 1737
                  xori         t2, zero, -62
                  blt          t3, t6, 826f
                  srai         tp, s1, 11
                  slli         s8, s9, 26
                  ori          t0, s3, -451
811:              srl          s7, s7, t4
                  bne          t0, s8, 819f
                  bne          s8, s3, 815f
                  slti         a4, t2, 1993
815:              auipc        t6, 163626
                  slt          a0, a6, s2
                  sub          t0, a0, t6
                  lui          t1, 990588
819:              slti         s7, a7, -1678
                  and          a2, s3, a3
                  srai         s8, t3, 25
                  blt          a1, a1, 836f
                  bge          a6, s4, 835f
                  sra          t0, s5, t1
                  addi         ra, t1, 838
826:              addi         t5, a6, -1888
                  add          s2, a5, t5
                  blt          sp, s7, 842f
                  beq          s1, s7, 841f
                  slti         a5, s7, 1346
                  sll          t4, a6, a4
                  bne          t6, s1, 849f
                  slli         s1, s4, 13
                  sub          sp, t1, s3
835:              srai         s11, a0, 0
836:              nop
                  nop
                  slti         sp, s5, -140
                  auipc        t0, 679827
                  slti         ra, t3, 185
841:              andi         ra, t3, -19
842:              sub          t5, zero, a1
                  andi         zero, sp, -1979
                  srai         t1, t1, 9
                  bgeu         gp, s9, 862f
                  bltu         s4, t6, 866f
                  srl          s7, a3, s7
                  add          s9, s1, t6
849:              or           s2, a7, tp
                  slt          s1, s4, t3
                  lui          a5, 928818
                  and          a2, tp, s2
                  slt          s11, a4, a2
                  sra          a0, a5, s8
                  sra          t4, s6, t1
                  auipc        a2, 437698
                  add          t6, sp, a1
                  bltu         a0, s4, 876f
                  slli         zero, s5, 26
                  blt          zero, s10, 865f
                  sll          ra, sp, s7
862:              beq          t1, s0, 873f
                  sll          a3, ra, a2
                  sra          s1, t2, a2
865:              ori          a0, a4, 1924
866:              sltu         a4, a0, a5
                  ori          s1, a6, -2023
                  sra          s5, a6, s8
                  add          t2, s1, a1
                  and          a4, s0, t4
                  srl          t2, a4, s8
                  srl          s10, a3, a7
873:              auipc        gp, 747161
                  lui          s10, 752682
                  blt          a3, t5, 883f
876:              auipc        s1, 41774
                  xori         a4, s7, 1006
                  bgeu         s6, zero, 896f
                  sltu         t3, t3, s0
                  sltiu        s5, t3, 1835
                  ori          t2, a2, 761
                  bltu         a3, s10, 902f
883:              xori         t3, s8, -710
                  xor          s11, t6, a0
                  xor          s2, t6, tp
                  xor          s3, a7, zero
                  xor          sp, t1, a1
                  sltu         gp, s4, s4
                  sltu         t4, t1, s10
                  ori          t4, t1, 1615
                  andi         ra, sp, 278
                  or           a7, a2, s6
                  sub          t6, s0, t3
                  slli         a0, s0, 13
                  sltu         ra, t1, t1
896:              nop
                  nop
                  sra          a4, t3, a2
                  blt          a3, a6, 907f
                  xor          a0, s1, a3
                  bne          a3, tp, 908f
902:              lui          s8, 78257
                  blt          sp, a5, 914f
                  sra          ra, s6, s4
                  slti         s2, s2, -911
                  addi         s5, s2, -1581
907:              beq          t3, s3, 919f
908:              sltu         a0, s9, s8
                  srl          s2, s5, t0
                  bne          a7, s10, 929f
                  sll          s7, a5, a2
                  sltu         t6, s4, zero
                  sltiu        zero, t4, 699
914:              sub          zero, t1, t0
                  andi         s2, t5, -866
                  blt          a3, a5, 928f
                  srai         t2, a6, 30
                  bge          a1, sp, 926f
919:              bltu         a6, t2, 930f
                  and          t6, s2, t2
                  beq          s3, s2, 935f
                  bne          t4, gp, 934f
                  bltu         s0, s11, 934f
                  bltu         s5, a5, 944f
                  lui          s1, 536019
926:              sub          s3, a7, s6
                  bne          s2, a2, 945f
928:              sra          s3, s5, s4
929:              sra          ra, a3, s2
930:              auipc        t5, 350104
                  sltiu        t5, s3, -453
                  srl          zero, s0, s9
                  beq          a4, gp, 946f
934:              xori         t0, t2, 1072
935:              sltu         a0, t5, t5
                  sltiu        t4, s2, 1858
                  sub          s1, s1, s3
                  bgeu         t1, a2, 949f
                  srl          zero, s1, s1
                  andi         s7, a5, 1879
                  addi         s6, zero, 1914
                  xori         t6, s2, 1266
                  and          s0, sp, a2
944:              auipc        a5, 772613
945:              srai         t0, s10, 26
946:              or           t2, gp, s1
                  xori         a4, zero, 1449
                  sltiu        t5, s9, 109
949:              xor          s11, a5, t2
                  sub          sp, a5, s2
                  addi         ra, s2, -343
                  lui          t4, 810849
                  auipc        s9, 880771
                  ori          s11, a6, 498
                  andi         sp, s3, -402
                  nop
                  slt          a2, s8, t6
                  slti         t5, sp, 1064
                  bltu         ra, s7, 974f
                  srl          a2, s8, a6
                  blt          tp, s5, 978f
                  bge          a6, a7, 979f
                  xori         s6, a3, 403
                  xor          s7, tp, s7
                  andi         a0, t2, 856
                  bne          a5, zero, 973f
                  xor          t3, t5, t2
                  srl          s8, sp, t4
                  sltu         s6, s10, a2
                  bge          s4, a7, 977f
                  sra          t5, s11, a3
                  and          t5, s11, a5
973:              add          s9, a0, s5
974:              bne          a1, a6, 988f
                  addi         s9, sp, 331
                  srai         s1, s11, 13
977:              sltiu        t5, t0, 1410
978:              slli         t1, s7, 3
979:              sltu         s7, s6, s2
                  sltu         s11, s4, a7
                  bgeu         a5, s10, 999f
                  sra          gp, t3, a6
                  addi         t5, t6, -1952
                  slli         a4, a5, 16
                  auipc        a3, 857396
                  or           s6, a3, s8
                  slt          a7, s3, tp
988:              bge          t0, ra, 1003f
                  slli         t4, tp, 4
                  ori          s6, t5, 756
                  bltu         t6, a3, 999f
                  andi         a5, s5, -1342
                  srai         zero, gp, 2
                  lui          t3, 104608
                  slli         s2, t1, 5
                  sll          a4, s1, ra
                  srl          t2, a6, s6
                  bltu         s2, t1, 1011f
999:              slt          s6, s1, t6
                  xori         s2, zero, 822
                  la           s5, region_1+1288 #start riscv_load_store_rand_instr_stream_2
                  addi         s3, s7, 1745
                  andi         a2, s0, 1389
                  lb           s9, 9(s5)
                  lh           s3, 14(s5)
                  and          a0, t2, a0
                  lbu          a7, 1(s5)
                  auipc        s8, 551379
                  slli         t1, sp, 9
                  lbu          a2, -6(s5)
                  lhu          s3, 2(s5)
                  xori         s9, a0, 243
                  lbu          s10, -1(s5)
                  sb           s11, 15(s5)
                  xori         zero, t0, 702
                  andi         a5, t4, -1463
                  lbu          t5, 5(s5)
                  lb           t5, 3(s5)
                  addi         s8, s4, 1127
                  sra          s10, s1, s1
                  lb           t6, -2(s5)
                  sh           gp, 2(s5)
                  sra          t2, tp, s6
                  lh           t1, -12(s5)
                  nop
                  sh           t2, 6(s5)
                  lbu          gp, 5(s5)
                  lb           t1, 7(s5) #end riscv_load_store_rand_instr_stream_2
                  blt          t0, s3, 1015f
                  lui          a3, 365276
1003:             andi         a5, s0, 1088
                  bgeu         s2, sp, 1009f
                  sll          s2, ra, gp
                  slt          a5, a3, a3
                  slti         t5, s8, -519
                  bne          s5, a1, 1028f
1009:             blt          t1, s10, 1012f
                  sub          s9, ra, s7
1011:             sltiu        tp, sp, 1651
1012:             ori          t1, sp, 1737
                  slti         zero, t5, 1303
                  sltiu        a0, sp, 256
1015:             slt          zero, s11, a0
                  blt          s1, t2, 1022f
                  beq          t0, s9, 1021f
                  xori         s11, zero, 103
                  srai         s7, s10, 1
                  ori          s2, a6, 2030
1021:             slli         s1, t3, 29
1022:             bltu         s3, a1, 1024f
                  nop
1024:             xor          t3, t0, t6
                  ori          gp, a1, 483
                  andi         zero, t2, -58
                  slti         t6, t0, 62
1028:             sub          a2, s8, s6
                  sub          a0, t3, s11
                  andi         t0, ra, -781
                  bne          s4, zero, 1042f
                  sltiu        s7, t1, 1910
                  and          s11, sp, a4
                  sltu         t1, s9, s5
                  srai         s6, t3, 24
                  lui          s9, 593295
                  add          s8, s8, a0
                  xori         t1, tp, 1519
                  beq          t6, t6, 1042f
                  addi         s1, s0, -1513
                  or           s8, t3, t1
1042:             addi         t3, s4, 1066
                  addi         a2, s7, 1911
                  sll          t2, s7, s7
                  sub          s0, s1, a6
                  srai         s11, a7, 22
                  lui          gp, 130837
                  beq          a6, s4, 1056f
                  blt          s10, s0, 1063f
                  and          t3, s5, a3
                  sltu         s3, s4, a0
                  xori         s11, t4, -925
                  blt          s1, gp, 1065f
                  ori          a0, a5, 407
                  beq          a7, a6, 1070f
1056:             slti         gp, a3, -443
                  srl          t0, a5, s2
                  beq          zero, s11, 1075f
                  ori          a4, s2, -416
                  auipc        sp, 689529
                  srai         s1, s0, 1
                  srai         s1, s6, 14
1063:             xor          s5, t6, a6
                  srai         a0, a5, 6
1065:             lui          s0, 141082
                  slti         gp, s5, 1664
                  sll          s5, a2, zero
                  srli         t3, sp, 2
                  sra          s3, s0, t5
1070:             sll          t2, s7, a1
                  add          t5, s11, s9
                  xor          s5, tp, s5
                  srli         s11, s8, 29
                  or           gp, s4, t0
1075:             beq          s0, s11, 1080f
                  andi         t3, zero, 1697
                  addi         zero, s11, 1228
                  sra          t3, tp, s10
                  and          t4, t5, s2
1080:             slli         a4, s6, 19
                  srli         a4, s7, 4
                  bgeu         a3, s4, 1086f
                  andi         a5, s10, -1699
                  sll          s11, s4, t3
                  or           ra, sp, t4
1086:             or           t2, t6, s7
                  slt          a2, s3, s4
                  sra          t3, s11, ra
                  and          t3, s1, s2
                  sltiu        t3, t6, 892
                  slli         s9, s4, 1
                  sra          sp, t3, s6
                  sltiu        a2, s7, 541
                  and          s11, t5, s7
                  xori         s8, gp, 1174
                  sltu         tp, t4, t6
                  slti         s2, a1, 2041
                  beq          gp, s5, 1105f
                  srai         t2, tp, 16
                  add          zero, s1, s10
                  sltiu        sp, a0, 813
                  add          a5, a7, s3
                  sltu         sp, a7, a5
                  sltu         s6, a2, gp
1105:             slti         s6, t1, -1603
                  bne          sp, t4, 1117f
                  bne          s3, t2, 1126f
                  srl          s2, a6, t6
                  addi         ra, s9, -1506
                  sltiu        s0, s1, 1078
                  bgeu         s7, a7, 1117f
                  ori          t4, t4, -1045
                  slli         t1, a2, 8
                  blt          ra, s0, 1128f
                  srai         a5, s0, 31
                  auipc        s11, 359807
1117:             bge          s2, s9, 1129f
                  blt          s11, t3, 1129f
                  blt          s3, a5, 1137f
                  slli         a3, t2, 16
                  slt          s5, a0, s7
                  slti         ra, zero, -1036
                  xori         zero, sp, -1872
                  auipc        s11, 243672
                  ori          zero, s5, -1681
1126:             xori         s11, s0, 1259
                  slli         gp, s8, 14
1128:             addi         a7, a3, -190
1129:             xori         t3, s0, 27
                  srl          t0, t3, s6
                  la           sp, sub_9
                  auipc        a3, 896689
                  sltiu        a3, tp, -424
                  addi         sp, sp, 662
                  auipc        s11, 939000
                  ori          s7, a7, -314
                  sltu         ra, a5, s11
                  sltiu        t4, a6, -1339
sub_6_j12:        jalr         t2, sp, -661 #jump sub_6 -> sub_9
                  srl          a7, s3, a0
                  bltu         t1, s11, 1144f
                  bne          a5, s10, 1146f
                  and          s2, s5, t1
                  slli         s1, sp, 24
                  bgeu         s11, s8, 1143f
1137:             addi         a5, s6, -1418
                  slli         zero, s1, 28
                  sltiu        s8, a0, 1314
                  slti         s8, t0, 1626
                  auipc        s2, 769481
                  bgeu         a5, s6, 1144f
1143:             sra          t4, s0, s5
1144:             srai         s10, t6, 1
                  nop
1146:             bgeu         t5, s1, 1160f
                  ori          ra, zero, 262
                  beq          t2, s7, 1165f
                  or           a7, s7, s10
                  srli         s9, t5, 16
                  nop
                  blt          sp, s9, 1170f
                  xor          s7, t3, t2
                  add          a2, t5, a2
                  srli         t4, tp, 24
                  add          t2, s0, a0
                  bltu         t6, s10, 1177f
                  ori          s3, t1, -252
                  bgeu         t6, t6, 1167f
1160:             xor          s6, a1, a1
                  blt          a4, t6, 1176f
                  ori          s11, s10, 1960
                  sltu         a0, s8, t1
                  sll          s11, t0, a0
1165:             srl          zero, s10, s3
                  auipc        s2, 261775
1167:             nop
                  srai         s1, s2, 4
                  blt          s9, a0, 1182f
1170:             srl          a7, s11, s8
                  auipc        a4, 380075
                  bge          a3, s3, 1192f
                  srai         s2, s8, 15
                  bgeu         a6, a4, 1185f
                  sub          tp, t4, gp
1176:             and          t4, s1, s8
1177:             sub          s10, s1, t3
                  beq          t5, a0, 1185f
                  bltu         a0, s0, 1190f
                  sll          s7, t6, a1
                  addi         t4, a0, -932
1182:             sltu         s3, a5, a7
                  xor          s0, a6, s1
                  srai         s5, s4, 11
1185:             xori         s5, s10, 602
                  blt          a7, ra, 1204f
                  bne          s6, s1, 1194f
                  lui          t4, 716668
                  beq          t3, a7, 1201f
1190:             sll          s7, t1, tp
                  sra          zero, sp, t1
1192:             xori         s3, s5, -1710
                  slli         s11, a7, 6
1194:             andi         a3, a6, -44
                  sltu         a4, a5, s11
                  sra          t6, s11, t0
                  srl          s11, t6, s10
                  srai         sp, s7, 23
                  srli         t0, t1, 16
                  slli         sp, s6, 29
1201:             sltu         tp, t0, t6
                  lui          t0, 314905
                  sll          a4, ra, s6
1204:             srai         t4, zero, 12
                  sltiu        s10, s2, -1762
                  sll          zero, a0, a7
                  sll          gp, sp, tp
                  beq          s6, a0, 1220f
                  blt          ra, gp, 1223f
                  bge          s2, a3, 1221f
                  andi         ra, t5, -1870
                  srai         s0, t5, 13
                  xori         a5, a5, 77
                  addi         t1, a6, 1984
                  xor          t0, t4, a1
                  xori         s3, s5, 1569
                  nop
                  auipc        t2, 585884
                  andi         s9, s4, 548
1220:             srai         tp, a4, 29
1221:             bgeu         s1, t2, 1236f
                  srl          s8, t2, s8
1223:             bne          s1, s10, 1231f
                  lui          s9, 629131
                  add          s1, a1, a3
                  sll          t4, a3, a0
                  andi         s10, a3, -1097
                  auipc        s7, 846510
                  beq          a6, s9, 1243f
                  and          s3, s0, t2
1231:             sub          t6, zero, t6
                  bltu         s7, t4, 1249f
                  slti         a4, s5, 326
                  sltu         a5, s1, s10
                  lui          s1, 720042
1236:             sll          zero, s6, s9
                  bge          gp, ra, 1257f
                  ori          a0, s8, 1661
                  xori         t2, s11, 464
                  addi         t4, a5, 1808
                  lui          a5, 671702
                  bltu         a4, s5, 1253f
1243:             or           a7, s1, s5
                  and          t0, a0, a1
                  ori          s5, t2, 53
                  ori          t2, s0, 285
                  xor          s6, s7, a6
                  auipc        a5, 944920
1249:             bgeu         s2, s2, 1255f
                  sltu         a2, sp, s8
                  sltiu        s10, sp, 1741
                  slti         t6, t2, 573
1253:             srai         a7, a4, 30
                  nop
1255:             bne          a2, s11, 1266f
                  bltu         a2, a1, 1269f
1257:             beq          s11, t5, 1276f
                  srai         s9, s3, 4
                  sll          tp, a6, a5
                  auipc        s10, 485062
                  bltu         t0, a5, 1263f
                  sub          s1, s11, s5
1263:             bgeu         s11, a0, 1271f
                  slli         s2, t1, 23
                  add          t3, s8, s5
1266:             xor          a7, t1, s8
                  slti         tp, a6, -1265
                  xor          tp, s0, s4
1269:             srl          ra, s1, t2
                  sltu         s9, s0, s3
1271:             andi         t6, gp, -1007
                  slli         s5, s0, 25
                  slli         t1, t1, 4
                  sltiu        a4, t4, 750
                  slt          t4, s10, s0
1276:             sub          s6, a6, s10
                  bltu         t3, t1, 1295f
                  andi         sp, s0, 1185
                  srai         t1, a2, 27
                  slli         a7, s0, 24
                  sltiu        sp, ra, 1009
                  or           a0, s5, t6
                  or           a5, t6, a1
                  bgeu         s6, s5, 1287f
                  xori         a5, s11, -1280
                  and          s3, a5, t5
1287:             ori          sp, s6, -132
                  bge          s2, s7, 1303f
                  bltu         t2, ra, 1306f
                  or           s9, s6, t4
                  andi         a4, s1, 1527
                  slli         t0, a3, 28
                  nop
                  sltiu        s9, t1, 1800
1295:             xor          s7, s1, s1
                  add          s0, a0, s8
                  addi         tp, s9, 1100
                  addi         s0, s10, 981
                  nop
                  or           a7, s3, s5
                  lui          sp, 572982
                  beq          s1, s0, 1314f
1303:             sra          sp, s5, s3
                  sltiu        s9, t5, 752
                  ori          t5, s4, 1111
1306:             ori          t6, a7, 1482
                  srai         s2, s0, 31
                  lui          t1, 253869
                  srli         t0, a7, 20
                  bgeu         s6, a5, 1314f
                  ori          a7, a0, -373
                  blt          sp, s3, 1317f
                  srl          t6, t2, s10
1314:             ori          t6, a6, 1438
                  blt          t3, s5, 1318f
                  xori         tp, s4, -75
1317:             srl          a5, t0, s8
1318:             sub          s5, t6, gp
                  lw           t2, 4(s4)
                  sll          a4, s10, t6
                  srai         t1, a0, 30
                  addi         s4, s4, 12
                  xori         t0, a4, 1956
                  nop
                  sra          a5, s4, gp
                  slli         a7, sp, 28
                  sra          t6, a4, a2
                  srai         gp, s8, 24
1713:             addi x18, x7, 1
1713:             jalr x18, x18, 0
sub_10:           beq          a4, s6, sub_10_stack_p
                  sra          t6, s10, a5
sub_10_stack_p:   addi         s4, s4, -12
                  srl          zero, gp, s10
                  srai         s11, s7, 6
                  sw           t2, 4(s4)
                  sll          s5, tp, a7
                  slt          a4, s7, s2
                  la           a0, region_0+428 #start riscv_load_store_rand_instr_stream_1
                  sltu         s7, a4, s3
                  sub          sp, s11, t0
                  ori          s9, s7, 908
                  lbu          a3, -45(a0)
                  srai         tp, t4, 14
                  sub          t3, s5, s4
                  auipc        s3, 3217
                  lbu          s5, -31(a0)
                  xor          sp, t6, tp
                  lbu          t1, -19(a0)
                  lbu          t0, 13(a0)
                  add          s5, t1, a2
                  xor          a7, s2, s3
                  lb           s9, 53(a0)
                  lbu          t1, -43(a0)
                  lhu          t2, -32(a0)
                  or           t3, t6, s10
                  and          s0, t5, a4
                  lbu          s7, 25(a0)
                  lb           a7, -46(a0)
                  lw           ra, 8(a0)
                  sltiu        s6, s3, -1243
                  srai         s0, s5, 3
                  ori          s8, t2, 636
                  lbu          sp, 29(a0)
                  srai         s10, a6, 4
                  and          a2, a1, a3
                  andi         a7, s0, -461
                  lbu          s2, -28(a0)
                  lbu          s8, 31(a0)
                  auipc        t2, 358985
                  lbu          a7, -43(a0)
                  sh           a1, -62(a0)
                  nop
                  sb           s3, 28(a0)
                  slli         a4, s2, 1
                  sra          t0, a0, gp
                  lb           s7, 57(a0)
                  xori         s3, t5, -1714
                  xori         t6, s9, -15
                  andi         s8, a2, 1740
                  ori          t2, t2, 90
                  lbu          a7, -45(a0)
                  nop
                  sra          s2, a7, a6
                  lb           ra, -54(a0)
                  sb           s2, 34(a0) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_0+27 #start riscv_load_store_rand_instr_stream_2
                  sb           a5, 16(a2)
                  lb           t3, -10(a2)
                  ori          tp, a3, 2009
                  lbu          zero, -8(a2)
                  andi         t5, s7, -345
                  auipc        zero, 288952
                  sb           s3, -15(a2)
                  sll          s11, s5, t6
                  lb           a3, 6(a2)
                  srl          a0, s10, sp
                  lb           a3, 10(a2)
                  lbu          t4, -10(a2)
                  srai         s2, s0, 16
                  sb           t5, -2(a2)
                  sb           a4, 6(a2)
                  add          t5, s7, t5
                  sh           s5, -5(a2)
                  srai         t2, s8, 1
                  lb           a4, -1(a2)
                  srli         s9, s11, 4
                  lbu          s11, 15(a2)
                  sb           ra, -10(a2)
                  sh           sp, -5(a2)
                  sb           a7, 7(a2)
                  slt          a0, s9, a7
                  and          t2, s9, sp
                  lhu          t0, -9(a2)
                  lhu          t5, 15(a2)
                  slti         a7, s0, -1436
                  srli         s0, gp, 15
                  sra          a5, s3, s10
                  xor          s1, a4, zero
                  sub          s8, a6, s1
                  lhu          s8, 15(a2)
                  sw           s1, 13(a2)
                  auipc        s5, 512780
                  lui          a5, 843424
                  auipc        t6, 544246
                  slli         s10, zero, 31
                  or           t3, t2, t0
                  sb           s10, 16(a2)
                  slti         tp, t2, 1564
                  lb           s6, 8(a2)
                  sub          a5, s7, s1
                  sltu         a5, a5, s6
                  lb           s2, -13(a2)
                  sb           s4, -8(a2)
                  sra          tp, ra, tp
                  sra          s5, s10, a6
                  sltu         t4, s10, a2
                  auipc        s7, 169393
                  lbu          s10, -4(a2)
                  sltu         t5, t1, t4
                  add          t2, zero, s4
                  sb           s0, 2(a2) #end riscv_load_store_rand_instr_stream_2
                  slli         ra, s10, 17
                  nop
                  ori          a4, gp, 1430
                  xor          ra, s10, s0
                  beq          t2, s3, 14f
                  sra          t5, a1, s2
                  srl          t5, s0, a7
                  xori         t1, a2, -1809
                  add          a4, a1, t0
                  sltiu        zero, s2, 22
                  nop
                  auipc        a4, 477250
                  nop
                  auipc        a2, 964576
14:               bne          t6, s11, 34f
                  slt          s0, a2, t4
                  ori          s0, a0, 988
                  sltiu        a3, t4, -1173
                  slt          s3, s3, a5
                  beq          sp, s9, 39f
                  bge          t4, s2, 22f
                  andi         s9, a3, -93
22:               xori         s2, t4, 798
                  andi         a7, a7, -1562
                  or           gp, a3, s8
                  add          s2, a2, a2
                  blt          tp, a4, 39f
                  or           a5, a3, s5
                  sll          s10, s1, a1
                  auipc        a0, 373735
                  xori         sp, a5, -9
                  bge          a1, s1, 46f
                  slt          sp, s11, s4
                  sltiu        a4, s4, -773
34:               xor          t1, s6, s8
                  srli         tp, s7, 4
                  sub          t1, a2, s0
                  xori         sp, a2, -73
                  lui          sp, 777753
39:               bge          t0, ra, 59f
                  auipc        s7, 487217
                  bltu         gp, s6, 54f
                  bltu         s4, sp, 50f
                  slt          s8, a5, a1
                  sltiu        s10, s8, 1688
                  ori          s10, s11, -1711
46:               ori          s8, a2, -716
                  andi         zero, gp, 0
                  slt          s1, s0, s1
                  bne          s6, zero, 57f
50:               blt          s2, tp, 63f
                  bgeu         t2, a5, 59f
                  sra          a7, s1, s6
                  ori          t0, t3, -1990
54:               or           a7, a1, a4
                  xor          s7, s5, sp
                  nop
57:               srl          gp, s9, a1
                  sub          gp, a0, s4
59:               sra          a5, s10, s6
                  bgeu         t2, s2, 71f
                  and          s8, tp, a5
                  auipc        gp, 45984
63:               add          t3, t3, s10
                  bge          a3, a0, 78f
                  srli         s9, t1, 21
                  or           s2, a3, a7
                  auipc        s0, 1042611
                  srai         t6, sp, 6
                  sra          s5, tp, a7
                  bge          s5, s10, 74f
71:               add          t4, s8, t5
                  sltu         s9, sp, s8
                  srl          s9, a6, a7
74:               and          s10, a5, a2
                  andi         a0, a0, -1962
                  bne          a0, t2, 91f
                  srli         t1, a1, 8
78:               beq          t2, a7, 94f
                  bne          a3, s10, 92f
                  slt          a7, t2, a0
                  slt          t3, sp, a5
                  xor          s5, s11, a5
                  slli         sp, s0, 19
                  srai         a4, s10, 3
                  srai         t2, a2, 3
                  xori         s6, t2, 1674
                  srli         t1, t5, 5
                  ori          a2, t5, 216
                  sub          s8, s10, t0
                  srl          s7, s1, s1
91:               slti         s11, a0, -859
92:               and          t3, a3, a1
                  auipc        t6, 989412
94:               slli         t2, zero, 4
                  ori          s11, t6, 58
                  andi         t6, s7, -1284
                  srli         s6, t5, 17
                  bge          s11, s10, 106f
                  srl          s9, s7, gp
                  beq          a4, t3, 109f
                  blt          s5, a2, 109f
                  add          a7, t0, t1
                  add          t3, ra, s0
                  nop
                  and          zero, a5, a1
106:              and          t4, a6, s9
                  bne          s1, a7, 126f
                  slt          s1, s5, a7
109:              slti         t5, zero, 622
                  xor          s2, sp, t4
                  nop
                  sll          zero, s3, sp
                  xori         s7, t4, -1707
                  srli         a5, t5, 28
                  bltu         s5, t1, 124f
                  and          gp, a6, s9
                  sltu         t6, t4, tp
                  auipc        t0, 538291
                  sltiu        t0, s4, 947
                  sra          s6, t4, s1
                  beq          ra, a5, 129f
                  slt          t5, s7, s9
                  sub          a5, s1, s11
124:              srli         t3, t3, 30
                  bge          t6, sp, 130f
126:              slli         a3, a0, 30
                  add          s7, a7, zero
                  addi         tp, s5, -132
129:              sltu         s5, sp, a7
130:              ori          t2, s4, -698
                  sll          a2, s2, s5
                  xor          ra, s3, t2
                  add          s5, s5, a3
                  sltiu        a2, a6, -603
                  beq          a0, a4, 148f
                  xor          tp, ra, a6
                  bge          t6, s11, 157f
                  slt          s2, s4, s9
                  nop
                  nop
                  srli         gp, s3, 3
                  sll          zero, ra, t4
                  add          s8, gp, s11
                  xori         a2, a3, 616
                  xor          s3, s9, s9
                  slli         sp, zero, 9
                  auipc        s1, 42128
148:              and          t0, a4, s4
                  slli         a0, sp, 26
                  and          gp, a1, s3
                  lui          s11, 869372
                  srai         s7, a7, 29
                  addi         a7, s4, 1466
                  srli         zero, t6, 13
                  slti         s7, s4, -1129
                  slti         a0, zero, 1882
157:              andi         tp, t6, -326
                  blt          s5, s3, 175f
                  and          ra, t5, a5
                  srai         gp, t6, 15
                  bltu         s0, s6, 169f
                  srl          a0, s0, tp
                  or           s10, s0, s1
                  slt          tp, a3, t1
                  ori          a3, a3, -520
                  addi         s10, s6, 1658
                  srl          a0, s7, t2
                  bne          s3, t4, 186f
169:              bltu         s6, t1, 182f
                  ori          t0, s6, 708
                  srai         s10, gp, 1
                  sll          s5, s8, t5
                  bne          a1, a1, 192f
                  sub          s2, s4, s1
175:              beq          s11, t5, 195f
                  srai         gp, a2, 14
                  slti         tp, s0, 899
                  bne          s1, a7, 193f
                  ori          s7, a3, 215
                  slti         s9, a7, 241
                  sltu         t2, ra, s11
182:              or           s10, t1, a2
                  bltu         s10, sp, 201f
                  srl          gp, t5, t5
                  addi         a7, a7, -606
186:              srli         s9, s0, 12
                  bltu         t4, sp, 191f
                  sll          t1, s8, t5
                  sub          a0, s8, s8
                  slti         s9, a4, 1005
191:              bgeu         s2, a3, 199f
192:              addi         tp, a0, -1003
193:              srli         ra, a1, 1
                  ori          a0, s0, 1681
195:              add          s0, s10, t2
                  srl          t1, s4, t4
                  addi         s1, t4, -970
                  bne          a0, s4, 218f
199:              or           s9, s7, s2
                  bltu         t1, a6, 213f
201:              bne          gp, ra, 217f
                  addi         tp, s3, 1793
                  srl          s7, a1, ra
                  blt          s7, a5, 212f
                  xori         a5, a1, -1430
                  auipc        a3, 141375
                  srl          gp, s11, t2
                  beq          t3, s3, 228f
                  srai         a4, s8, 25
                  sub          t4, t1, s7
                  xori         s10, t3, -517
212:              srl          t3, a2, tp
213:              bgeu         s5, zero, 221f
                  slli         a3, t4, 19
                  auipc        t1, 819080
                  srl          gp, s2, t3
217:              sra          t6, t0, a6
218:              sra          s10, s7, a7
                  lui          s5, 442880
                  andi         s5, a7, 743
221:              sltiu        s1, a2, -946
                  or           sp, t5, s4
                  bne          s1, a0, 243f
                  srai         gp, gp, 1
                  auipc        a3, 471994
                  srli         t4, a0, 16
                  sra          ra, a1, s8
228:              add          a4, ra, t0
                  blt          s2, a4, 237f
                  bltu         s7, t4, 245f
                  blt          gp, t0, 244f
                  and          t6, s8, t6
                  slt          gp, t4, s10
                  slli         t6, t5, 8
                  and          t5, a6, s6
                  andi         s7, a3, -1073
237:              bge          ra, a1, 239f
                  srl          a5, gp, s8
239:              beq          sp, sp, 247f
                  sll          s6, a4, a4
                  sll          s5, t2, sp
                  nop
243:              slli         s7, t5, 21
244:              auipc        s1, 1046666
245:              nop
                  srai         tp, a1, 30
247:              slli         s5, t3, 4
                  sra          t0, ra, s5
                  or           ra, a7, a5
                  srai         s10, a7, 29
                  bne          a6, zero, 260f
                  sll          t6, gp, t1
                  nop
                  sll          t3, s5, t5
                  slti         s7, ra, 496
                  sltu         t5, a4, a7
                  sltu         t1, ra, t5
                  beq          s6, gp, 263f
                  slt          t6, zero, tp
260:              srli         a3, zero, 17
                  slt          ra, s3, t5
                  andi         gp, t1, 808
263:              sra          tp, s2, t3
                  sra          a3, s1, gp
                  srai         zero, a4, 8
                  add          s3, ra, ra
                  bne          s6, ra, 284f
                  or           t0, a5, ra
                  srl          a3, a7, s0
                  bgeu         s11, t0, 281f
                  bgeu         t5, tp, 279f
                  and          s0, s8, ra
                  bgeu         a6, s3, 283f
                  blt          zero, t3, 282f
                  andi         t2, s10, -1484
                  ori          t0, tp, -241
                  bgeu         a1, a4, 290f
                  andi         tp, s3, -503
279:              bge          a2, s0, 292f
                  lui          s6, 669852
281:              sltiu        a0, a6, -1618
282:              andi         a0, a6, -1082
283:              lui          a3, 728694
284:              bne          s0, t2, 293f
                  srl          s1, s4, s10
                  sltiu        s1, sp, -543
                  or           zero, t3, s5
                  auipc        sp, 625753
                  xori         a2, tp, -1814
290:              slt          a0, a1, tp
                  srai         tp, s9, 3
292:              srli         a4, s0, 4
293:              srli         s0, s2, 0
                  sub          a2, s9, s0
                  srl          s7, t3, s4
                  and          a4, a1, s11
                  srai         s10, s5, 20
                  beq          s5, a7, 312f
                  srli         t2, s7, 2
                  xor          sp, s7, s4
                  and          ra, t1, t2
                  add          a4, a0, t0
                  slt          a3, t6, gp
                  sltu         s6, t2, t5
                  blt          a3, s2, 318f
                  lui          t6, 941129
                  bne          s9, a4, 317f
                  beq          s6, s5, 328f
                  sll          t3, s1, s4
                  bltu         t1, s2, 318f
                  xori         s5, sp, -1975
312:              slli         s9, s9, 13
                  bltu         t4, s2, 330f
                  srai         s10, t4, 8
                  sub          t1, s7, s5
                  sltu         s11, a5, s8
317:              and          t2, a5, a6
318:              slti         a2, tp, -338
                  bltu         s3, t3, 339f
                  lui          sp, 362069
                  add          t3, a4, t4
                  bge          t0, ra, 326f
                  andi         s5, s2, -1025
                  srli         s6, gp, 12
                  and          zero, a1, a7
326:              xor          ra, a0, a7
                  la           t4, region_0+205 #start riscv_load_store_rand_instr_stream_0
                  lbu          s11, 10(t4)
                  or           s3, s10, s9
                  sltu         t3, a0, a3
                  sra          a2, s4, zero
                  sb           t3, 1(t4)
                  xori         zero, s1, -1794
                  lbu          t1, -34(t4)
                  lh           sp, -53(t4)
                  lb           gp, 12(t4)
                  slt          s9, s6, a0
                  addi         s0, s11, -234
                  lhu          s1, 51(t4)
                  sltiu        t5, a1, -847
                  sra          t6, a7, t2
                  addi         s7, t3, 843
                  and          tp, s7, tp
                  lbu          s7, -34(t4)
                  ori          s0, s11, -994
                  lbu          zero, -22(t4)
                  srai         s11, zero, 25
                  sb           s5, 9(t4)
                  srai         zero, s4, 19
                  slli         a4, t0, 19
                  and          s6, s0, a0
                  nop
                  lbu          ra, 48(t4)
                  lbu          a4, -46(t4)
                  sub          a4, tp, s5
                  lhu          s10, -7(t4)
                  sltiu        t6, s3, -1669
                  lbu          s9, -32(t4)
                  lbu          s5, 34(t4)
                  lb           ra, 42(t4)
                  lbu          t2, -15(t4)
                  srl          s3, a3, s11
                  and          s9, sp, t5
                  sb           sp, 8(t4)
                  sb           s2, -46(t4)
                  sltiu        ra, t4, 1264
                  xor          a0, s9, sp
                  slti         t5, t5, -623
                  lhu          s10, -13(t4)
                  lbu          s6, 50(t4)
                  or           t5, s2, a0
                  auipc        s9, 871087
                  lbu          s7, 34(t4)
                  srai         zero, t0, 13
                  srai         s0, s8, 31
                  sltiu        a0, zero, -1554
                  lw           s10, -13(t4) #end riscv_load_store_rand_instr_stream_0
                  ori          t5, s6, -1951
328:              slli         s10, zero, 2
                  xori         s3, s11, -563
330:              or           a2, s7, s10
                  lui          t2, 465149
                  sltiu        s7, a6, -639
                  ori          t1, a5, -1267
                  xor          t6, s2, t3
                  add          t4, s1, a1
                  bgeu         s9, t6, 344f
                  bltu         a2, s8, 345f
                  sll          s7, s3, zero
339:              sll          s10, s8, a3
                  andi         s5, a3, 1308
                  bgeu         s0, sp, 349f
                  or           s3, s5, a7
                  beq          s2, s2, 358f
344:              or           s7, t6, s5
345:              srai         t2, t3, 30
                  slli         ra, a3, 3
                  sltiu        s6, s1, -813
                  andi         zero, t6, -134
349:              ori          s1, a0, -220
                  auipc        t5, 818827
                  srl          t4, a5, s9
                  srai         s7, a2, 9
                  auipc        a3, 876520
                  slt          a5, s3, s1
                  slti         s7, t1, -992
                  bltu         t0, t5, 376f
                  or           s3, s9, s8
358:              auipc        sp, 483635
                  andi         gp, a5, -314
                  sra          s2, s2, s2
                  sra          s7, a7, t2
                  lui          s3, 160310
                  slti         s11, gp, 1204
                  bne          zero, s5, 378f
                  or           a7, t3, s5
                  bne          s3, s9, 384f
                  slt          a4, t4, s1
                  bltu         a2, s1, 383f
                  addi         s5, a0, 1873
                  xor          s8, t6, a2
                  xor          t3, a4, a2
                  beq          s9, s5, 374f
                  srl          a7, tp, s10
374:              bgeu         ra, s8, 383f
                  slti         zero, t0, 625
376:              bltu         a0, t3, 389f
                  bge          a7, t3, 390f
378:              sltu         tp, s2, a7
                  srai         s0, s11, 22
                  sltiu        s3, a3, 1462
                  srai         s2, s10, 7
                  blt          a3, s4, 390f
383:              bge          a0, ra, 396f
384:              srli         s7, s8, 8
                  ori          s3, s8, 1066
                  srl          t1, a4, tp
                  sll          s10, gp, s9
                  slti         a0, s1, 499
389:              ori          s8, a3, 1742
390:              slt          t0, a6, t5
                  xori         a0, zero, -770
                  beq          a6, tp, 410f
                  srl          a0, zero, a1
                  bge          s7, a1, 403f
                  srli         t2, s3, 27
396:              bgeu         s0, t2, 404f
                  bgeu         gp, s0, 402f
                  andi         t6, a3, -1195
                  bne          a2, a1, 407f
                  add          sp, a0, s7
                  ori          s3, t4, -1882
402:              auipc        t1, 445573
403:              blt          gp, t0, 410f
404:              bne          s2, s8, 410f
                  srli         t6, s3, 31
                  slli         s1, s10, 7
407:              beq          t1, a2, 410f
                  and          s10, a4, t2
                  sub          t6, a6, t6
410:              add          s8, s1, a3
                  srli         s8, tp, 20
                  lw           t2, 4(s4)
                  addi         s11, a6, 440
                  addi         s4, s4, 12
                  addi         s3, a3, 1658
579:              addi x21, x7, 1
579:              jalr x21, x21, 0
sub_3:            addi         s4, s4, -12
                  srai         s0, zero, 30
                  addi         s10, zero, 705
                  ori          sp, a1, -1643
                  sw           t2, 4(s4)
                  xor          t1, a0, s1
                  srl          s3, t3, t6
                  sll          a4, s9, ra
                  andi         t2, s10, 1256
                  sra          a2, t5, s6
                  slt          sp, tp, ra
                  auipc        s7, 302270
                  la           a3, sub_6
                  sltiu        tp, s11, 1323
                  addi         a3, a3, -734
                  sub          s6, s3, t5
                  srai         s10, zero, 24
                  xori         t6, a5, -549
sub_3_j7:         jalr         t2, a3, 735 #jump sub_3 -> sub_6
                  la           t6, sub_5
                  srai         s1, a1, 25
                  addi         t6, t6, 753
                  slti         t4, a1, -1006
                  bge          t4, a7, sub_3_j9 #branch to jump instr
                  sltiu        s2, a5, 209
                  srli         a7, s6, 7
                  andi         t3, t6, -885
                  slli         s10, a2, 12
sub_3_j9:         jalr         t2, t6, -752 #jump sub_3 -> sub_5
                  la           a7, region_0+814 #start riscv_load_store_rand_instr_stream_0
                  sub          t6, t0, s2
                  lbu          s1, -282(a7)
                  sw           tp, -310(a7)
                  srli         t1, zero, 19
                  lhu          t2, 916(a7)
                  lui          t3, 911394
                  sb           a2, -573(a7)
                  nop
                  slli         s0, s9, 29
                  slli         a0, s2, 18
                  xori         zero, s6, -1393
                  sb           zero, -210(a7)
                  sb           t5, -629(a7)
                  sub          t2, t1, a2
                  lh           zero, 130(a7)
                  slti         s1, t3, -156
                  sh           t0, 714(a7)
                  srai         t0, t6, 5
                  sb           s9, 753(a7)
                  srl          a2, s10, s1
                  lb           a2, -801(a7)
                  andi         a2, s9, -809
                  lh           s6, -770(a7)
                  lhu          a3, 202(a7)
                  slti         s5, a5, -1482
                  lui          s10, 545298
                  lb           t1, 1111(a7) #end riscv_load_store_rand_instr_stream_0
                  blt          s2, a2, 10f
                  blt          a5, ra, 12f
                  lui          t3, 643295
                  lui          sp, 276513
                  slli         ra, s8, 4
                  la           a2, sub_7
                  addi         a2, a2, -866
                  and          t5, sp, s4
                  bgeu         t2, t1, sub_3_j8 #branch to jump instr
                  add          s8, t5, t2
                  lui          s5, 773472
                  xor          s3, s10, s5
                  sub          s10, s9, s0
sub_3_j8:         jalr         t2, a2, 866 #jump sub_3 -> sub_7
                  srli         a2, t1, 1
                  bltu         s6, a4, 24f
                  beq          a5, ra, 18f
                  sra          t5, sp, a6
                  slt          a2, a3, t6
                  ori          s1, ra, -1344
10:               xori         s10, s3, -473
                  sra          a2, t5, ra
12:               bge          gp, t0, 14f
                  slt          s1, s4, sp
14:               ori          t6, s7, 1531
                  xor          s1, s8, a5
                  sra          t5, gp, a6
                  beq          s6, s8, 21f
18:               ori          t1, t3, 638
                  and          s7, s6, a2
                  sltu         s1, t3, s2
21:               bne          a1, s6, 24f
                  xor          s10, ra, a0
                  ori          t1, t3, 1073
24:               xor          a4, t0, zero
                  blt          s8, a2, 32f
                  and          s9, s9, t6
                  slt          a5, s5, a0
                  srai         a2, s11, 30
                  add          s9, a7, sp
                  beq          a5, t2, 50f
                  srai         s7, sp, 28
32:               sub          s5, s4, t3
                  sub          t3, s1, s2
                  sltu         t2, a7, a7
                  slti         s11, s0, -1165
                  slt          t6, a4, zero
                  andi         t3, s1, 1305
                  srai         gp, a6, 30
                  andi         t1, s11, -418
                  xori         sp, t4, 1816
                  sll          t0, t0, a4
                  beq          s9, a6, 49f
                  srai         t6, s8, 1
                  srl          s2, ra, ra
                  slti         s11, a0, 1806
                  sltu         s10, s11, s3
                  or           s6, a7, t0
                  sltiu        s11, a7, 1472
49:               sltiu        t6, s1, 1315
50:               srai         t6, s8, 25
                  lui          s9, 318474
                  bgeu         t5, t3, 62f
                  sltu         t5, s2, ra
                  slli         tp, s0, 25
                  lui          t2, 714727
                  srli         s6, s2, 5
                  sub          t5, s4, s6
                  sll          t4, a2, a6
                  bge          a0, gp, 70f
                  add          tp, t4, t3
                  addi         s2, s9, -1727
62:               add          s2, s8, t2
                  srl          a4, tp, a4
                  nop
                  add          t0, t3, s4
                  or           s10, s4, a0
                  sub          t0, s2, s7
                  bne          ra, s8, 84f
                  add          sp, s0, t5
70:               add          s8, a0, s10
                  addi         s10, gp, -1679
                  andi         tp, a6, 1820
                  and          zero, a1, s7
                  srli         t3, s9, 31
                  andi         t0, tp, -1335
                  andi         ra, tp, 873
                  slli         s9, tp, 15
                  slt          t4, s6, t0
                  auipc        a3, 1045844
                  or           ra, s11, s11
                  bne          t1, t0, 90f
                  addi         tp, t5, -463
                  bne          s11, t1, 93f
84:               srl          t2, t1, a3
                  nop
                  slti         s2, a6, 899
                  bne          s7, s10, 101f
                  nop
                  lui          t4, 575798
90:               slti         a5, t2, 633
                  bltu         s7, s8, 92f
92:               slli         a3, s1, 18
93:               srl          gp, s1, t0
                  bltu         t2, t6, 97f
                  bge          t6, tp, 105f
                  auipc        s6, 290649
97:               andi         zero, s0, -750
                  bne          t5, s2, 108f
                  bge          s2, t1, 112f
                  xor          s0, ra, sp
101:              sub          s2, s2, s7
                  andi         a4, s8, 1565
                  bltu         t5, s9, 114f
                  slti         ra, a0, -1164
105:              sltu         s0, s9, gp
                  beq          s3, s0, 120f
                  addi         s10, s4, -1390
108:              slli         tp, s4, 25
                  andi         tp, t3, 1281
                  sub          s11, t3, a5
                  sra          s0, s6, s6
112:              add          a5, a4, t6
                  sra          s9, a7, s3
114:              bltu         a1, a4, 123f
                  slli         a4, s5, 28
                  sltiu        t5, s4, 724
                  xori         a5, s5, -661
                  or           a3, s8, s0
                  sub          s9, s10, a1
120:              beq          gp, s4, 127f
                  nop
                  or           ra, a5, a5
123:              sltiu        s1, a6, 1050
                  bne          s0, a4, 127f
                  add          s3, zero, t0
                  bge          s11, ra, 127f
127:              add          s1, gp, a6
                  or           a5, a5, t1
                  lw           t2, 4(s4)
                  add          s5, a0, t5
                  sltu         tp, a1, s2
                  xori         a4, a0, 1673
                  addi         s4, s4, 12
                  srl          gp, s11, s0
                  srl          s1, s3, ra
203:              addi x21, x7, 0
203:              jalr x21, x21, 0
sub_9:            xor          s8, zero, tp
                  beq          s0, a3, sub_9_stack_p
                  slti         s10, t1, 1676
                  sltu         a4, t5, a4
                  add          s0, tp, s3
sub_9_stack_p:    addi         s4, s4, -32
                  sltiu        t5, tp, 1390
                  nop
                  sll          a2, s8, a6
                  and          s8, s5, a0
                  sw           t2, 4(s4)
                  slli         s7, t6, 25
                  nop
                  auipc        s5, 417644
                  lui          a0, 152509
                  slli         s0, t5, 5
                  nop
                  slli         s8, a6, 25
                  or           s8, s9, t0
                  blt          t0, sp, 17f
                  slt          s5, s6, a2
                  sub          s2, s3, zero
                  xor          s5, ra, s8
                  bgeu         a3, a6, 20f
                  xor          s2, a0, s4
                  or           a0, t2, sp
                  bne          zero, zero, 16f
                  bne          t1, s8, 31f
16:               bne          zero, t1, 30f
17:               slt          s11, a4, a7
                  sub          s6, s8, a1
                  lui          s7, 630254
20:               addi         a5, s5, -1853
                  add          a4, t6, a7
                  slli         s8, s11, 4
                  sltu         a3, a5, s6
                  srli         zero, a1, 1
                  and          s0, s1, a4
                  nop
                  srai         a0, t4, 15
                  beq          a1, tp, 39f
                  blt          t2, s6, 30f
30:               sltiu        sp, a7, -363
31:               add          tp, s3, s11
                  add          t4, a0, s6
                  or           s1, s11, s8
                  ori          a4, s5, 332
                  beq          s6, s11, 39f
                  blt          a6, s10, 39f
                  bge          ra, a4, 39f
                  bgeu         s8, s6, 39f
39:               lui          gp, 327415
                  lw           t2, 4(s4)
                  sub          s0, a6, a1
                  slt          t6, s6, s6
                  slt          s10, s11, tp
                  addi         s4, s4, 32
                  slt          t6, s0, t0
                  srai         a3, s5, 11
                  srai         t5, s11, 7
                  lui          s3, 804748
                  srli         ra, s3, 0
                  nop
                  slt          gp, s4, s1
64:               addi x9, x7, 1
64:               jalr x9, x9, 0
sub_1:            slti         a7, ra, 502
                  or           s11, s3, sp
                  addi         s4, s4, -52
                  sltu         a0, sp, a1
                  auipc        s11, 140634
                  srli         a0, s7, 15
                  sltiu        t5, s4, 779
                  srl          zero, ra, s11
                  sw           t2, 4(s4)
                  srl          s11, a6, a1
                  xor          sp, a4, a0
                  la           t4, sub_3
                  addi         t4, t4, 756
                  bgeu         tp, s2, sub_1_j4 #branch to jump instr
                  slti         a5, a5, 1664
                  slt          tp, s5, s7
                  lui          s9, 858418
                  xori         ra, s6, 1375
                  andi         a5, sp, 664
                  add          tp, t3, s8
                  ori          s9, s0, 179
sub_1_j4:         jalr         t2, t4, -755 #jump sub_1 -> sub_3
                  slt          zero, s0, zero
                  slli         ra, t2, 28
                  sub          t6, gp, a7
                  la           s1, sub_4
                  or           s9, a5, tp
                  addi         s1, s1, -633
                  sra          s0, t2, t0
                  sub          t6, a2, s4
                  auipc        a7, 354089
                  slti         tp, a3, -258
                  auipc        t4, 944789
                  slli         gp, t2, 0
sub_1_j5:         jalr         t2, s1, 633 #jump sub_1 -> sub_4
                  la           a2, region_0+1209 #start riscv_load_store_rand_instr_stream_0
                  sb           t6, 126(a2)
                  xori         s2, s8, -135
                  lhu          a3, 659(a2)
                  xori         s1, gp, 181
                  lbu          t0, -655(a2)
                  sh           a7, 213(a2)
                  auipc        t1, 182690
                  lb           s1, -259(a2)
                  andi         zero, s10, 1305
                  sb           s9, -390(a2)
                  and          s1, s7, ra
                  addi         s5, a5, -166
                  addi         a3, s7, -1012
                  sb           s4, -444(a2)
                  lb           t4, -167(a2)
                  slli         s10, tp, 21
                  lb           s8, -239(a2)
                  slt          s9, t5, a4
                  srl          s6, s3, tp
                  lb           s0, 342(a2)
                  sb           ra, 608(a2)
                  andi         a3, s5, 446
                  sll          zero, s11, s10
                  srl          s9, s9, s11
                  slli         t2, s4, 5
                  lh           s10, -115(a2)
                  xori         s0, s5, 1079
                  auipc        s11, 840488
                  sra          s3, t2, ra
                  lhu          s5, -1011(a2)
                  lb           s5, -341(a2)
                  sh           t2, -593(a2)
                  sb           a6, -480(a2)
                  sltiu        ra, s3, 956
                  sb           sp, 484(a2)
                  nop
                  slt          t1, a4, gp
                  srli         a3, s10, 26
                  ori          t3, s4, 510
                  lb           zero, -274(a2)
                  sra          s6, s3, t4
                  sb           a6, 756(a2)
                  ori          s9, t3, -275
                  sb           ra, -810(a2)
                  lbu          s0, -408(a2)
                  lhu          s7, -1059(a2)
                  sh           s8, 305(a2)
                  lbu          s9, 570(a2)
                  lbu          t1, -570(a2)
                  xori         s3, t0, -1922
                  lui          t6, 589724
                  lb           t4, 189(a2) #end riscv_load_store_rand_instr_stream_0
                  sll          s0, t2, zero
                  lui          s11, 340480
                  sub          t3, tp, s7
                  sra          t5, t3, a1
                  srl          a5, a6, a3
                  slti         a0, ra, -1391
                  slt          s11, a7, s4
                  add          s2, ra, t1
                  xor          t3, a2, s5
                  bge          a2, s0, 19f
                  ori          a4, s11, 975
                  and          t4, s4, a0
                  auipc        t6, 994738
                  ori          t5, t5, -1517
                  sra          s0, a7, t6
                  xori         t6, s6, 291
                  bge          t0, t6, 26f
                  lui          t3, 999348
                  and          s7, a6, s2
19:               slti         s1, s4, 1428
                  srli         s9, s3, 19
                  bgeu         t4, s7, 36f
                  ori          sp, t6, 1780
                  sub          t6, s2, a5
                  slli         zero, ra, 16
                  sub          s8, t6, s11
26:               beq          a2, a3, 46f
                  xor          a2, s10, t5
                  xor          tp, t2, s9
                  srl          gp, tp, s4
                  slt          s5, sp, t1
                  srl          a5, s5, s1
                  add          ra, s5, s5
                  slt          s3, t0, a4
                  sll          a3, s10, t4
                  sltiu        s3, zero, 1777
36:               slti         s9, s8, -1398
                  lui          t2, 844008
                  nop
                  sll          s8, t3, s7
                  blt          t4, s4, 48f
                  nop
                  bltu         t0, a5, 54f
                  srl          s10, a7, t1
                  beq          s5, s0, 45f
45:               slti         t3, s8, 1767
46:               ori          t5, sp, 1161
                  sltu         tp, s1, a0
48:               ori          s6, t1, 1605
                  bgeu         tp, s10, 69f
                  and          tp, a6, a5
                  auipc        a5, 934960
                  sra          s10, t4, sp
                  sltu         a7, ra, a5
54:               sra          s6, a3, s8
                  srli         sp, zero, 22
                  slli         a3, s4, 2
                  xor          a2, s3, t6
                  srai         a0, s5, 13
                  srl          s10, a2, a4
                  sra          s0, s1, t0
                  slt          t0, t0, gp
                  slt          s11, t1, s6
                  sub          zero, ra, s4
                  bne          sp, sp, 67f
                  ori          s6, t3, -1225
                  sltu         zero, zero, s3
67:               xor          a0, gp, a7
                  andi         t3, a3, 1089
69:               bne          t1, t0, 76f
                  addi         s11, zero, 1753
                  sltiu        s6, a5, 839
                  srl          s7, sp, s5
                  xori         a0, s10, 1234
                  sub          s3, t0, s11
                  or           a7, a0, a2
76:               blt          t2, a6, 79f
                  beq          a2, s9, 90f
                  ori          t6, t6, -1858
79:               sll          gp, sp, a0
                  xori         s8, a0, -1620
                  sltu         s3, s5, a2
                  ori          a7, t3, -35
                  or           t1, a1, s6
                  blt          s4, gp, 87f
                  sra          a2, s6, zero
                  sltiu        t2, s11, -485
87:               add          s0, tp, s7
                  sltiu        tp, t2, -411
                  auipc        a2, 603314
90:               sltiu        s11, tp, 1589
                  and          tp, s7, a3
                  blt          s2, a5, 112f
                  slli         s9, s7, 9
                  srli         t0, gp, 30
                  bne          t1, s0, 108f
                  sra          sp, s10, sp
                  blt          s5, sp, 110f
                  bltu         ra, a7, 101f
                  andi         s9, t1, -991
                  bltu         a2, a4, 104f
101:              bltu         t1, tp, 103f
                  and          gp, a2, a2
103:              addi         s8, a6, 1982
104:              bltu         t5, s6, 114f
                  sra          sp, t1, a5
                  srli         s9, s8, 10
                  sltiu        t0, a7, -54
108:              bne          a4, t6, 119f
                  beq          t1, s0, 124f
110:              srai         t3, tp, 25
                  srl          s0, s6, a4
112:              bne          s10, a0, 120f
                  ori          ra, s2, -1965
114:              xor          t3, s1, s9
                  slli         t0, a3, 29
                  nop
                  slti         gp, ra, -1062
                  sra          s3, t1, t4
119:              or           t4, a4, s8
120:              sll          t5, zero, a1
                  bne          t3, a4, 122f
122:              sra          ra, a0, s11
                  blt          gp, tp, 134f
124:              auipc        t1, 1020879
                  sltiu        a0, t2, 30
                  srli         t0, s5, 10
                  xori         s2, zero, -1266
                  srl          t6, a5, s4
                  or           s11, s4, a6
                  srl          t6, zero, t1
                  xori         t3, s9, -1751
                  slti         sp, s5, -102
                  xor          tp, ra, t0
134:              slt          s6, a0, a4
                  bltu         t5, s6, 148f
                  ori          a3, s7, -1086
                  or           t1, s5, a1
                  and          s10, t3, a6
                  srl          s2, a4, tp
                  srl          t6, a3, a7
                  add          t4, a4, a2
                  bge          s9, t1, 157f
                  sll          a2, a7, t1
                  lui          t2, 452845
                  srli         gp, a6, 12
                  slli         t5, a0, 22
                  bltu         s5, t6, 162f
148:              srai         t1, s5, 0
                  sub          ra, t5, a1
                  blt          tp, a5, 163f
                  sub          s6, a0, s9
                  sub          t2, s11, s8
                  sltu         s5, t5, t5
                  bltu         gp, a1, 170f
                  srli         s7, s6, 20
                  ori          s7, t1, -807
157:              auipc        zero, 165815
                  lui          s8, 179547
                  sll          t2, tp, a0
                  sub          t4, a7, t3
                  andi         s6, s0, 520
162:              sub          gp, s6, t2
163:              bgeu         s8, s11, 165f
                  sll          s0, zero, t6
165:              andi         s0, s3, -1726
                  and          a5, t2, s0
                  sll          s5, t2, s6
                  sra          t4, s9, s2
                  or           s3, s3, s11
170:              bge          a7, s4, 185f
                  auipc        s0, 186531
                  slti         t0, s6, -969
                  bge          zero, a6, 186f
                  sra          zero, s7, s1
                  sll          t1, s2, ra
                  bne          gp, sp, 196f
                  srai         t5, a5, 9
                  andi         s2, s11, -163
                  ori          s6, a7, -435
                  slt          t4, s6, sp
                  or           gp, ra, a4
                  nop
                  blt          s11, t5, 196f
                  xor          s3, gp, t0
185:              xor          a0, s9, a7
186:              sll          s6, s3, s4
                  add          t4, a4, sp
                  bgeu         gp, s11, 201f
                  beq          t6, sp, 192f
                  slt          s3, a6, ra
                  xor          t0, a5, s10
192:              slt          s3, zero, s1
                  slt          a2, tp, zero
                  addi         s1, t4, -18
                  xori         a7, s5, 1856
196:              slli         s6, ra, 1
                  add          s5, a4, t1
                  xor          a4, s1, t3
                  xori         t0, s2, -1141
                  srli         s9, s4, 30
201:              slt          a2, sp, s6
                  ori          s0, s5, -1176
                  slli         zero, t2, 18
                  nop
                  beq          t2, s0, 211f
                  srl          t1, t3, s4
                  add          s10, gp, a2
                  slt          a2, s8, a0
                  and          t4, sp, a6
                  sra          t0, zero, tp
211:              nop
                  sltiu        zero, s7, 1883
                  nop
                  srai         t4, t2, 30
                  lw           t2, 4(s4)
                  and          sp, ra, zero
                  sub          t5, s4, a3
                  addi         s4, s4, 52
                  add          s8, a2, sp
                  andi         a5, s2, 549
                  srai         a0, a3, 30
                  srl          t5, s7, a0
311:              addi x10, x7, 1
311:              jalr x10, x10, 0
sub_7:            lui          tp, 784448
                  srai         t1, t4, 1
                  nop
                  addi         s4, s4, -56
                  andi         s9, sp, -517
                  slti         gp, ra, -561
                  sltu         a3, a6, s4
                  sw           t2, 4(s4)
                  sltiu        a0, a2, -872
                  and          a5, t3, s7
                  addi         s1, s8, -1713
                  and          a5, s8, s8
                  lui          s0, 115391
                  ori          t5, t4, -221
                  or           s0, t2, a5
                  xor          zero, t2, zero
                  addi         sp, a3, -345
sub_7_j13:        jal          t2, sub_9 #jump sub_7 -> sub_9
                  sra          gp, a7, s5
                  ori          s6, s9, -1032
                  add          t4, t2, s5
                  srl          a0, t6, a1
                  sll          s9, s11, zero
                  srli         a2, s1, 18
                  nop
                  slt          s6, t5, a0
                  or           a0, s7, s9
                  sltu         s10, t6, a3
                  srli         t4, s3, 16
                  xori         s11, a5, 1046
                  sll          zero, t1, t3
                  sra          zero, s8, a3
                  srai         t1, s9, 17
                  bltu         s5, s3, 28f
                  nop
                  ori          t4, s6, 1511
                  nop
                  slt          gp, s1, s5
                  sll          a3, t4, t2
                  slli         a0, s9, 21
                  srli         ra, s6, 28
                  sltiu        s2, t2, -715
                  bge          s11, a7, 40f
                  sll          t3, s1, s3
                  sltu         a0, t5, s6
                  auipc        t5, 843969
28:               sltiu        gp, t1, -1319
                  srli         t2, s1, 16
                  auipc        gp, 29772
                  srai         sp, t2, 16
                  xori         s10, a1, 445
                  srl          t5, t2, s10
                  auipc        zero, 571513
                  sra          s1, s4, s5
                  and          s5, t6, t6
                  sltiu        a0, a1, 668
                  beq          s10, s5, 56f
                  srai         s10, a5, 2
40:               bne          t2, s3, 47f
                  sll          s3, t6, t0
                  andi         t1, zero, -1666
                  sra          a7, a7, ra
                  addi         t0, s2, 1122
                  xori         a7, s9, -1598
                  bltu         s11, s9, 47f
47:               and          gp, s9, s1
                  sra          a2, tp, s7
                  beq          a5, t3, 61f
                  slti         a7, t6, 564
                  andi         zero, s10, -80
                  bge          t1, a3, 70f
                  blt          a5, a3, 58f
                  andi         a2, t5, -1745
                  sub          t2, s5, zero
56:               srli         t0, s9, 16
                  bne          zero, sp, 61f
58:               bne          a5, s6, 73f
                  bltu         a5, t3, 61f
                  sra          s6, s4, s5
61:               slli         a0, s5, 19
                  slti         s6, a0, -1247
                  lui          ra, 567904
                  lui          s2, 347996
                  sub          a0, t6, s0
                  and          a0, s10, s1
                  or           tp, a5, s5
                  slti         a4, zero, -1823
                  and          s11, tp, s1
70:               andi         s7, t3, -798
                  bltu         s6, s6, 79f
                  auipc        zero, 102968
73:               slli         a5, a1, 3
                  srli         s8, a2, 11
                  andi         a3, s5, 1023
                  nop
                  ori          s9, tp, 1579
                  slti         t1, t6, 1648
79:               add          a2, s8, a4
                  xor          t0, s2, a6
                  bne          t5, t5, 83f
                  sll          ra, zero, t1
83:               xori         ra, a5, -462
                  and          zero, t5, tp
                  lw           t2, 4(s4)
                  auipc        s11, 794114
                  addi         s4, s4, 56
                  sub          a3, s5, s3
107:              addi x7, x7, 0
107:              jalr x7, x7, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x16, x20, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x6, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x6, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x6, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x6, x27, ecall_handler
                  li x27, 0x1
                  beq x6, x27, instr_fault_handler
                  li x27, 0x5
                  beq x6, x27, load_fault_handler
                  li x27, 0x7
                  beq x6, x27, store_fault_handler
                  li x27, 0xc
                  beq x6, x27, pt_fault_handler
                  li x27, 0xd
                  beq x6, x27, pt_fault_handler
                  li x27, 0xf
                  beq x6, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x20, x16, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
