.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xfd2b4a54
                  li x2, 0x80000000
                  li x3, 0xb
                  li x4, 0x0
                  li x5, 0xa
                  li x6, 0x80000000
                  li x7, 0xb356a3a4
                  li x8, 0x80000000
                  li x9, 0x80000000
                  li x10, 0xe
                  li x11, 0xdb7c26b5
                  li x12, 0xa
                  li x13, 0x4416642e
                  li x14, 0x0
                  li x15, 0xf5fb5e86
                  li x16, 0xed0dd854
                  li x18, 0xf44f577a
                  li x19, 0x4bd395a1
                  li x20, 0xc
                  li x21, 0x80000000
                  li x22, 0x7660b249
                  li x23, 0xb4cfb4cf
                  li x25, 0xa
                  li x26, 0x20b5f0d5
                  li x27, 0x80000000
                  li x28, 0xa23cd03
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x0
                  la x17, user_stack_end
main:             slt          s4, a1, t2
                  add          t6, s3, s6
                  xor          s6, a3, s11
                  la           t1, sub_1
                  addi         t1, t1, -1015
                  bgeu         s4, tp, main_j2 #branch to jump instr
                  and          sp, a0, a2
                  auipc        a4, 911849
                  xor          s7, a5, s0
                  sltu         s6, gp, t4
                  addi         t6, s6, 1313
                  nop
                  and          t4, s9, a0
main_j2:          jalr         t1, t1, 1016 #jump main -> sub_1
                  la           s1, region_1+84 #start riscv_load_store_rand_instr_stream_0
                  srli         t3, ra, 22
                  or           s7, a3, t4
                  lb           a6, -42(s1)
                  srli         s2, sp, 23
                  lbu          s2, 27(s1)
                  lh           s4, -18(s1)
                  slti         s7, s9, 432
                  sltiu        gp, t1, -2015
                  sb           t0, 37(s1)
                  andi         s2, s6, 889
                  sb           tp, -23(s1)
                  sltu         s5, t5, t4
                  sltiu        s3, sp, -887
                  lbu          zero, -55(s1)
                  sb           a6, -31(s1)
                  sltiu        a0, s4, 865
                  sb           ra, 64(s1)
                  slli         gp, t5, 2
                  slti         t4, t3, -1387
                  srli         t4, s11, 17
                  xori         t1, a6, -344
                  lhu          a1, -60(s1)
                  sltu         s2, a5, zero
                  lbu          s4, -33(s1)
                  lw           t5, -52(s1)
                  addi         s5, s9, 951
                  lbu          s3, -15(s1)
                  srl          s3, t3, t2
                  add          s11, s4, s2
                  lhu          s11, 24(s1)
                  lbu          s3, 7(s1)
                  sltiu        a2, s0, 1645
                  auipc        s9, 777762
                  or           gp, ra, sp
                  lb           t0, -31(s1)
                  lw           s10, -56(s1)
                  auipc        a0, 652943
                  srl          s5, sp, a2
                  lb           a3, -63(s1)
                  srl          t0, s11, s3
                  sb           t1, 43(s1)
                  lb           tp, 47(s1)
                  lb           s4, -34(s1)
                  add          sp, a4, s4
                  srli         a4, ra, 16
                  slt          s0, a3, tp
                  sw           t6, -32(s1)
                  sb           s1, -15(s1)
                  or           t1, a5, t6
                  add          zero, s5, sp
                  addi         t0, t5, 978
                  srl          a6, t2, t1
                  lb           a0, 33(s1)
                  lhu          a2, 60(s1) #end riscv_load_store_rand_instr_stream_0
                  lui          a5, 523636
                  and          a0, s8, t5
                  ori          t1, s9, 348
                  blt          t4, a1, 8f
                  auipc        s5, 12791
                  add          s7, a7, a5
                  add          t4, s6, t2
                  sltiu        tp, t6, -468
8:                addi         s4, ra, 2008
                  srl          s4, tp, t6
                  xor          t1, s4, a5
                  addi         s3, s6, -823
                  auipc        t0, 513221
                  bne          s5, a0, 28f
                  slli         a1, a7, 16
                  sltiu        s2, s6, -1446
                  blt          tp, s10, 23f
                  slli         s7, sp, 30
                  beq          t3, s10, 23f
                  addi         t3, t6, -1540
                  slt          s11, s7, a3
                  or           a0, s5, t4
                  slti         t1, a6, 890
23:               bgeu         s2, s3, 38f
                  blt          a2, a0, 27f
                  srai         a3, s8, 8
                  sll          t4, t0, s4
27:               srli         a5, a3, 19
                  nop
                  la           s9, sub_1
                  sltiu        sp, ra, -278
                  auipc        t4, 408502
                  or           s5, zero, t2
                  addi         s9, s9, -339
                  ori          s1, s11, -617
main_j1:          jalr         t1, s9, 339 #jump main -> sub_1
28:               auipc        s11, 868264
                  xori         s9, s1, 252
                  bne          tp, tp, 37f
                  slt          s7, t3, a0
                  srai         t6, a2, 13
                  beq          s9, s10, 39f
                  or           t1, t0, tp
                  andi         sp, zero, 836
                  sub          zero, tp, a1
37:               xor          s4, s1, s3
38:               ori          gp, t6, 282
39:               srl          ra, s2, t6
                  bgeu         a3, a0, 41f
41:               nop
                  sra          t0, s2, sp
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           addi         a7, a7, -8
                  srai         s10, s10, 10
                  sw           t1, 4(a7)
                  xor          s10, a6, s7
                  srai         s5, a3, 8
                  add          s4, a4, a4
                  la           s1, region_0+1513 #start riscv_load_store_rand_instr_stream_1
                  lb           a4, -538(s1)
                  lb           s4, 119(s1)
                  lbu          s10, 97(s1)
                  lbu          gp, -220(s1)
                  lh           s4, -405(s1)
                  lbu          a5, 321(s1)
                  sb           a5, -778(s1)
                  slt          s10, a1, zero
                  srai         a1, s8, 1
                  and          s5, tp, a6
                  add          s4, s8, s10
                  slt          zero, s0, s4
                  srl          t1, t5, s6
                  slt          s5, a1, s9
                  sb           s7, -363(s1)
                  lhu          s3, -1479(s1)
                  sub          s4, s1, tp
                  lbu          t6, 373(s1)
                  sb           gp, 222(s1)
                  sb           t6, -1448(s1)
                  lb           s5, 100(s1)
                  or           a3, zero, s1
                  auipc        s9, 336575
                  sh           s11, -391(s1)
                  lh           t0, -755(s1)
                  lh           ra, -47(s1)
                  sb           s3, -759(s1)
                  lb           s5, -350(s1)
                  lhu          t4, -1271(s1)
                  lbu          ra, -968(s1)
                  lui          s4, 5568
                  lb           gp, -880(s1)
                  lbu          s10, 70(s1)
                  auipc        zero, 197605
                  lbu          a4, -1182(s1)
                  lb           a6, -454(s1)
                  or           a5, t5, gp
                  lbu          a5, -1352(s1)
                  lh           s10, 361(s1)
                  sra          t4, zero, a0
                  or           a0, t1, tp
                  sh           s2, 133(s1)
                  or           a5, s9, s7
                  lb           s0, -1426(s1)
                  lb           sp, -749(s1)
                  andi         s7, a5, 1997
                  lbu          s2, 338(s1) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_0+166 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sltiu        t1, zero, 1803
                  sll          s2, s3, a1
                  lbu          a1, 7(s5)
                  lhu          s9, -12(s5)
                  lb           s7, 5(s5)
                  ori          s7, s1, 866
                  lbu          s11, 1(s5)
                  sll          s4, s5, a6
                  or           s4, s4, s7
                  sb           gp, 8(s5)
                  srl          t4, s4, s6
                  sb           s10, -12(s5)
                  srli         s3, s0, 6
                  lbu          s4, -2(s5)
                  lh           s3, 0(s5)
                  lui          tp, 259120
                  lhu          t3, 16(s5)
                  slli         t4, tp, 2
                  addi         a2, a0, -585
                  lb           s7, 13(s5)
                  sb           a6, 3(s5)
                  lui          t3, 50162
                  lbu          a5, -1(s5)
                  lui          t6, 272749
                  lb           s10, 13(s5)
                  srai         t5, s4, 29
                  sb           s9, -7(s5) #end riscv_load_store_rand_instr_stream_2
                  or           t5, s8, s2
                  ori          gp, s11, -1656
                  sltu         s6, s9, t1
                  lui          gp, 725010
                  beq          a3, a5, 16f
                  and          a1, s5, a2
                  sltiu        sp, a4, 1590
                  xori         s4, s11, -1310
                  bltu         s0, s4, 16f
                  andi         s11, a0, 1913
                  srl          a5, s8, tp
                  bge          s0, tp, 24f
                  andi         t4, a0, 1220
                  add          t4, s6, s7
                  beq          t6, sp, 22f
                  auipc        sp, 32387
16:               srli         s7, s11, 5
                  add          a5, tp, t4
                  nop
                  auipc        a2, 503643
                  beq          t5, t0, 29f
                  and          s5, s1, t1
22:               add          t5, a3, s6
                  and          s10, t4, gp
24:               srai         s1, a0, 23
                  slt          t5, zero, a2
                  bltu         s2, a0, 38f
                  beq          s1, t6, 32f
                  nop
29:               xor          t4, tp, tp
                  bge          a5, sp, 49f
                  srl          s1, s6, t0
32:               nop
                  and          s0, a0, t2
                  andi         ra, a5, -1518
                  srai         tp, gp, 7
                  sra          s11, sp, t1
                  slli         a0, sp, 27
38:               srai         s10, a0, 29
                  sra          s1, s5, s10
                  add          a2, t4, s9
                  add          s10, s6, s4
                  slti         t1, tp, 661
                  srli         s3, zero, 29
                  add          s3, a7, a0
                  blt          t2, t2, 60f
                  or           s7, s1, t0
                  bltu         ra, s10, 51f
                  sltiu        tp, a3, 1070
49:               addi         s7, tp, -1776
                  lui          s4, 213733
51:               nop
                  ori          t6, s4, 369
                  and          a4, a6, s8
                  nop
                  slti         zero, s10, 1439
                  bltu         s2, s11, 76f
                  or           sp, s0, t6
                  sra          a5, s4, gp
                  slli         s3, s8, 13
60:               nop
                  auipc        s1, 932456
                  srli         a3, s0, 7
                  andi         a4, s1, -718
                  nop
                  beq          a7, sp, 79f
                  srai         tp, a3, 16
                  auipc        s1, 698933
                  slli         s10, a2, 25
                  addi         t1, a0, -950
                  add          a6, sp, s5
                  andi         a0, t1, -273
                  sll          gp, s9, gp
                  lui          t1, 155018
                  or           a1, ra, t3
                  bge          t1, t5, 84f
76:               auipc        a0, 114187
                  sub          a5, s7, t2
                  lui          s6, 781625
79:               auipc        t6, 689814
                  sll          s9, s8, s5
                  srli         s0, s8, 4
                  bltu         s3, a0, 101f
                  auipc        t4, 477305
84:               xor          t3, s9, a7
                  sub          a5, s11, tp
                  andi         t0, s8, 514
                  sltu         a1, a1, t4
                  nop
                  sll          zero, a4, a0
                  ori          a5, s2, 477
                  xor          t3, s7, t0
                  srli         t6, tp, 9
                  andi         a0, s7, 980
                  bne          zero, a0, 112f
                  bge          a2, gp, 114f
                  or           a4, sp, a7
                  sub          zero, s1, a5
                  bge          s10, s7, 114f
                  sltiu        zero, s1, -1252
                  bltu         t2, ra, 104f
101:              slt          s2, t4, t2
                  addi         s2, a6, -1934
                  srai         t3, t4, 28
104:              andi         s11, s4, -1916
                  bgeu         s5, a1, 118f
                  sll          s4, t5, s7
                  slli         a4, a4, 10
                  slli         t3, a6, 17
                  ori          t1, sp, 1810
                  auipc        s6, 285154
                  auipc        a6, 377762
112:              sltiu        s2, s9, -1299
                  srl          s7, a2, a6
114:              lui          t1, 180102
                  beq          a7, ra, 134f
                  blt          tp, s10, 118f
                  andi         tp, a0, 1552
118:              lui          ra, 116556
                  bne          t5, tp, 137f
                  beq          a3, a7, 121f
121:              sltu         a1, s6, s4
                  srli         a1, s11, 18
                  srai         s3, t3, 9
                  ori          t4, gp, -1868
                  auipc        s3, 760886
                  sub          a4, t1, s4
                  ori          s6, s6, 1012
                  srai         sp, s11, 6
                  sra          t4, t1, a4
                  slti         s2, a1, 1209
                  slti         t3, tp, 35
                  andi         s9, s7, -1433
                  bltu         s2, s7, 134f
134:              and          a3, s10, t4
                  srli         ra, t2, 10
                  nop
137:              andi         t0, a0, 99
                  bgeu         t1, a3, 147f
                  add          a0, gp, zero
                  bltu         a3, a5, 153f
                  or           s6, t5, tp
                  blt          ra, zero, 148f
                  and          a5, a6, a3
                  xor          s9, s0, a1
                  srl          t6, t0, t1
                  sra          a4, a7, a1
147:              bgeu         sp, a2, 157f
148:              or           zero, a2, a0
                  sltu         s7, a3, s2
                  sra          t6, t3, s11
                  sub          t3, a2, a3
                  ori          t5, ra, 1773
153:              xori         a2, t3, -513
                  sra          t4, s6, a7
                  ori          s11, s9, -722
                  and          a6, a5, a0
157:              sub          t6, a0, t5
                  blt          s9, t6, 167f
                  auipc        a5, 177056
                  nop
                  sra          t4, sp, a5
                  sub          s9, a4, s6
                  slt          t3, t4, a6
                  sltiu        a1, ra, 543
                  bltu         a5, s7, 181f
                  sltiu        a0, s9, -1044
167:              sltu         a4, s7, a5
                  srli         a5, a2, 24
                  addi         a0, a3, 68
                  or           t3, s0, s4
                  srli         s5, t0, 18
                  srli         t0, a5, 15
                  sll          s7, a2, a3
                  xori         a3, zero, 1272
                  xor          t3, s5, t2
                  slti         s3, s10, 154
                  sub          gp, a6, a6
                  auipc        t3, 964115
                  nop
                  sltiu        gp, a4, -1032
181:              xori         sp, s1, 1473
                  andi         ra, t0, 1216
                  nop
                  sll          s11, t5, s10
                  ori          s7, s7, 1331
                  xor          s3, a7, ra
                  blt          s7, t6, 195f
                  ori          zero, t1, 1346
                  bltu         s5, t0, 198f
                  xori         a0, s7, 1146
                  xori         t1, s9, 1228
                  beq          t1, s10, 196f
                  xor          s6, t3, a2
                  nop
195:              bltu         sp, s9, 214f
196:              slli         gp, a2, 1
                  slti         t3, t0, -324
198:              addi         a6, t4, 1675
                  addi         a2, s9, -1648
                  lui          tp, 604024
                  sub          t4, tp, zero
                  bge          t4, sp, 214f
                  slli         a1, s9, 4
                  xori         s9, a2, 869
                  or           sp, s10, s0
                  addi         s11, t1, -1784
                  auipc        t1, 783043
                  blt          s9, a2, 224f
                  srai         a6, t4, 9
                  sltu         s10, a0, t5
                  add          s9, zero, a6
                  srl          a5, a7, a6
                  andi         a5, t0, -1016
214:              srl          s10, s11, s9
                  xori         t1, s6, 48
                  sra          s6, s10, s4
                  sltiu        a5, t2, -320
                  bltu         t2, a4, 232f
                  and          s3, a1, gp
                  nop
                  xor          s2, s6, a6
                  srl          t0, t3, s6
                  bltu         s9, t4, 233f
224:              add          a2, ra, a0
                  slli         a4, t6, 30
                  and          a4, a6, s2
                  or           s5, t2, t5
                  sltiu        t5, tp, -173
                  addi         t5, sp, -30
                  sll          s0, s7, a6
                  ori          tp, a2, -53
232:              ori          s4, t0, 446
233:              and          zero, t6, a1
                  andi         s1, s6, -1171
                  add          s9, s4, t0
                  sll          a2, t2, a6
                  and          a4, s9, sp
                  bne          a6, s10, 256f
                  srli         s10, s4, 23
                  nop
                  slt          s10, a3, tp
                  bgeu         t3, a0, 257f
                  sub          s0, s5, s3
                  beq          a2, a2, 252f
                  beq          s7, s11, 265f
                  sltiu        s9, t1, -1736
                  sltiu        s3, a6, 983
                  sub          zero, gp, s4
                  sub          ra, a3, t3
                  bltu         s1, a7, 251f
251:              sltiu        t3, a7, 1152
252:              ori          s1, a1, -629
                  bne          a4, a4, 258f
                  xori         a6, sp, 1702
                  beq          s8, s7, 257f
256:              slti         t4, t4, -1967
257:              blt          s2, t6, 270f
258:              auipc        a2, 506035
                  ori          gp, a4, 1757
                  xor          s3, a5, a3
                  auipc        ra, 587205
                  bne          sp, s7, 266f
                  sltu         a3, t1, a5
                  bge          s2, gp, 277f
265:              addi         s6, t5, 1674
266:              nop
                  bltu         s0, s10, 283f
                  srl          s6, s0, a5
                  sltu         s3, s11, s11
270:              beq          gp, t1, 271f
271:              sll          s0, s3, s6
                  sltu         t6, a3, a7
                  add          s5, ra, t5
                  or           s7, t2, a0
                  xor          t3, a1, a7
                  sltu         t4, s4, a3
277:              xor          tp, a6, s8
                  slti         s11, a0, 1087
                  srli         a0, gp, 15
                  xor          s6, s7, a7
                  srl          sp, s3, t5
                  sll          a2, t6, s0
283:              bltu         t6, ra, 292f
                  blt          t2, sp, 290f
                  and          gp, t6, a4
                  sll          a0, a0, t6
                  bne          s5, t0, 296f
                  srl          s11, s8, s2
                  andi         ra, zero, 1735
290:              add          a4, t0, s2
                  auipc        s1, 187576
292:              or           s0, a3, a2
                  or           t6, t2, s7
                  sltiu        t3, s2, -1559
                  and          a2, a6, a3
296:              bgeu         zero, s8, 305f
                  and          s4, s4, zero
                  sll          s2, a6, a7
                  andi         s0, a7, 1527
                  slli         a1, t5, 6
                  srli         zero, a1, 3
                  sltiu        gp, s7, -1107
                  slti         a2, s6, 383
                  sll          s3, a0, a3
305:              nop
                  sltu         zero, tp, t5
                  slli         t6, sp, 4
                  srai         s7, a3, 15
                  srli         s5, s6, 31
                  or           s3, a3, s7
                  xor          a6, t5, sp
                  ori          zero, s8, 373
                  andi         t4, a5, 76
                  lui          s5, 279318
                  sll          a0, t5, s0
                  sll          s2, s1, t2
                  sltiu        a1, s11, 239
                  andi         a0, t4, -371
                  ori          zero, t6, -1164
                  lui          s0, 574274
                  add          s0, tp, t0
                  bne          s7, a6, 340f
                  sub          t6, s2, s5
                  slli         s1, t4, 16
                  beq          tp, t5, 344f
                  bgeu         s5, a3, 345f
                  auipc        s0, 701241
                  sltu         t6, s1, t6
                  sub          a3, sp, a1
                  addi         s5, a7, -1473
                  and          s11, s7, a3
                  sra          a1, a3, a3
                  ori          a5, a3, 1548
                  sltiu        s3, t3, -1518
                  ori          s5, sp, -851
                  xori         s2, s8, 671
                  addi         s10, s10, -475
                  and          s5, a4, t3
                  bgeu         s3, t2, 351f
340:              beq          s7, a7, 359f
                  sltiu        s9, a6, 1913
                  xor          s10, gp, s4
                  srl          s5, a0, gp
344:              srli         a2, s2, 8
345:              bge          t5, ra, 358f
                  sll          s6, s5, gp
                  slt          s4, a3, t4
                  nop
                  sltu         a3, t1, t0
                  sltu         t3, t2, ra
351:              slli         a3, sp, 19
                  or           t1, s9, t2
                  bge          s8, s3, 361f
                  addi         s7, s10, -1433
                  srl          ra, t5, zero
                  nop
                  sll          a4, s11, sp
358:              sltu         sp, s9, s4
359:              or           ra, t6, s11
                  sltu         s3, s2, a7
361:              addi         s9, a5, -631
                  la           sp, region_0+1217 #start riscv_load_store_rand_instr_stream_0
                  sra          s11, s1, a1
                  srl          s4, zero, a5
                  lh           a0, 19(sp)
                  xor          a5, a3, s11
                  sra          gp, t2, s6
                  sll          a0, t5, gp
                  xori         s2, t5, 1340
                  slli         s9, t4, 8
                  sltiu        s9, s3, 1901
                  nop
                  lb           s3, -30(sp)
                  lb           zero, -38(sp)
                  sra          a1, tp, s2
                  sll          s3, a4, t5
                  lb           s11, -255(sp)
                  lh           a5, -251(sp)
                  addi         s4, a4, -706
                  slli         s4, a5, 8
                  sra          s9, a0, s11
                  lb           s11, -50(sp)
                  sb           t3, 57(sp)
                  sb           sp, 160(sp)
                  sb           t6, 46(sp)
                  auipc        s7, 817684
                  xor          a5, gp, s4
                  addi         s3, ra, -1140
                  srl          gp, s8, s3
                  sra          s6, s0, s4
                  lb           tp, 80(sp)
                  slli         a1, sp, 3
                  sltu         tp, s0, a5
                  add          s4, a2, s7
                  sb           s6, 144(sp)
                  sb           gp, 174(sp)
                  andi         a2, t0, -264
                  and          s0, t2, s3
                  lb           a1, -89(sp)
                  lb           a4, 24(sp)
                  xori         a2, s3, 12
                  sra          s11, a5, t4
                  auipc        s11, 754057
                  sltiu        a6, s2, 1435
                  sh           t4, 99(sp)
                  sh           s11, 17(sp)
                  lbu          a0, 37(sp) #end riscv_load_store_rand_instr_stream_0
                  xor          s11, a1, s5
                  sub          s1, a1, t2
                  bne          a2, s1, 374f
                  srai         ra, s3, 20
                  slti         s6, s3, 64
                  slti         s9, a3, 159
                  slti         a1, ra, 1313
                  sub          zero, tp, a4
                  sub          s1, a5, s3
                  andi         tp, a4, -1457
                  bltu         t6, a0, 374f
                  nop
374:              add          t0, t3, t6
                  bge          s5, t4, 384f
                  sra          s9, s3, a4
                  sub          s2, t4, t2
                  slt          t6, s9, s7
                  auipc        s6, 1031421
                  sub          t6, s11, s0
                  sltu         a0, s4, t0
                  sub          a5, a6, s3
                  sltiu        a1, ra, -2011
384:              sltu         s2, s3, t1
                  bltu         gp, s4, 394f
                  sub          s3, s2, a1
                  slli         a3, s6, 28
                  slli         t3, a1, 8
                  srai         s3, gp, 1
                  sll          a5, s2, t4
                  xor          a3, t6, t0
                  bgeu         s9, tp, 411f
                  or           a2, t2, t0
394:              sub          t4, t6, s7
                  bltu         t0, s5, 407f
                  sltiu        gp, gp, -1626
                  xor          a2, a6, s4
                  srl          gp, tp, s9
                  or           gp, s4, s7
                  srl          a6, s1, a7
                  or           s9, t6, t2
                  slti         s7, s1, 194
                  slti         s7, t4, -414
                  bltu         s5, s2, 417f
                  add          t1, s8, t3
                  and          a4, s3, a6
407:              slt          s0, s6, a0
                  sra          a4, a3, sp
                  sub          s2, s2, t2
                  auipc        tp, 305407
411:              or           s5, tp, s2
                  or           s2, zero, t3
                  sra          a1, a3, a6
                  sltiu        a6, s9, 1024
                  srli         s1, s5, 15
                  slt          ra, zero, tp
417:              srai         s4, t4, 16
                  slti         t0, t3, 819
                  sltu         s7, sp, a3
                  add          t1, ra, a0
                  auipc        t4, 670940
                  sra          a0, sp, s1
                  srli         sp, s9, 8
                  bge          t3, s6, 433f
                  slt          a2, s6, a3
                  srai         a4, a3, 27
                  srai         t1, t0, 24
                  bge          a4, s5, 429f
429:              slt          s10, s6, s0
                  or           t6, s9, a3
                  and          s9, a4, s11
                  andi         zero, a3, -1509
433:              ori          s4, s9, -24
                  add          s4, s11, s0
                  sub          a6, s8, t1
                  sltiu        s9, a1, -313
                  srl          s9, tp, a4
                  lui          s4, 149900
                  beq          s3, s7, 440f
440:              lui          t3, 820564
                  ori          ra, a6, -1965
                  bltu         s1, s10, 454f
                  andi         t4, t2, 438
                  lui          a2, 680270
                  lui          t0, 584177
                  srl          sp, a1, s11
                  and          s10, s11, s2
                  auipc        s11, 346994
                  srai         a0, a6, 12
                  bltu         s1, t3, 454f
                  bgeu         gp, s4, 459f
                  addi         tp, sp, -39
                  or           s2, s3, s9
454:              srai         a5, a2, 10
                  nop
                  slti         ra, zero, 1455
                  sub          s1, s7, a3
                  sltu         t6, a5, t4
459:              auipc        a4, 643821
                  sub          s3, s10, ra
                  or           a2, s2, a5
                  sltiu        s3, s10, 171
                  srli         a1, s11, 18
                  sltiu        s7, gp, -1325
                  bltu         s2, t2, 484f
                  beq          t5, s3, 484f
                  sra          t4, t0, a5
                  sra          s7, s2, a4
                  bge          a6, t1, 484f
                  blt          s6, ra, 486f
                  srli         s10, s11, 16
                  sltiu        sp, s11, -936
                  blt          s4, a4, 478f
                  andi         s5, ra, -1907
                  bge          s11, a5, 486f
                  slti         zero, a2, -1093
                  add          a2, a2, sp
478:              sltiu        a1, s11, -1805
                  xori         gp, t1, -675
                  ori          gp, a2, 546
                  nop
                  beq          a7, sp, 486f
                  bne          t6, sp, 486f
484:              bne          tp, s5, 486f
                  bgeu         sp, t6, 486f
486:              xor          a2, s9, s9
                  nop
                  andi         a5, s2, 1496
                  and          t4, s11, s10
                  or           sp, a2, t4
                  lw           t1, 4(a7)
                  or           t0, s2, s2
                  lui          s7, 253764
                  addi         a7, a7, 8
                  sltu         t4, sp, zero
625:              addi x27, x6, 0
625:              jalr x27, x27, 0
sub_3:            andi         s4, zero, -173
                  lui          s0, 537900
                  bge          a6, sp, sub_3_stack_p
                  xori         s11, a0, 1411
