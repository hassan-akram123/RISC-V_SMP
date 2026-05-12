.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x31, 0x1800
                  csrw 0x300, x31 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x3
                  li x2, 0x0
                  li x3, 0xf769e483
                  li x4, 0x80000000
                  li x5, 0xd926dbb9
                  li x6, 0xf4759627
                  li x7, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x2397ab16
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x5
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xfb2e5146
                  li x23, 0x0
                  li x24, 0xf9211dd5
                  li x25, 0xe
                  li x26, 0xf33556fa
                  li x27, 0xd
                  li x28, 0x6118893b
                  li x30, 0x3
                  li x31, 0xf7a31807
                  la x29, user_stack_end
main:             la           a7, sub_2
                  ori          a6, s0, 726
                  addi         a7, a7, -273
                  srl          s4, a2, gp
                  srai         s8, s6, 1
                  srai         s10, s3, 28
                  and          t1, s10, a4
main_j3:          jalr         t5, a7, 274 #jump main -> sub_2
                  la           t2, region_0+1979 #start riscv_load_store_rand_instr_stream_0
                  lbu          t1, -12(t2)
                  sra          a1, ra, a1
                  sh           s3, 9(t2)
                  sll          a6, a5, s2
                  ori          s10, zero, -1613
                  sw           t2, -7(t2)
                  slt          a6, a4, a7
                  sll          zero, s2, ra
                  lh           s8, -3(t2)
                  andi         s11, t6, -510
                  add          s7, t1, s3
                  lhu          a3, 11(t2)
                  lh           sp, -1(t2)
                  or           t3, s11, tp
                  lui          ra, 253577
                  sb           t4, -13(t2)
                  lb           a1, -16(t2)
                  sb           t0, 10(t2)
                  lbu          s2, -8(t2)
                  lhu          s2, -3(t2)
                  slti         s11, t5, 299
                  nop
                  xori         s6, sp, -1819
                  lb           s8, 0(t2)
                  lhu          gp, 7(t2)
                  sra          tp, tp, t6
                  or           a4, s10, ra
                  sb           s9, 16(t2)
                  sh           t1, -1(t2)
                  lb           t6, -15(t2)
                  or           a7, tp, t4
                  sb           t1, 14(t2)
                  sb           s6, -14(t2)
                  lbu          a0, -5(t2)
                  lbu          s2, 6(t2)
                  sll          zero, s1, a3
                  srai         t0, a2, 5
                  add          t1, a7, s8
                  sub          s11, s11, t2
                  slti         s10, a1, 958
                  lh           s10, 7(t2) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_1+1368 #start riscv_load_store_rand_instr_stream_2
                  lbu          t2, -13(tp)
                  sb           s10, 13(tp)
                  sh           sp, -6(tp)
                  xor          t3, s3, s7
                  lb           s1, 4(tp)
                  lbu          a0, -3(tp)
                  or           s1, a2, s6
                  sh           s2, -14(tp)
                  lhu          t1, -16(tp)
                  lbu          s3, -7(tp)
                  sb           s5, 7(tp)
                  sra          s5, tp, t6
                  lbu          t6, 15(tp)
                  lb           t6, 7(tp)
                  lbu          sp, 2(tp)
                  sb           t1, -8(tp)
                  lh           t2, -2(tp)
                  lbu          s8, -15(tp)
                  sb           t6, 8(tp)
                  add          gp, s2, s9
                  sh           s10, -10(tp)
                  lb           t2, 15(tp)
                  lbu          s6, -1(tp)
                  lbu          s11, 6(tp)
                  sra          a1, a5, a0
                  andi         t6, a7, -622
                  sb           t2, -6(tp)
                  slli         a0, s5, 1
                  srl          s11, s0, t5
                  and          t1, tp, s6
                  add          ra, t2, s11
                  sb           sp, 14(tp) #end riscv_load_store_rand_instr_stream_2
                  beq          a5, a0, 2f
                  srl          s9, tp, s7
2:                srli         s2, a4, 24
                  xori         ra, t4, 1582
                  srl          a4, s6, s10
                  srl          ra, s7, a6
                  bgeu         a2, s5, 7f
7:                slt          a3, s11, a2
                  srl          tp, a0, t5
                  and          a4, s6, s11
                  sra          t0, t5, zero
                  auipc        s5, 93668
                  bltu         s1, t0, 16f
                  bgeu         gp, a1, 23f
                  bltu         ra, a6, 26f
                  beq          a2, a0, 32f
16:               xori         t3, ra, 342
                  srli         t6, s3, 17
                  slti         s5, t6, 836
                  slt          t6, s3, t1
                  sltiu        s3, a0, -745
                  bne          t2, t1, 23f
                  srli         s9, a0, 7
23:               andi         s11, s5, -692
                  auipc        sp, 370751
                  add          s9, gp, a7
26:               srai         t1, s10, 14
                  bge          zero, gp, 35f
                  sltu         gp, sp, t6
                  sra          gp, s2, s5
                  xor          t5, s6, s4
                  slti         t5, zero, -1965
32:               blt          s7, t1, 42f
                  bltu         t5, t2, 34f
34:               xori         a0, s5, 739
35:               sll          t6, a7, a5
                  sltiu        s3, t6, 1811
                  blt          a6, s5, 38f
38:               and          t5, s1, t0
                  lui          s11, 960717
                  bltu         a5, a6, 59f
                  sra          s9, s0, ra
42:               or           s11, t5, s0
                  bltu         t2, t4, 50f
                  blt          s8, s0, 64f
                  nop
                  slt          s6, a4, ra
                  beq          tp, s8, 61f
                  srl          sp, a4, s4
                  sub          tp, a1, t2
50:               auipc        a7, 349056
                  and          s6, tp, s9
                  auipc        s1, 783345
                  xor          tp, s0, tp
                  sra          t2, gp, a5
                  nop
                  and          zero, tp, t2
                  auipc        gp, 306081
                  lui          s4, 252224
59:               blt          s9, t4, 62f
                  bge          s4, a7, 69f
61:               sra          s1, a7, s5
62:               slt          t6, a2, ra
                  andi         a1, s4, -604
64:               beq          s9, t2, 74f
                  srl          s1, zero, s7
                  blt          t2, a3, 80f
                  bge          ra, s2, 84f
                  bne          t2, a2, 87f
69:               srai         a0, s1, 12
                  andi         t3, ra, 1132
                  bgeu         s4, a5, 87f
                  and          zero, gp, tp
                  bne          s1, s6, 80f
74:               auipc        s5, 629250
                  blt          t1, sp, 93f
                  srl          s9, s2, a6
                  andi         a6, a1, 453
                  slt          s6, tp, gp
                  bne          a0, s4, 83f
80:               blt          a1, s1, 89f
                  andi         s6, a0, -404
                  sltu         t1, t1, t2
83:               sll          s3, tp, t0
84:               or           ra, s11, s10
                  sltu         s1, a6, ra
                  sra          a4, tp, s6
87:               sub          s3, tp, s3
                  srl          a7, a1, gp
89:               or           s11, a5, tp
                  addi         s2, t1, 5
                  sll          t0, s7, a3
                  sltiu        s6, a6, -122
93:               and          s5, a4, a2
                  blt          s3, s2, 112f
                  xori         s10, a5, 708
                  sltiu        t0, s0, -1118
                  slli         a6, a4, 27
                  bge          s5, a2, 101f
                  blt          t1, a4, 118f
                  ori          tp, a7, -1977
101:              sub          t2, tp, s2
                  bge          s4, s10, 118f
                  slli         t6, s3, 30
                  add          t3, s3, sp
                  bne          tp, s9, 123f
                  auipc        s3, 94634
                  beq          t1, s8, 126f
                  auipc        t6, 821689
                  bge          s10, s8, 126f
                  xori         s1, s8, -635
                  sll          a3, sp, a7
112:              bltu         gp, s6, 119f
                  slti         tp, s8, -1992
                  lui          a4, 290430
                  sll          s2, s1, a1
                  bge          a1, a6, 118f
                  bne          s7, t3, 121f
118:              sltu         a3, a0, a1
119:              slli         a4, gp, 27
                  auipc        gp, 844345
121:              srli         a1, tp, 12
                  sltiu        s4, s8, 1788
123:              and          t3, s10, gp
                  sub          t3, s4, a0
                  srli         a1, t6, 2
126:              sll          s4, a7, s2
                  slti         s6, s5, 586
                  auipc        a2, 650776
                  slt          s5, a3, t1
                  blt          a2, sp, 139f
                  slt          s4, s6, zero
                  xori         a2, s2, -2037
                  sra          a3, s2, a6
                  sltiu        s9, s1, -2029
                  bne          s10, t0, 145f
                  andi         t1, t1, -1207
                  slli         a1, t5, 18
                  sll          gp, s8, s10
139:              srli         a6, t5, 17
                  ori          a1, a1, 1874
                  nop
                  lui          s6, 1022897
                  slt          t2, a0, tp
                  lui          s6, 876896
145:              addi         a0, tp, -2003
                  bge          sp, s3, 150f
                  addi         s1, tp, 1727
                  sra          s10, t4, s8
                  xor          s2, s4, s11
                  srl          a6, t5, s2
                  la           ra, sub_1
                  slti         a2, s11, 905
                  addi         ra, ra, 318
                  srl          a4, tp, s0
                  and          s10, a3, a1
                  addi         s9, t0, -1407
                  add          gp, tp, s5
main_j1:          jalr         t5, ra, -318 #jump main -> sub_1
                  srli         a4, t1, 28
150:              or           gp, a0, s11
                  addi         sp, ra, 275
                  and          t3, s7, t3
                  add          sp, s10, t6
                  and          s10, s6, a1
                  lui          s2, 652541
                  auipc        s10, 692203
                  srl          t5, s10, t5
                  sltiu        s9, s9, 1601
                  bge          s4, t0, 177f
                  or           a3, gp, s2
                  and          zero, s2, s11
                  bgeu         tp, a2, 163f
163:              slli         t3, s2, 1
                  lui          a2, 409534
                  slt          ra, a5, s8
                  sltu         s8, a6, sp
                  slti         s7, s3, -296
                  ori          t6, gp, 329
                  nop
                  nop
                  srl          s4, a4, s10
                  sub          s5, gp, s2
                  blt          a2, s11, 176f
                  bge          t3, a7, 177f
                  nop
176:              sltiu        s2, s7, 1814
177:              sltu         s9, a2, s10
                  sltiu        ra, zero, -579
                  blt          s6, a1, 180f
180:              sltu         a4, s5, s5
                  sltu         a7, s1, ra
                  or           t5, sp, t2
                  srl          s9, ra, a3
                  sltu         s7, s2, s1
                  addi         ra, a0, -218
                  xori         s9, a1, 197
                  nop
                  sra          t5, t4, t6
                  and          s5, s6, sp
                  srl          a6, t3, s6
                  srl          a1, ra, t2
                  srl          a2, s5, s7
                  sll          s5, s6, t1
                  andi         s4, s9, -30
                  slti         ra, a5, -1364
                  auipc        a0, 223090
                  srl          tp, s4, t1
                  bltu         sp, zero, 208f
                  srai         sp, a7, 4
                  beq          s0, s2, 216f
                  andi         t5, zero, 1600
                  sll          s9, tp, t4
                  slti         s7, s10, -310
                  or           s11, s7, zero
                  sltiu        tp, s3, 1909
                  srli         t2, sp, 6
                  srai         ra, ra, 15
208:              add          t2, t6, s3
                  xori         zero, s3, -1750
                  or           t2, t0, s1
                  slti         s11, a0, 1583
                  nop
                  srli         a4, t2, 23
                  srl          a7, s7, gp
                  beq          t1, a4, 216f
216:              blt          s9, a0, 226f
                  addi         zero, a4, 1442
                  sll          s11, s2, t2
                  and          zero, zero, s2
                  lui          sp, 147620
                  beq          s6, a7, 230f
                  sltiu        ra, a7, -1307
                  xor          a3, a2, s11
                  bge          zero, sp, 243f
                  bltu         s8, t0, 227f
226:              bgeu         s7, a4, 240f
227:              sltiu        t5, s4, -433
                  srl          s10, tp, s4
                  addi         s2, a3, 1389
230:              nop
                  lui          s1, 220215
                  blt          t0, s11, 246f
                  xori         t1, a4, 1327
                  blt          a5, a6, 254f
                  sub          a0, a2, s6
                  srai         t6, ra, 21
                  xor          a0, gp, a0
                  ori          s11, ra, 25
                  sra          t6, sp, s3
240:              beq          t2, s4, 248f
                  slt          t2, gp, zero
                  slti         a3, s2, 945
243:              srli         a4, a7, 15
                  slti         gp, s5, -1735
                  sra          a4, a3, s7
246:              sltu         a2, t6, s0
                  bne          s9, sp, 259f
248:              and          t1, ra, t3
                  srli         a4, sp, 27
                  bltu         t3, t6, 269f
                  blt          s0, t4, 258f
                  nop
                  blt          gp, t2, 270f
254:              slli         a6, t1, 28
                  blt          s0, a7, 271f
                  or           ra, a0, a6
                  sltu         a4, s7, t6
258:              and          s10, a7, a2
259:              ori          t5, zero, -56
                  bne          a1, a4, 279f
                  beq          a1, s2, 262f
262:              sltiu        s8, t0, 41
                  slt          s7, a2, a0
                  and          t1, s2, t2
                  srai         s9, a2, 23
                  bne          gp, gp, 285f
                  ori          t2, a4, 1502
                  sra          a0, s10, t2
269:              srl          s8, a0, a3
270:              sub          s8, a3, a6
271:              sub          sp, s6, s8
                  sra          t6, a1, t2
                  beq          sp, t2, 282f
                  and          a1, s1, s8
                  bgeu         a0, s1, 289f
                  blt          s9, gp, 288f
                  sub          s9, sp, sp
                  sra          t5, s6, s4
279:              nop
                  slli         zero, t0, 20
                  bge          s0, a6, 282f
282:              or           t5, s3, t0
                  sltiu        gp, a4, 263
                  beq          s9, t3, 285f
285:              lui          t3, 182777
                  and          t2, s7, s5
                  slti         s10, zero, -397
288:              blt          t2, zero, 306f
289:              add          a4, t0, s4
                  and          t3, gp, sp
                  sra          a6, a2, sp
                  slti         t0, s4, 1839
                  srli         s4, t1, 22
                  slli         s4, a2, 12
                  auipc        t3, 650572
                  or           t3, a1, s2
                  slti         t5, t6, -224
                  xori         zero, gp, 1631
                  srli         s6, tp, 11
                  sub          s3, t4, s5
                  srli         s9, s9, 5
                  beq          gp, s4, 318f
                  ori          sp, a2, 1868
                  xori         s2, s4, 560
                  srli         s8, tp, 15
306:              sltiu        s8, t4, 126
                  blt          tp, t3, 311f
                  and          ra, t3, s4
                  auipc        s10, 746914
                  beq          tp, a5, 317f
311:              or           gp, a7, s4
                  bne          s0, t6, 322f
                  bltu         a7, a3, 316f
                  slti         ra, s1, 137
                  sub          s8, s0, s10
316:              xor          t0, tp, t4
317:              bltu         s11, s4, 327f
318:              sltu         s6, t3, s2
                  lui          s3, 424321
                  xori         a2, a5, -1527
                  sub          s2, gp, a6
322:              srli         a3, s0, 21
                  bge          t4, t2, 330f
                  sll          zero, a5, s11
                  xori         s6, a5, -445
                  srli         s5, t4, 16
327:              sltu         a2, t4, sp
                  srli         s7, t6, 28
                  add          tp, t0, a2
                  sltiu        zero, s10, 1696
                  la           a4, sub_3
                  srli         s1, a4, 26
                  srai         s1, s2, 21
                  addi         a4, a4, 115
                  nop
                  andi         t1, s10, -1515
                  and          zero, sp, sp
main_j2:          jalr         t5, a4, -115 #jump main -> sub_3
330:              srl          a2, s9, t4
                  sra          t2, t3, t3
                  andi         s8, s6, 1879
                  addi         s4, zero, -518
                  or           s7, sp, zero
                  nop
                  srai         t5, s6, 11
                  srai         s2, a7, 20
                  slli         t5, zero, 6
                  lui          a6, 98412
                  and          a6, t2, a2
                  slti         s2, s11, -1926
                  beq          s0, t0, 362f
                  addi         t1, a5, 1576
                  auipc        t2, 119960
                  ori          s1, a3, -1087
                  lui          t5, 207475
                  ori          a4, s3, 1637
                  ori          a2, s11, -1647
                  xori         s6, a6, 1716
                  or           a6, t0, ra
                  srl          a2, t4, s3
                  beq          s9, a6, 368f
                  auipc        s5, 380436
                  slli         a4, gp, 10
                  blt          s11, t2, 363f
                  xor          a0, s11, s11
                  and          s10, s4, a6
                  beq          s2, t2, 360f
                  nop
360:              sltu         gp, s3, s1
                  slli         sp, a7, 2
362:              auipc        a0, 955996
363:              xori         a4, sp, -1628
                  sub          s9, t1, a2
                  beq          t1, t1, 384f
                  sra          s5, t4, a4
                  bltu         a1, ra, 370f
368:              sltiu        gp, s3, 1870
                  slli         s8, tp, 16
370:              srli         sp, s0, 30
                  xori         s10, t2, 1796
                  sltu         a4, t2, t6
                  slt          s2, s7, a4
                  slli         a0, t1, 26
                  slti         s5, a0, 762
                  or           s8, a7, s9
                  srai         s9, s2, 8
                  ori          s3, a4, 659
                  andi         t3, t3, -1359
                  auipc        s10, 935921
                  srai         t5, s5, 29
                  lui          t1, 580355
                  ori          t2, t0, 324
384:              andi         t1, s3, 719
                  bge          s1, t2, 403f
                  srai         a1, t6, 30
                  slti         s5, t2, 845
                  bgeu         s3, a2, 397f
                  and          a2, a7, gp
                  auipc        t5, 806151
                  beq          a4, a7, 395f
                  addi         a4, a7, -1028
                  sub          a2, a0, a5
                  or           s2, s9, t0
395:              slt          s6, t2, sp
                  blt          sp, t4, 410f
397:              ori          s5, gp, -685
                  andi         t3, tp, 359
                  la           a7, region_1+1553 #start riscv_load_store_rand_instr_stream_1
                  sb           s4, 222(a7)
                  srli         t5, ra, 26
                  slti         t3, a4, -1709
                  srli         t3, t4, 16
                  ori          a3, s6, -1698
                  sltiu        a0, t0, 1456
                  srl          s3, s4, s9
                  srai         t0, a5, 12
                  sb           s5, -227(a7)
                  lbu          a1, -164(a7)
                  nop
                  srli         s3, a7, 17
                  lh           a0, -155(a7)
                  lhu          t1, 135(a7)
                  lui          s3, 484028
                  sltu         t5, s2, s5
                  sll          s4, tp, s4
                  lhu          s3, 17(a7)
                  sh           s2, -13(a7)
                  xor          t6, s1, s6
                  lh           t5, 77(a7)
                  xori         t6, s5, 123
                  lh           s9, 249(a7)
                  sb           sp, -183(a7)
                  sra          s6, a3, a1
                  lb           t1, 194(a7)
                  srl          s4, s3, t1
                  sra          sp, a2, a7
                  xor          t6, t4, a0
                  lbu          s8, 91(a7)
                  lbu          s8, 48(a7)
                  xor          t3, s8, t3
                  sb           s6, 150(a7)
                  sb           s0, 102(a7)
                  lui          gp, 192458
                  xor          tp, s7, s1
                  lbu          s1, 84(a7)
                  lbu          s9, 59(a7)
                  sra          a3, s2, s7
                  lbu          t0, 233(a7)
                  sh           s2, 15(a7) #end riscv_load_store_rand_instr_stream_1
                  slt          ra, zero, t6
                  bltu         a7, t0, 402f
                  sra          a3, s11, s1
402:              xor          tp, t0, s9
403:              srl          a3, a3, s3
                  and          t5, a1, a0
                  bge          s10, a2, 422f
                  addi         zero, a1, -1110
                  slti         a7, a0, -1408
                  sub          a6, s9, s6
                  xori         s5, s11, 1734
410:              blt          s9, s7, 420f
                  sll          ra, s5, s11
                  sub          zero, s5, a3
                  slt          a2, s3, t5
                  slti         t3, a2, -1554
                  xori         s2, a7, 751
                  bgeu         a4, gp, 433f
                  slti         s10, a1, -566
                  srl          t0, a1, gp
                  sll          a6, a3, a6
420:              auipc        t5, 102584
                  bltu         tp, a2, 437f
422:              beq          s11, s2, 430f
                  andi         s1, s9, -246
                  slti         s11, t4, 1159
                  andi         s6, a1, 872
                  sll          t1, t1, tp
                  srli         s7, tp, 21
                  nop
                  bltu         zero, a6, 446f
430:              blt          s2, s3, 431f
431:              add          s4, a4, zero
                  srai         s2, a4, 19
433:              bge          a7, t0, 451f
                  sltiu        a4, a4, -177
                  slti         tp, t5, 119
                  srai         t5, t1, 8
437:              sub          a1, s4, s7
                  add          a0, sp, t2
                  ori          s6, tp, -345
                  xor          t2, sp, t5
                  sub          a7, s6, gp
                  nop
                  srl          t3, tp, a1
                  sub          s4, t2, t1
                  auipc        tp, 204710
446:              or           sp, a6, s3
                  bgeu         t1, a0, 450f
                  nop
                  srli         s3, sp, 31
450:              bgeu         s1, a0, 453f
451:              sltu         ra, s8, zero
                  andi         t6, s5, -758
453:              sltu         s10, s11, t0
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           sra          s2, a2, s6
                  addi         t4, t4, -32
                  nop
                  ori          tp, s0, 677
                  sw           t5, 4(t4)
                  slt          s9, a6, s10
                  andi         s6, a0, 1806
                  sltu         s5, sp, a7
                  slti         t0, s4, 1025
                  srai         a3, a0, 0
                  sra          a7, s10, a0
                  lui          s8, 192157
                  sra          a4, t2, a5
                  srl          a0, s5, s2
                  la           sp, region_0+1535 #start riscv_load_store_rand_instr_stream_0
                  add          s9, s0, a5
                  sb           t4, -6(sp)
                  sltiu        a1, a6, -1670
                  lh           gp, 11(sp)
                  lb           ra, 8(sp)
                  lh           s3, -9(sp)
                  lui          ra, 782686
                  sh           a4, -5(sp)
                  xori         t1, s3, -545
                  srai         s11, t4, 28
                  xori         a2, ra, -480
                  lbu          s7, -4(sp)
                  slli         s1, s1, 30
                  sra          s1, sp, tp
                  lb           s8, -2(sp)
                  sltu         s3, s5, s6
                  lb           a2, -6(sp)
                  and          s6, a6, a7
                  addi         s11, ra, -582
                  slt          tp, t3, s7
                  sb           zero, -8(sp)
                  and          s9, sp, a2
                  lh           t6, -15(sp)
                  lb           s9, 0(sp)
                  slli         ra, sp, 10
                  lbu          t1, -4(sp)
                  lh           a1, 15(sp)
                  sh           s2, 5(sp)
                  lb           a6, 1(sp)
                  sb           t2, 12(sp)
                  sll          a1, t5, s10
                  slt          s8, a7, a7
                  lb           a7, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  xori         a7, s8, -2043
                  auipc        s7, 474125
                  or           t3, a2, s6
                  sltu         a6, a3, t4
                  slli         s6, sp, 18
                  auipc        a2, 929272
                  addi         s10, s10, -762
                  sra          s10, t5, a3
                  sll          a4, t5, t2
                  auipc        s9, 932511
                  slt          s10, s8, tp
                  slti         s10, a6, -1229
                  slli         sp, gp, 1
                  slti         sp, tp, -1344
                  ori          s2, s6, -161
                  sra          tp, ra, t6
                  lui          s3, 234625
                  nop
                  bltu         t2, s9, 44f
                  bne          a7, t3, 37f
                  xori         t5, s1, 1545
                  srl          ra, t1, t5
                  nop
                  or           s8, a4, ra
                  andi         zero, a1, 1791
                  sltu         zero, t5, t6
                  bne          s5, s0, 41f
                  bltu         a7, s2, 38f
                  or           a2, s6, t2
                  add          ra, t5, s4
37:               slt          ra, t1, t1
38:               sub          t5, s2, t4
                  or           t3, a3, t0
                  bgeu         s11, a6, 42f
41:               sll          a1, t1, t2
42:               ori          gp, s2, 970
                  addi         a1, t6, -203
44:               sra          gp, t1, s0
                  sltu         s11, s5, t6
                  or           a1, a3, a2
                  beq          a3, s1, 56f
                  ori          s1, tp, -1426
                  sra          s2, s6, a4
                  beq          gp, a7, 62f
                  bltu         a3, s1, 66f
                  addi         a3, a5, -187
                  srl          ra, a3, a1
                  sltiu        zero, t1, -380
                  lui          t1, 312696
56:               sra          s5, s6, s1
                  bge          sp, s11, 62f
                  xori         s2, a4, 1607
                  beq          s2, a1, 69f
                  sll          s8, s6, t5
                  and          a7, a1, s4
62:               bge          s1, s2, 67f
                  nop
                  nop
                  or           sp, s1, t4
66:               lui          t3, 749565
67:               sra          a1, a5, s5
                  xor          s11, t2, ra
69:               and          tp, sp, ra
                  ori          a0, s7, -1766
                  sll          s1, a3, s8
                  andi         t0, s11, 598
                  bltu         gp, s8, 93f
                  slt          t1, zero, a7
                  add          a1, t2, s2
                  sltiu        t1, t6, 1488
                  and          s8, a4, gp
                  or           s10, s0, t0
                  blt          s8, s7, 83f
                  auipc        s2, 749904
                  sltiu        s2, a3, -915
                  xori         s1, a5, 1361
83:               blt          sp, a0, 99f
                  slt          gp, s11, t3
                  add          tp, s1, s8
                  bge          t6, s8, 91f
                  nop
                  slt          a3, s3, ra
                  auipc        gp, 491255
                  add          s8, sp, tp
91:               xor          a4, t0, gp
                  beq          a0, s9, 105f
93:               sltu         t5, a5, sp
                  or           s7, gp, s2
                  bge          a5, gp, 98f
                  sltiu        a3, a2, 1107
                  ori          a2, a3, 1091
98:               sll          a1, s0, s6
99:               auipc        s6, 77231
                  bge          a1, s9, 113f
                  or           s3, tp, a7
                  xor          s5, s11, a4
                  bne          s0, zero, 122f
                  slli         s5, a6, 9
105:              ori          t5, s0, 1027
                  or           a1, s0, a6
                  bge          a3, t0, 117f
                  slti         a0, s3, 903
                  ori          s5, a0, -424
                  sltiu        a2, tp, 55
                  sltiu        s10, t6, 1044
                  bge          s11, sp, 116f
113:              lui          s10, 511747
                  and          a4, t5, s2
                  or           s6, a0, t0
116:              xori         a4, s9, -1895
117:              bne          t5, t4, 124f
                  xori         a7, s9, -994
                  slli         sp, s7, 24
                  sltu         zero, s7, tp
                  ori          s5, a5, 560
122:              srl          s5, s3, a0
                  sltu         a0, ra, s1
124:              addi         t2, s6, 111
                  srl          t6, sp, a7
                  bge          gp, t5, 127f
127:              nop
                  andi         t6, t1, 1763
                  beq          a5, t6, 131f
                  bge          a7, s9, 131f
131:              beq          a1, s6, 149f
                  ori          s7, s9, -101
                  xor          ra, t1, sp
                  auipc        t6, 1032805
                  or           s11, s0, s9
                  lui          gp, 281656
                  blt          gp, s7, 138f
138:              sub          a1, t1, s11
                  slt          s5, a5, zero
                  xori         s6, s10, -1839
                  bltu         s5, ra, 149f
                  slli         sp, tp, 25
                  or           t5, s10, a6
                  bgeu         a7, ra, 149f
                  sltu         s1, s1, a4
                  slli         a0, s5, 20
                  or           s7, s6, t3
                  andi         s8, t1, -1964
149:              nop
                  lw           t5, 4(t4)
                  add          a7, s11, a7
                  sll          a6, s7, a2
                  addi         t4, t4, 32
                  addi         s5, zero, 925
196:              addi x28, x30, 1
196:              jalr x28, x28, 0
sub_7:            and          s6, t2, sp
                  bge          a6, a7, sub_7_stack_p
sub_7_stack_p:    addi         t4, t4, -8
                  sub          s5, s10, sp
                  sltu         s10, sp, a4
                  sub          s7, t0, sp
                  sra          a1, t2, a3
                  slti         a1, s5, 877
                  sw           t5, 4(t4)
                  sll          s4, t0, zero
                  lui          ra, 420907
                  xori         a4, s1, -1891
                  sltu         a7, sp, sp
                  bltu         t3, a4, 20f
                  and          tp, t5, a0
                  slli         s8, tp, 31
                  nop
                  ori          s9, s8, 1200
                  and          s2, a1, t5
                  xori         tp, s3, -1730
                  or           t2, t6, zero
                  auipc        gp, 108563
                  nop
                  addi         s11, a3, 1438
                  sra          t6, s4, t3
                  xori         s8, s8, -690
                  sltu         a0, a4, t6
                  and          a7, zero, gp
                  auipc        a4, 733567
                  slt          t3, zero, s7
                  xor          ra, s4, t3
                  bge          s11, t0, 29f
                  xori         a6, s7, -58
20:               blt          t1, t3, 39f
                  srli         s1, a2, 7
                  xori         s5, a1, -1080
                  sub          s7, s9, zero
                  lui          a1, 610918
                  addi         t0, s3, -1926
                  blt          sp, gp, 44f
                  bgeu         t6, a0, 39f
                  or           gp, a7, tp
29:               srl          s4, a2, a7
                  sltiu        s10, a5, 381
                  bge          ra, a3, 34f
                  sltiu        t5, s7, 563
                  bltu         t0, t0, 40f
