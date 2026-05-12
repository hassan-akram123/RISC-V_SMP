.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 1
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xc86f28e5
                  li x1, 0x0
                  li x2, 0x7
                  li x3, 0xc
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x4934c610
                  li x7, 0x80000000
                  li x8, 0x8
                  li x9, 0x0
                  li x10, 0x7
                  li x11, 0xd502b21f
                  li x12, 0xb
                  li x13, 0x3
                  li x14, 0x0
                  li x15, 0x5
                  li x16, 0x4
                  li x18, 0xfd132285
                  li x19, 0xb6e4c69a
                  li x20, 0xf1162ab1
                  li x22, 0x0
                  li x23, 0xaed872fd
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x8b9fc107
                  li x27, 0xfc08b19e
                  li x28, 0xfd80a3fd
                  li x29, 0x2
                  li x30, 0x0
                  li x31, 0x80000000
                  la x21, user_stack_end
main:             la           a2, sub_3
                  sra          a3, s6, s0
                  add          t0, a4, a2
                  sll          t2, s10, a4
                  add          t5, a5, a3
                  addi         a2, a2, 941
                  bgeu         ra, s8, main_j2 #branch to jump instr
                  nop
main_j2:          jalr         t2, a2, -941 #jump main -> sub_3
                  la           tp, region_1+1893 #start riscv_load_store_rand_instr_stream_4
                  slli         zero, tp, 7
                  lh           t3, -41(tp)
                  lhu          s0, 61(tp)
                  lbu          a1, 21(tp)
                  lhu          a2, -3(tp)
                  srl          s0, zero, t1
                  lb           zero, 60(tp)
                  lbu          sp, -26(tp)
                  lb           a1, -50(tp)
                  lbu          a0, 35(tp)
                  lb           gp, -14(tp)
                  auipc        t0, 868230
                  lb           t5, 43(tp)
                  lbu          t3, 46(tp)
                  xori         t4, gp, -930
                  sra          s8, a7, t1
                  sb           a6, 16(tp)
                  sb           a7, -2(tp)
                  sb           t2, -32(tp)
                  sh           s4, 57(tp)
                  lhu          s2, -1(tp)
                  xor          s7, ra, t1
                  lb           s8, -20(tp)
                  lh           gp, 53(tp)
                  sltiu        t1, zero, 1003
                  addi         a2, t1, -1335
                  lb           t2, -29(tp)
                  sb           s8, 2(tp)
                  nop
                  lw           ra, 43(tp)
                  slli         s9, tp, 11
                  lui          s3, 1037511
                  sra          a6, s3, ra
                  sb           s2, 52(tp)
                  sb           s11, 20(tp)
                  slti         gp, s2, -1253
                  lb           ra, -20(tp)
                  xori         gp, a1, 32
                  andi         t1, a2, 1460
                  andi         s7, t6, -290
                  lb           zero, 29(tp) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_1+1004 #start riscv_load_store_rand_instr_stream_3
                  lb           a0, 19(a1)
                  lh           s8, -20(a1)
                  slli         t5, zero, 30
                  slli         tp, s10, 26
                  srli         s1, a7, 13
                  ori          t2, a3, -1971
                  srli         s10, a6, 20
                  lb           a3, -53(a1)
                  lhu          gp, 56(a1)
                  nop
                  addi         s7, t1, 570
                  lbu          s1, -19(a1)
                  lbu          s7, -47(a1)
                  add          t3, gp, s3
                  sb           s1, -45(a1)
                  sll          t1, s5, s6
                  sub          t4, a1, s8
                  srl          s6, s2, s4
                  lhu          s8, -56(a1)
                  sh           a7, -8(a1)
                  lhu          a3, 50(a1)
                  sub          zero, t5, s9
                  lb           t4, -14(a1)
                  sb           a7, -24(a1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1955 #start riscv_load_store_rand_instr_stream_2
                  slt          a1, s5, a7
                  lbu          s7, -634(sp)
                  slli         a4, t2, 23
                  sltu         s8, s9, zero
                  lhu          s0, -413(sp)
                  lhu          a6, -537(sp)
                  slli         a0, sp, 3
                  ori          zero, a3, 1167
                  sb           s0, -891(sp)
                  sra          s2, zero, s0
                  add          a2, sp, s4
                  sb           a4, -1930(sp)
                  sb           s8, -959(sp)
                  sltiu        tp, a5, 706
                  slt          gp, a4, s11
                  sra          t6, s1, ra
                  lb           a3, -1042(sp)
                  slli         tp, ra, 21
                  lb           s9, -550(sp)
                  lb           a4, -890(sp)
                  srli         t4, s7, 18
                  slt          s8, s8, a4
                  ori          s10, t6, 1586
                  xor          t5, s7, s8
                  or           t6, a4, a6
                  srli         s8, s6, 3
                  lbu          a4, -1051(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_1+982 #start riscv_load_store_rand_instr_stream_0
                  lhu          t3, 10(a1)
                  lb           s10, -6(a1)
                  sb           t6, -9(a1)
                  sub          a3, a2, s8
                  lh           zero, -12(a1)
                  lb           s6, 8(a1)
                  lb           ra, 4(a1)
                  sltiu        sp, a1, -299
                  sb           s1, -12(a1)
                  lb           t4, 15(a1)
                  lhu          sp, 2(a1)
                  and          t5, s10, a2
                  or           t1, ra, s11
                  lb           s1, -1(a1)
                  lb           a5, -3(a1)
                  sb           s9, 7(a1)
                  sb           t0, 1(a1)
                  lbu          s7, 1(a1)
                  srai         t6, s7, 11
                  auipc        a0, 535609
                  nop
                  lb           t6, 1(a1)
                  xor          s3, t1, s7
                  lb           t2, 7(a1)
                  lb           a6, 3(a1)
                  lbu          t4, -1(a1)
                  sb           s0, 2(a1)
                  lui          a5, 165032
                  lb           s8, -9(a1)
                  lb           a2, 1(a1)
                  lb           t2, 16(a1)
                  slti         t3, gp, 1193
                  sb           a3, 13(a1)
                  lb           t0, 16(a1)
                  lbu          s9, -6(a1)
                  lb           a2, 13(a1)
                  sll          t5, a7, s0
                  sll          s1, ra, ra
                  lbu          ra, -12(a1)
                  lw           s7, 14(a1)
                  sw           t0, -2(a1)
                  sb           t1, -11(a1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1673 #start riscv_load_store_rand_instr_stream_1
                  lbu          s7, 42(sp)
                  srl          s2, a6, a5
                  lui          ra, 616442
                  sb           t1, 28(sp)
                  or           s3, zero, t0
                  sb           s1, -85(sp)
                  sra          zero, s11, s0
                  lhu          a4, -37(sp)
                  nop
                  lbu          a2, 178(sp)
                  nop
                  sh           s5, 27(sp)
                  lh           t2, 89(sp)
                  lb           s1, 229(sp)
                  ori          t3, a2, 904
                  and          ra, tp, t6
                  xori         t1, s2, -297
                  auipc        s8, 303467
                  sltiu        s7, s5, 553
                  lb           t1, -222(sp)
                  addi         s0, a0, 1248
                  sll          t0, s1, s4
                  srl          gp, s2, s4
                  xor          a5, t0, a3
                  slti         t5, zero, 479
                  sb           s5, 200(sp)
                  lbu          s0, 234(sp)
                  lbu          t4, -222(sp)
                  sub          s10, t2, a5
                  sb           s0, -191(sp)
                  slli         zero, s7, 14
                  sltiu        t5, a1, 1165
                  lbu          s3, 157(sp)
                  sltiu        t4, a0, -1434
                  addi         a3, s11, -495
                  lhu          s8, 11(sp)
                  nop
                  slli         a6, s4, 11
                  addi         a0, t4, 650
                  slti         zero, sp, -123
                  sh           a1, -255(sp) #end riscv_load_store_rand_instr_stream_1
                  blt          a2, a5, 19f
                  auipc        ra, 661432
                  sltu         a4, a6, a7
                  srli         a1, sp, 30
                  ori          t4, s5, 510
                  sll          tp, s11, s6
                  and          t3, s5, t4
                  andi         tp, t6, -1546
                  slli         t5, a4, 26
                  bne          s5, t0, 23f
                  srai         gp, t6, 7
                  srli         a4, a3, 31
                  and          a1, zero, t1
                  add          s8, t1, t0
                  auipc        s9, 817104
                  auipc        ra, 203149
                  srli         s9, t3, 26
                  and          a1, gp, a2
                  bge          a6, a1, 31f
19:               bne          t4, s4, 29f
                  sltiu        s0, a4, 637
                  slti         t0, s4, 1539
                  slti         s8, a2, -652
23:               sltiu        a5, a6, 1960
                  andi         tp, t3, 1614
                  ori          s2, s7, -424
                  ori          tp, s8, 1733
                  sub          s8, a1, t2
                  add          a6, t3, t6
29:               ori          s1, t4, 1566
                  lui          a4, 1039550
31:               bne          t5, a7, 49f
                  sltu         s2, a7, a1
                  andi         a3, s5, -1301
                  bge          s8, a6, 42f
                  add          gp, s11, tp
                  xor          t0, zero, t5
                  ori          s8, t3, -1200
                  bgeu         t0, s1, 42f
                  nop
                  lui          t3, 529156
                  ori          s4, s2, 1315
42:               sltiu        s3, t1, 1165
                  slti         t2, t0, 1223
                  sll          s2, ra, s11
                  la           t0, sub_1
                  auipc        sp, 1000715
                  srl          t1, s8, s4
                  addi         t0, t0, 904
                  and          gp, a5, sp
                  auipc        a5, 675559
                  and          t4, t0, t4
                  blt          s1, s7, main_j3 #branch to jump instr
                  sub          s7, a3, t5
                  xor          a0, ra, a7
                  or           s2, a1, t1
main_j3:          jalr         t2, t0, -903 #jump main -> sub_1
                  lui          t0, 212412
                  xori         a1, s5, 1375
                  slti         ra, t3, 429
                  and          a0, s7, s4
                  and          s1, s9, s9
                  blt          s11, s9, 57f
49:               bne          s11, s11, 63f
                  addi         zero, t5, 1456
                  bltu         s0, s1, 52f
52:               nop
                  bltu         gp, t4, 63f
                  and          a0, s7, a7
                  and          s7, s2, s0
                  srli         s10, a3, 30
57:               and          a4, s1, gp
                  blt          a2, t2, 64f
                  bne          s6, s3, 63f
                  bgeu         s0, s7, 74f
                  andi         s8, a2, 1179
                  bge          t1, s9, 68f
63:               or           t3, a1, s8
64:               srl          s9, a4, a6
                  bne          t3, gp, 69f
                  and          a6, t4, gp
                  nop
68:               beq          s6, t1, 75f
69:               sltu         s6, tp, s3
                  bgeu         t5, s0, 82f
                  addi         s6, s3, 1050
                  sll          a2, a7, tp
                  ori          t1, t6, -928
74:               ori          s9, a2, -1071
75:               and          t3, s2, sp
                  addi         t1, s11, -536
                  auipc        s1, 721065
                  and          a1, s10, a4
                  beq          zero, t0, 90f
                  slti         s2, a2, -1222
                  auipc        t1, 1008617
82:               srl          s7, a3, t4
                  andi         a0, a7, -1190
                  ori          s10, t5, -844
                  bge          gp, gp, 97f
                  or           s6, s3, zero
                  xor          s4, s0, s4
                  srai         t6, ra, 3
                  xor          s7, s5, t2
90:               blt          s5, s6, 110f
                  xor          a3, ra, t2
                  srli         t0, s4, 19
                  bltu         s8, s5, 108f
                  sra          a4, a4, t6
                  srai         a6, sp, 0
                  srli         t2, gp, 23
97:               nop
                  slt          zero, s3, s3
                  lui          zero, 754910
                  sub          t5, s1, t3
                  beq          t5, t2, 109f
                  sltiu        t2, t1, 1828
                  ori          s10, a6, -739
                  or           s0, t0, s6
                  add          s3, t1, a6
                  or           s4, tp, ra
                  sll          s8, t0, a6
108:              nop
109:              slti         zero, s1, -1383
110:              sra          s9, t5, zero
                  beq          a2, t0, 115f
                  srli         a0, ra, 29
                  addi         a0, s7, 244
                  sltiu        a1, s6, -1588
115:              beq          t4, s8, 130f
                  slt          s9, s0, t1
                  andi         t6, t0, -1316
                  slti         a6, a3, -1549
                  slt          a0, ra, s0
                  sra          s4, t2, ra
                  xori         sp, t2, -444
                  andi         t4, s9, -1555
                  xor          t5, a5, s10
                  sra          t3, a7, t5
                  sll          t1, a6, s2
                  srli         s2, sp, 25
                  blt          s6, t4, 146f
                  lui          t0, 783978
                  srl          t0, ra, s6
130:              or           a3, s7, s2
                  slli         a0, t1, 25
                  lui          a6, 908885
                  sltu         a0, a4, zero
                  add          t2, s8, a4
                  nop
                  xori         t1, t5, 1138
                  bge          a6, s9, 144f
                  srli         s10, a2, 1
                  nop
                  blt          a7, s5, 146f
                  slti         s10, s7, 1823
                  nop
                  and          a1, t4, t0
144:              andi         t0, tp, -1861
                  and          s9, a2, tp
146:              bltu         t3, s10, 148f
                  lui          t1, 764577
148:              srli         s4, a3, 16
                  blt          s10, s2, 169f
                  xor          sp, tp, t4
                  bne          s11, a4, 155f
                  srl          t0, a2, t1
                  xori         t6, s8, -1263
                  or           s6, s3, sp
155:              slli         t1, s6, 9
                  slli         gp, a5, 7
                  addi         s3, a3, 1780
                  sub          a3, s9, a1
                  ori          s9, t5, 1664
                  beq          s2, s6, 164f
                  sra          a0, a2, zero
                  beq          s5, s0, 166f
                  sll          a4, s5, t0
164:              addi         tp, t4, -1710
                  andi         t0, zero, -933
166:              ori          t3, s6, -846
                  sltu         a1, ra, s6
                  and          tp, s9, s7
169:              ori          t1, t4, 1569
                  addi         s0, a2, -542
                  slti         s4, a3, -297
                  xor          gp, zero, t3
                  sra          t5, s7, sp
                  bne          s9, a4, 186f
                  bne          t2, a0, 185f
                  andi         s8, s1, 750
                  nop
                  add          s0, t2, a0
                  slti         gp, s10, -1070
                  nop
                  and          zero, a5, s7
                  blt          a1, t6, 202f
                  sll          a4, s3, t1
                  andi         s3, a2, 1752
185:              beq          t5, s9, 189f
186:              bne          s8, s1, 200f
                  srai         sp, s10, 6
                  xor          tp, s0, t4
189:              ori          a2, s5, 1855
                  xor          s1, s3, s6
                  addi         t2, t0, -1123
                  bgeu         a2, s8, 204f
                  sll          s0, s2, s6
                  srl          s9, t6, s11
                  beq          gp, a4, 208f
                  sub          a6, gp, s8
                  bne          t3, sp, 203f
                  srli         a2, a5, 29
                  bge          t5, a1, 208f
200:              xori         s0, s6, 1879
                  bltu         s6, t6, 220f
202:              sra          t2, a7, tp
203:              bne          s3, s0, 205f
204:              bgeu         s11, s1, 223f
205:              or           t4, tp, a2
                  sub          t4, a7, s1
                  add          t4, s6, a4
208:              slt          s0, a6, s9
                  sltiu        s4, a7, -1277
                  sub          t6, s2, a1
                  slt          a6, s6, a3
                  xor          t3, zero, t6
                  addi         tp, s6, -509
                  sltiu        a0, zero, -1025
                  andi         zero, gp, 1087
                  bltu         a0, s0, 224f
                  srai         s3, s6, 19
                  add          gp, a3, s0
                  lui          a2, 734258
220:              lui          s4, 285894
                  bltu         a5, a6, 227f
                  sll          s9, t3, zero
223:              addi         a2, s4, 424
224:              and          a6, s2, s6
                  ori          t1, t2, 1560
                  blt          zero, ra, 241f
227:              addi         s1, s8, -872
                  nop
                  srli         a0, a0, 16
                  bge          a1, gp, 236f
                  bgeu         zero, a0, 245f
                  ori          s3, s9, -348
                  andi         t3, t5, -1667
                  slt          s9, t4, s2
                  xori         t0, s8, -1780
236:              slt          t4, a4, t1
                  sltiu        a6, s5, 119
                  auipc        s0, 901188
                  bgeu         gp, s2, 246f
                  slli         gp, t4, 10
241:              add          s8, a7, gp
                  beq          a5, s4, 256f
                  bgeu         s2, sp, 250f
                  sll          sp, s1, zero
245:              bgeu         t0, s7, 265f
246:              lui          t5, 1043790
                  xori         a0, s7, 1896
                  nop
                  slt          s3, t5, sp
250:              blt          tp, a1, 260f
                  beq          t5, a3, 262f
                  xori         a4, s9, -709
                  xori         t2, t6, 86
                  sll          t1, t2, s0
                  nop
256:              sub          t6, s6, sp
                  lui          zero, 286858
                  add          s4, a3, t3
                  nop
260:              and          ra, t3, t0
                  srli         s8, ra, 27
262:              bltu         gp, t4, 263f
263:              nop
                  and          a6, t6, a3
265:              slli         t3, s5, 21
                  bgeu         s9, s5, 274f
                  sltiu        a0, ra, -425
                  sra          sp, s2, t0
                  sltu         a5, sp, t0
                  slti         t3, s7, 2017
                  xor          s4, t4, s10
                  blt          s3, s6, 287f
                  sltu         t3, t3, s5
274:              bltu         a6, s10, 292f
                  slt          t2, a0, tp
                  bltu         a6, t4, 280f
                  sll          s3, t3, s10
                  sub          a4, a3, t3
                  bgeu         s3, a2, 291f
280:              nop
                  and          a5, s4, s9
                  ori          s7, a6, -2038
                  xor          s9, t4, s2
                  xori         sp, s8, 415
                  sltu         t6, gp, s10
                  bge          ra, s5, 296f
287:              addi         t4, sp, -13
                  sra          zero, a7, t1
                  sub          t6, a6, a5
                  sltiu        s2, a7, -1881
291:              slli         s8, t2, 4
292:              sll          ra, gp, a1
                  or           a0, sp, a6
                  bne          s10, sp, 306f
                  srl          s9, s6, t1
296:              srai         s0, s6, 5
                  blt          a0, s5, 303f
                  bltu         t0, ra, 307f
                  bne          s7, t1, 313f
                  blt          s2, t1, 306f
                  xori         a3, t6, -1895
                  bne          s0, a2, 322f
303:              sra          a2, s2, t1
                  sltu         s0, tp, ra
                  lui          a4, 844394
306:              auipc        a1, 147873
307:              andi         t2, s0, 996
                  or           s3, a5, a4
                  xori         t1, t1, 772
                  sra          a0, s8, s4
                  add          a5, s5, s7
                  bgeu         t0, sp, 326f
313:              slt          t5, t3, a5
                  bltu         s11, a1, 327f
                  bge          s8, zero, 323f
                  ori          t2, a4, 258
                  slt          t1, s1, sp
                  addi         a1, t1, 133
                  bge          s5, a6, 329f
                  auipc        s6, 107064
                  slti         t4, gp, 872
322:              sra          s8, s11, a6
323:              nop
                  and          zero, tp, a1
                  bgeu         sp, t2, 332f
326:              bne          s7, t5, 332f
327:              lui          gp, 73268
                  srl          gp, s5, s1
329:              lui          s10, 608919
                  sra          gp, ra, t6
                  bne          s7, a0, 335f
332:              beq          t5, s2, 347f
                  slli         t6, ra, 9
                  or           a5, a0, s5
335:              bne          s7, s3, 349f
                  slli         t1, a2, 15
                  addi         a5, gp, 830
                  bge          t1, t3, 339f
339:              bne          a7, t1, 343f
                  addi         s8, gp, 373
                  slt          t3, a3, sp
                  lui          a0, 534336
343:              nop
                  add          a0, a4, a3
                  blt          a6, a5, 349f
                  nop
347:              xori         s8, s9, -1022
                  sltu         gp, sp, t4
349:              slti         s7, s3, 1876
                  srai         s1, s0, 14
                  la           a5, sub_2
                  sub          t3, s5, gp
                  auipc        zero, 103079
                  sub          t6, s4, a7
                  srl          s1, s6, t6
                  srl          ra, gp, a7
                  addi         a5, a5, -383
                  lui          t1, 12387
main_j1:          jalr         t2, a5, 384 #jump main -> sub_2
                  sltiu        s10, t3, -1295
                  sra          a3, gp, t4
                  srl          t5, t5, a2
                  bgeu         s7, s2, 368f
                  lui          t5, 841343
                  bne          a3, s8, 373f
                  add          a1, tp, t0
                  beq          s2, sp, 365f
                  blt          s10, zero, 377f
                  lui          s8, 494635
                  auipc        a2, 251501
                  beq          a4, tp, 372f
                  lui          a4, 639200
                  srl          zero, t0, s10
                  blt          zero, a4, 383f
365:              slt          s2, s0, a1
                  bltu         a7, s7, 373f
                  bltu         t6, s0, 369f
368:              bgeu         s4, a1, 388f
369:              slti         a3, a7, 799
                  slti         s6, ra, -528
                  bne          s9, s10, 390f
372:              srai         t5, s6, 31
373:              blt          a1, t4, 374f
374:              sll          gp, ra, s1
                  slli         s6, t5, 12
                  slti         a6, t6, -421
377:              sll          s10, zero, a6
                  xor          zero, gp, s10
                  bgeu         s1, a2, 393f
                  bge          s9, t4, 400f
                  xori         a5, s0, -183
                  andi         s10, t0, 1351
383:              andi         t6, t0, -1760
                  auipc        t4, 51779
                  auipc        s2, 698342
                  slli         s3, a0, 7
                  sub          a2, t1, s2
388:              bge          a1, a6, 392f
                  bge          a5, gp, 393f
390:              srl          s4, s7, s0
                  sra          s9, t2, s2
392:              lui          t5, 867184
393:              addi         a5, a2, -1374
                  sll          gp, s5, a1
                  slli         s2, a0, 27
                  sra          s3, s8, a2
                  sra          t5, gp, tp
                  auipc        a6, 37386
                  addi         a1, s9, 1203
400:              sltu         s1, t2, s0
                  xori         t0, a7, 100
                  srli         a2, a2, 25
                  srai         t6, s11, 1
                  add          ra, s9, a4
                  add          a5, a4, a3
                  slti         gp, gp, -9
                  ori          s0, a7, -2043
                  srai         a4, ra, 11
                  slli         s10, s3, 3
                  slt          t2, t6, s3
                  beq          t3, s5, 418f
                  sra          t4, s8, s1
                  bltu         t2, s11, 419f
                  slli         a5, s9, 28
                  bltu         t1, s8, 434f
                  sltiu        s2, a2, -1601
                  and          s2, gp, t2
418:              and          s3, t0, t4
419:              auipc        a5, 338187
                  blt          sp, s3, 431f
                  sltiu        t3, s5, 1673
                  blt          a5, t1, 429f
                  sll          s2, t3, s0
                  srl          t5, a6, t6
                  bgeu         zero, s5, 431f
                  sra          t2, a1, s8
                  sll          t5, sp, t2
                  la           a0, sub_1
                  addi         s9, s3, 723
                  slli         s4, a3, 20
                  add          zero, a3, t1
                  srai         s8, s2, 31
                  and          t3, t4, sp
                  addi         a0, a0, 492
                  xori         t0, s4, -191
                  srli         s10, gp, 24
                  beq          t3, s0, main_j4 #branch to jump instr
                  sltu         a5, t0, t0
main_j4:          jalr         t2, a0, -492 #jump main -> sub_1
                  andi         t2, s9, 815
                  beq          t0, t5, 438f
429:              bltu         sp, s7, 431f
                  xori         t3, s4, 554
431:              sub          a5, s3, s9
                  beq          s3, a6, 441f
                  slti         s8, s5, -346
434:              sltu         t0, a0, a6
                  ori          s1, a5, -1117
                  sub          t6, s2, s6
                  beq          s4, a5, 451f
438:              blt          ra, gp, 451f
                  beq          a1, s2, 454f
                  slt          s9, a5, t1
441:              srli         s8, a2, 6
                  nop
                  addi         a4, a6, -694
                  add          a1, s9, t1
                  nop
                  addi         tp, s5, -160
                  xori         s7, t2, 1256
                  bltu         s2, sp, 454f
                  add          t3, s8, a1
                  srli         s0, s4, 15
451:              nop
                  srli         s6, a6, 2
                  addi         a4, a6, 545
454:              auipc        a0, 642997
                  or           t2, ra, sp
                  andi         a5, t5, 533
                  nop
                  srl          s1, s7, a0
                  bne          a7, t0, 479f
                  srai         ra, s11, 11
                  slt          a5, t0, s11
                  slli         a5, t0, 14
                  sub          s3, sp, sp
                  bltu         t6, s6, 478f
                  slti         s4, t0, -1959
                  bne          zero, a2, 470f
                  addi         zero, s7, 1938
                  sll          t6, a5, a1
                  nop
470:              nop
                  bltu         a3, s6, 481f
                  slli         tp, s1, 26
                  nop
                  bne          a1, a7, 486f
                  srl          t4, a3, s10
                  srl          a4, a0, t1
                  srl          a1, sp, sp
478:              bgeu         s0, sp, 493f
479:              xor          t5, a4, zero
                  or           s1, t5, t1
481:              andi         a5, s8, 895
                  beq          s0, s0, 490f
                  xor          a2, s8, tp
                  slli         s6, gp, 2
                  ori          a6, tp, -130
486:              bltu         ra, a0, 498f
                  auipc        t2, 497972
                  slti         s6, a2, 30
                  sra          t6, ra, a3
490:              auipc        t6, 697196
                  add          a0, t4, s11
                  lui          zero, 324406
493:              bltu         a3, a3, 497f
                  sra          sp, a6, t4
                  slti         s7, t4, 146
                  or           t1, s6, gp
497:              and          t5, gp, t6
498:              xor          s3, a4, a0
                  beq          s0, tp, 507f
                  andi         s6, t1, -822
                  or           t3, s11, a5
                  nop
                  or           t4, a6, t4
                  srli         s9, sp, 16
                  blt          t5, s0, 523f
                  blt          a0, s5, 524f
507:              lui          t0, 805430
                  srai         t3, gp, 10
                  bgeu         s2, s6, 529f
                  slti         a1, s1, -546
                  or           zero, t4, s11
                  srl          s10, s8, s7
                  sltu         ra, t1, s4
                  andi         a4, a1, -1600
                  blt          s3, t5, 529f
                  blt          a7, t3, 531f
                  nop
                  sra          zero, t5, ra
                  ori          a5, a6, -645
                  and          tp, a5, s2
                  beq          s2, s7, 534f
                  slli         s10, t2, 4
523:              and          s8, zero, s0
524:              srai         t2, t2, 27
                  andi         zero, s0, -1872
                  slti         t5, zero, 1671
                  sub          t4, s10, s4
                  slli         a2, s7, 25
529:              bltu         t1, s7, 535f
                  andi         s9, s3, 1144
531:              and          a2, t4, t3
                  bgeu         ra, a0, 536f
                  srl          a5, s4, a5
534:              sltu         s8, s1, s6
535:              bltu         s11, s2, 541f
536:              beq          s10, s8, 543f
                  nop
                  and          a1, s0, a3
                  sub          s8, s1, s10
                  blt          a2, t3, 547f
541:              sll          a4, s1, s11
                  or           a2, tp, s4
543:              auipc        a5, 644384
                  sll          t4, gp, s9
                  bge          t6, s4, 549f
                  sra          s3, a3, t4
547:              srli         t0, a6, 23
                  slt          s10, ra, a2
549:              beq          zero, t1, 558f
                  sra          t2, s9, t2
                  srli         s7, zero, 3
                  ori          a6, s4, 308
                  srli         a4, sp, 10
                  slt          s2, a7, ra
                  blt          a1, s8, 561f
                  andi         s9, ra, 1518
                  srli         sp, a3, 24
558:              bltu         a5, t2, 572f
                  and          s6, t6, a2
                  ori          s1, t3, 169
561:              nop
                  ori          t2, a7, 238
                  srai         gp, t5, 14
                  slti         a2, a5, 572
                  or           t2, a2, t5
                  srli         t0, s11, 31
                  ori          t4, zero, 932
                  add          s2, t5, ra
                  srai         tp, s4, 0
                  xori         t6, t4, -560
                  bltu         s10, a3, 582f
572:              andi         s1, ra, 213
                  xor          t6, t6, s0
                  sltu         t2, a4, a7
                  add          t6, a0, tp
                  bge          t5, sp, 577f
577:              add          a0, a6, a6
                  bltu         s3, s2, 593f
                  beq          tp, t1, 599f
                  slti         a4, t6, 1367
                  slli         a4, t4, 18
582:              sltiu        s9, s0, -1569
                  slli         sp, t0, 30
                  sra          a0, t0, s7
                  bge          a3, s3, 589f
                  sltu         t2, s4, a0
                  beq          t1, t4, 599f
                  and          t5, s9, sp
589:              bne          zero, t4, 599f
                  bgeu         s9, a3, 598f
                  bge          a3, s11, 593f
                  sra          a6, a6, t6
593:              slti         s3, sp, -1669
                  blt          t5, s5, 613f
                  lui          s2, 711465
                  or           t3, a1, t3
                  bne          s7, a3, 605f
598:              srai         t3, t1, 3
599:              sra          sp, s0, s0
                  srai         s6, t5, 1
                  bne          s6, a3, 605f
                  beq          zero, a3, 621f
                  lui          tp, 1027337
                  lui          a5, 1029869
605:              blt          s7, a4, 615f
                  slli         tp, t5, 9
                  bne          t5, s10, 619f
                  blt          t3, s2, 622f
                  xori         t6, ra, -843
                  bge          s10, t1, 630f
                  sra          zero, s4, s1
                  bgeu         s3, s10, 626f
613:              nop
                  xor          a3, t2, t3
615:              auipc        a6, 590237
                  srli         s8, a1, 22
                  ori          s10, t2, 1241
                  sra          s3, a7, ra
619:              sltu         s4, ra, t6
                  and          s0, s1, t6
621:              slti         s4, t0, -1541
622:              beq          s8, gp, 639f
                  beq          s6, a1, 638f
                  and          t0, tp, a3
                  sub          a4, s5, t1
626:              bne          s1, s0, 627f
627:              bgeu         s1, ra, 639f
                  addi         s9, a3, 1378
                  slt          t1, a6, s9
630:              srl          s10, a5, s10
                  and          zero, t0, s2
                  addi         s8, a7, 964
                  srai         s2, t1, 31
                  add          s4, t1, zero
                  bne          zero, s10, 639f
                  bgeu         t4, sp, 639f
                  sra          zero, s0, s2
638:              bge          s10, a6, 639f
639:              srl          t1, gp, s1
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            sub          s0, t4, a4
                  addi         s5, s5, -16
                  slt          s10, s0, a6
                  xor          a3, s4, a6
                  and          a2, zero, s9
                  sw           t2, 4(s5)
                  srai         a4, s4, 4
                  la           sp, region_0+722 #start riscv_load_store_rand_instr_stream_1
                  srl          t0, t6, gp
                  lhu          s2, 222(sp)
                  andi         gp, a5, 1982
                  lbu          s1, 185(sp)
                  sb           s2, 1144(sp)
                  lb           s9, -317(sp)
                  ori          s4, s0, 68
                  sltu         zero, t6, sp
                  andi         s3, t0, -1632
                  sra          a6, t4, t6
                  lb           s4, -541(sp)
                  sw           s8, 138(sp)
                  sltiu        t5, a7, 1799
                  srai         t3, a7, 13
                  lh           s9, 334(sp)
                  lbu          a4, 616(sp)
                  lbu          s10, -718(sp)
                  add          t2, t4, s4
                  slt          a6, s5, a4
                  lb           tp, 1277(sp)
                  sltu         a2, a3, sp
                  add          a6, s1, ra
                  slli         s9, s6, 4
                  nop
                  lb           t2, 1141(sp)
                  nop
                  slli         tp, t2, 19
                  sw           s6, -250(sp)
                  lbu          s9, -659(sp)
                  lb           a2, 111(sp)
                  lh           s0, -464(sp)
                  nop
                  andi         s4, a4, -435
                  sub          t3, t4, t3
                  sll          t6, gp, tp
                  lb           t4, -254(sp)
                  sra          a1, a6, s3
                  sb           t0, -313(sp)
                  sb           a2, 535(sp)
                  add          t3, a4, t6
                  lb           s2, 1029(sp)
                  xori         s0, s2, 1244
                  nop
                  lbu          s8, 807(sp)
                  lw           t0, 574(sp)
                  lui          t4, 664941
                  sltiu        a2, a2, 1525
                  lbu          s4, 774(sp)
                  xori         t4, t2, 1234
                  lb           a5, -24(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+776 #start riscv_load_store_rand_instr_stream_2
                  sh           t2, 1196(sp)
                  addi         a5, a4, 239
                  lbu          s0, 947(sp)
                  sb           tp, 834(sp)
                  lb           a0, 595(sp)
                  lui          t1, 306704
                  sltiu        s8, a7, 1248
                  lb           a4, 918(sp)
                  sb           tp, 775(sp)
                  sb           gp, 849(sp)
                  sb           a2, -319(sp)
                  nop
                  lbu          t6, -218(sp)
                  sh           s1, 194(sp)
                  lb           s8, -747(sp)
                  slti         ra, s3, 1197
                  sh           gp, 1046(sp)
                  lb           a3, -223(sp)
                  lbu          s10, 345(sp)
                  sb           a5, 184(sp)
                  slti         s9, s10, -1572
                  lb           t0, -563(sp)
                  srli         a6, a2, 5
                  nop
                  sb           t2, 387(sp)
                  sw           s7, -464(sp)
                  sb           t2, 1134(sp)
                  lui          s4, 63928
                  lbu          s0, -639(sp)
                  sra          t1, t6, t4
                  srai         s6, t0, 10
                  sh           t6, 122(sp)
                  sh           s2, 364(sp)
                  or           a0, tp, t2
                  lbu          s0, 971(sp)
                  srl          t1, t0, a7
                  lb           s3, -165(sp)
                  srli         gp, s5, 26
                  slli         a4, a6, 22
                  lhu          s8, 504(sp)
                  lb           s9, 961(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         a7, s6, 9f
                  slli         s2, a3, 15
                  add          s0, s4, s0
                  sltu         a0, s4, a2
                  and          s3, a1, a1
                  beq          a6, s2, 19f
                  ori          s8, s10, -533
                  bne          t2, s7, 17f
                  nop
9:                sll          s9, ra, a7
                  srl          a6, tp, t1
                  sll          tp, s2, a5
                  addi         t0, gp, -2006
                  srai         sp, a3, 28
                  ori          t2, s9, -877
                  beq          s3, sp, 24f
                  sltu         a4, a6, s3
17:               add          gp, sp, s9
                  xor          t3, s1, s6
19:               srai         s10, s2, 25
                  beq          s1, t0, 23f
                  sltu         s4, t6, a0
                  blt          t0, t6, 29f
23:               add          a0, s9, t6
24:               lui          s10, 425794
                  slt          a2, t1, s3
                  add          s0, a3, s8
                  lui          t3, 346703
                  lui          sp, 113914
29:               or           zero, zero, a7
                  nop
                  srl          a3, s6, s5
                  srli         s6, s7, 7
                  slt          t1, a4, a3
                  bne          tp, gp, 37f
                  xori         s1, tp, -1058
                  add          t2, sp, s5
37:               sltu         ra, a3, t6
                  bne          ra, tp, 45f
                  slli         t5, s11, 1
                  add          gp, sp, t6
                  slli         tp, s0, 27
                  sltiu        s10, sp, 978
                  xori         t1, s1, -123
                  sltiu        s2, ra, -827
45:               bgeu         s1, a3, 60f
                  blt          zero, a0, 52f
                  srl          t4, s8, a2
                  srai         gp, t6, 3
                  lui          a4, 704984
                  slli         s8, t5, 16
                  lui          a5, 127800
52:               bge          a4, a2, 71f
                  add          a5, s2, s11
                  srli         a1, t3, 9
                  nop
                  slli         t5, t1, 26
                  nop
                  srl          s4, s0, t4
                  blt          s7, s4, 61f
60:               or           s8, s6, s5
61:               auipc        tp, 445031
                  and          t6, a5, s3
                  bgeu         s0, s6, 73f
                  auipc        a4, 585894
                  beq          t0, a1, 78f
                  srai         s1, a3, 17
                  bne          s10, s3, 84f
                  xori         t6, s10, -1623
                  sltiu        s8, t3, 528
                  lui          t3, 218774
71:               and          gp, t3, s10
                  slt          a4, a1, s3
73:               sltu         s3, t0, a2
                  blt          a6, a0, 90f
                  bgeu         t4, s0, 79f
                  bge          zero, t1, 88f
                  sltiu        a5, ra, 1527
78:               xori         a0, t5, 639
79:               ori          ra, ra, -415
                  sra          t1, s2, t3
                  nop
                  addi         a1, s5, 1562
                  slt          a5, t0, a1
84:               sltiu        a5, t6, -1684
                  bgeu         s6, t5, 87f
                  sub          gp, s9, a0
87:               slt          tp, t4, s4
88:               slli         s8, a4, 23
                  bge          a5, s6, 100f
90:               addi         s4, t5, 573
                  auipc        zero, 445072
                  nop
                  bne          t1, a2, 105f
                  and          a0, a6, s2
                  slli         a6, s5, 28
                  sltu         sp, t4, s2
                  sub          a2, s11, s10
                  slt          t0, sp, a7
                  or           a3, ra, s11
100:              and          s2, a7, a7
                  xori         s8, s7, 745
                  nop
                  xori         t1, gp, -1267
                  auipc        t4, 248177
105:              beq          sp, sp, 108f
                  sra          s6, s7, t2
                  bge          a3, s2, 112f
108:              xor          s7, a1, a4
                  bne          t6, t3, 110f
110:              bge          t5, t3, 122f
                  bge          sp, s2, 120f
112:              srli         s2, s7, 12
                  sub          t0, gp, s2
                  srl          ra, a1, s1
                  andi         s2, sp, 1300
                  sra          s6, t5, a7
                  nop
                  bltu         s2, t5, 121f
                  slli         s10, a7, 5
120:              auipc        t1, 708303
121:              nop
122:              or           t4, s9, s3
                  bne          t5, a1, 137f
                  addi         a6, t0, 761
                  bgeu         a5, a0, 127f
                  and          t0, s2, a2
127:              sub          ra, t0, s9
                  ori          t3, s10, 248
                  bge          s7, s4, 140f
                  xor          sp, t2, t6
                  ori          s4, s10, -450
                  slt          t4, s7, a1
                  and          gp, s5, t6
                  andi         a2, s0, -1016
                  xori         s4, s9, -331
                  sra          a2, gp, t1
137:              add          ra, a7, a3
                  bge          a6, s10, 145f
                  srli         a1, s4, 9
140:              sra          s7, t1, t3
                  lui          tp, 540691
                  sub          t4, t0, s6
                  addi         a3, s10, -708
                  or           s7, a4, a7
145:              xor          a3, t6, a3
                  addi         t4, sp, -1360
                  bltu         tp, zero, 159f
                  slt          t2, s8, gp
                  or           s8, s9, a2
                  slt          sp, ra, s8
                  sltiu        t1, tp, 1073
                  xor          s6, s2, zero
                  beq          t5, s10, 162f
                  bge          t2, ra, 168f
                  bne          t6, ra, 158f
                  la           t0, region_1+1728 #start riscv_load_store_rand_instr_stream_0
                  srl          s0, s1, a1
                  sw           a2, 16(t0)
                  ori          s9, s7, 1335
                  lbu          tp, -15(t0)
                  lbu          t3, 2(t0)
                  sb           s3, 15(t0)
                  sb           a2, -9(t0)
                  addi         s1, tp, 1725
                  xor          s9, a7, s5
                  sb           t6, -11(t0)
                  xor          ra, s1, s8
                  add          t1, s4, a1
                  srai         s9, s8, 10
                  lhu          gp, 12(t0)
                  sll          ra, s6, a2
                  sw           a3, 8(t0)
                  slli         s6, t5, 20
                  ori          s8, s2, 284
                  sh           tp, 10(t0)
                  srai         a0, s5, 31
                  sll          s10, ra, a1
                  lh           s7, 10(t0)
                  sb           s0, 14(t0)
                  sb           a1, -15(t0)
                  sb           a4, 1(t0)
                  lh           tp, 4(t0)
                  lbu          s1, -13(t0)
                  ori          s1, s6, -201
                  lb           s9, 0(t0)
                  lw           zero, 16(t0)
                  lhu          s1, 8(t0)
                  lbu          a3, 5(t0)
                  sub          t2, a5, a1
                  lb           s8, -6(t0)
                  or           s7, t6, a3
                  nop
                  srai         gp, s9, 15
                  auipc        s1, 666061
                  andi         s0, s3, 1768
                  sw           a0, 12(t0)
                  auipc        ra, 493833
                  srl          ra, sp, a5
                  lbu          a5, 14(t0)
                  or           t3, a3, t6
                  nop
                  lbu          s3, -5(t0)
                  sltiu        s3, s7, -1022
                  lbu          gp, 14(t0)
                  xori         t3, zero, -1059
                  or           s8, a6, gp
                  lbu          s9, -4(t0)
                  lui          t3, 52281
                  or           s4, zero, s1
                  sb           a2, 1(t0)
                  sb           s6, 12(t0)
                  sra          a4, s11, t4
                  sb           gp, 3(t0) #end riscv_load_store_rand_instr_stream_0
                  sltiu        zero, t0, 1535
                  bgeu         t6, a6, 166f
158:              xori         t1, ra, 1213
159:              bltu         s1, a2, 161f
                  auipc        a0, 538498
161:              srai         t3, s2, 24
162:              add          zero, a4, t5
                  sltu         zero, a2, s4
                  addi         s9, a7, 206
                  sll          s10, zero, t0
166:              nop
                  srli         s10, a3, 17
168:              sltiu        ra, t6, -1252
                  bgeu         t1, s10, 174f
                  srl          tp, s2, s9
                  bgeu         t1, t2, 182f
                  and          s8, a0, zero
                  blt          gp, s8, 183f
174:              beq          gp, s4, 178f
                  and          t3, zero, a4
                  bge          a0, s1, 188f
                  bgeu         s3, a4, 179f
178:              sub          ra, tp, s6
179:              ori          tp, s6, 869
                  slli         a3, a3, 3
                  sltu         s7, s5, sp
182:              add          s1, s11, a5
183:              lui          s2, 388824
                  sltu         t3, t2, s3
                  sltu         a0, s9, a0
                  auipc        gp, 810586
                  slti         s0, gp, -62
188:              sltiu        ra, a4, -275
                  bne          s9, s2, 192f
                  addi         gp, s11, -783
                  bne          s4, s3, 194f
192:              beq          a7, s3, 193f
193:              auipc        s6, 1014050
194:              sll          a4, t3, ra
                  andi         s6, a3, -1947
                  slt          t1, a3, a3
                  xor          s2, a5, t6
                  srai         sp, s11, 1
                  slt          a5, a0, s1
                  nop
                  addi         s7, t4, -1049
                  auipc        t4, 945065
                  sll          s1, a6, a6
                  sltu         s0, s3, t0
                  lui          sp, 558835
                  sub          s1, ra, a0
                  sra          gp, ra, a5
                  slt          t6, t0, a1
                  srl          s8, t4, s5
                  sll          s4, s5, a4
                  blt          a4, t6, 223f
                  bne          a4, t1, 229f
                  auipc        tp, 898536
                  blt          s1, s9, 224f
                  add          t1, s7, a6
                  xor          zero, s8, a6
                  ori          t5, s3, 1038
                  slti         a3, t2, -438
                  sub          s0, s2, a1
                  sub          sp, a1, a5
                  lui          s4, 919370
                  sltiu        s8, s7, -717
223:              slti         t6, s6, 1423
224:              add          a2, s10, t3
                  bne          t3, t4, 236f
                  sltu         a6, ra, s2
                  sltiu        s0, gp, 989
                  or           s9, t1, s2
229:              bne          s1, t1, 248f
                  bltu         s1, t3, 239f
                  blt          s1, ra, 238f
                  bge          zero, a5, 246f
                  lui          t2, 291356
                  srli         ra, s5, 4
                  srli         s9, t6, 12
236:              lui          s2, 782924
                  sltu         ra, s9, a5
238:              add          s6, t5, a2
239:              beq          t5, s3, 242f
                  auipc        s2, 28251
                  bne          a5, s3, 257f
242:              bge          s1, a1, 244f
                  bltu         t1, s6, 258f
244:              nop
                  sltu         t2, s8, sp
246:              srli         t1, t5, 11
                  srl          a6, s10, s11
248:              andi         a4, a0, -611
                  add          t0, s5, gp
                  ori          t0, s1, -553
                  srli         s9, s5, 18
                  bge          a0, s0, 258f
                  bne          gp, s10, 266f
                  srai         a4, t3, 11
                  srai         t4, s8, 15
                  beq          sp, tp, 267f
257:              srai         zero, t1, 6
258:              ori          a5, t1, -1619
                  blt          s5, a6, 275f
                  addi         t4, s9, 1483
                  beq          t1, a1, 270f
                  srl          s0, t2, a5
                  bge          t4, s11, 269f
                  blt          s11, a6, 283f
                  bne          ra, s10, 277f
266:              ori          s1, t0, -2024
267:              srl          t4, s9, s11
                  srai         a2, s11, 28
269:              bltu         a2, t1, 271f
270:              auipc        s3, 232894
271:              srli         tp, s11, 16
                  add          a5, s4, s4
                  nop
                  or           s8, s6, t3
275:              sub          s8, t0, a1
                  ori          a4, s2, -957
277:              blt          tp, tp, 287f
                  srl          a2, sp, a2
                  slli         zero, a1, 5
                  srli         ra, a4, 19
                  ori          s0, t2, 736
                  nop
283:              lui          s3, 39398
                  sra          s2, ra, s4
                  blt          t6, a1, 296f
                  and          s3, tp, a0
287:              slti         t3, s10, 1071
                  sll          a2, a6, s10
                  lui          s8, 366595
                  andi         s0, s11, 589
                  slti         gp, s7, 444
                  beq          a0, s10, 309f
                  bge          s9, t5, 300f
                  blt          s4, ra, 297f
                  sub          t6, a3, s10
296:              blt          s3, a5, 299f
297:              slt          s8, s8, zero
                  andi         s4, ra, -1585
299:              xori         t0, s5, 528
300:              auipc        s9, 783194
                  sltu         t1, t4, s2
                  slli         a2, t2, 8
                  beq          tp, a4, 317f
                  add          a3, t1, s8
                  andi         t2, t5, 1627
                  andi         a0, t6, 1492
                  and          s7, t0, t1
                  auipc        ra, 322037
309:              andi         s6, a6, 727
                  ori          t1, t5, -1692
                  andi         s0, gp, -800
                  slt          s1, t6, s11
                  xor          sp, t1, a6
                  xor          t2, t6, t4
                  bge          a1, a3, 316f
316:              ori          t3, a7, 467
317:              sra          t2, s8, s1
                  slt          s10, t5, s8
                  nop
                  lui          gp, 498133
                  beq          s1, a5, 331f
                  or           a2, s8, a0
                  sub          s7, t0, t0
                  ori          a2, t4, 252
                  slli         s0, a0, 13
                  bne          s10, t6, 338f
                  srai         t1, s8, 21
                  bgeu         s1, s5, 333f
                  andi         a0, t4, 1342
                  andi         a4, s5, -1215
331:              srai         ra, s2, 2
                  sll          a6, a5, a2
333:              addi         a4, s10, -1177
                  srl          t6, gp, s10
                  sub          a6, s3, s0
                  ori          a1, tp, -1973
                  srli         s2, a3, 11
338:              sll          t4, s8, sp
                  sltu         a5, ra, s3
                  srai         a4, a4, 15
                  beq          s0, a0, 355f
                  bltu         s1, a5, 344f
                  or           s2, a5, s11
344:              srli         a3, s3, 27
                  bltu         s5, ra, 354f
                  sll          a4, a2, a7
                  sll          s6, ra, t1
                  sll          s10, a6, tp
                  and          zero, s4, a7
                  addi         a2, gp, 1458
                  bne          s8, t3, 364f
                  bne          s11, tp, 354f
                  sltu         tp, s5, a5
354:              sra          gp, a1, s2
355:              bgeu         sp, s0, 358f
                  blt          s0, s10, 371f
                  xori         s1, t1, -252
358:              lui          t5, 609602
                  ori          t2, t5, 964
                  bltu         sp, s1, 369f
                  ori          tp, s2, 653
                  and          s4, gp, t5
                  bltu         s4, sp, 366f
364:              sll          a1, a3, sp
                  bne          a5, s11, 377f
366:              or           s10, s5, s2
                  slt          s8, s1, s5
                  lui          s1, 991235
369:              add          gp, s2, a4
                  srl          t6, s1, s10
371:              xor          t2, ra, t0
                  ori          s1, t2, 845
                  nop
                  slli         t0, t2, 7
                  slli         a2, s6, 20
                  bne          a2, s3, 383f
377:              srl          a4, a1, s8
                  bltu         a7, s2, 382f
                  srai         s2, a2, 2
                  slli         s7, s11, 0
                  bge          t3, ra, 394f
382:              andi         s4, s10, 1253
383:              add          t0, s2, t4
                  sltu         s10, t6, t3
                  srli         s0, t3, 22
                  auipc        s9, 121219
                  xori         s0, s10, -1314
                  slli         a6, a5, 8
                  xori         t0, s8, -717
                  ori          t1, s6, 849
                  bge          a6, a3, 392f
392:              xor          t0, sp, s8
                  srli         s6, s1, 1
394:              slt          zero, t3, t3
                  lui          s10, 303374
                  beq          t3, zero, 398f
                  ori          s0, t0, -1174
398:              sltu         tp, ra, a7
                  xori         t4, sp, 882
                  sll          a4, a1, a1
                  nop
                  slli         s8, s9, 8
                  nop
                  auipc        a5, 795059
                  srl          t1, a0, gp
                  xor          a6, a6, s10
                  auipc        s9, 811029
                  bge          t2, tp, 423f
                  sltiu        s6, s10, 236
                  lui          t1, 730445
                  auipc        s9, 859289
                  sra          t0, zero, tp
                  slt          a5, s5, a1
                  bne          s3, s10, 424f
                  xori         s0, zero, -1491
                  auipc        t3, 792415
                  andi         t5, s8, -391
                  bltu         a2, s8, 427f
                  beq          a2, s3, 424f
                  or           zero, t2, t3
                  bne          t3, t6, 438f
                  auipc        s0, 665823
423:              beq          s0, s6, 432f
424:              beq          t6, s0, 430f
                  srli         tp, s11, 18
                  srai         s10, a0, 3
427:              add          t1, s6, zero
                  bgeu         s4, gp, 431f
                  sub          a1, s10, gp
430:              or           a3, s7, tp
431:              sltiu        s7, s6, 505
432:              add          s6, s10, a4
                  or           t0, t3, s5
                  addi         sp, zero, 814
                  xori         s8, s0, 324
                  and          a5, gp, t5
                  ori          s4, gp, -145
438:              slli         a5, ra, 8
                  sra          t5, s6, gp
                  slli         zero, s8, 16
                  bgeu         zero, tp, 453f
                  sub          t4, zero, s3
                  bltu         t2, a7, 450f
                  bgeu         t5, a1, 448f
                  sll          t4, s10, t2
                  slli         zero, t0, 26
                  beq          s5, s10, 454f
448:              or           tp, sp, t3
                  srai         t1, s2, 24
450:              xori         a4, a4, 198
                  and          t2, a6, a5
                  addi         a4, s1, 143
453:              xori         sp, a2, 1654
454:              sltiu        s0, a1, -1099
                  sra          s6, ra, t5
                  sltu         zero, ra, t1
                  bgeu         a1, a4, 469f
                  sll          t4, gp, a3
                  add          s2, s11, s4
                  sra          a6, tp, t6
                  srl          t6, gp, ra
                  xor          t3, s3, s6
                  beq          gp, a3, 466f
                  bne          s2, t1, 466f
                  sra          a2, gp, s5
466:              slli         a5, s4, 13
                  sll          t4, t6, gp
                  nop
469:              nop
                  bne          s7, s3, 473f
                  ori          t0, a4, -689
                  beq          s11, s10, 475f
473:              xor          sp, zero, a0
                  lui          t5, 722721
475:              sub          a2, a0, a7
                  and          s1, tp, t2
                  srai         t4, zero, 18
                  addi         zero, s0, 851
                  bltu         t6, t4, 486f
                  or           t4, t3, gp
                  slli         t6, t1, 23
                  bne          ra, t1, 486f
                  bge          t6, s0, 486f
                  bgeu         s8, a2, 486f
                  sltiu        a4, a4, -475
486:              slti         zero, a0, -82
                  srli         a6, a7, 23
                  add          s2, s0, t1
                  lw           t2, 4(s5)
                  or           t4, t5, a1
                  sltu         s1, a0, s4
                  xori         s6, t3, 1708
                  addi         s5, s5, 16
                  srl          s8, s6, s7
653:              addi x22, x7, 1
653:              jalr x22, x22, 0
sub_2:            nop
                  bgeu         ra, t6, sub_2_stack_p
sub_2_stack_p:    addi         s5, s5, -36
                  sw           t2, 4(s5)
                  auipc        s10, 11697
                  sra          sp, a6, t5
                  srl          t3, s10, s11
                  slti         s10, gp, 1618
                  la           t3, region_0+1230 #start riscv_load_store_rand_instr_stream_13
                  auipc        s6, 380276
                  srl          s0, a5, gp
                  lhu          t2, -12(t3)
                  sra          a0, t3, sp
                  add          a1, t2, zero
                  sltiu        gp, s1, 1793
                  sh           gp, 0(t3)
                  lb           s8, 10(t3)
                  auipc        tp, 104830
                  xor          t4, t4, t3
                  srai         t1, s10, 28
                  sra          a5, s6, t1
                  slli         s9, sp, 31
                  lbu          s10, 4(t3)
                  lbu          t5, -16(t3)
                  sll          a2, t0, t3
                  lbu          t2, 2(t3)
                  xori         s0, a1, 18
                  sb           s9, 3(t3)
                  xor          s9, s1, tp
                  andi         a5, s5, -1179
                  andi         s1, zero, -1192
                  sltu         a6, s4, a4
                  and          s2, a6, s1
                  srl          t6, s6, a7
                  add          t0, a2, t4
                  and          sp, s7, tp
                  addi         s10, t4, 445
                  slt          a3, s8, s10
                  slti         s3, s5, -767
                  lhu          s4, -2(t3)
                  lbu          t5, -9(t3)
                  sltiu        ra, sp, 888
                  srai         s0, s7, 22
                  sll          t1, a3, s3
                  lbu          t5, 1(t3) #end riscv_load_store_rand_instr_stream_13
                  la           gp, region_1+1584 #start riscv_load_store_rand_instr_stream_0
                  add          t6, s8, a6
                  lb           zero, -1349(gp)
                  srai         a1, t5, 5
                  sh           a0, -1158(gp)
                  sltu         ra, a0, zero
                  sb           t5, -871(gp)
                  lh           zero, -1250(gp)
                  add          t2, s11, t6
                  sub          zero, s10, s10
                  sb           a7, -175(gp)
                  lbu          s3, -976(gp)
                  add          t0, t0, t1
                  sh           t6, 122(gp)
                  xor          tp, s6, t2
                  sb           a1, -587(gp)
                  and          s7, s8, a2
                  sll          t4, t6, ra
                  lb           s7, -1392(gp)
                  lbu          a2, -1469(gp)
                  lhu          t3, -676(gp)
                  sb           s2, -15(gp)
                  srai         s9, s10, 23
                  lb           s0, -314(gp)
                  xor          t6, t5, t4
                  add          s9, zero, ra
                  lw           t5, -524(gp)
                  lbu          a2, 143(gp)
                  lbu          s10, 374(gp)
                  lh           t3, -52(gp)
                  lhu          s6, -1424(gp)
                  sll          s6, t0, a6
                  sb           a2, -134(gp)
                  slli         a3, a4, 27
                  lb           t3, -1279(gp)
                  slt          a2, t1, t1
                  sb           tp, -56(gp)
                  lb           s6, -365(gp)
                  lhu          zero, -1546(gp)
                  lb           t1, -1570(gp)
                  lbu          t6, -193(gp)
                  auipc        t4, 686587
                  lhu          s3, -1178(gp)
                  lbu          a0, -1369(gp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1085 #start riscv_load_store_rand_instr_stream_5
                  sltiu        s2, s11, 743
                  lbu          s10, -16(sp)
                  andi         a4, s6, 1451
                  xor          t5, t1, gp
                  andi         s2, s8, -1246
                  lhu          tp, 3(sp)
                  ori          t4, t1, 656
                  sra          s1, s5, s3
                  srl          zero, t4, s11
                  lb           t0, 9(sp)
                  sb           s7, -15(sp)
                  lb           s8, -4(sp)
                  sb           t4, 14(sp)
                  sra          t5, s3, a0
                  slti         a2, s0, -1139
                  lb           s3, 14(sp)
                  lbu          s2, -10(sp)
                  lbu          s4, -2(sp)
                  srai         tp, s8, 27
                  sb           a0, 9(sp)
                  srl          a5, s2, s5
                  ori          s8, a1, 1893
                  addi         s4, s10, -1294
                  slt          a2, sp, zero
                  sll          t6, s8, s9
                  sltu         t1, s3, a2
                  lb           s0, 15(sp)
                  sb           t5, -7(sp)
                  lbu          t1, -13(sp)
                  sb           a6, -14(sp)
                  add          a2, s10, t1
                  lbu          t4, -7(sp)
                  sltiu        t0, t5, 1923
                  and          zero, s2, s4
                  and          s8, tp, t0
                  sra          t6, a7, a2
                  slti         s10, t0, -1604
                  slt          a3, s2, s2
                  srli         a2, a2, 27
                  srli         s0, t5, 30
                  lhu          t1, 15(sp)
                  lb           s9, -2(sp)
                  lbu          a6, -5(sp)
                  lb           s9, 10(sp)
                  srai         s4, t4, 30
                  lb           gp, 1(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s10, region_0+1116 #start riscv_load_store_rand_instr_stream_6
                  sub          t6, s1, a0
                  sra          a5, t3, t4
                  sb           t3, -735(s10)
                  sltiu        a4, s4, 726
                  sra          s4, t1, s3
                  lbu          tp, -669(s10)
                  sb           s4, -889(s10)
                  sb           tp, -1(s10)
                  xor          a3, t6, zero
                  lb           s1, 835(s10)
                  sb           t2, 9(s10)
                  sb           a2, 743(s10)
                  lb           s4, -1052(s10)
                  addi         a1, t2, 1254
                  lb           tp, -849(s10)
                  srl          ra, t3, ra
                  sw           t3, 780(s10)
                  xor          tp, t5, a3
                  sra          a1, t5, tp
                  lb           a2, 644(s10)
                  sltu         t3, s7, s10
                  auipc        a3, 888045
                  sb           s11, -152(s10) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1163 #start riscv_load_store_rand_instr_stream_19
                  sltu         s2, ra, a0
                  lbu          t5, 23(sp)
                  add          t6, s4, s5
                  or           s8, s3, s0
                  slli         s9, a3, 19
                  sll          a6, s1, a5
                  lui          ra, 596025
                  srai         tp, s2, 16
                  sb           ra, 184(sp)
                  lb           t1, 712(sp)
                  srli         gp, t3, 3
                  srai         a1, s0, 1
                  lb           t6, 39(sp)
                  or           t4, a1, s6
                  sb           s1, 204(sp)
                  nop
                  sb           a4, 747(sp)
                  nop
                  srai         t2, s1, 16
                  sb           a2, -404(sp)
                  sub          a3, sp, t1
                  andi         ra, s3, 1213
                  addi         gp, s5, 1077
                  lhu          t2, -693(sp)
                  ori          s4, t0, 989
                  add          t4, s5, a5
                  srli         a1, s4, 2
                  sb           t2, -399(sp)
                  lbu          a6, 204(sp)
                  slti         a6, s6, -1949
                  lb           a4, 436(sp)
                  sw           t1, 433(sp)
                  lb           t1, -566(sp)
                  lb           a4, -188(sp)
                  xori         a4, s6, 1618
                  sw           a0, 425(sp)
                  nop
                  lhu          zero, -601(sp) #end riscv_load_store_rand_instr_stream_19
                  la           sp, region_1+490 #start riscv_load_store_rand_instr_stream_9
                  lbu          tp, -188(sp)
                  addi         t2, a5, 1842
                  xori         t0, t2, 1157
                  slli         s3, t2, 17
                  srl          s10, s8, t4
                  sh           s3, 58(sp)
                  nop
                  lbu          ra, 2(sp)
                  lbu          t3, -169(sp)
                  lbu          t2, 213(sp)
                  lb           s4, 90(sp)
                  lb           a0, -130(sp)
                  andi         gp, s7, -754
                  slt          a3, s0, s8
                  lb           t0, 67(sp)
                  sb           t6, 127(sp)
                  lb           s1, -191(sp)
                  lbu          a1, 173(sp)
                  lb           a1, -96(sp)
                  lbu          a2, -126(sp)
                  auipc        s7, 685560
                  lh           a6, 128(sp)
                  slt          tp, s8, a4
                  lw           s3, 114(sp)
                  lb           ra, -155(sp)
                  slli         s8, s9, 8
                  sltiu        s3, s4, -1265
                  lbu          tp, -17(sp)
                  andi         t0, t3, -1414
                  lbu          a6, -141(sp)
                  lbu          t3, -120(sp)
                  lw           t5, -94(sp)
                  lbu          a5, 36(sp)
                  lb           gp, -160(sp)
                  auipc        t5, 862203
                  auipc        s4, 423003
                  sb           s9, 23(sp)
                  lbu          gp, 113(sp)
                  slti         gp, a0, -476
                  sb           s5, 3(sp)
                  sub          t2, s6, s11
                  sub          a4, t5, a2
                  sll          a4, s8, s0
                  addi         t5, t3, -1462
                  lbu          t6, 93(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s3, region_0+324 #start riscv_load_store_rand_instr_stream_16
                  sll          a1, s5, a0
                  addi         a4, s3, -480
                  lh           s1, -10(s3)
                  nop
                  sb           s3, 14(s3)
                  sb           a7, 16(s3)
                  lhu          a2, 16(s3)
                  add          gp, sp, a4
                  lw           a1, 0(s3)
                  lb           t4, -4(s3)
                  sltu         s4, s10, s2
                  srai         s4, s1, 7
                  slti         a1, s8, 1795
                  lui          s2, 937464
                  sb           a0, 5(s3)
                  xori         gp, s0, -1140
                  lbu          s6, -15(s3)
                  ori          a4, a2, 99
                  sll          a6, t1, sp
                  sb           s0, 1(s3)
                  and          a3, s10, s4
                  lh           s0, 6(s3)
                  lui          t4, 289642
                  lb           s1, 0(s3)
                  sb           s4, -11(s3)
                  add          ra, a5, a6
                  sltiu        s2, ra, -66
                  lh           a3, 6(s3)
                  andi         s7, a2, 750
                  lbu          s4, -16(s3)
                  lbu          s10, 11(s3)
                  sh           s5, -2(s3)
                  sh           s6, -10(s3) #end riscv_load_store_rand_instr_stream_16
                  la           s6, region_0+1434 #start riscv_load_store_rand_instr_stream_8
                  add          t0, a7, a3
                  lb           t2, 57(s6)
                  lhu          a0, -58(s6)
                  nop
                  lw           t5, 14(s6)
                  sb           s8, -34(s6)
                  auipc        s8, 655848
                  nop
                  lhu          t4, -40(s6)
                  sb           ra, 3(s6)
                  slli         t0, sp, 19
                  auipc        s2, 109028
                  sra          t4, s0, s10
                  sb           s4, -45(s6)
                  andi         a2, s9, -1315
                  sltiu        a0, a0, -1150
                  slti         gp, s5, 1816
                  lb           a4, 47(s6)
                  sb           t0, 35(s6)
                  lbu          tp, -47(s6)
                  sra          t0, t4, t4
                  slli         s8, s4, 6
                  sb           gp, 25(s6)
                  srl          tp, t1, s8
                  lui          t4, 781216
                  sb           s4, -40(s6)
                  sra          t1, zero, t4
                  lh           sp, -38(s6)
                  lhu          tp, -36(s6)
                  sb           s8, 10(s6)
                  sll          a2, s9, a1
                  lui          a5, 56652
                  lbu          t6, -43(s6)
                  lbu          gp, 12(s6)
                  srli         s4, t6, 21
                  slti         s3, s3, -1481
                  lb           t5, -61(s6) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+448 #start riscv_load_store_rand_instr_stream_4
                  sh           s5, 814(sp)
                  lb           s1, 686(sp)
                  lbu          s2, 417(sp)
                  sltu         gp, ra, sp
                  xori         t6, s8, 1580
                  lb           s1, -123(sp)
                  lui          a5, 77197
                  lb           s2, -147(sp)
                  srai         s7, tp, 15
                  sb           t2, 1228(sp)
                  xor          s6, a4, t1
                  sb           s0, 1055(sp)
                  sb           a5, -125(sp)
                  lbu          a1, 1057(sp)
                  sw           t4, -368(sp)
                  lhu          s1, 1228(sp)
                  sw           a3, 804(sp)
                  slti         gp, s7, -1560
                  sb           s8, -122(sp)
                  xor          s6, zero, a4
                  sltiu        a6, s8, 42
                  lh           t0, -82(sp)
                  lhu          gp, 808(sp)
                  addi         ra, ra, 886
                  lbu          s6, 465(sp)
                  lbu          t0, 603(sp)
                  lbu          t4, 525(sp)
                  lb           s3, -66(sp)
                  sltiu        t1, t2, -1123
                  lb           s6, 129(sp)
                  lbu          s3, -113(sp)
                  sb           a0, 453(sp)
                  xori         t4, s1, -888
                  sw           tp, 1304(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_1+1162 #start riscv_load_store_rand_instr_stream_12
                  sb           s9, 7(s10)
                  sll          t1, t2, t3
                  sb           ra, -15(s10)
                  lhu          a3, -12(s10)
                  and          a4, a4, s1
                  xori         a0, a3, 1455
                  auipc        a0, 906368
                  sb           gp, 11(s10)
                  nop
                  sll          gp, s11, s11
                  lb           tp, 9(s10)
                  lb           s9, -13(s10)
                  sw           s6, -2(s10)
                  sb           gp, 12(s10)
                  sb           s5, -3(s10)
                  andi         a0, a7, -1050
                  and          ra, t1, ra
                  lbu          s8, -15(s10)
                  sh           t0, -16(s10)
                  sltu         a0, a7, t0
                  sltiu        zero, s3, -1627
                  sub          s2, s2, a6
                  sltiu        s0, s10, -169
                  lhu          t5, 12(s10)
                  and          s0, s11, s10
                  lbu          s4, -15(s10)
                  lh           a2, -14(s10)
                  sb           s2, 13(s10)
                  srai         s1, s11, 2
                  slti         s1, t0, -682
                  lb           a4, -9(s10)
                  lbu          t0, -10(s10)
                  lbu          t4, -15(s10)
                  sh           s10, 16(s10)
                  lbu          a2, -9(s10)
                  ori          t2, ra, 2006
                  xor          zero, s10, sp
                  lui          a1, 597075
                  or           t6, a6, s5
                  sw           s4, 6(s10)
                  lhu          s4, 16(s10)
                  addi         s9, s3, -1071
                  ori          tp, a3, 1501
                  add          ra, a1, t0
                  andi         a1, t1, -1076
                  srai         s8, gp, 22
                  lhu          s1, 0(s10)
                  sll          a4, t2, s8
                  add          t3, t3, s1
                  slti         s7, s5, 1580
                  sb           t0, -7(s10) #end riscv_load_store_rand_instr_stream_12
                  la           s9, region_1+10 #start riscv_load_store_rand_instr_stream_17
                  lbu          t3, 389(s9)
                  sb           t2, 382(s9)
                  xor          a6, a2, t3
                  slt          a4, s10, a1
                  srai         a4, s5, 8
                  sltu         s6, a0, t1
                  sltu         gp, a1, ra
                  slli         s3, s5, 6
                  auipc        s4, 774719
                  auipc        zero, 289131
                  auipc        a3, 240189
                  nop
                  sll          s2, s1, a4
                  srli         t1, a7, 4
                  andi         t1, a3, 1500
                  andi         a6, t1, 1171
                  lbu          t4, 1401(s9)
                  andi         s0, t3, 1871
                  xor          tp, s8, s6
                  lb           a3, 1117(s9)
                  sb           tp, 1327(s9)
                  add          s0, t6, s10
                  xori         s6, gp, -328
                  add          a1, s7, s2
                  or           ra, t0, t6
                  srai         s0, a3, 5
                  srl          s7, t2, s4
                  sb           s10, 480(s9)
                  sb           s6, 70(s9)
                  lb           s10, 1507(s9)
                  srai         sp, s3, 22
                  slti         t1, gp, 963
                  lh           a0, 732(s9)
                  lh           a1, 1128(s9)
                  srli         s0, s9, 16
                  and          s6, t3, s7
                  lb           s6, 1603(s9)
                  sh           t3, 1076(s9) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_0+1463 #start riscv_load_store_rand_instr_stream_1
                  srai         t5, a3, 3
                  sub          s3, s8, a0
                  ori          s4, a1, 1039
                  lb           t0, -46(sp)
                  sub          t6, s7, t4
                  lbu          zero, -10(sp)
                  lb           t1, 60(sp)
                  sh           t1, 15(sp)
                  xor          gp, tp, a6
                  andi         t5, s7, 1729
                  srl          a2, a4, t1
                  ori          tp, s7, -1908
                  srai         s4, t3, 3
                  sra          a5, a3, ra
                  and          t4, a3, s9
                  sll          s3, t3, a5
                  srli         gp, s7, 25
                  ori          zero, zero, -492
                  ori          zero, s6, -472
                  srl          tp, s10, t5
                  srl          a5, s6, a4
                  lui          s3, 409211
                  lb           a3, 60(sp)
                  add          s2, ra, sp
                  lbu          a1, -10(sp)
                  auipc        s8, 402831
                  sb           s8, -12(sp)
                  xor          t6, a7, a3
                  srli         a6, t4, 28
                  lw           a3, 37(sp)
                  and          a0, s3, gp
                  sltu         a5, t1, t0
                  srli         t6, s6, 24
                  lbu          t4, -47(sp)
                  auipc        s9, 831579
                  slli         t0, t0, 4
                  slt          s9, sp, t0
                  lb           tp, 35(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1277 #start riscv_load_store_rand_instr_stream_15
                  addi         gp, a2, -1783
                  lhu          t5, 143(sp)
                  sw           s0, 123(sp)
                  srl          a2, s7, a2
                  slli         s4, s11, 29
                  lbu          t2, 201(sp)
                  sh           t0, 41(sp)
                  srli         t1, s11, 0
                  srai         t2, a2, 29
                  slli         a4, s3, 3
                  sub          t4, t3, s5
                  slt          s8, t6, t5
                  lbu          t0, -110(sp)
                  lb           t1, 246(sp)
                  sra          a1, a2, t1
                  lbu          s1, 10(sp)
                  sub          t4, s10, a3
                  lbu          a4, -223(sp)
                  sb           s2, -26(sp)
                  lbu          s10, 170(sp)
                  srl          s9, gp, s9
                  xori         a1, s7, -735
                  sb           s5, -252(sp)
                  lb           t4, -212(sp)
                  sub          s2, s9, s5
                  srai         tp, s3, 4
                  add          tp, a2, zero
                  or           s1, s10, s1
                  lb           a0, -77(sp)
                  andi         a3, s9, 713
                  sltu         s2, tp, s9
                  slti         gp, a0, -1700
                  ori          a1, a0, 731
                  lw           a6, 211(sp)
                  ori          tp, s2, -1137
                  lbu          a4, -113(sp) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_1+906 #start riscv_load_store_rand_instr_stream_14
                  sub          t0, a7, t4
                  lb           a3, -205(sp)
                  slti         a2, s3, -1319
                  lbu          s7, -42(sp)
                  lb           s3, -127(sp)
                  slt          tp, s4, zero
                  xori         t6, t1, -1893
                  srl          t1, s11, t6
                  sw           zero, 1034(sp)
                  sh           t5, 960(sp)
                  sub          ra, a4, t1
                  lw           s6, 514(sp)
                  lb           t2, 255(sp)
                  sltu         a5, sp, s9
                  or           zero, s8, a2
                  xori         a3, s8, 428
                  lbu          s0, -683(sp)
                  lb           a1, -628(sp)
                  sb           s2, 164(sp)
                  sltu         gp, a1, s7
                  sh           s4, -420(sp)
                  lb           t0, 365(sp)
                  lbu          s9, 416(sp)
                  lb           s1, -377(sp)
                  lbu          s2, -135(sp)
                  sb           t5, -649(sp)
                  add          t0, s4, a6
                  slti         ra, s6, -1445
                  lb           tp, 937(sp)
                  andi         a3, s11, -1164
                  lbu          t5, 143(sp)
                  xor          s4, sp, s1
                  lb           s6, 803(sp)
                  andi         s10, t1, -1927
                  lb           a1, 87(sp) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+612 #start riscv_load_store_rand_instr_stream_7
                  sra          s1, s4, s6
                  sb           s2, 15(sp)
                  sh           a2, 10(sp)
                  auipc        a2, 308780
                  lh           t0, -14(sp)
                  sh           a2, 6(sp)
                  or           t2, t4, s2
                  sra          t5, s7, a0
                  lbu          t6, 1(sp)
                  xori         s8, a2, 1125
                  or           zero, s7, a7
                  ori          s3, gp, -290
                  sub          s0, s7, a7
                  ori          s0, zero, -1279
                  lui          a2, 831023
                  lb           t3, -12(sp)
                  lb           ra, -15(sp)
                  sltu         zero, a2, t1
                  lhu          s8, 16(sp)
                  lhu          s10, 6(sp)
                  lui          s8, 857309
                  sh           t1, 12(sp)
                  lh           gp, -16(sp)
                  lui          s2, 41075
                  xor          t6, a3, t4
                  lbu          s3, -13(sp)
                  lw           s3, 0(sp)
                  slt          t1, t1, ra
                  lhu          s0, -12(sp) #end riscv_load_store_rand_instr_stream_7
                  andi         t6, a2, 1958
                  nop
                  ori          t3, s3, -919
                  bltu         s5, t2, 14f
                  and          s6, t6, gp
                  srli         a4, a6, 6
                  ori          a6, a3, -1587
                  xor          a6, s1, a7
                  addi         s7, a1, 1138
                  add          s1, a6, s4
                  srli         t5, t0, 3
                  slti         gp, t6, -38
                  lui          s2, 537961
                  addi         gp, t1, -262
14:               nop
                  add          a0, s3, s6
                  xor          a1, zero, a2
                  ori          a0, t4, 269
                  nop
                  or           t5, a0, gp
                  or           s9, a4, a1
                  bne          s9, zero, 38f
                  srli         t0, s5, 13
                  add          s9, a1, a5
                  bltu         t5, a6, 29f
                  blt          t3, t0, 39f
                  lui          a4, 543463
                  sll          t3, a0, s10
                  lui          a2, 880355
29:               blt          s2, s8, 33f
                  bgeu         s6, s4, 34f
                  sltu         s9, t0, s0
                  beq          a3, s3, 45f
33:               or           t2, s8, zero
34:               xori         s3, a1, 1008
                  addi         s9, t1, 464
                  sll          s4, s2, a1
                  addi         s3, s9, -1289
38:               sltu         s3, gp, s5
39:               add          gp, s5, a6
                  sltiu        s8, a1, -1481
                  add          gp, s2, t6
                  bne          s5, zero, 53f
                  sll          s3, t6, s2
                  add          zero, s9, a1
45:               sra          a4, s11, s5
                  sra          ra, s1, s9
                  xori         a5, sp, -1609
                  bne          t0, t6, 54f
                  sltiu        a5, s8, 698
                  sll          zero, s7, a2
                  addi         a3, s0, -187
                  beq          t4, a3, 68f
53:               slt          tp, a0, s7
54:               bne          a4, tp, 70f
                  srai         t3, s1, 25
                  add          t1, t2, ra
                  slt          ra, s11, ra
                  or           s1, s6, s3
                  addi         s8, a3, 335
                  xor          s10, s3, sp
                  sub          t6, t4, s4
                  blt          s10, tp, 66f
                  lui          a4, 400445
                  srai         t0, t4, 26
                  blt          s1, s11, 82f
66:               bge          a0, a5, 75f
                  sltu         a4, a7, t3
68:               sra          t3, sp, s10
                  andi         t3, t1, 342
70:               srli         t5, a7, 17
                  ori          a1, a6, -1656
                  bne          s0, ra, 79f
                  slti         s10, a1, -1195
                  srai         s10, s5, 23
75:               nop
                  addi         s6, s11, 295
                  addi         zero, a6, 1808
                  srai         s8, s7, 22
79:               sltiu        a3, a6, 624
                  srli         a6, t6, 26
                  sra          s3, s9, s11
82:               or           t3, t4, t1
                  andi         ra, t4, 1455
                  sltu         s10, a1, s7
                  bgeu         a0, ra, 93f
                  or           s0, s4, t1
                  slli         s1, gp, 15
                  ori          a3, s3, 197
                  andi         s8, t4, 990
                  bgeu         gp, s4, 92f
                  and          s6, a1, t1
92:               ori          s1, s0, 1813
93:               slli         t4, tp, 27
                  or           s4, s1, a2
                  sltiu        s9, s6, 2030
                  srl          sp, a3, s9
                  sra          t6, t6, s1
                  sub          t4, a4, t2
                  sltiu        a2, s1, -700
                  bgeu         t6, s2, 102f
                  or           sp, t6, tp
102:              sltiu        sp, zero, -1660
                  or           a3, t2, a1
                  sll          t2, s10, s9
                  and          s1, s6, a4
                  bne          a4, t5, 125f
                  blt          a4, s2, 123f
                  slti         ra, tp, 1698
                  ori          a4, a6, 897
                  sra          t3, a5, t4
                  srli         a5, t3, 25
                  xori         s1, t4, 811
                  lui          s6, 25890
                  sltiu        t1, tp, 1421
                  sll          s4, a0, t4
                  slti         gp, s7, 1364
                  or           s0, a0, s7
                  bge          s11, s4, 132f
                  bge          t3, s5, 128f
                  ori          s8, a7, 897
                  or           s0, s5, s11
                  ori          tp, a3, -38
123:              andi         a3, s5, 1034
                  sra          s9, s4, s4
125:              addi         a6, s1, -1054
                  bne          s0, a6, 128f
                  bgeu         a3, t5, 144f
128:              auipc        s9, 444936
                  sltiu        s10, s9, 1071
                  sll          t1, gp, s8
                  srai         t5, s0, 29
132:              and          a4, t0, ra
                  beq          a3, t2, 149f
                  andi         tp, a5, 1320
                  srl          sp, s5, gp
                  xor          s0, s9, s8
                  andi         s9, ra, 590
                  slti         ra, s4, -1610
                  andi         t5, t1, -1690
                  beq          s6, s11, 151f
                  or           t0, gp, ra
                  xori         a1, s0, -459
                  slli         s6, t6, 9
144:              srli         t0, t2, 31
                  xori         a3, zero, 693
                  sll          ra, s2, s10
                  sltiu        a0, a0, -152
                  and          s8, s2, s6
149:              slli         t6, s3, 2
                  sra          zero, t5, s4
151:              or           t4, s9, s2
                  bgeu         a4, a4, 167f
                  bge          ra, s6, 161f
                  or           s9, s8, a2
                  ori          t4, s4, -285
                  beq          a7, tp, 158f
                  sltu         a0, t4, t1
158:              nop
                  slli         sp, a4, 3
                  xor          a6, s8, t2
161:              sltu         s9, t2, a2
                  sra          s1, a4, t2
                  or           s0, s6, a3
                  sltu         t5, ra, s7
                  bltu         s2, s10, 174f
                  slti         s10, tp, 941
167:              bltu         t3, t4, 169f
                  sub          s6, s7, t4
169:              add          s1, a4, zero
                  or           ra, s3, a1
                  bgeu         s8, s7, 179f
                  srai         a0, t0, 25
                  andi         a1, zero, -1445
174:              srl          s10, t1, t2
                  srl          s7, t3, a5
                  bne          ra, t1, 178f
                  slt          s7, s10, a0
178:              and          tp, a4, tp
179:              blt          t3, a3, 186f
                  slti         a2, s1, 1296
                  or           s0, a4, a6
                  slli         t6, s10, 26
                  lui          t6, 935297
                  sra          t6, zero, s8
                  sll          ra, t4, s6
186:              or           s1, t2, t5
                  sra          zero, t5, a1
                  bgeu         t3, s0, 202f
                  beq          t1, sp, 198f
                  bltu         a0, t0, 199f
                  ori          sp, a4, -269
                  sltiu        a3, a6, 367
                  sll          s10, t4, t1
                  bltu         s9, t0, 202f
                  auipc        t4, 1013396
                  blt          s0, s1, 200f
                  sll          ra, t2, s5
198:              lui          ra, 368849
199:              auipc        a3, 584318
200:              or           ra, s5, t5
                  slt          s6, t6, t4
202:              slli         t1, s6, 1
                  ori          a3, a5, -284
                  sltiu        s4, s11, 401
                  slli         sp, t4, 20
                  or           t5, t5, a1
                  bge          s3, tp, 218f
                  blt          s0, a7, 212f
                  ori          s9, t1, 1205
                  sub          sp, s6, s2
                  and          a6, a6, t4
212:              sra          a3, a5, a4
                  bgeu         gp, tp, 217f
                  xor          t0, gp, s9
                  la           s2, region_0+1005 #start riscv_load_store_rand_instr_stream_2
                  sw           a3, 443(s2)
                  sh           a6, 613(s2)
                  sra          s10, a2, a6
                  lbu          s3, 792(s2)
                  sll          a6, s5, s8
                  sh           s6, 23(s2)
                  lb           t1, 600(s2)
                  sll          s6, s4, a3
                  andi         s8, a0, -523
                  addi         t6, t0, -1154
                  lbu          t4, 985(s2)
                  lui          s4, 27556
                  sb           a5, 648(s2)
                  sb           t5, 334(s2)
                  slli         s0, s8, 7
                  ori          t2, a1, 1283
                  lb           s6, 252(s2)
                  ori          a0, a2, 1295
                  sub          sp, t5, a3
                  xori         zero, s2, 1860
                  sltiu        s7, s6, -412
                  slt          t1, a7, t3
                  lbu          s9, 959(s2)
                  slt          t1, s4, tp
                  andi         s6, sp, 580
                  slli         ra, t3, 26
                  sb           s0, 819(s2)
                  slt          t4, t1, a0
                  lbu          t6, 621(s2)
                  sub          ra, t4, a5
                  sub          t0, s4, t1
                  sb           tp, 485(s2)
                  sltiu        a1, s1, 1514
                  ori          s9, a3, 1378
                  lh           a2, 529(s2)
                  sb           t5, 148(s2)
                  sh           t5, 821(s2) #end riscv_load_store_rand_instr_stream_2
                  blt          a6, s2, 220f
                  srl          a2, t3, s4
217:              srai         t5, s9, 18
218:              srai         t4, tp, 6
                  bne          a1, s10, 236f
220:              sltu         a4, s8, zero
                  nop
                  ori          a0, a2, -1950
                  bge          s2, t3, 239f
                  and          s7, s7, s4
                  beq          t0, zero, 234f
                  blt          a0, s8, 245f
                  srai         a5, t5, 20
                  xor          s0, ra, t6
                  srl          s2, s4, s0
                  srli         sp, gp, 16
                  bltu         s4, t1, 248f
                  slli         t6, a1, 23
                  beq          t1, t1, 239f
234:              andi         a4, a1, -965
                  ori          tp, gp, -516
236:              bgeu         t1, s9, 249f
                  xor          tp, a0, a7
                  srai         t0, t5, 16
239:              srl          s6, a6, zero
                  and          t6, ra, t4
                  auipc        t5, 157245
                  slt          sp, s6, t5
                  srli         a3, t0, 3
                  bne          t5, sp, 259f
245:              xor          gp, sp, a6
                  and          t4, a0, s7
                  ori          s9, a7, -435
248:              slli         t2, s8, 23
249:              nop
                  bge          s7, t0, 261f
                  bge          a4, zero, 262f
                  beq          a7, s6, 268f
                  add          a4, a7, a7
                  sub          s7, a7, t6
                  xori         s1, s11, 479
                  slli         a2, a5, 31
                  sub          a2, t5, a2
                  srai         s1, s5, 22
259:              ori          s8, zero, -602
                  bltu         s1, t0, 274f
261:              srl          a4, s3, a5
262:              andi         a1, t2, -1824
                  slti         s2, t1, -974
                  nop
                  sltiu        a5, a0, -65
                  xori         tp, s6, 1685
                  sltiu        s3, s0, -1911
268:              ori          s10, t1, -777
                  nop
                  sub          a4, s4, a0
                  bne          s10, gp, 273f
                  add          ra, s8, s3
273:              bge          s11, t4, 289f
274:              sra          t4, a6, t5
                  or           s2, s10, a1
                  or           a3, ra, zero
                  slt          s1, t3, gp
                  blt          s9, t5, 295f
                  slli         s7, a4, 22
                  nop
                  xori         s6, s4, -1862
                  nop
                  sub          s8, ra, a6
                  slt          sp, s10, a4
                  xor          t5, a3, s3
                  andi         t0, t2, 1170
                  auipc        t1, 949390
                  bge          s4, t6, 304f
289:              lui          t4, 628814
                  bgeu         t5, s10, 292f
                  addi         a6, t1, 317
292:              slli         t1, a1, 2
                  and          t1, s10, t3
                  add          a1, s10, s3
295:              add          t3, t4, s10
                  nop
                  andi         t1, t1, -778
                  srl          s6, s0, a7
                  sub          a4, t2, sp
                  sub          s9, s4, t6
                  or           t0, t5, s3
                  or           t6, tp, t0
                  srli         t2, t5, 1
304:              xori         gp, t1, 884
                  andi         zero, a7, 1238
                  bgeu         s1, s0, 310f
                  bne          s0, t2, 322f
                  xor          tp, s7, zero
                  sra          s8, gp, t0
310:              or           tp, a5, t6
                  sra          s7, t1, s0
                  auipc        a0, 250163
                  lui          sp, 162286
                  add          a4, s5, t0
                  bgeu         t3, a7, 332f
                  or           t4, gp, s11
                  srl          s8, zero, gp
                  bltu         s3, a7, 335f
                  bgeu         t5, a1, 336f
                  sltiu        zero, s9, 1906
                  bne          t2, t5, 327f
322:              bltu         t3, s11, 336f
                  bltu         s10, s11, 331f
                  sll          s1, gp, t2
                  slt          t0, tp, t3
                  addi         t3, t1, 849
327:              add          t6, a1, s6
                  nop
                  slti         ra, s2, -1215
                  slli         s7, ra, 21
331:              bgeu         s10, sp, 333f
332:              ori          ra, s1, -94
333:              sltu         t2, a4, a7
                  nop
335:              beq          s9, a6, 346f
336:              xori         s9, s9, -1722
                  sll          s4, tp, sp
                  sub          s6, a6, a5
                  sub          zero, s2, a4
                  addi         zero, zero, -786
                  bge          ra, tp, 357f
                  sub          a1, s0, t5
                  srai         t4, a7, 7
                  ori          s4, a4, 493
                  lui          s9, 232580
346:              auipc        a0, 782322
                  slti         a2, s6, -1672
                  slti         t1, gp, -63
                  addi         t5, ra, -2048
                  auipc        a0, 818958
                  srl          a2, s8, gp
                  srl          a0, a7, t1
                  slt          a0, a4, s9
                  or           t2, s3, s7
                  sra          s0, s4, s9
                  or           s1, a2, s5
357:              add          sp, t2, s10
                  xor          t4, tp, s3
                  sltu         s10, s8, zero
                  bge          a3, s7, 369f
                  srli         s10, a7, 14
                  lui          t6, 41790
                  slti         t0, a1, 1397
                  blt          s3, s10, 371f
                  slti         a1, t1, 255
                  srai         tp, ra, 2
                  blt          s10, s3, 371f
                  sltiu        sp, sp, 632
369:              slt          s4, t0, s0
                  ori          s8, t6, 763
371:              bne          a6, s9, 382f
                  ori          s9, s1, 447
                  sra          a6, a4, t5
                  bne          s0, t5, 376f
                  srai         a1, tp, 27
376:              auipc        a0, 814014
                  ori          s7, s0, 1470
                  sltu         ra, a4, t2
                  add          s8, s7, a0
                  auipc        a5, 141413
                  or           s2, a6, a2
382:              add          a1, a4, t6
                  sll          s0, s7, a6
                  nop
                  bne          s6, a2, 401f
                  bgeu         a4, gp, 402f
                  slli         s10, ra, 0
                  slti         s7, a6, -469
                  or           s6, s11, a7
                  auipc        t4, 893726
                  lui          gp, 747468
                  sltiu        zero, t2, 1382
                  slli         a0, s9, 23
                  srli         a6, s6, 2
                  bltu         s0, t6, 408f
                  sub          t0, s2, s11
                  sltu         s9, a0, t0
                  slt          s1, a2, s0
                  lui          s9, 726871
                  or           s1, tp, gp
401:              slli         t3, a5, 14
402:              bge          a6, a7, 421f
                  slt          t5, a0, gp
                  beq          s4, t0, 418f
                  sub          s3, a5, s9
                  nop
                  sltu         gp, t0, t0
408:              sll          s6, t0, sp
                  ori          s7, t0, -1158
                  sra          a5, t5, s6
                  bgeu         s5, t2, 422f
                  sltu         tp, t3, tp
                  xori         s6, t5, 1460
                  srli         t2, t0, 23
                  beq          s8, t6, 423f
                  slti         a5, gp, -2000
                  slti         s1, a5, 1998
418:              nop
                  auipc        zero, 1034157
                  ori          a3, a3, 1300
421:              beq          s0, t3, 437f
422:              bge          tp, t0, 424f
423:              sltiu        t5, t1, -1817
424:              srai         s9, a7, 6
                  xori         s8, a6, -571
                  and          s0, s7, a3
                  andi         t2, s7, 926
                  nop
                  add          s3, t2, s8
                  lui          sp, 477696
                  slli         s4, ra, 8
                  slti         s8, s11, 409
                  bgeu         gp, sp, 438f
                  sub          s0, s7, a2
                  xor          t5, s11, gp
                  bne          s3, t1, 445f
437:              slli         ra, t0, 26
438:              xori         s8, a5, -1472
                  slt          zero, t4, a2
                  bgeu         a7, tp, 442f
                  sra          s9, t5, a2
442:              sll          tp, a7, s3
                  sltu         gp, gp, a2
                  srli         s4, t2, 11
445:              slti         a0, s9, -55
                  sltu         tp, s10, s3
                  xori         a0, a5, 419
                  xori         ra, a6, -1537
                  lui          t2, 1003038
                  bgeu         t1, a3, 454f
                  bgeu         a3, s9, 460f
                  beq          tp, tp, 463f
                  or           tp, ra, s9
454:              lui          a1, 979287
                  ori          s4, t1, 2027
                  slti         a2, a0, 1666
                  nop
                  sra          t1, zero, a4
                  sra          t3, s9, s0
460:              srai         tp, zero, 3
                  lui          s2, 866533
                  sltu         s8, t1, t5
463:              slti         t4, a5, -488
                  andi         gp, s8, -1240
                  blt          s4, t6, 474f
                  nop
                  sub          s7, s10, a4
                  xor          t0, s7, t6
                  beq          t2, s1, 471f
                  lui          t1, 691728
471:              nop
                  xori         s9, s9, 1269
                  add          s2, s2, t2
474:              lui          t2, 682675
                  bltu         ra, gp, 492f
                  and          s9, a0, t5
                  beq          a2, gp, 494f
                  sra          tp, t0, zero
                  bgeu         s8, s10, 494f
                  bltu         t2, a2, 491f
                  slt          a5, sp, a5
                  sra          a4, t5, a3
                  srli         t2, t0, 0
                  sra          gp, ra, a4
                  nop
                  srl          s2, sp, s1
                  bgeu         zero, a6, 496f
                  xor          s2, t3, s0
                  xori         a4, s9, -1144
                  xori         a3, s2, 748
491:              bne          ra, gp, 510f
492:              xori         s9, t6, -2020
                  xor          t5, sp, a3
494:              nop
                  or           a4, zero, a3
496:              srai         t2, sp, 5
                  slli         s7, s10, 9
                  addi         s3, t5, 936
                  addi         t1, a2, 1007
                  sltiu        t3, s11, 1940
                  bne          t6, s5, 517f
                  slti         s10, zero, 1605
                  srl          t5, s4, ra
                  bgeu         sp, a6, 512f
                  blt          t3, t2, 513f
                  srl          t1, a4, a0
                  ori          s1, sp, 816
                  srli         a6, s11, 11
                  ori          s10, s6, 2045
510:              andi         ra, sp, 1442
                  beq          a3, s8, 527f
512:              bne          s1, t2, 516f
513:              xor          t3, a7, t5
                  andi         s3, a0, -418
                  xor          t6, s2, s4
516:              slt          t4, a0, a2
517:              bgeu         t0, gp, 523f
                  nop
                  slt          s7, s4, a0
                  beq          s6, a7, 536f
                  srl          a0, t0, t2
                  xori         s2, gp, -1992
523:              blt          t3, t4, 532f
                  and          s3, zero, s1
                  sltu         a3, t3, a5
                  nop
527:              sll          ra, s0, a3
                  xori         s10, gp, 530
                  bgeu         zero, t0, 542f
                  sub          s2, s1, t3
                  sub          s2, a0, t3
532:              sra          a2, a7, s8
                  bge          a4, s10, 540f
                  blt          sp, zero, 548f
                  beq          tp, ra, 549f
536:              sltu         s0, s11, s2
                  or           zero, t4, s1
                  slti         s7, s3, -1475
                  bge          zero, a4, 543f
540:              bltu         s10, a4, 551f
                  auipc        a1, 569197
542:              add          zero, zero, s2
543:              and          t2, s4, a4
                  srai         t5, t4, 29
                  ori          t5, t3, 1117
                  beq          s9, ra, 548f
                  sll          t4, s2, a2
548:              srl          a5, zero, a6
549:              bgeu         s10, s5, 566f
                  and          t4, a6, t4
551:              slli         a1, s7, 27
                  ori          tp, s7, -155
                  sll          s9, t4, s1
                  xor          t1, s3, a4
                  addi         tp, ra, 1291
                  auipc        a1, 372991
                  slli         s6, s1, 17
                  srl          t4, s5, t4
                  lui          ra, 926254
                  andi         t6, s6, -512
                  bgeu         s10, s9, 566f
                  add          s2, s11, a5
                  sll          a5, t0, s8
                  lui          s1, 766630
                  or           s6, a4, s6
566:              lui          s9, 225895
                  xori         a3, a7, -60
                  bne          t2, tp, 570f
                  bne          s3, t6, 585f
570:              slti         gp, t5, 689
                  sub          a3, a2, a7
                  addi         s2, t6, -690
                  add          zero, sp, s0
                  slli         s7, tp, 2
                  bne          t4, t6, 577f
                  bltu         t5, a6, 580f
577:              lui          s10, 61718
                  bge          ra, t1, 586f
                  sub          s1, t3, a3
580:              slti         s8, s4, -1733
                  auipc        s4, 249713
                  srli         a2, sp, 23
                  or           zero, t6, s1
                  addi         a2, s6, 133
585:              sra          ra, a6, a0
586:              lui          zero, 258411
                  bgeu         s2, s3, 589f
                  bge          s2, t2, 597f
589:              srl          s8, s9, t3
                  addi         s1, t1, 761
                  bltu         t4, t1, 598f
                  sub          s2, s6, s1
                  srai         a3, t2, 4
                  andi         a1, s1, -1276
                  ori          a5, s11, 1999
                  slt          t2, s9, a0
597:              srai         s9, t4, 25
598:              slti         s9, s7, 1976
                  andi         a2, t2, 57
                  addi         t2, a0, -448
                  add          a0, zero, gp
                  blt          s6, t6, 607f
                  srai         s7, t0, 27
                  xori         s4, t6, -679
                  bltu         s7, s6, 619f
                  srai         a5, ra, 29
607:              ori          a0, tp, -1174
                  beq          a4, ra, 621f
                  srl          a3, s2, s7
                  sra          a2, s4, s7
                  sub          a4, s6, t5
                  srai         t1, s2, 15
                  sll          s1, a1, s7
                  sltiu        t3, s4, 1786
                  slti         a3, s10, -1758
                  xori         a2, a1, -557
                  slt          s9, t5, s1
                  bne          s8, s0, 634f
619:              sll          a5, s5, s1
                  or           zero, a7, t3
621:              sltu         s10, ra, zero
                  srai         t4, s0, 13
                  bge          s0, t5, 640f
                  and          sp, a5, a0
                  slti         a1, a4, 1854
                  add          t6, s5, t6
                  addi         t5, a5, 1742
                  auipc        s2, 844022
                  auipc        t2, 506339
                  la           sp, sub_4
                  or           s7, s4, gp
                  addi         sp, sp, -712
                  srli         s3, a1, 31
                  sll          s7, t2, s7
                  ori          s8, t5, 1509
                  beq          s11, s7, sub_2_j5 #branch to jump instr
                  srli         s0, t0, 18
sub_2_j5:         jalr         t2, sp, 712 #jump sub_2 -> sub_4
                  sltiu        a4, s9, -118
                  ori          s10, s3, -1951
                  lui          t6, 767358
                  bne          s8, s7, 633f
                  srai         s9, t5, 22
633:              srai         a0, sp, 9
634:              auipc        gp, 981749
                  srl          a3, a3, t3
                  xor          s4, s8, t4
                  bltu         s8, ra, 648f
                  beq          t3, t0, 655f
                  srl          tp, s6, gp
640:              nop
                  andi         a5, a6, -1078
                  beq          a3, a3, 657f
                  sra          a2, a7, a1
                  ori          s6, a3, 954
                  sltiu        a6, ra, 222
                  beq          sp, sp, 662f
                  auipc        a5, 51478
648:              bne          t6, sp, 650f
                  sltiu        s3, s7, -1626
650:              and          t0, t2, s0
                  ori          s10, zero, -1146
                  addi         a2, gp, -853
                  add          t1, a4, a6
                  slli         a4, t2, 13
655:              ori          t0, sp, 785
                  or           a5, a2, t0
657:              sll          s4, gp, a6
                  beq          s4, a4, 674f
                  sra          s2, s2, s3
                  nop
                  nop
662:              xor          a2, zero, a3
                  slti         a1, t0, -1103
                  add          a4, t1, t0
                  beq          sp, s0, 671f
                  andi         s1, a1, 1830
                  bltu         s7, ra, 671f
                  sra          t3, a5, a5
                  or           s3, sp, s11
                  bne          tp, gp, 681f
671:              srl          t5, ra, a2
                  bne          a4, s8, 683f
                  lui          s4, 754857
674:              srli         t4, s8, 12
                  bgeu         s9, zero, 677f
                  lui          gp, 418290
677:              ori          a0, a3, 1030
                  sltiu        a0, t0, -371
                  sltiu        t1, s2, -536
                  sub          gp, s2, s10
681:              bltu         a1, t4, 689f
                  blt          a7, t3, 701f
683:              srai         t1, zero, 17
                  sll          a3, tp, s6
                  or           s8, t2, sp
                  bltu         t2, a4, 690f
                  bne          a5, a0, 703f
                  beq          a0, s7, 692f
689:              slt          a3, a1, sp
690:              ori          s8, a4, -873
                  add          a1, a7, t4
692:              blt          s6, s6, 701f
                  slli         zero, tp, 19
                  andi         s3, a4, 143
                  xor          a2, s7, s9
                  add          s1, a3, s1
                  andi         gp, s9, -338
                  srli         s3, s7, 10
                  blt          s6, t0, 713f
                  beq          s7, t1, 717f
701:              sra          tp, a7, a3
                  slli         a6, t6, 22
703:              nop
                  xori         a0, a7, -1310
                  bltu         t5, a2, 714f
                  auipc        a0, 271277
                  srai         t4, s6, 15
                  sll          s4, a2, tp
                  ori          gp, a4, 381
                  bge          a6, gp, 726f
                  add          s8, s3, a2
                  ori          a6, s9, -407
713:              blt          t0, s4, 717f
714:              nop
                  beq          t5, s0, 734f
                  blt          a1, a3, 727f
717:              auipc        gp, 207338
                  sltiu        t2, ra, -488
                  bltu         s2, a4, 724f
                  srl          a1, a3, a3
                  slt          s0, s2, t1
                  slt          t6, s10, a4
                  and          s10, s1, s4
724:              bltu         t5, a7, 741f
                  bltu         a7, s2, 739f
726:              srai         t5, a6, 30
727:              bne          ra, a7, 736f
                  sra          t5, t0, sp
                  add          s6, s6, a1
                  slt          a6, a7, a0
                  slti         a4, a7, -1416
                  srai         s1, t0, 17
                  beq          t0, s7, 735f
734:              sltiu        t1, t5, -1885
735:              nop
736:              sub          t4, a7, a7
                  xor          t5, s11, t3
                  slli         s2, t5, 13
739:              sub          s2, s6, a5
                  srl          s7, s0, zero
741:              sub          t0, t1, zero
                  andi         gp, s4, 44
                  srai         t5, a7, 30
                  add          a3, s7, tp
                  and          t6, t5, s7
                  slli         a5, s8, 31
                  ori          t1, tp, 1063
                  nop
                  slt          a5, s0, a3
                  xor          t1, s7, t6
                  or           s10, s1, a1
                  sltu         ra, ra, gp
                  sub          s3, s5, s0
                  beq          t3, t3, 770f
                  or           s0, a1, s4
                  slt          a6, t0, s9
                  addi         s3, t1, -1535
                  sltiu        s8, t6, -1245
                  andi         s4, ra, -2046
                  bne          a0, a2, 766f
                  nop
                  or           a3, s9, s6
                  sll          a5, s2, s11
                  addi         a4, zero, 805
                  add          a2, sp, t1
766:              srl          s1, a5, t6
                  bltu         s3, a5, 784f
                  sltiu        a1, t6, -1557
                  slli         t6, a4, 31
770:              bge          s4, s5, 774f
                  xor          s2, s4, t2
                  bge          t2, s10, 783f
                  sra          t4, zero, t0
774:              sra          s6, s9, a0
                  slt          a5, a0, a6
                  and          a6, t5, a3
                  bge          s2, s0, 785f
                  andi         t2, s0, -1950
                  srl          s4, a2, s11
                  sll          s3, a1, s2
                  srli         t6, t3, 9
                  sra          s10, s7, a0
783:              sll          sp, s1, t2
784:              bltu         a0, s4, 793f
785:              xor          a5, gp, a4
                  sltiu        a0, t0, -1227
                  slt          s6, a5, s2
                  bne          s10, a1, 805f
                  blt          s7, a2, 791f
                  blt          s8, s2, 799f
791:              slli         zero, s6, 2
                  bltu         gp, s2, 806f
793:              xori         t3, s2, -1337
                  bltu         a3, t2, 802f
                  or           a2, sp, a5
                  addi         s10, s11, 1822
                  bge          t0, tp, 812f
                  or           s2, s5, s0
799:              addi         s3, s6, -179
                  srai         a0, s6, 16
                  addi         t1, a0, -85
802:              xori         t5, s8, -1454
                  auipc        s4, 980492
                  sll          a5, ra, a0
805:              srl          a0, a6, t4
806:              slt          t4, a4, sp
                  sltiu        a4, s6, -738
                  sub          s6, t2, zero
                  and          t6, s5, a0
                  xori         s1, a2, 488
                  sll          s3, a0, gp
812:              slli         a4, s11, 24
                  slti         ra, s10, -974
                  bgeu         s1, a0, 821f
                  and          s7, s7, s11
                  srl          s0, s4, s2
                  bge          a3, s3, 819f
                  bltu         a6, s5, 831f
819:              xor          a5, t1, s7
                  and          t0, s11, sp
821:              add          zero, a1, a6
                  nop
                  sub          s7, t6, t2
                  srl          t3, a4, a1
                  beq          s4, t4, 841f
                  sll          s1, s2, s5
                  bge          a4, ra, 838f
                  sltu         a2, t3, s4
                  add          t5, a7, s1
                  andi         s9, sp, 220
831:              slti         a5, s11, -1280
                  addi         ra, s0, 1227
                  bne          s2, t6, 849f
                  addi         s7, s8, 594
                  srl          s8, s6, t4
                  auipc        s2, 131867
                  slt          a1, s1, s2
838:              bltu         t4, t3, 842f
                  srli         sp, s1, 29
                  srli         t6, zero, 24
841:              slli         s8, sp, 24
842:              auipc        a0, 223947
                  sub          s2, t3, t1
                  sub          a5, zero, a1
                  sltiu        tp, s6, -1846
                  ori          t3, t5, -808
                  bge          a4, t1, 849f
                  bgeu         ra, s10, 867f
849:              andi         ra, s1, 1739
                  bgeu         zero, a4, 859f
                  andi         s10, s1, 1061
                  andi         tp, a3, -556
                  sub          a4, s10, s4
                  slti         s6, s5, 1313
                  slli         ra, s9, 15
                  bne          a5, s1, 860f
                  sra          t0, a6, s2
                  or           t4, t6, s3
859:              blt          s0, tp, 873f
860:              srai         s1, a1, 23
                  srli         s2, t4, 5
                  sll          a4, s11, t5
                  srli         t0, s4, 26
                  addi         s4, s11, 885
                  ori          t2, a3, 118
                  sltiu        a1, s11, 1035
867:              slli         t5, s3, 3
                  sra          s3, s9, a6
                  srli         a1, zero, 24
                  and          t6, a1, t3
                  bge          t1, s5, 887f
                  slli         a0, t6, 24
873:              sltu         a5, sp, t1
                  srli         a1, gp, 21
                  slti         t6, s9, 1282
                  bge          tp, t0, 884f
                  ori          s10, a3, 1284
                  sub          tp, a6, ra
                  bne          t1, s6, 890f
                  blt          s8, s0, 887f
                  xor          a1, tp, s5
                  blt          t5, s4, 895f
                  bgeu         a7, s0, 897f
884:              bne          a0, s3, 886f
                  and          s8, s4, a2
886:              srai         a3, s11, 12
887:              xor          zero, t0, gp
                  add          t0, s1, a1
                  sra          s9, a2, t6
890:              sra          a1, t5, t5
                  sra          a6, t1, s2
                  nop
                  beq          t2, s11, 909f
                  srli         s7, t6, 21
895:              bge          t4, t1, 897f
                  sltiu        s3, zero, -1515
897:              blt          tp, t3, 913f
                  sub          s6, a2, s4
                  and          a5, s0, s8
                  xori         t4, t5, 392
                  srl          s3, s2, s0
                  sltu         s6, a1, sp
                  addi         a2, s0, -1140
                  bgeu         t4, t2, 910f
                  or           a3, t5, s6
                  nop
                  sra          s2, a3, sp
                  auipc        t4, 797723
909:              bne          zero, t0, 918f
910:              slt          s1, t3, t0
                  andi         a6, a5, 170
                  xor          s8, t3, s5
913:              addi         s9, a3, -75
                  sll          t5, zero, s7
                  bne          s6, s6, 924f
                  nop
                  ori          t1, a5, -1887
918:              xori         t1, t6, -1522
                  sltu         s1, s1, a3
                  bltu         gp, s3, 924f
                  sltu         a3, a4, sp
                  slti         a4, t1, -343
                  srl          s0, s11, s9
924:              nop
                  bltu         s8, a3, 929f
                  lui          t4, 639493
                  addi         a3, a7, 914
                  and          s0, t6, a3
929:              sub          a4, t0, a3
                  add          s7, a5, s6
                  blt          zero, t3, 948f
                  srl          a3, tp, sp
                  bge          a6, a1, 935f
                  sll          tp, s9, s0
935:              bgeu         a2, a7, 937f
                  srl          ra, t1, a2
937:              beq          a1, sp, 942f
                  bne          s7, t4, 955f
                  add          tp, a0, s8
                  xor          s10, t5, a1
                  srai         s7, s8, 19
942:              slti         a6, t6, -610
                  srl          a2, t6, s4
                  sltu         s9, s0, a5
                  sub          s9, s4, s6
                  slti         t4, a6, 846
                  slli         a6, t6, 10
948:              nop
                  slli         a1, sp, 21
                  and          s8, t0, a4
                  sll          t2, t2, s11
                  or           s8, s0, s4
                  sub          t0, s3, ra
                  srl          t5, s9, s6
955:              sub          sp, s0, a3
                  bge          s0, s1, 971f
                  srl          s6, t4, t0
                  auipc        a2, 1037211
                  addi         a4, s2, 1634
                  xori         a0, a3, 1449
                  lui          a2, 639762
                  auipc        a5, 212542
                  add          s1, a7, s0
                  auipc        s4, 819946
                  srai         ra, t5, 2
                  addi         a4, t6, 795
                  sltiu        s4, t2, 103
                  xori         a2, a7, 383
                  slli         a0, s5, 13
                  sltiu        a1, a5, 43
971:              sra          s8, s0, s7
                  xor          s4, s2, tp
                  sra          s3, t0, sp
                  xor          s0, ra, s8
                  sltiu        s0, gp, -1891
                  bge          t1, a4, 993f
                  beq          t6, s10, 993f
                  sll          s0, a6, t1
                  nop
                  sll          s3, ra, s5
                  bge          s8, s7, 992f
                  srl          s9, a2, t6
                  ori          t0, t3, 948
                  auipc        a5, 668041
                  srl          a4, zero, s4
                  xori         ra, s6, 1532
                  add          s9, tp, gp
                  bne          t5, s7, 996f
                  and          a2, a0, tp
                  beq          a5, s6, 1001f
                  sub          s4, t0, a1
992:              addi         s1, a4, -1330
993:              slti         t4, s8, -1348
                  nop
                  ori          s7, t6, -2016
996:              slt          s3, a2, s10
                  srli         s7, sp, 5
                  slli         a6, a1, 25
                  bge          a6, s0, 1015f
                  add          s6, a1, ra
1001:             bltu         s2, a5, 1020f
                  add          a1, s4, s1
                  addi         a5, s9, 1344
                  bgeu         t6, s11, 1006f
                  or           ra, a4, a1
1006:             nop
                  bltu         t0, s2, 1018f
                  slli         t0, a7, 30
                  or           s2, s9, ra
                  slti         s7, s10, 1568
                  andi         s6, a0, 497
                  srai         t0, t3, 31
                  blt          tp, sp, 1030f
                  and          s8, a6, zero
1015:             xor          s9, s8, t3
                  beq          t5, t1, 1032f
                  addi         s10, t0, 670
1018:             bltu         t6, s7, 1029f
                  bltu         s6, zero, 1033f
1020:             srl          t1, s0, s7
                  xori         s4, t4, 1845
                  bge          t3, a2, 1039f
                  xor          s8, ra, s9
                  ori          zero, s0, 1112
                  srl          sp, a6, tp
                  ori          zero, tp, -1970
                  addi         s6, s3, -1641
                  beq          t3, sp, 1042f
1029:             slt          s4, t3, a3
1030:             bgeu         a0, s5, 1036f
                  auipc        a0, 757160
1032:             nop
1033:             nop
                  slti         t6, s5, -1355
                  sub          sp, s7, t5
1036:             beq          t2, a1, 1044f
                  bge          a5, tp, 1045f
                  srli         s9, s6, 15
1039:             slti         ra, t1, -1892
                  or           a0, t1, t3
                  xori         s4, s11, 709
1042:             ori          a1, a1, 1280
                  or           s8, s5, s1
1044:             beq          t6, a3, 1057f
1045:             sltu         s6, gp, t4
                  sll          t3, a7, s4
                  addi         t4, s11, 785
                  slti         t6, t2, -1927
                  blt          t2, t6, 1060f
                  bne          s5, s2, 1066f
                  srli         s8, t2, 12
                  srl          s10, a5, a6
                  sra          s8, a5, t4
                  xori         s1, s3, -718
                  bgeu         s5, s11, 1059f
                  beq          a4, sp, 1073f
1057:             blt          s2, t1, 1061f
                  blt          s0, a7, 1073f
1059:             bltu         t3, s0, 1064f
1060:             sra          zero, zero, ra
1061:             bltu         tp, ra, 1063f
                  ori          t3, s10, 1420
1063:             bltu         s6, t0, 1072f
1064:             auipc        a6, 258917
                  addi         s3, ra, -1702
1066:             bltu         a1, t1, 1070f
                  add          s1, tp, s9
                  lui          t4, 14812
                  sll          a5, zero, t2
1070:             nop
                  sra          s6, sp, a3
1072:             sra          t5, s2, s9
1073:             sltiu        zero, t0, -1882
                  slli         t1, s8, 15
                  sltiu        s4, a5, -2014
                  auipc        zero, 376274
                  sltu         a2, s4, t4
                  beq          s9, s9, 1087f
                  add          sp, tp, s2
                  xori         a6, t3, -407
                  and          a4, s4, ra
                  srai         tp, a3, 26
                  slli         t6, s2, 24
                  xor          s4, a5, a7
                  nop
                  beq          a5, s8, 1088f
1087:             srli         tp, a1, 31
1088:             bne          s11, a1, 1097f
                  addi         s3, gp, -685
                  auipc        gp, 703936
                  add          t0, a0, zero
                  slt          a1, sp, t5
                  sll          t1, s11, t5
                  nop
                  slt          ra, t0, s3
                  sub          a6, t0, s11
1097:             add          a3, tp, s8
                  beq          s1, a1, 1100f
                  srai         a6, a1, 20
1100:             xor          s6, s4, s2
                  blt          s0, gp, 1117f
                  sll          t2, s3, s2
                  slt          s7, tp, zero
                  lui          t2, 473629
                  nop
                  bgeu         s9, sp, 1113f
                  slti         t1, s7, 1905
                  srai         t5, s5, 5
                  beq          a3, s6, 1124f
                  sub          s9, t1, a7
                  sltu         s9, s0, a7
                  sltiu        s8, a4, -29
1113:             srli         s8, s2, 23
                  beq          s0, s9, 1123f
                  bgeu         s1, t1, 1126f
                  blt          s9, a4, 1127f
1117:             blt          s1, gp, 1134f
                  sltu         a6, s9, tp
                  sub          t3, s6, s4
                  slli         s9, s10, 24
                  nop
                  slli         t1, a7, 27
1123:             srl          t4, t3, s8
1124:             add          s0, t6, a4
                  bge          s0, t0, 1144f
1126:             bgeu         t3, s10, 1142f
1127:             bltu         s2, a1, 1141f
                  xori         a2, gp, 659
                  blt          s0, s8, 1134f
                  sll          ra, s6, t1
                  or           a4, s11, s0
                  bne          t1, a1, 1134f
                  auipc        a6, 430416
1134:             add          gp, s9, s3
                  sub          s7, a6, zero
                  sltiu        a4, s10, 1228
                  slli         s0, s9, 15
                  slli         t4, a3, 26
                  slli         a6, t2, 1
                  srai         sp, s7, 4
1141:             andi         zero, gp, -1559
1142:             auipc        t0, 481413
                  xori         a6, a6, -2017
1144:             srai         s9, t5, 9
                  and          a0, s2, s7
                  sra          a5, sp, s5
                  addi         s7, t1, -1591
                  sltu         t6, a4, s6
                  slli         a4, a7, 28
                  sll          a4, s0, a0
                  sltu         gp, sp, s0
                  slti         a6, t0, -1622
                  andi         a6, t6, 1059
                  nop
                  beq          s7, s6, 1169f
                  sltu         gp, s0, s2
                  sub          s0, t5, s2
                  xor          s1, a2, gp
                  slli         t5, t3, 3
                  lui          tp, 917982
                  sub          s1, t3, zero
                  slli         sp, a4, 19
                  slti         a3, s5, -1189
                  andi         s10, t0, -1939
                  slti         a5, tp, -1278
                  blt          s7, s4, 1168f
                  sll          s2, t5, t6
1168:             sra          zero, a5, sp
1169:             slti         t6, t4, 1758
                  bne          a1, t5, 1179f
                  slt          tp, s0, t2
                  srli         a2, s11, 25
                  andi         gp, a2, 616
                  andi         t3, s0, -1192
                  xori         t4, a0, -589
                  beq          s7, s3, 1178f
                  xori         t2, s5, -946
                  la           a3, region_0+915 #start riscv_load_store_rand_instr_stream_11
                  lb           s6, -14(a3)
                  sb           s5, -6(a3)
                  lbu          zero, 12(a3)
                  or           s3, a1, a0
                  sw           s8, -7(a3)
                  sb           s11, -11(a3)
                  srli         a2, t2, 29
                  sb           t0, 6(a3)
                  sb           s1, 10(a3)
                  lui          a1, 122464
                  sb           s1, 10(a3)
                  sb           a2, 12(a3)
                  addi         tp, t3, 1995
                  sra          s9, s2, s9
                  add          t1, s1, tp
                  lb           a1, 2(a3)
                  xori         a4, zero, -410
                  sub          tp, s10, t3
                  nop
                  nop
                  lhu          ra, -7(a3)
                  lb           t2, 10(a3)
                  slt          s9, zero, t3
                  and          a0, t6, t2
                  lb           t0, -16(a3)
                  lbu          gp, 0(a3)
                  srli         a4, s5, 10
                  slli         a5, t4, 11
                  sltu         s3, a6, s2
                  lb           t5, -4(a3)
                  lh           a4, 5(a3)
                  slt          s4, s2, s0
                  sltiu        t1, tp, 894
                  lw           s3, -3(a3)
                  srai         s10, ra, 9
                  andi         t4, s9, -895
                  xor          s7, t3, a2
                  sb           a7, 9(a3) #end riscv_load_store_rand_instr_stream_11
1178:             addi         t3, s9, -147
1179:             lui          s10, 406889
                  blt          tp, zero, 1182f
                  bge          s0, s11, 1197f
1182:             bltu         s0, s1, 1195f
                  srl          t2, s6, s9
                  andi         tp, a6, -272
                  sra          s0, a7, zero
                  blt          s1, ra, 1194f
                  auipc        s8, 652925
                  bltu         s3, s10, 1199f
                  la           a2, region_0+1434 #start riscv_load_store_rand_instr_stream_3
                  or           s7, t6, t6
                  sh           s7, -12(a2)
                  lb           t6, -8(a2)
                  slti         t4, s7, -1521
                  sb           s5, 34(a2)
                  srai         a0, t3, 4
                  sub          t3, s1, t4
                  sll          s0, gp, a4
                  lbu          s10, -48(a2)
                  srl          t5, t4, zero
                  lui          a6, 838235
                  sb           s10, 57(a2)
                  auipc        s2, 624988
                  slt          s0, gp, s10
                  slt          a1, s5, gp
                  lbu          t3, 43(a2)
                  lbu          s9, -21(a2)
                  srl          a1, s6, t6
                  lb           s8, -27(a2)
                  xor          t3, ra, a3
                  xori         s9, a2, -327
                  xori         a3, s2, 1652
                  lbu          a6, 37(a2)
                  slli         s1, a3, 13
                  srli         t0, a4, 31
                  lb           t1, -59(a2)
                  lhu          a0, -64(a2)
                  srli         s4, t6, 15
                  lb           s7, 11(a2)
                  lbu          t1, 59(a2)
                  addi         gp, s6, 1545
                  lui          a0, 1029933
                  lbu          s2, 12(a2)
                  andi         a3, t2, 1843
                  and          a4, s0, a3
                  slti         t1, tp, -937
                  srli         s6, s7, 16
                  slli         s8, t5, 3
                  slli         t5, s11, 4
                  lb           s3, -4(a2)
                  auipc        ra, 37771
                  lbu          t3, 51(a2)
                  sb           zero, 36(a2)
                  sb           a7, -53(a2)
                  addi         t4, t4, -1393
                  xori         t3, s3, -888
                  andi         a1, t1, 171
                  and          s9, t3, a6
                  sb           a5, 41(a2)
                  lh           t5, -50(a2) #end riscv_load_store_rand_instr_stream_3
                  andi         gp, s9, 1945
                  lui          t1, 62279
                  slti         a4, a4, -61
                  add          t6, zero, a7
                  andi         t1, tp, -457
1194:             add          a2, a1, a1
1195:             or           a6, s0, s1
                  andi         s8, t3, -63
1197:             slt          gp, t5, s7
                  auipc        a0, 43646
1199:             andi         s8, a4, -1571
                  beq          t1, s2, 1207f
                  xori         s4, t1, 1557
                  sltu         t4, a1, t4
                  sll          a6, t0, s7
                  srai         t1, a0, 13
                  slti         ra, s6, -923
                  and          s10, s1, t6
1207:             srl          s9, s8, t5
                  blt          t2, t6, 1212f
                  sra          s6, sp, t0
                  sltiu        t6, a6, -457
                  bge          ra, sp, 1228f
1212:             addi         t5, s4, 1532
                  slt          a2, ra, tp
                  bgeu         t4, a5, 1223f
                  and          a5, t0, t5
                  sra          s3, s0, t6
                  nop
                  srli         s1, t4, 29
                  and          s7, zero, s8
                  auipc        s2, 667727
                  add          a2, t6, s2
                  slt          a4, s3, s9
1223:             srai         tp, t0, 31
                  srl          a3, t3, sp
                  bge          s6, s3, 1241f
                  bge          t2, gp, 1232f
                  nop
1228:             srai         s2, t1, 12
                  slli         t0, a2, 12
                  slt          s1, s3, zero
                  sll          s8, a0, t3
1232:             xor          t1, a2, a0
                  slli         s9, a1, 14
                  srai         a3, t6, 8
                  lui          a1, 327611
                  bltu         s6, a4, 1252f
                  nop
                  or           a4, t3, s6
                  sub          s0, s10, a0
                  bne          s10, t5, 1248f
1241:             bne          a5, a7, 1258f
                  lui          t5, 105595
                  auipc        s0, 437444
                  slli         t5, t4, 17
                  slti         t5, t0, 1452
                  addi         ra, t6, 649
                  blt          a5, s6, 1251f
1248:             sltu         a1, a4, a1
                  srai         a1, t0, 8
                  beq          s2, t6, 1254f
1251:             xori         t6, s4, 1387
1252:             srli         zero, a0, 20
                  blt          s10, a4, 1270f
1254:             sltiu        gp, s8, -616
                  slt          t4, s5, sp
                  bgeu         s11, a6, 1270f
                  lui          t5, 108617
1258:             beq          a4, t1, 1269f
                  sub          t2, s5, tp
                  srai         a1, s0, 24
                  nop
                  andi         a3, gp, -1393
                  lui          s7, 132962
                  sra          a2, s11, t4
                  bgeu         t3, s9, 1271f
                  srl          sp, a7, a7
                  sub          t1, s1, a7
                  xori         a1, a4, 1983
1269:             auipc        a1, 5938
1270:             slt          a5, a4, sp
1271:             ori          t1, t6, -1664
                  srl          t0, s10, t0
                  bgeu         s11, t1, 1287f
                  lui          t2, 406033
                  auipc        s10, 364967
                  nop
                  sltiu        a5, a2, 1029
                  addi         a1, s2, 2045
                  ori          s7, t1, -1717
                  sltu         t5, a5, t2
                  and          sp, t6, t2
                  or           a3, a1, s11
                  ori          a1, s11, 1152
                  sra          t0, t5, t4
                  ori          t5, t4, 68
                  slti         s10, t5, -616
1287:             or           a5, a6, a0
                  sltiu        t4, t5, -1997
                  add          gp, s0, s6
                  blt          a6, a1, 1307f
                  srl          s8, t5, a3
                  sltiu        t2, s10, -825
                  add          a1, zero, a6
                  and          s7, s1, s0
                  ori          s2, t2, 1531
                  xori         a1, t0, 1303
                  srli         tp, s3, 10
                  xor          s6, t1, a2
                  and          s2, s8, s11
                  xori         s4, a7, 1387
                  sll          a0, s9, a1
                  lui          s8, 763989
                  and          zero, tp, a6
                  sra          s4, s6, s2
                  sltu         t2, t5, t1
                  andi         t1, s7, -917
1307:             or           t5, a6, s8
                  sltu         s0, s8, t2
                  bne          t4, s3, 1311f
                  slti         s9, s5, 1544
1311:             or           tp, t4, t5
                  sub          s2, t5, a0
                  andi         zero, s9, 1277
                  add          ra, s6, ra
                  nop
                  slti         a4, sp, -948
                  bge          s4, a3, 1321f
                  and          s2, gp, a6
                  ori          zero, s6, 623
                  sll          ra, sp, s3
1321:             ori          gp, s4, -878
                  xor          s2, ra, s5
                  slti         gp, s6, -1443
                  srli         sp, zero, 12
                  beq          a3, t4, 1330f
                  add          t6, s3, a0
                  nop
                  sltiu        s9, ra, -592
                  srl          a6, a5, tp
1330:             bgeu         tp, sp, 1345f
                  sltiu        zero, a3, -460
                  xori         s9, t5, 253
                  bgeu         a6, a7, 1352f
                  xori         s8, ra, -1387
                  bltu         ra, s0, 1348f
                  bge          sp, gp, 1345f
                  auipc        s2, 328467
                  bgeu         a7, s7, 1349f
                  slt          s6, s11, a7
                  blt          a1, sp, 1356f
                  srl          gp, a4, s6
                  and          tp, s7, s4
                  addi         s8, t1, -45
                  and          s1, a3, a5
1345:             blt          s8, s1, 1354f
                  srl          s9, s2, t4
                  slli         ra, s4, 4
1348:             sll          tp, s11, a4
1349:             sra          zero, s6, t0
                  beq          a4, a5, 1352f
                  bge          t6, s4, 1353f
1352:             bltu         t6, t3, 1368f
1353:             addi         tp, tp, -815
1354:             add          t2, t2, s8
                  sll          s8, gp, t5
1356:             and          s2, a1, s0
                  srl          zero, t0, s9
                  beq          a6, tp, 1366f
                  xori         t2, t2, -162
                  srl          a2, s6, sp
                  addi         s9, a4, 1672
                  bge          t4, s10, 1364f
                  and          s7, t0, t1
1364:             lui          t3, 944287
                  addi         t5, s1, -2029
1366:             blt          a0, s2, 1382f
                  beq          t3, a1, 1383f
1368:             bne          a4, ra, 1375f
                  beq          zero, t6, 1386f
                  xor          s9, s8, sp
                  and          ra, s6, a4
                  sra          s10, s8, a0
                  slt          a0, sp, a3
                  srli         a6, s5, 3
1375:             bgeu         s10, s11, 1383f
                  bge          t3, tp, 1380f
                  bne          zero, ra, 1388f
                  addi         a6, s8, 485
                  sra          zero, a4, a5
1380:             srl          s9, s1, t6
                  srl          s0, s2, a1
1382:             or           s7, tp, t2
1383:             or           s8, t2, s4
                  xori         a2, a2, 1411
                  lui          a6, 173077
1386:             bgeu         s3, a7, 1390f
                  sub          t5, t2, a2
1388:             sll          gp, s5, s0
                  xori         s10, s4, -822
1390:             slti         tp, t3, -1418
                  beq          a2, sp, 1400f
                  srl          s10, gp, s3
                  sltu         s1, s5, s10
                  sub          a4, t2, t6
                  xori         s8, a5, -1778
                  sltu         s6, s3, tp
                  or           s4, tp, t0
                  xor          a6, sp, t5
                  andi         a2, zero, -365
1400:             srli         s3, sp, 25
                  addi         s10, s5, -38
                  xori         a3, gp, -154
                  bltu         gp, t1, 1405f
                  srli         a4, ra, 8
1405:             ori          a2, t0, -1250
                  ori          a0, s9, -1303
                  sll          a6, gp, t1
                  bltu         s3, s8, 1424f
                  slli         zero, s7, 13
                  bge          s2, s11, 1419f
                  sltu         tp, t1, t4
                  nop
                  addi         s10, s5, -299
                  add          s4, t1, a1
                  sltu         a4, t4, s5
                  xori         t2, t5, 1318
                  slt          t6, t3, t5
                  slli         ra, gp, 6
1419:             srai         s7, s4, 21
                  beq          s1, tp, 1428f
                  bgeu         ra, a1, 1432f
                  sub          s9, s9, s10
                  sltiu        s2, s5, 30
1424:             add          s0, t2, t4
                  slli         s6, t4, 14
                  sltiu        tp, a3, 121
                  slli         s1, zero, 30
1428:             ori          tp, tp, 981
                  and          t5, s9, t4
                  sltiu        tp, a0, -865
                  auipc        t0, 452926
1432:             bltu         a6, t2, 1446f
                  andi         s1, t5, -1301
                  ori          s6, zero, -1428
                  and          a3, s8, a5
                  beq          s7, a1, 1440f
                  srai         t3, s2, 24
                  sltu         ra, zero, a0
                  or           s1, tp, gp
1440:             bgeu         a1, zero, 1453f
                  xori         s3, tp, -182
                  srai         t3, s11, 7
                  and          tp, s5, s6
                  and          sp, s9, a6
                  xori         s10, s6, 113
1446:             nop
                  sub          t1, t5, a3
                  sra          a3, gp, t3
                  nop
                  and          a1, s11, s0
                  auipc        a3, 142179
                  sll          s1, s5, s5
1453:             xor          t3, t2, a7
                  bge          a3, t4, 1465f
                  beq          zero, a1, 1471f
                  srli         t2, tp, 8
                  bne          s9, t0, 1466f
                  sub          sp, a2, t5
                  and          a5, a2, s8
                  lui          a0, 379565
                  or           s2, s2, s1
                  ori          s1, s3, 999
                  srli         ra, s11, 9
                  addi         ra, a7, -1840
1465:             and          a0, s1, tp
1466:             lui          a2, 545295
                  sra          s10, t0, t0
                  auipc        t4, 752790
                  slli         s0, tp, 25
                  xor          a4, s3, a6
1471:             slti         s8, t2, -1091
                  bltu         a1, s5, 1476f
                  xori         t1, s4, -1429
                  blt          t6, s11, 1491f
                  ori          t3, t0, -181
1476:             bge          s10, a6, 1478f
                  srai         t3, t2, 3
1478:             bge          s3, zero, 1482f
                  sltu         zero, s7, t4
                  sra          a4, t0, a1
                  beq          t0, a7, 1487f
1482:             slli         t5, ra, 28
                  sltiu        s7, s8, -214
                  and          t2, s2, s5
                  bltu         a5, s5, 1500f
                  beq          t5, t5, 1494f
1487:             xor          a4, sp, a0
                  lui          t6, 998060
                  bgeu         a7, tp, 1500f
                  addi         s0, a5, 960
1491:             sltiu        a4, sp, 571
                  blt          t6, t5, 1508f
                  srl          s1, s0, s11
1494:             slt          ra, a2, s11
                  lui          s0, 341327
                  srai         zero, t4, 8
                  sltiu        t3, a5, -1592
                  lui          a4, 253886
                  andi         tp, s10, -50
1500:             bge          s3, a7, 1505f
                  addi         t4, s0, 485
                  bgeu         s0, t0, 1516f
                  srai         a3, t1, 16
                  srl          t6, t0, a0
1505:             srai         s0, t4, 16
                  bge          s2, s10, 1508f
                  addi         ra, s6, -1728
1508:             bltu         t2, t1, 1527f
                  add          s1, t4, a6
                  sll          s0, s8, s5
                  or           a5, s10, s6
                  blt          s4, s8, 1528f
                  ori          s7, a1, -482
                  blt          s4, a5, 1521f
                  xori         t6, t0, 1746
1516:             bltu         t4, s8, 1533f
                  addi         a0, a7, -1979
                  sltu         t3, s7, a7
                  add          gp, s7, a0
                  bltu         t6, a2, 1537f
1521:             slti         a2, s8, -198
                  bltu         s11, t1, 1524f
                  and          a5, t6, a3
1524:             bltu         a0, s5, 1533f
                  xori         t5, s5, -1417
                  auipc        ra, 965281
1527:             ori          s3, s8, 635
1528:             nop
                  bltu         t1, s7, 1545f
                  nop
                  bge          t0, a4, 1547f
                  sltu         a6, ra, s4
1533:             sltu         gp, t5, a1
                  addi         t0, t3, 1941
                  auipc        s1, 429399
                  slt          zero, a7, t6
1537:             xor          a4, a4, s3
                  beq          t1, a5, 1554f
                  or           s6, s5, a4
                  slti         s2, zero, -711
                  auipc        tp, 805764
                  ori          s3, t5, 814
                  slti         zero, s1, 2027
                  sltiu        a2, s2, -1393
1545:             srai         s4, t1, 10
                  slti         ra, a7, -1017
1547:             ori          a4, tp, 1917
                  bgeu         t6, a5, 1550f
                  xori         t2, s10, -1733
1550:             bltu         sp, s8, 1561f
                  xor          a5, tp, s5
                  sll          t5, t2, t6
                  and          gp, s4, sp
1554:             andi         s9, a3, 1851
                  srai         zero, gp, 16
                  sltiu        t3, t0, -1914
                  xori         a2, s5, -1867
                  srai         a3, s9, 28
                  srli         s1, a3, 1
                  sll          t2, t4, gp
1561:             slli         s10, s4, 9
                  slti         t0, a6, -1175
                  andi         s6, s6, -1974
                  slt          a3, a7, t4
                  slt          a2, t5, a5
                  srai         a6, s2, 18
                  sra          gp, s6, a3
                  sub          s7, s1, s11
                  addi         a4, t4, 1131
                  sltu         s2, s3, s2
                  beq          a4, t5, 1575f
                  sltiu        s9, a1, 594
                  or           a5, t6, t1
                  bne          a1, s1, 1583f
1575:             sltiu        t6, t4, -1313
                  bge          a1, a7, 1593f
                  nop
                  or           s6, ra, a3
                  sub          s8, a0, s11
                  andi         a4, zero, 1518
                  sra          t6, t3, s1
                  sll          a6, t4, s8
1583:             sra          s7, s2, s9
                  xori         gp, a5, -1472
                  sltiu        t0, t3, -1036
                  blt          s10, a2, 1602f
                  slli         t4, s2, 4
                  bgeu         ra, a1, 1594f
                  sra          s6, sp, s10
                  and          a3, s5, s5
                  xori         a5, s9, 453
                  auipc        s0, 314903
1593:             bltu         t6, a7, 1595f
1594:             slt          ra, s8, s3
1595:             ori          s7, s10, 874
                  slli         s2, t5, 23
                  bltu         s9, s3, 1614f
                  bge          ra, s10, 1606f
                  lui          s0, 775146
                  sll          s2, s8, s8
                  nop
1602:             sltu         s1, s9, a2
                  bltu         ra, t4, 1614f
                  xori         gp, s6, 747
                  slli         gp, t4, 14
1606:             slli         tp, zero, 22
                  addi         a4, t4, 1247
                  ori          a1, a1, -1868
                  ori          s9, s3, -560
                  bge          zero, t6, 1614f
                  sltu         t4, zero, t6
                  sra          s9, t0, s11
                  auipc        s7, 894227
1614:             srli         zero, sp, 9
                  slt          a0, s5, s6
                  add          gp, zero, s2
                  sll          s1, t3, a7
                  bne          s10, sp, 1620f
                  add          s9, t1, s4
1620:             blt          s1, a3, 1629f
                  slti         tp, a0, 1940
                  xori         tp, ra, 1290
                  andi         s4, s2, 1085
                  auipc        zero, 73047
                  bne          s0, s6, 1634f
                  blt          a4, s0, 1640f
                  andi         s10, t2, -820
                  srai         a4, ra, 27
1629:             ori          a1, s10, -1713
                  nop
                  bltu         zero, ra, 1644f
                  andi         t5, zero, -1080
                  xor          a2, s0, s9
1634:             slti         a2, t4, 1803
                  lui          sp, 708804
                  auipc        a5, 158085
                  beq          s3, t6, 1656f
                  sub          t4, zero, a3
                  and          s0, gp, s9
1640:             bgeu         a4, a6, 1657f
                  andi         s3, s4, -1394
                  sltiu        a0, a2, 614
                  sra          tp, s6, a7
1644:             andi         s10, t6, 250
                  lui          s6, 327210
                  and          t0, s1, s6
                  addi         t5, a6, 1756
                  addi         s10, a4, 1686
                  xor          a4, t2, s1
                  nop
                  srli         s0, s4, 19
                  slli         a3, t4, 5
                  slti         s7, s4, 1169
                  xori         s4, t0, 889
                  sltiu        s10, a5, 283
1656:             beq          s9, s3, 1667f
1657:             slt          a0, s3, a7
                  auipc        s1, 241587
                  beq          s2, s10, 1667f
                  blt          gp, s7, 1667f
                  nop
                  and          s2, gp, s1
                  bltu         s11, s7, 1677f
                  xori         a5, a6, 1257
                  blt          s11, s6, 1670f
                  sub          s2, t4, gp
1667:             nop
                  nop
                  add          a3, s3, ra
1670:             bgeu         ra, t1, 1672f
                  xori         a3, s0, -1905
1672:             bltu         zero, s1, 1676f
                  slti         t1, tp, -485
                  andi         t6, a0, 2019
                  andi         s4, t2, -1763
1676:             beq          ra, a0, 1691f
1677:             sltu         a4, s0, gp
                  addi         t2, a7, -272
                  and          gp, s0, a5
                  srli         t5, tp, 4
                  srai         s9, t1, 7
                  srli         zero, t4, 11
                  bne          gp, s0, 1694f
                  beq          t3, s9, 1700f
                  sltu         t1, a7, a0
                  bgeu         a5, s7, 1688f
                  blt          gp, a4, 1703f
1688:             srai         s7, s7, 15
                  beq          gp, s6, 1698f
                  slti         a5, s0, -2043
1691:             slt          s3, sp, a2
                  addi         t5, s4, 714
                  add          s4, a6, a5
1694:             sltu         a6, ra, a2
                  bgeu         a6, a4, 1699f
                  xori         zero, a5, -120
                  bgeu         tp, s9, 1699f
1698:             srai         a3, s1, 18
1699:             blt          s3, s6, 1712f
1700:             srai         tp, a4, 15
                  ori          s9, s10, 947
                  slti         a3, a0, 1278
1703:             bne          s0, s3, 1720f
                  xor          s10, a6, s7
                  bgeu         a2, t4, 1721f
                  or           s3, t2, a3
                  sll          s8, s0, a7
                  slti         t0, t4, -849
                  bge          s1, tp, 1714f
                  sltu         t6, s1, s5
                  add          s10, t3, a6
1712:             nop
                  andi         s3, a1, -1882
1714:             and          gp, s9, tp
                  addi         s2, t3, -223
                  sltiu        sp, s0, -1134
                  sra          tp, t0, a5
                  auipc        s4, 684968
                  sra          t3, a5, gp
1720:             xor          s6, t3, a7
1721:             blt          a7, t3, 1735f
                  sltu         zero, a6, sp
                  sra          t3, a4, zero
                  sub          t4, a5, a3
                  slli         a2, a0, 27
                  sll          s3, s0, s10
                  sra          t2, s3, a4
                  sra          t2, s7, a6
                  sll          s4, t6, s3
                  bge          s6, a2, 1749f
                  sll          s3, a5, s3
                  and          a0, a0, ra
                  sra          t2, s5, a0
                  and          t2, gp, a5
1735:             and          s6, sp, a0
                  or           t4, t3, a5
                  blt          s5, a0, 1751f
                  andi         s8, s9, -439
                  bne          sp, a0, 1754f
                  sltu         a2, s8, a5
                  or           s0, s9, a7
                  sub          a2, a1, gp
                  sltu         tp, s0, t4
                  srai         t1, t6, 3
                  sra          a2, gp, a0
                  sub          s3, s3, a0
                  slli         a5, t1, 8
                  slti         s1, t1, 1589
1749:             bltu         s3, t4, 1757f
                  sra          s9, a7, t2
1751:             sltu         a5, a3, s10
                  andi         t1, t6, 292
                  slli         t0, s6, 4
1754:             slti         a6, t6, -483
                  andi         t3, a2, -624
                  slti         s4, a4, 45
1757:             addi         t0, ra, -1960
                  addi         s4, tp, -937
                  srl          a6, a0, tp
                  bltu         a2, s10, 1764f
                  nop
                  bltu         ra, ra, 1773f
                  beq          s5, ra, 1772f
1764:             sub          t3, s1, t5
                  and          t5, t3, a5
                  bgeu         t1, s0, 1774f
                  addi         gp, a1, -637
                  auipc        zero, 61837
                  auipc        s1, 74400
                  sll          zero, a6, s11
                  or           t2, s8, a1
1772:             ori          sp, t1, -1063
1773:             bne          s5, s2, 1775f
1774:             ori          a0, ra, -435
1775:             lui          zero, 849552
                  slt          t3, tp, s7
                  sltiu        s10, t4, -1412
                  xor          s0, a0, t2
                  slt          s9, zero, a2
                  slli         s7, s2, 27
                  sltiu        s0, t3, 1423
                  bne          t2, a7, 1788f
                  or           t1, sp, zero
                  ori          s2, s3, -1220
                  slt          s6, s3, a2
                  lui          zero, 566655
                  lui          s6, 912515
1788:             nop
                  slli         gp, a7, 8
                  beq          a4, s0, 1806f
                  bge          a5, t0, 1802f
                  bge          ra, s4, 1801f
                  srl          s9, s8, sp
                  srai         gp, s6, 0
                  sll          a1, s3, t0
                  srli         t1, t3, 4
                  bgeu         t2, t6, 1801f
                  sltiu        a6, a3, 1351
                  lui          t3, 317391
                  ori          t3, t4, 1335
1801:             bne          t6, s5, 1803f
1802:             xori         s7, s7, -1476
1803:             slti         a0, t5, -1793
                  slli         sp, tp, 24
                  lui          t5, 599769
1806:             xor          zero, s5, s10
                  sub          a3, t4, s7
                  xor          s3, s3, a0
                  sub          s3, s4, s11
                  lui          s9, 650390
                  ori          s0, tp, 359
                  sltiu        t4, tp, -1602
                  bne          a2, s4, 1820f
                  srl          t5, t2, zero
                  addi         s0, s0, -424
                  xor          t1, ra, t1
                  bne          a1, t5, 1834f
                  auipc        a3, 70126
                  slt          a2, t3, sp
1820:             nop
                  addi         s7, s10, 1939
                  bltu         s2, tp, 1839f
                  sll          t6, s1, tp
                  slli         s4, gp, 7
                  or           s9, a7, a1
                  sltu         ra, s1, gp
                  ori          s7, s2, -787
                  xori         a5, gp, -15
                  lui          s0, 975638
                  addi         t6, t2, -405
                  ori          s1, sp, 767
                  sra          gp, zero, s1
                  srli         s0, zero, 7
1834:             and          zero, s6, zero
                  slti         s8, t4, -1865
                  srl          tp, s8, s3
                  or           s2, t1, a0
                  slt          s1, a6, ra
1839:             ori          s2, a0, -981
                  sra          a5, a3, s2
                  srli         t6, s2, 28
                  sub          s1, sp, s3
                  sltu         s3, a0, s6
                  slli         a4, a3, 21
                  bltu         a6, s2, 1858f
                  sub          t2, s2, a5
                  slt          a4, tp, a4
                  beq          sp, t4, 1850f
                  addi         s3, a1, -1540
1850:             auipc        s6, 468197
                  nop
                  bltu         a4, s4, 1856f
                  bgeu         a6, s0, 1860f
                  slli         s6, s7, 3
                  and          s0, s8, a5
1856:             bltu         a4, s6, 1867f
                  bne          t4, s6, 1874f
1858:             slt          sp, s8, gp
                  sltu         s2, a6, t6
1860:             or           t1, s4, t2
                  beq          a3, s4, 1877f
                  xor          a5, s6, s3
                  xori         a4, ra, -17
                  slt          s10, s9, ra
                  srai         s10, a4, 31
                  slt          tp, sp, a6
1867:             auipc        a3, 198517
                  sltu         s4, s1, a4
                  sll          t1, t5, s2
                  sltiu        a1, s10, 1959
                  auipc        a3, 1002249
                  or           zero, t1, ra
                  srl          t2, s5, s11
1874:             bge          zero, t3, 1888f
                  bne          t1, s3, 1891f
                  xori         s3, s0, 503
1877:             and          s7, t3, t0
                  nop
                  sltu         t1, s6, gp
                  bge          t6, s5, 1884f
                  or           s2, s7, t0
                  slli         s6, a4, 5
                  bne          t6, ra, 1897f
1884:             bgeu         s7, t5, 1903f
                  andi         sp, a4, -377
                  bltu         s7, s2, 1894f
                  slli         a2, a0, 25
1888:             addi         t1, s5, 847
                  slt          a3, t2, s2
                  xor          s0, s5, sp
1891:             and          gp, s9, t6
                  sra          a6, a6, gp
                  and          a3, s3, a4
1894:             nop
                  srai         t2, sp, 8
                  bgeu         tp, ra, 1898f
1897:             sll          a4, ra, s5
1898:             sub          tp, a3, s4
                  sub          ra, a3, s8
                  sub          s2, s9, gp
                  or           a0, a6, t5
                  sltu         a0, a1, s7
1903:             blt          s6, s4, 1920f
                  bge          s3, s2, 1909f
                  bgeu         sp, s5, 1907f
                  srai         a6, t1, 19
1907:             sra          s2, s7, s10
                  addi         s9, zero, 403
1909:             or           a6, s4, a6
                  sltiu        gp, t6, -1608
                  xor          a3, a2, a4
                  slt          t2, a6, s0
                  bne          t5, s8, 1922f
                  lui          a5, 744368
                  andi         s3, s8, -481
                  sll          s3, t0, s1
                  ori          s7, a4, 469
                  lui          s8, 315639
                  xori         zero, s7, 1977
1920:             srl          ra, a7, s0
                  la           a3, region_1+920 #start riscv_load_store_rand_instr_stream_18
                  sb           t0, -3(a3)
                  and          s9, sp, gp
                  sltiu        s4, gp, -1555
                  lb           s10, 14(a3)
                  add          ra, t3, ra
                  lh           s2, -6(a3)
                  lh           ra, 4(a3)
                  lui          gp, 105967
                  nop
                  and          t0, zero, s11
                  addi         a1, s0, -750
                  lbu          s2, 13(a3)
                  sra          gp, a5, s6
                  and          s4, t3, t1
                  lb           ra, -15(a3)
                  lui          t3, 669366
                  sb           s0, 6(a3)
                  sll          sp, a4, s5
                  srai         s3, s4, 2
                  lbu          t4, -15(a3)
                  lui          zero, 127562
                  sra          t3, s7, a5
                  slli         s3, a3, 19
                  sh           t5, 8(a3)
                  auipc        sp, 715271
                  lbu          zero, -15(a3)
                  sub          zero, zero, s5
                  add          tp, t2, gp
                  sra          s8, s9, a5
                  lbu          tp, -8(a3)
                  ori          sp, zero, 1872
                  lbu          s9, -4(a3)
                  lbu          s3, -5(a3)
                  sb           s1, -4(a3)
                  and          a2, s3, a7
                  auipc        s2, 154661
                  sltiu        a1, a4, -1010
                  lh           s8, 8(a3)
                  sw           s7, 4(a3)
                  xor          t5, a4, a6
                  add          t1, zero, a3
                  slti         a0, ra, 2021
                  and          s0, a1, s9
                  lb           a0, -5(a3) #end riscv_load_store_rand_instr_stream_18
                  srai         s7, sp, 8
1922:             srli         ra, sp, 27
                  xor          t6, gp, t3
                  ori          tp, s0, -116
                  srli         s2, t5, 18
                  sltiu        ra, zero, 1682
                  slli         sp, t2, 15
                  or           gp, a6, gp
                  andi         a0, s7, 1718
                  or           s8, a6, a3
                  srli         a5, t4, 2
                  beq          tp, gp, 1943f
                  sra          t6, s3, a0
                  sra          t2, t6, a2
                  sltu         a4, t5, ra
                  srli         zero, t4, 14
                  slli         t1, a7, 25
                  sltu         ra, a7, s5
                  sub          a3, s1, t4
                  blt          t1, t4, 1944f
                  blt          sp, s10, 1950f
                  bltu         a7, s5, 1957f
1943:             xori         s6, a6, 563
1944:             andi         t2, s10, -1562
                  or           t3, a6, a0
                  ori          s9, s10, 769
                  srai         s3, t5, 27
                  andi         s1, t0, 314
                  sub          s1, s4, sp
1950:             srai         s4, zero, 4
                  srl          sp, a1, a2
                  bne          s0, t3, 1963f
                  bgeu         s8, s10, 1962f
                  xor          s2, t1, t1
                  bne          a0, s3, 1957f
                  sll          s0, a3, t4
1957:             andi         s10, t3, -2009
                  slt          t2, a4, s5
                  blt          s1, a1, 1976f
                  xori         t5, s10, -1815
                  srai         s4, t6, 11
1962:             sra          a1, t5, a1
1963:             xori         s1, s3, 1433
                  srli         a6, sp, 26
                  srai         s8, s8, 24
                  slli         s3, a0, 26
                  srli         gp, s7, 15
                  srli         t5, tp, 18
                  bne          s10, sp, 1985f
                  sltiu        t4, s5, -1642
                  or           a3, sp, t6
                  sra          s1, t1, a4
                  add          s7, t5, s5
                  auipc        s4, 607242
                  addi         a1, t2, -61
1976:             bne          s7, s4, 1992f
                  srli         s10, t4, 24
                  beq          s9, a4, 1986f
                  sltiu        s2, a0, 620
                  srli         s9, s9, 16
                  andi         s2, t4, 710
                  nop
                  blt          gp, a6, 1989f
                  xor          s7, a1, t5
1985:             blt          s10, s6, 1994f
1986:             or           a6, t5, t1
                  nop
                  blt          s5, zero, 2005f
1989:             bltu         tp, t0, 2005f
                  sra          s6, ra, s11
                  xor          ra, s3, s0
1992:             blt          a7, zero, 1999f
                  addi         s8, s9, -824
1994:             srli         zero, t5, 25
                  addi         t2, t3, -1986
                  beq          s8, s5, 2005f
                  slli         a6, t1, 21
                  srl          s10, a3, ra
1999:             beq          t0, t5, 2018f
                  sra          s7, t1, gp
                  slt          s0, a1, a6
                  and          a4, s0, zero
                  sub          s1, t5, s10
                  or           t5, s8, t5
2005:             bge          s2, a5, 2007f
                  bgeu         s4, t2, 2020f
2007:             bne          zero, t0, 2018f
                  slti         s3, s6, -22
                  slti         t0, a1, 60
                  add          s6, a4, t4
                  bgeu         s0, gp, 2013f
                  lui          a2, 512725
2013:             xor          s4, s10, zero
                  addi         a1, s5, 682
                  slli         t1, s4, 20
                  sub          a0, a0, s4
                  slli         a6, a0, 15
2018:             add          s1, a5, gp
                  addi         a0, s4, -917
2020:             sltu         tp, gp, s6
                  bgeu         t0, s2, 2038f
                  srai         t5, s9, 8
                  bge          s11, tp, 2025f
                  bltu         gp, zero, 2028f
2025:             andi         t5, s8, -242
                  beq          a4, s1, 2041f
                  xor          sp, tp, a5
2028:             xori         a3, s8, -1553
                  beq          a6, a1, 2042f
                  srl          s6, a7, t6
                  sub          ra, t6, s1
                  srl          s7, a1, t5
                  ori          sp, s0, -1671
                  sll          s10, sp, gp
                  xor          t0, t2, s1
                  slli         s0, t4, 11
                  srai         a4, s9, 30
2038:             slli         s7, s7, 3
                  bltu         tp, s3, 2055f
                  sltiu        ra, t2, 1182
2041:             sltiu        t5, s3, -1742
2042:             or           t6, s2, gp
                  andi         s2, t0, -368
                  bgeu         s4, sp, 2052f
                  slti         a4, a6, 100
                  sub          s9, sp, t6
                  xor          s0, s9, s7
                  blt          gp, t2, 2052f
                  sra          t1, zero, t1
                  and          a4, a4, t1
                  beq          s8, t5, 2062f
2052:             slt          s0, gp, ra
                  sltu         sp, t5, zero
                  srl          t6, t5, ra
2055:             andi         t5, t4, -2024
                  slli         a6, zero, 17
                  bltu         gp, zero, 2065f
                  sltu         a4, a7, s7
                  slli         t0, a1, 21
                  srl          a4, t0, s2
                  lui          t0, 733410
2062:             sra          s9, a5, s4
                  beq          t4, s7, 2067f
                  srli         s1, t0, 18
2065:             ori          t4, s9, 1139
                  addi         a0, s11, -1147
2067:             addi         t2, s3, 1289
                  bne          a6, a1, 2070f
                  or           s7, a6, a5
2070:             srai         s9, t1, 6
                  sub          t5, t3, s6
                  sltiu        t5, ra, 99
                  blt          a7, t0, 2084f
                  or           s3, s4, t5
                  addi         a5, ra, -1224
                  ori          s2, t4, -2035
                  auipc        t5, 954827
                  ori          t2, gp, 719
                  andi         s6, s5, 712
                  bne          a5, a4, 2086f
                  bge          s6, t3, 2097f
                  srl          s10, s6, a6
                  bne          s6, s7, 2088f
2084:             sltu         a1, t2, t2
                  sltiu        s3, a3, -1370
2086:             slt          s3, s7, t2
                  blt          ra, t4, 2096f
2088:             srl          s10, s3, s2
                  or           a2, t1, a0
                  lui          s10, 471807
                  or           a3, t5, s0
                  xor          a4, tp, a1
                  or           s0, s6, s1
                  srai         a6, s10, 22
                  slt          t2, a7, s5
2096:             slt          t2, s7, s9
2097:             srl          s6, zero, tp
                  sll          s9, t5, s11
                  nop
                  srl          a4, t4, tp
                  sub          t3, s9, t2
                  sll          t5, zero, ra
                  sltu         t4, a7, a6
                  bne          s10, t1, 2118f
                  srai         t3, t5, 12
                  or           s6, a1, s11
                  slli         s7, a2, 9
                  or           a2, a5, a6
                  bge          t6, a1, 2126f
                  sltu         a1, s6, tp
                  sll          a2, zero, s8
                  srli         t6, t1, 3
                  xor          t2, a4, zero
                  beq          t2, s8, 2130f
                  nop
                  srli         s2, t4, 0
                  xor          t4, a0, s10
2118:             beq          t6, t6, 2134f
                  bgeu         a2, s10, 2126f
                  srl          tp, t0, s4
                  ori          s2, s7, 650
                  addi         t0, a2, 2019
                  srli         tp, t2, 7
                  addi         gp, zero, 1528
                  add          a1, a4, s7
2126:             srli         t2, s0, 27
                  xor          t1, s9, s10
                  srl          s7, s9, a2
                  andi         s10, s2, -1217
2130:             xor          a4, a7, s4
                  srai         s9, sp, 16
                  slti         s8, s9, 1453
                  bgeu         s5, t2, 2150f
2134:             srl          s7, t5, gp
                  sltiu        s10, s3, -809
                  slli         t4, t6, 10
                  bltu         ra, s0, 2146f
                  slli         t3, s1, 12
                  bge          s7, s8, 2141f
                  bltu         t6, a4, 2148f
2141:             sll          a5, a2, gp
                  or           t0, s2, gp
                  or           s8, tp, a7
                  add          a5, a3, t5
                  srl          gp, t0, s4
2146:             add          s1, s5, t3
                  beq          tp, t6, 2163f
2148:             slti         t2, s10, 489
                  blt          t0, s11, 2158f
2150:             auipc        t6, 100965
                  bgeu         a2, a3, 2165f
                  bltu         s0, s3, 2154f
                  andi         gp, s0, -1269
2154:             bne          gp, s5, 2173f
                  sll          a2, sp, s9
                  slti         t3, t4, 616
                  slti         s8, a4, -341
2158:             sltu         t3, t2, s9
                  and          zero, s1, s8
                  bltu         a5, a0, 2164f
                  ori          ra, a1, 228
                  srl          t4, t5, zero
2163:             ori          s6, s3, -639
2164:             slli         t3, s7, 25
2165:             nop
                  slti         s9, a1, -737
                  or           t1, tp, s10
                  srai         t1, t0, 16
                  lui          t5, 118065
                  sll          s1, tp, t2
                  slti         s7, zero, -1724
                  slt          a3, s2, tp
2173:             nop
                  andi         a4, s2, -614
                  xori         s7, a0, 1478
                  add          s1, a2, s11
                  beq          t2, t0, 2188f
                  bltu         gp, t6, 2180f
                  srli         s4, s0, 20
2180:             andi         s3, a1, -599
                  xor          t0, a5, t0
                  slt          t5, s8, s5
                  blt          s5, s10, 2188f
                  sra          t1, t1, gp
                  srl          a4, t4, s5
                  auipc        t6, 579846
                  andi         t4, tp, -1993
2188:             bgeu         a0, t6, 2201f
                  ori          t1, ra, -794
                  xori         t2, gp, -1526
                  add          zero, sp, s6
                  sltu         a6, sp, ra
                  beq          t0, t6, 2202f
                  sub          zero, s10, sp
                  slli         a3, gp, 4
                  srai         a0, a1, 7
                  bgeu         a5, t2, 2211f
                  slti         a1, s5, -985
                  xori         a4, s2, -1083
                  lui          s0, 152222
2201:             bltu         tp, s11, 2217f
2202:             auipc        s10, 658053
                  sltiu        s9, s3, 439
                  sub          a6, s5, t1
                  sltu         zero, t6, t5
                  blt          s0, s9, 2210f
                  andi         t4, ra, -1208
                  sltiu        a0, t5, -1260
                  sll          s2, s1, t6
2210:             beq          sp, ra, 2227f
2211:             ori          a0, t1, -475
                  slli         s2, s11, 31
                  bltu         a1, s8, 2219f
                  sll          sp, s4, a6
                  sltiu        s2, s9, 116
                  nop
2217:             bge          s8, gp, 2228f
                  addi         gp, zero, -392
2219:             auipc        t4, 340510
                  bltu         a3, tp, 2236f
                  beq          t5, s4, 2225f
                  slt          gp, s4, s5
                  sub          a2, t0, sp
                  bge          t3, s10, 2239f
2225:             slt          t3, t2, s9
                  addi         t4, t4, -1871
2227:             add          tp, t4, s10
2228:             add          s6, gp, t0
                  slt          a0, t2, t2
                  auipc        sp, 318652
                  slli         s9, t4, 18
                  slt          t0, s9, s0
                  bltu         t3, s3, 2250f
                  lui          gp, 502501
                  bltu         sp, a3, 2246f
2236:             add          t1, t3, a6
                  add          a0, s4, zero
                  slti         s1, s9, 1542
2239:             slt          a6, s11, ra
                  lui          gp, 921033
                  ori          a3, s3, 1896
                  xori         s1, s8, -967
                  bgeu         a6, s5, 2251f
                  sub          s2, t0, t5
                  nop
2246:             andi         a2, s3, 931
                  srl          s1, s2, t5
                  sltiu        s7, s10, 382
                  srli         s0, a6, 22
2250:             sltiu        a0, sp, 1319
2251:             bne          a3, s11, 2253f
                  sltu         s1, s6, a2
2253:             bne          t4, t1, 2266f
                  sra          a6, a4, s11
                  srai         ra, s1, 15
                  sra          t1, s10, gp
                  srai         zero, t3, 24
                  xor          s1, a4, zero
                  slli         t6, t0, 5
                  slti         s7, tp, -155
                  and          sp, t2, ra
                  xori         s4, a0, -1817
                  sub          s7, s2, zero
                  or           t2, a1, a4
                  addi         a1, s10, -111
2266:             or           t6, s6, a4
                  sra          a0, sp, t2
                  lui          tp, 523063
                  bne          s2, gp, 2278f
                  sltiu        a0, sp, -1633
                  bge          s5, tp, 2273f
                  ori          a2, t4, 1308
2273:             beq          s2, s11, 2281f
                  slti         t5, s10, 1563
                  srai         t5, s7, 8
                  srai         t0, t4, 28
                  auipc        a5, 1010492
2278:             srl          s7, s7, a7
                  andi         s8, t2, -1162
                  sltu         s10, a2, a1
2281:             lui          s1, 107147
                  bltu         s9, s0, 2298f
                  beq          s5, t5, 2290f
                  addi         gp, s11, 1443
                  slli         s6, s8, 26
                  blt          s4, s7, 2291f
                  bne          a6, a1, 2289f
                  beq          s7, s2, 2292f
2289:             xor          ra, t0, s8
2290:             bge          t3, ra, 2306f
2291:             bltu         t3, t4, 2302f
2292:             bgeu         s10, t6, 2296f
                  sltiu        s1, a6, 410
                  andi         t2, t4, 1595
                  and          gp, s2, s10
2296:             ori          a5, a2, -607
                  ori          sp, s2, -954
2298:             addi         gp, s3, -74
                  sra          s10, a0, a0
                  srli         sp, s7, 11
                  add          s0, s11, a1
2302:             auipc        a5, 879406
                  slti         t3, a4, 1420
                  lui          tp, 422859
                  andi         s1, a6, -904
2306:             add          t4, t2, s0
                  la           t6, region_1+1480 #start riscv_load_store_rand_instr_stream_10
                  or           s8, s4, a4
                  lbu          t0, 16(t6)
                  add          t5, a7, t0
                  nop
                  sb           s7, 9(t6)
                  lb           a5, 15(t6)
                  sh           tp, -12(t6)
                  slt          tp, a7, t0
                  sra          s6, gp, t1
                  sb           t4, -13(t6)
                  lhu          s8, -6(t6)
                  slti         s3, s0, 1328
                  andi         s3, s4, 1012
                  srli         ra, a6, 6
                  lb           t2, 14(t6)
                  sh           s10, 6(t6)
                  sub          s10, sp, s10
                  xor          t3, a7, ra
                  auipc        a5, 315055
                  sb           s8, -2(t6)
                  or           a2, t4, a1
                  xori         tp, t3, -334
                  and          t5, a0, s10
                  sltiu        s8, s9, 1168
                  lbu          s4, -9(t6)
                  nop
                  add          ra, t5, tp
                  and          s6, ra, s3
                  lbu          t1, 7(t6)
                  lb           s8, -8(t6)
                  lbu          t5, 7(t6)
                  and          s4, sp, t6
                  lb           s8, -8(t6)
                  lb           s4, 3(t6)
                  lbu          s0, -6(t6) #end riscv_load_store_rand_instr_stream_10
                  nop
                  sra          a4, ra, a4
                  or           s6, s9, s3
                  slti         s1, t5, -1098
                  bltu         zero, s0, 2328f
                  bge          s11, gp, 2321f
                  slti         t6, s5, 1645
                  auipc        t5, 248465
                  srai         a1, a1, 2
                  srai         a0, t3, 20
                  lui          sp, 433122
                  sltiu        s7, t1, 1590
                  bge          t0, s2, 2328f
                  lui          a1, 738965
2321:             or           t3, a3, s1
                  sra          a5, a3, s1
                  slti         t3, s3, 1485
                  srai         t2, t6, 11
                  srli         gp, s0, 28
                  srl          s0, t3, t0
                  sub          t5, t0, a3
2328:             srli         sp, s9, 6
                  srai         ra, s9, 4
                  bge          s2, s8, 2341f
                  auipc        t6, 854068
                  add          t5, s7, s1
                  lui          gp, 689596
                  bgeu         s4, tp, 2350f
                  slli         a1, a7, 27
                  sltiu        s10, s1, -1563
                  slti         t2, a5, 362
                  sra          t5, a4, t3
                  andi         t4, t6, 634
                  auipc        tp, 762391
2341:             beq          s10, a0, 2358f
                  bne          t3, s4, 2358f
                  sltu         t5, s8, s5
                  and          t1, s6, s1
                  bge          s0, a1, 2362f
                  and          t6, s2, s1
                  beq          s8, t5, 2349f
                  srli         t4, t0, 8
2349:             nop
2350:             beq          a4, s7, 2369f
                  slti         tp, s5, -459
                  or           a1, s8, t3
                  andi         t5, a2, -1545
                  srai         t5, s4, 17
                  or           a2, s3, gp
                  beq          s0, s7, 2364f
                  addi         t5, t0, -294
2358:             bne          s10, t2, 2372f
                  sub          gp, s2, a3
                  sub          sp, s4, a3
                  srai         a4, s6, 5
2362:             nop
                  bltu         s6, s9, 2378f
2364:             bgeu         a6, t0, 2368f
                  sra          zero, s9, a3
                  bge          t5, s9, 2380f
                  lui          a6, 198341
2368:             ori          s2, a6, 1141
2369:             auipc        a1, 207191
                  sra          s7, sp, a3
                  sub          zero, s11, s7
2372:             auipc        a6, 914754
                  bltu         s8, s3, 2384f
                  lui          s8, 869274
                  xori         t0, t4, -1397
                  and          t6, a1, t4
                  bgeu         gp, a0, 2383f
2378:             ori          a6, s6, -975
                  ori          t1, s9, -1972
2380:             srai         s4, a6, 28
                  xor          a0, s4, ra
                  xori         s3, a5, -768
2383:             bltu         s4, a1, 2385f
2384:             xori         t0, t6, -6
2385:             and          s8, sp, t5
                  auipc        s0, 36504
                  sltu         ra, t0, t2
                  sra          s9, s11, a7
                  blt          t2, a5, 2408f
                  bne          sp, t3, 2394f
                  add          a0, a4, t6
                  sltiu        sp, t6, 592
                  nop
2394:             andi         t4, s4, -754
                  addi         s7, a5, -456
                  slli         s10, a2, 29
                  sub          t2, t6, s7
                  slti         s9, s2, 1597
                  slli         a4, s2, 30
                  lui          s2, 153626
                  sll          s2, tp, s0
                  nop
                  bltu         t3, a4, 2416f
                  bgeu         s5, a1, 2421f
                  slti         tp, a1, -59
                  xori         a0, t6, -1179
                  bge          sp, s3, 2413f
2408:             slli         zero, t3, 18
                  and          a3, s7, t2
                  and          gp, s2, s10
                  xor          t4, t4, ra
                  slt          s9, zero, t3
2413:             and          a4, a0, a0
                  xor          s7, s2, t2
                  sub          a3, s10, t4
2416:             sub          a1, s1, a2
                  blt          s11, a3, 2425f
                  add          ra, t6, s2
                  beq          s0, a0, 2435f
                  xori         t3, zero, 1073
2421:             sub          s0, a3, s1
                  xor          a4, s7, a7
                  ori          a3, s8, 201
                  sltiu        a3, s2, 609
2425:             slt          sp, s8, s10
                  srl          gp, a0, a0
                  bgeu         t6, tp, 2441f
                  srai         t3, s0, 31
                  sll          s7, s9, ra
                  sltiu        t2, t5, -1653
                  sub          s1, s8, s8
                  blt          s11, s10, 2447f
                  andi         a0, a1, 1521
                  blt          t5, gp, 2436f
2435:             bge          s5, a2, 2446f
2436:             auipc        s4, 822254
                  bltu         t6, a4, 2444f
                  blt          s5, s2, 2442f
                  slt          t0, zero, s5
                  add          t6, a4, s2
2441:             ori          s4, s1, 115
2442:             xori         s3, gp, 1128
                  slti         a3, s9, -1004
2444:             ori          s4, s3, -1763
                  xori         a0, s2, 1232
2446:             add          t4, zero, a0
2447:             slti         a2, s6, 799
                  sltu         a5, t1, s2
                  lui          t3, 461707
                  xori         s1, sp, 1774
                  slli         s6, a6, 24
                  lui          a1, 161370
                  xor          s10, zero, s9
                  lui          t0, 1030237
                  sra          zero, s0, t6
                  ori          s10, t5, 1685
                  sll          t6, s11, t1
                  xor          t2, t2, tp
                  bne          s1, s0, 2470f
                  sra          t1, a6, t5
                  slt          gp, a5, t3
                  srl          gp, t3, s7
                  beq          a4, a6, 2465f
                  blt          t1, zero, 2473f
2465:             xor          a2, s8, a5
                  sll          a5, ra, s9
                  or           s1, a6, t1
                  and          a1, s4, s9
                  bgeu         sp, t3, 2474f
2470:             and          s2, t3, a0
                  ori          sp, a7, 1644
                  auipc        gp, 758830
2473:             slli         a2, s5, 24
2474:             slti         s9, t2, 1586
                  auipc        s0, 225473
                  sltu         t6, a5, t5
                  sltiu        s10, a5, 158
                  ori          s6, t0, 1205
                  auipc        a4, 742220
                  srl          t0, t1, zero
                  addi         a1, s11, -832
                  nop
                  slt          t0, a1, s1
                  xori         s4, t2, 294
                  bne          s4, sp, 2489f
                  srai         t3, a1, 21
                  sll          a5, a2, t1
                  andi         s9, t6, 1486
2489:             bne          s0, a5, 2498f
                  bge          t4, t2, 2492f
                  bgeu         s8, a5, 2507f
2492:             sra          tp, tp, t5
                  auipc        zero, 825436
                  sltu         sp, s2, t6
                  srai         tp, s1, 19
                  srai         a1, a1, 10
                  slti         sp, a1, 1795
2498:             addi         tp, a2, 468
                  srai         s4, a0, 23
                  sra          s6, t1, a0
                  auipc        a6, 616797
                  slli         a0, gp, 30
                  slt          a5, t2, s1
                  add          a1, t1, a6
                  sltiu        t0, zero, -1265
                  bltu         sp, s1, 2520f
2507:             ori          s2, sp, -1851
                  beq          a5, s8, 2510f
                  xori         a1, a5, 614
2510:             bltu         s5, a3, 2519f
                  slti         t4, s11, 744
                  andi         s1, t2, -607
                  srli         t2, s0, 17
                  and          s1, ra, t6
                  beq          a7, s9, 2532f
                  and          t6, s3, t0
                  bge          t6, s1, 2525f
                  bne          s4, t5, 2534f
2519:             addi         t0, t0, 817
2520:             and          a4, a5, a3
                  bne          a4, a1, 2537f
                  sltiu        t1, t0, -1012
                  beq          a1, s11, 2540f
                  bltu         t0, s0, 2535f
2525:             slt          a1, s8, tp
                  add          s3, t5, zero
                  addi         t4, s9, -1475
                  sltu         tp, s0, zero
                  sltiu        t5, s5, -395
                  addi         zero, s2, -426
                  sub          s4, a4, zero
2532:             addi         a4, t2, 726
                  auipc        s0, 966051
2534:             slli         s6, t5, 10
2535:             srl          s8, a6, ra
                  sltiu        zero, s6, 28
2537:             bltu         a0, t0, 2551f
                  slti         s4, s11, 711
                  sll          s10, s5, s8
2540:             bltu         s3, t0, 2547f
                  blt          zero, s5, 2549f
                  srai         t6, s8, 13
                  sll          t1, s2, s2
                  or           t2, s5, t0
                  srli         a5, a2, 8
                  slt          a0, s4, s6
2547:             srl          s4, s4, s4
                  bge          t0, s10, 2551f
2549:             addi         ra, ra, -1702
                  sltiu        s6, s5, -873
2551:             ori          t1, t1, 291
                  slli         t4, s8, 30
                  lw           t2, 4(s5)
                  srai         s2, zero, 18
                  ori          t5, s9, 1305
                  slt          a5, a0, s0
                  addi         s5, s5, 36
                  sltiu        s3, a2, 31
                  and          t5, t6, ra
                  nop
                  sra          s1, ra, s10
                  xor          a2, a3, a7
                  add          s2, t4, a3
3369:             addi x16, x7, 1
3369:             jalr x16, x16, 0
sub_3:            addi         s5, s5, -28
                  srli         sp, ra, 14
                  sw           t2, 4(s5)
                  addi         t5, tp, -733
                  srai         s8, t6, 11
                  andi         t0, s7, -1966
                  ori          a4, s6, 1093
                  la           a4, sub_4
                  add          s1, s1, t5
                  auipc        s6, 82066
                  nop
                  or           tp, t2, s1
                  sub          t3, gp, t2
                  addi         a4, a4, -461
                  xor          s2, sp, t1
                  slli         t6, a2, 23
                  and          t4, s1, tp
                  xori         a3, t2, 1644
                  sltu         s10, s10, t3
sub_3_j6:         jalr         t2, a4, 462 #jump sub_3 -> sub_4
                  sltiu        t3, t2, 150
                  beq          t3, tp, 6f
                  bne          a7, s6, 10f
                  ori          a6, sp, -817
                  srli         a0, s10, 13
                  sltiu        s9, s9, -1239
6:                xori         s8, tp, 1654
                  nop
                  xor          s3, a6, t5
                  lui          gp, 602146
10:               srli         a6, a0, 25
                  add          s1, ra, gp
                  sub          a1, s3, tp
                  ori          s4, s4, -86
                  bne          t2, zero, 22f
                  xori         t3, s3, -798
                  xor          s7, t4, a6
                  slt          a3, t3, a0
                  beq          t5, t3, 20f
                  andi         a4, a6, -1524
20:               or           a2, a5, t0
                  srli         s7, s6, 31
22:               beq          t3, gp, 30f
                  slti         t1, a5, -381
                  nop
                  beq          tp, sp, 45f
                  xor          a4, a3, tp
                  ori          s3, a4, 1079
                  blt          s9, s8, 30f
                  xor          t0, s2, t0
30:               sltiu        s0, s10, -547
                  beq          s11, s0, 41f
                  srl          t1, t0, a3
                  srl          s3, t1, s5
                  slli         s4, s7, 30
                  nop
                  sltu         s2, s9, s10
                  addi         a0, s6, 1069
                  beq          a2, t3, 54f
                  nop
                  sub          gp, a6, t6
41:               bne          a5, t4, 47f
                  bne          a5, a1, 55f
                  andi         zero, t1, -15
                  sltiu        a5, sp, 43
45:               sra          tp, t5, a3
                  slli         a4, s6, 6
47:               nop
                  sll          ra, s7, a7
                  slti         t5, s8, 504
                  auipc        s7, 96473
                  sra          a4, a1, t2
                  add          a5, t5, a0
                  srl          s2, zero, a5
54:               slli         s1, s2, 4
55:               sltu         t6, s9, t1
                  lw           t2, 4(s5)
                  sub          gp, t5, t2
                  xor          t4, zero, zero
                  xor          a1, s11, a0
                  addi         s5, s5, 28
                  sltiu        zero, gp, -114
                  and          a3, s1, a5
                  slt          a2, s8, s9
                  sltiu        t6, s1, 1135
                  ori          s4, a6, -1139
                  add          s2, sp, a6
                  srli         sp, a7, 7
88:               addi x2, x7, 1
88:               jalr x2, x2, 0
sub_6:            sltiu        t6, sp, 1366
                  srli         s7, s1, 22
                  or           a4, s1, a4
                  bne          a2, s6, sub_6_stack_p
                  auipc        a3, 603871
                  srli         s1, a4, 9
                  xor          a2, sp, a3
sub_6_stack_p:    addi         s5, s5, -64
                  addi         s9, t2, 1856
                  sra          ra, a0, t1
                  sw           t2, 4(s5)
                  xori         a2, s3, -1228
                  addi         t0, zero, -1542
                  la           ra, sub_7
                  lui          t0, 653574
                  addi         ra, ra, 639
                  xori         a5, a3, -1197
                  slti         gp, a4, -514
                  and          t6, t1, t4
                  nop
                  slti         a6, s6, 952
sub_6_j10:        jalr         t2, ra, -638 #jump sub_6 -> sub_7
                  slt          s7, zero, a7
                  andi         t0, t5, -717
                  srl          s3, s10, s10
                  xor          t3, sp, t6
                  xor          s7, s11, s10
                  nop
                  slli         s1, ra, 19
                  sub          s10, a7, s8
                  auipc        s9, 863062
                  bgeu         s6, s10, sub_6_j11 #branch to jump instr
                  sltiu        t4, t1, -1989
sub_6_j11:        jal          t2, sub_8 #jump sub_6 -> sub_8
                  la           s10, sub_10
                  slt          t4, sp, t0
                  addi         s10, s10, -883
                  or           t5, ra, s6
                  ori          t6, t2, 1756
                  srl          a1, a3, s9
                  addi         t0, s0, -889
                  srai         gp, a4, 13
sub_6_j12:        jalr         t2, s10, 884 #jump sub_6 -> sub_10
                  sll          t2, a2, s5
                  bge          s11, a5, sub_6_j13 #branch to jump instr
                  lui          s3, 35202
                  addi         a1, t2, 117
                  slli         t1, t4, 8
                  andi         t3, s4, 1404
                  sltiu        s0, t2, -727
                  and          a5, a0, t6
                  srai         s8, t6, 31
                  sra          t3, t3, t4
sub_6_j13:        jal          t2, sub_8 #jump sub_6 -> sub_8
                  srai         ra, s1, 23
                  slti         a3, sp, -929
                  lui          s0, 961821
                  xori         tp, s5, -700
                  nop
                  sub          zero, t5, s11
                  srli         tp, s11, 26
                  srl          a6, a7, sp
                  andi         a4, a1, -500
sub_6_j14:        jal          t2, sub_9 #jump sub_6 -> sub_9
                  sub          zero, a5, s6
                  slt          s3, a1, s5
                  srai         s8, s8, 18
                  slli         a4, t0, 10
                  srl          s0, s5, a3
                  auipc        a2, 448320
                  bne          t0, gp, 7f
7:                lui          s7, 139339
                  lw           t2, 4(s5)
                  nop
                  or           s1, a7, s7
                  addi         s5, s5, 64
                  srl          s2, a7, t0
                  sll          a0, s4, a2
                  andi         a1, tp, 220
                  or           t0, s7, ra
                  sra          a5, s10, a4
                  addi         s6, s11, -345
                  andi         ra, s4, -700
83:               addi x22, x7, 1
83:               jalr x22, x22, 0
sub_1:            srl          t4, s7, t2
                  beq          s11, a2, sub_1_stack_p
sub_1_stack_p:    addi         s5, s5, -12
                  addi         a4, a3, 309
                  sw           t2, 4(s5)
                  andi         t5, s0, -1644
                  slt          t4, t2, zero
                  la           sp, region_0+1680 #start riscv_load_store_rand_instr_stream_0
                  ori          ra, s8, 1764
                  or           t5, s0, a4
                  lw           t1, -16(sp)
                  andi         s8, s10, -193
                  sh           a4, 6(sp)
                  lh           a5, -16(sp)
                  srli         s6, a0, 15
                  ori          tp, s6, -1196
                  srai         a6, t2, 25
                  sra          s10, s2, s8
                  lhu          a1, 12(sp)
                  sh           a5, -16(sp)
                  slt          t0, s8, t4
                  sb           t6, 11(sp)
                  lh           t0, 10(sp)
                  ori          t3, t3, 1479
                  sra          a5, s3, sp
                  nop
                  lh           s7, -12(sp)
                  andi         s0, ra, -758
                  srli         t3, zero, 17
                  and          s3, a1, t6
                  and          s9, t4, t2
                  slt          s10, s11, s7
                  sb           a5, 11(sp)
                  sll          s10, t4, a4
                  lb           t3, -14(sp)
                  and          t1, a7, t4
                  lw           t5, -4(sp)
                  lbu          s2, -5(sp)
                  sw           t5, -16(sp)
                  xor          a6, t2, s8
                  lb           t0, 11(sp)
                  sb           s9, -7(sp)
                  sw           s0, -12(sp)
                  lui          a3, 246640
                  nop
                  srai         t2, s9, 15
                  lb           t3, -14(sp)
                  lh           t5, 0(sp)
                  nop
                  xor          a5, t3, a7
                  lb           s10, 14(sp)
                  nop
                  slli         s10, t4, 1
                  auipc        s6, 532282
                  lhu          gp, 10(sp)
                  slt          t5, a3, t5
                  sh           sp, 12(sp)
                  lb           tp, 14(sp)
                  lh           a4, -6(sp)
                  lh           a5, 12(sp)
                  lb           s9, 1(sp) #end riscv_load_store_rand_instr_stream_0
                  auipc        s8, 57989
                  sll          t4, s11, a3
                  andi         t3, s2, -1718
                  bne          t2, a6, 19f
                  andi         a3, s11, 1378
                  slti         s2, t2, -286
                  lui          s9, 971490
                  slt          t3, ra, a1
                  sltu         ra, s8, zero
                  sub          t5, t2, s5
                  srai         t4, tp, 1
                  bge          s2, a5, 30f
                  bltu         s2, tp, 27f
                  lui          t5, 45360
                  srai         s2, s0, 28
                  ori          s3, a0, -829
                  srli         s7, t3, 18
                  ori          gp, zero, -540
                  or           t1, zero, s11
19:               sltu         ra, t6, t3
                  xori         sp, ra, 524
                  blt          t0, s11, 30f
                  nop
                  or           s10, t5, s9
                  or           t2, zero, s4
                  and          ra, t5, t2
                  beq          t0, t0, 35f
27:               srli         s7, tp, 17
                  blt          gp, t2, 35f
                  xor          a0, s0, s2
30:               sltu         a6, s4, s1
                  add          t3, a7, a0
                  sub          tp, gp, s2
                  sltu         t1, s0, s7
                  sltiu        s10, a6, 1710
35:               sltiu        t5, gp, 1010
                  srai         s2, s7, 13
                  lui          s0, 266819
                  blt          s7, a1, 51f
                  sltu         t0, s6, a1
                  add          s1, s0, s10
                  auipc        t5, 46891
                  bne          t5, tp, 55f
                  auipc        sp, 223505
                  andi         t5, s0, 362
                  and          s6, sp, a4
                  xori         s4, s9, 1857
                  bge          t5, a0, 67f
                  bgeu         s4, tp, 63f
                  andi         a4, s8, 287
                  nop
51:               slli         s4, a2, 4
                  nop
                  or           s6, s8, s9
                  sltiu        ra, a1, -306
55:               nop
                  bgeu         t2, s5, 62f
                  sll          a6, s2, t2
                  nop
                  srl          tp, s0, s10
                  blt          a1, t0, 68f
                  bgeu         t4, s4, 68f
62:               sra          s7, gp, t2
63:               srai         zero, a3, 25
                  bne          t5, s11, 79f
                  auipc        t2, 963212
                  bge          t5, t1, 86f
67:               auipc        a1, 542493
68:               bge          a4, t2, 82f
                  addi         s7, a6, -665
                  blt          tp, s4, 81f
                  srai         s0, s2, 29
                  xori         s7, s3, -1695
                  beq          s3, s8, 86f
                  sra          t6, t2, a5
                  andi         a2, t1, 1897
                  slli         sp, s0, 9
                  slli         a0, s10, 19
                  srl          t6, tp, gp
79:               beq          s4, a4, 95f
                  slli         a1, s7, 17
81:               sra          s3, a2, t2
82:               sll          ra, s9, t1
                  sltiu        a4, t2, -512
                  slli         s8, s11, 14
                  srli         t5, tp, 2
86:               lui          tp, 71938
                  sltiu        a0, s4, -189
                  srl          s2, a0, s3
                  addi         t0, s9, 179
                  srl          t5, s2, a7
                  xori         a6, s2, 798
                  sltu         t3, s5, a3
                  sra          a3, s2, t0
                  nop
95:               xor          s6, s0, a3
                  sub          t0, t0, t6
                  slli         s6, t3, 0
                  sra          a5, t4, gp
                  blt          a6, a0, 109f
                  and          t5, sp, a2
                  slli         a6, a7, 12
                  nop
                  sltiu        s8, s5, 1188
                  srli         a5, a3, 26
                  bltu         s5, a0, 124f
                  addi         s9, a1, 701
                  sltu         s4, a2, a3
                  ori          a2, t3, -453
109:              auipc        t4, 277486
                  bgeu         s3, s0, 124f
                  lui          s3, 286797
                  sll          gp, a5, a3
                  bltu         zero, zero, 130f
                  beq          a6, t5, 123f
                  ori          s8, t2, -1242
                  add          s7, s2, t0
                  and          s0, t4, s1
                  or           a4, zero, s11
                  sltu         t4, a2, a4
                  bltu         t0, t4, 132f
                  sll          s10, t2, a6
                  nop
123:              srai         s4, a7, 9
124:              addi         s6, t0, -451
                  nop
                  sltu         t0, a0, t0
                  sub          t5, a2, a0
                  sltiu        s4, s9, 132
                  nop
130:              or           sp, t4, s6
                  bge          a1, t2, 135f
132:              bgeu         s8, a1, 151f
                  sra          a1, tp, a3
                  sra          tp, a4, t4
135:              bgeu         tp, a7, 139f
                  srli         t1, s9, 3
                  sltiu        a1, t0, -657
                  sll          a3, a6, t6
139:              ori          a0, s5, -1392
                  slli         t2, t6, 4
                  sltiu        a6, s2, 1325
                  sltiu        ra, a1, 1586
                  bltu         t4, a0, 154f
                  add          t5, s1, a6
                  sra          t6, t3, a6
                  blt          s9, s9, 161f
                  sltu         t6, t6, t4
                  andi         a5, s1, 752
                  xori         s9, gp, 1552
                  slt          s4, s4, ra
151:              lui          t1, 407151
                  auipc        gp, 23557
                  srai         tp, s7, 15
154:              srli         s7, s8, 23
                  andi         s2, s9, 897
                  andi         t3, ra, -1736
                  sltu         t0, s7, s2
                  bge          t0, s10, 167f
                  bne          s11, s7, 179f
                  sub          s0, a4, s0
161:              nop
                  sltiu        s9, a3, 329
                  srli         s9, s2, 21
                  nop
                  srai         ra, a6, 19
                  bne          t2, a2, 186f
167:              lui          gp, 349260
                  lui          s4, 272714
                  srl          a4, s7, t0
                  sll          s8, s10, a6
                  or           a5, s4, a4
                  xor          s7, sp, s8
                  bltu         s1, t3, 179f
                  andi         zero, s5, -243
                  add          a3, s8, a1
                  andi         gp, s9, 1186
                  srai         s3, s11, 23
                  bne          a5, a0, 185f
179:              sltu         s3, t4, a5
                  xor          t2, t6, a6
                  sll          a0, t1, tp
                  sltu         t6, a1, s2
                  la           ra, region_1+357 #start riscv_load_store_rand_instr_stream_1
                  xor          s8, a3, tp
                  srai         s9, a3, 7
                  lbu          t6, -12(ra)
                  sb           t6, 2(ra)
                  slli         s8, t2, 18
                  ori          s7, s3, 410
                  slt          a2, s8, a2
                  sb           t5, 0(ra)
                  lh           t1, -13(ra)
                  sb           s0, 14(ra)
                  lbu          s6, 2(ra)
                  lui          sp, 1038238
                  nop
                  sb           tp, -16(ra)
                  addi         a3, a7, -73
                  sb           a1, -8(ra)
                  slli         t2, s6, 20
                  add          a3, s7, tp
                  auipc        t1, 251805
                  sltiu        t4, t5, 244
                  sltiu        t5, s0, -1977
                  ori          s10, a0, -33
                  lui          a6, 282645
                  sltu         tp, s7, t1
                  sh           t1, -9(ra)
                  lb           a1, 9(ra)
                  sh           zero, 9(ra)
                  sll          t0, t3, s3
                  lbu          a2, -12(ra)
                  lbu          s0, 8(ra)
                  add          gp, a6, t1
                  sll          s7, s8, s6
                  sb           t2, 10(ra)
                  sltiu        t1, s0, -1507
                  lb           a3, -12(ra)
                  lb           sp, 8(ra) #end riscv_load_store_rand_instr_stream_1
                  slli         sp, s1, 30
                  bne          t5, a1, 196f
185:              srli         a5, a2, 24
186:              sub          zero, a3, gp
                  auipc        t2, 180555
                  ori          t6, ra, 377
                  and          a1, gp, t5
                  sll          tp, s2, s9
                  blt          sp, a3, 207f
                  and          s9, a1, a7
                  srai         s3, t5, 19
                  lui          a3, 337020
                  slli         zero, s9, 11
196:              bgeu         t5, s5, 209f
                  sltu         sp, sp, s8
                  sltu         t0, s2, s1
                  sltu         t3, tp, s8
                  auipc        s9, 25010
                  beq          a4, ra, 215f
                  nop
                  srai         s8, a7, 23
                  slt          t6, t3, s0
                  slt          a3, zero, a1
                  slti         gp, s11, 1814
207:              bne          a5, s1, 226f
                  bge          s0, s10, 221f
209:              sll          s9, s1, gp
                  auipc        t0, 542952
                  bne          a6, s9, 215f
                  sll          s10, a1, t4
                  xor          s9, s1, t0
                  bne          a5, s11, 224f
215:              ori          s0, a5, -866
                  xor          t0, t4, gp
                  srli         t0, s6, 22
                  bge          s7, s2, 232f
                  andi         a1, ra, 292
                  slt          s7, s9, zero
221:              blt          a6, a2, 229f
                  nop
                  and          s8, s5, a4
224:              nop
                  slt          s4, t3, s8
226:              sub          t4, t5, s11
                  add          s9, s8, s1
                  xor          s10, t1, a0
229:              bltu         s3, t0, 238f
                  slli         tp, t1, 24
                  bne          a5, zero, 242f
232:              lui          a0, 156080
                  srl          tp, s10, ra
                  bne          gp, a6, 251f
                  srl          t4, gp, s7
                  lui          a0, 974748
                  slt          s1, t2, gp
238:              srli         t6, a1, 15
                  addi         a3, a7, -1560
                  bne          s0, tp, 259f
                  andi         s4, gp, 517
242:              sll          gp, a6, t6
                  slli         t2, t4, 29
                  bge          s3, a2, 260f
                  ori          s4, ra, 1930
                  blt          zero, s9, 261f
                  add          t3, a6, gp
                  nop
                  bne          a7, t6, 268f
                  sra          s6, a0, a4
251:              or           a5, sp, t2
                  xor          t0, t2, s0
                  add          s1, s7, a1
                  addi         s9, a1, -626
                  slli         t2, t3, 20
                  beq          zero, zero, 271f
                  xor          a0, a2, a5
                  srai         s2, tp, 18
259:              slti         sp, sp, -1911
260:              srl          a2, s2, a3
261:              auipc        s2, 396716
                  or           t3, a7, s6
                  bltu         zero, s6, 272f
                  lui          gp, 238928
                  ori          s2, s3, -695
                  xor          a1, a6, s7
                  beq          s8, t3, 280f
268:              srl          s10, t3, s8
                  sltiu        t6, t1, -1264
                  slti         a4, a7, -229
271:              blt          s8, s11, 286f
272:              blt          t5, s7, 287f
                  nop
                  sra          t3, s6, a5
                  srai         s2, t0, 17
                  xori         sp, zero, 1556
                  srai         s10, a3, 1
                  bltu         a0, zero, 282f
                  srl          s3, a7, s1
280:              blt          ra, s5, 287f
                  andi         a2, s5, -484
282:              addi         s2, t6, -20
                  slt          a3, s1, s6
                  sll          ra, a5, t2
                  xor          sp, t5, s10
286:              bne          t1, a3, 297f
287:              slli         s6, zero, 9
                  slti         t4, s0, 1186
                  andi         s8, a4, 596
                  bltu         s8, s1, 302f
                  bge          t2, t0, 298f
                  srli         a5, zero, 3
                  beq          s3, s1, 308f
                  xor          a5, a3, a6
                  sub          t3, s2, s0
                  slli         s10, a3, 29
297:              lui          ra, 936132
298:              srai         sp, a6, 30
                  or           gp, s2, s9
                  and          a3, t1, tp
                  lui          s8, 321371
302:              beq          s2, gp, 306f
                  bne          sp, a1, 313f
                  add          t5, s0, a3
                  srai         t1, a0, 21
306:              or           s7, t5, tp
                  bne          t0, s3, 323f
308:              slli         a3, a5, 31
                  slti         t5, s3, -1843
                  nop
                  srl          ra, s7, t2
                  sra          t0, s2, t6
313:              bltu         s9, a1, 326f
                  and          t1, a3, ra
                  blt          t2, zero, 324f
                  bge          a0, ra, 326f
                  xor          ra, a4, a2
                  srai         t2, s1, 12
                  andi         s8, s11, 1612
                  ori          t3, t4, 303
                  sltu         s7, s2, a6
                  bne          t4, a4, 326f
323:              sltu         s8, t1, a1
324:              slt          s7, a7, s8
                  xori         a0, s1, -1756
326:              or           t3, s9, s6
                  srli         t5, t5, 13
                  srli         sp, ra, 3
                  lw           t2, 4(s5)
                  addi         s5, s5, 12
                  slli         sp, s6, 21
430:              addi x16, x7, 1
430:              jalr x16, x16, 0
sub_5:            srai         a2, ra, 30
                  ori          t6, gp, 1964
                  slt          s6, s7, a2
                  addi         t4, a0, 1694
                  nop
                  sltu         s8, tp, s0
                  srli         s7, t0, 28
                  addi         s5, s5, -24
                  andi         t3, a0, 338
                  sw           t2, 4(s5)
                  xori         a0, a2, 1923
                  ori          a4, t4, 1656
                  la           t2, sub_6
                  addi         t2, t2, 596
                  nop
                  nop
                  ori          s6, sp, -1816
                  blt          s5, a5, sub_5_j8 #branch to jump instr
                  ori          a5, s5, -1959
                  srli         tp, s7, 20
sub_5_j8:         jalr         t2, t2, -596 #jump sub_5 -> sub_6
                  la           sp, region_1+183 #start riscv_load_store_rand_instr_stream_5
                  sltiu        t2, tp, -1982
                  lbu          s1, 31(sp)
                  ori          gp, sp, 1195
                  lbu          s9, 108(sp)
                  add          s7, a0, s4
                  add          a0, s10, s4
                  sltiu        a0, s9, -2023
                  addi         gp, s3, 1477
                  lbu          s0, -92(sp)
                  xor          t5, s11, a6
                  sltu         s4, a3, t5
                  lbu          a1, 156(sp)
                  sh           sp, -105(sp)
                  addi         gp, a5, 1928
                  lbu          a2, 76(sp)
                  slli         gp, a3, 19
                  slti         a1, s4, -1952
                  lb           ra, 49(sp)
                  lbu          s0, 112(sp)
                  lbu          s3, -80(sp)
                  slti         s3, t3, -887
                  sub          s8, a2, s10
                  sb           zero, 150(sp)
                  lb           t4, 62(sp)
                  lb           s2, 144(sp)
                  sltu         s3, s7, s0
                  slt          a0, s7, a0
                  lbu          s6, -30(sp)
                  sll          a2, t6, gp
                  sra          t2, t4, tp
                  sb           s4, 202(sp)
                  lhu          s8, 55(sp)
                  sb           t4, -106(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1336 #start riscv_load_store_rand_instr_stream_1
                  lhu          a6, -38(sp)
                  and          t5, s10, t6
                  nop
                  and          s3, s6, s2
                  auipc        a6, 185193
                  sltu         s10, t5, a6
                  lbu          s9, -165(sp)
                  sltu         s0, a2, s6
                  lb           t0, -16(sp)
                  sb           s2, -168(sp)
                  lb           a0, 67(sp)
                  lb           a4, -220(sp)
                  add          a4, a5, zero
                  andi         s8, a3, 1774
                  lh           s10, 234(sp)
                  lhu          a2, 210(sp)
                  lhu          gp, -226(sp)
                  slt          a0, s4, s5
                  slli         s6, a6, 26
                  sw           t1, 200(sp)
                  sll          s7, zero, t3
                  lb           s3, -1(sp)
                  srai         s3, a5, 29
                  sra          a4, s8, s9
                  lb           s6, -152(sp)
                  sb           a6, -202(sp)
                  sb           s10, -85(sp)
                  or           s4, t3, s8
                  sh           a5, 130(sp)
                  lbu          a3, 210(sp)
                  sb           a3, 71(sp)
                  andi         t0, t0, -1443
                  lbu          ra, 1(sp)
                  sra          a1, s3, t2
                  srl          s2, a2, gp
                  lhu          zero, -92(sp)
                  sh           s8, 18(sp)
                  sh           s11, -154(sp)
                  lbu          a0, -197(sp)
                  lw           t3, 252(sp)
                  lh           s3, -216(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_0+1054 #start riscv_load_store_rand_instr_stream_4
                  srai         ra, s1, 10
                  addi         zero, s11, 2028
                  sh           a5, -60(t2)
                  slti         a2, s9, -1296
                  srl          s3, zero, s9
                  sra          a5, a1, ra
                  xor          tp, a0, a0
                  slli         s7, a4, 26
                  sb           s4, -16(t2)
                  lb           t0, -43(t2)
                  srai         a0, tp, 5
                  lw           s3, 62(t2)
                  auipc        s6, 288525
                  lbu          s10, -53(t2)
                  andi         s7, t5, -1193
                  add          s4, s2, a5
                  slti         a3, sp, 1898
                  andi         s2, sp, -555
                  lb           a1, -44(t2)
                  sb           s1, 20(t2)
                  slti         s8, t6, -264
                  lhu          a5, 2(t2)
                  srai         t0, s3, 29
                  and          a0, a0, s9
                  sltiu        s6, s3, 1002
                  srli         t0, t6, 19
                  sltu         s1, a4, s1
                  lh           a0, -16(t2)
                  or           s6, a2, zero
                  sb           gp, -6(t2)
                  sh           s8, 44(t2)
                  sub          a2, s5, a6
                  lh           t4, 20(t2)
                  sub          tp, s1, a1
                  sb           a6, -15(t2)
                  lb           a6, -58(t2)
                  sb           a2, -16(t2)
                  lb           t5, -45(t2)
                  lb           s7, -57(t2)
                  sb           s11, 55(t2)
                  lbu          a2, 23(t2)
                  sltiu        gp, s2, -339
                  lbu          a6, 23(t2)
                  sb           a0, -3(t2)
                  add          s10, sp, zero
                  lw           t5, -30(t2)
                  sw           s6, 30(t2)
                  sb           s0, 12(t2)
                  slt          t5, t6, s1
                  sh           s7, 52(t2)
                  lb           t0, 6(t2) #end riscv_load_store_rand_instr_stream_4
                  la           gp, region_0+1443 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, -60(gp)
                  lhu          s7, -11(gp)
                  sb           s2, -41(gp)
                  lbu          s7, -57(gp)
                  sb           s1, 0(gp)
                  lb           s6, -27(gp)
                  nop
                  nop
                  xor          a1, s8, t5
                  lhu          s1, 5(gp)
                  xor          s0, s5, a3
                  sll          s3, t2, tp
                  slli         t3, s1, 0
                  lhu          s9, -41(gp)
                  lb           s2, -13(gp)
                  auipc        a5, 349328
                  add          s4, s2, s3
                  sll          s7, s7, s1
                  lb           a0, -12(gp)
                  slt          t2, t3, t3
                  lb           a2, 59(gp)
                  sltiu        a5, t4, -742
                  lbu          a5, -21(gp)
                  xori         t0, a1, 145
                  lbu          tp, -36(gp)
                  lbu          s8, 32(gp)
                  andi         s6, a2, 211
                  slli         s4, t6, 21
                  sll          t4, s5, s1
                  andi         s4, s10, -965
                  slli         t2, zero, 25
                  srai         t0, s4, 5
                  sb           s7, -29(gp)
                  srli         s2, s10, 15
                  lb           t3, -43(gp)
                  or           t6, sp, a3
                  or           tp, t1, s7
                  sll          s6, ra, s6
                  lb           t6, -46(gp)
                  andi         s0, t6, 329
                  lbu          a5, -45(gp)
                  sb           t1, 14(gp)
                  lh           t1, -11(gp)
                  auipc        t4, 431120
                  lw           a2, -27(gp)
                  auipc        s3, 202250
                  lb           s6, 2(gp)
                  and          a4, t5, tp
                  slti         a5, zero, -1170
                  lbu          a0, 44(gp)
                  xor          t6, t0, gp
                  lb           t5, 34(gp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1552 #start riscv_load_store_rand_instr_stream_3
                  sb           t4, 249(sp)
                  lb           s0, 237(sp)
                  slti         tp, a7, -1400
                  sltiu        s7, sp, 1870
                  lb           a4, 241(sp)
                  sb           s8, 252(sp)
                  lbu          s7, 219(sp)
                  lb           t6, -113(sp)
                  srai         t1, s5, 29
                  lb           s3, 247(sp)
                  slli         s3, t1, 16
                  sb           s2, -111(sp)
                  and          s1, sp, gp
                  lw           s3, 168(sp)
                  sltiu        s2, s10, -680
                  xori         a5, s10, 1680
                  addi         t5, s7, -1451
                  lbu          t1, 27(sp)
                  lb           s3, 142(sp)
                  lb           t5, 71(sp)
                  andi         s2, a5, 610
                  srli         s1, s7, 24
                  and          a5, s10, s5
                  srl          s8, t5, s9
                  sh           sp, -230(sp)
                  or           t5, t1, ra
                  srli         s6, t0, 4
                  lbu          t6, -7(sp)
                  sb           s10, 185(sp)
                  xori         s7, zero, 702
                  sltiu        t5, zero, -501
                  sb           a1, -243(sp)
                  lbu          s10, -34(sp)
                  sh           a0, -124(sp)
                  lw           s9, 80(sp)
                  sw           a5, -228(sp)
                  sltiu        s10, s1, 1159
                  addi         a4, s9, -2007
                  auipc        s0, 1024372
                  sb           gp, -68(sp) #end riscv_load_store_rand_instr_stream_3
                  slti         ra, t4, 790
                  xori         sp, a6, 1715
                  srl          s1, s3, tp
                  beq          a4, a0, 17f
                  sltu         s0, a6, s5
                  srl          gp, s5, t0
                  slt          s3, s2, a2
                  andi         t6, t3, -1875
                  slt          a1, a1, s8
                  ori          s0, s3, 1702
                  srli         t3, s0, 26
                  srli         s2, s11, 16
                  bge          s4, s8, 19f
                  addi         t1, s11, 1786
                  bge          s6, a3, 19f
                  blt          sp, s10, 20f
                  bge          a1, t5, 35f
17:               sub          s9, t0, a7
                  nop
19:               or           t4, a1, t3
20:               sll          s0, s9, gp
                  slt          a0, tp, s1
                  auipc        s10, 635998
                  or           s9, s10, s7
                  slt          a6, a3, t3
                  and          a0, t4, gp
                  or           s10, t1, t2
                  xori         t0, s1, 1773
                  xor          t5, s4, a5
                  bgeu         a1, s11, 41f
                  sltu         s2, gp, a3
                  andi         a2, t4, 483
                  or           a1, a5, s11
                  lui          a1, 559609
                  andi         t2, t5, -1923
35:               xor          a1, a3, zero
                  slt          t6, t3, s3
                  sltiu        t4, s0, -1546
                  slti         t5, s11, 1808
                  lui          a2, 429234
                  and          a3, s6, t5
41:               sra          a5, s2, a4
                  auipc        a5, 151218
                  auipc        a2, 538574
                  beq          gp, s9, 48f
                  andi         s0, s6, 1370
                  auipc        s0, 247808
                  bgeu         s3, a4, 63f
48:               srai         sp, s7, 18
                  addi         a3, s10, -188
                  bge          s7, ra, 61f
                  slli         s9, t0, 4
                  and          t6, sp, a7
                  xori         s9, t4, 1049
                  auipc        a3, 265999
                  srai         s2, a6, 22
                  or           gp, ra, t5
                  nop
                  and          s3, a2, t5
                  xori         s2, sp, -1004
                  auipc        t4, 50916
61:               bltu         sp, gp, 69f
                  xor          t2, a6, s2
63:               bge          s9, a3, 81f
                  blt          s5, s6, 84f
                  bltu         a7, s1, 77f
                  addi         s8, s6, -1519
                  sltiu        a3, s8, 648
                  and          s0, a7, a5
69:               sltiu        s2, tp, -1899
                  nop
                  slli         s6, gp, 19
                  beq          t4, zero, 84f
                  bltu         t1, s5, 87f
                  slli         t0, t0, 28
                  bltu         s10, s6, 89f
                  bgeu         s2, s4, 92f
77:               beq          s0, a1, 79f
                  slti         ra, s6, -1297
79:               or           a6, s0, a7
                  sub          a4, s7, s3
81:               srai         t3, s1, 0
                  bltu         s1, a1, 98f
                  auipc        a0, 732742
84:               beq          t2, s9, 86f
                  srli         a2, s7, 5
86:               sltu         gp, s6, t1
87:               or           t4, s9, a6
                  blt          s8, ra, 92f
89:               blt          a3, a4, 96f
                  blt          t0, s4, 102f
                  ori          a6, a5, 478
92:               srl          a3, t2, t6
                  sra          t3, a1, s2
                  ori          t1, s9, -846
                  bge          a6, t0, 109f
96:               bltu         t0, a6, 116f
                  auipc        gp, 576704
98:               slli         a3, t0, 1
                  slt          a0, s1, s0
                  sltu         a0, a7, s0
                  sub          a1, ra, s10
102:              auipc        a2, 310246
                  srli         s3, t2, 19
                  slli         s6, a2, 1
                  blt          a7, gp, 121f
                  nop
                  auipc        a5, 756880
                  bge          a7, a6, 122f
109:              sra          s2, s4, t6
                  slti         t6, a2, 445
                  srai         s7, s10, 20
                  slli         t4, s3, 13
                  la           sp, region_1+485 #start riscv_load_store_rand_instr_stream_2
                  slti         s8, gp, 1771
                  sh           tp, -183(sp)
                  lui          t0, 360544
                  sltu         s4, gp, s8
                  sb           s9, 193(sp)
                  lb           s6, -110(sp)
                  lbu          s8, 158(sp)
                  sra          s6, s7, a1
                  lhu          a1, -225(sp)
                  sb           s7, 40(sp)
                  lhu          zero, -173(sp)
                  add          s8, gp, t6
                  xori         t6, s0, -1949
                  lbu          t4, 124(sp)
                  xori         s6, t3, -420
                  sh           s7, -27(sp)
                  lb           s10, -210(sp)
                  xor          t6, t2, s5
                  sh           s2, 131(sp)
                  sh           t5, 41(sp)
                  andi         ra, s9, -580
                  lb           a6, 84(sp)
                  sltu         a5, tp, s6
                  lbu          s10, 135(sp)
                  sb           a2, -248(sp)
                  lbu          t1, 116(sp)
                  lbu          s4, 244(sp)
                  sltiu        s6, s11, -42
                  sltiu        s3, s7, 1895
                  andi         s8, t1, -1418
                  sb           s10, -96(sp)
                  sltu         t3, a5, a5
                  lb           a1, 224(sp)
                  sltu         s1, a5, s1
                  lhu          s7, -101(sp)
                  lb           t2, -85(sp)
                  auipc        ra, 730324
                  srl          s0, sp, t5
                  nop
                  sb           ra, -205(sp)
                  sub          zero, s7, s7
                  sh           s2, -35(sp)
                  srl          a1, zero, a0
                  lb           t0, -113(sp)
                  slt          s4, s5, t4
                  lb           a2, -168(sp)
                  lb           t6, 237(sp)
                  lbu          gp, 132(sp)
                  lb           s7, 162(sp)
                  lb           s6, -65(sp)
                  sltu         s6, a3, t1
                  sb           s6, 148(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         s4, gp, 6
                  slt          a6, s0, t2
                  and          s7, s11, t6
116:              beq          ra, a3, 133f
                  sltiu        gp, a7, 1617
                  or           s4, t0, a2
                  lui          a4, 63849
                  nop
121:              sltiu        s4, t2, -847
122:              addi         s10, t0, -1731
                  srl          t5, t4, a3
                  blt          tp, s4, 137f
                  xori         s3, s7, 1361
                  srai         s2, ra, 12
                  nop
                  addi         a4, s8, -519
                  slt          s10, sp, s3
                  sltiu        t3, sp, -1110
                  blt          ra, s1, 140f
                  sltiu        sp, t5, 1128
133:              and          a6, sp, tp
                  srai         t2, t2, 17
                  bge          a0, t0, 149f
                  bne          a7, s6, 152f
137:              srai         ra, a0, 4
                  bne          t3, t4, 154f
                  or           gp, a1, a7
140:              sra          t6, a6, s8
                  sra          s2, t2, a5
                  blt          s4, s9, 156f
                  bgeu         t5, t3, 155f
                  and          t0, t0, t3
                  slt          t4, t6, sp
                  addi         s4, tp, 1135
                  slli         s6, s4, 18
                  or           a2, a1, s5
149:              nop
                  sltiu        tp, t4, 1343
                  nop
152:              srai         a3, a6, 4
                  slt          t2, t1, s7
154:              lui          s10, 1046279
155:              lui          gp, 261496
156:              sub          t2, s3, s11
                  beq          t4, s8, 169f
                  beq          t3, ra, 160f
                  sub          a5, s4, s6
160:              bgeu         s6, t4, 176f
                  and          t4, a5, s7
                  auipc        s4, 283892
                  slli         s4, sp, 9
                  ori          a1, gp, 1122
                  auipc        t0, 390162
                  slli         zero, s7, 15
                  sub          t0, s8, sp
                  sra          gp, zero, t2
169:              beq          s0, s5, 189f
                  xor          a1, s4, a5
                  slt          s6, t2, s11
                  srl          s6, t1, tp
                  slti         sp, s9, 1011
                  srl          ra, s4, s5
                  slt          s2, a4, s10
176:              sra          s2, s6, tp
                  addi         a5, a3, -1749
                  srai         a0, a4, 30
                  xori         ra, zero, 1395
                  slli         s8, t5, 20
                  bge          s5, s9, 190f
                  bgeu         t2, s0, 196f
                  bge          s5, s10, 199f
                  ori          a3, a6, 125
                  addi         s9, s5, 1879
                  sltiu        zero, a5, -1816
                  addi         s4, a2, -777
                  sra          s7, zero, ra
189:              sll          s3, a4, sp
190:              sll          a4, t3, gp
                  srai         s2, s2, 31
                  srl          t4, s5, s7
                  sra          s1, ra, tp
                  srli         s9, tp, 19
                  auipc        t0, 410996
196:              add          sp, s2, s10
                  bne          s4, t2, 201f
                  and          t6, s5, t4
199:              sll          s6, t2, s8
                  sltiu        s10, sp, 148
201:              bne          t2, a4, 214f
                  slt          a2, s10, s1
                  srl          s4, a7, a0
                  add          zero, s6, gp
                  nop
                  nop
                  auipc        s1, 76535
                  add          t0, a7, s3
                  blt          sp, s5, 216f
                  bltu         a2, s6, 224f
                  bge          tp, a6, 223f
                  bge          gp, a5, 232f
                  sll          a0, t5, t4
214:              bge          t3, a2, 216f
                  and          s10, s11, t1
216:              and          s3, ra, zero
                  ori          a2, a6, -620
                  sltu         t6, s7, s7
                  bge          s0, sp, 223f
                  xori         a1, zero, 764
                  auipc        a5, 948936
                  sltiu        a2, s11, -924
223:              srli         t4, t3, 24
224:              blt          ra, s8, 236f
                  srli         t4, t0, 17
                  bltu         a7, a0, 233f
                  slli         s6, t0, 6
                  blt          s4, s6, 247f
                  andi         ra, s11, 1870
                  sub          s4, sp, s7
                  ori          t5, zero, -1414
232:              add          s1, a5, t6
233:              blt          t3, sp, 247f
                  or           ra, a2, t1
                  or           tp, t0, a6
236:              slti         t2, s4, 474
                  slti         s10, a7, -1023
                  lui          a3, 394477
                  bgeu         s11, a5, 250f
                  bne          s6, ra, 245f
                  sub          zero, a1, t2
                  slt          s9, a1, s9
                  sra          ra, t3, t0
                  lui          s10, 925204
245:              slti         a4, a2, 1643
                  slti         a4, s3, 1516
247:              bne          s4, t0, 255f
                  beq          s8, s4, 266f
                  sltiu        t2, s9, -1127
250:              auipc        tp, 813939
                  or           a3, s8, a6
                  nop
                  sub          zero, a4, s11
                  sll          t6, t1, a7
255:              beq          s5, t4, 260f
                  ori          s2, s7, -445
                  auipc        a3, 644999
                  bgeu         t0, a0, 275f
                  nop
260:              slti         t4, s8, -1273
                  slti         a0, s2, -1966
                  sll          t0, a2, a7
                  auipc        a0, 1040750
                  addi         a3, s9, -1644
                  slti         s8, s4, -1724
266:              srai         s8, sp, 22
                  ori          t4, a7, -371
                  blt          s4, t2, 272f
                  sltiu        a1, a4, -1129
                  andi         a1, gp, 1153
                  sll          s7, zero, a5
272:              bltu         a4, a5, 292f
                  bltu         t1, s11, 285f
                  addi         gp, zero, 1552
275:              xori         t4, t5, 214
                  nop
                  srai         t4, t5, 4
                  nop
                  andi         t5, s6, 1332
                  slti         t2, a0, -1953
                  andi         s0, t5, -511
                  bge          gp, tp, 284f
                  lui          t0, 390454
284:              sltiu        tp, s5, -1212
285:              bne          a2, ra, 298f
                  blt          s4, s0, 288f
                  srl          t0, s0, s4
288:              beq          t2, t1, 295f
                  srl          s3, zero, t1
                  bne          s5, ra, 295f
                  auipc        a2, 962287
292:              nop
                  xori         t6, s10, -1795
                  nop
295:              sltiu        s7, s7, 1334
                  ori          s6, s1, 1054
                  and          s0, s4, a2
298:              sra          s7, s11, a1
                  slt          t3, s9, a3
                  sra          s6, s9, sp
                  slli         ra, s10, 13
                  sltu         a6, a0, a1
                  bne          zero, s1, 315f
                  lui          t4, 376490
                  sub          a2, t2, t6
                  blt          a1, a0, 325f
                  la           s6, sub_6
                  slti         t2, ra, -1271
                  srli         tp, t0, 27
                  addi         s6, s6, -230
                  bgeu         s10, t5, sub_5_j9 #branch to jump instr
                  sra          s7, a4, t4
                  srl          t6, a0, s5
                  or           t4, tp, s5
                  sltiu        s3, a0, -21
sub_5_j9:         jalr         t2, s6, 231 #jump sub_5 -> sub_6
                  ori          s10, s6, 1620
                  slt          a4, a1, t2
                  bgeu         gp, s6, 321f
                  srli         t6, ra, 27
                  bne          s9, s8, 322f
                  beq          s1, tp, 328f
                  lui          t1, 699371
                  addi         t6, zero, 1577
315:              bne          t2, a5, 331f
                  lui          s2, 401944
                  bge          s9, s7, 325f
                  xor          s2, s11, zero
                  slti         s9, ra, -2016
                  bltu         s0, s10, 337f
321:              sub          s4, tp, t4
322:              xori         sp, tp, -505
                  bne          s2, s1, 327f
                  srli         zero, a2, 18
325:              sra          t6, a1, s11
                  slt          a6, a7, s9
327:              bne          a4, a3, 341f
328:              bge          t4, a1, 342f
                  srli         a1, tp, 28
                  sltiu        sp, a4, -409
331:              bgeu         tp, zero, 345f
                  bgeu         a3, s0, 346f
                  andi         zero, t3, -1454
                  nop
                  andi         zero, gp, -95
                  nop
337:              sra          s6, ra, ra
                  andi         t3, a6, -375
                  ori          tp, t1, -986
                  sub          s0, a4, s11
341:              slti         s8, t1, 867
342:              lui          s1, 181365
                  srli         a2, gp, 19
                  blt          t3, ra, 364f
345:              slti         s10, a6, 347
346:              bge          t1, zero, 353f
                  sltu         a6, s9, s9
                  slti         t5, a6, -1689
                  lui          zero, 756183
                  nop
                  sll          t4, a0, ra
                  auipc        s3, 620693
353:              or           s7, s7, t0
                  sltiu        t1, t3, -416
                  ori          a5, s9, -956
                  srl          t6, sp, s10
                  xor          a2, a5, t5
                  bne          zero, s5, 367f
                  lui          s3, 623861
                  sra          sp, t1, t5
                  srl          s0, t0, t0
                  sll          t3, a1, zero
                  add          a5, t2, t3
364:              and          a3, gp, s6
                  srl          s7, t6, a0
                  bltu         s11, s10, 382f
367:              or           gp, a6, t5
                  sub          gp, s3, s2
                  add          ra, s4, s5
                  srl          s7, t3, s5
                  auipc        a4, 214975
                  beq          s6, a5, 388f
                  xori         s6, sp, -1561
                  auipc        s3, 466884
                  srli         s9, s4, 0
                  andi         s1, s9, 717
                  ori          t0, s5, 878
                  addi         sp, zero, -774
                  bne          s7, zero, 397f
                  or           t4, s5, s3
                  sll          s4, t6, s2
382:              xor          t6, s7, s8
                  xori         a5, a3, -572
                  and          ra, tp, a0
                  sra          t4, s7, a6
                  srai         gp, sp, 26
                  xori         s1, t6, -756
388:              sltu         a1, t2, s7
                  and          t2, s3, t5
                  blt          t4, t6, 404f
                  slt          ra, sp, t3
                  sub          s10, a4, a2
                  slti         s0, s3, 1914
                  srli         gp, t2, 25
                  lui          zero, 240070
                  slt          tp, t2, a7
397:              bltu         zero, s7, 409f
                  slli         s3, a5, 5
                  srai         t4, t3, 8
                  lui          s4, 642218
                  andi         t5, a2, -645
                  addi         a1, a2, 337
                  lui          gp, 75939
404:              sra          s7, gp, a0
                  slti         t5, s2, -357
                  add          a5, s3, s6
                  bgeu         t4, s0, 412f
                  sltiu        ra, sp, 1696
409:              lui          a5, 327590
                  beq          a0, s6, 426f
                  bge          tp, sp, 427f
412:              srli         tp, s2, 12
                  bne          s9, s11, 431f
                  bge          ra, s0, 426f
                  add          t5, a0, s11
                  ori          s10, s10, 1129
                  nop
                  slti         t0, t6, -285
                  bgeu         s4, t6, 431f
                  lui          s7, 1022998
                  sltiu        sp, a1, -1114
                  beq          s5, a4, 427f
                  xori         t0, t2, 612
                  ori          t2, tp, 1504
                  and          gp, s2, a4
426:              bgeu         a0, s3, 446f
427:              sra          a5, a2, ra
                  ori          s7, s5, -1226
                  sra          a5, s6, a6
                  auipc        a4, 209901
431:              blt          t3, sp, 445f
                  srai         s0, t5, 12
                  slti         gp, gp, 992
                  slt          t1, s9, sp
                  addi         a4, sp, -14
                  slti         s9, s4, -1456
                  srai         a1, t0, 15
                  srl          s9, ra, t5
                  sub          t5, s8, s5
                  ori          t1, s2, 1399
                  slti         t6, t2, -1316
                  slli         t5, s1, 15
                  xori         sp, s10, -1250
                  slti         a5, s1, -622
445:              bge          ra, s6, 452f
446:              xori         t4, s10, 1106
                  sltu         s7, a6, a2
                  srl          s6, t5, a2
                  sltu         tp, s10, a4
                  xori         a2, gp, 834
                  auipc        t5, 806226
452:              xor          s9, ra, t6
                  srli         s9, s7, 26
                  auipc        s6, 395631
                  srl          s3, ra, s7
                  add          s7, s0, a1
                  andi         gp, a7, -1342
                  or           a6, s0, s0
                  xor          t0, s0, s11
                  bltu         t6, s4, 464f
                  bltu         a1, t5, 466f
                  slt          s9, t6, a4
                  slli         t3, s2, 5
464:              beq          a7, t4, 478f
                  bgeu         a5, s5, 476f
466:              xori         t3, s7, 680
                  sll          s9, s0, s1
                  addi         t2, s0, -855
                  srl          ra, s10, a1
                  bgeu         t3, a4, 479f
                  and          a6, a7, s10
                  srl          a0, s11, s5
                  lui          t6, 296241
                  slli         sp, a0, 19
                  sll          a0, a0, tp
476:              xori         s1, t6, 834
                  srl          a4, a6, s11
478:              add          t2, s9, s6
479:              beq          t0, s11, 495f
                  sll          s10, t2, s7
                  auipc        t0, 608274
                  srai         t5, t3, 13
                  xori         s0, s4, 774
                  sra          a2, s5, s11
                  ori          t4, t4, -844
                  auipc        t1, 687835
                  bltu         t1, a5, 501f
                  bgeu         s11, s7, 500f
                  slt          s9, zero, tp
                  add          zero, a5, a0
                  sra          t5, a2, a5
                  auipc        t1, 978364
                  sll          t2, s0, s7
                  srli         gp, t6, 17
495:              andi         a5, t2, 1743
                  xor          s9, a5, s10
                  srli         t0, s4, 26
                  sltiu        t2, tp, -852
                  bge          a6, gp, 511f
500:              srl          t3, t5, t2
501:              sra          s6, sp, ra
                  blt          gp, s11, 516f
                  lui          s6, 651852
                  bge          a1, s3, 517f
                  srai         s6, tp, 16
                  sltiu        a2, a6, 708
                  nop
                  beq          a3, s5, 516f
                  xori         s2, a4, 1444
                  sll          s8, t0, a6
511:              auipc        s3, 123267
                  xori         t6, a4, -1460
                  sltu         s10, s8, a1
                  ori          s1, s2, -1915
                  sltu         s4, a0, s9
516:              auipc        ra, 233533
517:              srli         s0, tp, 17
                  bgeu         s10, sp, 522f
                  addi         zero, s2, -1785
                  lui          a0, 916139
                  nop
522:              sll          s4, a2, a5
                  sltiu        s1, s11, 1775
                  sltu         a0, a1, s2
                  bgeu         t6, a2, 542f
                  lui          gp, 709578
                  add          sp, s2, s2
                  xori         t0, a0, 1590
                  sra          s6, a1, a0
                  sltiu        t0, t1, 1387
                  andi         s9, s6, -1731
                  or           t0, t1, s9
                  sll          a4, a0, s11
                  srli         s9, s4, 0
                  blt          sp, s10, 549f
                  srai         s0, a4, 3
                  bltu         a6, s4, 553f
                  and          s3, t5, s7
                  or           gp, tp, t1
                  beq          a5, ra, 542f
                  sra          ra, a7, s4
542:              srai         gp, s11, 17
                  xor          ra, s7, s5
                  xor          t4, zero, s9
                  bne          t1, s6, 564f
                  sltu         ra, a7, tp
                  slli         s8, s11, 11
                  beq          s11, a1, 555f
549:              sltiu        t3, s0, 1943
                  add          s3, t6, s4
                  and          s2, s1, a1
                  srl          a3, s3, t3
553:              and          a5, t1, t2
                  xori         gp, tp, 16
555:              bgeu         s8, s5, 557f
                  sra          a5, zero, t3
557:              beq          s4, s4, 577f
                  addi         s1, t3, -1039
                  slti         s1, t5, 355
                  sub          a3, a2, tp
                  or           s7, t3, t1
                  slli         tp, a6, 16
                  bge          a6, a5, 571f
564:              srl          a2, ra, s6
                  ori          s8, t2, -369
                  beq          a2, tp, 573f
                  blt          a1, a2, 576f
                  slti         s10, tp, -2025
                  bltu         a2, a6, 576f
                  srli         t5, s9, 14
571:              auipc        s3, 910129
                  ori          s4, s10, 2035
573:              srai         s1, s0, 16
                  bge          s2, s1, 586f
                  slli         a6, s1, 23
576:              xori         t5, a4, 368
577:              auipc        t5, 282733
                  sll          a3, t2, gp
                  bge          tp, a2, 599f
                  slti         a2, a3, 717
                  slt          s8, a6, zero
                  bge          t6, a1, 584f
                  auipc        tp, 692248
584:              bne          s2, t6, 600f
                  beq          s8, s0, 590f
586:              sra          s2, a0, t0
                  slti         a2, a7, 580
                  or           a1, s4, s7
                  srl          t0, a5, s6
590:              bltu         s6, s11, 602f
                  ori          s1, tp, 1883
                  and          t5, a7, s11
                  nop
                  sll          t2, s3, s2
                  andi         a0, s5, 530
                  bge          s10, s6, 614f
                  nop
                  bgeu         t4, zero, 614f
599:              beq          t6, tp, 616f
600:              bne          s7, a5, 616f
                  sll          sp, t2, t4
602:              srl          s7, s11, s4
                  auipc        t3, 742120
                  sltiu        t3, s3, -1903
                  andi         t4, s3, 1271
                  bltu         s10, s8, 619f
                  sltu         t5, tp, t3
                  blt          s10, t0, 619f
                  and          t1, t2, a2
                  sra          s3, s10, a7
                  bne          s6, s8, 615f
                  xor          t3, t0, s8
                  xori         a4, s1, 671
614:              bgeu         a5, ra, 626f
615:              or           t2, s4, t6
616:              blt          s2, s7, 636f
                  addi         a4, a0, -257
                  sltiu        gp, a1, -517
619:              and          sp, s8, a4
                  auipc        s7, 703888
                  bge          s8, a2, 635f
                  bge          a2, t2, 636f
                  srl          s9, a0, sp
                  sltiu        s6, a2, -1482
                  srai         s6, s8, 0
626:              sltu         s3, a7, t1
                  ori          sp, ra, 2004
                  bltu         t0, t4, 630f
                  addi         t6, a2, -550
630:              xori         t6, s7, 1577
                  ori          a3, s2, 809
                  lui          a4, 90100
                  slt          t1, tp, a3
                  xor          s3, s9, s7
635:              andi         t1, a6, 1933
636:              srl          s1, a7, t1
                  and          t5, sp, t5
                  sltu         t5, sp, s7
                  andi         t1, gp, -2033
                  nop
                  blt          t4, a6, 660f
                  lui          t1, 948353
                  add          tp, t2, a0
                  nop
                  slt          t3, gp, t6
                  or           s1, s10, zero
                  bge          s4, s0, 663f
                  nop
                  slt          t6, t0, a5
                  addi         a1, s10, 372
                  andi         a1, t0, 379
                  or           a0, a2, s0
                  bltu         t1, t2, 667f
                  addi         s9, a2, 943
                  srl          s3, a7, tp
                  bne          gp, s10, 660f
                  bgeu         t2, a0, 662f
                  and          zero, a6, zero
                  or           s7, tp, ra
660:              sra          t6, s2, s4
                  bne          s6, s5, 675f
662:              xori         s0, a6, 687
663:              sltiu        ra, ra, -506
                  sub          t6, s5, s6
                  blt          s10, a7, 679f
                  blt          a4, t3, 678f
667:              xori         s4, sp, -803
                  ori          a2, t5, -563
                  srl          t3, s6, a5
                  andi         s10, t6, 1910
                  sltu         s4, s6, a3
                  xor          s6, sp, s6
                  sltu         gp, a2, a1
                  add          s10, t5, s4
675:              auipc        t6, 588263
                  srl          s10, s2, s11
                  ori          s6, a7, 1926
678:              bge          a5, a3, 680f
679:              add          s8, s5, t0
680:              add          gp, s0, s8
                  bltu         s3, a2, 692f
                  ori          sp, s6, -499
                  bgeu         a1, t4, 699f
                  blt          s7, s0, 698f
                  xori         a4, a6, -1834
                  ori          t6, zero, 1807
                  nop
                  bne          s9, t1, 707f
                  auipc        ra, 744038
                  bgeu         a1, a7, 702f
                  slti         t2, ra, -1908
692:              and          t1, s10, zero
                  xor          tp, s11, t6
                  add          t0, a0, s0
                  xor          s3, a1, s1
                  andi         gp, a7, -933
                  srl          gp, s6, a6
698:              sltiu        s6, gp, 1459
699:              add          t4, ra, a0
                  nop
                  addi         a5, t4, -1477
702:              bge          zero, s10, 716f
                  sll          tp, s6, t3
                  bltu         sp, s7, 720f
                  andi         a3, s2, -1248
                  bltu         a6, t1, 710f
707:              bgeu         s6, s5, 712f
                  auipc        gp, 648613
                  andi         t2, t0, 798
710:              auipc        a5, 356621
                  beq          t3, t1, 727f
712:              lui          a1, 696972
                  addi         a6, a2, 730
                  bgeu         s1, ra, 721f
                  auipc        s3, 674530
716:              srai         t1, s6, 13
                  slli         s7, s8, 8
                  sra          ra, s2, t4
                  sltiu        s7, a7, -692
720:              bgeu         s1, s1, 722f
721:              srli         a5, ra, 15
722:              and          s9, a3, s5
                  bge          s1, s2, 735f
                  beq          t6, s0, 732f
                  srl          s0, s10, a0
                  bne          s2, t6, 744f
727:              xori         ra, s11, -147
                  bltu         s2, s1, 745f
                  add          t6, s6, t4
                  blt          s3, s1, 750f
                  srli         zero, s4, 30
732:              bgeu         t5, s1, 752f
                  srai         a5, s7, 3
                  slli         a6, s11, 16
735:              slt          sp, tp, s3
                  andi         t4, a2, -1423
                  bne          a6, s4, 749f
                  or           a0, a5, a3
                  bgeu         tp, t2, 753f
                  andi         s2, gp, 681
                  slt          t6, s5, a2
                  sll          s3, t1, s3
                  or           t4, s3, a7
744:              beq          s4, a2, 751f
745:              beq          s4, s3, 759f
                  sll          t5, t2, t4
                  bne          t4, zero, 751f
                  nop
749:              slli         a3, s9, 23
750:              bne          a4, t4, 759f
751:              srai         s0, a3, 7
752:              slti         s7, t4, 1742
753:              blt          t5, t6, 767f
                  sll          s7, s7, gp
                  xori         t0, t4, 289
                  nop
                  add          s1, t3, a2
                  srli         zero, a4, 8
759:              addi         zero, s2, 896
                  slti         s9, s5, 150
                  sltiu        a2, t0, 1409
                  sub          s2, a4, t5
                  sub          a3, sp, t1
                  bne          s11, a5, 780f
                  bltu         t6, t4, 770f
                  slti         a4, t0, 93
767:              sra          s3, s0, sp
                  bltu         t1, a4, 781f
                  bge          a0, s5, 781f
770:              bltu         sp, zero, 782f
                  lui          a6, 368312
                  xor          t4, tp, a7
                  auipc        sp, 256553
                  nop
                  add          s0, t2, s7
                  lui          a6, 781743
                  sltu         s0, a5, tp
                  blt          t5, s7, 794f
                  bltu         a7, a0, 795f
780:              sll          s8, sp, a2
781:              slti         s8, t4, 4
782:              blt          t5, s8, 787f
                  and          sp, a3, s4
                  auipc        tp, 526795
                  slli         s9, s8, 21
                  addi         t3, ra, 1614
787:              nop
                  bne          s1, ra, 806f
                  sub          t0, a6, a4
                  xor          s9, s0, a7
                  and          a2, s5, a0
                  sra          t0, s9, a2
                  bne          s1, zero, 812f
794:              lui          s1, 147623
795:              sub          zero, s6, a5
                  blt          t4, s1, 810f
                  srl          tp, s1, sp
                  bgeu         s1, gp, 800f
                  bltu         s9, s8, 815f
800:              slti         s9, sp, 229
                  bgeu         a2, t1, 815f
                  bne          tp, t3, 813f
                  slli         a3, sp, 17
                  and          t4, a0, ra
                  lui          a0, 44402
806:              bge          ra, a3, 813f
                  slti         gp, a5, 585
                  srai         t3, t2, 7
                  auipc        a1, 913803
810:              slli         t4, s4, 23
                  blt          a2, a2, 828f
812:              sltiu        tp, t6, 872
813:              sltu         s1, s1, zero
                  nop
815:              nop
                  auipc        zero, 521439
                  ori          a1, s10, 1114
                  xori         s8, a3, -853
                  bltu         tp, a1, 833f
                  sll          s9, tp, s0
                  bltu         s7, a0, 833f
                  sltiu        t3, a3, 2021
                  srl          s3, s10, sp
                  sra          ra, s4, zero
                  nop
                  sltu         s2, s6, a0
                  ori          a4, s8, -414
828:              beq          t1, ra, 841f
                  bltu         t4, t5, 841f
                  bne          t4, t0, 841f
                  addi         gp, a7, -1621
                  bne          s3, zero, 841f
833:              srl          t2, a5, s10
                  bltu         gp, s11, 839f
                  beq          t4, a2, 841f
                  andi         t6, a1, -630
                  addi         t6, s5, 231
                  or           sp, a0, s11
839:              sub          t3, sp, s11
                  srli         a2, tp, 27
841:              srl          s4, s4, s11
                  lw           t2, 4(s5)
                  sltu         a0, s3, gp
                  lui          gp, 866563
                  addi         s5, s5, 24
                  addi         t0, s5, 1513
                  sra          t3, s6, gp
                  sub          t4, a0, a0
1155:             addi x8, x7, 1
1155:             jalr x8, x8, 0
sub_10:           sub          gp, t0, a0
                  addi         s6, a5, 911
                  addi         s5, s5, -24
                  sw           t2, 4(s5)
                  ori          s8, s9, -1588
                  add          s8, t1, s1
                  slli         a1, s9, 10
                  nop
                  xor          t0, s6, s11
                  slli         s3, s4, 25
                  sltiu        gp, s6, 1388
                  srli         s0, s8, 5
                  sltiu        a0, s3, 1938
                  bltu         sp, t5, 15f
                  bgeu         zero, a0, 15f
                  auipc        zero, 706061
                  sll          a5, a0, t1
                  lui          s8, 74406
                  bltu         s0, t1, 15f
                  slti         s6, s6, -511
                  slti         ra, t3, -753
                  bgeu         t5, a5, 13f
13:               slti         s8, s6, 1483
                  and          s3, t2, t4
15:               sub          t5, s2, s3
                  lw           t2, 4(s5)
                  sltu         t1, s6, s11
                  xori         t6, s0, -1314
                  addi         s5, s5, 24
                  auipc        t5, 398693
                  add          t6, t1, s11
                  sub          a3, t4, tp
                  sll          s6, t4, zero
                  slt          a4, a5, zero
                  srl          tp, sp, sp
                  lui          a1, 60636
36:               addi x30, x7, 0
36:               jalr x30, x30, 0
sub_4:            sra          tp, gp, s6
                  auipc        t1, 362880
                  sltu         s3, a6, s0
                  blt          s10, s3, sub_4_stack_p
sub_4_stack_p:    addi         s5, s5, -32
                  sra          t6, t4, sp
                  sltu         s3, s0, t5
                  ori          t0, t2, 1717
                  sw           t2, 4(s5)
                  srli         s2, t5, 24
                  sra          s3, tp, tp
                  la           t5, sub_5
                  lui          a1, 936068
                  srl          s3, t6, sp
                  sltiu        s2, s4, -327
                  ori          gp, t4, -287
                  addi         t5, t5, 846
                  sltiu        s7, a5, -1858
sub_4_j7:         jalr         t2, t5, -845 #jump sub_4 -> sub_5
                  bgeu         a4, s11, 3f
                  sub          t1, t2, s11
                  slt          t3, t1, s8
3:                andi         t0, zero, -621
                  addi         s3, a7, -1332
                  bgeu         a6, a3, 10f
                  and          s2, s2, a4
                  srl          s4, s1, s2
                  bltu         s3, t2, 10f
                  addi         a1, a4, 918
10:               or           t4, a5, t1
                  and          ra, t2, a0
                  addi         s8, sp, -1364
                  lw           t2, 4(s5)
                  auipc        t3, 833913
                  addi         s5, s5, 32
                  lui          sp, 937020
36:               addi x1, x7, 1
36:               jalr x1, x1, 0
sub_9:            beq          tp, s2, sub_9_stack_p
                  srai         s7, t5, 0
                  sltiu        s8, s8, 231
                  srli         t3, s3, 8
                  nop
                  srai         s6, s3, 30
sub_9_stack_p:    addi         s5, s5, -32
                  xor          s2, t4, ra
                  sw           t2, 4(s5)
                  srai         a0, s1, 19
                  sub          zero, s8, a6
                  addi         s0, a5, 1762
                  xori         s7, s2, 976
                  sra          sp, s10, s9
                  or           a2, s11, s9
                  auipc        a4, 140541
                  srl          s1, t0, gp
                  slt          t5, t6, a0
                  srl          a2, tp, t0
                  nop
                  nop
                  lui          s9, 66034
                  srl          tp, s8, gp
                  xori         s9, s2, 1185
                  beq          a5, t3, 24f
                  nop
                  and          t1, a5, ra
                  andi         a2, s7, -1986
                  bge          a3, zero, 28f
                  slli         tp, tp, 11
                  sra          sp, tp, a7
                  nop
                  ori          sp, t2, 791
                  xor          a5, s2, s9
                  bltu         s10, s7, 33f
                  sltiu        t0, t6, -613
24:               blt          sp, a2, 33f
                  blt          t3, s1, 31f
                  nop
                  srl          sp, a0, a0
28:               bge          s6, s3, 33f
                  slt          a5, t0, t6
                  beq          s9, s11, 33f
31:               addi         s9, t4, 2001
                  slt          t6, t0, a5
33:               xor          ra, t2, tp
                  xor          a2, s9, t1
                  slti         a6, t6, -1643
                  lw           t2, 4(s5)
                  xori         a6, a7, 486
                  srai         tp, s1, 10
                  lui          a3, 950899
                  sltu         a5, s1, zero
                  sub          s0, a2, s9
                  sub          a3, s9, a6
                  addi         s5, s5, 32
                  nop
57:               addi x23, x7, 0
57:               jalr x23, x23, 0
sub_8:            add          a2, s2, s3
                  addi         s5, s5, -16
                  srli         s4, s2, 31
                  sw           t2, 4(s5)
                  xor          t4, gp, s10
                  lui          t5, 706283
                  xori         s1, s3, 148
                  add          s2, s5, a1
                  ori          s6, t2, 587
                  sltu         a2, s11, s0
                  ori          s8, a0, -1380
                  slli         s9, gp, 5
                  srai         a2, a7, 5
                  srl          s0, t6, s1
                  add          s10, s10, s0
                  sll          s4, t1, t6
                  andi         s6, gp, -1815
                  andi         s3, gp, 726
                  sll          a0, t1, s7
                  auipc        s6, 901327
                  bltu         t0, a5, 23f
                  auipc        t5, 846317
                  sll          ra, a2, s4
                  slti         s2, t1, -1788
                  slti         zero, a0, 853
                  sub          s7, sp, s6
                  bne          tp, a5, 23f
                  slt          t6, tp, t4
                  bge          s1, s10, 23f
23:               srl          ra, zero, t6
                  sra          gp, s2, t5
                  srai         a6, zero, 3
                  auipc        s2, 431313
                  slli         s7, t3, 20
                  lw           t2, 4(s5)
                  addi         s5, s5, 16
                  srai         s0, a1, 21
37:               addi x31, x7, 0
37:               jalr x31, x31, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 0x1f
                  beqz x25, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x17, x21, zero
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x25, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x25, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x25, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x25, x10, ecall_handler
                  li x10, 0x1
                  beq x25, x10, instr_fault_handler
                  li x10, 0x5
                  beq x25, x10, load_fault_handler
                  li x10, 0x7
                  beq x25, x10, store_fault_handler
                  li x10, 0xc
                  beq x25, x10, pt_fault_handler
                  li x10, 0xd
                  beq x25, x10, pt_fault_handler
                  li x10, 0xf
                  beq x25, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x21, x17, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