sub_3_stack_p:    addi         a7, a7, -12
                  lui          t6, 211209
                  sw           t1, 4(a7)
                  andi         a3, t0, -212
                  or           tp, t0, a3
                  and          a3, s10, zero
                  la           s11, region_1+938 #start riscv_load_store_rand_instr_stream_6
                  lb           t5, -385(s11)
                  ori          s6, s5, -622
                  lb           zero, -390(s11)
                  lhu          s9, 108(s11)
                  sh           s5, 434(s11)
                  sub          t1, s8, t3
                  lb           t3, 383(s11)
                  lbu          t0, 827(s11)
                  lb           s5, 439(s11)
                  lbu          t0, -337(s11)
                  lb           s3, 592(s11)
                  lhu          s10, 972(s11)
                  sb           a3, 763(s11)
                  sltu         ra, a5, s3
                  ori          s10, a7, -1381
                  andi         t6, a7, 291
                  sll          t1, s2, ra
                  lbu          t6, -255(s11)
                  addi         sp, s8, 1830
                  sltu         a1, zero, s6
                  lhu          zero, -722(s11)
                  lb           t4, -875(s11)
                  lbu          s0, -469(s11)
                  sb           ra, -441(s11)
                  lbu          a6, -564(s11)
                  sb           t3, 839(s11)
                  lhu          s4, 794(s11)
                  lw           s9, -578(s11)
                  and          s1, tp, t5
                  sb           a1, -565(s11)
                  sb           s7, -34(s11)
                  lhu          zero, 560(s11)
                  nop
                  lb           sp, 19(s11)
                  auipc        t3, 624455
                  sra          a3, a6, s6
                  lbu          s3, -36(s11)
                  auipc        t5, 785505
                  lb           t6, -200(s11)
                  slli         s9, a6, 4
                  srli         a4, s5, 30
                  srli         a0, t6, 0
                  sltu         s7, a2, ra
                  sh           s3, -414(s11)
                  add          a5, sp, s6
                  sub          zero, s2, s1
                  sh           s8, -686(s11)
                  slti         t0, t2, 223
                  lbu          a1, -375(s11)
                  lhu          tp, -654(s11) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+804 #start riscv_load_store_rand_instr_stream_10
                  sltiu        s3, s11, -952
                  andi         a0, a0, 54
                  lui          s4, 725270
                  sltu         s11, a1, s4
                  sh           tp, -6(sp)
                  lhu          gp, -2(sp)
                  slt          a5, s2, s5
                  slli         a4, s2, 24
                  lbu          s7, -6(sp)
                  add          ra, a7, a4
                  sh           gp, -14(sp)
                  xori         t4, s11, -2021
                  sll          s3, a4, a7
                  lb           s1, -13(sp)
                  slli         s6, gp, 18
                  lb           a2, -11(sp)
                  add          s1, a7, s10
                  lbu          a2, -15(sp)
                  lbu          s7, 1(sp)
                  slti         s7, s5, 1160
                  sb           zero, 2(sp)
                  sw           tp, 8(sp)
                  slli         s11, t6, 9
                  lb           a3, 11(sp)
                  lui          t5, 321126
                  or           a4, t6, s6
                  lbu          t1, -10(sp)
                  srl          a3, t3, s7
                  xori         t4, s7, -1113
                  lw           s6, 8(sp)
                  lbu          s4, -7(sp)
                  lh           zero, 12(sp)
                  or           a6, a5, t2
                  lbu          zero, 4(sp)
                  xori         a6, t4, -1362
                  lbu          zero, -5(sp)
                  andi         s2, s11, -1416
                  lhu          s11, -10(sp)
                  or           t4, a5, t5
                  sb           a1, 1(sp)
                  or           s7, t0, a2
                  sub          zero, a5, s8
                  lhu          t5, 6(sp)
                  lb           tp, 1(sp) #end riscv_load_store_rand_instr_stream_10
                  la           a5, region_0+1651 #start riscv_load_store_rand_instr_stream_2
                  lbu          s9, -26(a5)
                  or           a4, t2, s7
                  lb           a2, 44(a5)
                  srli         s3, s1, 13
                  sb           s1, -20(a5)
                  lbu          s2, -2(a5)
                  slt          s0, s9, s7
                  slti         t4, s6, -712
                  lbu          t5, 12(a5)
                  xor          s6, tp, t6
                  lbu          s2, 25(a5)
                  sltu         a3, s9, t4
                  sub          t1, s8, s3
                  lb           s5, -50(a5)
                  sb           a3, 8(a5)
                  lb           ra, 34(a5)
                  lui          s7, 736206
                  lb           sp, 14(a5)
                  andi         t0, t0, 251
                  add          a2, sp, s8
                  slt          sp, t3, s2
                  sw           t2, 37(a5)
                  sb           t2, 9(a5)
                  sra          a1, s4, t2
                  add          s1, a4, s6
                  sb           t5, 4(a5)
                  sb           t3, -8(a5)
                  sb           ra, 34(a5)
                  sb           s5, 60(a5)
                  sltiu        ra, s4, -259
                  sub          t0, t2, s3
                  srl          zero, t0, s9
                  lbu          s11, 47(a5)
                  or           s10, t6, a6
                  srai         a1, a1, 4
                  lbu          ra, -60(a5)
                  sub          ra, zero, t2
                  ori          t3, a2, 485
                  sltiu        a2, s2, 211
                  lbu          zero, -44(a5)
                  ori          zero, t3, 140
                  xori         zero, ra, -1044
                  auipc        s4, 352355
                  sb           s7, 11(a5)
                  srli         s2, gp, 9
                  lh           s3, 5(a5)
                  sh           a6, 31(a5)
                  sltiu        s7, s3, 950
                  nop
                  lhu          tp, -43(a5)
                  add          sp, s3, t3
                  sb           t4, -18(a5)
                  sb           t2, 44(a5)
                  lbu          sp, -48(a5)
                  nop
                  lb           t3, -46(a5)
                  lhu          t5, 11(a5)
                  lh           a3, 43(a5) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_0+1556 #start riscv_load_store_rand_instr_stream_11
                  sh           tp, -12(s3)
                  sra          t6, sp, a1
                  add          ra, a6, s1
                  lh           t6, -6(s3)
                  lbu          t4, -6(s3)
                  sb           s7, -16(s3)
                  lhu          t6, -4(s3)
                  srai         s11, t6, 30
                  lh           t1, -10(s3)
                  lbu          t1, -15(s3)
                  lb           t4, 9(s3)
                  lbu          a1, 16(s3)
                  sb           a3, 6(s3)
                  sh           s2, 4(s3)
                  sb           s7, -14(s3)
                  sb           s7, 9(s3)
                  srl          t6, s10, s3
                  and          t5, t5, a3
                  lbu          s0, -2(s3)
                  or           s2, a6, a2
                  srai         s6, a5, 8
                  auipc        sp, 411580
                  lui          zero, 1012890
                  slli         a0, s6, 4
                  lui          t1, 127940
                  slti         a2, s6, -178
                  lb           gp, -5(s3)
                  sb           sp, 5(s3)
                  lbu          zero, 5(s3)
                  lw           t1, -12(s3)
                  slt          t1, a5, tp
                  sh           sp, 0(s3)
                  srli         a2, a4, 14
                  sltiu        s10, t4, 698
                  sb           t0, -15(s3)
                  sh           s5, -10(s3)
                  slti         sp, a5, -1262
                  ori          s11, tp, 930
                  lb           a1, 10(s3)
                  lb           zero, 3(s3)
                  sll          a5, a5, s8
                  lbu          a5, -2(s3) #end riscv_load_store_rand_instr_stream_11
                  la           a1, region_1+1684 #start riscv_load_store_rand_instr_stream_5
                  xori         t6, s1, 1144
                  sb           s1, 0(a1)
                  lbu          t5, -1(a1)
                  lbu          t6, 10(a1)
                  lb           a0, -7(a1)
                  lw           t5, 8(a1)
                  lh           s9, 10(a1)
                  or           gp, a1, s1
                  slti         s5, a4, 1716
                  sb           s5, 3(a1)
                  and          s1, gp, t6
                  addi         a4, s0, 1740
                  xori         t0, a4, 616
                  sh           s10, -10(a1)
                  lb           t6, 9(a1)
                  lhu          s7, 14(a1)
                  lh           s3, 0(a1)
                  lb           a6, -8(a1)
                  ori          a0, s7, -1040
                  auipc        s1, 857074
                  auipc        t0, 9952
                  lw           t0, 16(a1)
                  lbu          a6, -2(a1)
                  or           s5, tp, s1
                  lbu          s4, -8(a1)
                  or           s4, a4, s7
                  sw           a4, 16(a1) #end riscv_load_store_rand_instr_stream_5
                  la           a0, region_0+1761 #start riscv_load_store_rand_instr_stream_1
                  slt          a1, a1, sp
                  sltu         s6, s4, t3
                  sb           s6, 13(a0)
                  srl          sp, s6, s7
                  sh           s10, 7(a0)
                  lbu          t6, -12(a0)
                  or           a2, a1, t3
                  srl          t6, t5, t2
                  add          tp, a6, a2
                  sltu         zero, s6, s3
                  ori          t6, t6, -266
                  slli         zero, s5, 16
                  ori          t4, t1, 455
                  slt          t3, s10, s10
                  sll          zero, s10, t2
                  nop
                  lh           s5, 9(a0)
                  srli         s4, a5, 23
                  nop
                  or           t5, ra, t0
                  sb           t4, -6(a0)
                  sltiu        s0, s1, -1403
                  add          s2, a2, tp
                  lbu          s11, -7(a0)
                  sra          t4, zero, zero
                  lbu          s3, -16(a0)
                  sltu         a1, a3, s5
                  sh           s6, -3(a0)
                  xori         s4, a2, -1329
                  andi         s4, t3, 1708
                  lb           ra, 16(a0)
                  sub          t0, a1, s4
                  lbu          s7, -7(a0)
                  xor          s5, a0, s8
                  auipc        s5, 36118
                  nop
                  srai         s4, s3, 25
                  sll          a3, s3, zero
                  sltiu        t3, t2, -1838
                  lbu          s1, -4(a0)
                  lhu          s2, 5(a0) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_1+1601 #start riscv_load_store_rand_instr_stream_13
                  sra          tp, a3, s8
                  slli         a2, a3, 0
                  slti         t5, s3, 1281
                  slt          a4, t1, s6
                  slli         s9, s3, 0
                  sltiu        s4, a4, -211
                  xori         t0, a1, -1189
                  andi         a2, ra, -1723
                  lbu          a6, 50(s2)
                  sll          gp, s4, t2
                  lb           s3, 57(s2)
                  lb           a0, 23(s2)
                  lh           tp, 25(s2)
                  nop
                  lb           t1, -44(s2)
                  xor          t3, t5, t1
                  lb           a2, -50(s2)
                  andi         a5, s7, 133
                  sltiu        a2, s4, -1353
                  sll          s5, t0, a4
                  lui          zero, 684170
                  lb           a4, 51(s2)
                  lb           sp, 26(s2)
                  sltiu        s0, s1, 1281
                  lb           t0, 24(s2)
                  sltu         a2, s2, a2
                  lbu          s7, 46(s2)
                  lbu          s7, 64(s2)
                  lbu          t4, -44(s2)
                  sltiu        s11, s6, 242
                  xori         s9, a1, 1464
                  sh           s4, -7(s2)
                  or           t0, zero, t4
                  slti         t3, s7, 215
                  slt          t3, s8, s6
                  sb           a3, 36(s2)
                  nop
                  sltu         t4, t0, tp
                  sb           s5, 4(s2)
                  lhu          t4, 33(s2)
                  lh           s0, 13(s2)
                  sltiu        s0, s2, -1651
                  lbu          a2, -15(s2)
                  andi         gp, s0, 1478
                  sll          t3, t0, a6
                  sb           s10, -14(s2)
                  lb           gp, -4(s2)
                  sltu         a0, a6, s11
                  lb           a2, 16(s2) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+1204 #start riscv_load_store_rand_instr_stream_7
                  sw           s11, 0(sp)
                  ori          t3, s4, 914
                  lbu          t1, 1(sp)
                  xori         gp, a2, 430
                  lui          tp, 150684
                  sb           a1, -9(sp)
                  lb           s0, 15(sp)
                  lw           s4, -16(sp)
                  lbu          ra, -9(sp)
                  lw           ra, 8(sp)
                  lui          a0, 972768
                  sltu         a3, a0, s0
                  auipc        s9, 348203
                  sh           t1, 14(sp)
                  srli         t3, s7, 27
                  lbu          zero, 16(sp)
                  lb           ra, -14(sp)
                  lbu          a3, -4(sp)
                  addi         s6, sp, -1007
                  sb           s5, -13(sp)
                  sb           t3, 6(sp)
                  xori         t6, s3, 532
                  lhu          a5, -2(sp)
                  srai         a6, s9, 30
                  sw           a4, 4(sp)
                  sltiu        a6, sp, 140
                  lbu          zero, 11(sp)
                  lw           t0, -4(sp)
                  lbu          t1, -1(sp)
                  lb           s11, -13(sp)
                  sb           s5, 7(sp)
                  auipc        a0, 619105
                  addi         s10, a6, -681
                  lbu          s7, -7(sp)
                  lb           s6, -7(sp)
                  lw           t4, -4(sp)
                  lui          s4, 719368
                  andi         t6, t3, 989
                  lbu          s6, -9(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1762 #start riscv_load_store_rand_instr_stream_8
                  sltiu        gp, t4, -808
                  slli         t5, s2, 2
                  andi         a6, s6, -136
                  sltiu        a4, s11, 1779
                  lb           a3, -161(sp)
                  slli         t3, tp, 30
                  lh           a4, -96(sp)
                  sra          zero, a3, s2
                  lbu          s0, 147(sp)
                  sb           t4, -115(sp)
                  srli         a2, t2, 13
                  or           a0, a3, s9
                  lw           a0, -38(sp)
                  srai         s4, zero, 28
                  addi         s1, ra, 1989
                  srai         s0, a2, 4
                  lb           a4, 201(sp)
                  sb           t5, -183(sp)
                  sh           s2, 62(sp)
                  lb           tp, -35(sp)
                  lbu          a6, -196(sp)
                  sltiu        a0, s6, 1172
                  xor          zero, s3, s9
                  lb           tp, 19(sp)
                  lbu          s10, -81(sp)
                  sb           s5, 12(sp)
                  or           t0, s10, sp
                  and          s0, t3, t6
                  srai         s1, a0, 12
                  slti         a5, s6, -924
                  sll          s3, a0, s7
                  lbu          s10, -120(sp)
                  lb           tp, 197(sp)
                  srli         s1, a2, 16
                  add          s1, s4, s0
                  sltiu        ra, a6, -1529
                  nop
                  slti         s2, t3, -76
                  srl          zero, a7, tp
                  sh           tp, 68(sp)
                  srl          s4, a6, s10
                  lhu          s11, -142(sp)
                  slti         s4, s8, -950
                  andi         a5, a1, 612
                  srl          t3, t4, a2
                  lbu          a5, 137(sp)
                  slli         a6, ra, 6
                  srli         gp, s2, 16
                  lbu          s10, -165(sp)
                  lb           s3, 82(sp)
                  lw           gp, -6(sp) #end riscv_load_store_rand_instr_stream_8
                  beq          zero, s10, 18f
                  bne          t3, s4, 8f
                  or           a1, t6, s5
                  bge          gp, a0, 14f
                  bltu         t5, sp, 23f
                  addi         a1, a6, 800
                  sltiu        t1, s4, 1825
                  bge          s8, a4, 10f
8:                auipc        s6, 646106
                  addi         s5, a7, -1481
10:               addi         s0, sp, -65
                  bltu         zero, s0, 12f
12:               xor          a4, a7, s7
                  addi         s3, a0, -615
14:               bne          t4, s4, 24f
                  nop
                  sub          s2, ra, t3
                  slt          t6, a2, a6
18:               ori          s10, t0, 1325
                  lui          s7, 446345
                  ori          s6, t6, -1233
                  blt          s11, s5, 33f
                  sub          ra, a3, s5
23:               ori          s6, t3, 1004
24:               or           a2, tp, ra
                  nop
                  lui          zero, 320458
                  or           a2, t5, a3
                  bge          s4, a4, 39f
                  xori         t4, a2, 1751
                  slli         a1, t6, 29
                  xori         s1, a0, 1497
                  sltu         t4, t3, t0
33:               andi         t3, s5, -1786
                  or           gp, s5, t2
                  sub          t5, s11, s10
                  xor          a4, t6, t1
                  or           t1, a0, sp
                  sltiu        a3, s9, -1036
39:               sltu         a1, s7, tp
                  bltu         zero, s10, 52f
                  srl          a6, a5, zero
                  beq          a5, s11, 48f
                  sltu         a1, s11, s11
                  slli         s10, a7, 19
                  sll          sp, s7, t5
                  bltu         t6, s10, 65f
                  srli         t4, s7, 12
48:               addi         s6, t1, -560
                  auipc        s2, 239113
                  bne          t0, s0, 62f
                  sltiu        gp, t1, 390
52:               bge          s7, s8, 72f
                  xor          gp, s5, ra
                  add          a0, t3, zero
                  xori         t1, a2, -418
                  addi         gp, s6, -548
                  addi         s6, s1, 1889
                  and          t4, s2, t1
                  srai         a1, s0, 4
                  lui          s9, 980823
                  sltu         a1, a0, ra
62:               bne          s9, sp, 82f
                  add          a3, t2, a7
                  srai         sp, s8, 14
65:               xor          t6, s9, a6
                  sltu         s5, a2, ra
                  slti         t4, s7, -1961
                  bltu         a3, s7, 70f
                  slti         zero, gp, -2015
70:               slti         ra, a3, -1502
                  addi         s2, t1, 988
72:               xor          s5, s0, s6
                  addi         s5, s9, 871
                  slli         s3, s1, 18
                  andi         s5, a6, -946
                  sltiu        ra, s6, 694
                  bne          s2, s8, 93f
                  bge          s7, s8, 84f
                  addi         a3, t2, -908
                  andi         t1, t4, 1392
                  sll          t0, t2, a5
82:               andi         s0, gp, -82
                  blt          s9, t1, 99f
84:               srl          s11, s11, t0
                  and          s2, t4, t4
                  beq          s0, s4, 90f
                  slt          t6, a7, a5
                  or           t0, s5, a1
                  srai         s5, a1, 17
90:               xor          s10, zero, s2
                  sltu         a6, t5, t3
                  and          s7, tp, tp
93:               xori         s1, sp, -407
                  bge          a2, tp, 103f
                  bne          t1, ra, 103f
                  nop
                  blt          gp, a6, 105f
                  bltu         sp, sp, 103f
99:               bge          t1, s9, 103f
                  xor          zero, a1, t3
                  addi         s3, s6, -135
                  bne          s4, s7, 114f
103:              srli         a0, s11, 0
                  sltiu        t0, s4, 1393
105:              srai         s2, a6, 21
                  bgeu         a0, s10, 111f
                  sltu         t4, s1, s10
                  auipc        a1, 969185
                  sltu         t0, s0, a6
                  blt          a5, s11, 119f
111:              sub          s11, a3, s6
                  slti         a3, s4, 1412
                  sltu         a0, s0, s10
114:              blt          t5, t4, 121f
                  xori         a4, t4, 1887
                  bgeu         a6, s9, 130f
                  add          s10, s3, t4
                  add          t0, s8, a0
119:              auipc        a0, 107424
                  auipc        t1, 832165
121:              nop
                  srai         a0, gp, 26
                  xori         t6, a5, -1015
                  ori          t5, a3, -1713
                  bge          s4, tp, 141f
                  sltiu        tp, t3, 1368
                  xori         t4, s0, 1893
                  slti         ra, a1, -1595
                  slli         s6, sp, 6
130:              bge          t1, t0, 142f
                  or           s9, s11, s4
                  add          a4, s10, s3
                  sltu         a1, ra, s6
                  blt          s0, s10, 139f
                  sub          t4, s0, a1
                  srai         s7, t6, 27
                  srai         t0, ra, 28
                  xori         a4, s2, -1143
139:              or           t5, t4, s0
                  srl          a3, s11, a0
141:              bne          zero, s8, 144f
142:              srli         a1, a3, 2
                  bgeu         a4, s11, 151f
144:              bge          s6, s8, 150f
                  sltiu        s4, a5, 370
                  sub          a3, s11, t2
                  nop
                  srl          s3, a3, a6
                  add          t5, sp, t3
150:              add          t4, a4, a7
151:              bge          s2, a5, 158f
                  ori          s7, a1, 1652
                  sra          s5, a0, s9
                  or           a6, tp, t4
                  lui          tp, 747678
                  sra          s1, s9, t5
                  add          t0, t1, t0
158:              srai         t4, a4, 16
                  srai         s5, t2, 28
                  xor          a5, a5, t1
                  bltu         s10, a1, 172f
                  srai         a6, s1, 15
                  andi         t6, t5, -1752
                  slt          sp, t6, a0
                  slt          s4, s5, sp
                  xori         zero, ra, 596
                  and          a4, s7, s8
                  sra          a4, t4, s0
                  or           s4, a3, s7
                  srai         a5, s3, 22
                  sll          t1, t0, s5
172:              slli         s9, gp, 7
                  nop
                  bge          zero, s10, 193f
                  slli         s3, zero, 31
                  auipc        s10, 543713
                  bne          s10, a3, 197f
                  sltiu        sp, t6, -1292
                  addi         a5, s10, 1557
                  addi         t4, s4, 1438
                  srai         ra, s6, 10
                  lui          t6, 237609
                  xor          a4, t4, s0
                  sra          s10, s5, a6
                  slli         sp, s10, 26
                  sll          s5, a5, sp
                  beq          a4, t4, 199f
                  bge          a3, gp, 193f
                  srl          t0, s0, t4
                  sltiu        s1, t2, -1472
                  sra          gp, sp, s2
                  xor          t0, s1, t6
193:              addi         ra, a1, -609
                  xori         a5, s6, -1874
                  sltiu        zero, s4, -513
                  srl          s2, s9, t2
197:              beq          s1, s7, 211f
                  sll          t1, s4, s2
199:              xor          zero, a3, t3
                  slt          a6, t5, tp
                  bne          t3, sp, 213f
                  and          s1, s0, ra
                  sltiu        a4, s6, -1542
                  slli         s2, s7, 13
                  sltiu        a1, a3, 925
                  sra          a1, t3, s3
                  srli         s0, s3, 13
                  blt          zero, t5, 215f
                  slli         s5, s8, 21
                  xor          s1, a1, a1
211:              add          t4, s8, a3
                  nop
213:              nop
                  sltiu        a5, s4, 645
215:              bgeu         s11, s6, 235f
                  add          s4, s1, tp
                  sltu         t1, a4, a5
                  sra          s7, a5, t4
                  xor          gp, s10, t4
                  addi         t0, a3, -938
                  slt          sp, s8, t0
                  lui          s4, 530536
                  or           a2, s1, a7
                  sll          tp, t6, a0
                  nop
                  lui          t1, 211972
                  add          a4, zero, s8
                  and          s4, t1, s11
                  blt          s3, t4, 237f
                  sub          t6, s3, t5
                  sltiu        s5, s8, -443
                  ori          t6, s3, -76
                  sltu         a1, a3, t3
                  bne          a6, s3, 244f
235:              srai         a4, tp, 31
                  or           gp, a2, t5
237:              nop
                  srl          a5, s11, a7
                  blt          tp, t4, 240f
240:              srl          a6, s9, s5
                  sltiu        s9, a1, -321
                  slt          a1, s8, s5
                  srai         s4, a0, 5
244:              xori         a5, a5, 530
                  auipc        s3, 928836
                  slt          t6, a3, t4
                  lui          s10, 111284
                  ori          t6, gp, 1913
                  add          s5, s8, t0
                  xor          a0, s6, ra
                  sub          a4, s7, sp
                  and          s4, a7, a7
                  add          a6, t1, s6
                  sltu         tp, s9, t0
                  la           sp, region_1+766 #start riscv_load_store_rand_instr_stream_4
                  sb           s7, 115(sp)
                  xori         a4, a3, -1736
                  or           a3, sp, t2
                  sll          t4, ra, t6
                  srai         s0, t5, 26
                  lb           s9, 1189(sp)
                  lb           t1, -762(sp)
                  sltiu        t0, s6, 1932
                  nop
                  sh           s7, 904(sp)
                  lbu          tp, 1038(sp)
                  auipc        t0, 960296
                  lui          s11, 264931
                  lh           t3, -482(sp)
                  add          a6, t3, s5
                  lui          a5, 325849
                  lbu          s2, -659(sp)
                  srli         gp, s9, 24
                  sb           a1, -333(sp)
                  lbu          a4, -196(sp)
                  slli         s0, s3, 26
                  nop
                  lui          t6, 85187
                  nop
                  ori          t0, tp, -1019
                  sltu         a1, a3, a5
                  lbu          a6, 725(sp) #end riscv_load_store_rand_instr_stream_4
                  auipc        a0, 42494
                  xori         a2, s4, 1197
                  slti         t3, s4, -454
                  xor          tp, s0, a0
                  andi         s10, a2, -602
                  bge          a7, t3, 269f
                  slli         sp, gp, 5
                  slli         s5, s4, 8
                  bgeu         a5, s3, 272f
                  slt          s6, a5, a3
                  blt          t3, a3, 269f
                  sll          s6, gp, s11
                  xor          s9, t6, a3
                  sub          a6, a5, s0
269:              blt          s1, a4, 280f
                  sub          s11, s2, a5
                  sltu         s6, s1, a7
272:              auipc        s10, 129767
                  srli         s7, a3, 31
                  add          a0, a3, zero
                  bge          t6, s10, 281f
                  sll          t4, t2, a3
                  and          s9, a2, t0
                  slt          gp, s1, a6
                  bne          t1, t3, 297f
280:              or           s5, a6, s2
281:              blt          a1, s11, 285f
                  sll          s1, a7, s5
                  xori         a1, s1, -126
                  blt          t4, zero, 296f
285:              beq          zero, a1, 287f
                  sltu         s5, a2, a0
287:              lui          tp, 86041
                  xor          t4, t1, t0
                  bne          s8, s11, 308f
                  sra          s10, s4, a5
                  xori         s2, t4, 698
                  beq          t3, s0, 308f
                  bne          a6, a5, 296f
                  slti         s6, s10, -984
                  slti         a3, t3, -1593
296:              lui          a1, 855644
297:              and          zero, s10, a2
                  beq          t6, ra, 317f
                  and          s11, s8, t3
                  auipc        a3, 777870
                  sltu         s0, s8, ra
                  beq          t3, t5, 307f
                  lui          s9, 531301
                  ori          a4, s4, -346
                  srai         a0, s2, 26
                  auipc        gp, 1013989
307:              srli         s10, s7, 1
308:              xori         t6, tp, -863
                  slt          t1, a3, s8
                  addi         zero, a0, -552
                  blt          t1, gp, 331f
                  sub          s4, a1, s7
                  sltiu        s3, s7, -1924
                  srai         gp, t4, 20
                  xori         t5, s7, -1772
                  xor          s3, a1, a2
317:              blt          gp, a2, 329f
                  addi         a6, t4, -401
                  bltu         sp, s4, 335f
                  ori          s4, s2, 686
                  srl          a6, ra, zero
                  srl          t6, s9, s1
                  andi         gp, gp, -1100
                  bne          t3, s6, 332f
                  srli         t0, s9, 23
                  ori          s7, s2, -766
                  beq          a2, s9, 331f
                  bne          s7, s9, 333f
329:              add          s4, tp, t0
                  bgeu         s11, s10, 339f
331:              slt          s6, tp, s3
332:              ori          t4, a7, 122
333:              ori          t5, s5, 543
                  add          t4, t4, s0
335:              slt          s3, a4, s11
                  add          s4, a0, a0
                  slti         t3, a0, -1828
                  bne          t0, t0, 344f
                  sra          t1, sp, a5
                  ori          tp, a0, 286
                  bltu         s5, t5, sub_3_j6 #branch to jump instr
                  andi         s1, s4, -1269
                  slli         t6, a7, 0
                  addi         a0, s5, 1408
sub_3_j6:         jal          t1, sub_4 #jump sub_3 -> sub_4
339:              xori         s11, a6, -876
                  xor          a0, s10, s0
                  add          ra, s9, tp
                  blt          ra, s3, 360f
                  sll          t1, t0, t0
344:              slti         zero, t4, 48
                  sub          gp, ra, s0
                  srli         s4, t2, 14
                  lui          a5, 1020299
                  slli         t3, t0, 24
                  bne          s1, s0, 356f
                  lui          a0, 341741
                  srai         s9, a6, 7
                  or           zero, a1, s1
                  sub          a5, s9, zero
                  lui          tp, 120855
                  nop
356:              bge          a0, t3, 365f
                  and          a5, a3, a5
                  nop
                  srli         a6, s5, 8
360:              slt          zero, s6, a4
                  sub          a6, a7, tp
                  bgeu         s11, t4, 370f
                  lui          t6, 29680
                  xori         s5, a5, 470
365:              and          s5, s11, s2
                  sra          ra, sp, t1
                  andi         s5, t0, 699
                  xori         s11, gp, -167
                  ori          s9, s8, -993
370:              xor          s11, a7, t2
                  slti         a3, t4, 1019
                  xor          s1, t0, t5
                  bne          s11, s6, 379f
                  sub          s4, t4, ra
                  slt          s2, s3, a4
                  nop
                  srli         s5, tp, 10
                  sltiu        s1, a4, 1428
379:              ori          s7, s5, -1070
                  slt          s5, t3, s8
                  sltu         s6, a5, s2
                  slt          s1, tp, a1
                  sll          sp, s6, t4
                  sll          s10, ra, zero
                  sltu         a3, a2, a2
                  add          a3, zero, s11
                  srli         a6, t6, 29
                  auipc        s2, 44788
                  bgeu         a3, a2, 408f
                  sra          a5, s11, t1
                  srli         s5, t3, 10
                  bge          tp, s1, 408f
                  blt          s9, t5, 404f
                  blt          a0, a1, 408f
                  sub          s4, t1, tp
                  and          a0, a1, a0
                  slli         a6, s6, 14
                  xor          a0, a1, sp
                  xor          gp, s11, zero
                  srl          t3, a0, t1
                  slli         s1, t4, 5
                  lui          s6, 807241
                  srli         s9, a4, 21
404:              slt          t3, s2, s8
                  srli         t5, a3, 8
                  ori          a3, a5, 112
                  sltiu        t4, t5, 1820
408:              srai         tp, a7, 27
                  addi         s5, s9, 1305
                  sltu         s0, t6, t0
                  srai         tp, s11, 31
                  bgeu         s11, s3, 414f
                  slli         a2, s7, 20
414:              slt          gp, s1, s2
                  or           a6, s2, a1
                  srl          a4, sp, s3
                  sub          t0, a5, s9
                  or           s7, a1, t3
                  srai         a2, s1, 10
                  slti         s2, a0, -1517
                  bne          sp, s5, 425f
                  slli         s5, t6, 18
                  sra          gp, s4, ra
                  auipc        a0, 394674
425:              nop
                  slli         t6, a3, 14
                  srl          a6, s0, a7
                  nop
                  andi         s11, s9, -1393
                  srai         s4, s9, 29
                  xori         t3, s2, -1282
                  bge          s4, s11, 439f
                  bgeu         a1, sp, 453f
                  sltiu        s3, tp, -973
                  slti         s3, t5, -1116
                  add          a5, a3, sp
                  srli         a5, zero, 2
                  sltu         s10, s3, s9
439:              ori          s11, zero, -916
                  srai         t0, s6, 19
                  lui          tp, 217514
                  slli         a0, s0, 11
                  bgeu         a1, ra, 455f
                  srli         s4, s4, 30
                  srl          s7, a7, t6
                  bgeu         sp, s2, 458f
                  xor          s3, a0, s5
                  sltu         s3, a4, a7
                  nop
                  bltu         t4, s9, 461f
                  sra          s10, s5, tp
                  bge          s0, tp, 464f
453:              nop
                  srl          gp, a1, t1
455:              auipc        s6, 975412
                  beq          s8, a2, 466f
                  nop
458:              sub          sp, a5, a6
                  xor          s3, a3, ra
                  srli         t3, a5, 13
461:              srl          t5, s11, s0
                  xori         s6, tp, 55
                  sll          a3, a0, s8
464:              srli         t6, s2, 11
                  xori         tp, s0, -925
466:              sltu         s3, a7, tp
                  xor          gp, t5, s11
                  bne          a0, a2, 469f
469:              slt          t3, s5, tp
                  ori          s4, t5, 1776
                  ori          t6, t1, 453
                  xori         t6, ra, 691
                  xori         tp, a0, 1048
                  ori          s9, t0, 860
                  sub          a5, t1, s4
                  xor          a6, s1, a5
                  addi         s5, a0, 1759
                  sltu         a1, s0, s1
                  beq          t5, t5, 487f
                  sltu         a6, s8, s10
                  andi         a1, a0, -1872
                  bltu         t2, a4, 491f
                  xor          s2, s7, s2
                  slli         s3, t2, 31
                  nop
                  sra          t1, a0, a7
487:              slti         tp, a2, -1269
                  and          s9, a4, a2
                  sltiu        ra, t0, 229
                  sll          ra, t0, sp
491:              xori         s0, t5, -355
                  bne          gp, t3, 510f
                  andi         s3, t4, 481
                  lui          s9, 232369
                  bgeu         a7, s4, 507f
                  sltu         a3, gp, gp
                  add          a5, s10, a4
                  srl          s9, s9, gp
                  blt          s3, t3, 519f
                  sub          a3, s4, zero
                  bgeu         s11, a0, 505f
                  xor          a5, gp, t3
                  srai         t1, a6, 12
                  beq          s1, s11, 518f
505:              auipc        a4, 177581
                  sub          s9, gp, s11
507:              srl          s11, s4, t3
                  sub          s4, t3, s4
                  auipc        t3, 257136
510:              ori          t0, t6, -527
                  slli         a2, gp, 31
                  xori         t5, a6, 1922
                  nop
                  xori         s0, t2, -355
                  andi         t0, a2, 615
                  xori         a3, ra, -1205
                  beq          s10, s10, 536f
518:              and          t5, a7, t5
519:              slt          s1, s9, t5
                  addi         a1, s2, -1574
                  addi         a4, ra, 733
                  add          s11, s11, s4
                  or           sp, a0, a6
                  auipc        s2, 592381
                  srli         t0, a5, 17
                  bgeu         a0, s10, 542f
                  sll          a4, a4, sp
                  xori         a5, a4, 106
                  ori          a4, s9, -785
                  beq          s11, a5, 535f
                  xor          a3, ra, s5
                  srai         a2, a2, 21
                  sltiu        s2, a2, -456
                  xori         s0, a1, 570
535:              xor          s6, s11, s6
536:              srli         tp, s10, 3
                  sltiu        a0, gp, -1728
                  or           zero, s9, gp
                  nop
                  add          a4, s11, sp
                  sll          a4, t3, sp
542:              lui          t5, 922270
                  blt          s0, s0, 559f
                  addi         a3, s0, 1968
                  and          s10, zero, s5
                  add          a2, a2, t0
                  xori         s11, a0, 560
                  bltu         s10, a4, 567f
                  and          s10, a1, t2
                  ori          s3, a6, -142
                  sll          t5, a3, s4
                  bgeu         s10, t0, 564f
                  xor          t6, a7, t0
                  slti         t0, a2, 643
                  sltiu        a2, s0, 375
                  sltu         s7, a2, t6
                  la           a1, region_1+1873 #start riscv_load_store_rand_instr_stream_0
                  addi         t5, a3, 931
                  sb           ra, 7(a1)
                  slt          s4, s6, a4
                  sb           gp, -2(a1)
                  lbu          s7, -4(a1)
                  lb           a5, 16(a1)
                  sh           a4, -5(a1)
                  lui          a5, 391712
                  srl          a0, a3, t6
                  sb           s1, 2(a1)
                  xor          s7, t3, s7
                  addi         s1, s2, -1009
                  lb           s1, -12(a1)
                  add          s4, a3, s4
                  add          a0, t0, s3
                  nop
                  add          a3, s9, s7
                  lb           s9, -12(a1)
                  lhu          t0, -7(a1)
                  sb           s6, 7(a1)
                  slt          zero, zero, a3
                  nop
                  sltiu        zero, a0, -1043
                  ori          a2, a1, -1280
                  sb           a0, 10(a1)
                  add          a6, zero, s0
                  srai         a6, a1, 14
                  lb           s9, -12(a1)
                  andi         sp, t5, -1703
                  or           t6, t6, s3
                  lui          s3, 873788
                  auipc        t0, 425075
                  add          s1, a5, s2
                  lui          a3, 429148
                  xor          s7, t1, gp
                  sub          a0, s9, a4
                  andi         s11, a1, 995
                  auipc        s2, 961301
                  lui          gp, 713630
                  sw           a5, -13(a1)
                  lb           sp, 10(a1)
                  slti         t4, s5, -1318
                  slti         t5, s2, -909
                  xori         sp, tp, -1983
                  sw           t1, 11(a1)
                  lb           s11, 5(a1) #end riscv_load_store_rand_instr_stream_0
                  blt          s8, s2, 567f
                  and          ra, a4, s6
559:              bne          t0, t4, 560f
560:              auipc        s4, 295018
                  bne          t5, s8, 568f
                  lui          a2, 275407
                  sra          a0, s1, t4
564:              lui          tp, 340244
                  slti         t5, t0, 1030
                  xor          a0, t5, zero
567:              srai         s1, a4, 7
568:              or           a5, s3, s1
                  slti         a5, t3, -1980
                  bgeu         a3, gp, 581f
                  blt          s0, s11, 580f
                  bgeu         s0, s1, 579f
                  bge          s0, gp, 584f
                  blt          zero, s9, 582f
                  slli         t6, s5, 25
                  bgeu         a6, s3, 580f
                  bne          a6, s11, 579f
                  srl          a4, s4, t4
579:              xor          s7, t4, a6
580:              lui          tp, 152201
581:              ori          a4, s7, -1187
582:              add          s3, gp, gp
                  slt          s7, t1, s4
584:              sll          a5, s3, s8
                  slli         t6, gp, 5
                  slti         t5, s11, 2015
                  slli         s6, t5, 18
                  sra          s3, s8, s8
                  beq          s9, s9, 595f
                  auipc        t1, 180267
                  slti         gp, t4, -658
                  bge          t4, s10, 604f
                  sltu         t4, a3, t6
                  sltu         a3, t6, s4
595:              nop
                  lui          t3, 144824
                  auipc        s7, 620307
                  bgeu         t0, a6, 601f
                  andi         s5, s5, -1797
                  sltiu        a5, t3, -1760
601:              bne          s7, a2, 613f
                  ori          a5, s2, 926
                  andi         t3, s7, -79
604:              ori          s9, a6, -1046
                  blt          t1, ra, 610f
                  xor          s11, a3, s11
                  xori         a1, zero, -839
                  slti         s7, s4, -2009
                  and          tp, a0, s0
610:              sub          t5, t4, s5
                  nop
                  srli         s6, s6, 10
613:              bltu         gp, zero, 633f
                  slti         s2, a5, 1415
                  slt          t6, s10, s5
                  xori         t5, zero, 455
                  srl          gp, a5, s0
                  blt          s6, s8, 624f
                  srl          s4, t1, t0
                  srai         t0, ra, 29
                  lui          s1, 660468
                  ori          s6, ra, -1572
                  sltiu        a4, s5, -165
624:              sub          a5, t0, s9
                  la           sp, region_1+1180 #start riscv_load_store_rand_instr_stream_9
                  and          s5, s11, s7
                  sltiu        t6, ra, -467
                  lui          a2, 774273
                  sltu         zero, zero, t3
                  lb           a6, 12(sp)
                  srl          a3, a2, s2
                  sb           a2, 1(sp)
                  lh           zero, -8(sp)
                  sb           a5, -11(sp)
                  xori         t1, s7, 814
                  lb           s4, 11(sp)
                  sb           t3, -1(sp)
                  sh           gp, -10(sp)
                  sltiu        gp, t1, -1877
                  xor          ra, s8, a7
                  sub          a2, s4, s1
                  lbu          s6, 12(sp)
                  srli         a6, a3, 22
                  sw           t2, -4(sp)
                  sb           t2, -5(sp)
                  srai         gp, a0, 3
                  lb           s3, 11(sp)
                  sb           s0, -9(sp)
                  lbu          s5, -5(sp) #end riscv_load_store_rand_instr_stream_9
                  bne          t0, s2, 637f
                  auipc        tp, 436468
                  andi         a1, s0, 124
                  sra          s7, s7, s2
                  or           s9, s10, s3
                  bgeu         a6, s0, 644f
                  bne          t1, sp, 635f
                  srli         t6, s1, 4
633:              auipc        s11, 107763
                  or           zero, s4, sp
635:              slli         s6, a6, 3
                  slli         a4, s10, 12
637:              sra          a0, gp, t3
                  auipc        a3, 443765
                  auipc        a3, 168909
                  bgeu         a4, s9, 643f
                  bltu         a5, s10, 660f
                  xori         tp, ra, 1618
643:              xori         a2, a7, -145
644:              bge          s2, s4, 645f
645:              add          s6, ra, t4
                  lui          t0, 529243
                  slli         a6, s2, 23
                  addi         s4, s0, -1824
                  sltu         t6, s4, t3
                  bne          a4, t4, 656f
                  ori          tp, s5, -1488
                  xori         t3, s5, 1322
                  sll          s11, sp, a7
                  sra          t3, a7, s4
                  and          s3, ra, t3
656:              sll          s3, t5, gp
                  sltu         a6, s8, zero
                  sll          ra, t5, s5
                  andi         a0, t3, -1698
660:              sltu         s7, s8, t6
                  srli         s9, t4, 16
                  bltu         a2, zero, 671f
                  bgeu         a2, ra, 665f
                  bgeu         s7, a6, 676f
665:              bne          s9, s2, 681f
                  bne          s5, s4, 678f
                  slti         a1, sp, -331
                  sltiu        s6, s11, 1646
                  srli         s0, a5, 1
                  sra          s1, a5, s1
671:              sra          a0, s8, t2
                  add          s0, s1, t1
                  andi         s2, ra, -1751
                  nop
                  sltu         s9, t1, a6
676:              add          s4, a1, t4
                  srl          s1, a6, s3
678:              sra          a0, t6, a6
                  sll          tp, a1, tp
                  nop
681:              bgeu         s8, t6, 700f
                  lui          s6, 478209
                  bltu         a7, s5, 689f
                  sra          a3, sp, a4
                  beq          ra, t5, 696f
                  lui          t0, 977512
                  addi         s1, s8, -1918
                  andi         t4, s3, -1915
689:              bne          s2, s9, 707f
                  add          s2, s11, s0
                  sltu         zero, s8, gp
                  and          t6, ra, s1
                  auipc        s1, 94923
                  and          s5, t2, s3
                  sll          a3, zero, ra
696:              sll          sp, a4, s6
                  srli         s1, a5, 30
                  add          s3, t2, s8
                  bne          a6, s2, 719f
700:              sub          a0, s1, s0
                  bgeu         gp, t1, 721f
                  bgeu         s6, a5, 709f
                  srl          a3, s3, s8
                  sub          a6, sp, zero
                  auipc        s3, 699953
                  lui          s10, 804558
707:              bge          s9, t1, 716f
                  andi         a6, s6, -732
709:              lui          t0, 877657
                  andi         s7, zero, -627
                  or           a2, t4, a6
                  sll          s1, a4, a6
                  sra          tp, s4, ra
                  slli         t5, ra, 7
                  sltu         a0, ra, t5
716:              sltu         a6, s3, t4
                  blt          s2, a7, 724f
                  sub          t0, t0, t5
719:              add          a0, s10, s2
                  srai         s0, a7, 1
721:              sltu         t6, s7, a6
                  auipc        gp, 796067
                  sltiu        a0, s7, 297
724:              slt          s0, a0, s11
                  slt          s11, a3, a2
                  and          t3, s2, t5
                  and          t6, s5, a4
                  sltiu        s9, s11, -333
                  slli         s2, s1, 20
                  sltiu        a0, a5, -1524
                  xor          s1, a6, tp
                  sub          tp, a2, s4
                  xor          t5, a0, a6
                  bltu         s4, a1, 739f
                  srai         s6, s11, 11
                  xori         s11, s10, 681
                  slli         t6, ra, 30
                  sub          t4, t3, zero
739:              lui          a3, 278356
                  sltiu        sp, t0, 1299
                  slli         t0, s11, 0
                  sll          s10, s7, t5
                  bgeu         s4, tp, 753f
                  sltu         t3, s9, a3
                  nop
                  srl          s7, a3, a3
                  sra          gp, a0, t5
                  addi         s9, a5, -1471
                  srai         a1, t4, 17
                  beq          s6, a4, 766f
                  xor          t3, a1, a7
                  nop
753:              sll          a6, s3, a1
                  nop
                  beq          a7, s7, 760f
                  andi         s7, s5, 1864
                  sltiu        s1, t0, -211
                  sll          a3, s8, t1
                  bge          s10, a2, 767f
760:              sll          s6, t0, t4
                  add          a2, s0, s10
                  bge          t5, a0, 774f
                  blt          a6, s7, 771f
                  blt          s5, s7, 768f
                  sltiu        ra, s1, 1550
766:              bge          a1, ra, 777f
767:              beq          s11, t3, 786f
768:              andi         s2, a1, -506
                  bltu         t3, s2, 788f
                  srai         a1, gp, 28
771:              beq          s11, t5, 783f
                  sll          t3, s6, s4
                  and          t1, a3, a1
774:              bne          a6, a6, 786f
                  xori         a3, a2, 610
                  add          s7, s9, s9
777:              addi         s10, s1, -1775
                  bge          t6, a2, 780f
                  and          s4, a4, t5
780:              slli         s5, tp, 11
                  sra          s9, s2, s10
                  add          a1, s3, t6
783:              sll          a3, t2, t1
                  lui          s11, 348292
                  andi         a3, s5, 657
786:              bltu         s1, gp, 797f
                  blt          t1, a7, 792f
788:              sra          s6, a5, s2
                  slli         a1, a0, 22
                  andi         a2, s7, -916
                  slt          a4, a6, a3
792:              bgeu         s3, s7, 795f
                  sltiu        s10, a7, -539
                  sltu         t3, s9, t0
795:              slt          a4, s2, s4
                  beq          a5, s0, 816f
797:              and          s3, t0, s10
                  sll          a1, s1, zero
                  bltu         s9, tp, 800f
800:              bge          s2, s1, 811f
                  slli         t4, s7, 17
                  sltiu        t3, a1, -1502
                  slli         s10, t1, 7
                  auipc        t3, 796982
                  sra          s2, s6, t4
                  bgeu         a0, s7, 810f
                  sub          s5, s2, s0
                  beq          s11, a5, 820f
                  bge          s9, s6, 817f
810:              auipc        gp, 153118
811:              bge          a1, s6, 821f
                  beq          s3, ra, 821f
                  slt          ra, t3, a5
                  beq          s10, ra, 823f
                  xori         t4, t0, -562
816:              sltiu        s3, t5, -2042
817:              bge          s2, s3, 824f
                  beq          a5, s11, 825f
                  sltu         t1, a0, t2
820:              auipc        a2, 378424
821:              bge          s8, a4, 839f
                  xori         gp, s4, 1033
823:              sltu         s2, a7, t0
824:              bgeu         t4, t2, 840f
825:              sub          s3, a5, a2
                  auipc        gp, 133741
                  sltu         t4, zero, s5
                  andi         t3, s8, 490
                  auipc        s0, 850246
                  ori          ra, s1, -1351
                  add          s10, t4, t5
                  ori          sp, tp, 809
                  addi         sp, a0, 329
                  or           s2, t0, a4
                  auipc        s2, 165892
                  slli         s10, tp, 22
                  srl          zero, s5, t6
                  slti         t0, s9, 1108
839:              beq          a1, t6, 845f
840:              sltiu        t3, sp, 329
                  beq          a2, t2, 857f
                  sltu         a3, a1, s7
                  srl          sp, a5, s2
                  bltu         a0, a2, 856f
845:              xor          a2, s9, s1
                  sltiu        s1, t5, -1439
                  xori         t0, zero, -680
                  xor          gp, t6, s10
                  xori         a1, t3, 332
                  xor          t1, s9, s8
                  and          ra, a1, t4
                  sltiu        a4, a1, 1357
                  sll          gp, ra, ra
                  bgeu         zero, s5, 868f
                  sll          gp, a3, s10
856:              sub          s10, a1, a5
857:              sll          a4, s0, s10
                  slli         a3, s6, 13
                  srai         a6, s11, 24
                  ori          s4, t4, -1570
                  xor          tp, s10, t5
                  or           a2, t3, a0
                  or           s7, s11, a6
                  beq          s9, s11, 868f
                  beq          gp, s10, 870f
                  or           a5, s6, sp
                  bge          a5, s2, 873f
868:              xori         t6, t1, 673
                  beq          t1, t2, 889f
870:              bgeu         s3, t3, 878f
                  lui          t1, 809693
                  slt          s5, t1, s0
873:              lui          t1, 480519
                  bltu         zero, s9, 881f
                  ori          a4, t1, -1128
                  nop
                  bge          s0, t5, 887f
878:              lui          s3, 420702
                  or           t6, a1, t1
                  bltu         s7, sp, 889f
881:              or           t1, a1, s0
                  bgeu         a0, tp, 886f
                  xori         gp, s7, 704
                  sltu         s4, s11, a6
                  srl          s1, gp, a0
886:              srai         t4, s10, 18
887:              bgeu         a7, s10, 894f
                  lui          s11, 439702
889:              bltu         sp, s2, 909f
                  lui          t3, 708077
                  ori          s0, s10, 121
                  bltu         t0, t6, 904f
                  xor          s10, t2, t4
894:              srl          s1, s0, a0
                  beq          t5, t6, 909f
                  srli         gp, t0, 11
                  auipc        t4, 552977
                  sll          a6, s1, s8
                  slt          t5, t2, t5
                  ori          t4, s4, 1587
                  sltiu        s10, t3, -365
                  sll          t4, zero, t4
                  andi         s9, sp, -1263
904:              srl          a3, a2, a6
                  srli         s2, s2, 1
                  sltu         t1, t6, s6
                  srli         t5, s3, 28
                  ori          a2, t6, 563
909:              bgeu         tp, s0, 921f
                  sltu         s5, ra, s3
                  blt          s7, s1, 912f
912:              srai         t1, s3, 22
                  andi         s5, a5, 1060
                  andi         zero, sp, 274
                  sll          t5, s5, s2
                  ori          s1, s1, -797
                  srl          t3, ra, a5
                  or           t0, gp, t4
                  bne          s11, sp, 922f
                  sra          a2, s1, zero
921:              srli         a5, s7, 16
922:              sra          t1, s2, s9
                  slli         t4, s8, 26
                  addi         s11, t2, 1230
                  nop
                  ori          a3, s2, 984
                  srl          s10, t3, a7
                  slli         t6, sp, 19
                  xori         zero, t6, 2023
                  auipc        ra, 413488
                  xori         a1, a5, 756
                  blt          s9, s8, 948f
                  xor          s7, sp, t2
                  addi         ra, a2, 1265
                  xori         s4, t2, -159
                  andi         s3, s2, 182
                  bltu         s10, a4, 945f
                  bgeu         s2, s11, 940f
                  xori         t3, a1, -1277
940:              lui          tp, 514330
                  andi         t5, s3, -1161
                  sll          a5, s11, s0
                  xori         sp, a7, 1547
                  nop
945:              nop
                  bltu         t0, a7, 962f
                  andi         t6, s4, -975
948:              slt          s11, t4, t3
                  sub          a3, a2, s10
                  sra          s7, a5, t1
                  xor          t0, a2, a2
                  or           s1, t2, s7
                  sltu         ra, t2, a3
                  lui          t4, 807616
                  bne          gp, t0, 963f
                  srai         a5, gp, 27
                  andi         s1, t4, 710
                  slti         s2, ra, 431
                  slli         t6, s3, 0
                  bne          a0, a2, 964f
                  ori          a2, s0, -1400
962:              xori         gp, a0, 1373
963:              srai         ra, s5, 19
964:              sltiu        ra, s7, -372
                  slti         s10, s9, -1626
                  srl          t0, s2, s9
                  xori         a5, s2, 861
                  lui          t3, 466172
                  blt          a2, a6, 978f
                  addi         s10, ra, 1730
                  srli         s4, t3, 11
                  bgeu         t4, s4, 983f
                  srl          t0, s11, t5
                  srl          t5, gp, s10
                  sll          s4, s11, t6
                  blt          s1, t4, 988f
                  add          a5, a0, s4
978:              add          a5, t6, a1
                  bltu         s0, sp, 991f
                  srl          s7, s8, a2
                  slli         a5, s9, 20
                  bltu         t2, t6, 1001f
983:              sltiu        a3, s3, -588
                  bge          a4, s1, 1003f
                  bne          t3, s9, 991f
                  slti         a6, a1, 1802
                  lui          a0, 18016
988:              or           t5, s0, t5
                  xor          ra, t4, t1
                  bltu         t1, a7, 1008f
991:              bne          sp, s10, 996f
                  srai         t0, s3, 22
                  sra          s10, sp, t5
                  addi         t1, a7, -746
                  or           a1, s6, gp
996:              auipc        t3, 746987
                  srai         s10, s0, 22
                  slti         a4, t0, -517
                  slt          s4, s9, sp
                  sub          s5, a7, ra
1001:             bge          s3, t1, 1021f
                  or           a3, a1, s2
1003:             bge          s1, s11, 1009f
                  slt          s9, s1, t4
                  sll          s6, a1, s10
                  blt          t3, zero, 1017f
                  bne          s5, a4, 1012f
1008:             bgeu         s0, s9, 1028f
1009:             bge          t2, t6, 1021f
                  slli         sp, t0, 25
                  srai         t1, s0, 17
1012:             lui          t5, 417719
                  sltiu        a5, a4, -137
                  bgeu         t6, a6, 1032f
                  bltu         s2, a5, 1017f
                  ori          a6, s8, 1162
1017:             bgeu         a7, s9, 1033f
                  sll          s4, zero, zero
                  srl          t6, gp, zero
                  sltiu        s6, s10, -1928
1021:             srai         t6, a2, 12
                  bne          s3, s3, 1028f
                  slti         a5, a6, -1105
                  bgeu         a0, s8, 1029f
                  add          s5, s9, a2
                  sll          gp, gp, s7
                  srli         s7, a1, 6
1028:             slt          a5, s6, s7
1029:             srli         tp, s7, 18
                  add          ra, zero, ra
                  lui          a4, 492574
1032:             slli         ra, t1, 17
1033:             srl          s11, t0, s2
                  bgeu         t5, s4, 1045f
                  bge          gp, t6, 1044f
                  slti         a6, a6, -1168
                  ori          ra, s11, -948
                  slt          sp, s2, a1
                  ori          a6, a4, -874
                  srai         t5, t2, 12
                  bgeu         s0, a4, 1046f
                  sub          t3, s0, s6
                  sltiu        tp, s1, 599
1044:             add          a4, tp, zero
1045:             sra          a4, s1, t6
1046:             add          s2, s9, s9
                  xori         s3, s0, -49
                  sub          a3, s0, t6
                  bne          a4, s3, 1061f
                  slli         s3, s3, 6
                  auipc        s2, 985608
                  sub          s3, t1, s7
                  bgeu         s8, s5, 1061f
                  slli         a3, a0, 25
                  addi         zero, s7, 541
                  srli         ra, a6, 26
                  srli         zero, ra, 31
                  blt          s9, sp, 1065f
                  or           s3, a7, gp
                  xor          sp, sp, a3
1061:             beq          s0, s10, 1072f
                  bne          s10, s8, 1081f
                  srai         ra, ra, 2
                  and          a3, s2, a2
1065:             xori         s6, sp, 1699
                  bgeu         a6, a1, 1082f
                  sll          s7, s7, a1
                  sltu         a6, a7, zero
                  sra          s3, tp, t5
                  nop
                  bge          s5, t3, 1083f
1072:             xori         s9, ra, 727
                  beq          t6, t5, 1093f
                  auipc        s11, 160440
                  srli         ra, zero, 2
                  bgeu         t4, t5, 1082f
                  srli         s11, s1, 8
                  ori          gp, t4, -526
                  sll          s11, s1, s5
                  bgeu         s0, t2, 1083f
1081:             xori         a5, t5, -144
1082:             sra          sp, t5, ra
1083:             ori          s5, t0, -958
                  ori          a1, ra, 1894
                  bne          t4, s8, 1093f
                  xor          s2, s2, a4
                  auipc        s9, 435779
                  srai         s11, t3, 16
                  bltu         s4, t1, 1096f
                  slli         s4, t6, 15
                  ori          s6, s3, -1415
                  lui          s1, 19092
1093:             auipc        t0, 952301
                  sub          ra, a2, s5
                  slti         s3, a3, -505
1096:             sltu         s4, a2, ra
                  slti         a6, t1, -1429
                  srai         s2, a4, 22
                  sra          a4, s2, a7
                  bge          t3, s1, 1110f
                  bltu         s0, a1, 1110f
                  auipc        tp, 909628
                  slt          t4, a4, a2
                  lui          a3, 320452
                  bgeu         s4, a0, 1109f
                  bge          s5, t6, 1120f
                  add          t6, t5, s4
                  bge          s9, t5, 1120f
1109:             srai         t1, s2, 6
1110:             sub          s6, ra, s9
                  addi         s7, t2, 15
                  xor          zero, s8, a5
                  add          s0, a1, s3
                  beq          s2, s11, 1115f
1115:             addi         s6, s11, 1809
                  ori          s5, a0, -1355
                  or           a3, s1, a1
                  srai         s1, a3, 14
                  slti         gp, a2, -255
1120:             srai         zero, a3, 15
                  slli         t6, t2, 30
                  addi         a1, t3, 1722
                  sll          t0, a2, s1
                  sub          s2, t3, a3
                  ori          s7, gp, 1020
                  lui          a2, 666926
                  bne          t3, s11, 1146f
                  slt          s9, t0, a7
                  andi         s4, s7, -1343
                  sra          s0, s8, t2
                  bltu         gp, a2, 1135f
                  sra          a0, a1, s11
                  bge          a1, a6, 1141f
                  bge          s1, a6, 1143f
1135:             slti         a0, t4, -1146
                  sll          t4, s8, s3
                  ori          t1, s2, 1620
                  lui          a4, 747358
                  sltu         t1, s6, s7
                  bge          tp, tp, 1146f
1141:             nop
                  blt          s4, sp, 1149f
1143:             srai         s11, a6, 2
                  lui          a5, 674235
                  beq          a3, t5, 1157f
1146:             and          tp, a3, a6
                  blt          s1, a7, 1159f
                  slt          a0, a1, a5
1149:             nop
                  and          t3, sp, s7
                  beq          a0, s11, 1161f
                  auipc        a3, 301198
                  srl          sp, a2, a4
                  add          t1, t0, sp
                  blt          s10, s1, 1156f
1156:             slti         s6, s6, -391
1157:             ori          s7, a0, 851
                  auipc        sp, 546250
1159:             slti         a6, s1, 536
                  bgeu         s6, a5, 1172f
1161:             xor          t1, t1, a1
                  bltu         s11, a7, 1170f
                  slti         s2, t2, 663
                  sltiu        sp, zero, -1827
                  bltu         a7, sp, 1184f
                  bltu         s1, a0, 1184f
                  ori          t3, s10, -121
                  auipc        s1, 637364
                  slt          s1, t5, zero
1170:             sub          s5, zero, s9
                  sub          s6, t4, a0
1172:             sltiu        s10, a2, -79
                  ori          s5, ra, -954
                  nop
                  lui          t6, 520637
                  sll          s10, s6, s4
                  srli         s2, s2, 22
                  slti         ra, t1, 1589
                  or           t5, s11, a5
                  bne          a0, s9, 1200f
                  beq          s6, sp, 1184f
                  bge          s1, s4, 1201f
                  slt          t1, a5, a0
1184:             and          s10, ra, t6
                  or           t4, s4, t1
                  sra          s10, t5, s6
                  beq          s6, s8, 1192f
                  addi         a0, tp, -401
                  lui          ra, 523833
                  sltu         s7, a0, t0
                  srl          sp, a2, a4
1192:             ori          t3, s11, 1250
                  sub          ra, t0, s0
                  slli         s7, a6, 0
                  srl          a3, s2, t2
                  bge          a4, s4, 1201f
                  sub          s1, s8, a3
                  sltiu        s5, a2, 1315
                  ori          zero, a6, -1842
1200:             slti         t5, a2, -940
1201:             slli         a3, s2, 24
                  slt          s7, t4, t6
                  bge          t1, a2, 1219f
                  andi         a1, t1, 1245
                  addi         a0, s4, -1898
                  beq          a7, tp, 1215f
                  nop
                  srai         t1, s3, 26
                  slt          a2, a1, s11
                  sltiu        s10, a7, -1479
                  sub          s2, s10, s9
                  bne          a1, s2, 1232f
                  slti         a2, s10, 310
                  bge          t4, a5, 1216f
1215:             slti         s5, t0, -604
1216:             bne          t4, gp, 1220f
                  sll          t1, a7, s0
                  xori         gp, s7, -1693
1219:             andi         a4, t1, -1980
1220:             andi         s0, sp, -1976
                  bge          s1, s9, 1227f
                  sltu         a6, a1, t6
                  andi         s3, ra, -1603
                  slt          s4, s4, t0
                  slli         s3, s3, 7
                  xor          t1, zero, t4
1227:             xor          s1, t2, s6
                  srl          s10, s9, t2
                  srai         s0, t1, 3
                  addi         s7, a3, -455
                  xor          t3, s6, s9
1232:             add          a1, sp, sp
                  bne          t0, gp, 1245f
                  slt          t6, s2, a4
                  bgeu         a3, a6, 1242f
                  bltu         s3, s4, 1247f
                  addi         a0, s10, -1148
                  bltu         s8, s8, 1252f
                  sltiu        s7, zero, 1701
                  sub          t3, s2, s8
                  and          s5, s11, s6
1242:             andi         s7, a4, -860
                  xor          ra, s1, s2
                  srli         t1, gp, 6
1245:             slt          s4, s7, s3
                  sra          s9, s7, t4
1247:             srai         s6, ra, 30
                  srl          a2, t0, s10
                  sll          s5, gp, s7
                  sll          t1, s7, a6
                  bltu         t0, a6, 1262f
1252:             slt          s10, a1, t5
                  sltiu        s1, t6, -611
                  add          a1, a5, s7
                  nop
                  addi         s1, tp, -1440
                  bgeu         t2, s9, 1273f
                  add          a6, t6, t0
                  slt          zero, s10, sp
                  slli         t6, s7, 14
                  srai         t6, s4, 23
1262:             bltu         s9, a1, 1266f
                  bne          t1, a6, 1275f
                  auipc        s2, 479493
                  or           s2, a1, s5
1266:             or           zero, s7, s0
                  sra          s7, ra, a4
                  auipc        t1, 933038
                  addi         s7, t0, 1722
                  ori          s0, sp, 1378
                  lui          sp, 547729
                  beq          t6, tp, 1283f
1273:             slli         s4, s0, 18
                  sra          ra, sp, s5
1275:             slli         t6, a0, 23
                  srl          t3, t1, a7
                  sltu         t3, s6, a7
                  sra          a1, s3, s3
                  bgeu         s1, t3, 1283f
                  ori          t5, a4, 638
                  slli         t6, s3, 1
                  andi         gp, s3, -585
1283:             xori         t6, t4, -1907
                  slti         s6, t3, 1655
                  srli         s11, s10, 18
                  addi         s7, t5, -257
                  andi         s3, s10, 1797
                  sra          s7, a5, t3
                  bltu         a3, a4, 1309f
                  blt          a2, a0, 1295f
                  srl          s7, s4, tp
                  bge          s0, s9, 1306f
                  bltu         s1, t4, 1301f
                  sltiu        a5, s4, -1955
1295:             slli         zero, s8, 12
                  slti         t0, a0, 103
                  nop
                  srli         a4, t3, 13
                  slti         t6, a1, 588
                  ori          t0, t2, -1051
1301:             xor          s4, s5, ra
                  add          a0, s11, sp
                  xori         a4, t0, 854
                  srai         zero, a5, 1
                  sub          s3, s9, zero
1306:             ori          t4, t1, -317
                  slt          s3, a6, a2
                  sltiu        s11, s6, -1757
1309:             bgeu         s6, a3, 1315f
                  slti         a2, t2, -841
                  addi         a6, a7, 1891
                  sltiu        t6, s0, -1760
                  sub          t1, s8, s7
                  addi         a5, s3, 375
1315:             slti         a2, s10, 1118
                  ori          zero, s3, 629
                  sra          gp, t2, sp
                  ori          s1, t3, 225
                  xor          sp, t4, gp
                  and          a1, s10, s8
                  beq          a3, t0, 1340f
                  ori          ra, s6, 1950
                  bgeu         s6, t2, 1329f
                  sltiu        s9, s10, -1088
                  nop
                  ori          a2, sp, -129
                  sltu         a5, t5, zero
                  srli         a0, s10, 17
1329:             slli         sp, sp, 26
                  lui          s3, 23387
                  blt          s4, a7, 1333f
                  addi         a3, s2, -1181
1333:             slti         tp, t0, 1965
                  sll          t3, ra, a0
                  srai         s6, a7, 28
                  xori         s9, t1, 1595
                  sltu         a4, gp, a5
                  blt          t3, s8, 1358f
                  sub          s11, zero, a4
1340:             beq          t0, a6, 1347f
                  xori         s3, t5, 33
                  nop
                  slt          s2, s8, t1
                  sub          ra, a3, tp
                  sra          s1, tp, s1
                  xor          a6, a6, s8
1347:             srli         s0, t3, 31
                  sub          a6, s0, s2
                  bne          s8, t3, 1359f
                  auipc        sp, 572970
                  xori         t5, s1, 947
                  beq          a7, s8, 1353f
1353:             bgeu         s8, t4, 1369f
                  andi         a0, s9, -75
                  bge          s0, s8, 1367f
                  sra          s6, a2, sp
                  srli         t1, t0, 19
1358:             nop
1359:             xor          s4, s9, s0
                  xor          a4, s1, t2
                  bgeu         s5, t0, 1366f
                  slt          s6, s8, s8
                  xori         s5, t6, 1747
                  bltu         a3, s10, 1380f
                  bne          t5, t6, 1374f
1366:             ori          a0, t2, 138
1367:             sra          tp, a7, gp
                  sll          t5, zero, a1
1369:             xor          s10, a7, s1
                  ori          a1, ra, 1949
                  beq          s3, zero, 1375f
                  slt          t3, s3, s9
                  srl          tp, s10, a4
1374:             slt          a4, a4, t0
1375:             addi         a0, s11, -1274
                  srli         t5, a6, 29
                  bge          tp, t0, 1389f
                  slli         t4, s6, 28
                  andi         s5, t1, -741
1380:             addi         ra, s3, 2002
                  sltiu        a2, a3, 205
                  sll          t3, tp, a0
                  nop
                  and          a0, t6, t6
                  slli         s2, t4, 28
                  sltiu        s0, s0, 909
                  xori         a3, s10, 885
                  sll          t4, a2, a1
1389:             auipc        a5, 866519
                  sltiu        a4, s2, 562
                  auipc        t5, 716204
                  blt          s10, t1, 1411f
                  ori          s4, s4, -865
                  ori          t3, s3, 1149
                  bgeu         a0, sp, 1413f
                  sll          a3, s2, a7
                  bltu         sp, s4, 1406f
                  xor          t3, s5, s5
                  andi         t4, a3, -97
                  xor          t6, a5, t4
                  sltiu        s5, a2, -679
                  auipc        ra, 608489
                  slli         tp, s11, 2
                  ori          s11, s2, -1092
                  ori          s6, s2, 1985
1406:             bgeu         sp, t3, 1414f
                  xori         s9, a3, -984
                  and          s5, s8, a0
                  bge          zero, a0, 1421f
                  addi         a5, t1, -361
1411:             srli         t6, s10, 21
                  addi         t3, s4, 1928
1413:             sll          a5, t3, a6
1414:             srai         a4, s9, 10
                  sltiu        t4, s3, -1027
                  add          s6, s0, s8
                  srl          t0, a6, t6
                  lui          t3, 181543
                  sub          s6, s2, a1
                  lui          a1, 662548
1421:             auipc        s11, 641946
                  bgeu         s1, s9, 1429f
                  lui          tp, 819651
                  xor          a4, s6, a7
                  slti         a4, a7, 1141
                  nop
                  slli         a2, t4, 11
                  add          t5, a2, s4
1429:             sll          t3, a1, sp
                  xori         a5, ra, 3
                  nop
                  bne          s11, s8, 1435f
                  xori         a1, s11, -640
                  bgeu         s2, s0, 1445f
1435:             bne          t6, gp, 1439f
                  blt          a5, t5, 1441f
                  sub          t1, a7, a4
                  sra          t1, t2, s9
1439:             srl          t0, a2, a3
                  or           s2, s7, t6
1441:             add          a5, ra, gp
                  slt          ra, a6, a4
                  addi         s9, s5, -1282
                  lui          sp, 770091
1445:             bgeu         a5, a4, 1457f
                  sll          s5, sp, sp
                  beq          a0, gp, 1461f
                  xori         s1, sp, -410
                  blt          a5, t3, 1456f
                  auipc        t0, 668500
                  sltu         a5, a3, a6
                  bltu         t1, tp, 1463f
                  sra          s9, ra, s6
                  slt          s0, s1, s9
                  andi         s6, a3, -984
1456:             xori         s9, a7, 704
1457:             xori         sp, s3, 12
                  or           a2, t6, a0
                  sra          t3, s1, s6
                  andi         a1, t2, 874
1461:             srai         t1, a5, 10
                  nop
1463:             ori          t3, a3, -1075
                  xor          tp, a7, t2
                  sra          s2, zero, gp
                  xori         s2, s9, -927
                  sll          tp, a2, tp
                  andi         sp, tp, 859
                  bgeu         zero, t0, 1470f
1470:             andi         s3, s3, 1213
                  beq          a5, a3, 1479f
                  slli         a1, a1, 16
                  slli         a3, sp, 23
                  xor          t6, s6, s7
                  srl          s2, s11, t3
                  andi         a6, t6, -169
                  beq          t6, t1, 1484f
                  andi         tp, s11, 1154
1479:             xor          s6, t1, s11
                  and          t3, s4, gp
                  nop
                  bne          s4, ra, 1487f
                  ori          tp, s6, 920
1484:             nop
                  lui          s0, 714876
                  sra          s5, s3, zero
1487:             bltu         s10, a4, 1489f
                  srli         sp, s8, 16
1489:             and          a1, s5, s4
                  slt          s3, tp, t3
                  bne          t4, t6, 1500f
                  slt          s4, zero, s10
                  nop
                  xori         tp, s9, 1675
                  slti         t3, sp, 1321
                  bne          gp, t0, 1508f
                  auipc        s4, 28530
                  bltu         s9, t3, 1509f
                  lui          tp, 229205
1500:             bgeu         a6, tp, 1510f
                  slti         t5, t3, -373
                  ori          s4, ra, 1874
                  beq          s2, s2, 1523f
                  sra          s4, t5, a7
                  srai         s3, a7, 1
                  srai         ra, s9, 16
                  or           gp, a3, a7
1508:             sltu         s0, t5, t3
1509:             srai         s4, a6, 15
1510:             ori          a4, s8, -1689
                  addi         ra, gp, -680
                  sltiu        s6, t4, -133
                  sra          s4, a2, s6
                  or           ra, sp, s9
                  sll          t4, t0, s11
                  auipc        t0, 342629
                  or           a0, t2, s1
                  sra          a0, s9, a0
                  srl          t6, s3, s4
                  srl          t6, s2, t1
                  addi         t4, zero, -943
                  la           sp, region_0+1559 #start riscv_load_store_rand_instr_stream_12
                  sh           a0, 145(sp)
                  lb           s2, 284(sp)
                  slli         a5, s0, 9
                  lbu          tp, -328(sp)
                  andi         t5, a2, -322
                  sll          s4, s2, s3
                  addi         a3, a6, 1283
                  lh           s10, -417(sp)
                  sra          t4, ra, s3
                  or           t3, t1, zero
                  sub          s7, s11, t1
                  or           t0, s11, a7
                  sb           a0, -986(sp)
                  and          s5, s4, ra
                  lw           s0, 253(sp)
                  slli         t4, s1, 14
                  or           s11, s7, s0
                  lb           s0, -348(sp)
                  andi         t1, t1, 1688
                  sh           s5, -1213(sp)
                  lbu          zero, -85(sp)
                  lbu          s7, -1104(sp)
                  andi         s1, s10, 679
                  sltu         a2, a7, t5
                  sra          s0, gp, s3
                  srli         t6, s11, 16
                  lb           tp, -258(sp)
                  xor          t4, a3, a3
                  xor          s1, s4, zero
                  sb           s10, -1377(sp)
                  lhu          s6, -593(sp)
                  and          s7, t2, s1
                  nop
                  lb           a4, -1453(sp)
                  lb           s1, 390(sp)
                  xori         a3, tp, -1642
                  sb           a1, -469(sp)
                  nop
                  andi         s10, s5, 1830
                  or           s7, s10, t3
                  lbu          s6, -1013(sp)
                  lbu          t5, -53(sp)
                  sb           s0, -1035(sp) #end riscv_load_store_rand_instr_stream_12
                  sltu         t0, tp, s3
1523:             sltu         t4, a5, ra
                  srl          zero, s10, a6
                  sltiu        a5, a7, 1114
                  ori          a4, a2, 1432
                  srai         a0, s0, 9
                  andi         a2, a2, 1640
                  xor          t1, tp, t6
                  addi         s9, a7, -1942
                  srl          s6, s4, s9
                  ori          tp, a0, 1696
                  srai         s7, s7, 12
                  srli         ra, s11, 3
                  addi         s5, t3, 999
                  srl          s1, gp, gp
                  or           s11, tp, a5
                  sub          t5, t3, t3
                  blt          tp, s1, 1559f
                  bge          a2, sp, 1556f
                  slli         s10, a3, 27
                  sra          a6, s2, a3
                  srai         a1, t2, 20
                  sub          a1, tp, s2
                  srl          s4, a4, t4
                  srl          s4, s10, a4
                  or           a2, a7, t1
                  bne          s0, a1, 1554f
                  beq          t6, s3, 1568f
                  sra          s3, t3, t6
                  sub          gp, s10, s5
                  xori         a1, s9, 1252
                  sltu         t5, a5, t2
1554:             or           ra, a5, sp
                  addi         a4, s5, -718
1556:             sll          s6, gp, s3
                  ori          s11, a1, -1065
                  addi         a2, s7, -2027
1559:             auipc        t4, 100641
                  nop
                  srli         s9, t3, 7
                  srl          gp, t5, a4
                  ori          a2, t4, 378
                  xori         t4, s4, 553
                  sltu         t1, gp, t0
                  lui          a4, 863360
                  slt          zero, s11, t3
1568:             beq          s11, s3, 1587f
                  addi         t1, ra, 1502
                  slt          a0, s1, a0
                  auipc        s10, 384967
                  bltu         sp, t0, 1576f
                  xor          sp, t3, a6
                  sll          tp, a4, s11
                  sub          s7, s8, s10
1576:             xor          s3, a7, t2
                  auipc        a6, 495410
                  sra          s3, a3, a1
                  andi         s10, s1, 1426
                  ori          s0, t3, 953
                  srai         s1, s2, 27
                  bltu         s1, a5, 1600f
                  srai         a5, s2, 12
                  sltu         a0, s4, t4
                  addi         s6, t2, -1837
                  sll          s6, s7, s4
1587:             xor          a6, a2, s11
                  ori          s4, tp, -1757
                  sra          a6, s4, s3
                  beq          t6, s11, 1599f
                  bgeu         a0, tp, 1607f
                  auipc        s0, 624514
                  lui          s0, 953223
                  sub          a2, sp, a0
                  bge          a0, s2, 1601f
                  lui          t1, 76853
                  sltu         t5, s6, a6
                  srl          s7, s4, s5
1599:             sltiu        zero, ra, 1516
1600:             srai         a0, a4, 16
1601:             andi         s5, sp, -1894
                  srli         s0, t2, 2
                  beq          s7, t6, 1611f
                  or           t5, ra, zero
                  bgeu         a2, t1, 1617f
                  xor          s3, a4, gp
1607:             xori         a2, s11, 1242
                  sra          a0, s0, t3
                  blt          t1, a7, 1612f
                  sltiu        a3, s4, 1639
1611:             sll          t0, a7, a4
1612:             addi         s10, a6, -1697
                  sra          t6, s5, t5
                  slli         t6, a5, 2
                  andi         ra, t3, -1243
                  bne          t0, a0, 1628f
1617:             slli         s10, t4, 18
                  bne          sp, s10, 1637f
                  xor          tp, s9, s9
                  add          sp, t5, t0
                  slli         t6, s6, 31
                  sra          a5, s10, t1
                  bgeu         t6, s1, 1639f
                  bge          t3, t6, 1644f
                  sltiu        sp, s8, -1602
                  xori         a1, gp, 1528
                  beq          t6, a4, 1647f
1628:             bgeu         a4, s6, 1629f
1629:             slt          t5, s4, s8
                  sll          a6, ra, t5
                  bgeu         s0, sp, 1638f
                  xor          s6, a2, s3
                  srai         zero, s1, 28
                  sub          s6, a0, a3
                  auipc        zero, 972996
                  bltu         a7, s6, 1654f
1637:             sltiu        t0, s2, 6
1638:             auipc        t1, 620979
1639:             sll          gp, s5, t3
                  ori          s0, s11, -1431
                  bgeu         s5, t4, 1645f
                  bne          t2, s7, 1654f
                  sll          s11, a4, tp
1644:             srl          a3, a6, t5
1645:             and          gp, a1, a0
                  sub          s4, s5, a4
1647:             srai         s10, s7, 5
                  addi         a4, s5, 1714
                  sll          s0, s10, t6
                  sll          t4, t5, t4
                  ori          s1, s7, -613
                  ori          t6, gp, 1780
                  addi         t1, a5, -1904
1654:             srli         s1, t2, 4
                  srai         t6, t1, 11
                  sltu         t5, s0, a1
                  add          t1, s0, s10
                  bne          a1, s7, 1667f
                  sll          s4, s5, tp
                  blt          t2, a3, 1664f
                  andi         s9, t5, 1166
                  sll          zero, s0, s11
                  auipc        s9, 183085
1664:             auipc        a6, 729684
                  add          zero, s4, s11
                  bne          s6, s10, 1680f
1667:             andi         t0, s9, 1907
                  slli         gp, s8, 21
                  lui          t6, 712578
                  blt          ra, a6, 1681f
                  bne          s6, s2, 1683f
                  lui          a4, 464026
                  nop
                  add          a2, a5, a0
                  xori         s0, a5, 1783
                  xori         a1, sp, 1298
                  srli         a2, s4, 9
                  slti         t6, a6, -633
                  bltu         t4, a7, 1690f
1680:             bltu         a2, a2, 1686f
1681:             srai         a1, s8, 30
                  srai         a0, a1, 5
1683:             xori         s7, t5, -1835
                  addi         s7, s3, 1670
                  or           s6, s0, t6
1686:             srli         sp, gp, 1
                  beq          s6, ra, 1703f
                  slli         t4, s11, 5
                  slti         sp, s3, -822
1690:             bltu         a1, zero, 1698f
                  or           s6, t1, zero
                  bltu         s4, ra, 1704f
                  slti         s2, a3, 198
                  srai         zero, s1, 8
                  bne          s6, a1, 1697f
                  blt          t0, s9, 1701f
1697:             sub          a6, t4, a5
1698:             or           s9, t1, a3
                  slli         a5, s5, 31
                  sub          gp, a0, a3
1701:             and          a2, s1, t2
                  sub          tp, t4, s11
1703:             sltu         s7, t2, ra
1704:             srli         t3, a6, 17
                  beq          s2, s4, 1708f
                  srl          s9, t6, a7
                  or           t1, s3, s0
1708:             slli         t6, sp, 14
                  xori         t6, s9, 224
                  srli         s6, s7, 24
                  slti         sp, s1, -813
                  bgeu         s11, a3, 1717f
                  bge          zero, s9, 1720f
                  sll          a2, a2, t5
                  sltu         s10, a2, t2
                  andi         t6, s0, -1146
1717:             slli         t3, t3, 18
                  sltiu        t1, s5, -765
                  sltiu        s7, a2, 1823
1720:             auipc        t6, 447246
                  srai         s10, sp, 10
                  auipc        a6, 86014
                  and          s6, a5, t5
                  beq          s10, s4, 1733f
                  and          t6, ra, s6
                  bge          s6, s0, 1738f
                  or           s11, zero, s9
                  addi         sp, tp, 1839
                  add          s10, a7, s6
                  bge          a1, s11, 1740f
                  slti         s11, s10, -2013
                  sub          s3, s11, t2
1733:             addi         a2, s5, 1838
                  srai         s3, t6, 7
                  bne          s8, s9, 1741f
                  sub          s7, a6, s4
                  bne          t3, s9, 1756f
1738:             xori         a2, a2, 1360
                  srli         a0, s7, 20
1740:             sra          a0, tp, s6
1741:             xori         t4, a3, 1080
                  sltu         s11, s8, s7
                  and          s6, a3, s5
                  nop
                  srai         gp, t4, 21
                  andi         ra, s3, 1432
                  and          a5, t6, s0
                  bge          a5, t3, 1756f
                  lui          a1, 691159
                  bne          a7, t5, 1769f
                  slli         tp, gp, 16
                  xori         s3, a3, 611
                  slli         gp, s5, 28
                  sll          a2, t2, t3
                  bltu         a4, s3, 1767f
1756:             sra          s7, s1, a3
                  andi         zero, tp, 1036
                  nop
                  slt          s1, s10, s8
                  slti         sp, s2, 1062
                  lui          s2, 121292
                  bgeu         t0, s6, 1780f
                  sltu         a6, s11, s2
                  sll          s6, a3, s5
                  addi         s4, a6, 1166
                  sltu         s3, s11, s6
                  la           sp, region_1+1323 #start riscv_load_store_rand_instr_stream_3
                  slli         gp, s4, 0
                  lh           t0, -11(sp)
                  lbu          a3, -15(sp)
                  sra          s10, s2, t3
                  lb           gp, -6(sp)
                  sra          gp, s11, s10
                  lui          gp, 587780
                  nop
                  lb           s0, -2(sp)
                  lw           s1, 9(sp)
                  xori         a0, a7, -625
                  xor          t6, zero, s7
                  slt          t4, a0, s4
                  and          t1, s11, t2
                  xor          s11, a3, s9
                  lb           ra, -12(sp)
                  lhu          s0, -11(sp)
                  slt          a1, t6, s10
                  lb           a2, 4(sp)
                  srai         ra, a1, 20
                  slt          s0, a5, tp
                  lbu          s3, -8(sp)
                  sw           ra, 5(sp)
                  ori          s10, s6, 1212
                  ori          a1, tp, 587
                  sltu         gp, sp, t6
                  lui          s10, 816006
                  sb           s8, -7(sp)
                  sb           a6, 2(sp)
                  auipc        s9, 952827
                  andi         s2, ra, 1471
                  lh           s1, 11(sp)
                  lbu          t4, -10(sp)
                  srai         t5, zero, 30
                  srl          a0, a7, s8
                  andi         s0, s9, 950
                  xor          t1, s5, t2
                  lw           t4, 9(sp)
                  slt          ra, s8, s9
                  xori         t3, s9, -1887
                  sra          t3, tp, a5
                  sub          s1, a4, t0
                  andi         t3, t0, -1919
                  sb           s1, 16(sp)
                  auipc        tp, 412497
                  lb           s10, 16(sp)
                  andi         t5, t3, 1869
                  lbu          s6, -2(sp) #end riscv_load_store_rand_instr_stream_3
1767:             add          a4, gp, zero
                  sltiu        tp, s3, -760
1769:             andi         a3, a5, -120
                  bltu         a6, t0, 1789f
                  addi         s7, s4, -1752
                  addi         t0, t6, -45
                  ori          sp, s3, -1683
                  auipc        s11, 349036
                  srai         a4, s6, 25
                  nop
                  srli         s11, a5, 19
                  ori          s3, a7, -1432
                  sltiu        s0, s0, 303
1780:             sltu         a0, a3, a6
                  bgeu         a2, t0, 1789f
                  srli         s6, s2, 22
                  auipc        s10, 350366
                  blt          s6, s9, 1804f
                  srl          s4, zero, s11
                  srai         tp, s7, 4
                  or           gp, s11, s5
                  srl          a1, s3, s10
1789:             andi         s9, s1, 371
                  addi         t6, t0, 1269
                  xori         s9, s9, -1289
                  and          ra, t3, t3
                  slti         t1, t1, 630
                  ori          tp, s10, 1059
                  srai         s10, t6, 30
                  or           sp, zero, s4
                  nop
                  srli         s4, ra, 12
                  sll          t6, s1, t6
                  beq          t6, s8, 1808f
                  xori         a6, a5, -1656
                  add          s11, t2, s2
                  sub          s6, a6, t5
1804:             add          s0, zero, t1
                  andi         ra, a6, 646
                  nop
                  beq          s6, a3, 1808f
1808:             auipc        s7, 773466
                  or           t0, a4, ra
                  xor          a3, a5, s4
                  srl          t3, t6, s3
                  slt          a4, a0, s1
                  addi         sp, s5, 1185
                  lw           t1, 4(a7)
                  addi         a7, a7, 12
                  srai         tp, s9, 29
                  nop
                  srl          t5, t4, ra
2439:             addi x9, x6, 0
2439:             jalr x9, x9, 0
sub_8:            bne          tp, a7, sub_8_stack_p
                  srai         s10, a3, 18
                  andi         s9, s2, -137
                  xor          ra, s5, s8
sub_8_stack_p:    addi         a7, a7, -52
                  addi         gp, s7, 1336
                  sltiu        t4, a1, -1040
                  sll          t5, ra, a5
                  lui          s2, 688921
                  xor          s6, tp, s2
                  xor          a3, sp, zero
                  sw           t1, 4(a7)
                  srai         ra, zero, 23
                  la           t6, region_1+199 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a4, a6, 1281
                  lb           t5, 82(t6)
                  ori          tp, gp, 607
                  auipc        a4, 569639
                  lbu          s9, 42(t6)
                  lbu          a2, -114(t6)
                  ori          s4, s3, -102
                  sub          s11, t1, t3
                  sltu         a1, a7, s9
                  or           s4, s9, a7
                  lh           s3, 55(t6)
                  sltiu        zero, t3, -1374
                  lb           s0, 230(t6)
                  lb           s11, 222(t6)
                  lh           s4, 217(t6)
                  add          t0, t4, s3
                  lbu          s4, 152(t6)
                  lbu          s11, -8(t6)
                  and          gp, s2, t1
                  addi         gp, a5, 120
                  lhu          tp, 219(t6) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+1230 #start riscv_load_store_rand_instr_stream_2
                  lh           ra, 10(s5)
                  lui          t6, 523599
                  or           s1, ra, a7
                  sb           s10, 7(s5)
                  lhu          a4, -16(s5)
                  lb           t5, 9(s5)
                  lbu          tp, 14(s5)
                  lb           s11, -6(s5)
                  lb           a1, -1(s5)
                  sb           t4, -11(s5)
                  sll          t4, s0, s9
                  and          s0, s8, zero
                  sltiu        s9, t2, -1425
                  sll          sp, a5, ra
                  lbu          s6, 5(s5)
                  sb           t4, 15(s5)
                  sb           s2, -5(s5)
                  sb           s10, -15(s5)
                  srl          a5, a2, s10
                  lw           s3, -14(s5)
                  sb           zero, 11(s5)
                  lb           s10, -13(s5)
                  slt          s4, s3, t6
                  sb           s9, 3(s5)
                  lui          s6, 47729
                  and          a1, a1, s1
                  sb           tp, 7(s5)
                  lbu          t3, -7(s5)
                  sltu         s1, s5, s3
                  slli         t4, s1, 1
                  and          zero, s9, t2
                  lb           t4, -16(s5)
                  slti         sp, s10, 1680
                  lbu          ra, 13(s5)
                  sb           s10, 12(s5)
                  sb           t2, -11(s5)
                  sh           t0, -8(s5)
                  auipc        a2, 604290
                  lh           t0, 6(s5)
                  sltiu        s0, tp, -1074
                  lb           ra, 7(s5)
                  srai         ra, s1, 28
                  sb           sp, 10(s5)
                  srai         sp, ra, 7
                  lb           s0, -10(s5) #end riscv_load_store_rand_instr_stream_2
                  srl          s4, s6, a3
                  slli         ra, a5, 3
                  bgeu         t2, t5, 5f
                  bltu         gp, s3, 8f
                  bltu         gp, t3, 16f
5:                bge          s1, zero, 25f
                  sltu         a5, t0, s2
                  andi         t6, sp, -39
8:                add          a6, a4, gp
                  sll          t5, s0, t0
                  and          a0, s10, a5
                  sltu         t1, s0, t2
                  blt          s5, t2, 22f
                  bgeu         t6, a6, 14f
14:               bltu         t0, s6, 24f
                  ori          t6, a1, -1911
16:               xor          s7, a6, s10
                  srli         s9, a0, 31
                  nop
                  slt          a4, t6, t0
                  slli         t4, s10, 11
                  lui          t5, 440615
22:               sll          a6, t0, gp
                  slt          a0, tp, s6
24:               andi         t0, s8, 161
25:               andi         s1, a3, 652
                  or           s0, s7, a5
                  lui          s1, 897827
                  slti         s11, s6, -869
                  add          tp, a5, t5
                  sltu         s1, s7, a1
                  srli         t1, a6, 20
                  and          s1, s10, sp
                  sltiu        a3, s2, 48
                  sltu         a5, s1, t3
                  bne          a3, t1, 52f
                  srai         s4, ra, 13
                  addi         tp, s5, 955
                  addi         s6, zero, -454
                  sub          s7, a2, zero
                  blt          s7, s10, 54f
                  slt          s1, s10, s4
                  bltu         s9, tp, 52f
                  slti         a5, s1, 433
                  slti         s3, s9, 1174
                  add          s2, s0, a4
                  nop
                  andi         a1, t1, -744
                  beq          a7, s0, 66f
                  sra          s5, gp, t0
                  nop
                  blt          sp, a6, 66f
52:               srl          a4, a2, tp
                  la           sp, region_1+1307 #start riscv_load_store_rand_instr_stream_0
                  srai         s11, a1, 18
                  lh           s0, -11(sp)
                  nop
                  lbu          s10, 13(sp)
                  sw           s6, -15(sp)
                  sll          a4, s7, s2
                  xori         a2, s7, 1057
                  lbu          ra, 6(sp)
                  slli         a5, s0, 26
                  sub          t6, t5, s2
                  sll          t1, s0, s2
                  and          s5, s9, s11
                  lhu          tp, -11(sp)
                  andi         s5, s9, 282
                  sltiu        s0, ra, -1397
                  lbu          s1, 11(sp)
                  lh           s10, 1(sp)
                  sb           tp, 1(sp)
                  slli         s0, a5, 18
                  lb           s2, -8(sp)
                  sb           t4, 0(sp)
                  ori          a1, a1, 207
                  sh           s7, -1(sp)
                  sb           a2, -5(sp)
                  sb           s11, 4(sp)
                  addi         s5, s4, -868
                  sb           s6, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  bgeu         a4, a2, 68f
54:               sltu         a5, t4, s10
                  slli         s11, a5, 2
                  bge          s1, a4, 57f
57:               srl          s4, t2, t0
                  nop
                  bltu         sp, ra, 77f
                  bge          s1, t6, 72f
                  and          s0, a6, t0
                  bgeu         s6, s1, 63f
63:               or           a4, t4, a5
                  nop
                  xor          s2, s5, a5
66:               sub          t5, s1, t3
                  and          s7, s0, t3
68:               bgeu         t2, a1, 86f
                  ori          t1, tp, 1443
                  ori          s1, t6, 36
                  xori         s7, s4, -935
72:               blt          s6, t6, 86f
                  slli         t1, a2, 29
                  or           s10, a0, a7
                  sll          gp, s0, gp
                  srai         s0, t1, 21
77:               blt          gp, t3, 81f
                  lui          t5, 329881
                  bge          sp, a3, 82f
                  xor          s3, s11, a5
81:               srl          t5, s2, a6
82:               slt          s1, t1, s1
                  or           a1, s0, gp
                  beq          a7, a2, 96f
                  and          a1, ra, t6
86:               lui          t1, 292608
                  auipc        t6, 685559
                  sra          t6, s0, s10
                  andi         s7, s9, -1223
                  bltu         s7, t4, 98f
                  xor          s11, s9, a0
                  bltu         tp, a3, 96f
                  slt          t0, t1, t4
                  beq          t0, s7, 98f
                  sub          t6, s1, s6
96:               slt          a2, zero, s6
                  slli         sp, ra, 7
98:               sub          t5, t0, a2
                  nop
                  ori          a2, a6, -767
                  sltu         gp, sp, t0
                  slt          a0, a7, t2
                  sltiu        t6, s11, 928
                  auipc        s1, 481672
                  bgeu         s11, zero, 109f
                  andi         t1, s10, 218
                  slti         s3, s5, 1109
                  bltu         a3, a1, 114f
109:              xor          s4, t4, zero
                  sltiu        s3, s1, -1697
                  addi         t4, s6, -829
                  sltu         t4, t2, a5
                  add          s6, sp, t2
114:              sltiu        ra, s0, -1691
                  auipc        t3, 386182
                  auipc        s2, 75284
                  slti         s11, s6, -770
                  bgeu         t2, s11, 127f
                  srl          sp, t6, zero
                  slt          t1, s9, s2
                  auipc        gp, 868548
                  slti         s9, t0, 861
                  or           s3, t3, s6
                  srl          a2, s6, t0
                  lui          zero, 570976
                  ori          a6, a4, 1047
127:              and          t1, a1, s8
                  sltiu        s3, s7, 1147
                  sra          a3, s7, t1
                  xori         s5, s9, 785
                  slti         t0, t2, -605
                  bge          a4, t1, 144f
                  slti         s2, t4, -1939
                  srai         t0, s8, 17
                  srai         s1, s2, 11
                  bne          ra, t6, 152f
                  sltu         t0, zero, gp
                  srli         s7, s10, 19
                  beq          zero, a3, 140f
140:              sra          s10, s8, t6
                  beq          zero, sp, 159f
                  bltu         s9, a7, 160f
                  srli         s3, a4, 7
144:              bne          t0, t1, 150f
                  srli         s9, s5, 16
                  slli         gp, s0, 23
                  lui          a5, 227592
                  bgeu         sp, t5, 168f
                  slli         a1, sp, 31
150:              andi         s0, s3, -121
                  slti         tp, s2, 742
152:              xori         a0, a5, 833
                  bgeu         t3, s1, 161f
                  beq          s6, s7, 168f
                  sra          s0, tp, s1
                  beq          s0, s8, 172f
                  slt          a2, gp, s3
                  sra          a6, a1, ra
159:              andi         a1, s2, -1738
160:              slli         t5, a1, 13
161:              slti         t1, a3, -1927
                  or           a5, ra, s3
                  bgeu         ra, a1, 177f
                  bne          s3, sp, 167f
                  auipc        sp, 535930
                  addi         s6, s8, 939
167:              xor          gp, s1, s11
168:              srai         t3, t5, 27
                  bne          a5, s7, 184f
                  auipc        s5, 285639
                  addi         s2, sp, 641
172:              bgeu         t4, t1, 175f
                  slli         s7, s3, 25
                  blt          s1, a1, 184f
175:              add          s5, t6, t2
                  slti         s2, s4, 446
177:              bltu         s4, tp, 181f
                  xori         a5, s2, -1199
                  xori         t3, ra, -1424
                  andi         a6, a6, 325
181:              bne          t3, a3, 182f
182:              srl          gp, s10, s7
                  and          t3, a3, a5
184:              sra          s0, s8, a6
                  blt          sp, a7, 195f
                  blt          t5, t6, 187f
187:              sltu         a4, s11, a2
                  srli         s6, t5, 21
                  slti         s7, t3, -1772
                  sra          gp, tp, s5
                  slti         s4, a2, 609
                  sub          s0, a5, s0
                  blt          a6, t2, 208f
                  bge          s0, s7, 212f
195:              add          s9, s10, a4
                  sltiu        s2, s6, 876
                  or           a5, s8, s8
                  add          zero, a6, ra
                  lui          s3, 742085
                  slli         tp, s6, 27
                  sll          s5, a3, s7
                  xori         s11, a3, -16
                  and          s1, ra, s7
                  addi         tp, s10, 1218
                  sltu         s5, t2, t5
                  lui          t0, 88807
                  sll          s6, t2, ra
208:              bltu         a1, s7, 220f
                  bge          ra, a7, 218f
                  slli         tp, a4, 22
                  bgeu         a6, s4, 223f
212:              addi         s10, t3, -978
                  bne          a6, gp, 225f
                  or           s5, a7, a0
                  bge          zero, t3, 227f
                  beq          s7, t1, 233f
                  srli         s2, s11, 24
218:              auipc        s6, 469021
                  sltu         t0, s6, s0
220:              bgeu         s2, ra, 224f
                  bne          gp, s11, 225f
                  ori          s5, s11, 1453
223:              sltiu        a2, a4, 1945
224:              sltu         t4, a0, a1
225:              xori         a3, sp, 2007
                  sra          t0, s1, t3
227:              sltiu        a2, s8, -1180
                  bge          a5, a7, 233f
                  sll          s2, a4, t2
                  sltiu        ra, ra, -262
                  sll          s4, s1, s10
                  addi         t1, s11, -1319
233:              addi         s5, s2, -484
                  sltu         a0, s0, ra
                  sub          sp, t1, a1
                  sltu         s7, ra, s6
                  slti         s3, a7, -1888
                  sltu         t4, s8, a7
                  sra          a2, a2, s7
                  blt          a4, t6, 250f
                  sltiu        s10, a2, 972
                  blt          s10, s4, 246f
                  slt          tp, a7, s7
                  sll          t5, ra, s3
                  slti         s1, s8, -2019
246:              srl          s9, s2, s10
                  xori         a5, s0, 1586
                  beq          ra, t2, 263f
                  auipc        a5, 350028
250:              nop
                  bge          a7, s11, 259f
                  sltu         s2, s4, a2
                  nop
                  sub          a4, a3, gp
                  ori          a1, s8, 1657
                  srl          s9, t2, a3
                  bltu         ra, a4, 275f
                  andi         sp, t1, 344
259:              nop
                  bge          s10, t6, 272f
                  addi         a4, a7, 1678
                  add          a6, t1, t6
263:              or           sp, sp, gp
                  srli         a5, s5, 10
                  xor          a6, t6, s3
                  sltiu        t6, a0, 1887
                  andi         gp, t4, 1250
                  sub          tp, a7, t0
                  lui          tp, 140928
                  srli         s0, s1, 2
                  slt          s6, gp, s10
272:              bgeu         t6, a1, 276f
                  xori         s5, a4, -878
                  and          a5, gp, s0
275:              andi         a2, a5, 262
276:              lui          s4, 594805
                  auipc        a1, 597428
                  lui          gp, 122741
                  ori          t5, t6, -312
                  ori          s11, t6, -81
                  slti         a0, ra, 7
                  bge          a2, a6, 300f
                  bltu         s10, s10, 284f
284:              bgeu         gp, s1, 287f
                  and          s6, a1, s0
                  or           s2, s8, t2
287:              nop
                  sra          a0, t6, t1
                  slli         s11, s6, 8
                  slli         s2, s9, 7
                  bltu         s6, tp, 311f
                  beq          s9, t1, 296f
                  slt          s7, s1, a2
                  xor          s6, a2, t3
                  auipc        tp, 1046523
296:              sra          s3, zero, a4
                  xori         a5, s9, -761
                  xor          a2, a7, t5
                  bgeu         s3, s5, 300f
300:              nop
                  sub          s1, s2, s0
                  bgeu         s2, a3, 316f
                  sll          a5, a3, a7
                  bgeu         s0, a1, 316f
                  blt          s3, s8, 317f
                  xori         s10, s10, -530
                  bge          a2, a2, 317f
                  blt          t0, s2, 320f
                  bltu         s8, a2, 325f
                  srai         s1, a6, 22
311:              or           a1, s2, s3
                  srai         a0, s3, 4
                  bgeu         a7, a1, 331f
                  srl          tp, a5, s5
                  bltu         t2, t6, 324f
316:              addi         s6, s2, -401
317:              add          s4, s6, t1
                  srl          gp, ra, t6
                  bge          t2, s2, 325f
320:              beq          t4, t2, 324f
                  bne          a1, s9, 322f
322:              nop
                  ori          t0, s5, 1560
324:              slli         t5, s2, 29
325:              srli         a4, a7, 31
                  sltu         t4, a5, s9
                  beq          t0, t1, 344f
                  slli         s11, s0, 26
                  sltiu        s1, zero, 430
                  sll          t5, s10, zero
331:              beq          s2, s3, 341f
                  sra          t6, t5, a4
                  or           sp, zero, a1
                  ori          a1, s10, 548
                  srai         a6, t3, 29
                  bgeu         a0, a3, 339f
                  sltiu        s9, a5, -165
                  and          t3, a3, s6
339:              slt          ra, s10, t6
                  sltu         a6, sp, t3
341:              sll          s4, t5, a3
                  xor          s10, a3, s4
                  bne          t3, s11, 347f
344:              or           a5, t5, t3
                  sltu         a5, s4, a5
                  lui          s0, 845468
347:              nop
                  addi         s10, t4, 660
                  srai         gp, a2, 9
                  bgeu         ra, a2, 355f
                  nop
                  srli         t0, s9, 28
                  ori          t5, a3, -1717
                  ori          s6, s3, -1709
355:              slt          s5, t5, ra
                  xor          gp, s10, tp
                  slli         a6, s2, 6
                  sltu         t5, t3, a2
                  sra          a1, zero, ra
                  lui          t1, 1023381
                  slti         t3, s10, -250
                  xori         s10, t5, -75
                  bne          s0, s5, 377f
                  xor          a1, t0, s0
                  srai         t0, s11, 4
                  bgeu         t5, t2, 376f
                  add          t6, t6, tp
                  beq          a0, s2, 383f
                  sub          s10, s3, a6
                  bltu         a7, a4, 382f
                  ori          s2, s2, 686
                  beq          s10, a5, 376f
                  beq          a4, s3, 377f
                  blt          a2, s9, 389f
                  srai         s1, t1, 8
376:              xori         t5, tp, 746
377:              or           s1, sp, s11
                  lui          s0, 464692
                  bge          gp, a6, 389f
                  srli         t1, zero, 11
                  add          s7, a0, t5
382:              slt          a6, a4, ra
383:              nop
                  srai         s2, s7, 7
                  bltu         t5, s9, 395f
                  ori          s6, t0, 338
                  beq          s1, t3, 402f
                  bltu         ra, s6, 408f
389:              and          s3, s7, s3
                  andi         sp, s5, 1896
                  sltiu        s2, a3, 851
                  srl          t6, s8, a3
                  srai         t1, s1, 0
                  sub          a5, s0, s2
395:              nop
                  bne          s11, s7, 405f
                  ori          s2, a4, -562
                  andi         s0, t1, -1112
                  sra          sp, ra, s6
                  blt          sp, a1, 418f
                  add          a6, s0, s9
402:              xor          s10, s10, a3
                  ori          tp, a3, -1933
                  bge          s1, s5, 418f
405:              sltiu        s1, t5, -1971
                  andi         t1, t1, -483
                  sra          gp, s4, s4
408:              andi         a2, zero, 262
                  xori         t3, t6, -1935
                  slli         a4, a4, 13
                  xori         a5, a0, -317
                  addi         tp, s0, 776
                  addi         s7, t2, 380
                  lui          zero, 370322
                  srli         s6, s2, 26
                  andi         a0, s11, -1106
                  bge          s1, a5, 431f
418:              xor          t5, a1, t3
                  sll          tp, t4, s1
                  srli         s9, s1, 29
                  or           s0, a6, a2
                  ori          s1, s2, 233
                  lui          t0, 740406
                  sub          a5, a5, s4
                  ori          s7, s4, -1611
                  bltu         a5, s4, 430f
                  sra          t5, zero, t1
                  lui          s9, 897401
                  bltu         s2, a4, 435f
430:              bge          a3, t5, 431f
431:              srl          a5, s11, a6
                  srai         t6, a1, 28
                  add          a2, s7, a0
                  and          gp, s7, s9
435:              beq          zero, a7, 440f
                  addi         t3, a6, 1464
                  addi         t0, ra, 1326
                  slli         a0, t1, 16
                  srli         a6, zero, 15
440:              sub          s3, t0, t0
                  srl          zero, tp, s7
                  bne          a4, s6, 443f
443:              slti         t0, a7, 1177
                  addi         s1, a4, 956
                  srai         a5, s9, 3
                  lui          a1, 439057
                  bgeu         s4, t6, 459f
                  slli         t1, zero, 8
                  lui          a1, 84827
                  beq          a6, s0, 468f
                  sub          s11, s7, s10
                  ori          a2, s10, 1235
                  slt          s10, a5, s0
                  slti         t0, zero, 271
                  or           t1, s9, gp
                  lui          s6, 858102
                  blt          t5, s7, 469f
                  bgeu         s4, a3, 475f
459:              srl          a6, a3, s6
                  bltu         t1, s1, 463f
                  sltu         t5, s8, a0
                  ori          tp, a6, -1057
463:              slt          t5, s4, s0
                  xori         a5, a0, -349
                  bltu         a0, t4, 468f
                  bgeu         t2, a1, 484f
                  and          a1, s3, a7
468:              sltiu        s1, a1, 938
469:              lui          a5, 1041874
                  addi         a0, sp, -1082
                  sra          s4, s2, a1
                  bge          sp, s11, 488f
                  add          t5, s1, a0
                  beq          tp, s4, 482f
475:              sltu         s5, zero, a1
                  srli         s11, a3, 28
                  sub          a0, s7, t3
                  sltu         a6, s1, a2
                  ori          a2, a0, -1256
                  ori          t3, s6, -1101
                  sltiu        s6, s0, 1914
482:              or           s5, s10, a7
                  slti         s6, s8, 909
484:              bgeu         s3, s7, 488f
                  slt          a1, t1, t6
                  bne          t6, t6, 498f
                  ori          s1, t3, -653
488:              slti         s1, t3, -364
                  and          t5, a6, a2
                  slti         s3, a0, -1000
                  or           gp, s2, gp
                  blt          t0, a5, 502f
                  sra          s10, gp, a2
                  srai         s2, zero, 31
                  slt          s0, s3, s8
                  or           a2, t4, a5
                  bge          zero, a0, 498f
498:              sltiu        s0, a3, 135
                  bltu         s11, s0, 503f
                  slti         a0, t0, 513
                  slli         t0, s4, 9
502:              sra          a0, tp, a6
503:              sub          s9, a3, sp
                  bgeu         a3, s7, 522f
                  sltu         gp, a1, s4
                  bne          a6, t6, 521f
                  bltu         t6, a7, 519f
                  add          t3, t0, t3
                  sll          s5, s4, s1
                  bge          gp, t6, 526f
                  slti         s10, s0, -1032
                  slli         sp, sp, 0
                  slti         s5, zero, -1454
                  sltu         a0, s2, t2
                  bltu         s2, s9, 521f
                  sub          s7, gp, sp
                  addi         t3, s9, 1555
                  slli         s1, s4, 26
519:              beq          s1, s9, 531f
                  sub          s11, t0, s2
521:              bltu         s11, ra, 531f
522:              andi         s0, zero, -529
                  sltu         s4, s10, t3
                  ori          a1, s2, 969
                  slli         a6, t6, 15
526:              srai         t5, s3, 23
                  beq          a1, gp, 537f
                  srai         a3, s5, 6
                  srl          gp, s1, sp
                  nop
531:              bne          a6, tp, 536f
                  bge          t2, s2, 550f
                  beq          s2, a1, 551f
                  srli         s5, s6, 11
                  sll          s9, s9, a7
536:              blt          a2, a6, 548f
537:              lui          t5, 871048
                  auipc        s10, 192854
                  ori          s2, a5, 512
                  sltiu        s3, s7, -391
                  sltu         tp, s8, s5
                  bgeu         s10, tp, 557f
                  slli         a4, s10, 25
                  slti         ra, s1, -1485
                  sltu         zero, s2, t6
                  la           a0, region_1+1440 #start riscv_load_store_rand_instr_stream_3
                  slli         a6, t2, 13
                  sb           tp, -467(a0)
                  lh           s11, -630(a0)
                  add          a2, a5, s9
                  srli         s11, t5, 24
                  sb           t3, -1415(a0)
                  lb           s10, 177(a0)
                  sb           a4, -655(a0)
                  sb           tp, 207(a0)
                  auipc        a1, 967375
                  lbu          tp, 322(a0)
                  sltu         a2, zero, s3
                  lbu          s5, -453(a0)
                  sb           zero, -1433(a0)
                  sll          a2, a2, t4
                  lh           t1, 360(a0)
                  srli         s7, t6, 4
                  or           a4, ra, t6
                  srai         ra, s9, 28
                  sb           s10, 54(a0)
                  slti         t5, s2, -443
                  sltiu        a1, s5, -527
                  xor          zero, s0, a6
                  lbu          s5, 502(a0)
                  lbu          s3, -311(a0)
                  sltu         sp, zero, a3
                  sltu         a5, s11, s5
                  lb           a2, -125(a0)
                  xor          a2, s2, a1
                  lb           s10, 322(a0)
                  lbu          zero, 245(a0)
                  addi         t5, gp, -4
                  nop
                  srli         s10, t3, 26
                  lw           sp, -84(a0)
                  srli         ra, s2, 25
                  and          s0, a3, s7
                  slt          ra, a1, a0
                  sb           s8, 515(a0)
                  lb           s4, -905(a0) #end riscv_load_store_rand_instr_stream_3
                  ori          ra, zero, -514
                  slt          gp, a6, a3
548:              slti         s4, t3, 518
                  ori          a3, t2, 1625
550:              nop
551:              auipc        s1, 322103
                  nop
                  bge          s9, a3, 554f
554:              xor          s3, a2, s0
                  bltu         a3, a3, 569f
                  xori         s5, s4, -796
557:              bne          s6, a0, 561f
                  nop
                  blt          s6, s8, 571f
                  blt          tp, a1, 574f
561:              bge          gp, t5, 564f
                  nop
                  sub          s1, s10, t6
564:              and          s6, t3, sp
                  xor          gp, t1, gp
                  bgeu         a7, s1, 570f
                  addi         a6, s9, -1179
                  blt          t2, t0, 588f
569:              blt          s0, s1, 579f
570:              bne          s4, t3, 571f
571:              slli         a0, s5, 2
                  sltu         t6, t0, a1
                  beq          ra, s11, 576f
574:              bge          s9, a5, 575f
575:              bgeu         s5, s0, 579f
576:              auipc        ra, 817832
                  sltu         s5, a3, t1
                  beq          t0, a2, 587f
579:              ori          s5, a5, 958
                  xor          a5, a3, s4
                  slt          s9, t3, a7
                  auipc        a4, 188966
                  slli         s4, s0, 31
                  bne          s9, s10, 592f
                  add          t0, sp, a4
                  lui          s4, 941011
587:              srai         t6, s11, 13
588:              sra          gp, tp, t1
                  add          t0, a0, a4
                  la           sp, region_0+158 #start riscv_load_store_rand_instr_stream_4
                  or           a0, s3, s4
                  sh           a4, 638(sp)
                  lb           a3, 895(sp)
                  slli         s1, a2, 30
                  lh           a3, 1746(sp)
                  and          a4, a1, t4
                  srai         s2, a1, 15
                  sltiu        s4, s7, 815
                  or           tp, s4, a3
                  lb           a1, 1731(sp)
                  xori         a3, a3, 723
                  xori         a5, s6, -1118
                  sub          t5, s3, a4
                  lw           gp, 222(sp)
                  lbu          zero, 340(sp)
                  lbu          a1, 1695(sp)
                  xor          s4, a1, s1
                  sb           s8, 331(sp)
                  lb           s9, 1533(sp)
                  sltiu        s10, s9, -94
                  xor          s9, a2, s3
                  sw           s2, 1662(sp)
                  srl          t6, tp, s0
                  lbu          a3, -145(sp)
                  auipc        a6, 954707
                  srai         a3, s6, 11
                  lh           a1, 238(sp) #end riscv_load_store_rand_instr_stream_4
                  bne          t4, s1, 607f
                  add          s1, t5, gp
592:              addi         s2, gp, 999
                  srli         a5, t1, 15
                  bne          t5, a2, 612f
                  and          s9, s11, s6
                  beq          s7, a7, 614f
                  addi         s11, t2, 331
                  srli         a0, t6, 14
                  xor          tp, t6, a1
                  blt          s0, s10, 606f
                  sltiu        zero, a5, 1875
                  lui          s1, 746234
                  nop
                  slli         a4, a3, 31
                  and          a3, a2, s7
606:              andi         a2, s11, 522
607:              bltu         s11, a5, 608f
608:              bne          a0, t4, 620f
                  auipc        a6, 450416
                  blt          t1, s7, 625f
                  slti         s1, s1, 1969
612:              sll          s9, s2, a2
                  slli         zero, ra, 2
614:              bge          zero, a7, 634f
                  slli         t3, gp, 30
                  bgeu         t4, a7, 624f
                  add          s7, s4, t4
                  bltu         t2, s10, 623f
                  andi         s9, s1, 1934
620:              slli         s11, s7, 3
                  nop
                  sltiu        s1, t3, 251
623:              nop
624:              bne          a3, sp, 636f
625:              beq          s3, a5, 642f
                  andi         t0, t4, 1141
                  sltiu        a5, s6, 1968
                  bge          s6, s10, 632f
                  bge          a0, s0, 645f
                  sltu         a2, t0, a5
                  srai         a5, a5, 22
632:              or           t0, t5, s5
                  sll          t6, s7, t0
634:              bgeu         tp, a2, 635f
635:              bltu         s0, s1, 647f
636:              srai         t5, t2, 28
                  add          a1, t1, s7
                  addi         t5, t1, 1640
                  beq          s8, s9, 649f
                  slti         s6, s1, 1466
                  bge          a4, zero, 650f
642:              bgeu         zero, s1, 654f
                  sltiu        a2, s5, 1187
                  slli         t5, t4, 28
645:              slt          t5, ra, s5
                  slti         t0, s0, -495
647:              bge          s4, a6, 650f
                  or           t6, s1, a4
649:              bgeu         s10, s3, 652f
650:              bltu         a6, a1, 660f
                  sra          tp, sp, a4
652:              slli         tp, s0, 22
                  slt          s2, t2, s6
654:              and          s7, t2, a7
                  srai         sp, a1, 10
                  bltu         s5, t5, 670f
                  sra          a1, a6, s8
                  bge          t3, a0, 662f
                  bltu         gp, sp, 663f
660:              bgeu         s7, a6, 674f
                  bltu         ra, ra, 662f
662:              addi         s11, s4, -781
663:              lui          s1, 767597
                  blt          s8, a4, 679f
                  bltu         s8, sp, 675f
                  bne          s5, s0, 684f
                  sltu         s6, s8, s0
                  slti         tp, a5, -1724
                  addi         t0, sp, -1160
670:              slt          t5, t2, s3
                  sub          s3, t5, a2
                  beq          a1, sp, 676f
                  and          tp, a1, t0
674:              sll          s4, s5, ra
675:              lui          s1, 911312
676:              srl          a3, t2, s9
                  xor          s7, t0, s0
                  or           s4, s4, a7
679:              sub          t6, t5, s7
                  slti         s1, t4, 1234
                  bne          s4, s0, 686f
                  and          s1, s1, t1
                  andi         s7, a1, -1463
684:              sltu         a3, t5, ra
                  add          a4, s5, a7
686:              sub          s3, s6, s9
                  ori          a0, t3, 438
                  or           a5, gp, t4
                  lw           t1, 4(a7)
                  srli         zero, t6, 10
                  add          t0, t2, a7
                  addi         a7, a7, 52
                  sra          a3, s9, t0
872:              addi x21, x6, 1
872:              jalr x21, x21, 0
sub_9:            bltu         s5, a7, sub_9_stack_p
                  andi         t4, s2, -1420
sub_9_stack_p:    addi         a7, a7, -44
                  sw           t1, 4(a7)
                  sub          ra, s10, s10
                  slt          a3, a0, a5
                  xor          t5, a3, s7
                  xor          s1, tp, s6
                  sltu         t0, tp, a5
                  bge          zero, s6, 16f
                  blt          s6, t2, 4f
4:                srai         s5, s11, 4
                  srai         s5, s2, 12
                  srl          zero, ra, t6
                  sll          zero, s9, a2
                  sll          s9, s5, t2
                  addi         t3, a5, -82
                  nop
                  bltu         tp, s10, 30f
                  beq          a7, s1, 24f
                  bgeu         a4, t3, 29f
                  blt          ra, s7, 29f
                  srai         a1, a4, 18
16:               srli         s5, gp, 31
                  slti         a2, sp, 1744
                  nop
                  lui          a4, 832669
                  ori          t3, tp, -1210
                  andi         s0, t1, 387
                  blt          s8, sp, 30f
                  nop
24:               and          s10, a4, tp
                  bge          t4, zero, 44f
                  or           s5, t3, a1
                  bltu         tp, t3, 47f
                  or           t3, s1, t1
29:               addi         s9, a0, -252
30:               andi         zero, s7, -660
                  sra          a0, zero, s4
                  xor          gp, a2, tp
                  sltu         zero, t5, a1
                  srli         a2, t0, 28
                  andi         a1, t3, -356
                  and          s7, a1, a6
                  add          a1, t3, s10
                  addi         s11, a2, -1464
                  or           t3, a4, tp
                  sll          t6, s7, s9
                  addi         gp, s1, -1072
                  sub          s2, t6, s4
                  sra          a3, gp, a5
44:               add          a1, s1, t4
                  blt          s10, s3, 47f
                  andi         s11, t3, -1134
47:               addi         t3, sp, -1924
                  slt          t4, s10, a2
                  and          s6, gp, a3
                  slti         gp, gp, -1168
                  nop
                  addi         s5, s7, 1244
                  bge          s3, s7, 56f
                  xor          gp, a1, a5
                  sltiu        ra, s10, 448
56:               xor          t1, s10, a6
                  bltu         sp, t2, 76f
                  bltu         s0, t0, 71f
                  addi         t5, s4, -1634
                  addi         s5, s8, 1010
                  sra          t0, s0, s1
                  beq          s5, gp, 73f
                  srai         a3, s4, 3
                  sub          a5, a5, s2
                  auipc        gp, 848941
                  bgeu         s6, a0, 68f
                  beq          s4, tp, 69f
68:               addi         a1, a3, 1147
69:               lui          t3, 40420
                  xor          t3, t0, a0
71:               add          s4, s4, t1
                  sltiu        ra, tp, 859
73:               lui          s2, 508296
                  srai         s1, sp, 4
                  srai         t5, t1, 25
76:               nop
                  xori         t0, tp, -1015
                  nop
                  auipc        a1, 208636
                  xori         s4, s5, 1443
                  xor          s9, a1, s8
                  add          s9, s4, s9
                  bne          t3, tp, 91f
                  srli         s10, zero, 2
                  srl          t4, a7, a7
                  bne          tp, t2, 98f
                  or           s7, t4, a2
                  nop
                  sra          t3, s10, t0
                  slli         ra, t5, 18
91:               addi         sp, a2, -861
                  slli         t1, t1, 7
                  and          t5, zero, s9
                  xor          s9, a7, t0
                  slli         a0, a2, 20
                  slt          s6, s0, t0
                  add          a3, a2, s6
98:               slt          s3, s4, s7
                  sltu         s1, s3, ra
                  sub          a4, s1, s0
                  sra          s11, a5, s3
                  bgeu         t3, s4, 111f
                  and          t4, a4, a3
                  ori          zero, s10, 1226
                  xori         a1, a2, -397
                  bge          gp, ra, 111f
                  sltu         zero, a0, s10
                  blt          gp, s0, 111f
                  slti         a3, t3, -378
                  sltu         ra, t4, s0
111:              and          s0, a7, s4
                  lui          t3, 783180
                  or           ra, s2, zero
                  lw           t1, 4(a7)
                  addi         a7, a7, 44
                  auipc        a5, 274454
                  xori         s5, t6, 295
                  xor          a6, t6, s4
                  slti         zero, a3, 1148
127:              addi x13, x6, 0
127:              jalr x13, x13, 0
sub_2:            addi         a7, a7, -28
                  sw           t1, 4(a7)
                  sltiu        a6, s1, -1872
                  sll          s11, s2, sp
                  add          a5, a6, s4
                  xori         s3, t5, 1899
                  slli         a4, a5, 3
                  la           ra, sub_4
                  and          s1, zero, t2
                  xori         s10, s5, 236
                  sll          a2, s4, tp
                  srl          s4, s5, s3
                  slli         s4, ra, 22
                  addi         ra, ra, 190
                  xori         s9, zero, 1041
sub_2_j5:         jalr         t1, ra, -190 #jump sub_2 -> sub_4
                  la           a6, region_1+1482 #start riscv_load_store_rand_instr_stream_0
                  lhu          s11, 324(a6)
                  add          a2, s8, s3
                  sb           t1, -185(a6)
                  sll          s9, a6, s5
                  or           s9, a6, a5
                  srli         s2, a5, 12
                  nop
                  lhu          t1, -1132(a6)
                  nop
                  lb           s1, 348(a6)
                  xor          t3, a7, t0
                  andi         a3, gp, -469
                  auipc        t0, 813091
                  sb           s0, -912(a6)
                  ori          sp, s8, -1506
                  slt          t4, t4, s11
                  auipc        s2, 238692
                  sltu         t6, gp, t1
                  and          a4, a6, s1
                  lb           sp, -651(a6)
                  srli         t6, t2, 22
                  lbu          a3, -1172(a6)
                  slti         a1, a0, 1300
                  sll          a3, t1, tp
                  lh           gp, 506(a6)
                  lhu          s3, -362(a6)
                  lb           sp, 255(a6) #end riscv_load_store_rand_instr_stream_0
                  sra          s1, s6, a5
                  slt          zero, t5, zero
                  slti         s11, s1, 1949
                  sub          s7, a2, a5
                  bltu         a7, s1, 6f
                  blt          a1, a7, 6f
6:                xor          s1, s0, s10
                  ori          t5, t0, -1044
                  sll          sp, a1, s6
                  xori         t3, s11, 591
                  slli         a3, s10, 3
                  bge          t0, a3, 26f
                  beq          s8, s10, 24f
                  sltu         t6, t1, s2
                  or           s4, gp, s4
                  addi         a5, gp, 457
                  sll          a1, s0, sp
                  bltu         s11, t2, 19f
                  lui          s4, 705675
19:               sub          a5, t3, ra
                  addi         sp, s7, -1020
                  beq          s1, s7, 33f
                  sll          s3, t3, t0
                  bne          s3, t6, 32f
24:               nop
                  xori         a6, a2, 1744
26:               nop
                  blt          s2, zero, 34f
                  nop
                  srai         s10, s0, 8
                  ori          tp, t5, -806
                  srai         s5, a3, 23
32:               bltu         a7, sp, 33f
33:               bne          t4, sp, 47f
34:               nop
                  xor          s3, a3, t1
                  nop
                  auipc        a1, 138487
                  ori          s6, s10, 722
                  ori          a4, a1, -24
                  sra          s4, sp, s1
                  blt          gp, t4, 56f
                  sltiu        zero, t0, 790
                  add          t5, a2, t6
                  srl          a5, t0, sp
                  or           a0, a1, s8
                  slli         s11, s4, 21
47:               slti         s2, s1, 1945
                  add          t1, s7, t2
                  andi         a5, t2, 977
                  nop
                  bgeu         a0, s3, 71f
                  lui          s10, 366976
                  sltiu        a4, a7, -1670
                  and          a4, sp, s0
                  srli         sp, t5, 19
56:               sub          s0, t2, ra
                  auipc        sp, 780619
                  slli         a6, a5, 10
                  beq          tp, t6, 61f
                  bne          s4, s7, 74f
61:               sra          ra, s6, s0
                  xor          t6, t3, a5
                  or           t3, a3, t5
                  sltiu        a1, t2, 1897
                  addi         zero, a3, 1419
                  andi         gp, a0, -858
                  or           t4, t0, s7
                  sub          gp, s5, a0
                  xori         s3, a6, -464
                  blt          zero, t4, 85f
71:               ori          gp, a7, -1603
                  sll          a0, s11, sp
                  slli         gp, a0, 19
74:               ori          a1, s2, 1538
                  srl          a0, t6, ra
                  bgeu         s0, t1, 95f
                  slt          s10, s3, a2
                  bge          a1, a4, 98f
                  and          gp, s6, s6
                  ori          s2, a6, -598
                  sub          s0, t6, a0
                  nop
                  or           ra, s10, gp
                  nop
85:               slt          s3, a5, t5
                  lui          t3, 885047
                  sra          s1, zero, t0
                  sra          a6, s11, tp
                  xor          tp, s0, t0
                  xor          s7, a4, t4
                  bgeu         t5, tp, 111f
                  bltu         t6, t4, 95f
                  bge          s11, tp, 110f
                  bne          sp, s6, 96f
95:               sll          gp, t5, s7
96:               bltu         ra, t4, 106f
                  sra          a2, a2, sp
98:               ori          s2, s3, -1775
                  srai         t0, t5, 19
                  add          zero, t2, sp
                  ori          s6, t2, 90
                  slt          sp, sp, t4
                  sub          s11, s7, a1
                  srl          s10, s0, s5
                  slli         tp, s9, 31
106:              sll          s0, a4, t6
                  ori          t6, s7, 1593
                  bgeu         s9, t1, 127f
                  addi         a5, s8, -1816
110:              and          t3, a7, sp
111:              bltu         zero, a2, 115f
                  blt          s1, t3, 114f
                  xor          s6, s1, a6
114:              srl          s3, a3, t4
115:              xori         a2, a0, -1801
                  blt          t2, s0, 126f
                  beq          tp, a7, 134f
                  beq          t5, a3, 120f
                  addi         s5, t1, -1325
120:              andi         a3, a7, -1189
                  slli         t0, s10, 18
                  srli         t0, t1, 5
                  sltu         a3, s11, t1
                  or           s1, s6, a4
                  ori          t3, s7, 1078
126:              srai         t4, t1, 3
127:              xori         s0, a6, -1013
                  sub          t4, gp, s11
                  bge          a4, s4, 132f
                  bne          s0, a5, 136f
                  slli         a4, a2, 5
132:              and          s11, s6, a1
                  slti         a2, s0, -176
134:              bne          t0, t6, 136f
                  bltu         a3, s0, 142f
136:              sltu         a6, a5, t5
                  srl          zero, a4, s4
                  slli         s10, s9, 22
                  srli         gp, a6, 18
                  slti         t6, a7, 471
                  sltiu        s2, t1, 1217
142:              sub          s5, t5, s2
                  sra          a1, gp, a5
                  srl          tp, s11, a3
                  and          t5, s0, s1
                  slli         s4, s0, 5
                  lw           t1, 4(a7)
                  nop
                  sll          s5, t0, a0
                  srl          s7, a0, t4
                  and          a0, a6, s10
                  xori         a2, t2, -1045
                  addi         a7, a7, 28
                  sltiu        s2, a5, -1659
                  srl          sp, a2, a1
200:              addi x16, x6, 1
200:              jalr x16, x16, 0
sub_4:            addi         a7, a7, -44
                  srl          tp, a2, s9
                  nop
                  sw           t1, 4(a7)
                  nop
                  srai         s1, t4, 3
                  or           s9, t0, zero
                  add          t0, ra, s2
                  srai         t4, s11, 3
                  slt          zero, a1, t4
                  slti         s3, t2, 1271
                  sll          s10, a7, a7
sub_4_j7:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  srli         a4, s11, 22
                  sltu         zero, a4, t2
                  bge          s3, s5, 13f
                  beq          s11, s10, 6f
                  sltiu        s4, s0, -922
                  auipc        a5, 413283
6:                ori          tp, s0, 1219
                  sll          gp, t6, a2
                  srl          t1, t5, s2
                  auipc        s2, 643068
                  addi         s5, t6, 381
                  bne          a7, s0, 19f
                  blt          s4, t5, 15f
13:               slt          ra, s10, a7
                  beq          s4, a7, 15f
15:               blt          s2, ra, 26f
                  bge          a4, a7, 22f
                  or           a2, a5, t1
                  sltu         a6, s2, t4
19:               slt          a3, t2, a3
                  xori         a1, a2, -1373
                  bgeu         tp, tp, 25f
22:               sll          sp, a1, a0
                  blt          a2, a3, 30f
                  slli         s4, t5, 15
25:               lui          s10, 482713
26:               lui          ra, 744087
                  lui          s5, 385034
                  blt          s0, t5, 30f
                  addi         s5, s0, -1824
30:               srl          a4, s6, s6
                  sltu         s0, a0, s1
                  andi         a6, a7, 1756
                  and          t6, t1, a5
                  lw           t1, 4(a7)
                  xori         sp, t4, -962
                  nop
                  sub          s10, a7, t4
                  nop
                  srli         t4, gp, 16
                  addi         a7, a7, 44
                  nop
55:               addi x25, x6, 0
55:               jalr x25, x25, 0
sub_7:            addi         s6, s4, -63
                  addi         a7, a7, -36
                  or           s1, a1, a7
                  add          t0, s9, t2
                  sw           t1, 4(a7)
                  auipc        t3, 163963
                  or           t0, s10, s7
                  slt          a1, ra, gp
                  andi         s4, a6, -1719
                  slt          a3, s7, s10
                  lui          s5, 855201
                  slt          t1, t5, s4
                  or           s9, s2, s2
                  xori         t3, s5, 1891
                  lui          a6, 108655
                  addi         s1, s1, 1977
                  xori         s11, s4, 1648
sub_7_j10:        jal          t1, sub_10 #jump sub_7 -> sub_10
                  addi         t0, ra, -175
                  slt          s11, s11, s3
                  sll          a3, s1, a3
                  sll          s10, a3, s6
                  srli         s9, a3, 28
                  srai         t1, t1, 24
sub_7_j11:        jal          t1, sub_10 #jump sub_7 -> sub_10
                  srai         s0, a6, 1
                  ori          a3, a6, 15
                  sra          s6, s11, ra
                  or           a2, s11, s1
                  ori          t0, t6, -752
                  sll          s3, t2, s9
                  slti         t1, t1, 667
                  addi         tp, a3, -818
                  srli         a1, t4, 27
                  andi         s10, tp, 661
sub_7_j12:        jal          t1, sub_9 #jump sub_7 -> sub_9
                  ori          a1, a1, -1531
                  srl          a5, s3, a7
                  bge          t0, t1, sub_7_j13 #branch to jump instr
                  srli         s4, s3, 10
                  andi         a2, gp, -265
                  nop
                  or           t3, zero, s7
                  slli         zero, t6, 3
sub_7_j13:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  srl          a5, zero, a6
                  bne          s2, s2, 19f
                  add          t5, a2, sp
                  or           a5, a7, t0
                  srl          a6, sp, s10
                  bne          t2, a5, 20f
                  srl          a4, s1, a3
                  bgeu         s6, t5, 17f
                  slt          s7, t2, t4
                  add          s9, s8, tp
                  add          s5, t2, s1
                  sll          s9, gp, gp
                  slti         ra, ra, -265
                  auipc        s6, 318882
                  sub          t3, t2, a0
                  srli         s4, gp, 7
                  sltiu        zero, gp, 897
17:               xori         sp, s8, -1752
                  auipc        s1, 809509
19:               ori          s7, sp, 317
20:               blt          s9, s5, 26f
                  lui          s2, 417228
                  ori          s0, a1, -1559
                  and          a3, zero, sp
                  add          s9, s9, t5
                  sra          s0, a0, t0
26:               srl          s6, tp, s3
                  lui          ra, 399662
                  slli         s9, a3, 6
                  srl          s1, s9, s10
                  or           gp, t6, s0
                  or           a5, a6, tp
                  srai         s3, t0, 10
                  xori         s4, s2, -780
                  xori         a1, t4, 983
                  or           s10, s0, s3
                  sra          s7, a2, s2
                  srl          a4, s1, tp
                  sltiu        a6, s7, -28
                  nop
                  ori          sp, s3, 1307
                  slti         sp, s11, -1929
                  slti         t3, t6, 1838
                  ori          s7, s2, 292
                  srli         a5, s3, 7
                  bltu         zero, gp, 49f
                  or           s3, t1, a0
                  and          s7, s4, s4
                  sltiu        s2, s7, -1920
49:               xori         s0, a3, -1754
                  bge          s8, t3, 70f
                  blt          t5, s2, 67f
                  xori         s5, gp, -1832
                  nop
                  srai         a0, a0, 19
                  add          s6, a6, a5
                  xori         t1, s2, 198
                  addi         a0, s10, 824
                  beq          t0, a4, 65f
                  bne          s7, a4, 70f
                  sltu         t4, s5, t4
                  bge          s8, sp, 65f
                  sll          s2, a1, a5
                  sltiu        zero, s2, -645
                  bge          a7, gp, 84f
65:               lui          s10, 333602
                  bltu         zero, s5, 82f
67:               auipc        s5, 944885
                  auipc        s5, 837610
                  or           a5, t3, t0
70:               slt          sp, t4, s11
                  blt          s6, sp, 73f
                  bltu         s7, a5, 86f
73:               sra          s10, t2, t0
                  sll          a0, s6, s5
                  beq          s4, s3, 81f
                  bne          t6, t0, 96f
                  xor          s9, a2, a6
                  beq          s1, t2, 94f
                  xor          s3, s3, s2
                  sltu         t4, s8, s6
81:               beq          t1, t4, 100f
82:               sra          t5, t0, t1
                  srai         s5, ra, 9
84:               slt          a3, s0, a2
                  srli         t6, a7, 11
86:               xor          a6, a3, s0
                  nop
                  bge          s1, t2, 89f
89:               beq          s9, s4, 99f
                  andi         gp, a7, -1268
                  or           t5, s7, s2
                  add          a6, a4, t4
                  xori         t5, s9, -720
94:               xor          t4, t6, s2
                  beq          a1, t3, 105f
96:               xori         s1, a3, -74
                  auipc        a3, 184200
                  srli         ra, s8, 21
99:               and          s7, t1, a3
100:              sltu         s11, s0, ra
                  sltiu        tp, a0, -724
                  sltiu        ra, a6, 1733
                  slt          s0, t4, tp
                  sll          s10, t0, tp
105:              addi         s5, s9, 1187
                  and          s0, s3, ra
                  xori         t5, s10, -1697
                  add          s10, a5, sp
                  xori         t0, s3, 634
                  lw           t1, 4(a7)
                  sub          tp, t2, sp
                  addi         a7, a7, 36
                  srl          s1, a6, sp
159:              addi x22, x6, 1
159:              jalr x22, x22, 0
sub_6:            bgeu         t3, zero, sub_6_stack_p
                  slt          tp, s9, s0
                  sra          s7, a1, s8
sub_6_stack_p:    addi         a7, a7, -60
                  or           t5, s7, s9
                  sra          t5, gp, s7
                  sw           t1, 4(a7)
                  srai         a6, s4, 3
                  nop
                  auipc        s4, 436724
                  la           tp, region_0+1937 #start riscv_load_store_rand_instr_stream_4
                  slli         t1, t6, 28
                  lb           s3, -986(tp)
                  srl          s0, s6, a5
                  lb           s11, -454(tp)
                  sb           zero, -800(tp)
                  andi         t1, s5, 535
                  sb           t2, -571(tp)
                  ori          a1, a5, 110
                  auipc        ra, 122032
                  lbu          s7, -487(tp)
                  xori         a3, s4, 1717
                  lbu          t6, -130(tp)
                  lhu          a3, -827(tp)
                  or           s4, a5, t5
                  and          zero, a3, a7
                  lb           ra, -460(tp)
                  lb           a4, -1847(tp)
                  lh           t4, -1831(tp)
                  lb           ra, -1893(tp)
                  srl          a5, s2, a0
                  xori         s1, t4, 1168
                  lh           gp, -37(tp)
                  sub          t3, t5, gp
                  slti         a2, t3, -1021
                  lb           s11, -1774(tp)
                  srai         s5, zero, 21
                  auipc        zero, 572301
                  sub          t3, s1, s5
                  sra          s4, a7, a1
                  add          s11, a4, a5
                  sb           s2, -1318(tp)
                  sb           s11, -46(tp)
                  lhu          s7, -1663(tp)
                  lh           a6, -439(tp)
                  and          t4, a1, s0
                  sh           s8, -1369(tp)
                  sra          s4, a7, a1
                  sh           t1, -1877(tp) #end riscv_load_store_rand_instr_stream_4
                  la           t6, region_0+134 #start riscv_load_store_rand_instr_stream_0
                  add          t5, sp, t3
                  sb           s3, 236(t6)
                  sb           s5, -16(t6)
                  ori          a0, s7, 384
                  srai         a4, t5, 4
                  sb           s3, 122(t6)
                  lb           sp, 98(t6)
                  add          t4, a5, t3
                  sh           sp, -114(t6)
                  sh           t0, 248(t6)
                  sra          s9, s5, s10
                  slli         s2, t4, 25
                  auipc        a2, 406781
                  lh           a5, 70(t6)
                  addi         s2, a5, -1189
                  slti         ra, a0, 484
                  sb           tp, 49(t6)
                  addi         s2, a3, 1337
                  sll          s3, s1, t2
                  sub          t4, s11, s10
                  addi         a4, a0, 1407
                  sra          sp, t4, t4
                  srl          gp, t3, a6
                  addi         a6, tp, -1474
                  sll          a6, gp, t1
                  slt          s3, t0, s5
                  add          t5, a2, t2
                  srai         sp, a5, 24
                  srl          a1, s8, s8
                  sb           s9, 74(t6)
                  lhu          s0, 94(t6) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_1+1893 #start riscv_load_store_rand_instr_stream_3
                  sb           a6, -50(gp)
                  lbu          t0, 59(gp)
                  add          t0, sp, sp
                  or           s4, t6, t6
                  sra          s3, s7, s8
                  xori         t1, a3, -1750
                  lb           s6, -30(gp)
                  lui          s10, 538486
                  and          t3, ra, t1
                  lbu          s5, -52(gp)
                  lbu          ra, 33(gp)
                  lbu          ra, 19(gp)
                  lb           s4, 5(gp)
                  lhu          t3, -3(gp)
                  lb           s6, 32(gp)
                  sh           a4, 3(gp)
                  sb           s8, 35(gp)
                  sb           t4, 6(gp)
                  auipc        s10, 945969
                  sltiu        s6, t1, -499
                  lh           ra, 59(gp)
                  lbu          s11, 50(gp)
                  ori          tp, s0, -748
                  lhu          a5, 25(gp)
                  add          s4, a7, ra
                  lh           t3, 61(gp)
                  sb           s3, -44(gp)
                  sb           t2, 54(gp)
                  ori          ra, s2, 1261
                  lb           a3, 8(gp)
                  sh           t2, -61(gp)
                  lb           a3, 54(gp)
                  sw           zero, 43(gp)
                  lh           t4, -53(gp)
                  sb           s7, 9(gp)
                  sb           s9, 37(gp)
                  lui          t3, 683945
                  andi         t5, t6, 1500
                  lb           t0, 0(gp)
                  sb           a2, 25(gp)
                  sltiu        t1, t3, 1644
                  lb           tp, 62(gp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+537 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 1426(sp)
                  sb           a5, -437(sp)
                  sb           s10, 276(sp)
                  lbu          t0, 676(sp)
                  lbu          gp, 886(sp)
                  sb           a2, 326(sp)
                  srl          t5, t2, t5
                  sll          s11, a5, zero
                  andi         a0, tp, 139
                  slti         tp, sp, 1785
                  sh           zero, -479(sp)
                  lbu          t0, 636(sp)
                  srai         a1, gp, 2
                  srl          ra, a3, s2
                  sb           t0, 1169(sp)
                  nop
                  lb           t4, -155(sp)
                  sh           s5, 865(sp)
                  or           a3, a2, s0
                  lh           t4, 369(sp)
                  lbu          tp, 1434(sp)
                  sb           s3, -78(sp)
                  sb           t5, 1174(sp)
                  sltiu        s3, a7, -1317
                  sb           t0, -235(sp)
                  srl          s6, tp, t6
                  lbu          s4, -192(sp)
                  lb           zero, -214(sp)
                  slti         s5, ra, 754
                  srl          a0, a2, t2
                  lb           zero, 608(sp)
                  srai         a1, s4, 14
                  srai         a6, s7, 14
                  lh           t4, 827(sp)
                  lbu          t1, 1400(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+1546 #start riscv_load_store_rand_instr_stream_2
                  auipc        s7, 685789
                  lhu          a1, 56(s3)
                  lbu          t1, 54(s3)
                  srl          s10, a4, s0
                  lbu          t4, -63(s3)
                  lb           a4, 51(s3)
                  ori          t5, a2, 1584
                  lb           t0, 7(s3)
                  srl          s2, s10, a4
                  lb           a5, 53(s3)
                  lb           s5, 24(s3)
                  lb           t1, -59(s3)
                  sb           s1, 55(s3)
                  lw           a1, 2(s3)
                  sb           a6, -54(s3)
                  sb           s5, 21(s3)
                  lb           t1, 53(s3)
                  slli         a2, s9, 9
                  addi         a4, s3, 885
                  lbu          s9, -31(s3)
                  lui          t0, 311700
                  sra          sp, a0, s0
                  lh           a3, 0(s3)
                  slli         a2, a7, 18
                  xori         s9, s3, 1514
                  sb           s1, 46(s3)
                  sll          a0, a1, a6
                  srl          tp, t5, tp
                  slti         zero, s9, 165
                  lb           sp, -61(s3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+383 #start riscv_load_store_rand_instr_stream_6
                  or           t6, ra, zero
                  slti         a2, t0, 333
                  slti         a3, s7, 1002
                  lhu          s0, 1129(sp)
                  xori         s7, s3, -89
                  sltiu        s3, s4, 1299
                  nop
                  lb           s10, -13(sp)
                  addi         a3, t5, -1618
                  lbu          a6, 666(sp)
                  slt          a2, s9, a6
                  and          s10, t6, tp
                  lbu          s9, 497(sp)
                  srai         s3, sp, 16
                  lb           s2, 1439(sp)
                  sb           s11, 873(sp)
                  lbu          a5, 944(sp)
                  srai         a1, sp, 17
                  srai         tp, a3, 31
                  sh           t5, 1051(sp)
                  lbu          a4, 560(sp)
                  addi         a1, t3, -1984
                  sb           s0, 266(sp)
                  lbu          s6, 1078(sp)
                  srai         gp, s4, 8
                  or           s9, s9, s3
                  add          s2, s1, a7
                  srli         a4, s0, 5
                  xor          a1, s7, s10
                  andi         a0, a3, -524
                  lhu          a3, 59(sp)
                  sb           t6, -366(sp)
                  lhu          zero, 923(sp)
                  sra          tp, s5, a3
                  sb           a2, 682(sp)
                  lbu          t5, 1516(sp)
                  lbu          t5, 746(sp)
                  lb           s4, 982(sp)
                  lbu          s2, 1093(sp)
                  sb           s8, 1176(sp)
                  addi         t0, tp, -185
                  lb           tp, 676(sp)
                  lh           a5, 1299(sp)
                  srai         s6, a6, 20
                  lb           s11, 272(sp)
                  lbu          s9, 210(sp)
                  slti         tp, t4, 267
                  sra          a2, a3, s4
                  sltiu        s7, t2, -1689
                  sb           s3, -348(sp)
                  srli         a4, t6, 12
                  addi         s7, s11, 1121
                  lb           t6, 575(sp) #end riscv_load_store_rand_instr_stream_6
                  sub          tp, t3, s9
                  slli         ra, zero, 21
                  bge          a5, t2, 12f
                  sltu         s2, a3, a3
                  bltu         t0, a3, 20f
                  bne          t6, a3, 11f
                  nop
                  add          a4, a1, t0
                  sra          s10, s4, s11
                  sra          s0, s8, a0
                  bge          t0, s2, 22f
11:               slt          s2, a4, a4
12:               sra          a6, a7, a0
                  sub          t0, t0, a5
                  slt          t3, a5, a1
                  auipc        s2, 686198
                  sub          a1, s2, s4
                  addi         t0, a5, -814
                  bne          zero, s0, 24f
                  blt          a7, a5, 32f
20:               sll          gp, a6, t0
                  sub          a6, sp, s0
22:               slt          t0, a6, a2
                  or           t6, t2, s5
24:               slli         t6, a3, 28
                  ori          s1, t6, 180
                  srai         s2, a3, 5
                  xor          a3, a1, s10
                  bgeu         sp, gp, 39f
                  nop
                  slli         s5, s8, 25
                  slti         s7, t2, 1656
32:               sll          s0, s2, t2
                  slli         t4, a7, 24
                  addi         s3, s7, 1153
                  andi         a1, a6, -114
                  bge          s8, sp, 51f
                  slti         s2, s1, -1226
                  blt          tp, s5, 43f
39:               lui          t0, 993678
                  xori         t1, s9, -846
                  sll          t0, a7, s11
                  srai         s2, t1, 23
43:               add          s11, a2, sp
                  sub          ra, ra, zero
                  xor          a3, s11, s3
                  sltu         t3, s0, s2
                  and          s9, s9, tp
                  xori         t6, tp, -655
                  andi         s10, s6, 1787
                  srl          s0, t4, a0
51:               slt          a0, ra, s5
                  or           gp, a2, gp
                  nop
                  bge          a1, a4, 71f
                  or           s5, zero, gp
                  bgeu         a6, t0, 67f
                  auipc        s4, 398091
                  slli         s11, s10, 26
                  add          s10, t5, s0
                  xor          s10, zero, a6
                  sltu         s7, t0, s2
                  auipc        gp, 78852
                  sltiu        sp, t3, -1124
                  sra          s6, t0, a7
                  andi         a2, gp, 832
                  beq          s11, s4, 68f
67:               bltu         s8, s5, 76f
68:               blt          t0, t2, 78f
                  sltiu        s0, tp, 1426
                  srli         tp, t4, 24
71:               xor          gp, t4, s2
                  ori          gp, s7, 335
                  bgeu         a4, t5, 88f
                  xori         t0, ra, -1028
                  andi         s6, t6, 887
76:               srl          sp, zero, a7
                  and          s10, s1, sp
78:               sltu         a3, zero, s7
                  ori          s0, s2, -435
                  nop
                  bltu         t1, t5, 82f
82:               slli         s2, s0, 28
                  srai         s4, a2, 6
                  srli         t1, tp, 31
                  lui          a1, 181792
                  sll          s0, s3, tp
                  sll          t6, s6, t0
88:               auipc        s10, 197092
                  slt          a5, zero, tp
                  andi         tp, ra, 45
                  srl          s9, t4, t3
                  srai         zero, s9, 7
                  bne          s8, s2, 102f
                  and          t3, s0, a1
                  sra          gp, s9, s1
                  andi         tp, s0, 687
                  bne          a7, s6, 100f
                  andi         a0, t5, -710
                  bgeu         s4, t3, 118f
100:              slli         t0, s0, 3
                  ori          t6, a6, 1139
102:              beq          a7, gp, 119f
                  sra          ra, s11, s5
                  xori         a2, ra, 1015
                  auipc        s1, 670545
                  or           s11, s6, s8
                  sll          s1, s4, s4
                  or           t6, t6, a2
                  xor          a3, s2, s11
                  srl          s3, s2, sp
                  nop
                  srl          s5, a0, tp
                  andi         sp, s10, 511
                  bge          a4, s1, 116f
                  blt          t5, tp, 134f
116:              bne          s5, s5, 129f
                  xor          t5, tp, t5
118:              srai         tp, a3, 28
119:              andi         s5, a7, -1744
                  sra          s11, a4, a3
                  blt          s11, s8, 124f
                  bne          s9, zero, 128f
                  addi         a3, s8, 1319
124:              sltu         ra, s5, s7
                  bltu         a1, t5, 137f
                  and          a5, zero, s9
                  andi         s11, s4, 571
128:              slli         t0, a7, 30
129:              sra          ra, t3, a4
                  sra          s4, s10, s6
                  slli         t0, t4, 15
                  beq          a3, t6, 149f
                  srli         t5, s4, 18
134:              ori          tp, a6, -1825
                  lui          s1, 280953
                  sltiu        a5, s5, 481
137:              sll          a1, a6, a3
                  beq          t4, a3, 141f
                  xor          tp, s11, a2
                  add          s5, s5, a5
141:              xori         a6, t5, -520
                  slt          a6, t5, zero
                  sltiu        ra, a0, -228
                  sra          s10, a4, a4
                  andi         a2, t4, -64
                  bgeu         s8, s6, 147f
147:              srli         zero, a4, 26
                  slli         t1, t6, 24
149:              slt          s5, s1, s10
                  add          a0, sp, t5
                  blt          s3, s6, 171f
                  sll          s7, s3, a2
                  slti         s9, t6, -1980
                  lui          a3, 581615
                  bltu         s9, s1, 164f
                  srai         a0, s11, 7
                  or           sp, s4, a6
                  nop
                  or           t0, s3, a1
                  srli         s6, a2, 28
                  bgeu         s1, sp, 173f
                  xori         s0, t5, 1628
                  lui          a2, 566357
164:              ori          a1, s1, -583
                  auipc        a0, 483848
                  slti         s0, tp, -220
                  sra          a2, t4, sp
                  andi         s3, a7, 970
                  bge          a2, s1, 186f
                  blt          s1, t3, 173f
171:              ori          t1, s4, 1571
                  sub          ra, a3, s7
173:              sltu         s0, sp, a4
                  beq          s9, t6, 186f
                  bltu         s11, ra, 185f
                  slti         a2, s10, 1738
                  sltiu        a6, t0, 1627
                  bge          s6, s8, 188f
                  bge          a3, a3, 196f
                  or           a0, t0, s3
                  srli         a4, a3, 28
                  sltiu        s9, s2, 1987
                  sltu         t1, t3, t5
                  ori          a5, t2, -239
185:              lui          s7, 945467
186:              lui          a2, 1006605
                  sltu         s1, tp, s4
188:              bgeu         a2, t0, 189f
189:              beq          a1, s3, 208f
                  beq          gp, a1, 195f
                  nop
                  blt          s1, t5, 208f
                  sltu         t0, s7, s3
                  srai         s1, a6, 12
195:              xori         s6, a7, 169
196:              bne          s3, a3, 202f
                  or           s2, sp, s3
                  slti         s4, a6, -1280
                  bne          a7, sp, 214f
                  xor          tp, t1, t2
                  sra          a3, t1, s3
202:              add          s0, s1, s8
                  auipc        gp, 989808
                  slt          a4, s5, a3
                  auipc        a0, 34082
                  bne          t4, gp, 219f
                  add          s3, sp, t0
208:              sltiu        s2, t2, -1481
                  sltiu        s2, s1, 1830
                  sll          s11, t3, a3
                  srai         t0, s11, 15
                  xor          a5, s4, a7
                  or           a3, s0, t2
214:              srli         s7, s6, 23
                  nop
                  slli         s0, s7, 13
                  nop
                  xori         a2, s7, 1706
219:              bltu         t2, t4, 239f
                  srl          t6, zero, t3
                  andi         s10, tp, 743
                  sra          sp, a2, s3
                  sltu         a4, sp, t6
                  srl          a2, a6, s1
                  or           t1, s8, s11
                  sra          a5, a5, a2
                  beq          t2, a4, 230f
                  or           s7, a5, a0
                  srl          sp, gp, s6
230:              ori          a2, s3, 901
                  nop
                  beq          t4, t3, 235f
                  srli         s5, t3, 30
                  sll          s9, t2, s10
235:              blt          s6, s0, 236f
236:              sub          a1, t1, zero
                  sub          sp, a2, a4
                  bltu         zero, gp, 255f
239:              lui          gp, 943156
                  sub          t1, s2, s4
                  and          s4, t6, s7
                  slli         t1, s9, 9
                  slli         t3, sp, 5
                  nop
                  add          a3, t2, a5
                  andi         tp, s8, 774
                  sra          t6, a3, s3
                  bne          s6, s0, 263f
                  auipc        s2, 134243
                  sltu         t4, s4, t4
                  bgeu         a6, a3, 253f
                  xori         a6, a7, 43
253:              ori          s3, a5, 863
                  addi         s7, s5, -943
255:              sll          t5, zero, s2
                  slt          t0, a3, tp
                  auipc        t3, 118154
                  sra          s11, zero, t6
                  sll          s9, a7, a6
                  addi         ra, t1, 1637
                  auipc        t1, 125377
                  srl          s10, a1, s9
263:              bge          a1, t5, 272f
                  sltu         ra, s6, a6
                  addi         a0, a3, -409
                  sra          t3, s10, s2
                  andi         t6, a2, -213
                  bne          sp, ra, 279f
                  beq          a0, t1, 275f
                  bgeu         s1, tp, 276f
                  slt          s10, zero, s6
272:              slli         s11, s3, 23
                  sltiu        a5, s0, 1744
                  slti         s3, t5, -352
275:              add          a4, gp, a2
276:              beq          a7, t5, 287f
                  srli         t3, s8, 22
                  lui          s1, 371736
279:              ori          t5, a2, -1276
                  lui          s9, 453571
                  ori          a0, s11, 1569
                  sltiu        s11, zero, 1806
                  bne          a5, t3, 285f
                  sll          gp, a5, s2
285:              sub          a4, s4, s10
                  andi         t4, sp, 466
287:              bltu         sp, ra, 306f
                  sra          s2, s10, ra
                  andi         tp, s7, 1182
                  andi         t5, t2, 1372
                  sra          a5, s8, a3
                  xori         s6, a1, 419
                  addi         t4, s11, 479
                  bge          s7, ra, 307f
                  bge          a5, s6, 296f
296:              bgeu         s7, a7, 297f
297:              lui          t1, 108069
                  beq          s2, s10, 311f
                  auipc        tp, 895251
                  sra          a4, s5, gp
                  srai         a3, a5, 4
                  sll          s11, a6, a3
                  ori          t0, a3, -1313
                  add          tp, s5, a5
                  bltu         a7, s8, 315f
306:              sltiu        a1, a3, -117
307:              xor          tp, t6, tp
                  andi         sp, s7, 2038
                  ori          sp, s11, 1948
                  bge          s0, t5, 321f
311:              and          a3, s7, gp
                  srli         s0, zero, 27
                  sltiu        ra, t5, -1817
                  add          tp, s9, s4
315:              slti         a6, s9, -1125
                  blt          ra, ra, 333f
                  sra          t4, sp, a5
                  andi         a5, s3, -1627
                  beq          sp, t1, 328f
                  slli         t6, s9, 17
321:              sub          zero, t0, s10
                  beq          s11, s10, 334f
                  slli         s1, a0, 12
                  blt          sp, t2, 327f
                  sltiu        ra, a7, 1309
                  andi         gp, a5, -1750
327:              srl          s0, ra, s7
328:              sll          a0, t3, zero
                  addi         s6, s1, 1532
                  blt          s1, zero, 346f
                  xori         t4, s10, -1584
                  srli         ra, t6, 24
333:              xor          a1, t4, a0
334:              nop
                  slli         a3, a5, 15
                  sll          s2, s10, t5
                  sltiu        s0, t5, 1694
                  bge          gp, s4, 344f
                  slti         s1, a5, 616
                  andi         zero, t4, 1686
                  bne          a1, a0, 360f
                  bne          a1, gp, 361f
                  sra          sp, a1, zero
344:              sltiu        s11, t6, -835
                  blt          s6, t6, 365f
346:              lui          s7, 421456
                  srli         a4, a2, 9
                  bne          s5, a3, 357f
                  xori         t5, zero, -1261
                  bne          s9, sp, 352f
                  auipc        s2, 597770
352:              sltu         a6, s6, s7
                  bgeu         s9, s6, 364f
                  add          t0, a7, t5
                  slti         s1, a0, -303
                  xor          s7, s4, a4
357:              bgeu         gp, a4, 359f
                  and          gp, s5, a3
359:              srl          s10, a0, sp
360:              blt          s4, a1, 365f
361:              sra          a2, ra, t0
                  lui          a5, 922811
                  slt          s0, a3, s5
364:              nop
365:              srai         sp, ra, 14
                  srai         t4, t3, 24
                  xori         a1, t2, 1806
                  auipc        zero, 331707
                  slti         s1, t4, 1624
                  lui          t0, 1017086
                  sll          a0, a5, sp
                  srli         s7, a7, 25
                  srai         t5, s0, 5
                  sll          t1, s6, t3
                  and          a3, s11, zero
                  bge          s7, s11, 393f
                  bne          a4, s4, 383f
                  slti         s4, s6, -323
                  xor          t1, zero, t2
                  xor          a4, t1, a2
                  or           a5, s9, a2
                  xori         s10, ra, -119
383:              sll          ra, ra, a7
                  sltiu        t4, a5, 28
                  srai         a6, s7, 10
                  lui          a2, 318755
                  andi         s7, a0, 1522
                  bge          a5, s10, 403f
                  sll          s1, t3, s5
                  sll          t0, s7, a7
                  bgeu         s3, a2, 394f
                  sltu         s3, tp, tp
393:              beq          s2, t4, 399f
394:              ori          s4, t2, 964
                  beq          a7, t0, 410f
                  bne          t2, a0, 413f
                  bgeu         s4, a6, 400f
                  sltiu        a3, a3, 634
399:              slt          a2, t6, a2
400:              bne          a6, zero, 413f
                  xori         a0, s9, -1170
                  andi         a6, a6, -1849
403:              slli         s6, a0, 0
                  srai         s7, a7, 4
                  and          a3, a5, a3
                  srai         s11, a4, 4
                  lui          a3, 193122
                  auipc        s10, 1020914
                  sll          a1, t2, sp
410:              slti         s7, s11, -2016
                  sltiu        s7, a4, 1743
                  bge          s11, ra, 424f
413:              sll          s5, s7, s1
                  slli         a4, a7, 6
                  xor          s4, s10, s8
                  blt          ra, s9, 426f
                  xori         s1, s11, -1090
                  andi         t3, s7, 749
                  srli         a0, a3, 28
                  add          tp, s10, zero
                  bge          t6, a4, 426f
                  sra          s5, a6, sp
                  bltu         s0, gp, 434f
424:              sltu         t1, t1, a3
                  slt          s10, s5, sp
426:              bge          t5, a5, 441f
                  srli         t6, sp, 25
                  sltiu        t5, a1, 493
                  or           t4, s2, t2
                  sltiu        s7, a2, 1827
                  srli         t0, a0, 7
                  or           gp, ra, a5
                  nop
434:              srli         s11, s9, 31
                  sra          gp, s0, a1
                  srl          s4, a7, t3
                  blt          a2, t6, 452f
                  xori         a3, gp, 1607
                  ori          a5, s5, -1026
                  slt          t1, s4, s1
441:              slt          a1, s0, s10
                  sltu         a0, tp, a1
                  sltu         a3, a1, t0
                  slli         s0, s7, 7
                  srai         a6, tp, 30
                  sltiu        a0, zero, -2032
                  srli         s7, a2, 26
                  ori          ra, s9, -109
                  xor          a1, a5, s1
                  sltiu        gp, s2, 52
                  slti         s11, gp, 1321
452:              xori         a0, a1, 616
                  lui          s0, 763939
                  sltiu        s5, s6, -1524
                  beq          t6, t5, 456f
456:              sltiu        s0, s4, 1846
                  sll          t4, t3, s9
                  or           a2, t3, a6
                  slli         zero, s2, 26
                  sltiu        s4, s5, 1072
                  add          t4, a4, sp
                  nop
                  bgeu         ra, a2, 466f
                  addi         s4, t3, 1497
                  beq          s8, s4, 477f
466:              srai         s7, s11, 31
                  sll          ra, zero, a4
                  srl          a2, a5, s0
                  nop
                  bltu         a6, t0, 490f
                  auipc        a5, 280750
                  slli         t1, s4, 7
                  srai         a3, s2, 15
                  ori          gp, s10, 1846
                  bltu         a1, s11, 476f
476:              slli         a4, s3, 27
477:              xori         a1, a4, 62
                  slli         s3, s5, 4
                  srli         t6, zero, 20
                  beq          t2, s5, 483f
                  srl          a2, t2, s9
                  nop
483:              xori         tp, s8, -1034
                  slli         s3, s7, 20
                  beq          a6, s5, 487f
                  ori          t0, s0, 1084
487:              sra          s2, s7, t6
                  bge          s10, s9, 504f
                  and          a0, t5, s2
490:              sltiu        t0, s11, 1728
                  slti         a2, ra, -160
                  xori         a0, s1, -378
                  bltu         s5, a6, 512f
                  beq          s6, a2, 513f
                  auipc        s3, 333012
                  auipc        t0, 1040312
                  blt          t0, s5, 503f
                  slt          t0, s0, sp
                  sub          t0, s5, s10
                  or           a5, s5, s3
                  lui          gp, 1042429
                  srli         a4, t2, 29
503:              sll          tp, t3, zero
504:              srli         s11, s8, 10
                  sltiu        a4, t5, -1164
                  andi         a6, s1, -1712
                  add          a3, t1, a3
                  blt          s3, a3, 518f
                  srai         a6, s7, 30
                  ori          s2, t0, 571
                  xor          a6, t5, zero
512:              sub          t5, a5, s6
513:              bne          a2, t3, 519f
                  sltu         sp, ra, ra
                  add          t3, t2, tp
                  srli         s9, t5, 5
                  srli         t4, s4, 1
518:              blt          a4, s9, 527f
519:              slt          a4, zero, gp
                  and          t4, t3, s1
                  xori         a5, a0, -221
                  addi         a1, a0, 1816
                  bne          tp, sp, 540f
                  bltu         s3, a5, 541f
                  bltu         zero, a1, 527f
                  slt          ra, s7, s2
527:              sll          s0, a3, s3
                  auipc        s9, 875450
                  beq          tp, s11, 542f
                  xor          t3, s5, s4
                  and          a3, s6, tp
                  bge          s1, a7, 538f
                  sra          a5, s6, s0
                  bge          zero, s6, 545f
                  andi         s4, s7, 380
                  add          a5, t5, a1
                  nop
538:              and          s3, s7, t6
                  add          a5, tp, a1
540:              srl          t6, s6, tp
541:              auipc        s7, 494972
542:              xori         s1, s6, -1134
                  sub          s10, t0, s4
                  sra          t6, s4, ra
545:              srai         a5, a3, 26
                  nop
                  srai         a3, t4, 23
                  bge          t3, sp, 565f
                  srl          a0, a3, t4
                  sltiu        s4, s5, -1015
                  sll          gp, s0, s0
                  or           tp, s2, s10
                  addi         s9, gp, 1947
                  srli         gp, zero, 11
                  la           a5, region_1+48 #start riscv_load_store_rand_instr_stream_5
                  lbu          tp, 10(a5)
                  lb           s2, -10(a5)
                  sb           s2, 2(a5)
                  sb           a6, -2(a5)
                  srl          sp, ra, a5
                  sll          a4, t5, a7
                  sltiu        zero, t3, 868
                  sh           t5, 6(a5)
                  lb           t6, -11(a5)
                  sb           s5, 11(a5)
                  sh           zero, -4(a5)
                  sub          s7, s1, t2
                  sb           a2, -4(a5)
                  or           ra, s0, s0
                  lb           s10, 16(a5)
                  auipc        ra, 999650
                  ori          gp, s0, 1894
                  sb           a2, -4(a5)
                  lbu          t5, 14(a5)
                  sltu         s1, s9, a3
                  lhu          a0, -16(a5)
                  sltu         s2, s3, s6
                  xori         a2, s2, -171
                  add          ra, t2, t4
                  add          t6, s3, s3
                  lhu          a1, -10(a5)
                  xori         t4, s1, -1425
                  sub          s5, s2, tp
                  auipc        t1, 665769
                  lbu          ra, 7(a5)
                  srai         s1, s5, 9
                  or           tp, s10, s2
                  lb           s2, 9(a5)
                  slti         s11, s11, -718
                  or           t4, sp, t0
                  sll          t4, a0, t2
                  sb           t0, -16(a5)
                  and          s5, s0, s7
                  lb           t3, -9(a5)
                  slli         t5, t1, 31
                  sub          a4, zero, a1
                  andi         s3, s3, 1546
                  add          t6, s0, zero
                  xor          a2, gp, s1
                  srl          s4, zero, ra
                  sb           ra, -13(a5)
                  lw           t6, 12(a5)
                  sb           a3, 11(a5)
                  auipc        t4, 395971
                  lb           tp, -10(a5)
                  sb           zero, -14(a5) #end riscv_load_store_rand_instr_stream_5
                  addi         a3, a2, -1154
                  add          t4, a3, a2
                  ori          sp, a3, 1635
                  addi         sp, t3, -145
                  auipc        t4, 83496
                  nop
                  srl          s7, tp, t3
                  xori         s7, s1, -838
                  or           t0, t4, s11
                  sll          s5, s9, t0
565:              bne          zero, s6, 575f
                  bgeu         t3, s5, 578f
                  nop
                  sltu         ra, gp, a6
                  andi         tp, t2, 134
                  srai         t0, a5, 9
                  slt          s5, s0, t0
                  bne          t3, t1, 575f
                  beq          t2, s7, 586f
                  srl          a6, ra, s5
575:              bltu         sp, t5, 584f
                  bgeu         zero, s8, 585f
                  xori         a4, a4, 1727
578:              xor          a5, s4, t3
                  bge          s5, s1, 585f
                  ori          t5, t0, -401
                  bgeu         s0, s9, 593f
                  andi         zero, s5, -1846
                  andi         gp, a6, 62
584:              srli         s10, a4, 14
585:              add          gp, s7, tp
586:              slti         a4, s0, 1177
                  xor          s3, t1, s9
                  slti         t0, zero, -1003
                  bgeu         t0, s6, 601f
                  or           s6, a5, a4
                  blt          s4, a4, 592f
592:              sltu         t5, s3, tp
593:              slti         s1, a5, -392
                  sltiu        t0, a3, 1978
                  xori         a3, zero, 1803
                  auipc        s4, 401828
                  addi         a1, s0, 10
                  srai         s7, s9, 5
                  ori          a0, a5, 925
                  blt          a2, s4, 606f
601:              srli         s7, s1, 10
                  srai         s3, gp, 11
                  slli         zero, s6, 18
                  sll          a0, a4, a2
                  or           s7, t5, s11
606:              xori         s7, t0, 1370
                  bge          t1, t0, 623f
                  sll          s10, a5, s5
                  andi         zero, a7, 1986
                  sub          ra, zero, a0
                  slli         s4, t6, 30
                  sub          t5, a1, t6
                  sub          a1, s4, a4
                  bne          s0, a2, 615f
615:              sub          s4, s1, t3
                  srli         a6, t0, 11
                  auipc        tp, 40540
                  sll          a2, t3, a3
                  andi         s10, s5, 1006
                  sltu         zero, ra, s6
                  srli         s10, t1, 12
                  auipc        s4, 894901
623:              sra          sp, a5, a3
                  andi         a2, t1, -1939
                  bgeu         a5, s11, 640f
                  andi         t6, s0, 579
                  srl          a2, s0, s1
                  add          ra, s8, s11
                  andi         s11, s4, 1679
                  ori          sp, s9, 314
                  slt          t1, s2, s0
                  bgeu         s9, t3, 635f
                  sra          a3, t1, a5
                  bge          a3, a5, 647f
635:              srli         s6, s5, 25
                  slti         gp, a7, 650
                  slli         gp, s2, 14
                  slti         a4, gp, -906
                  bltu         sp, t5, 656f
640:              srai         s4, s4, 0
                  slli         a1, s1, 11
                  sra          ra, s2, s7
                  slt          t1, s10, s6
                  sll          a0, s10, s11
                  slli         s3, zero, 30
                  sll          t1, a2, s9
647:              slti         t4, sp, -791
                  and          ra, s9, t5
                  nop
                  bgeu         a5, tp, 663f
                  sll          s0, s7, s5
                  slt          tp, s11, a3
                  slli         a1, s6, 17
                  sub          a1, sp, zero
                  auipc        tp, 10112
656:              srl          t4, ra, ra
                  nop
                  sub          gp, tp, t4
                  andi         sp, t3, -1749
                  srli         a0, zero, 22
                  andi         s1, a4, -102
                  sltiu        a3, t3, -877
663:              slli         a5, t2, 0
                  add          a5, s3, s10
                  sub          gp, s2, s3
                  sll          s0, s5, t3
                  sll          s9, t3, sp
                  sub          gp, t4, s6
                  bltu         s4, s5, 671f
                  beq          a3, ra, 681f
671:              ori          t0, s0, -329
                  slti         s2, t5, 364
                  or           ra, a6, t6
                  blt          a2, t1, 680f
                  srai         ra, sp, 16
                  beq          s6, s11, 681f
                  bne          s3, s7, 688f
                  lui          a1, 192281
                  sltu         a6, ra, s10
680:              blt          ra, s11, 690f
681:              srli         s0, sp, 8
                  srli         a0, t4, 9
                  srli         gp, s0, 17
                  auipc        t5, 436005
                  nop
                  ori          a6, zero, 1448
                  sll          s9, sp, s4
688:              srl          s0, s2, s3
                  slti         s7, t2, -509
690:              auipc        t4, 165965
                  lui          s10, 75353
                  and          t4, s7, s3
                  lui          a5, 202459
                  bge          t3, t6, 714f
                  auipc        tp, 769918
                  bgeu         s2, a0, 706f
                  xori         s7, sp, 1358
                  nop
                  beq          sp, s3, 702f
                  bge          a3, zero, 719f
                  sltu         a2, sp, t0
702:              lui          s11, 975564
                  addi         ra, t1, -1454
                  addi         a5, s2, 660
                  nop
706:              bltu         t3, a4, 725f
                  and          s11, s0, s0
                  bge          a7, s0, 711f
                  auipc        s3, 701955
                  nop
711:              bne          t1, t0, 728f
                  srai         a1, t5, 28
                  sub          s6, s9, t5
714:              xori         t4, s3, -920
                  sub          zero, sp, a6
                  ori          gp, s3, -163
                  sltiu        tp, gp, -131
                  nop
719:              ori          s7, a3, -909
                  sltu         a5, s3, s4
                  add          gp, s6, t2
                  xor          ra, t6, t2
                  bge          a6, s5, 738f
                  bltu         sp, gp, 733f
725:              xori         s5, a6, 1214
                  add          ra, a5, ra
                  auipc        a2, 748435
728:              nop
                  srl          t4, sp, s11
                  bgeu         a4, s5, 732f
                  srai         t1, zero, 24
732:              slli         t1, a2, 5
733:              srli         a3, a6, 30
                  andi         ra, s4, 33
                  and          s7, ra, s9
                  srl          s2, a5, zero
                  lui          t5, 418212
738:              auipc        s9, 891153
                  add          zero, t6, gp
                  slli         s6, s11, 22
                  or           tp, a1, zero
                  sll          a4, zero, a1
                  sltu         a2, s6, a0
                  xori         s2, s8, 424
                  srli         t5, s8, 28
                  auipc        t4, 852680
                  slli         s4, t6, 18
                  srl          a5, a7, zero
                  sltiu        zero, s1, 1096
                  and          s4, sp, a4
                  and          s10, t2, s3
                  auipc        t1, 421011
                  add          t6, a1, s9
                  add          a3, zero, zero
                  nop
                  ori          s1, t5, 1343
                  sltiu        a3, s0, 1401
                  bne          a1, a6, 775f
                  bge          s3, t6, 768f
                  xori         t5, t3, 1217
                  bgeu         s4, ra, 770f
                  sub          t1, a6, a0
                  sub          t0, a3, t6
                  beq          s5, s7, 775f
                  sub          s4, zero, a4
                  sub          s1, s4, s5
                  lui          s7, 764253
768:              xori         a3, t6, -1019
                  addi         a5, s1, 1004
770:              sll          a2, a6, s10
                  lui          s2, 273447
                  sra          a1, a6, s8
                  sra          s7, t2, s2
                  sltu         sp, s11, t6
                  la           t5, sub_7
                  addi         s3, s8, -690
                  slli         t3, s7, 5
                  srai         s4, s2, 11
                  slt          a2, a2, s2
                  addi         t5, t5, 365
                  sltu         s3, gp, a4
                  bltu         s10, a4, sub_6_j9 #branch to jump instr
                  slt          s3, a6, t2
                  and          s10, tp, s11
                  sll          a0, s3, a4
sub_6_j9:         jalr         t1, t5, -364 #jump sub_6 -> sub_7
                  sll          s7, a1, s9
                  sll          gp, s0, a1
775:              add          s7, gp, s7
                  xor          t6, t6, t0
                  sltu         t0, a4, t3
                  bne          t2, s10, 798f
                  bgeu         a2, a3, 780f
780:              slli         a0, a2, 22
                  slt          t4, a7, s11
                  andi         s10, a7, 335
                  lui          s6, 459550
                  srai         a2, s0, 17
                  lui          t1, 518391
                  lui          s11, 690881
                  sll          a0, t5, sp
                  srai         a4, s6, 20
                  srai         s6, s2, 7
                  srli         gp, t6, 19
                  beq          s9, a3, 801f
                  sll          s2, s4, zero
                  sll          t0, a5, s9
                  bgeu         zero, s7, 800f
                  and          s6, t4, s3
                  sra          s2, s9, s4
                  or           s3, s3, s3
798:              sra          s5, a2, a3
                  addi         s0, s6, 1864
800:              andi         t4, s4, 452
801:              sra          s9, t2, s2
                  ori          zero, s2, 1586
                  nop
                  slli         s4, s2, 0
                  lui          s2, 371976
                  sub          t0, a4, ra
                  blt          zero, a4, 823f
                  and          t0, t6, t0
                  addi         a6, s7, 908
                  ori          s5, a0, -1808
                  and          a3, s9, s0
                  slti         s4, s2, -812
                  add          a2, s4, s10
                  sll          tp, s3, s1
                  andi         s3, s3, 1168
                  bne          s0, sp, 835f
                  srai         a2, s7, 13
                  ori          a4, gp, -107
                  andi         tp, a2, -1188
                  bgeu         s10, ra, 823f
                  andi         ra, t2, 234
                  blt          sp, t5, 834f
823:              slti         t3, s3, -1983
                  blt          s5, t3, 827f
                  sra          a0, zero, zero
                  add          ra, a3, a1
827:              sll          tp, s1, s5
                  sra          a2, s6, a5
                  sltu         s6, a6, s0
                  beq          s9, t4, 831f
831:              srli         t4, gp, 18
                  sll          s10, s9, zero
                  addi         s6, t0, -470
834:              slti         s3, s1, -1118
835:              srai         s7, s5, 23
                  lui          s1, 583714
                  blt          t0, a0, 856f
                  xori         a4, sp, 1559
                  beq          s1, t5, 841f
                  andi         a4, zero, 1276
841:              auipc        a1, 278120
                  beq          t1, s9, 852f
                  sll          tp, a5, a0
                  srli         a3, s1, 5
                  or           s4, tp, s10
                  bne          zero, t1, 859f
                  and          s2, a3, s3
                  bne          s9, a0, 854f
                  xor          a3, a0, s9
                  sub          sp, s10, s4
                  srl          a1, gp, t1
852:              andi         ra, ra, 863
                  slli         s6, sp, 26
854:              sub          t1, ra, s10
                  slt          s11, t2, s6
856:              sltu         s7, s11, t1
                  beq          s5, s8, 874f
                  srai         s7, s8, 15
859:              sltu         s11, sp, a7
                  bge          a5, t0, 862f
                  srli         s0, a7, 6
862:              slti         s10, gp, -282
                  andi         ra, tp, 773
                  bltu         a3, a3, 870f
                  slti         t4, t1, -307
                  srai         sp, s3, 12
                  sltu         a6, t2, tp
                  xor          s0, s7, a7
                  sll          t1, s9, a3
870:              xor          s1, a5, s9
                  nop
                  blt          a1, t0, 889f
                  srli         a2, t5, 27
874:              nop
                  bne          a6, s10, 880f
                  ori          a2, t0, 1672
                  blt          ra, s8, 889f
                  blt          a2, t1, 891f
                  xor          s11, s1, s5
880:              bge          s10, s4, 883f
                  sra          t5, s0, s8
                  bltu         a2, t5, 897f
883:              add          s11, a6, s3
                  sll          t4, t5, a1
                  blt          sp, s7, 896f
                  bgeu         t3, a7, 901f
                  srai         zero, s7, 26
                  sll          s9, sp, a2
889:              slt          ra, a5, s1
                  xor          ra, t2, s5
891:              slli         ra, s0, 11
                  blt          t4, t2, 909f
                  srli         s7, a4, 19
                  ori          s7, s3, -1189
                  blt          s8, a6, 896f
896:              bgeu         sp, a4, 913f
897:              xori         zero, t5, 1046
                  auipc        s5, 706979
                  srli         s10, t0, 6
                  andi         s11, sp, 989
901:              nop
                  slti         s4, a6, -1419
                  xori         tp, gp, 1439
                  sltiu        a1, sp, -489
                  sltu         s1, t6, t3
                  and          a1, s11, s9
                  bge          s5, a4, 923f
                  auipc        a3, 346875
909:              sltiu        s11, t1, 369
                  bgeu         gp, t2, 923f
                  bge          ra, t5, 923f
                  and          ra, a2, t6
913:              srai         sp, s5, 18
                  bltu         t0, s6, 923f
                  sra          a1, t6, sp
                  bgeu         tp, a5, 923f
                  add          a6, t0, t1
                  addi         t4, s2, 1481
                  srl          a6, s6, s7
                  addi         s2, gp, 85
                  beq          t5, s10, 922f
922:              slli         s5, s6, 13
923:              srl          zero, s0, s2
                  xor          a1, a3, t3
                  srli         t6, s7, 13
                  slt          t6, s0, gp
                  srai         a0, gp, 29
                  lw           t1, 4(a7)
                  srl          s3, a1, t1
                  addi         a7, a7, 60
                  slt          tp, s3, a1
                  lui          tp, 26683
1244:             addi x23, x6, 1
1244:             jalr x23, x23, 0
sub_5:            blt          t3, s3, sub_5_stack_p
sub_5_stack_p:    addi         a7, a7, -32
                  srli         s5, gp, 7
                  sw           t1, 4(a7)
                  srli         a6, tp, 8
                  sra          s5, s2, s9
                  lui          s11, 329148
                  slt          t1, a0, a0
                  sltu         s11, s8, s10
                  srli         a2, s11, 10
                  sra          a6, a7, a2
                  sltu         s6, a6, s11
                  lui          t6, 455659
                  andi         s9, t4, -110
                  beq          a4, s7, sub_5_j8 #branch to jump instr
                  sltiu        a6, s1, -1554
sub_5_j8:         jal          t1, sub_6 #jump sub_5 -> sub_6
                  auipc        s5, 459392
                  blt          a6, s0, 17f
                  bne          a4, s0, 14f
                  sltiu        a0, sp, 1172
                  blt          t0, a4, 9f
                  srli         t0, ra, 4
                  sltu         t3, tp, gp
                  srl          ra, s4, a4
                  bge          a6, s2, 20f
9:                lui          ra, 941213
                  sll          t5, s11, s5
                  slti         t1, s2, -834
                  addi         t1, t0, -1800
                  ori          s9, a4, 644
14:               sll          t6, t4, tp
                  sub          s2, a5, t5
                  xori         a0, a4, 1389
17:               and          s2, t0, s10
                  slli         a1, a1, 30
                  bne          a5, a1, 25f
20:               xori         s10, t5, 453
                  beq          t6, a5, 35f
                  lui          t0, 834525
                  srai         s7, ra, 3
                  and          a6, s9, s1
25:               bltu         a0, s3, 28f
                  sll          a1, t3, t3
                  auipc        a0, 224732
28:               beq          a3, t3, 31f
                  addi         a5, t2, 1387
                  sltu         t1, s11, s6
31:               beq          a3, t2, 35f
                  sltiu        gp, sp, 15
                  or           s4, gp, zero
                  bltu         s9, s0, 54f
35:               bge          s2, a4, 48f
                  slt          t4, s6, a3
                  auipc        t5, 671874
                  lui          s7, 789155
                  slli         zero, s4, 27
                  addi         s2, ra, -835
                  sll          t3, s4, a5
                  sll          a5, a1, a6
                  auipc        t4, 327300
                  blt          a3, a2, 53f
                  srai         a3, s10, 17
                  and          s11, gp, s9
                  slti         a6, a0, 1757
48:               lui          ra, 167739
                  and          a0, s5, ra
                  slli         gp, a3, 27
                  bgeu         t5, s3, 65f
                  andi         s1, a4, -1135
53:               slt          t5, s2, sp
54:               srli         s10, s8, 20
                  slt          zero, s2, a3
                  sll          a1, gp, s3
                  blt          t2, a0, 65f
                  andi         s3, t2, 1240
                  bge          t2, t4, 65f
                  lui          ra, 629403
                  add          tp, s7, t3
                  auipc        a1, 835986
                  bgeu         s7, t3, 65f
                  add          s5, s9, t2
65:               xori         a5, a5, -1035
                  lw           t1, 4(a7)
                  xori         sp, t1, 240
                  slt          zero, gp, t2
                  sll          t6, s8, s3
                  slt          a6, t1, sp
                  addi         a7, a7, 32
                  ori          s1, s10, -858
90:               addi x26, x6, 0
90:               jalr x26, x26, 0
sub_1:            sltu         t6, s2, a5
                  add          t3, gp, s10
                  addi         a7, a7, -40
                  xori         a5, a2, 83
                  xor          a3, s2, t1
                  sw           t1, 4(a7)
                  sra          a0, s4, s1
                  srl          s6, t1, a4
                  and          t4, s1, s9
                  sra          t0, t1, s10
                  la           s1, region_0+871 #start riscv_load_store_rand_instr_stream_0
                  sub          t5, a5, s1
                  lui          a0, 235349
                  sh           s11, 189(s1)
                  sltu         a6, gp, a3
                  slt          t4, ra, a4
                  sub          tp, tp, s5
                  lb           a0, 240(s1)
                  xori         s3, s7, 896
                  lb           s10, 228(s1)
                  lb           t4, -94(s1)
                  xori         a1, sp, -1750
                  or           a3, s2, s1
                  xori         s3, s7, 187
                  ori          t5, a0, 1310
                  lbu          s9, -10(s1)
                  sll          tp, a3, s1
                  sb           ra, -150(s1)
                  xor          zero, ra, t6
                  sra          a5, s8, a6
                  sb           t6, -151(s1)
                  sh           t0, 85(s1)
                  srli         s2, a1, 17
                  sra          ra, a3, t0
                  auipc        zero, 741008
                  lh           gp, -91(s1)
                  addi         a3, s2, 91
                  srli         t4, s11, 31
                  srai         zero, ra, 17
                  sh           s6, -65(s1)
                  sll          s0, a3, s5
                  lui          s2, 687097
                  addi         a6, a0, 279
                  lb           s11, 28(s1)
                  and          a1, s10, s0
                  sb           s3, 101(s1)
                  andi         s11, t3, 1338
                  slli         gp, tp, 14
                  lhu          s7, -41(s1)
                  sub          s10, t3, s2
                  slt          t6, t2, a2
                  lbu          a6, 138(s1)
                  sltiu        s3, a0, 1372
                  sb           tp, 124(s1)
                  add          a3, s0, zero
                  lh           a1, 107(s1)
                  slli         s11, s7, 29
                  sb           t3, -126(s1) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+1204 #start riscv_load_store_rand_instr_stream_1
                  nop
                  xori         a2, s8, 1836
                  nop
                  sra          a0, a7, a7
                  ori          a1, gp, -883
                  lbu          s4, 17(t0)
                  lh           s10, -998(t0)
                  slt          s9, a7, t6
                  lbu          a4, -347(t0)
                  auipc        a1, 433073
                  sra          s7, a2, s0
                  sw           s7, -344(t0)
                  lb           s7, -272(t0)
                  lb           ra, -809(t0)
                  sub          a1, s4, t5
                  sw           t3, -552(t0)
                  lui          a4, 528342
                  sb           a2, 127(t0)
                  lb           a5, -250(t0)
                  lb           t6, 221(t0)
                  lbu          s5, -636(t0)
                  lbu          s10, 353(t0)
                  lbu          a4, 350(t0)
                  lh           s2, 496(t0)
                  slli         s2, t2, 0
                  lb           t1, 262(t0)
                  srai         a1, a0, 5
                  lbu          a3, -1188(t0)
                  lhu          zero, -1080(t0)
                  sh           a5, 732(t0) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_1+1891 #start riscv_load_store_rand_instr_stream_3
                  sb           s11, -513(s3)
                  sltiu        gp, s4, -709
                  auipc        s4, 341493
                  sub          a2, s6, a4
                  add          s10, s8, ra
                  sll          s6, s9, s4
                  srai         s10, t1, 9
                  srai         a3, s7, 0
                  and          a4, a5, zero
                  lb           a1, -604(s3)
                  addi         s1, s4, 1698
                  sb           t2, -495(s3)
                  sll          t6, gp, s10
                  lbu          s5, -606(s3)
                  lbu          s2, -1516(s3)
                  and          a5, s0, s10
                  addi         sp, a2, 146
                  or           a3, t0, s4
                  srl          a3, s11, gp
                  lb           t3, -890(s3)
                  slli         tp, a4, 4
                  auipc        a4, 600274
                  sb           s6, -414(s3)
                  sll          s7, s3, s1
                  lh           s1, -1679(s3)
                  xori         s4, s0, -1011
                  sb           tp, -616(s3)
                  sh           a3, -111(s3)
                  lb           s7, -1659(s3)
                  sh           s2, -257(s3)
                  auipc        t6, 672200
                  lh           t3, -1505(s3)
                  lui          t3, 456809
                  andi         s4, t1, -944
                  ori          s0, a7, 1589
                  sw           t0, -671(s3)
                  lb           sp, -1601(s3)
                  slti         a4, s6, -1179
                  nop
                  lhu          a0, -1313(s3)
                  lh           t3, -789(s3)
                  slli         s1, t6, 31
                  slt          ra, t0, s6
                  srai         t3, a0, 22
                  sub          t3, t1, t3
                  slti         gp, ra, 2005
                  lbu          a6, -413(s3) #end riscv_load_store_rand_instr_stream_3
                  bne          a1, a7, 20f
                  add          s10, ra, sp
                  xori         a6, gp, 734
                  bltu         zero, s2, 8f
                  bne          s10, s10, 20f
                  or           t0, a3, a3
                  nop
                  nop
8:                addi         tp, ra, -1611
                  or           t1, t2, s10
                  srl          gp, tp, a7
                  slti         t5, t3, -255
                  slli         s4, s7, 16
                  nop
                  beq          s0, t5, 30f
                  addi         a2, a6, 1797
                  or           t3, a0, a0
                  andi         a2, s8, 1998
                  slti         s6, s4, -1625
                  bge          s3, t5, 24f
20:               slti         s3, a5, -1674
                  slti         zero, a4, 404
                  nop
                  blt          zero, a7, 29f
24:               and          a0, a1, s1
                  bne          sp, a1, 42f
                  slti         t6, s10, -1168
                  srai         s7, ra, 31
                  blt          s2, t5, 30f
29:               srl          s6, s9, tp
30:               slt          a2, a5, t1
                  nop
                  blt          a4, a5, 42f
                  auipc        t4, 391666
                  xori         s7, s3, -715
                  slli         tp, t2, 25
                  bge          a3, gp, 47f
                  bgeu         zero, s1, 49f
                  or           s4, a2, t2
                  srli         s0, s10, 3
                  sra          a2, a4, a6
                  sub          s5, gp, a0
42:               slli         s9, t2, 5
                  bge          t0, s7, 55f
                  bgeu         t5, a6, 61f
                  add          tp, t6, s2
                  ori          s6, t6, 1896
47:               slt          a0, a2, s1
                  bltu         s7, a0, 58f
49:               addi         s9, a5, 1008
                  xor          s5, t5, t6
                  nop
                  sra          zero, s2, t1
                  srli         a2, s7, 16
                  srai         tp, a2, 4
55:               auipc        t5, 627095
                  beq          s0, a5, 66f
                  slti         sp, a6, 1527
58:               auipc        s11, 1046956
                  auipc        a6, 260262
                  nop
61:               lui          gp, 234795
                  beq          s5, t6, 72f
                  auipc        a2, 861502
                  beq          tp, tp, 73f
                  blt          a7, t0, 77f
66:               bge          gp, a4, 70f
                  beq          s11, s5, 72f
                  sltu         t5, t6, s8
                  srai         s0, a3, 12
70:               sltu         sp, s6, a2
                  srl          t3, t3, s8
72:               blt          a1, t1, 81f
73:               beq          zero, gp, 81f
                  sltiu        s4, sp, 1623
                  sltiu        s2, s11, -451
                  bne          t0, t5, 91f
77:               blt          a4, s9, 90f
                  or           gp, t5, s11
                  sub          a0, s0, s6
                  sub          t0, t1, s2
81:               add          tp, a1, a4
                  bgeu         zero, a4, 90f
                  addi         s5, tp, -1944
                  ori          s9, t2, 1115
                  sll          t3, s5, t5
                  srli         s3, t0, 31
                  addi         s10, t6, -255
                  srai         tp, a1, 5
                  sll          t4, a7, a1
90:               bne          s0, s2, 101f
91:               sltiu        a4, t3, 1402
                  srai         a0, s0, 4
                  slti         s9, s4, -1414
                  srl          t6, s7, gp
                  la           s11, sub_3
                  or           s0, a2, a1
                  addi         s11, s11, 116
                  auipc        a2, 687945
                  lui          sp, 542130
                  addi         s3, a7, -1146
                  sra          t1, t1, s2
                  ori          s7, a7, -1312
                  srli         t1, s0, 18
                  bgeu         a1, ra, sub_1_j4 #branch to jump instr
                  srai         a3, sp, 29
sub_1_j4:         jalr         t1, s11, -116 #jump sub_1 -> sub_3
                  bgeu         s10, s7, 112f
                  add          sp, s2, t2
                  srai         t5, t1, 1
                  xori         s7, zero, 1953
                  slli         s1, a5, 13
                  srai         gp, s6, 12
101:              sltu         a1, t1, s6
                  blt          ra, t4, 103f
103:              lui          a6, 92829
                  or           s0, zero, gp
                  beq          a0, a7, 111f
                  andi         ra, s10, 1988
                  beq          s10, a5, 123f
                  auipc        t1, 785035
                  ori          t4, s2, -1907
                  slli         s9, zero, 17
111:              sltu         ra, s7, s0
112:              bltu         t2, tp, 122f
                  bgeu         a2, t6, 128f
                  xori         s7, s9, 335
                  slti         s0, t0, -1621
                  nop
                  slti         a4, t5, 859
                  add          a2, t1, gp
                  xori         s7, tp, 1968
                  bne          s8, a4, 131f
                  auipc        a3, 780773
122:              beq          t5, t0, 130f
123:              sra          a0, s11, a5
                  and          s2, s8, s4
                  nop
                  auipc        sp, 581429
                  sra          gp, gp, s7
128:              srl          a3, a2, a2
                  lui          s9, 729548
130:              bge          ra, s10, 135f
131:              xori         s9, a7, 840
                  srai         a3, a5, 31
                  slti         gp, a1, -147
                  sltiu        t5, s11, -1629
135:              nop
                  srai         a1, t6, 14
                  beq          t3, gp, 149f
                  addi         gp, s5, -1122
                  xor          s0, a1, tp
                  beq          sp, t6, 152f
                  blt          a1, s4, 147f
                  bne          t6, s4, 158f
                  lui          s5, 300730
                  or           a4, s2, t4
                  slli         s5, t4, 19
                  and          s5, gp, s6
147:              srai         s10, s4, 20
                  srai         a0, a0, 13
149:              addi         s7, t2, 800
                  and          t6, a2, zero
                  ori          t0, zero, 680
152:              slti         a3, s8, 1657
                  and          tp, t6, t3
                  lui          s7, 61695
                  sltiu        gp, s9, 1222
                  lui          s7, 213984
                  ori          s7, s6, 737
158:              andi         s2, s5, -992
                  bltu         a4, s4, 168f
                  slli         s7, ra, 5
                  andi         zero, s4, 237
                  sll          t6, s2, t0
                  auipc        sp, 485747
                  nop
                  bgeu         s6, s7, 175f
                  bne          s11, s2, 182f
                  addi         t6, s11, 274
168:              beq          a6, t0, 180f
                  and          zero, t6, s9
                  bltu         t0, t1, 176f
                  sra          s9, a0, t1
                  andi         sp, t2, -454
                  addi         t5, a7, 157
                  sub          ra, tp, s7
175:              xor          zero, tp, t5
176:              add          s4, s3, s8
                  srai         a1, s1, 18
                  or           s2, a7, tp
                  sub          a3, t4, a3
180:              or           t0, t1, sp
                  addi         a1, gp, 894
182:              slt          s9, tp, zero
                  srl          a2, s0, t2
                  sltu         s4, sp, s9
                  sltu         s10, t5, s6
                  xor          a0, gp, t5
                  sub          t3, s1, s0
                  andi         s11, s6, 852
                  xori         a2, a3, -383
                  addi         ra, t1, 208
                  slli         s7, a1, 2
                  nop
                  slt          s9, s9, s1
                  xori         t5, a0, 1883
                  bltu         zero, s2, 199f
                  nop
                  andi         t6, t1, 1315
                  sltu         t5, s2, t4
199:              or           s9, s11, a0
                  bne          s4, zero, 211f
                  srl          t3, s7, zero
                  and          s2, t5, s0
                  sra          sp, a6, s0
                  andi         a1, s4, 1770
                  bltu         t5, t4, 222f
                  blt          t3, a5, 207f
207:              andi         sp, a4, 1392
                  srai         ra, a1, 6
                  beq          s7, s6, 211f
                  xor          t6, a6, s11
211:              and          t3, sp, s0
                  nop
                  srli         ra, s3, 19
                  sll          tp, t2, s2
                  slti         s0, s1, -90
                  sltu         ra, a3, sp
                  nop
                  or           a4, t0, t6
                  bgeu         t5, s6, 239f
                  sra          t0, s3, t4
                  xori         s10, s3, -1566
222:              slti         s3, a0, -1458
                  bltu         t3, gp, 240f
                  add          t0, a7, a6
                  or           t3, t3, s0
                  ori          s4, s5, -1199
                  addi         a3, s6, 282
                  ori          s10, a4, 1726
                  sll          t0, a1, gp
                  srai         gp, t4, 16
                  sltu         a6, a5, t3
                  lui          a2, 192703
                  bge          a1, a5, 241f
                  ori          a5, t6, -1191
                  sub          s6, a7, gp
                  bgeu         a3, t6, 241f
                  srai         ra, t6, 14
                  bne          a1, t6, 247f
239:              xori         tp, sp, 469
240:              bne          s8, s5, 256f
241:              and          s11, zero, zero
                  beq          t3, t5, 252f
                  xori         gp, a3, -298
                  bltu         s1, t4, 249f
                  bne          t0, ra, 262f
                  sll          s0, s5, a2
247:              sltu         s11, s8, s8
                  bltu         s8, s6, 261f
249:              xor          ra, s6, t4
                  sltiu        s11, a3, -1481
                  and          s5, sp, s11
                  la           s3, sub_2
                  addi         s3, s3, 339
                  lui          a0, 704661
                  sltiu        s9, s9, 691
                  sll          a0, s4, a7
                  nop
                  bge          s1, a3, sub_1_j3 #branch to jump instr
                  lui          a3, 488360
                  auipc        a3, 1023861
                  sltu         s9, s6, s7
                  and          tp, s4, tp
sub_1_j3:         jalr         t1, s3, -339 #jump sub_1 -> sub_2
252:              beq          t2, s0, 262f
                  addi         t6, a0, -75
                  bne          s9, a0, 263f
                  sll          t3, gp, t3
256:              sub          s7, t1, s0
                  beq          t6, a4, 262f
                  slli         t0, t3, 22
                  nop
                  ori          s5, ra, -524
261:              sltiu        gp, a4, -912
262:              ori          s0, s8, -1779
263:              xor          t6, t2, s3
                  xori         t5, a7, -1343
                  slli         s2, s10, 8
                  addi         t5, a1, 1642
                  addi         s2, t4, -2029
                  slt          s6, t6, s2
                  sltiu        s6, s3, 1108
                  slti         ra, a5, 1488
                  and          t3, t1, t3
                  slti         tp, a7, -360
                  ori          a0, s4, -394
                  and          t0, s9, s2
                  addi         t4, a7, 1669
                  bgeu         s0, tp, 287f
                  xori         s9, s3, -1502
                  xori         s4, s1, 1041
                  lui          s9, 557474
                  bne          a5, s6, 296f
                  srai         a0, s9, 0
                  sll          s1, s8, a7
                  bltu         a1, a2, 295f
                  sltiu        s11, s11, -566
                  blt          s3, a1, 301f
                  sltiu        a1, t6, 673
287:              and          t1, s6, s11
                  addi         tp, s4, 1174
                  and          s10, s2, s9
                  nop
                  sll          s5, s9, s5
                  addi         s10, s9, -1378
                  slti         s3, s11, 1089
                  slti         s3, s0, -1465
295:              sub          a6, t6, s9
296:              auipc        s0, 841328
                  add          s7, s6, t6
                  sra          a4, t4, s3
                  sltiu        a3, sp, -670
                  blt          ra, s2, 317f
301:              auipc        ra, 160351
                  sra          a4, t6, s7
                  srli         sp, a3, 31
                  beq          s11, s9, 315f
                  lui          t6, 712898
                  bltu         s4, t3, 311f
                  or           a0, s9, a7
                  xor          s4, a3, s10
                  srl          a4, tp, t0
                  and          s9, s4, s4
311:              addi         t6, tp, -248
                  slti         a6, t6, -1853
                  sub          t6, a1, s6
                  sra          s5, t0, ra
315:              sub          s1, a4, s5
                  bgeu         t3, a3, 325f
317:              ori          a0, gp, 1285
                  slli         s0, s4, 10
                  auipc        s10, 680183
                  xor          sp, s7, t5
                  ori          s11, s7, 1913
                  blt          a1, a5, 334f
                  sltiu        t3, a5, -1190
                  slti         a6, s4, 1363
325:              addi         ra, t3, 1458
                  bge          t0, t2, 339f
                  bgeu         s2, s9, 332f
                  nop
                  srl          s0, gp, t1
                  srl          t4, s1, s3
                  add          gp, s1, tp
332:              and          zero, ra, s7
                  srli         s7, t0, 31
334:              srai         s2, a3, 6
                  ori          a0, t0, -1000
                  srai         s5, a0, 7
                  blt          ra, t5, 354f
                  xori         a5, s9, -1418
339:              bge          t3, s5, 355f
                  auipc        s3, 182234
                  xori         s3, sp, -1040
                  srai         s10, s8, 9
                  andi         s3, t1, -2018
                  xori         s6, a6, 576
                  and          ra, gp, a1
                  sub          s6, ra, sp
                  sltu         a1, a5, gp
                  slt          s0, a6, t2
                  lui          a1, 491418
                  sub          a3, sp, tp
                  slt          t0, a1, a1
                  bgeu         s1, s4, 356f
                  sltu         s11, t1, tp
354:              bltu         s11, a2, 364f
355:              bne          t0, s0, 370f
356:              add          t1, sp, a6
                  sub          sp, s9, zero
                  ori          s0, ra, -124
                  beq          t4, a7, 369f
                  and          gp, s4, t3
                  bne          t3, sp, 371f
                  bne          sp, t3, 370f
                  srai         a4, ra, 17
364:              slti         s1, a5, 477
                  sra          a2, s5, t1
                  beq          t4, s4, 383f
                  sltiu        t1, s2, -679
                  bne          s6, zero, 374f
369:              xori         s9, t0, 1935
370:              beq          s10, t4, 378f
371:              srli         tp, a1, 24
                  nop
                  slti         s4, a3, -1045
374:              sltiu        t1, t3, 1144
                  lui          t6, 897160
                  ori          t0, a2, 2015
                  sll          s4, s4, t0
378:              andi         s3, tp, -168
                  xor          s4, a0, s3
                  xor          tp, a4, gp
                  sll          sp, s0, a0
                  bne          a3, t6, 383f
383:              bge          s8, t4, 389f
                  blt          ra, a4, 386f
                  sra          ra, s1, a7
386:              srli         s9, a5, 13
                  xor          s5, a6, ra
                  or           s11, s7, t3
389:              nop
                  sltiu        a6, s6, -1684
                  bne          s4, a6, 403f
                  sra          tp, gp, s9
                  bne          zero, s7, 413f
                  bge          s3, a0, 404f
                  bne          s4, s9, 411f
                  srl          s11, tp, a5
                  slti         s7, s8, -159
                  bge          s8, s5, 414f
                  srli         t0, zero, 17
                  sra          t4, s2, s9
                  bltu         s2, sp, 412f
                  sltiu        s9, s5, 241
403:              sltiu        zero, t5, 729
404:              bltu         a5, gp, 416f
                  addi         a3, s8, 658
                  slt          s6, a7, s4
                  sll          s11, ra, s5
                  la           s10, region_1+1047 #start riscv_load_store_rand_instr_stream_2
                  lbu          a3, 9(s10)
                  lhu          s4, 3(s10)
                  ori          s4, s4, -1640
                  sb           gp, -7(s10)
                  sll          s6, t1, t6
                  lhu          ra, 11(s10)
                  lb           s0, 6(s10)
                  lb           s0, -4(s10)
                  lhu          t3, -5(s10)
                  and          a5, t5, ra
                  ori          t5, ra, 1206
                  slti         ra, t6, -1653
                  auipc        t1, 710166
                  xori         t4, a4, 5
                  ori          zero, a0, 153
                  lbu          s7, -8(s10)
                  lbu          a5, 8(s10)
                  or           s4, s11, gp
                  xori         a2, ra, 1712
                  sub          t4, s5, s11
                  auipc        t1, 248629
                  srai         a2, t0, 15
                  lb           a3, -12(s10)
                  andi         t4, a3, -195
                  sltiu        gp, a7, -1776
                  ori          s4, t0, 1353
                  lbu          gp, -4(s10)
                  srli         gp, a5, 13
                  lhu          a0, -5(s10)
                  sb           s11, 11(s10)
                  lb           zero, 8(s10) #end riscv_load_store_rand_instr_stream_2
                  beq          t5, sp, 425f
                  bltu         s8, s1, 419f
                  slti         t5, s8, 1960
411:              lui          a6, 985172
412:              bgeu         s9, a5, 432f
413:              srai         a3, zero, 10
414:              or           a6, s2, s1
                  sll          s9, s11, a6
416:              nop
                  sra          t6, a4, s6
                  and          t0, a0, t0
419:              beq          t6, s10, 427f
                  and          t4, s10, s10
                  bge          s5, a6, 431f
                  slti         s10, a7, 419
                  andi         s4, s3, 655
                  andi         s7, s8, 1230
425:              sra          s4, a0, a7
                  and          a4, s1, t4
427:              bne          a1, s6, 433f
                  nop
                  auipc        s6, 229883
                  or           gp, s2, s6
431:              nop
432:              add          a0, t3, a0
433:              slli         a5, a4, 24
                  slli         sp, s1, 29
                  xor          ra, t0, gp
                  xor          tp, zero, s9
                  sltiu        sp, s8, -264
                  or           ra, t6, s0
                  beq          t6, s0, 441f
                  srai         a0, a7, 1
441:              srai         s0, s4, 18
                  addi         s2, s2, 768
                  srai         s4, gp, 30
                  slli         s6, a2, 24
                  srai         t6, s8, 1
                  slli         t6, s9, 29
                  nop
                  bltu         a6, t0, 457f
                  srli         zero, a4, 15
                  beq          s6, a0, 458f
                  slt          a2, a2, t1
                  and          t4, s10, t5
                  beq          a5, t0, 459f
                  nop
                  slt          a6, s7, t4
                  slli         a2, gp, 20
457:              beq          t4, s8, 469f
458:              bge          t3, a6, 459f
459:              or           s0, t3, t4
                  bltu         s1, s3, 465f
                  xor          a1, a5, s3
                  and          a1, t4, a0
                  sub          a1, t0, s3
                  sltiu        a6, t0, -138
465:              slti         a0, s3, -1548
                  xori         t4, s4, 1490
                  blt          t2, s1, 471f
                  srl          t4, s7, s10
469:              addi         s10, a5, 1331
                  slti         sp, s11, 1041
471:              xori         tp, s4, 682
                  xor          ra, t6, a1
                  sltu         t1, s10, a7
                  xor          s10, s4, a2
                  beq          t5, t6, 488f
                  lui          tp, 434057
                  srai         a4, s10, 7
                  slti         a0, s10, -737
                  ori          s2, s11, 1519
                  ori          s4, s8, 243
                  addi         gp, t4, 1439
                  nop
                  beq          a5, t0, 500f
                  and          sp, a7, t1
                  xori         zero, t3, 1912
                  srli         t3, s9, 19
                  add          s5, s8, s1
488:              slti         s4, a3, 1822
                  nop
                  slt          t1, sp, s9
                  sltu         s0, s8, a4
                  slt          s6, s10, s11
                  bne          a1, t1, 498f
                  lui          a4, 871606
                  sra          a1, s5, zero
                  nop
                  bne          s11, a0, 507f
498:              beq          t0, t2, 513f
                  xori         s11, t0, -1003
500:              lui          s2, 1000301
                  andi         ra, a6, -1300
                  slli         s3, gp, 6
                  addi         a6, a2, 758
                  slti         t5, a2, -1248
                  nop
                  xori         t6, t0, 1057
507:              sll          s1, s1, t1
                  blt          a0, t0, 520f
                  ori          a6, t2, -1075
                  or           t6, s7, s5
                  and          s11, s8, a4
                  bgeu         ra, t0, 521f
513:              slti         a1, s9, 191
                  or           a6, a5, t6
                  auipc        s0, 192059
                  slli         gp, s5, 30
                  bne          a7, gp, 527f
                  slt          s10, s9, s9
                  add          s10, a6, s0
520:              add          s9, a4, tp
521:              blt          zero, a2, 532f
                  bgeu         a7, a2, 538f
                  bge          s9, s5, 540f
                  ori          s1, tp, -1922
                  sltiu        gp, a6, -1516
                  auipc        t6, 773549
527:              bge          t0, t3, 532f
                  beq          a7, s7, 536f
                  blt          s5, a6, 545f
                  sub          s0, a5, s3
                  addi         a0, a0, 1109
532:              srai         s9, a0, 27
                  or           s5, tp, t6
                  sra          s2, t4, s2
                  auipc        t6, 64390
536:              bne          t3, t3, 542f
                  srli         a5, a0, 11
538:              srl          a6, a1, a3
                  add          a6, s2, t5
540:              bltu         a6, s5, 550f
                  xori         s6, a6, -53
542:              addi         s0, a6, 486
                  add          tp, a2, t6
                  and          t6, a2, s10
545:              slli         s1, t3, 17
                  srai         gp, a6, 17
                  sra          t5, a2, s9
                  sra          t4, a4, s6
                  sltu         a4, t2, a3
550:              beq          a1, a4, 567f
                  bgeu         s11, s6, 556f
                  sll          a5, sp, t5
                  xor          a6, a5, gp
                  bge          t1, t4, 563f
                  slti         tp, t0, 1773
556:              slt          t4, t2, t4
                  bne          a3, a6, 558f
558:              bge          a0, a4, 562f
                  nop
                  sll          s7, s1, a3
                  lui          zero, 455898
562:              slli         t0, s4, 22
563:              xori         t6, tp, 1833
                  slti         s10, ra, -1355
                  nop
                  bne          zero, s7, 577f
567:              ori          s11, t5, 796
                  srai         tp, gp, 4
                  and          t6, t4, s0
                  beq          t0, t4, 580f
                  bge          ra, s8, 586f
                  bltu         s1, s4, 584f
                  or           a0, a3, zero
                  bne          t1, s9, 586f
                  bge          s3, s4, 577f
                  srli         t1, a1, 27
577:              bge          s0, a3, 585f
                  and          s1, s4, s7
                  nop
580:              bgeu         a6, t2, 586f
                  srli         s6, gp, 31
                  bltu         tp, t0, 586f
                  sub          s7, zero, t4
584:              xori         gp, t6, 227
585:              bltu         tp, a1, 586f
586:              addi         s9, a1, 456
                  sra          t0, s0, a0
                  lw           t1, 4(a7)
                  sltiu        s2, t2, 1473
                  addi         a7, a7, 40
                  sll          t5, t5, t1
                  add          sp, a0, t3
                  xori         t0, gp, -1797
                  sltu         t0, a5, a3
788:              addi x22, x6, 1
788:              jalr x22, x22, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x24, x17, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x14, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x14, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x14, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x14, x20, ecall_handler
                  li x20, 0x1
                  beq x14, x20, instr_fault_handler
                  li x20, 0x5
                  beq x14, x20, load_fault_handler
                  li x20, 0x7
                  beq x14, x20, store_fault_handler
                  li x20, 0xc
                  beq x14, x20, pt_fault_handler
                  li x20, 0xd
                  beq x14, x20, pt_fault_handler
                  li x20, 0xf
                  beq x14, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x17, x24, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