34:               sra          s1, a0, s7
                  bgeu         s2, a0, 54f
                  bne          sp, s10, 49f
                  sltiu        s11, gp, -1056
                  ori          a2, s0, -1646
39:               add          t2, s6, a1
40:               xor          s6, a2, t4
                  lui          a4, 880936
                  la           sp, region_0+1496 #start riscv_load_store_rand_instr_stream_0
                  sh           a7, -42(sp)
                  lui          s5, 418510
                  sh           sp, -214(sp)
                  sb           t3, -78(sp)
                  lb           t0, -149(sp)
                  srli         s9, ra, 26
                  sb           t1, -55(sp)
                  lb           s9, -239(sp)
                  xor          a2, sp, a0
                  sb           a6, -15(sp)
                  xori         t6, a3, 1651
                  sw           gp, 160(sp)
                  sh           a4, 122(sp)
                  lh           zero, -196(sp)
                  lb           a0, 181(sp)
                  addi         s5, t1, -255
                  xor          a7, t3, tp
                  lbu          s2, 199(sp)
                  lw           s4, 180(sp)
                  lbu          s1, -107(sp)
                  ori          s8, t1, -1860
                  sb           s10, -153(sp)
                  sb           s7, 27(sp)
                  lb           t6, 147(sp)
                  and          zero, s9, t3
                  lb           s2, 115(sp)
                  sra          tp, t4, s6
                  lbu          t2, -97(sp)
                  sll          s6, s0, a0
                  lb           s4, 131(sp)
                  sh           s7, 86(sp)
                  srai         a7, s10, 27
                  nop
                  srai         s4, s10, 26
                  nop
                  addi         t6, s3, 1280
                  lh           s9, -118(sp)
                  andi         s8, ra, -787
                  lh           a3, -64(sp)
                  xor          zero, t4, t5
                  slli         a7, s0, 28
                  sw           s3, -236(sp)
                  lhu          tp, 234(sp)
                  lw           a3, -36(sp)
                  sb           s2, -82(sp) #end riscv_load_store_rand_instr_stream_0
                  add          t2, s8, zero
                  bgeu         ra, a3, 46f
44:               srai         a0, s4, 8
                  xor          a2, zero, s10
46:               and          t3, t5, s5
                  sltiu        s2, a6, 880
                  add          s3, s0, t1
49:               sll          a0, s4, t6
                  sra          sp, tp, s8
                  sra          s7, t4, s2
                  srai         t6, s2, 31
                  slli         s9, s3, 24
54:               sub          s4, a5, a2
                  sltiu        t0, a0, -1445
                  srli         tp, t6, 29
                  sub          a2, a5, a0
                  srli         s8, s1, 25
                  sltiu        s4, s9, 1936
                  xor          a3, t3, s3
                  andi         s4, a3, -1208
                  slti         a1, s6, 596
                  xor          t1, t4, ra
                  xor          t0, sp, t6
                  sra          a4, a0, s8
                  bltu         t3, a7, 78f
                  or           s6, tp, t5
                  xori         a4, s10, -1204
                  nop
                  lui          zero, 717571
                  add          s4, s5, zero
                  beq          s6, s10, 74f
                  sltu         a6, a3, t1
74:               xori         s4, t2, -1623
                  beq          s7, a6, 91f
                  or           t6, s8, t5
                  sub          a2, ra, s3
78:               lui          s6, 251030
                  blt          tp, a6, 97f
                  slti         s2, s5, -1982
                  sra          t6, s1, s2
                  and          s9, s0, s7
                  bge          t6, gp, 94f
                  bgeu         s2, a0, 96f
                  xor          a4, t2, a7
                  lui          s2, 459564
                  and          s10, s11, t1
                  addi         s2, tp, -1642
                  ori          s7, ra, 1371
                  and          t3, t6, sp
91:               sub          s10, s1, ra
                  add          a3, s3, t1
                  ori          t2, a6, -651
94:               or           sp, t0, a6
                  srai         s11, a7, 0
96:               auipc        zero, 138019
97:               sub          a4, a7, t2
                  slt          gp, a1, a2
                  xor          t5, a3, s3
                  sltiu        ra, s8, -1955
                  bne          sp, tp, 106f
                  add          a7, zero, s3
                  andi         t6, s6, 1434
                  ori          a4, s11, -1700
                  addi         t5, s1, 476
106:              lui          a7, 296047
                  xori         s1, t3, -261
                  or           t6, s2, gp
                  or           a7, s10, t3
                  slti         s9, a2, 918
                  blt          a2, tp, 117f
                  sub          t2, s6, t3
                  blt          s1, gp, 133f
                  blt          t3, t0, 122f
                  add          s5, s8, a4
                  beq          a0, t5, 120f
117:              srli         a6, s3, 14
                  blt          s0, s6, 137f
                  sub          t5, s10, sp
120:              nop
                  bgeu         t0, tp, 131f
122:              ori          ra, t1, 0
                  srl          a6, a5, a2
                  andi         s4, s5, -709
                  bge          s2, a7, 136f
                  nop
                  and          tp, t1, s6
                  sll          s10, t0, s9
                  nop
                  xor          a1, s2, a3
131:              sll          t5, sp, s6
                  xor          s11, s2, t6
133:              or           t5, a6, s7
                  slt          t0, tp, s3
                  sra          s1, s5, a3
136:              ori          t0, t0, 13
137:              sub          zero, s8, t6
                  slli         t5, t2, 11
                  nop
                  slti         gp, gp, 1387
                  bge          t6, a7, 142f
142:              slt          a2, s2, t2
                  ori          a4, a1, -1125
                  slli         a6, zero, 12
                  srli         s10, a0, 6
                  andi         t2, sp, 1937
                  bgeu         a7, a7, 154f
                  add          s3, s3, tp
                  lui          t3, 394472
                  andi         s2, s1, -2008
                  srl          a0, s7, s11
                  lui          a3, 1046306
                  bgeu         t3, a1, 154f
154:              srl          s2, s8, a5
                  sltu         t1, t6, tp
                  addi         s10, s9, -1589
                  and          s4, a7, t3
                  lw           t5, 4(t4)
                  slli         a2, s5, 15
                  addi         s2, s0, 1924
                  addi         t4, t4, 8
                  xori         s8, t1, -11
                  slli         s7, a0, 28
                  xori         a6, s2, 1127
224:              addi x31, x30, 0
224:              jalr x31, x31, 0
sub_4:            bge          a0, tp, sub_4_stack_p
                  andi         t0, s7, -1526
                  srai         t6, a0, 1
                  and          a0, t6, t0
sub_4_stack_p:    addi         t4, t4, -40
                  srl          t1, s2, s10
                  sltu         s7, t3, t3
                  add          ra, t5, tp
                  sw           t5, 4(t4)
                  slli         t0, s8, 19
                  sll          a4, a7, s4
                  lui          s9, 728739
                  srli         s4, a6, 18
                  la           s8, region_0+1210 #start riscv_load_store_rand_instr_stream_6
                  lbu          s2, 421(s8)
                  sll          t0, ra, s10
                  sh           a3, -918(s8)
                  sb           t4, 201(s8)
                  addi         a7, ra, -1690
                  lbu          sp, -1201(s8)
                  sub          gp, s11, s2
                  xor          gp, zero, s8
                  srai         t6, a0, 25
                  lbu          s11, 582(s8)
                  sltiu        s7, t2, 311
                  slti         a2, s9, 363
                  slt          s6, a2, s6
                  sb           s1, -21(s8)
                  slti         a0, tp, -1321
                  add          a3, zero, s0
                  lb           s6, -168(s8)
                  xori         ra, a0, 167
                  add          a0, t5, s3
                  lui          gp, 48702
                  lw           ra, -786(s8)
                  slt          a4, t1, t5
                  sra          a4, a5, s0
                  sh           s3, 354(s8)
                  or           s2, s6, t0
                  lb           a7, 447(s8)
                  nop
                  sll          ra, t1, s4
                  lhu          s4, -728(s8)
                  or           s10, t6, s10
                  sb           gp, 611(s8)
                  slti         a3, s4, -1316
                  sh           s1, -984(s8)
                  and          a3, a4, tp
                  add          a7, zero, a1
                  sb           s10, 479(s8)
                  slt          gp, s6, t4
                  sh           s6, -1122(s8)
                  lbu          s10, 698(s8)
                  or           t6, a0, t5
                  sll          s2, s3, t6
                  lb           s9, 2(s8) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_0+1979 #start riscv_load_store_rand_instr_stream_0
                  auipc        s1, 413059
                  lw           s4, -135(a1)
                  add          s5, t5, s9
                  sll          a6, ra, s6
                  xor          zero, a5, s3
                  addi         t3, a1, 1924
                  nop
                  sb           t4, -37(a1)
                  sb           t6, -150(a1)
                  ori          a4, t6, -504
                  sb           s5, -251(a1)
                  lui          gp, 363812
                  xori         t5, gp, 2030
                  sb           t3, -62(a1)
                  xor          a6, a5, a7
                  sltiu        s1, a2, 1372
                  lb           ra, -124(a1)
                  sub          sp, t6, a4
                  and          a4, s6, a3
                  sb           zero, -144(a1)
                  lbu          sp, -256(a1)
                  srl          t0, sp, a0
                  xori         t6, sp, -1866
                  lbu          s2, -85(a1)
                  sub          t3, a7, t6
                  addi         t5, s9, 1875
                  sub          s10, s10, t3
                  lb           s5, -35(a1)
                  addi         s2, a4, -25
                  slt          t3, a6, s4
                  lbu          s11, -179(a1)
                  xor          a3, tp, s2
                  lbu          s5, -40(a1)
                  nop
                  sltu         s2, ra, s5
                  addi         gp, a6, -1173
                  slli         s8, gp, 9
                  lbu          a4, -184(a1)
                  sh           zero, 7(a1)
                  lh           a4, -145(a1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1129 #start riscv_load_store_rand_instr_stream_5
                  sb           t1, -580(sp)
                  andi         t6, s10, 1985
                  auipc        a7, 1007230
                  sw           s9, 83(sp)
                  xori         a4, a5, 112
                  sh           s8, -65(sp)
                  lh           t2, -733(sp)
                  lb           a6, 682(sp)
                  ori          t2, gp, 66
                  xor          t1, a1, tp
                  xori         a3, a3, -731
                  addi         t0, a6, 606
                  addi         s5, a4, -97
                  sw           tp, 647(sp)
                  lw           a4, -1101(sp)
                  lh           a7, -441(sp)
                  sw           s0, 179(sp)
                  lui          s9, 372602
                  lb           gp, -274(sp)
                  srl          t5, a2, a5
                  sub          s7, s5, s7
                  lb           a1, -866(sp)
                  srl          a7, t0, s2
                  srl          s2, s9, s8
                  lb           s9, 844(sp)
                  lhu          t2, -481(sp)
                  lb           t6, -738(sp)
                  sra          a3, s11, s11
                  lh           s10, -443(sp)
                  lbu          a7, 186(sp)
                  sb           t4, -244(sp)
                  andi         t2, a3, 267
                  sb           s2, 711(sp)
                  sb           a4, 245(sp)
                  andi         s10, s9, 1869
                  slti         t2, t3, 2025
                  lbu          t5, -241(sp)
                  lb           s5, 488(sp)
                  or           a6, s1, a3
                  sra          t2, s3, tp
                  lh           s5, 825(sp)
                  srai         s2, s10, 10
                  lbu          s9, 385(sp) #end riscv_load_store_rand_instr_stream_5
                  la           t0, region_0+433 #start riscv_load_store_rand_instr_stream_4
                  lbu          s7, 12(t0)
                  and          tp, a0, a3
                  sh           t1, 13(t0)
                  lui          t6, 499653
                  slt          gp, a6, s6
                  sw           a1, -9(t0)
                  sb           t3, -16(t0)
                  slti         s3, s7, -2039
                  sub          gp, s2, t3
                  sb           a6, -1(t0)
                  lbu          t5, 13(t0)
                  srl          ra, t5, a3
                  lhu          a4, -11(t0)
                  lw           a2, 11(t0)
                  sltu         s5, ra, s11
                  sh           a0, 13(t0)
                  sb           ra, 6(t0)
                  lhu          sp, 13(t0)
                  sub          s10, s1, t3
                  lbu          gp, 12(t0)
                  sb           s11, -16(t0)
                  lb           s2, -4(t0)
                  lbu          s9, 6(t0)
                  srl          a6, a5, sp
                  lhu          s2, 13(t0)
                  sub          a3, a7, t5
                  lb           ra, -2(t0)
                  sb           a5, -6(t0)
                  slti         s11, s0, 1156
                  sra          a1, t3, a4
                  lhu          s2, -3(t0)
                  sltiu        a1, t1, 1328
                  lb           sp, 16(t0)
                  addi         s1, t3, -1174
                  lhu          t3, 5(t0)
                  lb           a6, 16(t0)
                  lb           s9, -2(t0)
                  lui          t2, 242429
                  lbu          a3, 13(t0)
                  sb           sp, 8(t0) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1751 #start riscv_load_store_rand_instr_stream_1
                  lhu          t5, -17(sp)
                  sh           gp, 5(sp)
                  sb           a7, 0(sp)
                  addi         s1, s5, -1194
                  lb           t6, -10(sp)
                  sh           s0, -5(sp)
                  srai         tp, t3, 24
                  nop
                  nop
                  xori         s2, t6, -1561
                  lbu          s8, 6(sp)
                  lbu          t5, 16(sp)
                  slti         s1, zero, -514
                  srl          a4, a7, s8
                  sb           s5, 34(sp)
                  srl          t2, ra, a4
                  lbu          s6, 35(sp)
                  lui          t0, 901060
                  auipc        s8, 685501
                  srai         s1, s1, 5
                  lb           s7, 8(sp)
                  lh           a4, 55(sp)
                  addi         s4, s1, 757
                  lw           s1, 25(sp)
                  sub          a7, a7, s3
                  lbu          t0, 38(sp)
                  sb           a2, 50(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_0+1653 #start riscv_load_store_rand_instr_stream_3
                  slti         a6, t1, -1115
                  lb           sp, -994(t2)
                  lbu          gp, -1317(t2)
                  sb           s10, -930(t2)
                  slt          tp, s5, a1
                  lh           s1, -547(t2)
                  sub          t6, t5, s6
                  sh           s3, -397(t2)
                  ori          t1, s3, 983
                  andi         s4, tp, 1295
                  slti         s5, s8, 860
                  sh           zero, -1443(t2)
                  auipc        s11, 138123
                  lh           a6, -587(t2)
                  sra          a2, tp, s11
                  xori         t3, zero, -966
                  lbu          s6, -796(t2)
                  lb           sp, -1504(t2)
                  or           s3, s4, a7
                  srai         t1, a1, 8
                  slt          s4, s5, s6
                  lui          s9, 443969
                  lhu          a7, -1061(t2)
                  sh           s0, -1331(t2)
                  lb           a4, -1607(t2)
                  lb           a3, -563(t2)
                  lhu          a0, -245(t2)
                  lbu          t5, -458(t2)
                  lbu          a0, -1215(t2)
                  lhu          t6, 97(t2)
                  lh           a1, -575(t2)
                  sb           t1, 301(t2)
                  srli         s1, a4, 6
                  lbu          a0, -117(t2)
                  lw           s1, 303(t2)
                  lb           tp, 28(t2)
                  lb           s5, -1346(t2)
                  sb           t1, -896(t2)
                  sw           tp, -1473(t2)
                  lbu          t3, 178(t2)
                  nop
                  lbu          s1, -889(t2)
                  sub          t3, a4, ra
                  lbu          s10, -1333(t2) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_1+247 #start riscv_load_store_rand_instr_stream_7
                  sb           s5, 14(a6)
                  lb           s11, 13(a6)
                  ori          s10, s9, -219
                  lbu          a2, 16(a6)
                  slli         ra, s9, 14
                  lb           s6, -8(a6)
                  srl          s3, gp, s0
                  addi         s3, sp, 1889
                  lb           s5, 4(a6)
                  andi         a1, a3, 865
                  srai         s10, s11, 21
                  lbu          s5, -1(a6)
                  lh           tp, -9(a6)
                  nop
                  sll          ra, a6, tp
                  andi         s6, tp, -1407
                  lbu          s7, 4(a6)
                  ori          t5, a4, -417
                  lhu          t1, 9(a6)
                  lb           t6, 4(a6)
                  sb           s5, 14(a6)
                  ori          s8, sp, 1673
                  lb           s9, 6(a6)
                  srl          a3, s3, s0
                  add          t0, a7, s6
                  lui          s9, 309029
                  sra          a2, a2, t4
                  lw           tp, -3(a6)
                  and          t3, t3, tp
                  sh           s1, 15(a6)
                  auipc        t3, 764086
                  lw           t2, -3(a6)
                  slli         t2, s1, 1
                  lhu          sp, -5(a6)
                  slli         s10, a6, 27
                  ori          a2, s8, 491
                  lhu          s1, -13(a6)
                  sb           a4, 8(a6)
                  srai         t3, s7, 29
                  sb           a4, -15(a6)
                  sh           s9, 1(a6)
                  sltu         s2, s7, s9
                  lh           sp, -1(a6)
                  lhu          zero, -15(a6)
                  auipc        s9, 450423
                  sb           t6, 4(a6)
                  lbu          s11, 11(a6)
                  lbu          ra, -13(a6)
                  lbu          t5, 3(a6)
                  lbu          t0, 12(a6)
                  lbu          a7, -16(a6)
                  lb           s11, 11(a6)
                  lbu          gp, -14(a6) #end riscv_load_store_rand_instr_stream_7
                  srl          s1, s1, s9
                  sll          t1, s11, s9
                  ori          s5, s8, -449
                  or           s2, s4, s2
                  andi         ra, t0, -558
                  or           a7, ra, s7
                  bge          gp, tp, 23f
                  sltiu        s3, t5, -1561
                  srli         s9, a6, 11
                  beq          s5, a4, 10f
10:               sub          a7, s4, s7
                  nop
                  slli         a0, a2, 25
                  nop
                  bne          t1, zero, 18f
                  bgeu         t6, sp, 22f
                  blt          t4, a1, 20f
                  and          s1, ra, sp
18:               nop
                  auipc        tp, 231981
20:               sltiu        a7, s5, -720
                  srl          t6, zero, gp
22:               slt          s10, a3, a6
23:               sltiu        a1, s0, 212
                  lui          t6, 844956
                  bgeu         s10, t1, 44f
                  sra          s8, s11, s11
                  xori         t1, gp, -1712
                  lui          s1, 719828
                  srli         s9, a7, 4
                  lui          t3, 713373
                  add          t0, sp, s10
                  slti         a7, sp, -1579
                  sltu         s7, t4, t2
                  slti         s11, s7, -1386
                  slli         gp, s7, 23
                  blt          a7, t2, 46f
                  srli         s2, tp, 4
                  xori         s1, a5, 192
                  slt          t3, t5, t2
                  ori          a4, tp, -1180
                  sltiu        a0, t3, -1989
                  sltu         a0, t6, a5
                  beq          t3, zero, 53f
44:               nop
                  or           a3, tp, s4
46:               blt          s1, s11, 65f
                  srl          ra, t1, t2
                  add          s1, t5, a2
                  bne          t3, s10, 51f
                  srli         s9, s10, 30
51:               and          s9, s2, s3
                  sll          s9, t1, sp
53:               or           a2, sp, t3
                  srl          s5, a7, s11
                  sltu         s8, ra, t0
                  srli         sp, t6, 1
                  or           t6, t5, a3
                  sltiu        s8, a2, -1153
                  bge          a3, a0, 73f
                  bne          s6, a0, 69f
                  addi         a1, zero, 1018
                  beq          a3, a6, 79f
                  sltu         zero, t4, a2
                  bltu         s10, s4, 73f
65:               slt          s5, gp, a0
                  nop
                  xori         s10, t3, 1184
                  slli         s5, sp, 27
69:               and          s4, s5, s1
                  xori         s9, t3, -1418
                  ori          sp, s0, -503
                  sltiu        sp, s4, -596
73:               xor          s1, s9, ra
                  slti         s4, a5, -1848
                  slti         gp, s7, 1496
                  blt          s7, s2, 94f
                  bltu         t4, a1, 81f
                  add          a0, ra, s11
79:               sltu         a6, s8, s9
                  add          t6, a3, s7
81:               or           s11, t5, tp
                  addi         s3, t6, 1533
                  addi         s2, s10, 30
                  slti         a0, tp, 578
                  slti         a7, s11, -123
                  sub          t5, a1, tp
                  bge          s11, zero, 92f
                  slli         s1, s1, 17
                  slli         a4, t2, 15
                  bltu         s3, s7, 106f
                  slti         t2, s8, 1424
92:               sra          s8, sp, s6
                  sll          ra, a2, s2
94:               slt          a0, t6, gp
                  nop
                  slt          a6, a0, zero
                  bltu         t6, sp, 103f
                  bgeu         s7, t2, 110f
                  lui          sp, 119638
                  auipc        t3, 527486
                  slli         s10, ra, 11
                  ori          s1, s1, 1084
103:              sltu         gp, a1, a5
                  slti         s8, tp, 392
                  srli         a7, s6, 14
106:              auipc        s10, 477685
                  blt          t1, ra, 109f
                  sub          s6, s0, s0
109:              xor          t0, a4, t0
110:              xori         s9, tp, 379
                  srai         a1, zero, 14
                  sltiu        s7, zero, 1212
                  xori         t0, t3, 1616
                  sltu         s4, t3, s9
                  bge          t1, a0, 135f
                  auipc        t1, 800953
                  slt          t5, s9, sp
                  bltu         ra, t6, 120f
                  lui          s10, 743062
120:              srl          t3, s5, t1
                  add          zero, a7, a4
                  srai         a2, a1, 9
                  bgeu         sp, s2, 142f
                  beq          a2, s10, 137f
                  add          a4, a0, a1
                  sll          s1, t6, s0
                  srli         ra, a2, 29
                  bne          a7, s7, 143f
                  auipc        ra, 657435
                  lui          s4, 413001
                  sub          s8, tp, a0
                  bge          s9, s10, 151f
                  slti         s6, t2, -109
                  srai         sp, s0, 26
135:              bgeu         sp, gp, 144f
                  andi         t5, t1, 694
137:              srl          a3, t4, a4
                  xori         s8, sp, -1014
                  sra          gp, t3, a3
                  sra          a3, a0, gp
                  sra          s11, a0, s0
142:              lui          s10, 974785
143:              sltiu        t5, gp, 269
144:              slli         t2, t4, 0
                  sltiu        s11, t5, -1930
                  xor          a3, s6, a6
                  lui          s11, 124917
                  xori         t5, s4, 403
                  srl          sp, sp, s6
                  srai         s3, sp, 14
151:              slt          a6, s1, s1
                  add          a3, t1, s11
                  add          s3, s8, a7
                  sub          ra, s11, s5
                  lui          ra, 133788
                  srl          a3, s7, a5
                  srl          t3, s4, t6
                  beq          a2, t0, 160f
                  andi         s8, a1, -1521
160:              slti         ra, t6, 1903
                  bge          s7, t2, 165f
                  sra          a7, a3, a0
                  bge          t6, s7, 173f
                  add          t6, ra, s9
165:              bne          t0, a7, 169f
                  auipc        a6, 247627
                  sll          s7, ra, s1
                  xori         t5, t4, 1587
169:              or           t1, sp, a7
                  srli         t6, tp, 23
                  srl          a1, sp, t0
                  andi         t0, t2, 553
173:              bge          a7, s0, 174f
174:              bne          s6, s3, 178f
                  nop
                  beq          s6, t2, 181f
                  srli         tp, a5, 14
178:              beq          t6, t1, 188f
                  ori          s7, zero, 1621
                  blt          s11, s8, 200f
181:              bltu         tp, a6, 183f
                  srli         s2, s5, 19
183:              slti         t1, s5, 2030
                  add          s8, t4, s5
                  bltu         s2, s9, 201f
                  or           s10, a5, a6
                  bge          a0, s5, 201f
188:              sub          a3, a1, s9
                  bgeu         gp, a7, 204f
                  srl          s11, s9, a5
                  beq          a4, a4, 210f
                  bltu         tp, a5, 194f
                  or           gp, zero, a0
194:              slt          t0, s2, t6
                  slli         t1, sp, 28
                  beq          zero, s3, 205f
                  sra          a4, a2, a4
                  slli         t6, s7, 30
                  srli         tp, s7, 23
200:              sra          s11, s6, t2
201:              addi         s10, t2, 1632
                  nop
                  sltiu        s8, t2, -1666
204:              and          s8, t6, a7
205:              nop
                  srli         tp, s4, 7
                  nop
                  slli         s8, a0, 24
                  bgeu         a3, s6, 228f
210:              sub          a1, t5, a6
                  slti         a4, a7, -1562
                  or           a6, s11, t5
                  blt          a4, a7, 220f
                  sra          s10, t1, t2
                  slti         s5, s1, -294
                  beq          t3, t1, 235f
                  xor          s3, s7, s7
                  addi         s4, s9, 672
                  sub          s4, gp, ra
220:              lui          a7, 342419
                  beq          a1, s2, 230f
                  sra          a6, t0, sp
                  addi         tp, s1, -320
                  ori          t6, s9, 1618
                  add          s8, a0, s5
                  sub          sp, s0, s3
                  sll          t3, sp, gp
228:              srli         t6, sp, 15
                  xori         t5, s7, -1667
230:              slti         s4, t4, 1562
                  add          a2, a3, s5
                  srli         s6, s0, 6
                  xor          s5, s4, s10
                  sll          s9, s0, a1
235:              bne          s10, tp, 237f
                  addi         s9, a4, 1528
237:              sra          t2, s10, ra
                  slli         a1, t2, 9
                  slli         s7, a5, 20
                  blt          tp, t0, 244f
                  xori         s4, a2, 570
                  and          s11, s6, s7
                  bne          s10, t5, 256f
244:              bge          tp, a1, 248f
                  bne          s6, a6, 262f
                  srai         t5, a7, 18
                  bge          s8, s5, 249f
248:              bne          s0, t1, 257f
249:              slt          s8, t1, t2
                  add          s7, s10, t5
                  xor          s2, s10, s2
                  addi         s6, t2, 1348
                  auipc        t0, 405198
                  add          s4, s6, t2
                  addi         ra, t1, 757
256:              blt          s2, ra, 273f
257:              sub          t3, t6, s5
                  srl          gp, a4, sp
                  andi         s10, a7, 104
                  bgeu         zero, s11, 272f
                  xor          gp, a7, t2
262:              sll          a2, a2, s3
                  addi         s6, s2, 387
                  ori          ra, s9, 1122
                  xori         zero, t2, 1725
                  or           t1, gp, a7
                  andi         s1, gp, -1033
                  xor          s11, gp, s0
                  or           s7, s10, s2
                  beq          sp, a0, 276f
                  lui          s11, 617072
272:              sltu         a3, s4, s0
273:              and          s5, s8, s10
                  slt          s3, s5, sp
                  beq          a1, t5, 293f
276:              beq          s9, t3, 295f
                  bltu         a2, s3, 294f
                  add          s4, t3, sp
                  beq          a6, a5, 296f
                  srl          s1, s3, a6
                  and          gp, zero, t3
                  sltiu        s6, a6, -1039
                  lui          zero, 534296
                  slli         s6, s1, 13
                  sra          t5, a5, a3
                  blt          s1, a3, 288f
                  sra          a2, t3, s9
288:              xori         a2, a0, -1810
                  or           zero, t4, a2
                  beq          sp, a4, 297f
                  lui          s11, 608443
                  xor          a4, t4, s3
293:              xori         sp, a4, -336
294:              slti         s10, s7, 551
295:              or           t6, a7, s0
296:              srai         t2, t0, 16
297:              blt          sp, s9, 301f
                  sll          a0, t4, s9
                  add          a0, t0, t6
                  bge          s8, a1, 302f
301:              lui          s3, 603206
302:              srli         t2, a6, 21
                  slt          a4, s8, s0
                  bge          s5, s1, 308f
                  sltiu        s7, s7, -1261
                  xor          t6, t4, s10
                  bltu         ra, a2, 312f
308:              bgeu         t0, s2, 310f
                  ori          s7, a4, 1274
310:              or           tp, s2, a0
                  sra          t3, zero, s1
312:              blt          s6, s0, 330f
                  srli         s6, s1, 13
                  slti         a7, a0, 1348
                  add          a0, gp, ra
                  srl          a6, zero, s0
                  nop
                  sltiu        s3, s3, 2043
                  ori          zero, t6, -1334
                  and          tp, s11, a1
                  auipc        a6, 30107
                  beq          tp, ra, 326f
                  bltu         s0, s11, 339f
                  beq          t5, t1, 328f
                  addi         a3, s5, -745
326:              or           t2, a0, s10
                  ori          s10, t5, -1196
328:              bne          s7, a1, 343f
                  blt          sp, t4, 339f
330:              sll          s7, t6, a1
                  auipc        t0, 226259
                  andi         s6, t3, -1937
                  sltiu        a6, a7, -376
                  srli         s10, t3, 20
                  and          s8, s7, a0
                  srli         a3, s0, 5
                  srl          a1, tp, gp
                  bltu         a1, s0, 357f
339:              andi         s5, s5, 1403
                  addi         t6, t4, -1795
                  auipc        s11, 228754
                  sltu         s1, a0, s11
343:              sll          s2, s5, s10
                  or           s1, gp, a4
                  blt          t2, s2, 357f
                  sub          t6, s2, a6
                  slli         s5, t1, 16
                  bltu         t2, s5, 361f
                  or           a6, t5, gp
                  srai         s2, a1, 22
                  bltu         a6, ra, 370f
                  sltu         zero, a5, a3
                  sll          t2, s10, ra
                  sll          a4, t1, tp
                  srai         s10, s1, 25
                  slti         t0, zero, -1909
357:              sltiu        a3, t0, 770
                  slli         a2, t0, 31
                  sltiu        s10, a3, -933
                  slti         t6, t2, -1412
361:              slli         a6, sp, 0
                  slti         t0, s10, -260
                  addi         a1, s8, -1298
                  and          a4, s3, a7
                  srli         a4, s8, 8
                  xori         s5, a4, -1779
                  nop
                  sll          t5, s4, a0
                  xori         s6, a6, -1102
370:              srai         tp, a3, 18
                  bltu         s2, t6, 380f
                  addi         sp, s4, 1138
                  bgeu         s8, t5, 392f
                  blt          a2, a6, 383f
                  and          t5, s0, s9
                  slt          gp, a0, a2
                  ori          s7, a1, 193
                  lui          s9, 801779
                  sltu         t3, s1, a7
380:              slli         s9, s9, 17
                  sra          t2, tp, s1
                  sltu         t5, sp, a7
383:              xori         t0, a2, 573
                  ori          s1, s4, -1825
                  sltu         s5, a3, t4
                  sra          ra, a2, gp
                  xori         t1, s4, 798
                  slli         s3, s9, 31
                  xori         a6, s3, -314
                  slli         a0, t0, 17
                  beq          s8, a7, 405f
392:              ori          s6, a5, 1920
                  lui          s1, 750373
                  bltu         t5, s8, 403f
                  bge          s1, ra, 396f
396:              addi         a4, a0, -815
                  srai         gp, s2, 15
                  bne          s4, s8, 408f
                  and          sp, t0, t2
                  sub          s9, a6, s0
                  bltu         s11, a4, 403f
                  slti         gp, s3, -186
403:              slti         s10, s7, 1037
                  srai         s5, s2, 30
405:              beq          s5, s0, 425f
                  slti         sp, tp, -1080
                  beq          s0, s2, 426f
408:              slti         a0, t6, -646
                  beq          s0, s10, 415f
                  bgeu         s7, s9, 416f
                  srli         a1, zero, 21
                  xori         a0, s10, 1719
                  srl          gp, a2, a6
                  auipc        s10, 936092
415:              lui          s4, 562892
416:              nop
                  sub          ra, s9, t5
                  slt          t1, s0, s1
                  and          sp, a1, a6
                  srli         zero, gp, 27
                  lui          t3, 634399
                  auipc        a7, 945134
                  add          t1, t0, a7
                  sra          t5, s10, t2
425:              slli         s10, tp, 7
426:              srli         a7, tp, 18
                  sltu         a6, sp, s1
                  ori          s9, s7, 953
                  sltu         s4, t0, s11
                  auipc        s2, 286949
                  ori          s3, a4, 1943
                  blt          s5, t1, 441f
                  beq          s2, a1, 443f
                  sra          a6, t6, t2
                  blt          t4, s2, 440f
                  sll          s11, a1, s7
                  addi         s7, s11, 407
                  ori          a2, s8, 517
                  lui          s9, 977962
440:              xori         a1, s9, -1401
441:              srl          s8, s9, s2
                  auipc        t3, 889534
443:              srai         a6, s3, 27
                  or           a2, tp, t2
                  blt          s11, ra, 447f
                  xor          t3, t4, s1
447:              slt          t2, t3, s1
                  slt          t5, a7, t4
                  andi         s7, s6, 1692
                  ori          a3, a3, -737
                  nop
                  nop
                  xor          s2, a1, a6
                  srl          s5, t6, s6
                  slt          s10, a7, t3
                  srai         gp, s2, 24
                  beq          s5, s2, 476f
                  slti         a7, t5, -546
                  srl          t0, s2, t0
                  srli         sp, t6, 22
                  sra          ra, s8, t5
                  addi         s5, gp, -585
                  sll          t1, sp, s11
                  blt          a5, s9, 466f
                  bgeu         s5, s9, 474f
466:              blt          s7, s3, 485f
                  sub          a1, gp, s5
                  bgeu         a0, zero, 469f
469:              andi         t5, s1, -1360
                  or           s11, s2, s2
                  xor          tp, tp, a2
                  slt          sp, t1, s6
                  bne          s1, a2, 483f
474:              auipc        a6, 340518
                  or           s11, a3, a5
476:              bge          a4, a7, 493f
                  sll          zero, s1, s1
                  bgeu         s8, a7, 487f
                  xor          sp, t3, s4
                  or           a1, zero, a6
                  srli         a3, s6, 7
                  sll          t0, t5, s10
483:              sltu         t6, s1, s8
                  bne          s9, a4, 502f
485:              sra          a2, t3, s0
                  add          s5, a7, s0
487:              slli         a7, t2, 18
                  sltiu        s11, a7, 1242
                  nop
                  srl          t6, ra, s2
                  bltu         gp, a4, 495f
                  bgeu         s8, s11, 511f
493:              srl          t5, zero, a0
                  sltu         ra, t1, a4
495:              nop
                  and          a0, zero, s0
                  or           ra, ra, tp
                  add          gp, gp, t2
                  bgeu         a3, a6, 514f
                  srli         a2, a7, 17
                  andi         s8, a5, 93
502:              blt          gp, s6, 504f
                  xori         s1, a1, 1441
504:              add          zero, a0, a1
                  and          t2, a6, tp
                  srli         a2, a5, 25
                  xori         s1, t6, 1949
                  srl          a7, s9, a3
                  lui          a3, 460098
                  slli         t3, t4, 15
511:              slt          a0, t2, a2
                  sltiu        t6, t1, 399
                  bltu         s7, s9, 532f
514:              and          t6, s10, ra
                  beq          t4, t4, 529f
                  sll          s4, s4, sp
                  sra          sp, a4, a2
                  lui          a0, 702644
                  xor          ra, t0, a2
                  xori         s10, s5, 77
                  bgeu         t4, s5, 537f
                  sll          a6, a1, s6
                  and          ra, s5, s2
                  or           zero, s1, s9
                  nop
                  slli         s1, zero, 30
                  andi         a1, ra, -826
                  addi         a6, s9, -581
529:              addi         a4, s5, 1242
                  srli         t0, a5, 13
                  bltu         t6, t3, 551f
532:              srli         s3, tp, 21
                  bge          s0, s8, 537f
                  beq          t5, sp, 547f
                  slli         s1, s4, 24
                  lui          a4, 695154
537:              lui          s6, 126775
                  srl          a4, a6, a6
                  sra          a2, a4, t4
                  add          a2, s9, sp
                  add          a6, s6, a1
                  slt          s6, t6, a1
                  bne          t4, t0, 550f
                  or           s2, t5, s2
                  srl          ra, a0, s10
                  andi         ra, sp, 352
547:              auipc        s9, 475912
                  sltiu        t1, a2, -293
                  sll          s9, a5, a7
550:              slli         t2, s2, 3
551:              or           zero, a7, s4
                  srai         a0, zero, 12
                  blt          t1, zero, 555f
                  bltu         t3, sp, 558f
555:              sltiu        t3, s0, -973
                  slt          a3, a7, t4
                  xor          sp, a4, ra
558:              xori         s1, s2, -1781
                  andi         t1, s11, -1044
                  sra          s5, t5, s7
                  or           a6, ra, s9
                  auipc        t2, 595659
                  auipc        s3, 698661
                  and          s8, a7, s6
                  nop
                  bgeu         ra, a4, 570f
                  slti         s11, a6, -1989
                  srli         s6, a1, 2
                  srai         a0, s2, 22
570:              andi         t6, a6, 1352
                  bgeu         s0, s11, 583f
                  lui          a3, 231412
                  addi         t1, ra, -1476
                  slli         s5, t1, 18
                  sra          a3, s2, s3
                  sltu         tp, a6, a5
                  srai         s4, gp, 16
                  addi         t0, gp, 937
                  or           sp, t5, s3
                  sra          s2, a3, s0
                  sll          a7, sp, s1
                  andi         t1, t4, -1400
583:              slli         t6, s8, 22
                  addi         sp, s5, -372
                  lui          t2, 56711
                  sltiu        t6, s8, -165
                  auipc        t2, 590722
                  ori          tp, s4, -124
                  slt          a1, ra, a6
                  add          s3, t3, a7
                  srli         a2, a2, 28
                  slt          a7, tp, s5
                  sll          sp, s8, a3
                  xori         s1, t1, 1922
                  nop
                  srl          a0, a0, t4
                  addi         a6, a4, 460
                  sub          t2, a6, a5
                  sltu         t2, s1, s5
                  xori         a4, a2, -1972
                  or           a7, s5, t2
                  bge          a2, t2, 619f
                  addi         t3, a2, -841
                  sltiu        s11, t5, -1294
                  or           a1, tp, s11
                  slli         s5, a3, 1
                  auipc        s1, 63183
                  bgeu         t1, a4, 610f
                  xori         s11, tp, -374
610:              sll          s9, t2, a1
                  slt          t0, zero, a7
                  auipc        a2, 391110
                  ori          a7, ra, 990
                  andi         ra, a0, 1896
                  slti         t2, s7, -1555
                  xori         t2, t5, 1998
                  slt          s9, t2, t4
                  srl          s1, s1, t6
619:              bltu         s5, a6, 628f
                  sltu         s10, t3, t3
                  bne          tp, a2, 625f
                  slt          s7, a3, gp
                  srai         sp, s2, 18
                  or           ra, t3, t3
625:              srai         s6, s10, 24
                  or           a3, gp, s4
                  add          a0, s11, a2
628:              srl          s1, a1, gp
                  sll          t0, s9, tp
                  blt          s0, a3, 639f
                  bgeu         t4, s2, 649f
                  srli         t1, s9, 9
                  sltiu        t6, s2, 2034
                  add          s2, s1, gp
                  sll          t0, zero, a6
                  beq          ra, s0, 646f
                  bne          s8, s6, 656f
                  addi         a7, t6, -219
639:              sra          s3, zero, s6
                  and          a0, s3, t0
                  lui          s2, 1043076
                  srl          s9, s1, s2
                  auipc        s7, 737748
                  or           s5, t3, t5
                  bltu         s5, t0, 647f
646:              bge          sp, a0, 648f
647:              bgeu         s8, tp, 667f
648:              or           t1, a4, s4
649:              slti         sp, s3, 647
                  sra          s3, a0, s11
                  slli         t3, s5, 12
                  srai         gp, s4, 3
                  srli         t0, a3, 29
                  blt          a7, s5, 671f
                  andi         a0, sp, -2009
656:              ori          zero, a3, 1971
                  srl          zero, s11, t1
                  beq          s11, s2, 660f
                  and          t2, tp, s7
660:              nop
                  beq          s2, s5, 680f
                  and          t5, t5, s2
                  xori         t6, s3, -763
                  bltu         sp, a5, 670f
                  xori         a3, s2, 907
                  xori         a6, zero, -1988
667:              xor          zero, s1, a5
                  blt          a1, s6, 673f
                  slti         s3, s6, 1055
670:              or           gp, t1, t2
671:              lui          t1, 240220
                  sra          a6, s10, a2
673:              slli         s11, a4, 14
                  sltiu        s5, s11, 1302
                  bgeu         t3, t6, 694f
                  or           s10, t3, a3
                  bltu         s2, s6, 694f
                  auipc        a7, 833007
                  slti         t1, s11, 367
680:              or           a6, s10, s0
                  bge          zero, a1, 695f
                  srl          zero, t2, a1
                  beq          a4, a4, 687f
                  nop
                  addi         s11, t4, 1019
                  beq          a4, a7, 695f
687:              xor          a7, a1, a6
                  ori          a2, a5, 1067
                  slti         s7, s10, -914
                  andi         t2, t3, 1603
                  beq          a0, s0, 706f
                  andi         a6, a7, -829
                  slt          s9, a5, tp
694:              bne          s9, s4, 710f
695:              nop
                  sra          ra, s1, s10
                  sll          ra, s1, s11
                  addi         t6, a1, 699
                  xor          a1, s4, t2
                  slti         zero, a6, 636
                  sll          s2, s0, s5
                  slli         zero, t2, 24
                  or           s5, gp, a0
                  slli         a6, s7, 4
                  slt          gp, zero, s8
706:              xori         s7, a3, -749
                  blt          s4, s6, 708f
708:              andi         a0, a2, -1136
                  blt          s1, a3, 719f
710:              srl          t2, t1, a0
                  addi         s3, s8, -1289
                  sltiu        s7, t4, 441
                  srl          t3, s3, t3
                  sra          t0, s11, t2
                  slti         s9, s5, -40
                  slli         s11, t5, 22
                  blt          s3, gp, 721f
                  slt          s8, s4, t1
719:              ori          a7, s11, -472
                  nop
721:              slti         t1, sp, -31
                  nop
                  srli         t1, a2, 4
                  nop
                  sll          a0, t3, t1
                  addi         s8, ra, -825
                  and          s4, t3, s1
                  bltu         s2, tp, 747f
                  srli         s10, s11, 28
                  add          sp, s11, t4
                  or           a1, a1, s1
                  bltu         t2, a6, 745f
                  srai         zero, t3, 26
                  bge          s9, a1, 746f
                  sll          gp, t1, a6
                  and          a6, t2, t3
                  xori         a1, t3, 450
                  add          s8, a1, s10
                  beq          s0, a4, 746f
                  slli         zero, t2, 27
                  xori         sp, s2, -768
                  auipc        a0, 890091
                  lui          t0, 715563
                  sltu         gp, a5, ra
745:              srl          t2, s3, s11
746:              sltu         a4, s11, s8
747:              sltiu        sp, s5, 978
                  addi         s9, a6, -2003
                  slt          t3, a5, a3
                  add          t2, s3, s5
                  xori         s7, s5, 2025
                  xor          t3, ra, t3
                  srai         a3, a0, 3
                  sll          gp, zero, a1
                  sll          tp, s9, s3
                  or           a4, a6, s10
                  or           a1, s8, t6
                  bne          s6, a3, 762f
                  xor          t6, s3, s8
                  and          a0, ra, s10
                  sltu         gp, a7, s0
762:              or           s1, zero, a7
                  add          t6, a4, s2
                  sra          ra, a6, a0
                  bgeu         t6, t1, 774f
                  xori         t2, s1, 1920
                  auipc        s10, 39097
                  add          a7, t3, sp
                  bge          s3, s11, 773f
                  bgeu         a1, ra, 789f
                  lui          s1, 314068
                  bgeu         s10, s9, 791f
773:              srl          s5, s2, a1
774:              sltiu        s2, tp, 495
                  slli         gp, gp, 2
                  auipc        t1, 546633
                  bne          s5, a5, 779f
                  ori          s10, t2, 220
779:              srli         s10, t1, 5
                  slti         s5, a2, 1103
                  andi         t1, a0, 260
                  blt          a7, s1, 784f
                  xori         a2, sp, 803
784:              ori          s1, t1, -1510
                  srl          s3, s11, s8
                  slti         s11, a0, -1978
                  bgeu         t3, s3, 807f
                  sub          a1, ra, s5
789:              nop
                  srl          sp, s6, a1
791:              nop
                  sra          s2, a3, a4
                  andi         a3, t4, -1000
                  ori          gp, s3, -717
                  sltu         tp, a4, t3
                  sll          t3, ra, zero
                  ori          s11, t3, 1797
                  srl          s11, a4, s8
                  sltu         a7, s7, t6
                  bgeu         s2, a0, 804f
                  srli         s3, s10, 6
                  and          s5, a4, t5
                  sll          s10, t1, t2
804:              nop
                  sltu         a2, a2, s1
                  bltu         a7, t1, 815f
807:              sltu         t3, gp, s2
                  nop
                  ori          ra, s2, 1414
                  sub          s11, s9, a1
                  slli         s3, a4, 18
                  blt          ra, t0, 816f
                  sra          s4, a2, s6
                  srli         s10, t1, 10
815:              bne          s10, sp, 822f
816:              auipc        s4, 768921
                  and          s3, s0, s2
                  add          s4, ra, a3
                  sub          t0, t0, gp
                  xori         a3, t5, -1168
                  bltu         s4, t4, 822f
822:              nop
                  addi         t6, tp, -105
                  nop
                  andi         s6, s2, 1093
                  srai         t0, ra, 28
                  slti         s6, tp, 1056
                  beq          gp, a1, 846f
                  bltu         s5, t3, 846f
                  xori         a7, a3, -1857
                  lui          a0, 820762
                  andi         s5, ra, 1792
                  sra          a0, a4, t1
                  andi         s11, s9, 1295
                  lui          t2, 207916
                  nop
                  auipc        a7, 361224
                  slli         t5, t1, 17
                  slti         tp, zero, 121
                  bgeu         a7, s6, 854f
                  srl          s1, s0, s5
                  blt          a4, a5, 847f
                  xori         s6, s7, -949
                  ori          t5, tp, -920
                  xori         s2, sp, -1542
846:              beq          s3, gp, 856f
847:              beq          s3, a0, 857f
                  srl          s8, s5, s0
                  slli         s9, ra, 14
                  ori          gp, s4, 206
                  sll          gp, a6, t1
                  or           tp, s3, a6
                  bltu         s4, s2, 866f
854:              sll          a2, gp, t1
                  beq          t2, t1, 870f
856:              srl          t3, s10, t4
857:              blt          s4, t5, 873f
                  slt          s9, a4, a7
                  xor          a6, s8, t1
                  bge          t3, tp, 866f
                  bne          t2, a6, 870f
                  blt          s6, t0, 864f
                  andi         s6, s9, 843
864:              srl          s8, zero, s11
                  addi         a4, s9, 472
866:              srli         tp, t2, 17
                  bne          s6, gp, 879f
                  slti         a6, a2, -1852
                  sub          s7, s3, a7
870:              sltu         t2, t6, sp
                  bltu         a1, tp, 890f
                  srai         a0, a7, 0
873:              sll          s8, s3, sp
                  bltu         sp, s0, 891f
                  bne          t1, a0, 879f
                  bne          t1, t5, 895f
                  srl          zero, gp, tp
                  ori          t2, a3, 971
879:              sra          s11, a0, s11
                  bltu         s2, s6, 882f
                  auipc        a4, 54885
882:              sll          s8, a6, t4
                  slt          a4, s8, sp
                  bne          a0, s3, 886f
                  andi         s3, s10, -1359
886:              nop
                  sltiu        s6, a5, 1608
                  ori          t6, t1, 1082
                  slli         zero, gp, 25
890:              beq          s10, t5, 899f
891:              or           s10, a7, t1
                  bne          t6, s10, 911f
                  slt          s3, tp, sp
                  srli         a1, t0, 4
895:              or           tp, a5, a7
                  sra          a2, s0, a5
                  bgeu         a1, s8, 917f
                  andi         a6, s9, 1638
899:              sra          t0, t5, a6
                  sll          a3, sp, a5
                  auipc        t1, 603939
                  lui          s6, 628619
                  bltu         s4, a4, 910f
                  ori          s1, s8, 1735
                  or           t0, s3, t6
                  sltiu        a0, ra, 1841
                  and          tp, t4, a2
                  addi         a0, zero, -955
                  addi         gp, gp, -1920
910:              srli         a3, s9, 12
911:              sltiu        s6, a4, 1871
                  and          gp, ra, a6
                  lui          s9, 166256
                  sub          s4, s3, a7
                  auipc        a7, 158992
                  slt          s3, a6, a0
917:              addi         t5, a1, 1895
                  bgeu         a0, s6, 927f
                  srai         ra, a7, 1
                  slli         a0, s2, 17
                  bne          t3, s4, 925f
                  srl          s1, gp, s7
                  andi         ra, s7, 566
                  auipc        t3, 138474
925:              sra          s2, s11, s3
                  beq          s9, s0, 936f
927:              sltiu        s6, t4, 1495
                  andi         t1, a4, -1977
                  or           a2, t4, s1
                  and          t2, s9, a1
                  blt          s6, zero, 937f
                  ori          t0, t1, 181
                  slli         t0, a5, 23
                  addi         gp, sp, -1560
                  bge          s11, t0, 937f
936:              bne          s0, sp, 948f
937:              andi         a0, s2, 485
                  xor          zero, zero, s4
                  add          s11, a6, a5
                  sll          tp, t6, s3
                  sub          a1, t5, s6
                  sltiu        sp, s11, 1180
                  ori          s4, s1, 168
                  bne          s2, a1, 958f
                  srli         s8, s0, 13
                  andi         t3, zero, -666
                  blt          a0, ra, 949f
948:              sll          gp, a5, sp
949:              srai         t1, tp, 19
                  bne          a4, s10, 969f
                  and          a6, a3, s8
                  slti         s9, a7, -267
                  sub          t5, a3, a0
                  blt          s0, t5, 973f
                  auipc        s11, 69524
                  andi         t6, t2, -1859
                  slti         a1, a2, 1500
958:              nop
                  xori         a2, s0, 775
                  addi         t0, s7, 1867
                  andi         s6, a3, 306
                  ori          ra, a1, -371
                  bltu         t0, s1, 982f
                  bne          s5, s6, 973f
                  beq          s2, t1, 983f
                  beq          t0, s1, 970f
                  srl          a1, s7, tp
                  blt          a1, s2, 970f
969:              lui          a3, 803954
970:              srl          zero, t3, s8
                  nop
                  xori         t2, t1, -542
973:              sltu         a7, s5, a3
                  andi         t1, s3, -754
                  ori          t0, s2, 1528
                  slli         a3, tp, 21
                  auipc        s9, 1021851
                  srai         a1, a3, 25
                  sll          t2, a6, s0
                  sltiu        a2, a1, -195
                  sll          t5, t5, s0
982:              addi         s11, s0, -1817
983:              slt          gp, s9, s3
                  bgeu         s11, tp, 988f
                  xori         zero, s11, -452
                  srl          t6, a3, a1
                  nop
988:              bne          s10, t0, 1001f
                  auipc        t6, 946388
                  addi         s11, zero, 904
                  auipc        a3, 778324
                  and          sp, s4, ra
                  nop
                  sll          tp, s1, a6
                  xor          a4, s1, zero
                  bne          a2, s5, 997f
997:              srl          s3, t2, s4
                  xori         sp, s5, 1748
                  xori         a0, t4, -865
                  ori          s7, t2, -304
1001:             srai         s3, a3, 9
                  and          s9, t4, t3
                  srai         t5, t2, 18
                  slli         a3, s8, 30
                  bltu         s5, a3, 1010f
                  sra          s11, t3, s5
                  bgeu         a4, s8, 1024f
                  and          a6, s2, s10
                  ori          a3, s10, -1099
1010:             sltiu        s3, a5, 1740
                  bne          s4, s10, 1027f
                  nop
                  sll          s6, a1, t5
                  sub          t3, s0, t6
                  andi         t6, s9, 1302
                  srli         s4, tp, 8
                  sra          zero, a3, s9
                  lui          s6, 330273
                  slli         t0, a3, 19
                  blt          sp, t1, 1030f
                  xor          a1, t4, s8
                  sltu         s9, t2, zero
                  slt          s11, s7, s6
1024:             sltu         s9, gp, s0
                  srli         t0, sp, 6
                  blt          t4, zero, 1041f
1027:             xori         ra, ra, -1843
                  sub          s9, s9, t3
                  bne          s4, s2, 1033f
1030:             slli         a2, zero, 26
                  sra          s5, s5, a4
                  and          t5, s10, s3
1033:             beq          t1, a7, 1050f
                  xori         a0, a7, 127
                  slti         tp, a5, -527
                  sub          sp, t3, s0
                  bne          s7, gp, 1047f
                  blt          s7, zero, 1056f
                  addi         t3, zero, -2019
                  beq          s10, t2, 1059f
1041:             beq          a3, gp, 1043f
                  lui          a6, 103695
1043:             sra          s2, tp, t6
                  sub          s7, gp, t2
                  srli         ra, a7, 13
                  addi         a3, t6, -1989
1047:             srai         s11, s8, 30
                  bgeu         s6, zero, 1050f
                  slti         a2, t4, -383
1050:             or           t1, t4, ra
                  slt          a4, s3, t6
                  bge          t6, zero, 1056f
                  srli         a1, s5, 22
                  beq          s11, a3, 1058f
                  and          t6, s4, t1
1056:             sub          a3, s1, t5
                  sltiu        ra, s3, 1720
1058:             addi         t5, s3, 1314
1059:             auipc        sp, 808324
                  srl          s7, ra, t5
                  sltiu        gp, a0, -625
                  addi         a6, s5, -1661
                  bne          a0, s10, 1068f
                  la           t5, region_1+1279 #start riscv_load_store_rand_instr_stream_2
                  lb           sp, -33(t5)
                  lb           s1, 36(t5)
                  sra          a0, a2, a3
                  lb           a2, -63(t5)
                  sltu         s2, s0, s11
                  lhu          t2, 49(t5)
                  andi         zero, ra, 440
                  ori          s2, t2, -589
                  lhu          s4, 21(t5)
                  srl          a4, s9, zero
                  lb           s2, -19(t5)
                  lw           s5, 57(t5)
                  lw           s2, 41(t5)
                  lbu          a6, 6(t5)
                  sb           a1, -34(t5)
                  sltu         a7, a2, s9
                  lw           sp, -27(t5)
                  lh           t3, -59(t5)
                  nop
                  lb           ra, -18(t5)
                  sub          t1, ra, t2
                  and          s6, a0, t6
                  auipc        s11, 586306
                  addi         a6, a0, 475
                  sub          zero, s5, s0
                  or           a0, s8, a4
                  lb           t0, 24(t5)
                  lh           zero, -29(t5)
                  sh           a7, -9(t5)
                  srl          a1, s2, s5
                  sb           a0, -35(t5)
                  lb           a1, -33(t5)
                  lbu          s5, -55(t5)
                  srai         s10, s7, 24
                  slli         s10, t5, 4
                  lhu          t1, -47(t5)
                  slti         a2, a3, 13
                  sh           t6, 31(t5)
                  nop
                  lb           gp, -48(t5)
                  sra          s1, a6, a6
                  slt          t1, t3, t2
                  srl          s4, t1, a5
                  lbu          t1, -24(t5)
                  lbu          s3, 57(t5)
                  lbu          s3, -56(t5)
                  lb           sp, 19(t5) #end riscv_load_store_rand_instr_stream_2
                  srl          a4, s5, s9
                  bge          a3, zero, 1068f
                  sltiu        a6, s1, -1787
                  sltu         s9, a6, zero
1068:             andi         a4, a6, 895
                  xor          a7, s2, a2
                  slti         s6, a6, -1752
                  lw           t5, 4(t4)
                  addi         t4, t4, 40
                  slt          tp, a7, s10
                  srai         t6, t5, 7
                  sll          s3, a4, t6
                  sltiu        s7, t5, 1303
                  xor          t2, a7, s2
                  srai         tp, t2, 17
                  ori          a4, ra, -100
1437:             addi x31, x30, 0
1437:             jalr x31, x31, 0
sub_8:            addi         a6, s1, -388
                  addi         t4, t4, -40
                  srl          ra, tp, s11
                  sw           t5, 4(t4)
                  slt          s3, zero, gp
                  la           s6, region_1+1066 #start riscv_load_store_rand_instr_stream_2
                  slli         tp, a3, 9
                  lb           s11, -76(s6)
                  nop
                  sub          a7, a0, a7
                  lh           s10, -38(s6)
                  lb           s11, 99(s6)
                  srli         gp, t3, 27
                  sra          a6, s5, a0
                  slt          s9, a0, a4
                  lui          s3, 985730
                  lb           s3, 133(s6)
                  slli         gp, a4, 29
                  xor          a4, a2, t5
                  add          a3, s0, s11
                  lh           ra, 96(s6)
                  or           t3, s1, gp
                  lw           t0, 254(s6)
                  lbu          s9, 17(s6)
                  lbu          s9, -193(s6)
                  lbu          a2, 209(s6)
                  srl          a4, s0, s5
                  lbu          s8, -98(s6)
                  lb           a4, -241(s6)
                  lb           s5, -193(s6)
                  lb           a0, -5(s6)
                  srli         a1, t5, 0
                  sh           s3, -184(s6) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1427 #start riscv_load_store_rand_instr_stream_5
                  lb           s8, -12(sp)
                  sb           a2, 8(sp)
                  lbu          s7, -8(sp)
                  lb           gp, 8(sp)
                  srl          t3, s1, a1
                  lbu          a7, -4(sp)
                  xor          s7, t4, s9
                  and          a4, s11, a7
                  sltu         s7, a2, t5
                  sb           a2, 5(sp)
                  lb           s1, -7(sp)
                  sh           a7, -5(sp)
                  slt          zero, s9, t0
                  slti         a0, s11, 110
                  nop
                  lb           s8, -9(sp)
                  srli         ra, s2, 9
                  lw           t1, -11(sp)
                  sb           s4, -3(sp)
                  sub          s3, t2, gp
                  lbu          a6, -2(sp)
                  add          t3, t5, a4
                  srai         a2, s2, 6
                  lbu          s11, 7(sp)
                  sb           s7, -8(sp)
                  lbu          s11, -14(sp)
                  xor          a3, s8, a1
                  lh           a4, 15(sp)
                  srli         s5, s0, 13
                  sh           zero, 15(sp)
                  lui          a0, 963543
                  lbu          zero, -3(sp)
                  add          t3, s3, s3
                  sb           t1, -6(sp)
                  lbu          gp, -6(sp)
                  lb           s8, -16(sp)
                  sh           s1, -3(sp)
                  addi         s2, s2, -149
                  sb           t6, -10(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s4, region_0+542 #start riscv_load_store_rand_instr_stream_0
                  sb           s0, 736(s4)
                  srl          s10, zero, s4
                  sub          a0, s3, s9
                  sltiu        s2, t0, 23
                  srli         a6, a0, 25
                  slli         sp, s8, 16
                  lb           a1, 549(s4)
                  sltu         s6, t3, zero
                  addi         t5, t4, -888
                  srai         s5, a7, 3
                  lh           a7, 1286(s4)
                  lb           t0, 74(s4)
                  lbu          a7, 291(s4)
                  lw           s1, 406(s4)
                  sh           s0, 1304(s4)
                  nop
                  slti         a6, a2, -272
                  sltu         t3, t2, a3
                  addi         t1, a3, 1965
                  lui          t2, 419204
                  slti         t0, zero, -895
                  lb           s6, -173(s4)
                  lw           a7, 1302(s4)
                  sw           s5, -362(s4)
                  lhu          s9, 178(s4)
                  addi         tp, s1, 2014
                  slti         t2, s6, -1012
                  lbu          t0, -277(s4)
                  xori         s6, a3, 231
                  lhu          t5, 226(s4)
                  srai         a3, a5, 1
                  sh           s3, 1384(s4)
                  xori         a2, s11, -698
                  sub          ra, t4, s3
                  lbu          ra, 789(s4)
                  slti         sp, s0, -1634
                  addi         t0, tp, -1324
                  auipc        t1, 178402
                  slt          s3, t3, s5
                  lb           s2, 79(s4)
                  sb           zero, -65(s4)
                  sh           a1, 38(s4)
                  sb           t6, -271(s4)
                  srl          t1, t5, t5
                  sw           s3, 638(s4)
                  sb           gp, 1377(s4)
                  sb           s1, -411(s4)
                  slli         s1, s3, 1
                  and          t6, s0, tp
                  srli         t0, t6, 31
                  slti         a3, a5, 1816
                  lui          s10, 995742
                  lhu          a0, 594(s4) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1778 #start riscv_load_store_rand_instr_stream_10
                  sra          t6, t2, s10
                  sb           t0, 39(a6)
                  srli         s9, s6, 21
                  auipc        a4, 194270
                  lb           a7, 57(a6)
                  sub          a4, a7, ra
                  slt          a0, s6, ra
                  lui          s1, 266592
                  lbu          zero, -4(a6)
                  lb           s8, 1(a6)
                  lbu          s4, -63(a6)
                  xori         s3, s11, -1744
                  lui          s8, 11463
                  sub          a0, tp, tp
                  addi         t5, s3, -1283
                  sltu         a0, s3, t4
                  add          a1, s8, a6
                  add          a4, s10, sp
                  sb           a1, 29(a6)
                  lbu          s2, 28(a6)
                  lui          s9, 368684
                  sb           a1, 63(a6)
                  sra          tp, gp, zero
                  lbu          a2, -32(a6)
                  sra          sp, a4, a7
                  sh           s1, 14(a6)
                  ori          s7, t6, 1271
                  sltiu        s4, s6, -233
                  or           s4, s10, s3
                  srli         sp, a4, 9
                  srli         s9, t3, 10
                  sll          t2, a3, t1
                  srai         t1, ra, 11
                  sra          t6, s6, s7
                  add          s9, a4, sp
                  lb           a4, 62(a6)
                  xori         s5, a0, -347
                  lui          t0, 139021
                  lh           s3, 28(a6) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1899 #start riscv_load_store_rand_instr_stream_6
                  add          zero, t3, sp
                  xor          a6, a6, t1
                  or           s5, zero, s0
                  xori         a7, a1, -657
                  sll          s4, a0, tp
                  addi         zero, s10, 991
                  sb           a7, -33(sp)
                  andi         a7, t3, -1124
                  lbu          t6, -58(sp)
                  ori          t0, t3, -18
                  srai         s6, tp, 28
                  lbu          a1, 50(sp)
                  lw           t1, 29(sp)
                  srli         a4, t4, 22
                  lbu          t1, 12(sp)
                  sltiu        t6, s10, 72
                  andi         s5, s2, -1106
                  nop
                  sb           a7, 18(sp)
                  addi         a1, s5, -1068
                  sb           a3, 60(sp)
                  lbu          ra, 14(sp)
                  sb           gp, -24(sp)
                  slli         gp, zero, 15
                  sltiu        t1, gp, 252
                  sra          a6, tp, a4
                  srli         a0, s6, 19
                  sb           t1, 62(sp)
                  sltiu        tp, a6, -1414
                  sub          t0, t5, s5
                  sltiu        s1, t5, -1862
                  lbu          a4, -64(sp)
                  lb           s10, -36(sp)
                  or           t0, ra, s4
                  andi         t0, a0, 280
                  and          s8, s7, s4
                  andi         s4, s6, -54
                  xori         a4, t3, 1518
                  lui          s4, 309370
                  srai         t1, t2, 12
                  sll          s4, tp, ra
                  lbu          t6, 40(sp)
                  sb           a7, 20(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s9, region_1+624 #start riscv_load_store_rand_instr_stream_9
                  sb           s3, 20(s9)
                  lbu          s2, 58(s9)
                  lhu          s1, 22(s9)
                  lbu          a6, -23(s9)
                  lb           t2, -22(s9)
                  sh           s5, -14(s9)
                  slli         a6, a1, 21
                  lbu          s6, -24(s9)
                  sh           s4, -20(s9)
                  lb           s8, -17(s9)
                  srl          s6, a6, a1
                  sb           s8, 14(s9)
                  lbu          a1, -49(s9)
                  sb           a1, 61(s9)
                  sb           a3, -7(s9)
                  xori         a2, a3, 183
                  lbu          t0, -13(s9)
                  lbu          s5, -9(s9)
                  sb           tp, 43(s9)
                  lui          a6, 516364
                  sh           t4, 48(s9)
                  slt          s7, t1, a3
                  lbu          a0, -13(s9)
                  and          ra, t5, s8
                  sltiu        sp, gp, 1675
                  sb           zero, -49(s9)
                  andi         s5, s1, 2003
                  auipc        a2, 149827
                  lbu          s4, 55(s9)
                  andi         a2, a6, 1156
                  xor          tp, t3, s8
                  lbu          s6, -29(s9)
                  slti         ra, ra, -1495
                  lbu          t2, -34(s9)
                  auipc        t6, 340728
                  slli         t5, gp, 5
                  sb           a3, 13(s9)
                  lb           s6, -49(s9) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_0+1728 #start riscv_load_store_rand_instr_stream_4
                  srli         s5, t3, 17
                  sb           t3, -649(sp)
                  lb           s1, -56(sp)
                  lb           s3, -531(sp)
                  lh           tp, -532(sp)
                  lb           a1, -1006(sp)
                  lb           s9, -218(sp)
                  lb           t2, -705(sp)
                  sll          a2, t3, s10
                  xor          a2, a5, a3
                  slt          s10, s8, tp
                  sltiu        t6, tp, 248
                  andi         a0, s8, 410
                  lb           s6, 50(sp)
                  slt          gp, s5, a7
                  lbu          a1, 71(sp)
                  sltiu        t2, s8, 1079
                  slli         t1, a6, 20
                  lh           gp, -1664(sp)
                  lbu          s2, -557(sp)
                  sltiu        s8, gp, 1070
                  and          t0, s1, s3
                  auipc        s8, 136130
                  lb           t1, 13(sp)
                  lb           t2, -917(sp)
                  lw           s1, -580(sp)
                  sltu         a7, t6, a0
                  lbu          t3, 113(sp)
                  lb           a4, -383(sp)
                  slt          a6, s10, t1
                  lhu          t2, -1188(sp)
                  srl          s1, a7, t3
                  slt          gp, a1, s9
                  lh           s2, -444(sp)
                  lbu          t2, -115(sp)
                  srli         s11, zero, 6
                  sb           a5, -1018(sp)
                  lui          a4, 543360
                  lhu          t0, -736(sp)
                  sw           t0, -752(sp)
                  sb           s5, -500(sp)
                  xor          gp, s10, s8
                  and          a3, a5, s6
                  ori          s1, zero, -1789
                  lbu          s6, -545(sp)
                  sb           s4, -733(sp)
                  srai         s8, a7, 30
                  lh           a4, -240(sp)
                  lbu          s3, -1513(sp)
                  sb           s8, 225(sp)
                  lb           t1, -949(sp)
                  lbu          t2, -1637(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+236 #start riscv_load_store_rand_instr_stream_3
                  lbu          a0, 1128(sp)
                  lh           zero, 958(sp)
                  slti         s8, s9, 1815
                  sh           s7, -174(sp)
                  ori          a2, zero, 1977
                  nop
                  lui          s6, 68682
                  lhu          ra, -222(sp)
                  srl          a2, a6, tp
                  srli         a2, tp, 31
                  slt          a2, t4, tp
                  lb           gp, 817(sp)
                  slt          t1, a6, t4
                  lh           s4, 564(sp)
                  ori          zero, t4, 1981
                  andi         s11, t6, 1897
                  xor          s4, a7, a5
                  lb           t3, -31(sp)
                  auipc        t1, 731115
                  lhu          t5, -202(sp)
                  slli         t5, s8, 22
                  lb           a6, 1534(sp)
                  sltiu        s11, sp, -1365
                  sra          a1, s0, t4
                  lb           t0, -199(sp)
                  lb           a2, 1335(sp)
                  slt          s6, a5, a0
                  lb           t5, -183(sp)
                  sub          s8, s9, s6
                  sh           s8, 1480(sp)
                  xor          s2, t1, tp
                  lb           a1, 1477(sp)
                  lbu          t1, 1191(sp)
                  sb           a1, 520(sp)
                  lbu          s4, 1162(sp)
                  lb           s5, 75(sp)
                  sb           t4, 779(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+347 #start riscv_load_store_rand_instr_stream_7
                  lhu          a4, 171(sp)
                  lbu          a2, 144(sp)
                  srl          a6, t6, s8
                  lw           s1, -15(sp)
                  nop
                  slli         a6, t2, 16
                  slt          s3, t6, t6
                  lw           s10, 45(sp)
                  sh           s8, -25(sp)
                  sb           tp, -226(sp)
                  sub          t3, s11, a7
                  lh           a6, 119(sp)
                  lhu          t5, 217(sp)
                  or           s7, s3, s3
                  sb           a1, 6(sp)
                  slti         s1, s6, -361
                  lh           s10, 11(sp)
                  sb           s5, -9(sp)
                  sltiu        s4, zero, 985
                  lb           a0, 204(sp)
                  srai         t2, s3, 7
                  sltu         t0, a7, a7
                  xori         a2, s11, 1139
                  or           a7, s9, a2
                  nop
                  xor          s6, t5, a5
                  sw           zero, 53(sp)
                  ori          s10, a0, 475
                  srli         s4, s8, 12
                  sra          s10, s0, sp
                  lbu          s3, 113(sp)
                  lui          s5, 1021347
                  srai         s10, a2, 10
                  lbu          s10, -130(sp)
                  lb           s3, -119(sp)
                  sh           s8, 149(sp)
                  srai         t1, s2, 1
                  sltu         a4, a5, s9
                  addi         ra, a0, 93
                  lb           s11, 34(sp)
                  lbu          s7, -18(sp) #end riscv_load_store_rand_instr_stream_7
                  sltiu        s2, t4, 1353
                  add          t6, s0, t3
                  blt          a1, t1, 5f
                  lui          a6, 458125
                  sub          s1, a4, s10
5:                sra          ra, zero, s5
                  slli         zero, a1, 10
                  bgeu         s5, a2, 11f
                  bne          s4, a2, 17f
                  blt          s0, s4, 26f
                  srli         a1, s5, 6
11:               bltu         a4, t5, 14f
                  xori         s1, s11, 425
                  bge          t1, a3, 32f
14:               sub          t5, s5, a4
                  srai         s2, s5, 24
                  or           t5, t2, tp
17:               sra          t6, s4, sp
                  andi         gp, a6, -1480
                  xori         t5, a4, 83
                  bgeu         a3, a2, 25f
                  xori         t1, s1, 1701
                  bne          s9, a0, 27f
                  blt          a5, a4, 25f
                  sltiu        a7, t2, -1237
25:               andi         a6, t1, 1065
26:               beq          s6, s0, 40f
27:               slti         a0, a3, -1373
                  nop
                  xori         s10, s8, 115
                  or           tp, t0, s11
                  bne          s11, t2, 33f
32:               sub          a1, t5, s1
33:               add          t3, a4, s4
                  bge          s2, t5, 46f
                  slti         a2, a6, -1316
                  and          t2, zero, gp
                  ori          t0, s0, -1823
                  bne          zero, s0, 42f
                  xori         s2, s8, -641
40:               or           s8, a7, a0
                  lui          t6, 85154
42:               bne          tp, s6, 47f
                  xori         s6, s3, -325
                  bltu         a5, tp, 46f
                  sub          s9, t6, zero
46:               sll          s8, s1, s9
47:               lui          zero, 213452
                  slti         tp, s11, 1840
                  srai         a4, a3, 24
                  auipc        t5, 72858
                  beq          a7, s10, 67f
                  blt          tp, sp, 62f
                  slti         ra, a6, 1960
                  andi         s2, s8, -1901
                  srai         t1, a5, 24
                  lui          s5, 825805
                  and          s2, s8, a0
                  ori          t0, a6, -1081
                  slt          t5, t0, s5
                  auipc        s9, 398023
                  srl          ra, a1, s7
62:               lui          s3, 709496
                  nop
                  blt          t5, s5, 66f
                  sltiu        s4, t0, -1100
66:               sub          a7, s3, a3
67:               or           s5, s8, s10
                  bge          s5, t3, 75f
                  xor          zero, gp, a0
                  sltu         s9, s7, gp
                  bltu         a1, t4, 83f
                  and          gp, t0, t2
                  addi         t3, t4, 1004
                  sltu         t0, a0, t5
75:               srli         sp, t1, 6
                  srai         tp, sp, 29
                  bgeu         t3, s1, 85f
                  lui          a3, 476735
                  ori          t2, s3, 1383
                  and          s2, t5, tp
                  or           t5, s4, s6
                  srai         s5, t4, 0
83:               slli         s5, t3, 25
                  ori          a7, t2, 398
85:               ori          sp, a1, 1590
                  lui          s10, 696441
                  addi         a3, s6, -1334
                  xori         s6, gp, -1926
                  beq          s11, sp, 104f
                  slli         t3, t0, 17
                  sra          a7, s1, s7
                  xor          t3, a0, a4
                  xor          s10, a1, s5
                  xori         a2, sp, 754
                  and          a3, a4, s3
                  and          gp, a3, tp
                  sra          a7, t4, t6
                  sltiu        zero, t4, 1328
                  nop
                  slt          sp, s1, tp
                  nop
                  slt          s8, zero, s9
                  nop
104:              lui          t1, 590596
                  and          a6, s4, zero
                  andi         zero, a4, 953
                  srai         a2, s9, 3
                  srai         t0, t6, 1
                  slt          s9, t0, a3
                  bge          s10, t0, 119f
                  beq          ra, zero, 125f
                  sll          a3, a6, s0
                  andi         a7, a7, -787
                  slti         tp, t1, -1897
                  bltu         t4, s2, 127f
                  sra          a7, t4, sp
                  lui          a6, 840335
                  srli         s5, t3, 30
119:              srli         gp, s2, 11
                  sll          s6, tp, t0
                  sll          s7, s3, s0
                  sra          a1, a4, s3
                  xori         s4, t3, -197
                  slli         zero, t0, 28
125:              bltu         a3, t4, 127f
                  or           zero, s0, a0
127:              sra          ra, s2, t6
                  srli         a0, ra, 21
                  bltu         t0, s11, 135f
                  bltu         a2, s6, 142f
                  xori         zero, s2, 1606
                  sub          s5, a5, a6
                  xori         s4, s7, 1724
                  bne          ra, s2, 146f
135:              andi         t0, s4, 907
                  sub          s8, s10, a3
                  bltu         s1, s7, 149f
                  and          s6, a6, t5
                  sltiu        sp, s11, -325
                  auipc        t1, 166871
                  srai         s10, a1, 10
142:              slt          s5, s5, a4
                  beq          s5, s0, 150f
                  bne          gp, t6, 161f
                  srl          zero, s7, t4
146:              xor          a2, a4, s1
                  bgeu         s5, a1, 159f
                  and          t5, s6, sp
149:              add          a7, tp, s11
150:              xor          s8, ra, a3
                  addi         a1, s4, 1651
                  and          t5, s1, t4
                  srai         s5, zero, 9
                  slti         s9, s0, -1991
                  slti         zero, a4, -1070
                  ori          a2, s8, 1985
                  andi         s10, sp, -754
                  xori         s8, s0, -1011
159:              srli         s11, s1, 15
                  or           s11, sp, a4
161:              lui          a0, 186962
                  srai         a4, gp, 9
                  slli         s4, t6, 4
                  slli         a0, t1, 10
                  lui          a6, 476520
                  nop
                  xor          s10, s2, t0
                  blt          t0, s1, 171f
                  auipc        s8, 531619
                  slli         t0, t4, 29
171:              srli         t5, s4, 14
                  slti         t0, s9, 747
                  srl          s3, t0, s5
                  auipc        s3, 85848
                  nop
                  xor          s11, a4, a7
                  bne          ra, s7, 182f
                  slli         t2, gp, 14
                  xor          s2, a2, a4
                  xor          s6, zero, a1
                  bne          t5, s2, 185f
182:              nop
                  addi         t5, t6, -133
                  slti         a2, t3, 747
185:              ori          a1, t4, 651
                  auipc        s10, 592526
                  slti         a2, sp, -838
                  ori          a2, tp, 1524
                  sltiu        a4, a7, 362
                  slt          t2, sp, a1
                  andi         a7, ra, 1982
                  srli         tp, sp, 6
                  ori          t0, tp, 954
                  sub          a6, s5, s0
                  add          t2, s9, t1
                  sltiu        t2, s5, -996
                  srli         a0, a4, 29
                  la           a3, region_1+1736 #start riscv_load_store_rand_instr_stream_1
                  srai         t3, t4, 30
                  sb           t5, 36(a3)
                  lb           s9, -62(a3)
                  ori          s2, tp, -1968
                  lbu          s6, -56(a3)
                  lbu          gp, -16(a3)
                  add          s2, s11, a0
                  slt          s4, s8, t6
                  andi         t3, a5, 1199
                  nop
                  xor          a1, a3, ra
                  srli         t0, gp, 5
                  lbu          s3, -62(a3)
                  add          ra, s6, sp
                  nop
                  sb           a6, 1(a3)
                  sb           s7, 53(a3)
                  lbu          tp, 31(a3)
                  srli         sp, zero, 4
                  lb           s8, -36(a3)
                  sra          gp, s9, s4
                  sra          sp, s1, t4
                  sltiu        t2, a1, 203
                  or           zero, a6, s2
                  srai         a2, zero, 6
                  lbu          s3, 8(a3)
                  sll          tp, ra, s3
                  nop
                  sb           s2, -29(a3)
                  nop
                  slli         t6, t4, 11
                  lui          t6, 779894
                  lbu          s4, -23(a3)
                  lui          s7, 509266
                  xor          s5, s1, a1
                  auipc        s8, 201501
                  sltiu        t1, t2, -347
                  addi         s7, s7, 862
                  xori         s10, s5, -139
                  slli         a0, t5, 22
                  lb           s9, 2(a3) #end riscv_load_store_rand_instr_stream_1
                  auipc        s9, 975587
                  lui          t6, 163570
                  bge          s0, t0, 209f
                  bgeu         tp, s6, 203f
                  auipc        tp, 421810
203:              xori         s5, s6, -1851
                  slti         a1, tp, 863
                  slt          a3, t2, a2
                  sra          a0, t4, t2
                  bge          gp, s7, 221f
                  bgeu         s4, s1, 211f
209:              slti         s7, s6, -1534
                  beq          a6, s10, 215f
211:              bltu         s3, s5, 221f
                  andi         a0, a2, -709
                  bltu         s9, t1, 225f
                  xor          s5, zero, a0
215:              andi         s4, s4, 1225
                  sll          s8, a1, s2
                  slli         a4, s6, 27
                  bgeu         tp, t1, 237f
                  blt          gp, s9, 231f
                  sll          t2, t2, tp
221:              beq          s1, a0, 227f
                  sll          t5, t2, a2
                  and          s6, s2, s5
                  bltu         a7, t3, 236f
225:              nop
                  sltu         s1, s4, a6
227:              blt          s0, a7, 229f
                  sltiu        s2, t5, 1211
229:              bgeu         a3, a6, 244f
                  blt          s6, sp, 242f
231:              and          s1, zero, t0
                  sltiu        a4, s3, 1290
                  or           ra, s9, s10
                  slt          s6, s8, s3
                  slti         s9, s9, 743
236:              bltu         s10, t4, 238f
237:              auipc        t0, 527176
238:              srai         s5, tp, 12
                  and          t5, s3, a1
                  slt          t6, s10, ra
                  srl          t2, a0, s6
242:              slli         a4, s8, 6
                  or           gp, s9, ra
244:              slti         gp, sp, 16
                  nop
                  sub          t1, s10, t1
                  ori          a3, s6, -176
                  ori          t6, ra, 1021
                  andi         s6, s1, -1177
                  xor          a1, a3, zero
                  xor          s5, a2, s3
                  bltu         t2, a7, 264f
                  sltiu        s10, t4, -703
                  bge          t2, gp, 268f
                  xor          sp, t1, s11
                  sra          s7, a1, s5
                  blt          s5, s0, 265f
                  slli         zero, s11, 29
                  auipc        a7, 356612
                  andi         zero, s3, -1063
                  beq          ra, s10, 277f
                  srai         s2, s10, 29
                  add          s6, s4, s2
264:              bge          t4, t6, 266f
265:              bge          a3, a4, 267f
266:              auipc        a0, 1000466
267:              ori          s7, zero, 753
268:              sll          a6, a7, s6
                  srli         zero, s9, 25
                  sll          a2, s3, a4
                  sltu         gp, t6, s3
                  sltu         s3, s3, s6
                  add          s7, zero, a6
                  andi         a6, sp, 1186
                  nop
                  sltiu        t0, s3, 1336
277:              beq          t0, t1, 282f
                  bge          s1, t5, 282f
                  or           t0, tp, a2
                  slti         s2, a7, 151
                  sltiu        a3, t3, -475
282:              bltu         a3, a1, 291f
                  sra          t3, a6, s10
                  bne          s4, s10, 296f
                  bne          s0, a1, 290f
                  or           ra, tp, t2
                  xor          s10, s8, a7
                  sll          a4, s4, s8
                  bgeu         a2, gp, 304f
290:              xor          s6, t0, a1
291:              bge          s7, t0, 295f
                  xori         a2, s10, -228
                  add          tp, s3, t6
                  xori         t1, a6, 606
295:              sll          a2, tp, tp
296:              sub          s2, ra, a2
                  ori          t6, t3, 605
                  sltu         s2, t0, ra
                  slt          a2, s4, t4
                  xor          a3, t0, t5
                  slli         ra, s2, 6
                  sub          a6, s3, a1
                  beq          gp, t3, 315f
304:              sra          s2, gp, s9
                  xori         a1, s11, -122
                  nop
                  sll          s11, zero, s7
                  add          a6, tp, t1
                  and          s6, a5, s3
                  bne          zero, t3, 318f
                  sltiu        s6, a7, -1573
                  srli         gp, gp, 4
                  lui          a1, 565935
                  or           s10, s2, s10
315:              srai         s3, ra, 15
                  srai         a6, s8, 15
                  sra          s2, sp, s4
318:              nop
                  blt          a7, a3, 321f
                  addi         ra, a0, -1101
321:              sra          t0, s3, s6
                  bltu         s7, gp, 338f
                  slti         zero, ra, -1042
                  auipc        t6, 99600
                  xor          s9, s11, t3
                  slti         a1, zero, -1442
                  xori         s10, a3, 1771
                  and          t2, t3, a7
                  bge          sp, s4, 334f
                  bne          t2, gp, 337f
                  xor          t5, t5, a4
                  sub          s6, a1, ra
                  bge          a4, s8, 347f
334:              sub          ra, t1, s0
                  ori          s2, a6, -1630
                  add          a1, s1, t5
337:              slti         s3, s9, 96
338:              bltu         gp, ra, 350f
                  andi         a2, s3, 784
                  or           s9, sp, ra
                  bgeu         s6, s8, 351f
                  andi         zero, s3, -402
                  nop
                  beq          a3, tp, 363f
                  bgeu         a5, s6, 359f
                  blt          zero, a7, 350f
347:              bltu         s10, t0, 350f
                  and          t3, s9, sp
                  bgeu         s7, a5, 361f
350:              srl          s4, ra, a4
351:              lui          s8, 686247
                  bltu         t0, t6, 357f
                  sub          t3, a5, t3
                  slt          s2, a1, t3
                  auipc        a1, 250344
                  srl          s7, s10, gp
357:              srl          s8, s7, s7
                  andi         a6, ra, 148
359:              beq          zero, s11, 376f
                  sra          t2, a7, s0
361:              sra          s3, s6, t0
                  auipc        gp, 1018651
363:              xori         s1, tp, -1610
                  and          s2, ra, t6
                  srli         s1, t3, 2
                  slli         s8, s3, 7
                  beq          s6, a3, 370f
                  lui          s9, 622984
                  sltu         t6, t1, s7
370:              sub          zero, t6, ra
                  sub          gp, a5, a6
                  bne          zero, a4, 384f
                  sltiu        s4, t6, -636
                  lui          a4, 576955
                  bgeu         s9, s0, 377f
376:              auipc        zero, 233365
377:              srai         a3, s11, 6
                  or           t6, zero, s5
                  nop
                  blt          a4, s1, 382f
                  xori         t1, a1, 1903
382:              srai         t3, a1, 27
                  nop
384:              auipc        zero, 873289
                  or           s1, s10, t5
                  srai         a7, s7, 3
                  sll          s10, gp, s9
                  sltu         a1, s1, s2
                  xor          a1, t5, a1
                  sra          a3, s11, s1
                  bge          s7, a5, 397f
                  and          zero, a7, s2
                  xori         a4, s1, 1816
                  sll          t1, s7, s8
                  srl          s11, s9, a5
                  xor          s2, s7, gp
397:              bgeu         t1, s7, 406f
                  and          s6, s3, s2
                  sltu         a2, t6, t5
                  add          s2, gp, a0
                  sub          t0, zero, s8
                  slli         s10, tp, 8
                  sltu         t5, s6, s3
                  blt          t3, s0, 406f
                  auipc        s3, 620028
406:              bltu         s11, t1, 408f
                  bge          t0, t4, 416f
408:              srl          a3, a3, a1
                  sra          a1, a6, t2
                  xori         tp, a2, 455
                  add          s1, a3, a2
                  slli         zero, s6, 3
                  bgeu         t1, a2, 425f
                  blt          s1, gp, 426f
                  and          a6, s6, s10
416:              or           a1, zero, a4
                  bgeu         zero, s4, 421f
                  and          t6, a1, a6
                  lui          s11, 610825
                  xor          s8, s8, a4
421:              and          gp, s11, zero
                  xor          t3, t4, s7
                  srl          s4, s3, t5
                  sll          zero, a3, t3
425:              sll          t5, a0, zero
426:              srli         a7, s8, 10
                  sll          gp, a2, s7
                  bltu         t1, s8, 430f
                  sub          tp, s10, s1
430:              bltu         t4, a1, 440f
                  srl          s6, a7, s1
                  sub          s1, t4, tp
                  sra          t1, zero, s6
                  slt          a4, t4, t4
                  bltu         t6, a5, 450f
                  slli         t6, t5, 26
                  slt          s10, t2, gp
                  or           s4, a4, a7
                  slti         s10, s8, -442
440:              sra          a6, s9, s9
                  slli         t5, ra, 20
                  lui          s1, 982427
                  bltu         s8, t4, 455f
                  lui          a6, 1027045
                  bge          a4, t1, 451f
                  add          t2, a2, tp
                  add          s11, t2, s4
                  lui          a1, 408649
                  xori         t2, ra, 83
450:              sub          s8, gp, s4
451:              ori          s1, a0, -549
                  sub          s6, t5, a3
                  bge          t1, s3, 465f
                  slt          tp, a2, t5
455:              srl          s4, a1, ra
                  blt          s6, s7, 470f
                  srli         t3, t1, 5
                  addi         s8, s10, -1213
                  and          t3, s1, s8
                  sltu         t0, gp, a4
                  bne          zero, gp, 480f
                  bltu         s3, s3, 465f
                  bne          t1, a7, 465f
                  ori          t5, a3, 1800
465:              addi         t5, s2, -1797
                  srai         s2, s3, 17
                  sra          s9, t2, tp
                  bgeu         t4, a0, 473f
                  srli         s2, sp, 19
470:              sra          sp, tp, sp
                  andi         zero, a0, 1768
                  srai         a1, s7, 1
473:              bltu         s7, t0, 487f
                  beq          a7, a3, 479f
                  srl          tp, a3, tp
                  nop
                  lui          s6, 505093
                  sltiu        t3, a2, 1926
479:              bgeu         t2, s7, 481f
480:              ori          a6, a7, -1298
481:              xor          a7, s7, tp
                  add          a4, a3, a5
                  bge          s9, t3, 499f
                  xori         gp, ra, 1788
                  blt          s10, tp, 489f
                  bge          t4, t1, 488f
487:              sra          t1, a6, t5
488:              slli         t2, a3, 29
489:              sltiu        sp, zero, -1369
                  addi         t3, a3, -494
                  lui          ra, 650912
                  bltu         s7, t4, 504f
                  beq          s10, ra, 500f
                  nop
                  sll          a6, s9, s7
                  srli         s3, s5, 13
                  add          a3, s11, s6
                  srai         a1, a0, 22
499:              bgeu         s3, s9, 508f
500:              xor          t6, s1, a5
                  add          a4, a3, a2
                  addi         s11, s2, 1664
                  andi         s11, s6, 873
504:              slli         s5, a6, 15
                  nop
                  or           s10, t3, s0
                  srl          t5, t2, a6
508:              addi         sp, s5, -349
                  bne          s1, s1, 512f
                  beq          t2, a0, 522f
                  slt          s4, a1, s6
512:              lui          a4, 728473
                  bgeu         ra, a1, 518f
                  sltiu        a3, s5, 1736
                  lui          s9, 705119
                  and          gp, s5, s2
                  xori         a1, s8, 1304
518:              bne          zero, t3, 520f
                  or           s1, tp, s4
520:              xori         a2, tp, 142
                  bne          t1, a0, 533f
522:              and          t5, sp, a5
                  slt          s7, s7, s9
                  add          s8, s2, s8
                  nop
                  addi         s1, t4, 1920
                  ori          s9, zero, 1804
                  blt          s0, a0, 545f
                  blt          a1, t4, 537f
                  auipc        s6, 660542
                  srai         zero, t2, 4
                  srl          s3, a7, s5
533:              slli         s2, s1, 6
                  bgeu         s10, t3, 543f
                  and          zero, tp, a6
                  sub          a0, s10, t5
537:              srli         zero, s6, 25
                  or           gp, a5, a3
                  xor          s7, zero, s4
                  sltu         a0, a3, s7
                  sltiu        s7, t0, -1660
                  srl          s11, s11, gp
543:              slt          s3, s2, gp
                  slli         s2, t3, 11
545:              andi         s3, sp, 1014
                  sub          s3, s5, t2
                  beq          gp, t1, 549f
                  bgeu         a4, sp, 550f
549:              sub          s4, a6, s4
550:              xori         a6, a5, 98
                  ori          s9, a6, -1489
                  ori          a1, tp, -1727
                  slli         a4, s3, 10
                  srli         t3, s4, 9
                  auipc        s8, 682621
                  add          s3, t4, s5
                  add          ra, s1, s4
                  or           ra, a1, s2
                  nop
                  bge          s11, a5, 564f
                  sltiu        a3, s11, 433
                  add          s8, tp, a7
                  slti         tp, s4, 1308
564:              sub          ra, sp, s5
                  auipc        a6, 180936
                  xor          s4, t0, s10
                  sra          s9, s0, s9
                  sra          a0, a1, sp
                  xori         gp, a2, -1094
                  add          s9, s10, s5
                  andi         s7, t1, -1263
                  sltu         tp, s3, a7
                  lui          t1, 989776
                  or           tp, a6, a1
                  or           gp, a3, a3
                  srli         t0, t5, 21
                  sltu         s5, s3, s8
                  auipc        tp, 882736
                  sll          a0, t4, a1
                  srl          s4, a2, tp
                  or           a1, a2, t0
                  or           s4, s4, ra
                  slt          t5, t6, s8
                  sra          s11, t0, t0
                  srl          t5, a3, s10
                  bltu         s0, ra, 594f
                  bne          t1, a4, 594f
                  bne          t5, t6, 602f
                  slt          s3, t0, ra
                  bne          s11, sp, 593f
                  sll          a2, t1, a4
                  slt          zero, t5, s8
593:              srl          t1, s5, zero
594:              xor          s9, ra, s6
                  sll          s6, s8, s7
                  and          s5, a2, s11
                  bne          s5, zero, 609f
                  bgeu         a6, zero, 600f
                  or           t0, s6, t3
600:              sltiu        s1, s5, -1778
                  slti         t6, s11, 1678
602:              sltu         a7, s9, a6
                  and          s7, a2, s10
                  sltiu        s2, a2, -785
                  srli         gp, a7, 30
                  sub          s11, s6, a1
                  sra          ra, a6, s4
                  blt          s2, a6, 627f
609:              xori         s1, s3, 987
                  and          s6, tp, a5
                  slt          s9, t0, s8
                  sra          s8, t3, s11
                  sltiu        a6, gp, -21
                  andi         t2, a7, -1374
                  andi         s5, a5, 1046
                  and          s5, ra, tp
                  sltu         t2, s6, s6
                  andi         t6, s7, -172
                  blt          a4, a5, 631f
                  add          a0, s4, t0
                  srl          t3, sp, a5
                  nop
                  beq          a0, s10, 632f
                  srl          s4, t1, t5
                  bge          t1, t4, 640f
                  srli         a7, s10, 16
627:              srl          a0, s7, a4
                  blt          a1, s10, 642f
                  slt          gp, a7, s7
                  sub          a3, t5, gp
631:              bne          s10, t4, 634f
632:              or           zero, t1, t2
                  bge          a5, t3, 645f
634:              srai         s4, t2, 25
                  sltiu        a0, t1, -669
                  slt          t2, ra, t0
                  addi         ra, s1, -1658
                  ori          a3, a7, -1844
                  sra          s5, s1, s8
640:              sll          s8, s11, t4
                  slti         s8, s5, 906
642:              bgeu         s5, s5, 646f
                  slt          a4, s3, t3
                  bltu         t5, s5, 654f
645:              sub          t3, s7, gp
646:              beq          s1, a0, 662f
                  andi         tp, a2, 294
                  addi         s9, s0, 1771
                  slti         t0, a4, 514
                  xori         s9, t3, 1865
                  sll          a3, a4, s10
                  sll          s2, s0, a2
                  sub          s6, t1, s9
654:              auipc        t0, 894812
                  bne          t1, s10, 660f
                  slli         t2, tp, 18
                  bgeu         a4, a0, 669f
                  slli         s10, s5, 8
                  sltu         s9, a0, a1
660:              bge          a6, s1, 669f
                  nop
662:              srl          zero, s10, s4
                  and          s6, a6, ra
                  slt          a4, s2, t6
                  sra          ra, a4, a2
                  sra          t0, t1, a5
                  slti         tp, tp, -1696
                  xori         s10, a7, -1461
669:              slli         sp, t2, 29
                  lui          t3, 460299
                  srl          s8, s1, s4
                  srli         zero, s6, 30
                  sub          zero, s2, s7
                  sltu         a0, t4, s1
                  bge          s8, s3, 680f
                  bltu         s8, zero, 688f
                  xori         tp, s11, -851
                  bgeu         ra, a4, 695f
                  blt          s1, t2, 681f
680:              sub          t6, a0, s4
681:              slt          sp, s8, s8
                  slt          t1, t1, a4
                  srai         s6, tp, 29
                  auipc        s6, 856224
                  sltu         tp, a3, s7
                  bltu         s1, ra, 691f
                  sub          t1, s10, s4
688:              lui          sp, 629609
                  xor          t2, tp, t6
                  ori          t3, s5, -694
691:              bne          s7, s6, 697f
                  andi         s9, s4, 135
                  xor          a0, a6, s2
                  andi         s7, t2, -1799
695:              add          s3, sp, s11
                  or           s5, t1, t4
697:              lui          s1, 4627
                  bne          t2, a5, 710f
                  slt          a6, s0, s8
                  srl          t0, t4, t0
                  srai         s10, a3, 7
                  srai         s9, s9, 16
                  sub          t1, a0, s8
                  ori          tp, s9, -1779
                  slli         t5, t6, 27
                  or           s11, a6, t4
                  sra          s1, t5, a0
                  beq          a6, s6, 710f
                  ori          s1, s10, 1049
710:              bge          a1, t6, 712f
                  srai         s9, s11, 6
712:              add          s1, ra, a3
                  sltu         a2, t5, a1
                  srli         t5, gp, 29
                  andi         s4, a6, 1465
                  sll          a1, a6, t0
                  xori         s1, s4, 1384
                  sltu         s10, zero, s6
                  auipc        tp, 414490
                  slt          t3, s6, t3
                  slli         s8, t0, 11
                  nop
                  srli         a3, s10, 5
                  ori          s2, t6, -1053
                  slti         a4, s9, 29
                  slti         tp, s7, 764
                  or           t3, s8, s11
                  srai         a7, s8, 11
                  blt          s5, a3, 738f
                  auipc        s6, 1030233
                  srl          ra, t5, s8
                  sltiu        s1, s7, -274
                  ori          t0, t2, 486
                  ori          gp, t3, 74
                  sltiu        zero, t5, 949
                  sub          gp, s3, s1
                  bne          s9, s11, 749f
738:              srli         ra, s4, 27
                  xori         s10, zero, 392
                  srl          s4, s10, a4
                  or           t3, ra, s7
                  slli         s10, tp, 11
                  beq          a4, ra, 755f
                  srai         s1, ra, 18
                  slli         t6, s10, 29
                  lui          t6, 196676
                  blt          t6, a5, 757f
                  srli         a7, zero, 11
749:              slti         a6, tp, 967
                  bne          a1, t4, 762f
                  la           gp, region_1+1246 #start riscv_load_store_rand_instr_stream_8
                  sub          t6, s4, a6
                  lb           s6, 51(gp)
                  lb           s4, 9(gp)
                  sw           t5, -46(gp)
                  sra          a1, s5, a0
                  sb           t3, -33(gp)
                  sb           a3, 61(gp)
                  sb           tp, -57(gp)
                  sra          s3, tp, ra
                  sub          a7, ra, gp
                  sb           s3, -7(gp)
                  sra          tp, tp, t2
                  ori          t6, gp, -1787
                  lh           s5, 44(gp)
                  lbu          s3, -37(gp)
                  lbu          t2, 57(gp)
                  lbu          s11, 23(gp)
                  sb           t6, 6(gp)
                  nop
                  or           zero, t0, s0
                  lb           zero, 5(gp)
                  slt          s3, s6, s2
                  srai         s8, s0, 9
                  lw           ra, 34(gp)
                  srli         s3, t5, 15
                  lb           s3, -55(gp)
                  lbu          t6, 5(gp)
                  sub          sp, a3, a3
                  slti         s6, s9, -1215
                  slt          t6, s6, s9
                  lb           s5, 22(gp)
                  srli         a1, a7, 15
                  sb           s2, 31(gp)
                  add          t2, s4, t1
                  lbu          a1, 37(gp)
                  sh           a2, 64(gp)
                  add          s3, s6, gp
                  sb           s1, 7(gp)
                  srli         s9, t0, 27
                  lh           ra, 26(gp)
                  sltu         a1, a7, sp
                  slli         s8, s11, 30
                  sb           a5, 7(gp)
                  lbu          t6, -13(gp) #end riscv_load_store_rand_instr_stream_8
                  ori          a3, t2, 1547
                  xor          s5, s1, s4
                  beq          zero, t5, 757f
                  addi         s6, s0, 380
755:              sub          a1, sp, a3
                  beq          a6, s7, 775f
757:              bgeu         a1, s9, 765f
                  bne          a1, a7, 774f
                  bge          a3, sp, 761f
                  slt          gp, t4, tp
761:              nop
762:              bltu         s4, s11, 764f
                  srai         t0, s1, 8
764:              srai         zero, a1, 27
765:              sltiu        t3, ra, 1133
                  or           s7, gp, t2
                  srli         gp, gp, 18
                  andi         a4, s10, -1737
                  andi         s1, t2, 1281
                  slli         t3, t1, 12
                  xori         s5, sp, 1225
                  bge          a4, s2, 777f
                  xor          s2, s5, sp
774:              srai         sp, s6, 6
775:              xor          s2, s0, t6
                  sub          s9, a3, a5
777:              add          s11, ra, a4
                  andi         a4, s2, 1046
                  xor          t6, a0, t5
                  sll          a1, sp, a5
                  blt          s2, s9, 788f
                  sltiu        t2, s1, -1136
                  sra          t0, a7, gp
                  slti         s2, s2, -1682
                  beq          a2, t6, 788f
                  slti         s8, t0, 991
                  or           a0, t1, s6
788:              srai         a4, t6, 14
                  sra          a0, a6, a1
                  srai         t6, sp, 6
                  addi         zero, s10, -1473
                  auipc        zero, 275521
                  sltiu        tp, t5, -1726
                  lui          s9, 953659
                  bgeu         s11, s8, 809f
                  slti         s9, s3, 1896
                  bgeu         a6, t1, 809f
                  slt          s1, a1, a5
                  auipc        zero, 365375
                  sltiu        s9, s5, 93
                  auipc        s3, 681812
                  sub          t5, t1, s4
                  auipc        s1, 826595
                  sll          sp, s0, sp
                  xori         a4, a2, -476
                  auipc        s7, 96460
                  bgeu         s1, s7, 810f
                  add          a4, ra, s10
809:              bne          a0, s7, 813f
810:              nop
                  addi         s1, tp, 996
                  sltu         a7, a1, a7
813:              andi         t3, tp, -598
                  sltu         s10, t6, t4
                  beq          s8, ra, 821f
                  nop
                  srli         t6, s9, 6
                  srli         s7, t1, 9
                  ori          t2, s7, -14
                  bgeu         s0, s8, 834f
821:              sll          s7, s9, s7
                  beq          t3, t4, 834f
                  srl          s8, s6, ra
                  auipc        s5, 424046
                  nop
                  sra          s6, zero, sp
                  ori          zero, a4, -1654
                  srai         tp, ra, 28
                  beq          a2, s2, 834f
                  andi         a1, t3, -157
                  andi         gp, a1, 1204
                  andi         s4, t0, -185
                  bne          t3, t6, 848f
834:              bltu         s5, s10, 851f
                  srai         t5, t5, 12
                  or           a0, s5, t4
                  andi         s1, s9, -246
                  bgeu         tp, s11, 843f
                  beq          a4, a0, 841f
                  bne          t5, s7, 852f
841:              bltu         t1, tp, 850f
                  slli         a7, s7, 26
843:              slli         s9, tp, 19
                  bne          s9, a5, 846f
                  beq          t1, a0, 852f
846:              xori         s2, t2, 1937
                  lui          s4, 755220
848:              sra          s6, a1, s3
                  slli         s7, s8, 8
850:              slti         sp, t0, -532
851:              auipc        ra, 427014
852:              blt          a0, tp, 864f
                  slli         s9, t3, 6
                  srli         a2, a1, 10
                  srli         a2, t0, 3
                  srai         t6, s0, 20
                  sra          a7, s3, s5
                  sub          s4, s8, s9
                  sra          s7, s6, s9
                  sub          s8, tp, a5
                  blt          s3, a7, 878f
                  bltu         a0, s8, 865f
                  beq          a4, sp, 875f
864:              sltu         tp, t0, s11
865:              sra          s9, a0, a6
                  sra          a2, a3, s9
                  srl          a0, s11, t0
                  bge          t2, a6, 880f
                  beq          s6, t2, 871f
                  sra          s4, a6, s1
871:              sll          sp, t6, s5
                  andi         s2, t1, 637
                  slt          a4, a4, s0
                  or           t0, tp, zero
875:              bne          a0, s4, 877f
                  xori         a7, s5, 522
877:              bltu         a0, s3, 883f
878:              beq          a1, t1, 897f
                  xor          gp, s8, ra
880:              or           a4, s10, s3
                  sltu         t1, s0, a5
                  or           a6, s8, t3
883:              bne          a2, s6, 895f
                  auipc        t0, 32752
                  bge          s11, s9, 890f
                  add          t3, s2, a3
                  slli         s5, t3, 30
                  bltu         ra, t5, 900f
                  sltiu        t1, s2, 105
890:              slti         a7, s6, 1296
                  or           tp, a4, t2
                  lui          s3, 718469
                  slt          t5, t2, s3
                  blt          a3, t4, 908f
895:              sltu         ra, gp, t4
                  sltiu        t0, t2, 441
897:              bltu         s9, s4, 906f
                  bgeu         a7, tp, 914f
                  beq          sp, t0, 914f
900:              xori         s3, zero, 479
                  srli         s11, a3, 14
                  sll          s2, a3, gp
                  addi         a3, s8, 1599
                  andi         ra, a0, -1467
                  ori          t2, a4, 199
906:              bgeu         s0, s0, 910f
                  srl          s1, a3, a6
908:              add          zero, s8, s0
                  bne          a6, tp, 913f
910:              slti         s5, ra, 410
                  addi         s7, ra, 1123
                  srl          t5, a3, a3
913:              sltiu        s1, t1, -966
914:              lui          t2, 613619
                  addi         gp, ra, -1354
                  srai         s2, s10, 27
                  bltu         t6, t4, 919f
                  srli         s10, t0, 19
919:              sltu         s6, a5, t2
                  srl          a1, s2, a3
                  or           tp, s8, s2
                  slti         s4, t5, 168
                  srli         a3, a7, 17
                  sltu         tp, tp, a0
                  and          a3, s6, s11
                  sltu         a4, gp, a5
                  slli         t0, s1, 9
                  sltu         t1, t1, t2
                  sub          t1, s11, s7
                  auipc        t0, 772994
                  sll          s5, s8, t6
                  xor          a6, a4, sp
                  sltu         t0, t0, t1
                  bltu         a2, a0, 942f
                  auipc        a1, 536621
                  sltu         s6, a6, a3
                  add          a6, s1, s9
                  ori          a7, a5, -1159
                  blt          ra, zero, 944f
                  auipc        tp, 674256
                  sltiu        a4, a5, 357
942:              ori          s9, t3, -1837
                  blt          s5, ra, 957f
944:              auipc        s5, 366211
                  blt          s1, t4, 947f
                  or           t3, zero, tp
947:              slti         tp, tp, 903
                  sra          a2, t2, s10
                  sub          a2, t4, s7
                  srli         zero, a6, 6
                  beq          s5, s1, 963f
                  srl          a1, t2, ra
                  or           s4, a0, a4
                  blt          s3, t3, 964f
                  andi         t0, sp, -1270
                  sub          zero, s4, a2
957:              bne          s4, a3, 959f
                  xor          ra, t1, t6
959:              bge          a1, t6, 962f
                  sub          a3, t1, a0
                  sub          s9, s1, a7
962:              sra          t2, t3, s10
963:              auipc        s8, 835834
964:              sll          s4, t6, s0
                  and          s5, a0, t6
                  bgeu         a5, s8, 971f
                  ori          s5, s3, 1267
                  sltu         t0, ra, s1
                  or           s2, a3, t1
                  bge          t0, s10, 979f
971:              bne          s7, a0, 988f
                  sra          s8, zero, t3
                  sra          a0, t3, tp
                  srai         t6, s9, 29
                  srl          s6, gp, a0
                  slti         zero, tp, -1683
                  slli         zero, s0, 16
                  lui          sp, 427466
979:              and          t3, t6, a0
                  nop
                  blt          t2, a5, 993f
                  beq          ra, gp, 998f
                  or           a0, s1, a0
                  sll          s2, a6, t3
                  bge          s3, t6, 994f
                  srl          tp, s9, s8
                  auipc        t0, 741579
988:              xor          a4, t4, ra
                  bne          s7, s3, 994f
                  sub          a0, s7, s6
                  bne          s8, t6, 1001f
                  srli         a6, a2, 9
993:              slti         s4, a5, 323
994:              sra          t0, s0, sp
                  beq          a6, s6, 1000f
                  beq          a7, a1, 998f
                  and          gp, t6, t5
998:              lui          t3, 928976
                  slli         t1, t6, 19
1000:             add          sp, a7, tp
1001:             auipc        a2, 927401
                  andi         a3, tp, 923
                  lui          s1, 720239
                  nop
                  bltu         t6, a5, 1010f
                  beq          zero, ra, 1018f
                  nop
                  bgeu         a4, zero, 1014f
                  andi         t1, a1, -1882
1010:             addi         t5, s7, 681
                  blt          s4, t5, 1014f
                  blt          a1, s3, 1014f
                  xori         t6, a5, 71
1014:             sub          s2, s0, s9
                  nop
                  nop
                  slli         a7, s5, 18
1018:             srli         tp, a7, 29
                  lui          a1, 958278
                  andi         tp, s5, 1545
                  nop
                  andi         gp, t4, -885
                  slti         gp, a7, 1430
                  or           sp, a7, ra
                  bne          t4, s4, 1037f
                  srli         s3, a1, 17
                  slt          a2, gp, s10
                  sltiu        a3, s11, 419
                  addi         s3, gp, -56
                  srli         a6, sp, 20
                  xor          s11, s3, a3
                  andi         t3, s2, 943
                  slli         sp, t0, 23
                  andi         a1, s2, 1282
                  slti         ra, a0, -1748
                  bge          s10, t3, 1048f
1037:             slti         s1, t2, -1271
                  auipc        t0, 310264
                  srli         ra, zero, 26
                  andi         a1, s10, 798
                  sltiu        a3, s1, 923
                  add          s4, ra, a2
                  add          t2, t2, a7
                  bgeu         t0, s5, 1047f
                  sub          t2, s3, t3
                  xor          s2, a5, a4
1047:             slli         a2, a3, 7
1048:             beq          t0, t1, 1062f
                  bne          s5, s5, 1058f
                  bge          s11, zero, 1062f
                  srli         t2, t1, 23
                  ori          s1, a6, 379
                  sll          s9, a6, s4
                  srai         a6, t4, 9
                  bgeu         t5, s11, 1070f
                  or           s11, s6, tp
                  sltiu        t3, a1, -1815
1058:             or           t2, s6, s8
                  sltu         a0, s11, a0
                  xori         s10, s6, 2011
                  add          s2, t0, a4
1062:             lui          gp, 960379
                  bne          t4, t2, 1067f
                  andi         s8, a7, -490
                  slti         a1, s4, 1638
                  add          s6, s10, s6
1067:             andi         t5, t6, -565
                  sra          t1, s10, s10
                  add          s9, a6, s1
1070:             slt          s6, s11, t0
                  sll          s2, t6, a3
                  add          ra, s0, t4
                  xori         t0, a0, 1188
                  sub          s8, tp, t3
                  sra          gp, a3, s8
                  blt          s7, s3, 1080f
                  lui          a2, 873442
                  ori          t1, sp, -813
                  srli         a4, s4, 22
1080:             bgeu         s3, a5, 1082f
                  sll          s7, s0, t1
1082:             andi         s8, t4, -471
                  sll          tp, t3, a6
                  bge          t4, a4, 1091f
                  lui          a3, 668052
                  xor          s9, s10, a3
                  slli         s7, s4, 13
                  beq          a5, t5, 1102f
                  bgeu         tp, a3, 1101f
                  bne          s8, t6, 1092f
1091:             srl          sp, s5, s4
1092:             auipc        t1, 853265
                  andi         a1, sp, 1104
                  add          s1, a1, s10
                  beq          t4, t5, 1103f
                  bge          a1, s6, 1115f
                  slli         t2, a2, 11
                  lui          a2, 1005944
                  lui          s3, 692696
                  bne          s4, t5, 1102f
1101:             xori         sp, t0, 1504
1102:             sltu         a7, s7, s1
1103:             sltu         s10, gp, zero
                  bgeu         gp, a6, 1116f
                  bltu         s9, ra, 1114f
                  blt          s1, t2, 1115f
                  bge          t4, a1, 1111f
                  nop
                  srai         s2, a2, 5
                  srli         sp, s9, 6
1111:             srai         t6, a5, 24
                  bltu         s3, t1, 1114f
                  bne          sp, s5, 1123f
1114:             nop
1115:             bltu         a4, a0, 1134f
1116:             sll          a7, s1, t0
                  add          t6, a7, s5
                  bgeu         sp, s11, 1120f
                  bltu         ra, ra, 1127f
1120:             bltu         s11, a0, 1124f
                  slti         a1, s7, 422
                  or           s3, s10, zero
1123:             lui          s5, 399391
1124:             srai         s5, t5, 11
                  bne          s2, s11, 1140f
                  sll          t6, t3, a1
1127:             sra          s9, s9, a2
                  srl          a4, s1, gp
                  addi         t1, s6, 981
                  srli         t2, a2, 2
                  ori          s3, a5, -1756
                  bgeu         ra, t5, 1144f
                  and          zero, t3, t5
1134:             or           t3, t0, zero
                  add          s6, ra, s7
                  beq          t3, a2, 1141f
                  or           a0, s2, a4
                  or           a6, s1, t1
                  blt          s10, s8, 1151f
1140:             slli         s5, sp, 29
1141:             sltu         a2, gp, a2
                  and          s1, t0, t6
                  xor          t0, s4, s11
1144:             xori         s8, s4, -246
                  bgeu         tp, a7, 1151f
                  bgeu         s6, t2, 1158f
                  and          s9, gp, ra
                  srai         t3, s10, 18
                  xori         s7, s5, 570
                  bltu         t1, s7, 1166f
1151:             add          zero, s9, s1
                  sll          t3, s9, s7
                  blt          s9, s8, 1167f
                  bne          t2, t1, 1159f
                  bltu         s6, a7, 1169f
                  srl          t2, t5, t3
                  slli         s11, s3, 29
1158:             slti         t3, a4, 778
1159:             lui          sp, 637044
                  sltu         t5, gp, sp
                  sll          s3, a1, t2
                  sra          gp, s1, s2
                  xori         sp, tp, 1357
                  bge          a6, a0, 1171f
                  sub          a1, a0, s2
1166:             slli         t1, s8, 4
1167:             sub          gp, s8, t3
                  ori          t2, s2, -863
1169:             sra          a2, a0, sp
                  xor          t1, s2, t2
1171:             bge          a3, a4, 1174f
                  sltiu        t6, t4, -1725
                  lui          sp, 813991
1174:             blt          a5, t6, 1176f
                  nop
1176:             blt          a0, s5, 1179f
                  sltiu        t3, s4, -190
                  ori          a7, s0, 772
1179:             srai         zero, a3, 6
                  or           s11, s11, a1
                  auipc        s2, 156759
                  auipc        a4, 540776
                  blt          s0, t5, 1195f
                  sra          s10, zero, s7
                  sub          sp, s9, t1
                  slt          sp, a4, s2
                  bne          a1, s9, 1189f
                  or           t1, a3, ra
1189:             and          s11, a7, s4
                  sll          a1, a1, t6
                  xori         t6, s7, 1246
                  xor          a7, a4, s11
                  slti         s8, s5, 1073
                  sub          a6, sp, s1
1195:             bge          s10, a4, 1212f
                  bgeu         s0, t2, 1208f
                  srai         a0, s8, 29
                  sltu         t5, s10, s11
                  slt          s8, s1, a5
                  or           tp, s9, a6
                  sra          a7, ra, s10
                  bne          s6, sp, 1204f
                  sltu         s1, s0, a1
1204:             addi         tp, s9, 1951
                  and          s1, a1, t2
                  srli         tp, t0, 24
                  andi         s2, a5, 1697
1208:             andi         s3, s7, -1237
                  blt          a0, a2, 1214f
                  sra          a6, s2, sp
                  bgeu         a7, s0, 1223f
1212:             sltiu        s7, s10, 544
                  srl          s11, s8, t4
1214:             sltu         ra, s7, a7
                  bne          t5, tp, 1220f
                  sra          a0, t5, s10
                  sll          t3, s2, gp
                  or           a2, s3, tp
                  nop
1220:             bltu         s9, t0, 1228f
                  nop
                  srli         s11, sp, 9
1223:             sub          ra, s4, a3
                  add          a7, a0, a5
                  ori          a4, s7, -1788
                  sltu         s5, a6, s4
                  bge          s6, s3, 1239f
1228:             xori         t3, s1, 1047
                  sltu         a2, gp, t4
                  bltu         s9, s10, 1232f
                  bne          t0, t5, 1234f
1232:             blt          t2, s1, 1244f
                  xor          s7, t3, s9
1234:             sltiu        tp, t4, -257
                  slli         t3, zero, 11
                  nop
                  bltu         t0, sp, 1251f
                  nop
1239:             bne          t2, gp, 1241f
                  sltu         s11, s10, ra
1241:             sll          tp, t5, gp
                  sra          zero, a3, s8
                  sub          s1, s4, a0
1244:             bge          s3, s10, 1251f
                  srai         t6, t3, 2
                  ori          ra, s10, 474
                  nop
                  xori         s3, s11, 482
                  beq          t6, t3, 1268f
                  xori         t5, sp, -1088
1251:             nop
                  sub          a7, s7, s1
                  lui          s6, 223700
                  bltu         s9, s0, 1257f
                  slti         s6, ra, -708
                  ori          s9, a6, -1748
1257:             bge          s10, a2, 1261f
                  bne          t3, a1, 1273f
                  slli         t1, a4, 23
                  blt          s4, s10, 1269f
1261:             nop
                  or           s6, zero, a0
                  addi         t0, gp, 829
                  bgeu         t0, a5, 1278f
                  sltiu        s2, s5, 1726
                  slt          t5, t0, sp
                  or           t3, zero, s10
1268:             srai         a7, s8, 8
1269:             ori          s2, t6, 2029
                  bne          a5, t4, 1282f
                  srai         s8, a6, 21
                  auipc        t0, 300975
1273:             sub          s5, sp, s7
                  and          a4, a4, s0
                  srai         gp, s5, 19
                  xori         s9, a7, -1512
                  srai         s4, gp, 15
1278:             or           s11, a5, a5
                  bge          gp, a7, 1295f
                  slti         a4, tp, -568
                  blt          a5, a4, 1293f
1282:             sll          s5, s4, s6
                  ori          a0, s5, 864
                  lui          s2, 337944
                  slt          t2, t3, ra
                  auipc        s6, 5317
                  slti         t3, ra, 1337
                  beq          s4, s11, 1298f
                  sll          sp, t1, s4
                  add          s10, t1, s10
                  sub          s2, s8, t5
                  and          s4, s11, sp
1293:             xor          a0, s8, t5
                  blt          s0, a5, 1296f
1295:             srli         s2, a4, 16
1296:             slli         s6, t6, 3
                  srai         t5, s7, 8
1298:             sub          a7, s11, s11
                  and          t1, a2, gp
                  sltiu        s5, s5, -1269
                  slti         a3, a2, -2019
                  sub          tp, a4, a3
                  or           s8, sp, sp
                  lui          s3, 861871
                  srli         a2, s9, 27
                  sll          s9, t5, a0
                  lui          a0, 555235
                  add          t0, t2, a5
                  sltiu        gp, a3, -1492
                  xor          s8, a6, s9
                  srli         t0, s0, 25
                  slli         t0, s11, 3
                  srli         a3, a1, 27
                  ori          a4, s8, 1493
                  bne          gp, a1, 1317f
                  nop
1317:             bne          a6, a7, 1323f
                  xori         sp, ra, 451
                  sltu         s5, s1, t1
                  and          zero, t5, t5
                  srl          gp, s6, t5
                  lui          gp, 987249
1323:             andi         t6, t4, -1616
                  srli         s1, a5, 21
                  andi         ra, s1, 2038
                  bgeu         s6, t1, 1330f
                  srli         a7, s3, 20
                  addi         a3, s1, -576
                  sub          t0, t4, tp
1330:             bge          zero, s7, 1332f
                  blt          tp, s10, 1340f
1332:             sltu         s9, s10, s3
                  xori         a2, s4, 1529
                  sll          sp, s0, s9
                  sll          s4, a5, a4
                  bne          a5, t6, 1353f
                  xori         ra, t0, -806
                  slti         zero, a4, -1382
                  sub          s5, s11, t1
1340:             slti         gp, t6, 1189
                  xor          s1, a5, t0
                  beq          zero, s6, 1347f
                  add          t6, s5, tp
                  or           s11, a7, a4
                  sra          a1, a2, a4
                  srl          s1, sp, s9
1347:             nop
                  slt          s4, s0, t3
                  addi         s4, gp, 1876
                  srli         t0, a0, 8
                  lui          s4, 478384
                  lui          s7, 990774
1353:             add          t1, a3, a7
                  sll          a0, t1, s9
                  sub          zero, s1, s1
                  sltiu        s6, s3, -147
                  addi         s2, s2, 1235
                  ori          s3, ra, -318
                  sub          a2, a3, a7
                  xori         s7, sp, -485
                  srli         s10, s8, 18
                  ori          s1, a7, 1587
                  srai         t5, t1, 9
                  bge          t0, sp, 1369f
                  lui          a7, 265050
                  ori          gp, s3, -139
                  slli         s5, a3, 24
                  sra          a1, zero, a4
1369:             bge          s10, t1, 1381f
                  sltu         s10, s5, s8
                  and          s3, a4, t0
                  xori         a1, zero, 1982
                  slti         s2, a6, 620
                  or           gp, a5, a3
                  srl          s6, s10, tp
                  sltu         s9, sp, a6
                  and          a1, s6, zero
                  and          t1, ra, s7
                  blt          a1, t1, 1381f
                  slt          s10, s4, a0
1381:             slt          s3, a7, s8
                  slti         a7, a2, 1619
                  xor          a1, zero, s3
                  bltu         a7, t4, 1386f
                  sll          s10, s8, s3
1386:             ori          a7, t2, 1789
                  xor          sp, t6, s8
                  beq          a1, s5, 1400f
                  auipc        a1, 717247
                  bne          a4, zero, 1397f
                  sltu         s10, s10, s0
                  addi         tp, sp, -117
                  slt          s1, a7, s10
                  beq          a6, s2, 1397f
                  ori          t5, s4, 346
                  beq          a7, s11, 1404f
1397:             addi         s5, gp, 827
                  srli         s5, s3, 17
                  bge          a7, a4, 1407f
1400:             bge          a0, s3, 1402f
                  add          s9, gp, s1
1402:             and          sp, s3, t2
                  slt          tp, sp, t5
1404:             addi         s3, gp, 750
                  lui          s5, 133437
                  srli         a6, s2, 5
1407:             sll          t0, s7, a2
                  lw           t5, 4(t4)
                  addi         t4, t4, 40
                  nop
                  nop
                  slt          a6, a1, s4
                  andi         gp, s4, -1239
                  xori         t2, s9, -300
1885:             addi x27, x30, 0
1885:             jalr x27, x27, 0
sub_1:            bltu         t0, t2, sub_1_stack_p
sub_1_stack_p:    addi         t4, t4, -24
                  sw           t5, 4(t4)
                  sub          t1, s1, a1
                  slti         s1, s0, 92
                  xori         s8, t0, 1053
                  xori         a7, a1, 1789
                  andi         ra, t1, 1374
                  sltiu        a7, a3, -1648
                  auipc        ra, 261709
                  nop
                  or           a3, a3, tp
                  add          sp, a4, a7
                  xori         t0, zero, 109
                  xor          s4, a0, a0
sub_1_j5:         jal          t5, sub_6 #jump sub_1 -> sub_6
                  la           a7, region_1+1647 #start riscv_load_store_rand_instr_stream_2
                  lh           s6, -13(a7)
                  slt          tp, a4, a0
                  lb           a3, -11(a7)
                  lh           s10, -1(a7)
                  lbu          s7, 33(a7)
                  srli         s9, a6, 14
                  slli         tp, s6, 6
                  sub          gp, t3, a3
                  andi         ra, s6, 783
                  slt          a4, t6, t0
                  auipc        t3, 395840
                  lw           t5, 9(a7)
                  add          s1, a6, t4
                  lb           a6, -34(a7)
                  and          t6, s0, a6
                  xor          s2, s6, s4
                  xori         t1, t3, 1803
                  lb           a0, 18(a7)
                  srli         a4, t3, 30
                  or           t3, s11, sp
                  nop
                  xor          t6, sp, tp
                  srli         t6, s10, 16
                  lb           s9, 36(a7)
                  nop
                  lhu          s5, 59(a7)
                  sb           t4, -45(a7)
                  sb           ra, -5(a7)
                  sw           sp, -59(a7)
                  srl          s5, a3, s8
                  sb           s10, 52(a7)
                  andi         s3, s7, 1482
                  lhu          s3, 33(a7)
                  sra          t6, a0, a7
                  sltiu        s8, gp, 70
                  lhu          s7, -17(a7)
                  lb           a6, -26(a7)
                  lbu          t2, -26(a7)
                  lhu          a1, -61(a7)
                  sll          ra, s0, s2
                  sb           a4, -19(a7)
                  lh           s7, 3(a7)
                  sub          s9, t1, s8
                  lb           s11, -38(a7)
                  lbu          zero, -4(a7)
                  lh           s11, -53(a7) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_1+1525 #start riscv_load_store_rand_instr_stream_6
                  lui          zero, 208399
                  sll          s3, t3, s4
                  lbu          s3, -12(s1)
                  lh           a2, 25(s1)
                  srai         sp, s10, 0
                  sb           tp, 56(s1)
                  lb           s7, -18(s1)
                  and          s10, t4, t0
                  lb           ra, -8(s1)
                  lb           t0, 16(s1)
                  lb           s4, -20(s1)
                  sltu         s7, a2, t3
                  lb           a4, -3(s1)
                  sltiu        t6, s11, -1075
                  lbu          gp, 22(s1)
                  lbu          s8, -51(s1)
                  xor          t5, a0, s5
                  lbu          sp, 50(s1)
                  addi         s7, sp, -1281
                  sw           t1, -45(s1)
                  sb           s1, 56(s1)
                  sltu         s9, t4, s11
                  lh           t6, 37(s1)
                  ori          s2, s4, 1923
                  sb           s6, 12(s1)
                  sltiu        a6, a6, -363
                  lb           s7, 35(s1)
                  srai         s4, a3, 11
                  nop
                  lbu          s8, -52(s1)
                  lb           tp, 0(s1)
                  sll          s7, s6, zero
                  slti         s7, s8, 831
                  sltu         t0, a4, s10
                  lbu          a4, 58(s1)
                  auipc        s10, 374961
                  nop
                  lb           s2, 50(s1)
                  sb           s5, 51(s1)
                  auipc        a7, 909751
                  sb           t5, 62(s1)
                  ori          s10, t2, -1090
                  lbu          s11, 54(s1)
                  slti         s7, s2, 1955
                  addi         t6, t4, 809
                  sltu         tp, gp, t5
                  sw           a0, 7(s1)
                  sb           a7, 38(s1)
                  sltu         t3, t2, a2
                  sltiu        s7, a4, -161
                  and          sp, a7, s7
                  lw           s11, 39(s1)
                  lb           ra, 36(s1)
                  sb           gp, 36(s1)
                  lb           s2, 4(s1) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_1+994 #start riscv_load_store_rand_instr_stream_1
                  slt          t2, a3, ra
                  xor          a7, t4, s5
                  or           zero, a3, s2
                  xori         tp, a7, -1602
                  sra          s3, t2, t3
                  sh           t1, 256(a2)
                  lh           gp, 0(a2)
                  addi         a6, s11, 136
                  lw           a7, -202(a2)
                  sra          t1, s3, s1
                  add          s4, a5, a4
                  xor          tp, s9, t5
                  lui          zero, 223446
                  lhu          s2, -2(a2)
                  lui          s2, 1000979
                  addi         t1, s10, -1334
                  and          a6, a4, t0
                  lbu          s7, -49(a2)
                  lbu          zero, -173(a2)
                  lbu          a1, -164(a2)
                  sb           s10, 218(a2)
                  lb           s2, -33(a2)
                  sra          t5, a3, sp
                  srli         t5, t5, 27
                  addi         s10, ra, -1351
                  xori         s11, s3, 1066
                  slli         t3, zero, 20
                  auipc        a6, 326991
                  lb           a3, -43(a2)
                  lh           t2, -236(a2)
                  add          ra, a3, s8
                  sll          s7, s11, ra
                  sll          s1, ra, a7
                  lb           a0, 185(a2)
                  lb           s11, 21(a2)
                  sub          a3, s1, a4
                  or           s10, t1, s5
                  ori          t0, t5, 154
                  sub          s9, ra, t2
                  lbu          s3, -240(a2)
                  lbu          s9, -45(a2)
                  addi         tp, a2, -472
                  sb           s1, -239(a2)
                  lbu          t3, 137(a2) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+665 #start riscv_load_store_rand_instr_stream_7
                  lbu          s7, -37(a1)
                  or           t5, s8, s2
                  or           s5, s2, s5
                  lbu          s3, 44(a1)
                  sb           sp, 16(a1)
                  lui          t6, 917794
                  lb           s5, 30(a1)
                  lh           sp, 45(a1)
                  sb           tp, 18(a1)
                  sb           t2, -32(a1)
                  nop
                  or           a0, s2, s9
                  sb           a5, 44(a1)
                  sltu         s7, a1, s6
                  sb           s10, 42(a1)
                  sb           a5, 2(a1)
                  sb           a7, -12(a1)
                  sb           s3, 64(a1)
                  slli         a3, a7, 9
                  lb           s10, 23(a1)
                  and          a3, s4, a7
                  slti         zero, s10, 497
                  lh           a7, 29(a1)
                  lb           s5, 48(a1)
                  sltiu        s1, gp, -499
                  lbu          t2, 49(a1)
                  lh           sp, 17(a1)
                  lui          t2, 454745
                  lbu          t1, 26(a1)
                  lb           ra, 1(a1)
                  nop
                  sw           a4, 63(a1)
                  xori         a3, gp, -664
                  lb           s1, -43(a1)
                  lhu          t6, 11(a1)
                  sb           a2, -2(a1)
                  lhu          s8, -15(a1)
                  sb           t2, 51(a1)
                  sltu         t0, s10, s11
                  slt          s10, a2, a3
                  lbu          tp, 26(a1) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1296 #start riscv_load_store_rand_instr_stream_4
                  slt          s4, tp, a7
                  sra          s8, a7, s6
                  lbu          ra, 15(sp)
                  lb           s7, -9(sp)
                  sltu         t0, t3, sp
                  auipc        tp, 236037
                  sb           zero, 3(sp)
                  ori          gp, s4, 467
                  nop
                  lui          s5, 870724
                  slli         s10, a0, 22
                  addi         t6, zero, -1564
                  sltu         t6, s6, t6
                  sra          s9, s9, zero
                  lbu          a6, 15(sp)
                  sub          t5, s8, t0
                  sll          s1, a6, s4
                  srai         s5, t2, 8
                  slt          a4, a6, t4
                  sra          t3, s8, s1
                  sll          s4, a0, a5
                  lb           a3, 5(sp)
                  auipc        s1, 638477
                  srl          s1, s3, a3
                  slti         zero, zero, -956
                  srai         zero, s0, 19
                  lbu          a1, -4(sp)
                  lhu          a1, 2(sp)
                  addi         gp, s11, -567
                  sb           zero, -5(sp)
                  lbu          s9, -5(sp)
                  andi         t5, a5, 399
                  xor          s9, t0, tp
                  sw           tp, -12(sp)
                  sb           s10, -1(sp)
                  sb           s10, -5(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+849 #start riscv_load_store_rand_instr_stream_0
                  sra          gp, sp, a4
                  sra          s9, a1, ra
                  lb           t5, -58(sp)
                  lb           a3, -54(sp)
                  sub          t3, s8, s11
                  ori          a4, a7, -912
                  sltiu        a3, s8, -546
                  sra          ra, a1, a1
                  sltiu        s10, s6, 749
                  sb           s4, 20(sp)
                  srli         s9, a2, 20
                  sb           s2, 54(sp)
                  srl          s3, ra, s1
                  lbu          tp, -61(sp)
                  lbu          zero, 28(sp)
                  sltu         s10, s0, gp
                  slti         a0, a2, -1950
                  sb           t0, -40(sp)
                  auipc        gp, 913233
                  slli         s9, t0, 22
                  slti         t2, zero, -201
                  addi         a7, t4, -1380
                  or           tp, t4, s3
                  nop
                  add          s5, a1, sp
                  sra          s6, s5, s1
                  nop
                  slti         s1, a7, 1202
                  addi         s2, s7, -1879
                  sh           s6, 13(sp)
                  sub          zero, s9, a0
                  srli         a7, a2, 26
                  lbu          s1, 37(sp)
                  xor          t5, sp, t0
                  lb           zero, 8(sp)
                  lbu          t2, 48(sp)
                  sh           s5, 57(sp)
                  lhu          s11, -55(sp)
                  srai         s3, s7, 13
                  lh           s4, -53(sp) #end riscv_load_store_rand_instr_stream_0
                  or           a4, t2, t6
                  slti         s4, gp, -440
                  addi         s9, t4, -912
                  add          s6, sp, t2
                  xor          a2, t1, tp
                  andi         a1, s1, -1177
                  lui          t5, 102762
                  sra          s8, s0, t3
                  sll          s1, zero, s1
                  bge          tp, a5, 20f
                  xori         t0, tp, -1670
                  sll          t1, t1, s7
                  ori          t3, s4, 1428
                  slli         a0, s2, 4
                  sltiu        s5, a3, -646
                  sra          s2, s5, t4
                  sub          s6, t1, s4
                  nop
                  andi         s2, gp, 1456
                  srli         ra, a2, 16
20:               sub          s7, ra, t3
                  lui          t1, 86495
                  slt          a3, a0, a1
                  bgeu         s10, sp, 37f
                  sub          tp, s1, s6
                  sll          a2, t3, s0
                  auipc        t2, 21425
                  beq          s1, a1, 43f
                  bge          s2, ra, 29f
29:               sltu         t1, ra, s0
                  xor          sp, a4, gp
                  addi         t5, ra, 807
                  bltu         s1, a2, 36f
                  bgeu         s5, s2, 47f
                  auipc        ra, 587714
                  sll          s8, t5, s7
36:               xori         a0, s0, 1264
37:               srl          s7, s3, s5
                  sltu         a1, s6, s2
                  bge          s8, s6, 48f
                  andi         t5, t4, 1273
                  sub          t6, s10, tp
                  blt          tp, a3, 51f
43:               andi         t5, s9, -863
                  lui          s1, 949082
                  blt          a2, s3, 48f
                  xor          a7, a5, t6
47:               xori         t6, a4, 981
48:               ori          a0, a6, -1369
                  ori          t0, s8, 46
                  srai         s8, s0, 27
51:               nop
                  auipc        s8, 653652
                  bltu         s1, t1, 67f
                  bge          gp, a0, 69f
                  slt          t3, s3, s11
                  nop
                  srli         tp, s7, 20
                  ori          s8, gp, 1864
                  slti         gp, s5, -644
                  xor          s5, s11, s1
                  bge          t5, s1, 68f
                  addi         t0, s9, -987
                  sra          s9, zero, s1
                  sltu         sp, tp, a7
                  bge          s7, ra, 75f
                  sra          s7, s5, s1
67:               xori         t5, t3, -1362
68:               xor          s2, ra, gp
69:               slt          a1, zero, s2
                  bne          s10, t6, 75f
                  srai         a0, t4, 9
                  xor          gp, s11, a5
                  bne          tp, s10, 74f
74:               srli         a3, t1, 11
75:               bltu         a1, a5, 77f
                  beq          s7, t6, 81f
77:               blt          s8, s2, 91f
                  slt          a0, sp, a4
                  sub          a3, t2, t0
                  or           s7, s10, ra
81:               nop
                  ori          s6, zero, -63
                  lui          t2, 576796
                  blt          s8, s8, 85f
85:               srli         t6, s11, 22
                  auipc        a6, 571420
                  ori          s4, sp, -1257
                  blt          s6, s4, 93f
                  addi         s8, s2, -756
                  add          gp, t1, tp
91:               sra          s3, s8, t6
                  bltu         a7, s7, 109f
93:               srl          a3, a1, a5
                  add          s5, s8, a0
                  ori          sp, a4, -262
                  and          sp, s4, sp
                  lui          s4, 705750
                  bne          a6, a4, 117f
                  ori          s1, a3, 1587
                  beq          s8, s1, 114f
                  auipc        s9, 165320
                  nop
                  bltu         s1, a1, 104f
104:              srli         s1, s8, 31
                  xor          s7, ra, t1
                  auipc        t1, 279122
                  sub          s1, zero, s6
                  ori          s1, gp, 969
109:              bltu         t4, a5, 123f
                  xori         a3, gp, 1173
                  beq          s7, a4, 121f
                  srai         t5, a6, 8
                  and          a4, s5, s5
114:              andi         a3, t6, -792
                  srai         sp, s5, 8
                  xor          ra, a0, a0
117:              sub          s8, s6, t1
                  nop
                  andi         a2, s10, -2003
                  bltu         tp, a1, 136f
121:              srai         a4, zero, 25
                  xor          t0, s8, a7
123:              srl          sp, gp, a3
                  srli         s3, t0, 23
                  nop
                  and          tp, s0, s6
                  xori         sp, a4, -1121
                  sub          t3, t6, s11
                  auipc        t6, 146354
                  bge          s7, s4, 149f
                  bltu         a3, t6, 144f
                  addi         tp, a1, 698
                  sub          a7, s5, s4
                  slti         tp, t3, 1539
                  bgeu         a0, a4, 143f
136:              auipc        a4, 251084
                  sub          a6, tp, s0
                  sra          s10, a7, s1
                  blt          ra, sp, 144f
                  bgeu         tp, t6, 159f
                  sra          tp, a7, s11
                  auipc        t1, 19440
143:              beq          gp, s10, 145f
144:              slt          s1, s1, gp
145:              sra          s9, gp, a6
                  andi         ra, t5, -1516
                  sltiu        s8, tp, 1703
                  andi         a7, zero, -1451
149:              srai         t6, s11, 10
                  lui          a2, 14326
                  srai         a3, t5, 17
                  sll          s3, a0, a5
                  bltu         a3, s8, 160f
                  slli         s10, s6, 2
                  bge          s0, t0, 169f
                  slti         t6, s2, -242
                  slli         s9, t3, 24
                  add          t6, t3, a4
159:              sub          t0, a2, gp
160:              bne          sp, s2, 176f
                  bgeu         s8, s6, 172f
                  nop
                  srl          a0, t1, s1
                  bne          s10, s9, 178f
                  bge          s0, s4, 178f
                  sub          t2, t1, a4
                  bgeu         gp, t4, 171f
                  nop
169:              srl          s4, t0, a1
                  addi         tp, a5, -850
171:              bltu         t5, s2, 185f
172:              slt          tp, a0, s0
                  addi         ra, sp, 321
                  or           s8, s4, s9
                  or           s1, t4, s0
176:              slli         s8, s11, 0
                  beq          t6, a7, 196f
178:              lui          t5, 755719
                  beq          sp, t6, 195f
                  srai         a1, zero, 27
                  bge          a3, s0, 191f
                  srai         a7, a0, 9
                  ori          ra, t4, 1547
                  bgeu         zero, ra, 194f
185:              nop
                  sltiu        zero, a2, 1515
                  andi         a4, tp, 788
                  srl          a2, tp, ra
                  srai         zero, a0, 30
                  beq          s11, zero, 204f
191:              sra          t6, a5, s7
                  blt          s3, a1, 201f
                  addi         s10, s8, -1826
194:              blt          s11, s4, 195f
195:              srai         s10, t1, 3
196:              or           s3, s1, a7
                  auipc        a3, 347677
                  addi         s11, t5, 672
                  and          t5, t4, s3
                  nop
201:              nop
                  sll          t3, s3, tp
                  sll          a1, t2, s9
204:              slt          s9, t6, s5
                  sltiu        a7, t6, -1762
                  nop
                  sltu         t0, tp, s11
                  sra          ra, a5, a0
                  srai         s3, s9, 16
                  srli         a0, s4, 14
                  blt          s11, s11, 225f
                  xor          t1, s11, s3
                  auipc        tp, 887303
                  srai         t0, a7, 3
                  bltu         t4, s9, 220f
                  ori          s6, a0, -964
                  sub          s2, t1, t5
                  addi         a0, tp, -195
                  and          s1, t4, ra
220:              sra          s4, s5, s1
                  nop
                  andi         t0, s6, 1615
                  sll          s6, a5, gp
                  sltu         s7, s0, s7
225:              xori         t6, t2, -803
                  beq          t5, s5, 241f
                  bgeu         s9, t2, 235f
                  sra          a4, s6, s5
                  bge          s9, a0, 230f
230:              bgeu         zero, gp, 233f
                  sll          sp, a2, s3
                  auipc        s2, 250016
233:              sra          t1, t3, s6
                  and          s9, s4, tp
235:              auipc        a0, 284255
                  srai         a6, t5, 17
                  sltiu        t3, gp, -984
                  andi         a4, s7, -2037
                  sra          a4, a4, a6
                  andi         s3, s11, 1516
241:              xor          s1, a7, t1
                  sltiu        zero, s11, 1353
                  bne          s6, a3, 252f
                  sltu         tp, s7, t2
                  xori         t0, a2, -46
                  sll          t2, a1, s3
                  srai         sp, s5, 0
                  bne          ra, s11, 265f
                  addi         s11, s0, -461
                  sub          s2, a1, zero
                  slti         sp, a1, -1543
252:              sll          s2, t1, a7
                  sll          s3, t4, s10
                  xori         t1, t5, 1585
                  and          s2, s9, s9
                  beq          s3, t3, 270f
                  xor          sp, a3, s9
                  slt          tp, s10, a6
                  sll          s1, s9, zero
                  beq          ra, a6, 261f
261:              bgeu         s8, s11, 262f
262:              slt          s6, a2, gp
                  lui          s9, 406665
                  or           a0, sp, a4
265:              srli         sp, sp, 12
                  srl          s11, s11, s1
                  slti         a0, a2, -1541
                  auipc        a6, 389738
                  sll          t1, s1, a6
270:              slti         s6, t3, -214
                  slt          s8, s4, a4
                  srli         a1, s9, 13
                  slt          s7, a6, sp
                  bne          a0, s3, 279f
                  bge          s2, t2, 282f
                  xor          t3, gp, t3
                  beq          s1, a0, 282f
                  sltiu        s9, t5, -603
279:              bne          a1, t1, 293f
                  slti         s1, s8, -47
                  blt          sp, sp, 290f
282:              bge          tp, s4, 296f
                  or           t0, sp, t3
                  srl          s3, a0, s7
                  lui          s5, 408108
                  srai         a0, a6, 6
                  blt          a0, a1, 306f
                  bne          s6, gp, 299f
                  srli         t6, s4, 24
290:              and          s3, s4, s4
                  bgeu         s9, s9, 293f
                  lui          s9, 643933
293:              andi         s11, t1, -346
                  srai         a6, s8, 24
                  ori          a4, t1, -1369
296:              andi         t3, tp, 1079
                  auipc        a1, 333451
                  add          s7, t5, zero
299:              slli         t0, s3, 11
                  slti         s5, a3, 424
                  blt          sp, ra, 306f
                  bne          s3, s2, 306f
                  sra          s4, s9, a0
                  and          s11, a0, a1
                  sltu         t6, s4, a0
306:              nop
                  addi         t3, a6, 987
                  and          s4, s8, s4
                  srli         t3, t6, 12
                  add          s8, ra, a2
                  srl          a0, a0, s5
                  sltu         s8, s5, zero
                  auipc        a6, 91212
                  bne          s2, t0, 315f
315:              bltu         s3, zero, 318f
                  slt          t6, tp, t6
                  bge          s7, tp, 325f
318:              andi         t1, tp, -1151
                  auipc        s4, 1033975
                  and          t1, ra, a2
                  bge          s3, a0, 335f
                  ori          t6, s6, 704
                  addi         s9, s6, 577
                  andi         s10, t0, 717
325:              sll          s1, s6, s9
                  blt          s7, a6, 342f
                  beq          s3, a1, 341f
                  srl          t1, t4, s4
                  bgeu         s0, t3, 339f
                  sltu         s3, s4, s10
                  nop
                  and          s11, s3, s6
                  xor          a2, s4, a2
                  blt          t5, t2, 344f
335:              slt          ra, s2, s6
                  slt          zero, a3, s0
                  sltiu        t5, s10, 717
                  bge          s0, s5, 339f
339:              sltiu        a2, s8, 1765
                  xor          sp, a7, s0
341:              srai         t0, a1, 0
342:              slti         a4, ra, -1081
                  bgeu         zero, s1, 358f
344:              srai         t6, a2, 17
                  nop
                  srl          s2, s10, s8
                  slti         a7, a3, 698
                  sltiu        s11, t4, -1293
                  addi         a6, ra, -82
                  slli         a0, t4, 7
                  slti         t5, s9, 1518
                  sra          a7, ra, t3
                  xor          s4, t2, a7
                  slli         s6, s9, 31
                  beq          s8, gp, 372f
                  srli         a3, a0, 24
                  nop
358:              srl          a7, s1, s8
                  add          s4, t2, a2
                  la           s9, region_0+1353 #start riscv_load_store_rand_instr_stream_3
                  slli         zero, a0, 4
                  slt          gp, s1, a7
                  sb           s0, 8(s9)
                  sra          s10, zero, a7
                  lb           a2, 2(s9)
                  lhu          t3, 13(s9)
                  ori          t1, s2, -1977
                  add          s2, t2, t6
                  sb           gp, 16(s9)
                  srai         t0, sp, 0
                  and          s4, s0, s9
                  sw           a4, -1(s9)
                  auipc        s11, 448990
                  sra          s1, tp, s4
                  sb           a1, -8(s9)
                  lhu          zero, -7(s9)
                  lbu          a3, 16(s9)
                  and          t2, a5, s5
                  andi         s8, t2, -695
                  sltu         s6, a4, t3
                  sb           s1, -1(s9)
                  slti         ra, s6, 42
                  xori         gp, s1, -169
                  slt          s11, a3, s9
                  slt          s7, a5, t6
                  lhu          zero, 13(s9)
                  lui          s7, 579942
                  addi         t6, t4, -1773
                  lb           s6, -11(s9) #end riscv_load_store_rand_instr_stream_3
                  lui          zero, 422925
                  beq          s4, tp, 377f
                  bltu         a6, s9, 376f
                  addi         tp, t2, 2013
                  add          a0, t1, a0
                  nop
                  andi         a1, ra, -985
                  slti         tp, t6, -579
                  srai         a6, s7, 15
                  blt          zero, a7, 383f
                  lui          a2, 180179
                  or           a7, s11, s3
372:              bgeu         a7, tp, 385f
                  slt          a1, s9, t2
                  ori          t2, s7, -836
                  add          t2, s8, s11
376:              sll          t3, ra, s1
377:              sltiu        t1, ra, 628
                  slti         a3, t4, 1568
                  or           a3, s11, t4
                  ori          a4, tp, -143
                  andi         s1, s1, -187
                  slt          gp, a6, s4
383:              slli         t1, s0, 1
                  ori          a4, sp, 372
385:              ori          s4, s1, -753
                  slti         t1, s8, 358
                  nop
                  blt          s5, s11, 393f
                  bne          ra, a7, 398f
                  sub          tp, tp, s4
                  bne          a6, zero, 392f
392:              sub          gp, a1, t5
393:              blt          t3, s9, 412f
                  bgeu         s2, t3, 395f
395:              bltu         a0, s11, 414f
                  xori         s10, a2, 1421
                  auipc        a7, 870621
398:              srli         a0, a7, 11
                  beq          gp, s7, 408f
                  srli         s9, t2, 3
                  andi         t1, a1, -121
                  lui          s3, 998684
                  bne          s11, s11, 420f
                  srai         t5, gp, 9
                  and          s6, s2, gp
                  bltu         sp, s3, 408f
                  bltu         s4, sp, 408f
408:              srl          s1, s6, a7
                  xor          zero, a7, s4
                  xor          s2, gp, s6
                  lui          t0, 978774
412:              slli         s8, tp, 16
                  addi         t3, t0, 1793
414:              blt          a4, a7, 415f
415:              and          ra, sp, s0
                  sra          a2, s10, s7
                  slti         a0, a0, -1597
                  lui          s6, 195826
                  srl          gp, a4, s0
420:              add          a2, s11, t3
                  sub          sp, a5, a2
                  sltiu        t2, tp, 714
                  sra          tp, a1, t3
                  lui          s3, 243866
                  sltu         t3, ra, gp
                  sltu         a0, a1, tp
                  sltu         s10, a2, a0
                  bgeu         t3, a1, 439f
                  slli         s8, s11, 0
                  srli         a3, a2, 2
                  ori          gp, s4, -1715
                  or           tp, t3, s6
                  srl          a4, t1, a6
                  nop
                  or           a7, s3, t4
                  nop
                  srli         t0, s0, 1
                  or           s11, s6, s11
439:              xori         t5, t5, 379
                  bne          a2, sp, 441f
441:              addi         t2, s10, -1180
                  slli         s7, tp, 30
                  slti         s1, gp, -1582
                  slti         t6, a4, 98
                  beq          s10, s8, 458f
                  addi         s8, t6, -1860
                  bltu         s10, s0, 452f
                  sltiu        gp, gp, -678
                  and          sp, s3, a1
                  beq          s11, s4, 455f
                  srai         s10, s10, 24
452:              beq          t0, t3, 471f
                  beq          tp, t1, 457f
                  sltu         zero, s2, s3
455:              xor          s1, a1, s7
                  slti         t5, tp, 724
457:              bge          s9, zero, 471f
458:              sltu         a6, zero, s1
                  bne          a0, s11, 473f
                  slli         s11, s9, 13
                  add          s4, zero, s10
                  srl          t5, a3, s5
                  srli         a6, a5, 16
                  srli         t6, tp, 12
                  blt          sp, a4, 473f
                  bgeu         t2, sp, 480f
                  srl          zero, a1, s2
                  or           sp, t4, t5
                  beq          a6, t6, 472f
                  slli         a7, t4, 27
471:              xor          s11, s8, s2
472:              sll          a1, zero, a0
473:              bne          a1, zero, 480f
                  xori         ra, t6, 384
                  srl          zero, t6, t2
                  bge          tp, a7, 486f
                  sltiu        t6, s0, -1716
                  slt          t3, tp, sp
                  bgeu         t2, s11, 489f
480:              slti         s2, gp, 948
                  and          t5, t2, a6
                  sra          t2, s5, t0
                  nop
                  or           zero, a7, s3
                  slt          t2, a6, a4
486:              blt          s11, t4, 502f
                  bge          a6, s4, 496f
                  xor          s1, ra, a4
489:              ori          tp, zero, 2016
                  addi         t1, t0, -263
                  beq          s7, a1, 496f
                  slt          sp, s9, t5
                  and          s1, a7, t3
                  nop
                  srl          s2, tp, zero
496:              xor          s9, s4, sp
                  or           sp, a4, s1
                  sltiu        a3, s10, 815
                  ori          t6, s0, 751
                  xori         s10, tp, 1300
                  sub          a0, a3, sp
502:              xor          s11, ra, t3
                  xori         s7, a0, 247
                  sltu         s8, ra, t0
                  bgeu         a4, s11, 520f
                  srai         s6, t3, 12
                  and          t2, t4, s1
                  sub          s11, t0, a4
                  and          sp, t6, s7
                  sltiu        t2, t4, -142
                  sltu         zero, t3, ra
                  beq          t4, s0, 526f
                  sltiu        s3, sp, 1456
                  bge          s11, a0, 528f
                  bne          s9, a4, 531f
                  sltu         s10, s5, a6
                  beq          a7, t5, 518f
518:              xor          a3, t2, s8
                  auipc        s6, 1020882
520:              lui          t5, 996480
                  slti         a6, t2, 895
                  bltu         a6, tp, 536f
                  srli         sp, t5, 10
                  nop
                  ori          s5, t2, -724
526:              slli         s4, s9, 18
                  slli         gp, a0, 10
528:              sub          zero, a7, a2
                  bne          s10, s2, 534f
                  srai         s11, s7, 19
531:              add          zero, s3, a1
                  sltu         s4, s2, gp
                  bltu         s9, gp, 542f
534:              bltu         s11, gp, 549f
                  nop
536:              srli         a7, ra, 22
                  bltu         s2, s8, 551f
                  auipc        s8, 457468
                  slli         ra, t0, 19
                  slli         s4, a2, 9
                  sltu         s11, a1, s2
542:              nop
                  xor          a6, s2, s0
                  or           a2, t1, s3
                  bltu         ra, a0, 559f
                  addi         a2, a6, -96
                  bge          s1, a0, 557f
                  bne          s3, a7, 552f
549:              andi         a7, s11, -763
                  srai         a0, t5, 13
551:              bge          t2, s8, 556f
552:              add          t0, t1, a7
                  sltu         s1, s1, a1
                  bge          s2, a2, 573f
                  bltu         s9, s10, 568f
556:              ori          s3, t2, -686
557:              sra          a6, a4, s6
                  bgeu         a6, s0, 568f
559:              and          a3, tp, a0
                  srli         t3, s2, 6
                  bge          a6, t4, 563f
                  srai         gp, t4, 14
563:              sltu         s11, ra, gp
                  andi         a0, a0, -744
                  bne          s6, t6, 584f
                  bne          sp, ra, 580f
                  bne          s5, sp, 568f
568:              bge          t0, a5, 569f
569:              bge          gp, s5, 583f
                  nop
                  bltu         a2, s9, 574f
                  sub          s2, a1, gp
573:              ori          a2, s7, 1265
574:              sll          t1, t0, a2
                  sub          s10, gp, t3
                  lui          s2, 241315
                  sra          zero, a2, a1
                  nop
                  slti         zero, t2, 1038
580:              add          a1, s11, ra
                  sltu         a6, t0, s7
                  blt          t6, s3, 596f
583:              addi         s3, t6, -298
584:              sll          s8, a7, a1
                  sltu         s11, a3, zero
                  xor          a6, a6, t4
                  nop
                  add          s7, s2, a1
                  nop
                  lui          s8, 237162
                  sra          zero, s10, a6
                  nop
                  bne          a4, a1, 598f
                  bge          s2, s7, 610f
                  or           a3, t3, s10
596:              beq          sp, s6, 610f
                  slti         s8, tp, 903
598:              ori          s10, s11, 1472
                  xor          s2, s10, sp
                  srai         t2, t3, 10
                  and          t5, s4, s8
                  auipc        s3, 560809
                  sub          s11, s1, t3
                  bne          gp, t5, 612f
                  add          a4, t0, a5
                  beq          t6, t6, 613f
                  srli         gp, s5, 30
                  bltu         s3, s8, 609f
609:              or           s1, s1, a0
610:              sll          t1, a2, a1
                  srl          s7, gp, t0
612:              slli         s1, s6, 1
613:              or           ra, s5, t5
                  xori         s2, t5, -1478
                  bgeu         t1, ra, 616f
616:              bge          tp, t1, 632f
                  srai         t3, s8, 1
                  bge          s5, a2, 627f
                  blt          s10, s1, 630f
                  andi         s2, s0, -1395
                  add          t0, s3, s1
                  bltu         t5, t2, 639f
                  sub          a0, s4, a5
                  slt          a2, a3, gp
                  srl          gp, s9, s10
                  slti         a1, t4, -1728
627:              addi         a7, a4, 1781
                  sll          sp, s2, a6
                  srl          t3, a3, zero
630:              slti         t0, s0, -1321
                  bgeu         a5, a7, 645f
632:              andi         a1, s8, -1935
                  slli         t0, tp, 12
                  or           s3, s1, t0
                  srli         a1, a6, 30
                  beq          a6, t0, 637f
637:              auipc        s1, 498604
                  nop
639:              sll          ra, t0, t6
                  xori         tp, s0, 1492
                  bge          s5, s8, 656f
                  bltu         s6, ra, 656f
                  lui          s10, 722940
                  auipc        a6, 312335
645:              or           a6, t0, s1
                  sub          a7, s11, s8
                  srai         a3, zero, 31
                  slti         t6, t4, -1595
                  slti         a3, s1, -77
                  sra          s2, a3, tp
                  andi         gp, a7, -1219
                  bne          t4, t4, 666f
                  ori          s1, a3, 1408
                  or           t0, s4, t5
                  slli         a0, a6, 18
656:              sra          zero, a5, t0
                  srl          t0, zero, s7
                  andi         s7, t2, 735
                  sub          s6, t0, s6
                  ori          s9, t6, 828
                  blt          s2, a7, 677f
                  bgeu         t1, t4, 664f
                  and          s5, s9, a4
664:              bltu         s10, ra, 669f
                  xori         a6, tp, 1971
666:              srai         t2, a6, 8
                  srl          t1, a1, sp
                  xor          t2, t4, t4
669:              add          t1, s1, a0
                  srl          s7, a7, s6
                  la           t0, sub_9
                  addi         t0, t0, -972
                  and          s7, a4, s4
                  bge          sp, ra, sub_1_j4 #branch to jump instr
                  slli         a1, ra, 10
                  xori         a0, t5, 133
                  lui          ra, 1000422
                  and          a3, s5, s11
sub_1_j4:         jalr         t5, t0, 972 #jump sub_1 -> sub_9
                  xor          sp, s1, s5
                  slti         s3, sp, 120
                  srli         a7, s5, 4
                  xor          s4, s4, a1
                  addi         t0, gp, 477
                  bge          s1, t0, 680f
677:              bne          t2, t2, 685f
                  sra          t5, s3, s10
                  addi         a0, s4, -1591
680:              xor          ra, s9, tp
                  or           s1, gp, s0
                  add          s6, t0, t5
                  bltu         t3, s10, 692f
                  slt          s11, a4, a6
685:              sra          ra, t6, s7
                  slti         s6, t3, 373
                  and          tp, t4, gp
                  xori         s7, s9, -260
                  nop
                  add          t1, s3, t3
                  andi         t6, sp, 776
692:              sll          s10, s6, s7
                  slti         a0, gp, -647
                  bgeu         t2, s11, 701f
                  srl          s2, a1, s9
                  xor          t2, ra, s4
                  xori         t1, t5, 1302
                  slti         s10, t2, -508
                  xori         s4, a2, -1826
                  bgeu         a1, gp, 701f
701:              bltu         t1, ra, 702f
702:              beq          t6, s10, 716f
                  sra          ra, a6, zero
                  beq          s7, a7, 723f
                  blt          s8, a7, 718f
                  nop
                  srli         t2, s1, 13
                  ori          s7, a3, -597
                  bltu         a0, a3, 712f
                  bgeu         s9, ra, 724f
                  xor          s3, t5, s9
712:              srai         t1, zero, 26
                  sll          ra, s1, t1
                  addi         s10, t4, 1382
                  or           a1, s2, s2
716:              slti         s9, t2, 2042
                  or           s2, a5, s8
718:              sltu         s1, s10, s10
                  bgeu         a4, t5, 736f
                  srli         ra, t4, 9
                  blt          ra, a2, 722f
722:              sub          t0, t2, s9
723:              beq          t5, zero, 732f
724:              bgeu         s5, t3, 735f
                  srli         tp, a3, 22
                  slli         s8, t5, 23
                  sltiu        t5, s0, -1027
                  slt          s7, t3, t3
                  slt          a7, s8, s0
                  srai         t0, t6, 9
                  andi         t1, s9, -1839
732:              bltu         s4, t0, 742f
                  srli         s7, t3, 7
                  bltu         t6, t1, 753f
735:              ori          s3, a7, 1537
736:              nop
                  xori         sp, a7, 1126
                  lui          gp, 664671
                  bgeu         s10, sp, 755f
                  xori         sp, tp, 436
                  sub          s6, s7, s4
742:              ori          s11, t4, -524
                  add          sp, a7, t3
                  and          s4, s5, s4
                  bltu         t1, s3, 759f
                  sltiu        a7, ra, -1417
                  srl          s8, sp, s4
                  sll          t2, s6, t3
                  sub          s10, s1, s9
                  sra          a7, s9, s4
                  sll          s5, t4, a2
                  lui          t0, 889495
753:              slti         t1, t1, -298
                  andi         s10, s4, 921
755:              sll          s4, a2, a1
                  ori          zero, s10, 40
                  srli         s1, s0, 31
                  or           s10, gp, s6
759:              bne          ra, s8, 769f
                  xor          t6, s0, ra
                  add          s2, a2, tp
                  sub          s2, s9, zero
                  slt          gp, s6, s4
                  srl          s3, a6, s6
                  slt          t2, ra, a7
                  addi         a1, t0, -1457
                  slti         sp, a4, -1764
                  sltiu        a1, a4, -1577
769:              slti         t2, ra, -2007
                  xor          s3, t3, s7
                  and          s3, zero, s4
                  add          ra, t4, t0
                  srai         s8, t6, 6
                  srai         t5, a7, 26
                  srli         a0, a3, 24
                  srli         s9, s3, 3
                  blt          s8, gp, 782f
                  slli         s1, tp, 5
                  xori         zero, s6, -554
                  sub          a1, s4, s4
                  ori          tp, t0, -904
782:              sll          s1, a2, a0
                  andi         tp, t0, -307
                  slti         s4, s0, 678
                  sltiu        s5, s6, 357
                  andi         a1, a7, 283
                  bne          t4, a7, 792f
                  nop
                  andi         s1, s0, 46
                  xor          zero, s4, t3
                  and          a0, a1, a6
792:              auipc        a0, 282874
                  or           t6, t4, s10
                  slti         a2, t0, -1452
                  la           t5, region_0+982 #start riscv_load_store_rand_instr_stream_5
                  srl          s7, gp, ra
                  sb           t0, 8(t5)
                  lbu          s2, -3(t5)
                  sb           t6, 9(t5)
                  lh           gp, -6(t5)
                  sw           zero, 10(t5)
                  sb           t1, 13(t5)
                  or           gp, s0, sp
                  or           s10, tp, a5
                  lw           tp, -6(t5)
                  sh           t3, 6(t5)
                  lb           sp, -16(t5)
                  slt          s3, s9, a5
                  xori         t1, s6, -380
                  lh           s5, 14(t5)
                  ori          a3, s9, -1767
                  xor          s6, s11, a7
                  sltu         t3, t4, sp
                  lbu          t2, 3(t5)
                  slt          t6, ra, s9
                  sb           a5, 0(t5)
                  lbu          t6, 0(t5)
                  lbu          s5, 3(t5)
                  sb           t1, -1(t5)
                  sw           s6, -10(t5)
                  lb           ra, -11(t5)
                  lhu          zero, 0(t5)
                  add          a0, s11, a4
                  andi         s6, t6, 676
                  lb           s8, 10(t5)
                  sub          s9, a1, a1
                  srl          a0, t5, t4
                  srli         s10, s6, 22
                  xori         a6, t0, 471
                  andi         a1, s9, 1124
                  lbu          sp, 7(t5)
                  xor          s7, s7, a3
                  addi         s7, a5, -621
                  sb           a2, -7(t5)
                  sll          a2, a3, s5
                  lh           s2, 0(t5) #end riscv_load_store_rand_instr_stream_5
                  and          a6, a7, s9
                  slt          s10, a7, a4
                  ori          s3, s3, 2038
                  slti         t6, s9, -1833
                  add          ra, t5, a7
                  addi         s6, a4, 156
                  sltiu        s6, a2, 1724
                  sra          a0, gp, a2
                  nop
                  bne          s5, t2, 809f
                  slti         a0, ra, 5
                  xor          t0, t5, a0
                  srli         s5, t5, 5
                  beq          s0, a6, 809f
809:              xor          s3, zero, sp
                  blt          s0, t1, 815f
                  ori          t5, t0, 1180
                  bgeu         sp, s11, 829f
                  bgeu         a6, s5, 823f
                  auipc        t6, 473011
815:              ori          s7, ra, 776
                  auipc        a7, 718451
                  slti         t2, s11, -178
                  bge          sp, a1, 834f
                  add          zero, t3, a0
                  blt          a6, t1, 835f
                  andi         a1, zero, 539
                  sltiu        t6, a5, 1737
823:              slti         s11, s7, -1327
                  srli         t1, t2, 9
                  sll          s1, a3, a5
                  add          s5, zero, s5
                  slt          s6, t1, a4
                  sltu         s9, s10, s2
829:              lui          a6, 62939
                  slt          s11, gp, a7
                  sltiu        a0, t1, 748
                  add          s3, a2, sp
                  bgeu         s9, ra, 849f
834:              lui          s1, 799450
835:              andi         s8, s6, 1006
                  lui          t0, 952087
                  sltiu        t1, s1, -215
                  and          a2, t2, s7
                  srai         t1, s4, 8
                  bne          a7, s6, 847f
                  srai         t0, s7, 23
                  bge          s10, tp, 856f
                  srai         t0, a6, 17
                  xor          s4, a4, s0
                  bgeu         t6, a2, 854f
                  bne          a6, t3, 860f
847:              sub          sp, s4, s3
                  and          s5, gp, a2
849:              sra          t3, gp, s9
                  srai         gp, s6, 0
                  sra          a2, s5, a5
                  sltu         s5, tp, t4
                  bgeu         s11, t6, 872f
854:              slli         t6, sp, 25
                  bltu         t2, a4, 874f
856:              beq          s4, s10, 870f
                  or           sp, s2, t1
                  sll          tp, s7, t0
                  and          s6, s8, a1
860:              slti         t6, a7, -169
                  xori         ra, s5, -1213
                  bge          a1, a1, 864f
                  lui          t2, 409728
864:              srli         t0, s1, 9
                  ori          t0, s10, -143
                  bgeu         s9, ra, 875f
                  add          a2, s5, t1
                  xori         s2, a1, 431
                  xori         s4, s9, -1845
870:              srli         a3, a7, 13
                  andi         zero, s5, 504
872:              lui          s11, 644985
                  bge          a7, a4, 874f
874:              bge          s5, a4, 875f
875:              slti         a3, s5, 228
                  lui          sp, 214911
                  beq          a4, a7, 891f
                  sra          s8, s5, s10
                  sra          zero, s11, a4
                  xori         s8, sp, 15
                  srli         a1, t5, 10
                  slt          a7, a1, s3
                  and          tp, s2, s1
                  and          gp, t3, t3
                  bge          t0, s2, 888f
                  andi         t2, a0, 1619
                  bltu         ra, s0, 897f
888:              nop
                  srl          s7, ra, s1
                  sll          ra, s7, a4
891:              auipc        t5, 732565
                  sltu         t5, s7, sp
                  beq          s11, tp, 906f
                  blt          t0, a6, 899f
                  bne          s0, a7, 896f
896:              addi         t1, t5, -737
897:              or           zero, a7, a7
                  slt          a1, s9, t0
899:              bltu         s6, a4, 907f
                  addi         s3, a6, 376
                  bgeu         s11, a0, 912f
                  blt          s9, t2, 906f
                  xori         s1, a5, -1939
                  slli         s4, s9, 9
                  lui          s4, 191216
906:              bgeu         a0, gp, 920f
907:              slli         t0, a5, 20
                  andi         s1, s10, 1356
                  ori          s10, a5, -587
                  blt          s2, a7, 924f
                  auipc        gp, 1016429
912:              slt          a1, a6, t0
                  addi         s2, a2, 657
                  lui          s5, 988327
                  and          s3, s3, s7
                  xori         s9, s11, 1160
                  slli         a6, t6, 28
                  xor          s8, s9, t5
                  bgeu         a3, t4, 930f
920:              xor          t1, a1, t1
                  and          s3, gp, s9
                  blt          t3, a6, 941f
                  bge          s2, a0, 932f
924:              srli         s9, a4, 28
                  and          a1, s5, gp
                  andi         t0, s9, 1319
                  bne          s9, tp, 932f
                  slli         s6, a4, 25
                  lui          s5, 91379
930:              and          s6, t5, t6
                  bne          a7, s6, 936f
932:              sltiu        a1, s4, 313
                  slli         sp, a4, 4
                  bge          a4, s2, 943f
                  sltiu        s3, a0, -1886
936:              ori          sp, t1, 846
                  srai         ra, t0, 15
                  srli         t0, t4, 18
                  srai         a0, a4, 24
                  bgeu         s9, a1, 941f
941:              sltu         s11, s9, s1
                  or           s10, s4, a2
943:              srli         a7, a0, 14
                  srli         t3, s10, 31
                  auipc        a3, 385304
                  sll          s8, s6, t1
                  srl          a3, s7, t2
                  sub          s9, s8, t1
                  xori         zero, s8, 585
                  nop
                  bge          t1, gp, 967f
                  sll          s7, t0, s11
                  auipc        t1, 51610
                  addi         ra, a6, -1567
                  srli         a0, t4, 9
                  and          t0, s9, t6
                  blt          t1, a5, 967f
                  sltiu        a7, tp, -640
                  andi         a7, a4, -1088
                  xori         tp, a1, 587
                  sub          zero, s0, s3
                  slli         s4, t4, 16
                  blt          s8, t6, 964f
964:              xori         s1, t2, 932
                  bge          t3, a2, 969f
                  slti         tp, t5, 755
967:              bltu         a5, t4, 968f
968:              sltu         t6, a1, a1
969:              addi         t0, s10, -968
                  slli         a6, a1, 11
                  or           t1, s8, a3
                  sra          s3, a6, a1
                  sltu         t1, a4, s3
                  sra          s2, s6, tp
                  xor          a6, ra, s8
                  sltu         ra, t2, a5
                  sub          s11, a1, s3
                  bgeu         zero, s7, 988f
                  sra          a0, s7, s9
                  sltu         s3, a7, s11
                  srl          t0, a4, s1
                  bgeu         s11, t1, 987f
                  sltiu        a6, s8, -1600
                  xori         t6, s2, -1526
                  slli         t2, t6, 6
                  or           a2, s0, s2
987:              slt          t0, tp, s7
988:              andi         a6, s2, 50
                  srli         s11, s10, 30
                  add          a1, t5, s8
                  andi         t2, t1, -1871
                  nop
                  auipc        a0, 1046189
                  auipc        t0, 875246
                  slti         s4, a3, 1341
                  lui          t6, 244533
                  add          t3, s0, s2
                  sub          a1, t1, ra
                  nop
                  xori         s5, s6, -5
                  or           a1, t2, a4
                  bgeu         t4, t0, 1015f
                  sll          s11, t2, t0
                  sub          t0, a0, s0
                  bgeu         a3, ra, 1019f
                  slti         sp, s2, -607
                  slti         s10, a0, 941
                  bgeu         gp, tp, 1025f
                  srli         tp, a7, 17
                  bltu         a6, a6, 1024f
                  ori          s10, s3, 1413
                  bne          a2, s10, 1015f
                  slli         zero, t3, 14
                  slti         a3, gp, -694
1015:             srli         tp, t3, 12
                  sltiu        a2, a6, 2039
                  nop
                  xori         a3, a7, -657
1019:             slti         a3, s8, 116
                  auipc        t1, 754181
                  auipc        sp, 227809
                  auipc        s8, 103168
                  addi         s4, sp, 120
1024:             lui          s11, 605110
1025:             bltu         a3, s8, 1044f
                  nop
                  addi         t0, s5, -831
                  ori          a4, t1, -1437
                  beq          a2, s2, 1036f
                  bltu         s0, a2, 1044f
                  auipc        a2, 585633
                  nop
                  bgeu         s11, s0, 1041f
                  srli         s6, s6, 10
                  xor          s8, a6, s0
1036:             andi         a6, s11, -500
                  auipc        a2, 670088
                  sltu         a7, s8, a5
                  ori          a4, s9, -1430
                  srl          t0, a6, a5
1041:             srai         a0, s1, 11
                  nop
                  sra          sp, a4, s6
1044:             add          a4, s11, s0
                  slti         a3, s0, -1108
                  xor          t0, t3, s7
                  add          zero, s6, t3
                  slli         gp, s7, 15
                  beq          zero, a2, 1057f
                  xori         s8, s0, -1536
                  sll          s8, zero, s1
                  srli         s6, s1, 5
                  sltiu        zero, a7, -1024
                  ori          s5, t3, 721
                  bne          a6, s5, 1057f
                  sub          a4, t5, a2
1057:             srai         t0, s0, 11
                  srli         t1, a7, 1
                  lw           t5, 4(t4)
                  xor          s6, a1, a5
                  srli         gp, t6, 22
                  lui          s5, 147839
                  sll          a2, a0, s8
                  sra          a6, a3, a5
                  addi         t4, t4, 24
                  xor          s10, sp, s4
                  sltiu        s10, a3, 74
                  srl          s1, s10, a6
1434:             addi x7, x30, 0
1434:             jalr x7, x7, 0
sub_3:            sltiu        a2, s0, 153
                  srai         tp, s10, 11
                  ori          t6, s11, 423
                  bne          s0, a6, sub_3_stack_p
                  add          gp, a6, s1
                  sltiu        s7, t2, -1475
                  slti         t2, a7, -843
sub_3_stack_p:    addi         t4, t4, -20
                  nop
                  sw           t5, 4(t4)
                  xor          a0, t4, s6
                  sll          zero, tp, a2
                  srai         tp, a5, 21
                  addi         t3, s3, 73
                  srai         s3, a1, 20
                  lui          gp, 753707
                  addi         s5, a0, -1894
                  or           a3, a0, s10
                  xor          a4, s2, t3
                  sltu         s5, a2, t3
sub_3_j8:         jal          t5, sub_5 #jump sub_3 -> sub_5
                  sra          t1, a3, t1
                  ori          s7, s11, -1531
                  sra          s5, t0, s0
                  nop
                  srl          a1, t2, s10
                  slti         s8, ra, 371
                  srli         t0, t5, 26
                  slti         t2, s1, 1417
                  bltu         t0, ra, sub_3_j9 #branch to jump instr
                  sltiu        s11, sp, -597
                  srai         a2, t1, 14
sub_3_j9:         jal          t5, sub_7 #jump sub_3 -> sub_7
                  sra          a6, s7, tp
                  addi         a4, gp, -1789
                  sra          a7, a1, s6
                  andi         tp, s8, -1067
                  or           s3, a3, s4
                  add          s8, s11, s4
sub_3_j10:        jal          t5, sub_8 #jump sub_3 -> sub_8
                  and          s10, a6, t0
                  sltiu        s4, t2, 150
                  addi         a0, gp, 1309
                  bgeu         tp, t0, 4f
4:                beq          s1, t4, 13f
                  beq          a3, s7, 13f
                  srli         s2, s6, 13
                  xori         s7, s4, 498
                  srai         s4, a1, 18
                  sll          s4, a1, a4
                  blt          zero, s11, 13f
                  sub          a4, gp, a2
                  or           a6, s9, s5
13:               sub          t1, sp, a3
                  lw           t5, 4(t4)
                  slti         s1, t6, -876
                  addi         t4, t4, 20
                  srai         a1, zero, 2
                  srli         s3, a0, 10
59:               addi x1, x30, 0
59:               jalr x1, x1, 0
sub_9:            slt          s3, t2, a7
                  addi         t4, t4, -12
                  slli         tp, t1, 25
                  sll          s6, a6, tp
                  sll          zero, t0, ra
                  or           zero, a2, t0
                  sw           t5, 4(t4)
                  lui          a3, 345597
                  slli         s7, a0, 3
                  sub          s8, a7, t5
                  xori         t3, t3, -1051
                  addi         tp, s11, 1678
                  srli         sp, sp, 28
                  lui          t0, 424242
                  addi         a2, t3, 1791
                  addi         a4, s6, 1026
                  nop
                  beq          a2, a4, 8f
                  sltu         a3, a3, gp
8:                xor          t6, tp, s10
                  bge          tp, s6, 10f
10:               auipc        s6, 316258
                  xor          a3, s8, a1
                  sltiu        zero, a2, -1031
                  bltu         t1, s2, 22f
                  sub          zero, s0, a5
                  sltiu        tp, s11, 555
                  nop
                  sra          a6, t1, s8
                  srl          a7, sp, s0
                  slt          t1, s8, a2
                  xor          a4, s2, a3
                  nop
22:               sll          s2, a2, ra
                  lw           t5, 4(t4)
                  ori          s8, t2, -644
                  xori         a3, s10, 1185
                  or           a1, s5, sp
                  addi         t4, t4, 12
                  ori          s1, gp, -1183
                  add          a7, gp, t5
                  xori         s11, s4, -1497
42:               addi x31, x30, 0
42:               jalr x31, x31, 0
sub_6:            or           gp, s8, s0
                  addi         t4, t4, -28
                  slli         a6, ra, 16
                  addi         a1, s5, 517
                  srli         ra, s7, 28
                  andi         a6, s6, 166
                  sw           t5, 4(t4)
                  sll          s10, s8, a3
                  nop
                  auipc        t1, 541757
                  or           sp, a2, s0
                  or           tp, a4, t3
                  and          zero, s1, a5
                  beq          a1, s4, 16f
                  slti         s6, a0, -1547
                  xor          t5, a7, a4
                  bge          s2, a3, 12f
                  xori         a0, a0, -1618
                  beq          s9, s0, 16f
                  sub          a7, a7, t5
                  xor          t2, t3, ra
12:               andi         t0, a0, -471
                  add          s3, s1, t1
                  srai         t0, t1, 2
                  nop
16:               sll          t6, s2, s4
                  slti         t3, a0, -683
                  sll          s7, a4, s6
                  srai         a7, a7, 11
                  xor          s9, s9, s3
                  lw           t5, 4(t4)
                  sltu         s4, a1, s10
                  addi         t4, t4, 28
                  andi         s8, ra, 642
34:               addi x27, x30, 1
34:               jalr x27, x27, 0
sub_2:            srai         s4, s1, 17
                  addi         t4, t4, -64
                  sw           t5, 4(t4)
                  ori          s3, a2, -1975
                  srai         sp, s7, 8
                  la           s7, region_0+1069 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, -24(s7)
                  nop
                  lb           t6, 745(s7)
                  and          s11, s9, t5
                  srl          t3, s2, s7
                  sb           a1, -382(s7)
                  sltiu        zero, t0, -610
                  and          s8, s8, s4
                  lb           a4, 707(s7)
                  sb           s3, 112(s7)
                  slli         s5, a7, 6
                  lb           a7, -690(s7)
                  sltu         s11, tp, t2
                  lb           s1, 296(s7)
                  xori         s2, t6, 1683
                  lb           t3, 410(s7)
                  sb           s6, -616(s7)
                  sltiu        a2, tp, -872
                  lb           ra, -32(s7)
                  sb           s8, 220(s7)
                  xori         zero, a7, 361
                  sb           t2, -972(s7)
                  slli         ra, ra, 15
                  lb           s10, -1068(s7)
                  srai         t0, s5, 10
                  xori         s3, s7, -520
                  sb           gp, 246(s7)
                  lbu          s11, 45(s7)
                  sb           t3, 159(s7)
                  srli         s8, a4, 29
                  lbu          a3, -32(s7)
                  lbu          s1, 894(s7)
                  sub          tp, s6, a0
                  xor          a6, a2, a6
                  lh           tp, -345(s7)
                  xori         s8, t0, -377
                  lb           s9, -534(s7)
                  slti         a7, s5, 1834
                  sb           t6, 312(s7)
                  sub          s9, tp, s2
                  lbu          t1, 818(s7)
                  xor          s5, s7, ra
                  nop
                  sltiu        s10, a6, 1847
                  sb           a4, -384(s7)
                  lb           s3, -872(s7)
                  lb           t6, -343(s7)
                  and          a4, t5, s0
                  lh           zero, -839(s7) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_0+1105 #start riscv_load_store_rand_instr_stream_1
                  slt          sp, ra, gp
                  lb           a4, -785(s9)
                  ori          a1, a1, -1638
                  lb           a7, 434(s9)
                  ori          ra, t2, -288
                  lw           a2, 395(s9)
                  ori          s2, t3, 1107
                  sw           s8, 307(s9)
                  xor          zero, a3, a0
                  or           a0, a7, t1
                  srl          a3, tp, tp
                  lbu          s8, -164(s9)
                  xori         sp, a7, -1999
                  sltu         sp, s9, s9
                  sub          t5, s7, t3
                  sll          t1, a7, a3
                  lbu          s4, -338(s9)
                  lh           t3, -463(s9)
                  lbu          a6, -706(s9)
                  lb           gp, 848(s9)
                  lb           t6, 648(s9)
                  xori         s6, s7, 1638
                  sb           s0, 196(s9)
                  slti         t0, tp, 719
                  lbu          a1, 462(s9)
                  sll          s8, zero, s0
                  lbu          s1, 482(s9)
                  lw           t3, -821(s9)
                  sll          a0, t1, t5
                  slti         a7, s4, -402
                  sb           s8, 488(s9)
                  sh           s3, -1085(s9)
                  sw           s2, 579(s9)
                  xori         t0, a5, -542
                  lb           t6, -107(s9)
                  lhu          a4, -245(s9)
                  lhu          s6, 151(s9)
                  lbu          s3, 578(s9)
                  sb           a2, 672(s9)
                  sltu         s4, s2, s11
                  sb           t6, -115(s9)
                  andi         ra, t1, 1455
                  lbu          t5, -904(s9)
                  lhu          t3, -595(s9)
                  sb           a4, -593(s9) #end riscv_load_store_rand_instr_stream_1
                  and          s8, s2, a0
                  xor          s7, a2, s5
                  xori         t6, s3, -1289
                  auipc        t6, 354943
                  sltu         s4, a3, s0
                  lui          a2, 874097
                  beq          a2, s6, 16f
                  nop
                  sltu         a6, t6, t2
                  sltu         tp, sp, a1
                  bne          a3, t2, 12f
                  addi         s2, sp, -1707
12:               sub          t5, a7, a3
                  bne          s6, s10, 17f
                  slli         t5, a5, 13
                  auipc        a1, 354225
16:               bgeu         t4, s4, 25f
17:               bge          s3, s8, 33f
                  srai         s8, s9, 27
                  ori          a3, sp, -960
                  bltu         t5, a5, 25f
                  xori         s6, a2, -1495
                  add          t6, s1, zero
                  and          a0, a6, a7
                  beq          tp, t0, 44f
25:               slt          a3, a0, a7
                  and          s5, t2, gp
                  srl          s1, gp, ra
                  and          a6, sp, a5
                  slti         t0, gp, -1096
                  bgeu         t5, s11, 46f
                  nop
                  auipc        t3, 906981
33:               sll          s10, s2, t1
                  srai         zero, a3, 22
                  slt          s7, t3, s5
                  addi         s7, t3, 189
                  srl          t2, t0, s3
                  xor          s9, ra, a0
                  sub          a4, t1, t5
                  sub          s6, s3, s0
                  slt          s11, a0, a3
                  bgeu         s5, a1, 54f
                  srli         t0, a5, 18
44:               slli         t2, s5, 14
                  bgeu         t0, a2, 65f
46:               srai         s1, s0, 16
                  andi         a2, s2, 1953
                  lui          ra, 10238
                  beq          s11, s8, 68f
                  sltiu        a3, s6, -1677
                  add          s2, a0, s6
                  and          s2, s1, s5
                  sltu         s11, s9, zero
54:               srai         tp, s2, 20
                  sll          a6, s0, t3
                  sub          s8, s9, a4
                  or           s7, t3, s0
                  slti         t0, s10, -436
                  bge          s6, a2, 65f
                  bgeu         t5, a7, 79f
                  beq          a2, s7, 72f
                  sll          s6, s10, s1
                  sub          s6, gp, a6
                  bltu         s6, a0, 80f
65:               addi         a1, s10, 239
                  add          tp, s11, t0
                  andi         s5, t0, 808
68:               and          a1, t1, a0
                  xori         s2, t2, -1612
                  auipc        a0, 432063
                  srai         s4, s0, 6
72:               sra          sp, ra, s11
                  bge          a4, s5, 80f
                  bne          s0, sp, 86f
                  slti         gp, a1, 1476
                  beq          a7, a7, 87f
                  sltu         t5, s10, a0
                  or           t5, t1, ra
79:               bne          s8, t1, 90f
80:               srai         zero, t4, 20
                  srai         t0, s2, 18
                  sra          s9, t6, s8
                  srli         s7, t6, 28
                  ori          s10, a1, -1898
                  lui          s5, 417250
86:               auipc        s5, 38813
87:               srli         a6, s10, 6
                  sll          a2, s8, a6
                  sltiu        t5, a3, -300
90:               xor          a7, s4, zero
                  lui          a7, 427230
                  xor          t3, s9, s0
                  xor          s2, a6, s11
                  sltiu        a4, s2, 1017
                  bne          s4, s0, 108f
                  ori          s10, s11, -641
                  nop
                  srai         s1, a0, 9
                  slti         t1, s9, -739
                  slli         tp, a5, 28
                  bge          t6, s0, 115f
                  auipc        t6, 858591
                  nop
                  andi         s10, a0, -1946
                  ori          s10, s7, 712
                  beq          tp, a4, 117f
                  slt          t2, s0, s11
108:              srai         a1, a2, 23
                  srai         s11, a7, 13
                  lui          a1, 1033439
                  xor          a7, tp, t2
                  srl          t2, t4, a7
                  xori         s8, tp, -88
                  auipc        tp, 251333
115:              srli         a0, tp, 29
                  slt          t0, ra, t1
117:              sra          s6, s0, s0
                  blt          t3, t6, 121f
                  bge          t3, sp, 128f
                  addi         a1, a0, 293
121:              nop
                  bne          a0, a0, 135f
                  sltu         gp, s7, s7
                  xor          s2, s1, s3
                  blt          s3, a6, 141f
                  and          s2, s5, a0
                  slt          a7, a0, a7
128:              slli         a7, s9, 20
                  xor          s5, s4, s4
                  slli         s7, t0, 24
                  sltu         t6, t3, sp
                  addi         s4, a4, 336
                  addi         s1, t1, -704
                  andi         a0, s9, 773
135:              xori         a1, a5, -1280
                  bltu         s6, s5, 147f
                  bne          gp, t5, 150f
                  beq          s4, a2, 158f
                  add          sp, t5, a1
                  beq          gp, gp, 146f
141:              xor          t1, a4, tp
                  sltiu        t3, a5, 559
                  beq          a7, a5, 155f
                  sll          zero, t1, zero
                  slt          s1, s10, s7
146:              auipc        a6, 371483
147:              xori         s8, a3, -349
                  srai         s7, s11, 1
                  xor          gp, s10, s8
150:              sltu         s1, s4, gp
                  nop
                  xori         s2, s8, 786
                  and          ra, ra, a3
                  srli         s11, t6, 5
155:              lui          zero, 185098
                  add          s10, t3, s2
                  srai         s8, s3, 11
158:              blt          ra, s4, 174f
                  add          gp, a5, s3
                  srl          s4, t3, s4
                  sll          t5, s0, sp
                  slti         a6, a1, -658
                  xor          sp, a5, tp
                  bgeu         s9, gp, 173f
                  bne          t5, s5, 181f
                  slli         s6, s0, 11
                  andi         s7, t5, 132
                  bge          a5, a2, 187f
                  or           t1, sp, s6
                  addi         a4, s7, 216
                  andi         s4, s1, -239
                  bge          a2, a3, 178f
173:              sra          s3, a5, a4
174:              and          s11, t3, a3
                  auipc        s8, 421119
                  sra          s9, zero, s2
                  auipc        a2, 155714
178:              ori          t3, s4, 1849
                  sra          s11, a2, t4
                  slti         s2, s1, 1931
181:              srl          a4, t6, s4
                  blt          t6, s3, 193f
                  sll          t2, a3, t3
                  sltu         s3, t1, t4
                  bge          a3, s6, 188f
                  or           t6, s3, a1
187:              srli         s6, a4, 28
188:              srli         a3, t3, 1
                  srai         t6, s6, 18
                  sltu         ra, s9, s6
                  slli         s8, ra, 27
                  or           s7, a3, sp
193:              or           s11, s1, s3
                  sub          tp, t2, a0
                  srl          s4, t6, t3
                  sub          a1, s6, sp
                  sltiu        t0, s0, -1625
                  bge          s2, s7, 211f
                  sub          s1, s9, sp
                  bgeu         a5, s8, 211f
                  xori         tp, a7, -322
                  beq          a4, s1, 216f
                  sra          t2, t6, t2
                  bltu         a5, t6, 217f
                  or           s2, s4, t0
                  la           a7, region_1+1585 #start riscv_load_store_rand_instr_stream_0
                  sb           gp, 50(a7)
                  addi         zero, s3, 373
                  lb           s8, 6(a7)
                  ori          s2, sp, -1491
                  lb           a3, -27(a7)
                  sll          a4, a5, a2
                  srli         s1, s3, 27
                  lb           s7, -16(a7)
                  addi         a0, t2, 597
                  slti         s5, t3, -1687
                  sra          s7, s4, gp
                  slt          a4, s0, s7
                  lbu          s10, -15(a7)
                  sra          a3, zero, s10
                  lbu          s5, -20(a7)
                  sra          t5, a0, t2
                  andi         t2, s10, 998
                  lh           sp, -23(a7)
                  srl          s8, s2, s10
                  lw           a1, -45(a7)
                  andi         s6, ra, -811
                  nop
                  srl          s10, a1, t5
                  slli         t1, ra, 31
                  auipc        zero, 325545
                  slt          t0, s6, s1
                  and          s2, s11, a0
                  lhu          a2, -45(a7)
                  addi         gp, s8, 72
                  lbu          a0, 4(a7)
                  lb           t3, -11(a7)
                  sw           t1, -41(a7)
                  lhu          a1, -23(a7)
                  lhu          gp, 15(a7)
                  xor          s3, t6, s9
                  lhu          ra, 13(a7)
                  slti         s10, gp, 103
                  sltu         s10, t0, t4
                  xor          t5, a6, s10
                  sb           s2, -7(a7)
                  sb           t1, -31(a7)
                  or           tp, tp, s3
                  auipc        s6, 356686
                  srli         zero, t5, 12
                  lb           t3, -33(a7)
                  slli         s2, s6, 27
                  sb           s10, 14(a7) #end riscv_load_store_rand_instr_stream_0
                  or           a6, t0, t6
                  addi         a6, s10, 1898
                  bge          tp, s0, 227f
                  srl          a6, t0, s10
                  beq          s5, s5, 221f
211:              blt          t4, t4, 224f
                  nop
                  andi         s3, s11, 1326
                  slli         s8, s9, 10
                  bne          a5, a1, 235f
216:              bge          s8, tp, 225f
217:              bne          ra, s10, 227f
                  sub          s11, s1, a4
                  sra          s6, tp, t0
                  srli         a2, s11, 27
                  lui          t0, 1028462
                  slt          s4, a5, s10
                  add          t6, t0, t3
                  bgeu         a3, s11, sub_2_j7 #branch to jump instr
                  srl          t2, t0, t5
                  slli         s7, s9, 20
                  or           t3, a5, s2
                  srl          a2, s7, s11
                  lui          t2, 607678
sub_2_j7:         jal          t5, sub_4 #jump sub_2 -> sub_4
                  sltiu        s10, s2, 488
221:              sll          t0, s3, t3
                  slti         s8, s8, -569
                  lui          ra, 678270
224:              bgeu         a0, s1, 229f
225:              and          s3, s8, s5
                  or           a0, sp, s8
227:              sltiu        s3, sp, -36
                  sll          sp, sp, a7
229:              add          a7, s2, t1
                  sub          s10, s9, s7
                  addi         s2, t5, 907
                  and          s11, t3, a2
                  nop
                  sltiu        t1, s10, 211
235:              srai         s2, a0, 5
                  sll          t1, s4, t6
                  sub          s1, tp, s8
                  srli         s11, s7, 7
                  auipc        a0, 1026456
                  lui          t0, 891317
                  bgeu         sp, a6, 252f
                  srli         a3, tp, 27
                  sra          sp, a3, s10
                  xor          s1, a4, s11
                  sub          s10, a7, a4
                  srai         s3, s1, 24
                  srli         s4, s0, 6
                  addi         t0, a4, -1223
                  slti         sp, s5, -164
                  lui          a2, 1006059
                  bge          zero, a1, 267f
252:              sra          a2, s4, t1
                  sll          s6, t4, t2
                  slli         s8, s2, 2
                  srl          s2, a2, a7
                  slt          s1, a7, t5
                  srli         s6, s5, 5
                  srl          a3, tp, s5
                  andi         a3, a6, 1258
                  sra          a6, t5, t5
                  auipc        sp, 403887
                  add          s6, s8, tp
                  auipc        a0, 35698
                  bge          gp, a0, 271f
                  bne          t0, a3, 271f
                  add          s6, t5, a1
267:              addi         t6, s5, 704
                  auipc        t5, 3459
                  sub          t1, s8, s7
                  bge          a7, ra, 282f
271:              andi         zero, s10, 1943
                  beq          a3, a1, 292f
                  blt          ra, t0, 284f
                  nop
                  bltu         tp, s6, 277f
                  bgeu         a7, t2, 296f
277:              sltu         s5, a3, a6
                  andi         s6, s5, 322
                  sub          a7, sp, gp
                  or           t1, t6, a1
                  srai         s4, s10, 17
282:              srli         sp, s11, 31
                  bgeu         t0, s1, 299f
284:              slli         sp, s8, 9
                  xori         t6, s9, 1963
                  and          s3, zero, zero
                  addi         t3, s1, -1358
                  beq          sp, a4, 292f
                  bge          a6, a6, 296f
                  ori          s5, s3, 794
                  ori          a7, tp, 91
292:              ori          ra, s5, 135
                  add          a3, zero, a7
                  xor          a6, t6, t5
                  sltu         a2, a6, s6
296:              sub          tp, s8, gp
                  beq          t2, a2, 306f
                  addi         a3, s0, 2022
299:              or           a1, a4, s11
                  sltiu        t6, s1, 1920
                  blt          a0, s8, 313f
                  sra          t0, a1, s9
                  or           s10, t6, a4
                  srai         a6, a1, 1
                  sll          t0, a7, t5
306:              addi         t3, t3, 1975
                  bltu         t6, t4, 318f
                  sra          a7, tp, s10
                  slt          s10, sp, s11
                  lui          t5, 702730
                  sub          s7, gp, a1
                  sra          s7, a0, t0
313:              beq          ra, t5, 319f
                  and          sp, s4, tp
                  srli         t5, a3, 10
                  srli         t6, s3, 25
                  slti         s8, t3, -36
318:              add          t3, s3, a7
319:              xor          s2, tp, s1
                  add          s6, a3, a3
                  srai         s4, t1, 29
                  slli         t0, t0, 2
                  andi         s3, gp, -979
                  sra          zero, s10, tp
                  beq          gp, s5, 338f
                  bgeu         gp, t5, 342f
                  and          a1, s5, s6
                  bgeu         s9, a4, 342f
                  addi         s6, a2, -695
                  ori          t0, a2, -1233
                  or           ra, ra, tp
                  srai         t1, a4, 7
                  bne          a2, s11, 349f
                  bgeu         t3, s4, 347f
                  add          s10, t3, a1
                  srli         sp, s6, 1
                  sll          a6, t0, s6
                  srl          s5, t4, t1
                  add          s10, sp, s7
                  slli         ra, ra, 30
                  sll          tp, a3, a3
                  add          s11, zero, zero
sub_2_j6:         jal          t5, sub_10 #jump sub_2 -> sub_10
                  sltu         t6, s4, s3
                  srai         t5, zero, 14
                  auipc        s9, 522659
338:              beq          s11, t3, 341f
                  slli         sp, s7, 16
                  sub          a4, a3, a3
341:              nop
342:              sll          s8, ra, t1
                  bne          t3, t1, 352f
                  sltu         gp, s10, gp
                  slti         a1, s11, 1082
                  bltu         t0, s5, 351f
347:              add          ra, a0, a5
                  srl          t2, s3, gp
349:              nop
                  srai         t5, a3, 24
351:              nop
352:              bltu         s10, s5, 372f
                  srli         tp, a4, 20
                  slt          ra, s5, tp
                  xori         t5, ra, 1463
                  ori          t5, tp, -363
                  sub          tp, zero, a2
                  nop
                  nop
                  xor          ra, t6, s7
                  nop
                  add          t1, t1, s2
                  sll          zero, s3, t2
                  slti         a6, t5, -1546
                  andi         a1, t6, 1460
                  bgeu         s3, ra, 376f
                  sll          s8, s8, s7
                  sltu         ra, a2, s9
                  bltu         a7, t3, 385f
                  lui          zero, 4792
                  lui          t6, 572153
372:              lui          s5, 367529
                  bne          s1, s9, 384f
                  nop
                  slti         gp, s1, -636
376:              addi         a4, ra, 1687
                  sra          t6, a5, t6
                  andi         t1, a5, -1317
                  bltu         a1, t4, 390f
                  auipc        t1, 771735
                  srai         a0, s2, 0
                  sub          s10, t2, sp
                  srl          t2, s5, s2
384:              sll          s6, a4, t3
385:              srl          a1, s1, s0
                  bltu         a5, s11, 390f
                  srli         a3, s5, 24
                  sra          s8, s1, t6
                  sub          s2, a2, s5
390:              srai         s7, s3, 10
                  lw           t5, 4(t4)
                  srli         s2, tp, 26
                  ori          t1, a4, 1018
                  addi         t4, t4, 64
                  andi         s1, a2, -432
565:              addi x19, x30, 0
565:              jalr x19, x19, 0
sub_5:            blt          t4, s2, sub_5_stack_p
sub_5_stack_p:    addi         t4, t4, -44
                  lui          s4, 227091
                  srli         a3, s5, 30
                  sltu         a7, s9, s7
                  sltu         ra, a5, s6
                  auipc        s4, 571829
                  sw           t5, 4(t4)
                  srli         s11, a2, 1
                  xor          ra, ra, t2
                  addi         a4, a1, 394
                  xor          s11, tp, s4
                  beq          s6, zero, 6f
                  xor          a7, s7, gp
                  andi         s4, s9, 500
6:                or           a1, s1, a3
                  nop
                  addi         a6, s5, 501
                  sltu         a3, s1, s3
                  sltiu        a3, s7, 96
                  auipc        a4, 322497
                  and          tp, zero, s3
                  sltiu        gp, ra, -1354
                  bltu         gp, s8, 33f
                  srai         a2, s9, 18
                  srli         a1, t5, 16
                  srli         a2, s8, 18
                  srli         t0, a7, 13
                  auipc        s6, 894698
                  beq          a5, sp, 37f
                  lui          a0, 543959
                  or           t0, s0, s11
                  srl          s7, a0, sp
                  xor          s4, s7, a4
                  addi         s6, a0, 401
                  xori         t6, s5, -39
                  ori          t2, s11, 1882
                  sltu         s8, zero, t0
                  srl          s1, s3, a6
                  srai         t0, s8, 31
                  bne          gp, t4, 41f
                  blt          s0, s2, 40f
33:               sra          a6, t2, a4
                  slti         a1, s5, 1436
                  slt          s11, s5, tp
                  slti         zero, a5, 1648
37:               nop
                  slt          t6, a7, t1
                  sltu         a0, a3, s11
40:               slt          a6, a3, a3
41:               srli         s11, a7, 21
                  la           sp, region_0+1824 #start riscv_load_store_rand_instr_stream_0
                  sh           s2, -1442(sp)
                  lw           gp, -1136(sp)
                  lbu          a4, -391(sp)
                  auipc        a2, 80375
                  sb           t2, -1015(sp)
                  sub          gp, s10, ra
                  sb           t3, -1313(sp)
                  slli         s3, s6, 13
                  xor          a1, s2, gp
                  lb           s1, -1033(sp)
                  lbu          a3, -1223(sp)
                  sltiu        t2, t6, 1253
                  lhu          t2, -1644(sp)
                  sb           s5, -273(sp)
                  nop
                  srai         a0, a1, 11
                  sh           t4, -260(sp)
                  sb           s6, -267(sp)
                  lb           ra, 27(sp)
                  sb           a4, -1061(sp)
                  and          a4, t3, a2
                  lhu          a0, -806(sp)
                  lbu          s9, -1073(sp)
                  lhu          t0, -1090(sp)
                  sh           s3, -512(sp)
                  lb           s10, -1224(sp)
                  or           a7, s11, ra
                  sltiu        t0, a0, 556
                  add          s7, s0, gp
                  sra          a6, a5, a0
                  lbu          t6, -688(sp)
                  lb           ra, -1375(sp)
                  lb           a3, -907(sp) #end riscv_load_store_rand_instr_stream_0
                  beq          t4, a0, 61f
                  srli         s10, s10, 27
                  sltu         a4, a1, t2
                  or           sp, a6, s10
                  bgeu         s10, a0, 56f
                  ori          a7, gp, 703
                  addi         zero, s1, -452
                  slt          s2, s6, t0
                  bgeu         t1, s11, 53f
                  lui          s5, 643048
                  sltu         a2, t2, t5
53:               bltu         a1, s3, 58f
                  bgeu         t5, s11, 68f
                  bgeu         t0, zero, 56f
56:               sltu         s9, t0, s9
                  xori         t1, sp, -1614
58:               slli         a1, t6, 21
                  beq          t1, a3, 66f
                  srl          a6, a5, s0
61:               sra          s7, t4, s8
                  ori          s8, a4, 87
                  sll          s4, ra, a2
                  xori         t5, a5, -1094
                  blt          s1, s5, 77f
66:               sltu         s4, a6, a0
                  sra          s5, s5, t4
68:               bgeu         s7, s2, 81f
                  srli         s2, tp, 14
                  blt          a6, s1, 88f
                  slli         s3, s11, 7
                  blt          a5, gp, 73f
73:               and          t6, a4, s5
                  nop
                  srli         s6, a6, 26
                  and          a4, s7, zero
77:               srl          s1, s10, s9
                  and          t6, s3, s8
                  beq          s6, s0, 91f
                  srl          s9, s2, a7
81:               and          s7, s3, s4
                  ori          a6, a5, 2028
                  slli         s2, a1, 25
                  sra          gp, s6, a4
                  blt          s1, t4, 91f
                  lui          a7, 579063
                  blt          t5, s1, 101f
88:               sll          t0, t5, s7
                  lui          t2, 926993
                  nop
91:               slli         t6, s1, 19
                  slli         a1, a1, 16
                  lui          zero, 495164
                  srai         a7, zero, 6
                  bgeu         s10, s10, 109f
                  srai         a3, s9, 7
                  srli         a7, s7, 19
                  bne          t2, t2, 117f
                  andi         ra, sp, 310
                  bne          s3, t0, 109f
101:              srli         s10, s7, 25
                  slti         s6, s0, -824
                  bltu         s9, t0, 110f
                  slli         s10, a2, 26
                  lui          tp, 116267
                  add          t0, zero, a2
                  slli         s5, s6, 18
                  auipc        a6, 10239
109:              sltiu        t0, t5, 576
110:              auipc        a6, 10044
                  bltu         s8, a3, 131f
                  auipc        s2, 22397
                  srli         a7, a6, 20
                  lui          zero, 744876
                  andi         s2, s10, 1728
                  andi         sp, a0, -1542
117:              auipc        a7, 331701
                  sltu         a3, a1, t2
                  srai         tp, s0, 21
                  bge          s3, a1, 127f
                  la           sp, region_1+70 #start riscv_load_store_rand_instr_stream_1
                  sltu         t5, t2, s11
                  lbu          a0, -12(sp)
                  xor          s10, tp, t4
                  sb           a0, 7(sp)
                  sw           a0, 6(sp)
                  sb           s6, -11(sp)
                  andi         a6, s5, 216
                  lbu          s4, -8(sp)
                  lhu          s8, -16(sp)
                  lbu          s8, 7(sp)
                  lbu          t0, 11(sp)
                  sh           s7, 8(sp)
                  sltiu        s4, a2, 763
                  slli         a0, s7, 1
                  auipc        a0, 182338
                  sub          s1, t5, a5
                  lbu          s3, -5(sp)
                  sb           s7, -8(sp)
                  sll          gp, s5, zero
                  sb           t0, 7(sp)
                  lh           ra, 14(sp)
                  or           a3, s9, a1
                  sll          s10, s10, zero
                  sb           sp, 11(sp)
                  auipc        ra, 356035
                  sb           s6, -2(sp)
                  sll          a7, t0, a0
                  lhu          s11, 12(sp) #end riscv_load_store_rand_instr_stream_1
                  srl          s10, a0, ra
                  addi         t2, a6, 1223
                  beq          a6, a2, 141f
                  bne          a4, s7, 130f
                  beq          t4, a0, 130f
                  bltu         t3, s5, 145f
127:              slli         s6, s7, 13
                  ori          t0, s0, -1594
                  sll          s11, a6, s11
130:              and          s3, s5, t3
131:              lui          s7, 567074
                  beq          s11, a3, 137f
                  srai         zero, a7, 6
                  sltu         s11, s9, zero
                  nop
                  or           a1, a4, s6
137:              lui          s3, 290159
                  slli         tp, ra, 12
                  xori         gp, zero, -1211
                  slt          t5, s0, s10
141:              sltiu        s6, t2, 1908
                  blt          s7, tp, 143f
143:              sub          s6, t6, a5
                  nop
145:              ori          t5, s1, 992
                  srli         a3, t4, 7
                  slt          t6, t3, s7
                  sltiu        s11, a3, 1183
                  xori         ra, tp, 815
                  srai         s4, s7, 15
                  sltiu        t0, a5, -1371
                  beq          a5, a3, 166f
                  xori         s7, ra, 233
                  xor          a4, s1, t1
                  add          t3, s5, s4
                  and          tp, s6, a0
                  sll          s11, a6, t1
                  ori          tp, a6, -1124
                  auipc        t1, 647557
                  lui          tp, 753091
                  xor          t5, s10, sp
                  sltiu        s9, a0, -2
                  beq          s0, s1, 173f
                  nop
                  slt          gp, t4, sp
166:              beq          a7, s8, 178f
                  add          t5, s5, tp
                  sltiu        sp, t2, -244
                  ori          a2, s7, 2037
                  sltiu        gp, s0, -670
                  srai         a2, t5, 9
                  slli         a1, tp, 29
173:              lui          s9, 58050
                  xor          t1, s8, a3
                  sltiu        t3, s3, 384
                  slli         t5, t2, 7
                  bge          a7, s5, 178f
178:              auipc        t6, 892375
                  auipc        tp, 167779
                  bgeu         s3, s7, 194f
                  slti         a6, a4, 387
                  bltu         tp, t6, 196f
                  bgeu         t2, a4, 191f
                  sub          s11, t3, gp
                  srl          s10, s3, s2
                  bne          s2, s4, 196f
                  sll          t6, t5, s2
                  srai         s2, s1, 21
                  ori          s4, ra, 59
                  bgeu         s2, s2, 196f
191:              sltiu        s7, s5, -734
                  add          sp, a1, s10
                  sltu         a1, s7, s5
194:              bgeu         s1, s11, 213f
                  andi         ra, t2, 745
196:              slli         a4, a6, 0
                  sra          t6, s0, t2
                  nop
                  slt          s3, s7, s8
                  sltiu        s1, s8, 93
                  srli         s6, s7, 15
                  blt          ra, t6, 205f
                  xori         a0, s11, 1612
                  slt          t2, t4, sp
205:              bltu         a5, s7, 212f
                  bgeu         a4, t0, 225f
                  sra          s5, s0, t5
                  sltu         a2, s5, s1
                  and          a1, s0, a4
                  blt          a1, s7, 217f
                  lui          s6, 869106
212:              and          a1, t4, t0
213:              sltiu        s10, s3, 1579
                  slt          t2, s11, a2
                  sltu         s4, s8, t3
                  bge          gp, s3, 235f
217:              xori         sp, a5, -1173
                  bne          s1, s2, 235f
                  auipc        a6, 443370
                  xori         a3, s2, 736
                  lui          s3, 711880
                  srl          t2, s7, t6
                  srli         s6, zero, 26
                  xori         a6, gp, -1641
225:              bne          a2, t0, 230f
                  and          s5, gp, a3
                  bgeu         a4, a6, 234f
                  slti         a1, a4, 1362
                  ori          a2, s2, -194
230:              srli         s8, sp, 19
                  srl          tp, t5, sp
                  xori         s1, t2, 1574
                  srli         a2, s9, 26
234:              bge          s8, s7, 254f
235:              bgeu         s2, sp, 244f
                  srli         t6, a7, 20
                  sra          ra, a5, t6
                  bge          t6, a0, 257f
                  nop
                  beq          s0, s9, 258f
                  sub          s11, s9, zero
                  sltu         s10, t0, s3
                  bgeu         s9, s4, 256f
244:              addi         t1, s4, 1919
                  sltiu        s1, t3, -163
                  bge          t4, t3, 251f
                  xor          s9, gp, s3
                  bge          s6, a3, 254f
                  sltiu        t5, a2, -1713
                  slt          a0, s11, a7
251:              srl          s1, s7, t0
                  or           s3, t4, s4
                  bgeu         s2, t0, 258f
254:              bgeu         s8, a0, 257f
                  srai         s2, a2, 20
256:              and          s4, a6, s11
257:              sll          t2, a0, s0
258:              srai         s8, gp, 10
                  addi         t3, a7, -1756
                  nop
                  auipc        tp, 149961
                  nop
                  lw           t5, 4(t4)
                  auipc        a7, 326461
                  xor          sp, s11, t0
                  addi         t4, t4, 44
                  slli         a6, s7, 6
                  slli         a7, a3, 31
                  sub          s2, a7, a7
342:              addi x5, x30, 1
342:              jalr x5, x5, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x8, x29, zero
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x31, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x31, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x31, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x31, x18, ecall_handler
                  li x18, 0x1
                  beq x31, x18, instr_fault_handler
                  li x18, 0x5
                  beq x31, x18, load_fault_handler
                  li x18, 0x7
                  beq x31, x18, store_fault_handler
                  li x18, 0xc
                  beq x31, x18, pt_fault_handler
                  li x18, 0xd
                  beq x31, x18, pt_fault_handler
                  li x18, 0xf
                  beq x31, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  add x29, x8, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
