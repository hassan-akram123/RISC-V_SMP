.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0xf008282d
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0xf1a3db1f
                  li x4, 0x1
                  li x6, 0x0
                  li x7, 0xfdd1811f
                  li x8, 0x8
                  li x9, 0x0
                  li x10, 0xf0cd2f61
                  li x12, 0x787fd89e
                  li x13, 0xd
                  li x14, 0x6ed2ef10
                  li x15, 0xfd1967e7
                  li x16, 0xf14993c0
                  li x17, 0xf0acfdb7
                  li x18, 0xf6e0009f
                  li x19, 0x61ef2ef7
                  li x20, 0x7401376a
                  li x21, 0xfa5962af
                  li x22, 0x5
                  li x23, 0xc
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x57b3fd76
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xc2bc1552
                  li x31, 0xf4cfde27
                  la x5, user_stack_end
main:             la           sp, region_0+1402 #start riscv_load_store_rand_instr_stream_0
                  lb           a2, -957(sp)
                  nop
                  add          s6, t3, a0
                  lb           s11, -235(sp)
                  sub          ra, a6, a1
                  lw           tp, -1110(sp)
                  lb           s1, -383(sp)
                  lb           a4, -873(sp)
                  lh           t1, -290(sp)
                  and          s2, a7, s7
                  lbu          ra, 503(sp)
                  andi         s2, gp, 1775
                  slti         t2, a5, -549
                  or           s9, t0, s8
                  sb           s3, 535(sp)
                  lb           ra, -928(sp)
                  xori         zero, a6, -779
                  slt          ra, gp, t6
                  sb           a6, -45(sp)
                  lh           a0, -2(sp)
                  lb           s10, 33(sp)
                  slli         tp, s4, 18
                  sh           t2, 474(sp)
                  sltu         tp, a7, t4
                  sb           s11, 479(sp)
                  nop
                  srli         s3, tp, 27
                  lb           s5, -637(sp)
                  lh           ra, -988(sp)
                  andi         tp, s10, 715
                  sll          s11, s1, t3
                  or           t2, s3, s6
                  sra          t2, ra, t5
                  lb           s9, 525(sp)
                  or           s11, t3, s3
                  xor          a6, s11, sp
                  sltiu        zero, t2, -15
                  sb           t0, 105(sp)
                  sh           s7, -56(sp)
                  slti         zero, a0, -1194
                  sh           a5, -450(sp)
                  andi         s7, a0, 347
                  slli         s4, s3, 3
                  lui          a4, 554394
                  sh           gp, -948(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+1668 #start riscv_load_store_rand_instr_stream_2
                  sb           s10, -5(s10)
                  auipc        gp, 294825
                  sub          s3, a7, t5
                  andi         s9, ra, -1361
                  lbu          s0, -14(s10)
                  or           s3, s2, s0
                  addi         s5, t0, -816
                  lhu          a2, 16(s10)
                  sw           a6, -4(s10)
                  sb           tp, -3(s10)
                  lbu          t2, 15(s10)
                  lbu          s2, -15(s10)
                  srli         s7, a4, 26
                  addi         s2, t5, 1366
                  sltu         t4, s10, s4
                  sll          gp, tp, a5
                  andi         t5, a5, 608
                  nop
                  xori         t4, a0, -1244
                  srl          s4, zero, s8
                  slt          t1, t4, t5
                  lbu          a4, -7(s10)
                  sh           s11, 4(s10)
                  nop
                  ori          t3, a7, 554
                  addi         a6, sp, -1761
                  lui          a6, 493562
                  lhu          t3, 16(s10) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1448 #start riscv_load_store_rand_instr_stream_4
                  lh           a6, 14(sp)
                  xor          s11, a5, a6
                  lb           t3, -5(sp)
                  xor          t2, s4, s5
                  lb           a2, 11(sp)
                  slti         zero, a5, 665
                  lbu          t2, -12(sp)
                  lb           s0, -3(sp)
                  sh           s8, -4(sp)
                  sb           ra, 9(sp)
                  nop
                  auipc        ra, 269238
                  lbu          s2, -10(sp)
                  sltiu        s6, t2, 1182
                  lb           s5, 0(sp)
                  slt          s2, s0, a6
                  sb           s3, -10(sp)
                  auipc        a7, 291851
                  srli         s2, t5, 6
                  nop
                  nop
                  lbu          s4, 1(sp)
                  lbu          t5, -14(sp)
                  xori         a6, t5, -1826
                  slti         a0, t5, -1187
                  andi         a7, a4, -1127
                  lbu          a0, 6(sp)
                  sra          s0, a0, s7
                  srli         tp, t0, 1
                  and          tp, s4, s11
                  lbu          s4, -4(sp)
                  sb           t4, 9(sp)
                  sltiu        t3, t5, -595
                  lhu          s10, 4(sp)
                  sh           tp, -14(sp)
                  slt          t3, t2, t3
                  sh           s5, 8(sp)
                  lb           t2, 0(sp)
                  add          t2, t6, t2
                  auipc        s6, 722683
                  andi         a0, a5, -1811
                  or           s2, t2, s9
                  slt          s11, s4, a3
                  sw           s8, -16(sp)
                  xori         s11, a0, 895
                  lw           a7, 12(sp)
                  sra          s10, sp, ra
                  lbu          a2, -5(sp)
                  lb           t3, 3(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1148 #start riscv_load_store_rand_instr_stream_1
                  nop
                  srl          s9, s2, t2
                  auipc        a6, 186202
                  lb           s10, 13(sp)
                  lbu          s4, 7(sp)
                  sb           ra, 12(sp)
                  sltu         s11, s2, tp
                  addi         a5, tp, 461
                  sll          a7, s0, t4
                  auipc        a5, 622365
                  srai         t3, s9, 18
                  srl          a2, s10, s11
                  xor          s1, gp, t1
                  sb           a5, 13(sp)
                  sub          s0, a5, tp
                  xori         s8, s11, -498
                  auipc        a2, 634510
                  sb           t6, -9(sp)
                  xor          s10, s7, t1
                  slt          t5, t5, s4
                  lb           ra, -9(sp)
                  addi         a7, t3, 420
                  xor          a3, s10, a0
                  srai         a4, s11, 31
                  andi         s10, ra, 1978
                  sra          s9, s10, a5
                  lb           gp, -6(sp)
                  lbu          t2, -10(sp)
                  and          s5, s2, s1
                  add          s2, s5, a0
                  lb           a5, -11(sp)
                  srl          s4, gp, s5
                  srl          a0, t2, t5
                  srl          s11, tp, a4
                  sra          t5, s0, s8
                  add          t2, sp, t2
                  srai         t1, s4, 21
                  lb           s3, -6(sp)
                  sb           sp, 3(sp)
                  sw           a7, 8(sp)
                  addi         s11, s3, 947
                  or           s4, t6, s5
                  sb           a0, -11(sp)
                  sb           a7, -14(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          t5, 281039
                  slli         a7, sp, 12
                  slti         s10, t4, -1237
                  sll          s5, t1, s7
                  srai         t3, s2, 20
                  la           s4, region_1+394 #start riscv_load_store_rand_instr_stream_3
                  andi         a6, a4, -556
                  lh           s5, 96(s4)
                  and          a5, gp, t2
                  sra          s1, t1, t0
                  lb           a3, 235(s4)
                  xori         s0, s5, -1411
                  sll          sp, s7, s11
                  lb           t2, 243(s4)
                  nop
                  sll          s0, a6, t1
                  auipc        tp, 612495
                  lbu          s6, 28(s4)
                  sb           t2, -256(s4)
                  lb           gp, 107(s4)
                  lb           t4, 63(s4)
                  add          sp, a2, t2
                  lhu          a2, -228(s4)
                  slt          t1, zero, t2
                  lh           s7, -144(s4)
                  sw           a6, -118(s4)
                  srli         s2, t3, 26
                  lbu          t1, -64(s4)
                  add          zero, s1, ra
                  add          a5, s0, s0
                  add          sp, s8, s1
                  and          t4, s8, s4
                  lb           s11, 177(s4)
                  slti         ra, a6, 1594
                  add          sp, t0, t6
                  andi         s3, ra, -650
                  sltu         s2, tp, s9
                  sb           sp, -120(s4)
                  sh           s6, -20(s4)
                  lb           s2, 5(s4) #end riscv_load_store_rand_instr_stream_3
                  nop
                  blt          a7, sp, 8f
                  bltu         s8, ra, 18f
8:                andi         s6, a3, 36
                  lui          a4, 244009
                  sra          t5, s1, s5
                  lui          t3, 268922
                  sll          a0, s10, a3
                  sltiu        s11, a6, 1764
                  bltu         ra, s9, 31f
                  srli         t1, a3, 16
                  sra          sp, a4, s3
                  xori         t1, s8, 17
18:               beq          s3, s5, 31f
                  sra          tp, s11, s1
                  blt          t1, a2, 24f
                  sltu         a6, s2, gp
                  or           tp, t2, t0
                  srl          s7, gp, s11
24:               lui          s7, 302018
                  add          t1, gp, tp
                  addi         t5, s10, -1057
                  slt          gp, gp, a1
                  bltu         t3, s6, 37f
                  srai         s3, s3, 31
                  add          s8, a5, zero
31:               sll          a5, t3, t5
                  bne          ra, a2, 44f
                  auipc        s8, 159538
                  lui          s7, 957370
                  sltu         s5, s10, ra
                  bne          s6, s4, 49f
37:               xor          t5, t2, s8
                  bge          tp, s4, 39f
39:               lui          s11, 477335
                  blt          t5, s4, 43f
                  slli         s9, s5, 9
                  or           a0, s3, s10
43:               srl          s4, t3, s4
44:               xori         t4, s3, -1493
                  nop
                  ori          s6, a5, 1727
                  and          zero, s0, s10
                  srai         s1, t2, 0
49:               beq          s11, s3, 63f
                  slti         s2, s6, 280
                  and          gp, tp, zero
                  ori          sp, s4, 1945
                  lui          a2, 215399
                  nop
                  sltiu        a7, s2, -1398
                  sll          a0, s3, tp
                  addi         s0, s10, 1170
                  sub          t2, a2, s0
                  lui          t2, 632160
                  and          ra, a2, t1
                  auipc        sp, 198307
                  xori         t1, a3, 698
63:               sltiu        a2, tp, 857
                  and          a6, s7, s5
                  andi         gp, s10, -1824
                  nop
                  srl          s5, s2, t2
                  blt          s7, s4, 79f
                  sub          t1, a4, t2
                  blt          a7, s4, 86f
                  srli         s0, a3, 21
                  srl          gp, t2, s0
                  sltu         s5, gp, s5
                  srai         a4, gp, 24
                  slt          s5, s11, s0
                  addi         s5, s4, 1794
                  bge          ra, s7, 80f
                  beq          s9, t2, 81f
79:               slli         tp, s0, 18
80:               srai         s9, s5, 11
81:               srl          a5, t6, a6
                  andi         s3, zero, -1449
                  xor          s8, a5, s4
                  sltiu        s11, t2, 85
                  xor          s7, s7, s3
86:               srli         s1, a0, 14
                  srli         gp, t3, 5
                  sltiu        a2, s4, -1317
                  srl          s5, t0, t3
                  addi         a0, s11, 1364
                  srl          ra, t2, t6
                  srai         s2, s3, 30
                  addi         t5, ra, 755
                  beq          s8, s1, 108f
                  blt          s1, s0, 114f
                  or           s11, s8, t2
                  sll          s4, s1, gp
                  auipc        sp, 612518
                  sub          a7, s1, t0
                  and          s7, gp, tp
                  srl          s6, a2, a3
                  sll          s2, s0, s0
                  nop
                  srai         gp, s10, 17
                  beq          s8, t0, 123f
                  sub          a5, a6, s1
                  bne          a4, s2, 127f
108:              slti         s6, s11, -424
                  bgeu         t4, a4, 127f
                  or           s6, t2, a5
                  srli         t4, tp, 4
                  xori         t3, gp, 1427
                  beq          t3, s4, 129f
114:              sltu         s4, a7, s7
                  sll          s11, t3, s2
                  and          a5, s7, a4
                  sltiu        ra, s0, 488
                  slli         s0, a4, 7
                  sra          sp, s10, s11
                  bgeu         s10, t1, 136f
                  auipc        a3, 241959
                  auipc        a3, 788805
123:              slt          t2, t5, s11
                  srli         s5, s11, 21
                  slli         s11, sp, 30
                  ori          t1, a7, 728
127:              srai         s1, ra, 3
                  sub          s4, s1, gp
129:              slt          s4, s5, s3
                  add          s4, s3, a7
                  slt          a5, t4, a6
                  srl          s2, sp, s10
                  or           a6, a7, gp
                  slti         t3, t2, -1890
                  andi         a3, s0, -857
136:              sltu         t1, t0, s7
                  ori          a7, s7, -1288
                  and          ra, a7, ra
                  beq          t5, gp, 146f
                  sll          s2, t6, s9
                  blt          a1, s11, 159f
                  bne          s0, t0, 144f
                  auipc        a6, 941173
144:              bltu         a1, gp, 155f
                  bge          t6, s8, 153f
146:              bge          gp, a5, 163f
                  sra          ra, t6, s2
                  and          s11, t6, s7
                  slt          s5, a2, s1
                  srl          a5, a6, a7
                  andi         s2, a7, -59
                  slt          s6, s1, sp
153:              slt          t5, s4, s9
                  auipc        s1, 590343
155:              bne          a5, a5, 172f
                  srli         a7, a2, 8
                  bgeu         a7, s9, 159f
                  sll          a7, a6, s8
159:              ori          s8, a0, 33
                  xor          a6, t1, a2
                  bgeu         t1, a4, 169f
                  and          gp, s8, a0
163:              srli         s6, t6, 15
                  slt          s10, s8, zero
                  sltiu        t5, t1, 390
                  ori          s2, s1, 1996
                  srli         sp, s1, 30
                  la           t4, sub_2
                  slt          s11, a3, s7
                  sltu         s5, s5, a0
                  slli         s9, a7, 14
                  slt          gp, s7, tp
                  addi         t4, t4, 620
                  slt          s2, s3, gp
                  and          s5, gp, a3
main_j2:          jalr         t1, t4, -619 #jump main -> sub_2
                  sll          s11, zero, gp
                  beq          s0, s2, 184f
169:              srai         a3, s9, 13
                  sltiu        s4, s6, -754
                  srai         s8, t5, 21
172:              sub          s0, sp, s5
                  slli         gp, t1, 6
                  add          a2, t5, t3
                  lui          s10, 815429
                  sra          tp, s10, t6
                  beq          a6, zero, 184f
                  sltiu        s4, s8, 871
                  add          tp, t4, s6
                  blt          s1, s1, 197f
                  nop
                  nop
                  srai         sp, a7, 3
184:              bltu         t2, a1, 197f
                  and          a4, a7, a4
                  slti         a2, s7, -85
                  srli         a5, a0, 23
                  andi         t2, t2, -22
                  lui          s9, 256441
                  sltu         s6, t2, a4
                  slli         s11, s8, 9
                  slt          a4, t6, a3
                  or           t5, s4, s3
                  bltu         t2, a5, 211f
                  sll          t4, a6, zero
                  slt          zero, a5, gp
197:              ori          a3, t2, 597
                  bgeu         a7, sp, 200f
                  or           s0, t3, ra
200:              sub          s11, a1, zero
                  blt          sp, s0, 218f
                  nop
                  slli         t1, s3, 12
                  bgeu         a5, a7, 220f
                  srl          ra, t0, a5
                  ori          s3, a2, 273
                  sltu         a2, t4, s6
                  ori          a2, a0, -1487
                  ori          a5, t5, 209
                  beq          s4, a2, 229f
211:              srai         a7, s10, 15
                  auipc        zero, 2964
                  srai         s4, sp, 29
                  sub          t4, tp, a5
                  xori         s2, s3, -1399
                  auipc        s10, 172183
                  sub          s11, a6, s10
218:              sll          a3, t6, t4
                  bgeu         t6, t5, 222f
220:              slt          zero, a0, t5
                  slt          a3, t0, t5
222:              beq          gp, a1, 236f
                  bgeu         t3, s2, 236f
                  ori          a7, a4, -532
                  add          s8, ra, s0
                  ori          sp, t6, -1507
                  bgeu         zero, t2, 238f
                  blt          a3, t3, 231f
229:              sltu         a6, t1, t3
                  sub          s7, t5, a5
231:              xor          a5, s11, t2
                  bgeu         s10, t0, 234f
                  and          s4, a3, a4
234:              sra          s8, s0, a3
                  lui          zero, 280894
236:              sltiu        t1, a1, -1390
                  or           s0, a0, s9
238:              slli         a0, s10, 22
                  or           s6, zero, a2
                  beq          tp, a7, 258f
                  sra          s9, s1, a3
                  ori          a6, t6, -1158
                  sltiu        s0, t1, -2021
                  srl          t4, s1, s11
                  addi         s11, a7, 1501
                  blt          s0, t2, 264f
                  bne          t0, a2, 256f
                  srli         s2, a5, 25
                  xori         sp, s2, -555
                  auipc        t5, 798798
                  lui          zero, 25588
                  bge          s10, s5, 272f
                  xor          s2, t0, s3
                  bne          tp, t3, 265f
                  srai         s2, s8, 25
256:              slt          zero, t0, s6
                  xor          s7, gp, t4
258:              addi         a5, t0, 667
                  addi         a3, ra, -298
                  slt          s4, s5, s5
                  sll          t2, a6, s1
                  sra          t2, t2, s8
                  beq          s1, t1, 275f
264:              andi         s11, t4, 522
265:              addi         s6, s3, 1305
                  bne          ra, t1, 282f
                  slti         sp, s3, 776
                  beq          a1, t1, 271f
                  bltu         s6, t3, 270f
270:              srai         t2, a4, 26
271:              sra          a4, a7, s2
272:              bge          s4, ra, 276f
                  blt          a6, sp, 287f
                  addi         t3, a5, 171
275:              nop
276:              or           s7, s3, s1
                  nop
                  xori         t2, s9, -104
                  srli         a3, a1, 3
                  add          s10, s2, s3
                  srl          a4, s11, s3
282:              srl          s6, s0, gp
                  add          ra, a3, s6
                  add          a0, s8, t0
                  andi         a6, t0, -1547
                  bltu         tp, t5, 304f
287:              add          s7, t1, s7
                  slti         t4, t0, 1167
                  or           a4, gp, s9
                  slti         s6, a0, -1726
                  bgeu         s6, s4, 293f
                  sra          t3, a5, s3
293:              or           t3, a4, t0
                  lui          t2, 218166
                  addi         s1, t4, -452
                  bne          a0, a7, 307f
                  bge          t2, s7, 304f
                  srli         a2, s0, 13
                  nop
                  sltiu        a5, a4, -938
                  slt          t4, sp, a3
                  sltiu        s11, sp, -1131
                  andi         s7, t3, 1374
304:              sltiu        a0, s7, 1015
                  andi         s7, a3, -1014
                  bne          s6, a4, 320f
307:              auipc        t2, 813288
                  and          s1, a7, s3
                  add          ra, s1, s5
                  addi         tp, t4, -1152
                  sub          t5, a4, sp
                  andi         t1, s10, 379
                  slli         sp, a1, 31
                  sub          s10, sp, sp
                  sra          t5, s0, a6
                  sltu         ra, s0, t5
                  bne          t2, gp, 328f
                  andi         s0, t1, -99
                  sra          a2, s5, a7
320:              slti         s7, a6, 1145
                  slli         s5, sp, 23
                  slti         s2, s5, 1307
                  srai         s4, t0, 21
                  auipc        a0, 821488
                  sltu         t3, t0, a2
                  slli         a4, s11, 10
                  add          t3, ra, t2
328:              sll          a2, t6, s8
                  auipc        t5, 72376
                  addi         a7, a3, -1530
                  blt          s5, tp, 342f
                  beq          s3, tp, 334f
                  srl          a5, s5, t1
334:              beq          s6, s7, 336f
                  bge          s10, t0, 338f
336:              beq          a6, s5, 345f
                  srai         t3, s0, 22
338:              auipc        s11, 579416
                  bne          s1, zero, 352f
                  auipc        s3, 979765
                  xori         s4, tp, 829
342:              sll          s5, a4, a6
                  slt          a7, s1, s10
                  bgeu         t0, s9, 361f
345:              addi         t5, a5, 1758
                  blt          a6, t4, 362f
                  and          t2, a6, s11
                  bne          t5, s8, 350f
                  or           s8, a6, s0
350:              slti         a6, t1, -1338
                  sub          s6, s11, s0
352:              sra          zero, s3, t3
                  sltiu        s9, a0, 1331
                  lui          t3, 403698
                  srli         s1, t6, 24
                  srli         s7, t3, 3
                  nop
                  sub          a3, sp, a1
                  add          t2, tp, gp
                  beq          s6, s6, 376f
361:              xori         s4, gp, -1758
362:              bne          s1, a0, 365f
                  bltu         t6, t4, 376f
                  sltiu        t3, s2, -1764
                  andi         t5, s8, 1467
                  and          s9, a5, a3
                  and          s7, s3, s8
                  la           t1, sub_1
                  srli         s0, s5, 11
                  slli         ra, s4, 0
                  addi         t1, t1, -403
                  andi         s4, a1, 697
main_j1:          jalr         t1, t1, 404 #jump main -> sub_1
                  sltiu        a3, s3, -1395
365:              xori         a2, a3, 675
                  add          a3, s8, t3
                  lui          s0, 656298
                  sll          a6, sp, s9
                  sll          t5, s4, s4
                  auipc        t1, 952370
                  add          t3, s7, s9
                  auipc        t3, 491576
                  auipc        a6, 740161
                  srli         s2, a2, 22
                  and          s5, t4, gp
376:              andi         a3, a4, -307
                  or           tp, s4, sp
                  bltu         a2, s2, 379f
379:              slt          s7, a7, s1
                  slt          zero, s8, t5
                  bne          ra, s8, 399f
                  bltu         a0, s0, 401f
                  sltiu        s5, s10, -90
                  andi         s0, sp, 174
                  sra          t3, sp, t3
                  sra          s5, t2, s6
                  sra          s1, a6, t1
                  auipc        t3, 830441
                  srli         t3, tp, 1
                  sub          s7, gp, t4
                  slti         ra, a1, -338
                  slt          s4, t3, t2
                  sub          ra, s2, s3
                  xori         s0, s1, -609
                  bltu         s9, t3, 413f
                  bltu         gp, t6, 413f
                  blt          t3, a0, 401f
                  bltu         gp, a4, 410f
399:              sub          t3, gp, t3
                  bltu         s0, t2, 403f
401:              ori          t3, gp, 1690
                  add          a7, t2, gp
403:              sltu         a0, a6, t4
                  nop
                  srl          t4, t3, a7
                  addi         a2, a0, 385
                  slt          s3, ra, s3
                  slt          ra, s6, s7
                  slt          s10, s11, t3
410:              or           s11, s1, t6
                  bge          t2, a5, 422f
                  sltiu        s6, a6, 24
413:              sll          s5, t4, t1
                  srl          a3, a7, t2
                  slti         t5, s5, 1814
                  slt          a5, s8, t1
                  or           t5, s1, ra
                  slt          a6, t5, t5
                  or           s8, gp, s6
                  srli         s4, sp, 30
                  beq          a1, a4, 438f
422:              sltu         zero, t2, t5
                  slt          s11, t5, a7
                  xor          a2, s11, s1
                  srai         s6, t0, 29
                  or           s11, s2, t0
                  blt          t5, a7, 443f
                  or           a5, s11, a3
                  add          t5, s4, s5
                  auipc        s3, 985086
                  bltu         s2, s1, 445f
                  sltu         zero, t5, t3
                  srl          s10, a3, s6
                  bgeu         a6, sp, 442f
                  lui          a7, 444129
                  srli         s2, s0, 20
                  sll          s3, a6, a3
438:              sltiu        s10, t6, 426
                  slti         t2, a4, -1509
                  srl          s10, s3, t6
                  sltu         s2, gp, t3
442:              srli         s11, t6, 14
443:              sra          sp, a7, a5
                  slti         a5, s5, 972
445:              auipc        s6, 697993
                  bgeu         s7, t6, 466f
                  bge          a7, s5, 465f
                  lui          zero, 941099
                  and          ra, s1, a1
                  lui          a7, 290555
                  or           zero, a3, s8
                  srli         s3, s3, 3
                  srli         t2, t2, 4
                  bne          ra, s9, 457f
                  and          s11, ra, gp
                  auipc        a5, 562219
457:              srli         t3, sp, 24
                  sltiu        gp, t1, -1282
                  sltu         t1, t4, a6
                  bltu         ra, a5, 474f
                  add          gp, s3, s0
                  srl          ra, a2, a5
                  or           zero, a7, s7
                  xor          t1, s4, s7
465:              srli         s11, t0, 16
466:              xor          a6, s8, t2
                  bne          s3, s0, 478f
                  or           s8, s5, gp
                  sltiu        t3, t4, -185
                  slti         ra, zero, -1743
                  slt          s8, a0, s0
                  bltu         t0, t6, 485f
                  blt          s8, s9, 476f
474:              sub          a7, a6, s2
                  beq          a3, s5, 491f
476:              addi         t2, t6, -1421
                  srai         s11, s11, 1
478:              bne          tp, zero, 496f
                  blt          s11, sp, 495f
                  lui          s4, 287862
                  sra          s8, s2, s6
                  sub          a7, s0, s7
                  bge          s1, t1, 500f
                  andi         s2, tp, 167
485:              sltiu        a2, s4, 639
                  blt          t1, zero, 504f
                  slti         zero, s10, -1633
                  bge          s8, a6, 506f
                  srai         ra, s1, 11
                  blt          s0, a0, 501f
491:              and          t1, t2, t1
                  beq          a6, gp, 495f
                  sll          s5, ra, s7
                  slti         s10, a3, 955
495:              addi         s8, t0, 1597
496:              beq          s1, a7, 507f
                  slli         s11, sp, 4
                  srl          s10, a0, s7
                  srl          t5, a0, t3
500:              bne          gp, t2, 516f
501:              andi         sp, t1, 83
                  srli         zero, a5, 16
                  sub          s2, a0, a4
504:              ori          t2, s2, 1214
                  beq          a2, t4, 522f
506:              bge          t4, s10, 523f
507:              bgeu         ra, a0, 514f
                  auipc        a0, 484262
                  bgeu         t4, a7, 529f
                  andi         a7, s11, -974
                  sub          gp, a4, a0
                  ori          zero, s4, 1857
                  ori          s0, a4, 676
514:              slti         s9, a3, 1569
                  slt          ra, a0, t1
516:              beq          s4, t6, 518f
                  beq          a4, t0, 526f
518:              bge          a3, a1, 531f
                  bltu         t0, sp, 527f
                  bgeu         t0, a5, 534f
                  slli         a0, ra, 25
522:              bge          s3, s3, 534f
523:              andi         gp, a5, 185
                  sub          s6, s7, s0
                  nop
526:              addi         t1, a6, 1036
527:              bltu         t2, s9, 531f
                  xori         a7, a6, -1238
529:              sltiu        tp, sp, -794
                  sub          a7, t3, gp
531:              lui          a4, 302146
                  xori         a6, t2, -221
                  sra          t3, t3, t4
534:              bne          s1, s5, 536f
                  slti         a7, ra, 316
536:              auipc        gp, 151579
                  sltu         sp, t3, a0
                  srai         a6, zero, 5
                  sub          s6, a2, s0
                  add          s3, a6, a6
                  sltiu        a3, s5, 882
                  slli         a6, s3, 10
                  beq          s7, tp, 562f
                  sra          a0, s5, s8
                  or           s3, t5, t5
                  bne          a7, tp, 548f
                  slli         s1, s2, 8
548:              lui          s7, 6117
                  xori         t1, s5, -131
                  srl          a7, t4, t3
                  bgeu         gp, s10, 552f
552:              slti         s0, s2, 529
                  sll          sp, t4, t3
                  bne          a0, gp, 567f
                  srai         s10, t4, 13
                  slli         s1, t6, 24
                  slli         t2, s11, 21
                  sub          s9, s0, s4
                  slti         a6, zero, 922
                  bgeu         a6, a0, 561f
561:              blt          s8, s2, 572f
562:              beq          t1, s8, 566f
                  nop
                  sltu         a4, a4, a0
                  xor          s3, t0, tp
                  la           s11, sub_3
                  andi         a4, t1, -864
                  addi         s11, s11, -710
                  srai         a4, a7, 2
                  srl          s4, s8, tp
                  slli         s2, gp, 8
                  and          t4, a1, s9
main_j3:          jalr         t1, s11, 711 #jump main -> sub_3
                  srl          s5, s9, a1
                  and          s0, t6, a5
                  sltiu        a3, a0, -673
566:              bltu         t4, s4, 582f
567:              srl          s0, s2, ra
                  sltu         a3, t6, s10
                  bne          a2, s2, 588f
                  bge          t3, a1, 581f
                  auipc        t4, 857401
572:              addi         s2, a2, -811
                  ori          gp, gp, 395
                  bltu         a5, t2, 586f
                  slt          s7, s3, a0
                  slti         zero, a7, -665
                  nop
                  bltu         s9, a2, 594f
                  ori          a5, tp, -487
                  sltiu        s10, sp, 1354
581:              bgeu         s9, s9, 599f
582:              sll          a5, s6, s9
                  bne          tp, s7, 590f
                  bne          a2, s5, 586f
                  sll          zero, a6, s10
586:              slti         s1, sp, 1097
                  slli         s10, a2, 24
588:              blt          ra, a1, 606f
                  ori          gp, a5, -447
590:              xori         a4, t2, 344
                  xori         a5, ra, -1897
                  bne          ra, sp, 595f
                  bge          a7, a5, 604f
594:              bgeu         s10, s11, 608f
595:              slti         a7, t4, 1301
                  xori         t2, a3, -978
                  andi         ra, s6, 1743
                  sra          s3, s2, a5
599:              auipc        t2, 89289
                  beq          s1, s0, 602f
                  xor          s0, tp, s8
602:              or           t3, s6, s2
                  sltiu        t3, s5, -465
604:              srli         a4, gp, 4
                  add          t5, ra, t4
606:              nop
                  srl          s11, t6, t3
608:              sltu         t5, a6, tp
                  and          s11, s8, tp
                  xor          s0, gp, s9
                  slli         s8, a6, 27
                  add          t1, a7, tp
                  slt          a3, sp, t2
                  bge          a3, a7, 617f
                  xori         a4, sp, -2006
                  bne          s4, a3, 625f
617:              blt          a7, t1, 633f
                  and          t1, s11, t2
                  srai         s0, a5, 23
                  slli         a3, t1, 3
                  bge          zero, s4, 638f
                  srai         s3, sp, 31
                  nop
                  sra          a4, a6, s4
625:              xor          s10, s11, s3
                  and          a7, a2, s0
                  add          a4, t2, sp
                  auipc        ra, 624140
                  slli         a7, s7, 29
                  bgeu         t6, zero, 633f
                  xor          t3, s10, a0
                  auipc        t2, 495292
633:              sltu         ra, t4, s9
                  slli         t4, a6, 12
                  lui          s8, 21140
                  xori         s10, t1, 1569
                  beq          s7, s2, 655f
638:              andi         a5, gp, -1226
                  ori          s5, s2, -458
                  srl          s6, t2, t0
                  sll          a4, s3, t5
                  bltu         a4, t2, 655f
                  xori         s0, a5, -1418
                  xori         t3, s11, -1304
                  bne          s0, s2, 660f
                  lui          s9, 993376
                  slti         gp, s0, -971
                  lui          a3, 336711
                  addi         s4, s0, 1732
                  or           s6, s11, a4
                  sra          tp, gp, a6
                  nop
                  srl          a5, s10, a5
                  sub          t2, t4, s7
655:              auipc        tp, 29238
                  slt          s11, s3, t0
                  lui          gp, 118955
                  slt          a7, s11, s8
                  or           s7, t3, zero
660:              sltu         a6, t3, t5
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           sll          s6, s10, t4
                  addi         t0, t0, -40
                  sw           t1, 4(t0)
                  srai         s8, t5, 30
                  sub          s8, ra, t3
                  addi         a5, t1, -1584
                  nop
                  sub          a0, s11, t5
                  and          s1, s7, t2
                  sltiu        t3, a4, 290
                  sra          s0, s9, t6
                  srl          t4, a6, s11
                  la           s2, region_1+42 #start riscv_load_store_rand_instr_stream_2
                  auipc        t5, 140665
                  sb           s3, 32(s2)
                  lb           a5, 4(s2)
                  add          s5, s10, t3
                  or           s3, a1, a5
                  lh           tp, 18(s2)
                  srl          a7, t6, gp
                  sra          tp, s10, s8
                  addi         s4, s11, -1940
                  slti         t4, s7, -1718
                  lhu          s9, 22(s2)
                  sb           gp, 7(s2)
                  sub          s9, t1, s5
                  sra          ra, s4, s9
                  add          s11, s8, a3
                  lb           t3, 31(s2)
                  lbu          t5, 4(s2)
                  add          a6, s3, t1
                  lui          s5, 49983
                  sltu         s8, a4, a2
                  lh           t1, 24(s2)
                  or           ra, s4, s4
                  srai         s11, tp, 19
                  slti         s3, s3, 1293
                  srl          sp, s7, s8
                  sll          tp, tp, a6
                  lb           t5, 4(s2)
                  andi         t2, a3, -523
                  lb           s4, 4(s2)
                  lb           tp, -22(s2)
                  and          s8, gp, s11
                  sb           s10, -6(s2)
                  addi         sp, a5, -584
                  srai         s10, t2, 11
                  lw           s8, 10(s2)
                  ori          a5, s2, 1232
                  lh           a6, 36(s2)
                  srl          gp, t4, t1
                  sll          s8, s11, s6
                  lh           tp, 2(s2)
                  lbu          s8, -21(s2)
                  lbu          s7, 30(s2)
                  lbu          s5, -41(s2)
                  xor          s6, t0, a3
                  srli         a4, s6, 6
                  sb           s4, 5(s2)
                  sb           zero, -41(s2) #end riscv_load_store_rand_instr_stream_2
                  la           a6, region_0+825 #start riscv_load_store_rand_instr_stream_1
                  xor          s3, s8, a3
                  lb           s0, -193(a6)
                  sw           s4, -81(a6)
                  lbu          s8, -108(a6)
                  lb           tp, -196(a6)
                  andi         gp, s6, 206
                  auipc        a0, 687686
                  xor          t2, s2, s4
                  lbu          s6, 129(a6)
                  lb           a7, -6(a6)
                  lbu          t3, 5(a6)
                  lbu          s6, -22(a6)
                  srai         a4, tp, 4
                  ori          s10, s8, 1076
                  nop
                  addi         sp, a1, 1241
                  lui          s5, 358357
                  lb           zero, 34(a6)
                  slli         zero, t1, 3
                  or           s11, a6, ra
                  add          s1, zero, a7
                  nop
                  lb           s0, 144(a6)
                  sub          s5, s0, s1
                  slti         s8, t2, -321
                  lbu          t5, 128(a6)
                  lbu          s2, -158(a6)
                  lbu          tp, 151(a6)
                  andi         s5, s5, -1846
                  lb           a2, 237(a6)
                  add          s3, s0, s9
                  andi         a7, t5, 315
                  and          a0, s10, s0
                  xor          t3, ra, a1
                  addi         s9, t0, -1293
                  srai         s3, tp, 13
                  sltu         a0, s2, s11
                  lbu          a4, -191(a6)
                  lui          s6, 944131
                  srai         gp, t4, 8
                  sra          s4, a0, t2
                  sw           s7, 255(a6)
                  srli         a3, s3, 18
                  slti         s11, ra, 142
                  nop
                  sub          s0, a4, a7
                  lbu          s0, -154(a6) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1976 #start riscv_load_store_rand_instr_stream_4
                  lbu          zero, -17(sp)
                  sb           a1, -49(sp)
                  lbu          s11, 10(sp)
                  sub          s6, a5, t3
                  sub          s7, a5, a5
                  sw           a0, -12(sp)
                  or           a2, s5, zero
                  srl          a4, s1, a0
                  srl          s10, a7, s5
                  lhu          a4, -54(sp)
                  auipc        a3, 193109
                  lui          tp, 1014929
                  lbu          zero, -59(sp)
                  lb           s10, -14(sp)
                  lhu          t4, -2(sp)
                  slli         tp, t6, 12
                  sb           a3, 11(sp)
                  lbu          a2, -39(sp)
                  lb           s11, -64(sp)
                  lbu          t3, 3(sp)
                  sw           t4, -60(sp)
                  lbu          a3, -31(sp)
                  lbu          a4, -57(sp)
                  lb           a2, -3(sp)
                  sw           t0, 4(sp)
                  slt          t5, s2, s7
                  add          t3, s6, a3
                  add          s5, ra, s10
                  and          a6, s11, t1
                  slti         zero, a4, 1660
                  lhu          t1, -64(sp)
                  sh           t1, -20(sp)
                  srai         tp, t4, 16
                  and          a3, s8, s10
                  lw           s10, -20(sp)
                  or           a6, t0, a4
                  lui          t3, 354810
                  lbu          s6, -19(sp)
                  sll          t1, a4, sp
                  sub          s11, s7, a2
                  lb           a0, -21(sp)
                  slli         a7, s0, 6
                  lbu          zero, -9(sp)
                  ori          s9, ra, -1047
                  srl          t2, s1, s9
                  slti         s0, t6, 1403
                  andi         s11, a2, -1093
                  lb           s10, 19(sp)
                  lb           a6, -20(sp)
                  sb           s11, -35(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+543 #start riscv_load_store_rand_instr_stream_6
                  xor          s2, s1, ra
                  lb           s11, 362(sp)
                  srai         s5, s3, 0
                  sltu         tp, t6, t0
                  andi         s11, tp, 533
                  srli         a4, s6, 22
                  sw           zero, 305(sp)
                  andi         s0, tp, 1895
                  sltu         tp, gp, t5
                  lbu          s1, 251(sp)
                  lh           zero, 1017(sp)
                  nop
                  sb           s10, 552(sp)
                  xori         a2, t0, 391
                  sll          s3, t3, t2
                  sw           a6, 301(sp)
                  lb           s10, -422(sp)
                  lbu          s4, 347(sp)
                  lb           s2, 1094(sp)
                  lb           t4, 1442(sp)
                  lbu          a0, 414(sp)
                  addi         t5, t0, 339
                  sb           t2, 436(sp)
                  lbu          s10, 1340(sp)
                  lbu          s4, 56(sp)
                  sh           s3, 1435(sp)
                  lb           s9, 824(sp)
                  lui          s3, 241012
                  lbu          tp, 1098(sp)
                  xori         a5, s11, -1380
                  sh           s6, 1163(sp)
                  sll          a2, a6, t6
                  lb           t4, -461(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+917 #start riscv_load_store_rand_instr_stream_3
                  srl          s8, gp, s4
                  sll          a2, s3, t6
                  add          a5, s4, t6
                  sltiu        s10, a5, -614
                  sb           t5, 7(sp)
                  add          a0, a2, s7
                  lb           t1, -7(sp)
                  lbu          a3, 16(sp)
                  sb           s0, -3(sp)
                  lbu          a3, 12(sp)
                  or           t1, tp, s11
                  lb           t4, -11(sp)
                  sub          t5, a6, t0
                  lh           s5, 11(sp)
                  lb           a6, 16(sp)
                  lb           t5, 16(sp)
                  lb           s8, -14(sp)
                  sltu         tp, s1, s8
                  srai         t1, zero, 13
                  sltu         s0, a7, a7
                  srl          t2, t3, a5
                  xori         a6, s4, -477
                  sltiu        a6, a0, -258
                  lb           s8, -9(sp)
                  auipc        s7, 1019850
                  sh           a5, -15(sp)
                  slli         a2, s7, 27
                  sb           s0, -15(sp)
                  lui          s7, 252664
                  and          s10, a6, tp
                  add          ra, a1, s6
                  and          s11, s10, a7
                  srl          t1, s8, zero
                  slli         s10, s9, 11
                  srl          t3, t0, t3
                  nop
                  sll          tp, t0, t4
                  lb           a7, 8(sp)
                  sb           s10, 12(sp)
                  slt          zero, s1, a5
                  srai         s6, a5, 20
                  lh           s0, 7(sp)
                  slli         t3, a3, 25
                  or           s5, a3, s1
                  sb           s11, -6(sp)
                  sb           a2, 8(sp) #end riscv_load_store_rand_instr_stream_3
                  andi         s7, s9, 632
                  add          a6, gp, a4
                  lui          ra, 50931
                  andi         a3, a3, -874
                  slti         tp, t1, 1844
                  andi         ra, s11, -1950
                  slti         s9, ra, -1561
                  slti         t4, s7, -178
                  xori         s2, t3, 1778
                  slt          t4, a3, a1
                  xor          a0, a3, a3
                  add          a3, a1, s9
                  bge          t0, t1, 21f
                  sltu         s1, s11, s5
                  xor          sp, a0, a5
                  sra          s11, s10, t3
                  sra          s1, s8, a3
                  slli         a6, s11, 31
                  or           s9, t5, a7
                  sltu         a5, s7, ra
                  blt          t2, a7, 22f
21:               add          t3, zero, a4
22:               slti         ra, s5, -549
                  ori          a4, a6, -538
                  xori         sp, gp, 1342
                  srli         a0, t1, 23
                  beq          s1, s6, 39f
                  or           s2, ra, s0
                  sltiu        sp, a4, 1768
                  and          s11, s0, t0
                  slt          s10, s9, t4
                  bltu         s2, s5, 33f
                  sra          s3, t1, t3
33:               addi         s7, s7, 424
                  and          a4, s11, t0
                  bge          s5, s3, 40f
                  and          s6, s3, t5
                  addi         s7, zero, 72
                  srli         s10, t2, 13
39:               sub          s3, a4, s5
40:               sll          s11, t6, a2
                  sltiu        a2, a4, 80
                  add          gp, a1, s5
                  addi         a0, a6, -1819
                  ori          t2, t1, -485
                  slli         t3, a2, 29
                  andi         s2, s3, -932
                  sra          a6, a7, zero
                  auipc        t4, 231072
                  sra          s1, a5, tp
                  sltiu        t2, a0, -309
                  sll          s0, s8, a2
                  bne          t0, s0, 60f
                  bltu         s5, ra, 59f
                  andi         s5, a5, 812
                  ori          a4, s5, 1570
                  add          a7, t5, t4
                  auipc        t4, 777717
                  nop
59:               xor          s0, a4, a3
60:               andi         s8, t2, 1753
                  blt          s10, a1, 72f
                  sltiu        s3, s5, 1031
                  slt          t3, s7, s3
                  sltu         tp, s4, t4
                  ori          tp, t3, -1460
                  sll          a7, a7, s8
                  slt          s1, a7, a5
                  sltiu        s6, s5, -594
                  slli         a4, a4, 18
                  slt          sp, t3, s1
                  nop
72:               slti         s0, a0, -362
                  or           s0, s7, zero
                  bne          tp, s8, 80f
                  bgeu         gp, a4, 87f
                  add          t4, s2, tp
                  beq          s5, s8, 86f
                  addi         s3, s5, 1072
                  addi         s11, s3, 1069
80:               sub          ra, ra, zero
                  xor          a5, t6, gp
                  andi         s1, t3, 1530
                  and          t5, s0, zero
                  sub          s2, a5, s11
                  bne          s1, s5, 103f
86:               addi         t1, t2, -1628
87:               srai         a3, a5, 5
                  bgeu         s11, t4, 105f
                  add          a5, a1, t5
                  sra          t4, a4, s4
                  xor          t2, a5, s4
                  andi         a5, t0, 1574
                  slt          sp, s2, s3
                  bge          sp, s6, 96f
                  blt          s0, t4, 100f
96:               srai         a3, s2, 29
                  blt          s0, s1, 109f
                  slt          t4, t6, t6
                  sltiu        sp, s1, -80
100:              sub          gp, a0, a5
                  beq          a5, s1, 105f
                  sra          s1, s11, t4
103:              srli         s1, a3, 29
                  beq          s0, s10, 112f
105:              blt          t0, t4, 108f
                  add          t2, t4, s10
                  srl          ra, a6, s5
108:              nop
109:              bgeu         a1, s11, 128f
                  addi         s10, t4, 1710
                  add          gp, tp, s8
112:              andi         a5, t1, -28
                  xori         a7, a1, -1196
                  sra          a0, zero, s9
                  beq          ra, t5, 117f
                  xor          ra, t2, t4
117:              bltu         s6, s6, 137f
                  xori         zero, s2, 1823
                  andi         a7, s5, 1323
                  slt          t5, t0, s7
                  xori         ra, t1, 866
                  lui          s8, 710150
                  bge          t6, s7, 131f
                  slt          s8, ra, a2
                  srl          s7, a1, s7
                  bne          s7, t4, 142f
                  or           a3, t0, s7
128:              blt          s11, s4, 139f
                  bltu         tp, a6, 139f
                  lui          a5, 31293
131:              xori         s5, tp, 1443
                  sub          a7, a0, t3
                  auipc        tp, 665770
                  ori          t1, t3, -1642
                  lui          s4, 734066
                  bge          a5, s9, 143f
137:              srai         t3, a5, 21
                  bltu         s11, a3, 150f
139:              srai         a5, t4, 18
                  lui          zero, 234278
                  add          t3, a5, t5
142:              beq          t2, t5, 146f
143:              bltu         s6, a5, 152f
                  bne          a0, a6, 146f
                  bge          a2, sp, 163f
146:              sub          zero, a5, a5
                  srli         a3, a0, 30
                  srli         s9, zero, 5
                  sltu         s2, s6, a7
150:              bne          s2, t3, 161f
                  sltiu        s7, s2, -93
152:              beq          a0, s2, 163f
                  nop
                  xor          s1, a0, a0
                  sll          a4, a2, s0
                  nop
                  auipc        s9, 991762
                  sub          s9, zero, t3
                  addi         zero, t4, 1861
                  and          s6, zero, a0
161:              bge          s8, s1, 163f
                  xor          s3, t3, t1
163:              sra          a2, s11, s9
                  sll          s9, zero, a4
                  beq          a5, a3, 171f
                  srai         s1, t1, 17
                  lui          s2, 730942
                  andi         tp, s3, 27
                  sltiu        a3, a2, 1126
                  bne          s10, a2, 182f
171:              bne          s6, a4, 190f
                  auipc        t3, 734689
                  add          t2, a2, t0
                  beq          s10, t0, 182f
                  sra          sp, t2, ra
                  srai         t4, a0, 10
                  nop
                  slti         t1, s2, 219
                  slt          s9, a0, s0
                  andi         a2, t4, -79
                  or           s8, s4, t5
182:              xor          s2, s10, a1
                  sltu         t5, s4, t6
                  add          a0, zero, s4
                  add          ra, s7, s11
                  addi         s7, s11, -1326
                  slli         ra, s9, 0
                  nop
                  sra          t2, s2, a7
190:              bltu         a6, t5, 200f
                  lui          s4, 247421
                  or           a3, t6, t6
                  xori         t5, t6, 1625
                  slli         s3, t2, 3
                  add          s6, t6, a7
                  srli         t4, s3, 6
                  srl          s4, sp, s8
                  sra          a7, s4, t3
                  andi         a3, s0, -1654
200:              xor          s10, t5, s5
                  bltu         s8, s10, 206f
                  beq          gp, s9, 214f
                  srl          zero, s5, s7
                  srli         t5, t0, 23
                  blt          t3, tp, 213f
206:              auipc        s1, 889234
                  srli         s5, a7, 8
                  andi         s8, s7, -23
                  sra          gp, a2, s5
                  sra          a2, t5, s3
                  beq          s1, a5, 227f
                  bge          s3, s4, 224f
213:              auipc        a6, 83234
214:              or           s4, t0, t3
                  or           t2, s11, s6
                  sll          a2, t5, s11
                  sltiu        s11, s0, -528
                  addi         zero, s0, -1126
                  sub          s7, s9, s10
                  sll          t3, a3, s6
                  addi         s2, t6, -985
                  sll          a4, a1, s5
                  bne          s9, a5, 230f
224:              auipc        tp, 542082
                  or           s10, a6, a2
                  srl          t3, s4, s1
227:              nop
                  ori          a3, t1, -1655
                  add          t2, a5, s3
230:              ori          s11, s4, -832
                  bgeu         s10, gp, 251f
                  slt          sp, s2, s9
                  addi         t4, ra, -1353
                  add          s2, s9, t6
                  xor          tp, a0, s0
                  beq          t1, a7, 245f
                  add          s4, a6, zero
                  sltu         t2, a1, a6
                  slt          ra, a2, a4
                  srli         t3, tp, 10
                  bge          ra, s11, 245f
                  sra          a5, s1, s10
                  bgeu         a7, a3, 249f
                  sll          a6, t0, a6
245:              bltu         a3, s11, 262f
                  bge          tp, zero, 255f
                  slti         s9, a4, -361
                  addi         zero, a0, 1384
249:              srl          s2, a4, a6
                  blt          s11, s2, 259f
251:              bltu         t5, s0, 259f
                  xor          t2, s1, s4
                  ori          s1, a3, 1656
                  srai         s7, a2, 17
255:              sub          sp, t3, s3
                  sra          t1, s7, a2
                  ori          t5, s7, -1701
                  add          s9, s9, t6
259:              srli         gp, s11, 24
                  slti         a3, t5, 401
                  bltu         s9, s5, 265f
262:              nop
                  ori          s1, s0, 687
                  add          s8, s4, s1
265:              and          t4, t5, a4
                  bne          t0, t5, 268f
                  sltu         s11, s9, a5
268:              slt          a5, t2, t4
                  xor          gp, a0, t4
                  blt          a2, a6, 283f
                  xori         t3, a7, 1278
                  auipc        sp, 184807
                  ori          a2, zero, -1999
                  sub          ra, ra, a3
                  xor          gp, a3, tp
                  bltu         s8, a0, 278f
                  xor          ra, s3, s6
278:              or           a6, a0, t6
                  slti         s4, ra, 703
                  srli         s10, sp, 24
                  srl          s2, a2, zero
                  auipc        gp, 316105
283:              ori          s2, t5, -212
                  nop
                  srl          a2, zero, a3
                  bne          a0, a0, 291f
                  bge          zero, s11, 290f
                  nop
                  ori          s5, a0, -1688
290:              sll          s4, sp, t3
291:              bltu         t6, s2, 295f
                  xor          s3, t3, s3
                  srl          s7, s11, s9
                  slti         s5, t3, 857
295:              ori          s5, zero, -1254
                  sra          t5, a7, a1
                  sll          s3, a0, s7
                  bne          s0, tp, 306f
                  add          sp, t2, a5
                  sltu         s0, a7, a3
                  sra          s11, s9, t4
                  slti         t5, a2, -910
                  bltu         a2, t2, 307f
                  beq          t4, s11, 316f
                  srai         ra, sp, 14
306:              nop
307:              and          a3, s1, s11
                  andi         s2, t1, 1632
                  slti         s4, a1, -907
                  xori         a4, s0, 604
                  srl          s7, a1, t1
                  xor          s9, s7, t2
                  slli         t5, t6, 8
                  xor          a7, s11, s8
                  srli         a3, a7, 30
316:              sltu         zero, a6, a7
                  addi         ra, t5, -1655
                  sub          a0, a4, s3
                  sra          s9, t4, a5
                  sub          a7, a4, t0
                  sra          t4, s10, s0
                  bne          s8, tp, 327f
                  xori         sp, a2, -1741
                  addi         s6, t6, 422
                  bge          sp, t0, 345f
                  srl          s10, s1, ra
327:              srl          s2, a0, t5
                  srli         s1, s8, 28
                  xor          a5, ra, tp
                  srl          a6, t4, s8
                  bgeu         s0, a0, 337f
                  srli         s8, s2, 13
                  sltu         t1, a4, s11
                  blt          tp, t1, 353f
                  blt          sp, a1, 344f
                  slli         s7, a1, 0
337:              bge          a5, t4, 342f
                  beq          t0, zero, 344f
                  andi         a4, tp, 454
                  ori          t4, s2, 667
                  xor          s11, a6, s9
342:              srli         s10, zero, 24
                  blt          s4, t2, 345f
344:              lui          s3, 283089
345:              and          s4, zero, s4
                  sll          s10, s6, s11
                  srli         s10, t4, 12
                  auipc        s6, 467319
                  slli         a0, t0, 1
                  add          s6, a6, a2
                  beq          a3, gp, 364f
                  sra          s3, a4, a3
353:              bne          t0, a2, 364f
                  sra          a6, s7, s7
                  bge          sp, tp, 373f
                  blt          s9, s7, 366f
                  beq          t0, s4, 366f
                  andi         t4, s1, 1895
                  addi         a5, ra, 1621
                  slli         a0, s10, 27
                  srli         a7, ra, 23
                  sra          s10, t1, a0
                  srli         t5, s7, 6
364:              srai         s11, t4, 27
                  sltu         sp, a5, zero
366:              and          ra, s4, t5
                  slti         s0, a5, 1434
                  andi         sp, t1, -1578
                  sltu         tp, s3, s1
                  nop
                  sub          a0, s2, s3
                  sra          t4, sp, s0
373:              bgeu         s3, s4, 375f
                  auipc        sp, 747320
375:              blt          t1, t4, 377f
                  xori         t3, a3, -748
377:              lui          gp, 735456
                  andi         s9, ra, 1349
                  and          s0, s3, t0
                  sltu         s3, a5, t6
                  sub          s1, a6, a2
                  srl          s4, a0, t6
                  addi         a0, ra, 235
                  or           t1, a5, t3
                  blt          zero, t4, 393f
                  sub          a7, a5, a5
                  sll          s9, t4, s6
                  and          t3, a5, t3
                  blt          a0, a3, 392f
                  sltiu        t5, s5, 978
                  ori          a0, t0, -1654
392:              srl          a2, s7, ra
393:              srl          a0, t0, s8
                  beq          a7, s1, 405f
                  xori         a3, t5, -1202
                  srl          t3, sp, a4
                  sra          zero, a2, t5
                  bne          s1, t6, 410f
                  xori         tp, s8, -302
                  beq          s9, zero, 417f
                  blt          s6, s6, 408f
                  sub          s5, t4, a3
                  xori         t2, s11, -1312
                  sub          s1, s1, s2
405:              bltu         s3, a7, 421f
                  srai         s3, t6, 25
                  and          s1, t6, s2
408:              slti         t3, sp, 856
                  auipc        zero, 280432
410:              slli         s10, a4, 13
                  andi         a6, s6, 397
                  xor          s2, t1, a7
                  xor          s8, a7, s6
                  addi         a4, t6, -540
                  auipc        zero, 358679
                  bltu         t1, sp, 424f
417:              xor          s11, a6, a6
                  sltu         a0, s4, a5
                  lui          a6, 291482
                  beq          t1, a2, 422f
421:              auipc        a5, 524627
422:              slti         s0, s1, -1682
                  add          s4, ra, s2
424:              bge          t1, a0, 436f
                  sltu         a6, a1, s1
                  nop
                  beq          s6, tp, 436f
                  sltiu        s0, a3, -534
                  srl          s0, s6, gp
                  xor          s3, a3, s1
                  bgeu         s2, s11, 441f
                  sltu         t2, t1, tp
                  bge          s0, s3, 442f
                  ori          a6, t5, 1715
                  lui          zero, 397943
436:              lui          s5, 343376
                  blt          t6, gp, 441f
                  beq          s2, ra, 446f
                  bge          s6, a1, 456f
                  bgeu         a7, sp, 446f
441:              slli         t1, t4, 3
442:              addi         a0, s5, 1365
                  nop
                  sltu         s6, a0, t6
                  lui          tp, 1015315
446:              slti         a0, tp, -1024
                  auipc        s7, 330137
                  or           s9, a0, a7
                  or           s5, s11, sp
                  nop
                  addi         a5, s2, -1324
                  lui          a5, 417637
                  xor          t4, t5, t6
                  or           t2, t6, t6
                  addi         zero, sp, 1580
456:              or           s8, zero, a6
                  slti         t4, s5, 1721
                  bltu         s3, sp, 470f
                  auipc        t5, 553709
                  slti         tp, gp, 1466
                  addi         s4, a2, 1198
                  beq          t4, s8, 474f
                  srai         zero, t0, 22
                  ori          zero, s3, -678
                  srli         s1, a7, 28
                  add          s10, s7, a4
                  add          ra, s5, s7
                  slt          t4, s5, s0
                  ori          t5, s9, -2038
470:              sra          s4, t6, a4
                  xori         s6, t3, -65
                  auipc        a3, 686856
                  sll          a6, t5, t1
474:              add          s0, s9, s3
                  bne          a7, t3, 494f
                  bgeu         t2, s5, 494f
                  sll          a5, s6, sp
                  beq          s10, a3, 484f
                  bltu         tp, t4, 487f
                  sll          s6, s4, t3
                  andi         a7, s4, -1820
                  blt          s4, ra, 484f
                  xori         s5, a1, -1168
484:              bltu         zero, tp, 500f
                  beq          s2, gp, 488f
                  sra          s7, t3, a5
487:              sll          ra, s9, s2
488:              sra          a2, s0, a1
                  srli         t4, sp, 2
                  lui          a3, 566109
                  sltu         zero, s6, s1
                  srli         a7, s7, 17
                  srai         a3, t2, 10
494:              beq          a1, s7, 498f
                  sra          a0, a3, t3
                  xor          a0, a1, s10
                  auipc        a6, 723766
498:              sltiu        a5, t3, -1663
                  bgeu         a1, t0, 504f
500:              srli         s10, a4, 16
                  bne          t2, a2, 503f
                  sub          a6, ra, gp
503:              sltu         s11, s8, t0
504:              srli         sp, s8, 5
                  sra          a7, tp, t6
                  bge          t0, t3, 508f
                  andi         zero, zero, 1069
508:              lui          sp, 264584
                  bltu         t5, s3, 529f
                  sll          s8, a1, s3
                  ori          t1, s7, 1119
                  ori          a2, s7, -1343
                  slt          s10, s0, s2
                  bltu         s2, t0, 523f
                  andi         s5, gp, -1160
                  ori          s10, ra, 1043
                  srli         s10, s11, 2
                  srl          a4, a1, t5
                  blt          s11, a6, 524f
                  slli         s11, ra, 30
                  sltiu        a3, s5, -1506
                  bne          a0, s6, 529f
523:              ori          s1, s6, -228
524:              ori          t1, a7, 559
                  slt          t2, s4, s8
                  sltu         s10, a2, a5
                  beq          s8, a4, 529f
                  blt          a2, a0, 536f
529:              xor          tp, a0, t0
                  lui          s1, 649981
                  bgeu         sp, s9, 543f
                  and          a7, s10, a6
                  blt          a1, t0, 544f
                  sll          s10, s11, s7
                  beq          sp, t1, 548f
536:              sll          t4, s0, s11
                  andi         s9, t1, -291
                  bne          s5, s9, 547f
                  or           t2, t0, a5
                  sll          s0, s5, t4
                  add          s2, a2, a6
                  lui          a5, 268473
543:              lui          sp, 661842
544:              sra          ra, s1, a4
                  bgeu         gp, gp, 556f
                  slti         s2, a2, 1979
547:              sll          s8, s2, a4
548:              sltu         t1, a6, s11
                  and          a6, s4, a6
                  sll          a2, a7, t5
                  auipc        s2, 833097
                  nop
                  srl          ra, s10, a0
                  srai         t5, t0, 21
                  bge          t5, t0, 566f
556:              srl          a4, t2, t6
                  sltu         s6, a0, s8
                  addi         t3, s11, -386
                  nop
                  xori         s0, a6, -499
                  bne          tp, a2, 567f
                  or           ra, s1, s3
                  srli         s11, t5, 23
                  srl          s5, t0, a3
                  beq          sp, t4, 582f
566:              sra          a7, a5, s2
567:              sub          a0, s1, a6
                  andi         s2, s4, 494
                  ori          s9, a7, 1891
                  andi         s0, a6, 1732
                  srl          t3, s5, s6
                  sra          s6, s6, s9
                  bltu         t0, a4, 581f
                  xor          t3, a6, s2
                  or           tp, s1, t6
                  blt          a7, s10, 580f
                  nop
                  blt          s1, ra, 586f
                  sub          tp, t2, zero
580:              sll          s8, a2, s8
581:              bne          t4, sp, 583f
582:              sra          t2, a2, s2
583:              sra          sp, a0, a3
                  or           sp, s7, tp
                  sltu         s5, t3, s0
586:              xor          a4, zero, t5
                  bne          a5, s4, 598f
                  sra          t4, s11, s9
                  bgeu         a3, s8, 605f
                  srl          ra, a4, a3
                  sltu         a5, a6, a5
                  and          s11, s1, s10
                  xor          s0, t6, sp
                  bgeu         a0, a0, 604f
                  add          s1, s4, s11
                  srl          sp, sp, s10
                  sltiu        s0, s2, -1902
598:              ori          s5, a4, 1813
                  bltu         a5, a0, 608f
                  bge          s4, s5, 609f
                  lui          a0, 892632
                  sra          a6, s7, s9
                  xori         t3, s9, -1358
604:              srli         s0, t2, 27
605:              sra          t3, a2, s11
                  addi         s2, s0, -614
                  beq          s10, s1, 611f
608:              srl          s10, a3, a0
609:              lui          s1, 952380
                  sltiu        t5, sp, 561
611:              bltu         tp, ra, 614f
                  auipc        t4, 798667
                  srli         s4, s3, 30
614:              auipc        a5, 293080
                  bge          s6, a2, 617f
                  nop
617:              auipc        a6, 350613
                  xori         s8, a7, -1330
                  xor          s3, s4, s8
                  and          t5, ra, a2
                  slli         s5, ra, 7
                  sll          s9, s9, s4
                  blt          a1, s3, 631f
                  slt          t1, a5, tp
                  bge          s10, s8, 627f
                  nop
627:              lui          a5, 397280
                  sll          t2, s4, s8
                  addi         s4, a7, 1751
                  ori          a7, s11, 1541
631:              sll          t1, sp, t1
                  bge          s9, t3, 644f
                  lui          a3, 675334
                  bge          s11, t3, 646f
                  sltiu        sp, s0, 302
                  srai         a3, a6, 1
                  bltu         a5, s2, 643f
                  slt          tp, t4, t3
                  slt          s5, sp, s1
                  sra          s4, s2, s8
                  add          tp, s3, t2
                  or           t5, s8, ra
643:              sra          s3, a2, s2
644:              sll          s9, t2, s8
                  and          t3, t6, t0
646:              lui          t5, 175955
                  srl          s9, s5, s9
                  bne          t2, t2, 667f
                  addi         a0, a2, -177
                  and          sp, a5, s5
                  lui          s3, 117346
                  bge          s4, t3, 654f
                  sltiu        a5, a0, 1305
654:              beq          s9, s3, 663f
                  andi         s3, a1, 190
                  beq          s3, s9, 663f
                  auipc        s7, 37916
                  slli         a4, s7, 1
                  srai         s10, t4, 3
                  xori         tp, s9, -1135
                  srai         s0, a3, 24
                  lui          s7, 349104
663:              xori         a2, a6, -541
                  xori         a7, gp, 1380
                  beq          t3, zero, 670f
                  sltu         t1, t1, s2
667:              sltiu        s9, s7, 1962
                  auipc        sp, 28219
                  srli         s7, a1, 25
670:              bne          sp, t6, 690f
                  bne          s3, tp, 683f
                  bgeu         s6, a7, 690f
                  blt          s11, a2, 678f
                  auipc        zero, 782597
                  beq          s2, a1, 688f
                  srai         tp, ra, 13
                  sltiu        t2, a4, 470
678:              srai         a7, s9, 17
                  la           s1, region_0+1858 #start riscv_load_store_rand_instr_stream_5
                  nop
                  srai         s0, a7, 14
                  and          zero, s4, s9
                  sll          t4, ra, s9
                  sb           zero, 25(s1)
                  addi         a2, t4, 545
                  add          tp, tp, s11
                  lbu          t2, 34(s1)
                  sltiu        s8, s9, 406
                  or           a7, s10, a4
                  xori         t4, ra, -1557
                  sub          a7, a4, t0
                  lbu          sp, -58(s1)
                  and          t5, a7, s9
                  sltiu        s2, t3, -967
                  lb           s8, 24(s1)
                  slt          s6, a6, s6
                  lbu          t5, 50(s1)
                  sll          s11, a1, t4
                  lhu          s2, 106(s1)
                  srai         a0, s3, 24
                  srl          a2, t6, s4
                  sb           t6, 35(s1)
                  add          a3, t6, a2
                  nop
                  or           a0, t2, tp
                  nop
                  srai         gp, t0, 19
                  lbu          zero, -21(s1)
                  xori         a2, zero, 1533
                  lb           tp, 109(s1)
                  sub          t5, a7, t2
                  addi         zero, t1, -1812
                  sh           a0, -214(s1)
                  srai         a0, t4, 13
                  sh           s4, 88(s1)
                  srai         ra, s10, 8
                  lb           a5, 25(s1)
                  lb           s11, -220(s1)
                  slt          t2, a5, a2
                  lbu          t5, 67(s1)
                  lb           s4, 35(s1) #end riscv_load_store_rand_instr_stream_5
                  xori         a2, a0, -1840
                  andi         t1, s8, 888
                  bgeu         s4, s9, 689f
                  sltiu        t3, t4, -797
683:              add          a0, a2, t2
                  sub          s11, t6, a5
                  slli         s11, s8, 19
                  bge          s4, zero, 698f
                  sll          t2, s7, tp
688:              andi         s7, s10, 411
689:              sub          s11, a5, s10
690:              sltiu        s2, ra, 242
                  and          ra, a7, a7
                  bne          s11, a6, 709f
                  sub          a3, s1, s4
                  auipc        a4, 190416
                  slli         s9, s4, 22
                  beq          t0, a0, 702f
                  nop
698:              ori          a6, t2, -1076
                  bge          s0, t3, 706f
                  sll          zero, t3, a7
                  srai         a2, t5, 29
702:              ori          t4, t1, -926
                  beq          s9, s3, 709f
                  srai         a6, t2, 17
                  andi         a7, t4, 329
706:              srai         s2, s1, 3
                  addi         s3, t4, 1053
                  andi         a5, t5, -1478
709:              lui          s3, 894306
                  sra          gp, t5, s0
                  addi         sp, t2, -706
                  sltiu        a7, s6, -1863
                  or           s7, s0, s9
                  auipc        s7, 285195
                  and          s6, s4, s6
                  bgeu         t1, t0, 736f
                  nop
                  srli         a6, s11, 24
                  xori         a7, s0, -1334
                  sra          s11, a4, s3
                  bltu         gp, s6, 725f
                  andi         a6, s9, -360
                  sll          s6, tp, s7
                  bge          a2, t0, 729f
725:              bne          ra, gp, 730f
                  bge          s10, a1, 734f
                  andi         a3, t6, -623
                  srli         tp, t5, 1
729:              sra          a7, sp, t4
730:              beq          t6, s11, 749f
                  xor          ra, t5, t4
                  lui          s5, 456109
                  xor          s0, s9, a1
734:              and          s3, s11, a3
                  sub          t2, a6, a3
736:              sltu         s2, s9, zero
                  slti         s5, a6, 1607
                  auipc        s7, 319120
                  xori         s8, ra, 1630
                  addi         zero, a3, -1528
                  and          s10, s9, s0
                  bge          tp, s11, 745f
                  bgeu         t1, s11, 745f
                  sltu         s5, ra, a4
745:              auipc        t2, 577464
                  and          tp, t5, a2
                  xori         s5, s1, 165
                  ori          a4, s3, -1345
749:              xor          s4, t3, ra
                  xor          gp, s11, tp
                  bne          a0, ra, 755f
                  or           t4, a0, a3
                  slt          s5, s2, ra
                  sll          tp, sp, s0
755:              addi         a4, s5, 1336
                  ori          s9, a2, -1897
                  sra          sp, s1, t3
                  sll          t5, t6, ra
                  lui          ra, 1020799
                  sltu         s6, tp, s11
                  or           a2, s7, a3
                  andi         sp, t6, 1017
                  add          s3, t0, s0
                  srli         s9, a1, 5
                  slli         s10, sp, 9
                  srl          a6, a2, s9
                  bgeu         t2, zero, 776f
                  sltiu        s1, zero, 417
                  or           s10, t1, t6
                  xori         s7, s6, 991
                  sub          s0, s1, s7
                  andi         t3, gp, 1345
                  srli         t1, a5, 31
                  sub          s10, a2, t0
                  srli         s2, ra, 0
776:              slli         s7, a0, 23
                  sll          sp, a0, t2
                  la           sp, region_0+818 #start riscv_load_store_rand_instr_stream_0
                  sb           s0, 35(sp)
                  slli         ra, s2, 16
                  add          s5, gp, t6
                  sltu         s1, zero, zero
                  lbu          s3, -164(sp)
                  nop
                  slti         tp, a6, 989
                  slli         s3, s2, 27
                  sll          gp, s2, t0
                  sub          s9, gp, s4
                  srai         zero, s0, 11
                  ori          s4, sp, 299
                  lui          s0, 1006813
                  slli         a0, s8, 15
                  nop
                  and          a0, a7, s4
                  lb           a6, 230(sp)
                  lbu          s1, -115(sp)
                  add          zero, s11, ra
                  lh           s3, -88(sp)
                  addi         a2, s5, -1651
                  sb           t0, -122(sp)
                  xor          s10, zero, s9
                  or           s5, a2, a6
                  lbu          t4, -172(sp)
                  lb           s8, -106(sp)
                  lw           s0, -194(sp)
                  slli         t4, t6, 19
                  sb           s0, -39(sp)
                  xori         s7, s11, 644
                  sub          s5, s0, gp
                  sra          a0, t1, a2
                  sltiu        s9, s1, 571
                  sra          zero, a2, a4
                  lbu          s10, 173(sp) #end riscv_load_store_rand_instr_stream_0
                  beq          sp, a0, 790f
                  xor          s11, zero, s0
                  beq          s3, a1, 782f
                  srai         a3, a2, 15
782:              sltu         s4, s4, t3
                  slt          t4, a7, t2
                  sll          t1, t5, t3
                  bltu         t0, a1, 796f
                  sltu         t1, a2, t4
                  srl          s5, t0, t6
                  nop
                  slli         ra, t5, 14
790:              auipc        t4, 1045252
                  andi         a5, s11, 99
                  or           a7, gp, gp
                  sra          a6, a4, a6
                  srai         s7, s8, 5
                  nop
796:              beq          gp, tp, 809f
                  ori          s5, t2, 1004
                  srl          s5, a7, a7
                  blt          s7, s8, 808f
                  and          a6, t2, a2
                  lui          t5, 338612
                  srli         s11, a3, 5
                  bge          t3, s7, 815f
                  srl          s3, s4, s4
                  slti         s10, s9, -58
                  add          t4, s7, s5
                  beq          s6, a0, 825f
808:              addi         t4, t4, -1658
809:              xor          a3, t0, s4
                  sra          a3, s5, s9
                  auipc        t3, 969047
                  and          t1, a1, s7
                  slli         s2, a5, 29
                  slti         a4, t6, 801
815:              sltiu        ra, s7, 1585
                  sltiu        sp, s9, -670
                  auipc        s8, 965202
                  sltiu        s4, t1, -1704
                  bge          s2, zero, 821f
                  slt          s1, s7, t6
821:              slti         s11, a1, -392
                  sra          a6, t1, a5
                  sub          a7, zero, s2
                  or           sp, s1, a1
825:              slli         t3, s7, 26
                  sltiu        t5, tp, 1183
                  lui          s2, 52242
                  or           a3, t0, s6
                  andi         a2, s1, -1070
                  bge          s2, a1, 839f
                  srai         tp, a1, 16
                  and          a2, t1, tp
                  slli         t4, a2, 21
                  bne          a3, t6, 845f
                  slt          ra, t3, s5
                  ori          s7, zero, 1019
                  sub          ra, s1, t6
                  sub          t1, t3, t0
839:              addi         a4, a2, 1493
                  bgeu         s11, s9, 842f
                  slti         a3, t5, 1080
842:              sltiu        tp, gp, 423
                  sra          a0, a4, s11
                  sll          t4, a0, s11
845:              srli         s1, s11, 22
                  srl          s6, s2, t0
                  slti         t3, s2, 1508
                  ori          s10, a4, -1313
                  blt          a2, s11, 859f
                  beq          s3, zero, 866f
                  slt          s4, s2, s4
                  bltu         s1, s2, 860f
                  sll          a6, t1, a5
                  or           s2, t5, t3
                  auipc        gp, 95659
                  sub          t1, zero, t1
                  or           s1, s6, a6
                  bltu         s5, a4, 860f
859:              sra          a7, tp, t6
860:              auipc        s6, 336512
                  sra          a4, s0, a7
                  bgeu         zero, a3, 881f
                  xor          s11, s4, a7
                  bge          ra, s9, 872f
                  and          s8, s8, s8
866:              bge          a6, s7, 871f
                  sll          a7, s4, a2
                  and          t1, a0, s10
                  bgeu         t6, ra, 878f
                  sltu         a2, s7, s11
871:              slti         s6, a4, -387
872:              slt          t4, t5, tp
                  sub          a7, a4, a4
                  ori          s10, a7, 2035
                  and          a0, s2, s9
                  addi         s4, a2, -1543
                  srai         a6, s8, 25
878:              lui          t1, 101495
                  blt          s7, t2, 895f
                  andi         t2, s3, 989
881:              auipc        s9, 1018166
                  blt          s8, s2, 895f
                  slli         s2, t5, 19
                  or           gp, a4, s0
                  and          a0, a4, s5
                  lui          s1, 70480
                  ori          s8, a3, 1990
                  auipc        s8, 742963
                  add          s6, t6, a2
                  sltu         a0, a7, s3
                  lui          t1, 1003461
                  bgeu         s8, t6, 894f
                  bne          a7, a3, 895f
894:              sra          a6, a4, gp
895:              sll          a4, t5, s5
                  lw           t1, 4(t0)
                  addi         a6, gp, -1332
                  andi         a0, t3, -1173
                  slt          zero, s9, t4
                  addi         t0, t0, 40
                  srl          s1, s10, s5
                  srl          t5, s6, t0
1222:             addi x3, x6, 1
1222:             jalr x3, x3, 0
sub_9:            xori         a7, s8, -857
                  and          t2, s1, s3
                  srai         s2, a5, 28
                  and          s7, s0, a7
                  sra          s4, a5, s2
                  sltiu        s9, a7, -784
                  lui          zero, 417588
                  add          a2, s2, s2
                  slt          ra, t1, s10
                  beq          t6, a4, sub_9_stack_p
sub_9_stack_p:    addi         t0, t0, -24
                  sw           t1, 4(t0)
                  slt          t2, a7, a7
                  blt          s8, s1, sub_9_j12 #branch to jump instr
                  sll          s11, s4, a7
                  and          a4, t5, a6
                  sltiu        zero, s2, 1595
                  xori         a2, a3, 484
                  sra          t1, t5, tp
sub_9_j12:        jal          t1, sub_10 #jump sub_9 -> sub_10
                  add          a4, a1, s1
                  add          s11, t4, t2
                  auipc        t2, 415065
                  slti         s9, a5, 1772
                  srai         ra, a7, 9
                  sub          s6, s3, zero
                  slt          a3, s8, a3
                  addi         a5, s5, 1201
                  beq          s8, s0, 10f
                  blt          a3, s5, 10f
10:               sra          s1, t3, t5
                  lw           t1, 4(t0)
                  sra          s6, s10, s5
                  addi         t0, t0, 24
                  lui          s3, 271391
                  slli         a4, s9, 3
                  slli         a3, a0, 11
                  andi         zero, a3, 806
                  srai         t2, s1, 0
39:               addi x3, x6, 1
39:               jalr x3, x3, 0
sub_5:            srai         t3, t5, 2
                  sra          a7, a3, tp
                  addi         t0, t0, -8
                  srai         a0, a6, 2
                  sw           t1, 4(t0)
                  add          s5, a3, s8
                  xor          t3, s5, sp
                  addi         tp, s10, 1018
                  sll          a6, t5, a2
                  slti         s8, s8, 124
                  slt          a5, t3, ra
                  sub          s2, s7, t0
                  la           a2, sub_6
                  add          s0, a1, a6
                  sll          s1, s6, s11
                  lui          a6, 69846
                  ori          a6, s2, -958
                  sltiu        tp, tp, 1628
                  xori         s8, t4, 34
                  addi         a2, a2, 117
                  slti         s8, t4, 770
                  add          sp, ra, t2
sub_5_j7:         jalr         t1, a2, -116 #jump sub_5 -> sub_6
                  la           a7, region_0+202 #start riscv_load_store_rand_instr_stream_3
                  sll          zero, s11, s1
                  ori          zero, s8, -1318
                  sb           zero, -14(a7)
                  srli         a2, t1, 1
                  sb           a7, -13(a7)
                  xori         s7, s0, 1308
                  lh           sp, -16(a7)
                  sb           a5, -8(a7)
                  addi         s6, s1, 882
                  sll          t1, t1, t4
                  slli         s2, t4, 8
                  sll          t2, t0, a3
                  lhu          a5, 16(a7)
                  slli         s7, a6, 1
                  xori         s2, ra, -813
                  nop
                  lw           s5, -14(a7)
                  lbu          zero, 13(a7)
                  lb           s7, -15(a7)
                  sra          t4, s2, s3
                  addi         a5, a5, -766
                  sub          s5, t3, s0
                  lui          s6, 506257
                  lb           t5, 13(a7)
                  lbu          s0, 5(a7) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+237 #start riscv_load_store_rand_instr_stream_0
                  slli         gp, t5, 20
                  lbu          t2, 1073(sp)
                  srai         zero, s2, 28
                  lbu          s4, 686(sp)
                  lb           t2, 1044(sp)
                  sb           s8, 396(sp)
                  sb           s9, 254(sp)
                  and          a6, s10, t3
                  lbu          s2, -204(sp)
                  sb           ra, 1325(sp)
                  sb           s8, 467(sp)
                  lb           s8, -102(sp)
                  lh           s3, 1391(sp)
                  sb           a2, 693(sp)
                  lb           s4, 1072(sp)
                  auipc        s0, 476756
                  sll          s2, s11, zero
                  addi         t1, s0, -1871
                  lbu          gp, 1534(sp)
                  sh           ra, 1371(sp)
                  lw           t2, 1019(sp)
                  sh           a0, -107(sp)
                  lhu          s0, 1315(sp)
                  lbu          t2, 1290(sp)
                  sll          t2, t1, t6
                  sltu         s5, ra, t1
                  lbu          a5, -216(sp)
                  sw           s5, 447(sp)
                  addi         s6, t3, 178
                  sll          t5, t6, s2
                  sb           s1, 784(sp)
                  srli         zero, t6, 0
                  srl          s8, t6, gp
                  lb           t3, 675(sp)
                  lbu          gp, 793(sp)
                  addi         s10, t4, 658
                  lb           a5, 161(sp)
                  addi         ra, zero, -865
                  lbu          t5, 720(sp)
                  lb           gp, 1504(sp)
                  sltu         a5, s9, t0
                  lb           s3, 1042(sp)
                  lbu          s0, 435(sp)
                  sltiu        a5, a1, -1090
                  lbu          t1, -164(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+1581 #start riscv_load_store_rand_instr_stream_1
                  slti         a5, ra, 457
                  xori         s8, t0, 1443
                  slli         t3, s6, 21
                  lbu          tp, 0(a7)
                  srl          a2, s5, a3
                  addi         gp, s6, -961
                  sltiu        s0, s10, 639
                  lbu          a5, -6(a7)
                  nop
                  lbu          s5, 0(a7)
                  lbu          s5, 0(a7)
                  auipc        s7, 217222
                  lbu          s11, 14(a7)
                  addi         ra, a0, -282
                  lb           tp, 0(a7)
                  lui          a5, 703694
                  sltu         a5, s1, tp
                  slli         a4, t6, 22
                  srli         s4, s0, 14
                  nop
                  sb           s4, 14(a7)
                  sltiu        s3, s11, -33
                  srl          ra, a1, s7
                  sub          t4, t0, t3
                  sltiu        ra, a3, -800
                  slt          a4, s9, t4
                  srl          s8, t6, s5
                  auipc        a6, 128070
                  lbu          s4, 3(a7)
                  sb           sp, 14(a7)
                  lw           a2, -5(a7)
                  lbu          s2, 12(a7)
                  add          tp, a1, s5
                  sltiu        s10, s9, 592
                  lb           a6, 2(a7)
                  lbu          a4, -10(a7) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+527 #start riscv_load_store_rand_instr_stream_2
                  sll          s7, t0, t3
                  or           ra, s2, ra
                  srl          s0, s1, s0
                  sb           a1, 14(a7)
                  sll          t3, a2, t4
                  lbu          sp, 2(a7)
                  nop
                  addi         s4, s9, -1201
                  sh           a0, 15(a7)
                  lui          s2, 210108
                  lbu          s9, 4(a7)
                  lh           s0, -13(a7)
                  lw           gp, 9(a7)
                  nop
                  lw           a3, 5(a7)
                  xori         zero, t0, -1092
                  lb           sp, 7(a7)
                  srai         a2, s0, 17
                  sh           a1, -11(a7)
                  sb           a3, 14(a7)
                  lb           s10, -4(a7)
                  ori          a3, a0, 543
                  or           t4, t5, s10
                  srl          s4, s3, s4
                  sub          t1, s2, a5
                  lbu          s5, -12(a7)
                  lb           t1, -6(a7)
                  slli         sp, s3, 10
                  lbu          ra, -13(a7)
                  sb           a3, -4(a7)
                  auipc        s4, 693168
                  sltu         t4, tp, a1
                  lbu          s2, 7(a7)
                  slli         s0, a5, 0
                  lb           s2, -8(a7)
                  srli         t4, a7, 2
                  lb           s0, 6(a7)
                  or           s11, a4, s0
                  lb           s3, -5(a7)
                  srl          s10, tp, s2
                  lui          a5, 348659
                  nop
                  lw           s5, -15(a7)
                  lbu          a6, 6(a7)
                  lbu          t1, -6(a7)
                  and          a5, a7, s4
                  srai         s3, a3, 15
                  sll          t2, s0, s5
                  xor          s5, s0, s9
                  sb           tp, 10(a7)
                  slti         s4, t3, 14
                  lbu          s9, 9(a7)
                  sb           s9, 15(a7)
                  lb           a5, 2(a7) #end riscv_load_store_rand_instr_stream_2
                  xor          a7, s3, t6
                  bgeu         a7, a6, 13f
                  slt          a0, s2, a7
                  auipc        a7, 241888
                  nop
                  bgeu         t1, a2, 6f
6:                slt          t4, t2, t3
                  srai         a5, s11, 6
                  xor          s8, gp, tp
                  sltiu        s8, t4, -839
                  beq          zero, s10, 13f
                  srai         zero, s7, 3
                  sltiu        sp, s1, -784
13:               blt          ra, t5, 16f
                  add          s4, a4, s7
                  srai         s1, sp, 24
16:               srli         s11, s10, 6
                  xor          t2, ra, tp
                  slt          a0, zero, tp
                  xori         s0, t3, -261
                  xori         t2, t0, -1945
                  slti         s3, a2, 1411
                  bne          a4, s9, 39f
                  addi         t3, t3, 378
                  and          s8, tp, s2
                  srai         s3, a5, 20
                  slti         s10, s0, -1747
                  bltu         s1, gp, 40f
                  or           zero, t3, t3
                  lui          t2, 475943
                  bltu         a3, t3, 42f
                  bltu         t4, s4, 40f
                  xor          tp, t4, t3
                  auipc        s6, 898408
                  srai         zero, s7, 30
                  srl          sp, t5, a3
                  slli         a7, sp, 27
                  or           s11, s9, a7
                  srl          tp, a2, a0
39:               beq          s11, a4, 52f
40:               and          s2, a5, a5
                  srai         zero, s7, 10
42:               slli         s1, tp, 24
                  sll          ra, ra, a7
                  slli         s6, s10, 25
                  andi         gp, a0, -105
                  ori          t5, s10, 259
                  bltu         s9, a2, 52f
                  addi         s1, t1, -551
                  slti         s2, tp, -1227
                  blt          sp, s9, 58f
                  srl          s0, s0, tp
52:               nop
                  nop
                  add          s7, a4, a4
                  auipc        s11, 1303
                  bgeu         t0, s9, 75f
                  srai         tp, zero, 3
58:               sub          s9, a7, tp
                  slti         s8, t4, 1816
                  or           s1, s7, s3
                  xori         s8, a6, 1766
                  srai         s3, a1, 18
                  bne          ra, t5, 78f
                  auipc        s0, 990701
                  srai         a4, t4, 23
                  auipc        s4, 256214
                  ori          s8, a6, 1097
                  srl          s6, t4, t5
                  nop
                  add          gp, s10, sp
                  auipc        s0, 224384
                  or           s5, s10, sp
                  bge          t5, s3, 79f
                  addi         s3, a2, 32
75:               or           s9, a4, a4
                  srli         t4, tp, 11
                  srli         t1, t6, 21
78:               sll          s7, a7, s9
79:               slti         s9, s6, -2030
                  bgeu         s7, t5, 92f
                  and          a3, t0, t6
                  sub          a3, s8, s10
                  addi         a5, a5, -570
                  sub          tp, gp, s9
                  add          a6, t2, t2
                  sub          s0, sp, a0
                  bltu         a6, tp, 97f
                  addi         s1, t1, -77
                  ori          a7, a1, 372
                  xori         s9, sp, 985
                  srl          gp, t5, a1
92:               slli         a5, s4, 15
                  srl          a2, s0, ra
                  add          s2, s0, a4
                  sltiu        a6, a0, 1613
                  bge          gp, s6, 102f
97:               blt          t0, s7, 116f
                  bgeu         t6, s5, 106f
                  bne          a7, s10, 108f
                  bne          t6, ra, 104f
                  lui          a6, 959564
102:              auipc        gp, 691388
                  xori         a3, s2, -1833
104:              bltu         tp, s6, 113f
                  bne          a2, a7, 119f
106:              ori          a5, t1, -1864
                  or           s3, s0, a7
108:              bne          s11, s3, 127f
                  xori         a5, a6, -1074
                  slt          a5, s10, a3
                  slti         tp, s0, 1728
                  beq          ra, s4, 129f
113:              addi         s5, t1, -379
                  bge          zero, s1, 117f
                  bge          t3, a5, 124f
116:              slt          s4, s4, gp
117:              bge          s7, a5, 121f
                  slt          a4, s0, s9
119:              bne          a1, a1, 138f
                  beq          s7, s2, 128f
121:              auipc        a2, 639945
                  bgeu         a5, tp, 135f
                  and          a3, t3, a5
124:              bltu         s4, ra, 143f
                  ori          t1, a3, -302
                  sub          t2, t6, a0
127:              bgeu         t4, s2, 136f
128:              slti         a2, tp, 1300
129:              andi         s9, s8, -810
                  or           a0, a0, s0
                  slli         a2, s5, 9
                  srai         tp, a0, 8
                  bgeu         s7, s9, 134f
134:              sll          s0, s5, sp
135:              ori          s0, t6, 456
136:              srl          zero, t0, s1
                  xor          s5, a4, t6
138:              slti         a2, a2, -1569
                  sltu         t3, t5, a3
                  sll          s11, t4, gp
                  sltu         s0, sp, t2
                  beq          s6, s3, 148f
143:              srai         zero, sp, 20
                  bgeu         gp, a6, 152f
                  slli         a3, s4, 16
                  srli         s1, s11, 25
                  sub          t5, s2, a0
148:              andi         s5, a2, -1311
                  sltu         s7, a3, s11
                  blt          s7, s0, 155f
                  sltu         a6, s9, s3
152:              ori          s10, a1, 759
                  bne          a5, t0, 161f
                  bltu         t2, s9, 168f
155:              sub          a4, tp, a1
                  bne          t0, a5, 168f
                  sub          ra, a1, zero
                  sub          s8, s0, s10
                  srai         a5, s1, 10
                  bne          gp, a3, 163f
161:              sll          a0, t2, t6
                  add          gp, s7, sp
163:              beq          a2, gp, 166f
                  xori         s7, a3, 1087
                  slt          s9, s5, zero
166:              srl          s2, s6, s5
                  sltiu        t5, t5, -1824
168:              sltu         t1, s8, a2
                  slt          t3, s11, s6
                  sub          t1, s6, zero
                  slt          s3, a4, s2
                  bne          a4, s4, 181f
                  or           s4, a6, s4
                  sll          s7, t4, a5
                  srai         a0, s3, 20
                  sll          s10, t4, zero
                  slti         sp, a4, -1856
                  auipc        t2, 430837
                  srli         s0, t5, 29
                  lui          t1, 751237
181:              beq          s0, s2, 196f
                  bge          a1, gp, 194f
                  sll          s3, a0, zero
                  bne          t6, s3, 197f
                  xori         s4, s8, 1970
                  bne          zero, t4, 203f
                  or           s10, a4, s2
                  beq          s0, s5, 207f
                  xor          a4, s0, a6
                  ori          a3, zero, 185
                  bne          t0, t4, 195f
                  sub          zero, t2, sp
                  slli         t3, s7, 21
194:              ori          a2, t4, -1414
195:              andi         a0, a4, -424
196:              srai         s3, s5, 29
197:              bne          s11, a2, 201f
                  auipc        s1, 464673
                  slt          a0, tp, t1
                  bgeu         s8, t1, 209f
201:              blt          t2, tp, 218f
                  bltu         s4, a3, 211f
203:              andi         sp, s7, 986
                  sub          s6, s2, t5
                  bgeu         s1, s8, 217f
                  beq          s6, s0, 212f
207:              slli         ra, t6, 18
                  sltu         a6, a5, a1
209:              xor          t5, zero, t5
                  slli         s6, tp, 8
211:              srai         t1, t3, 13
                  srai         s2, s7, 5
                  nop
                  sltu         s0, t4, s11
                  xori         s7, t6, 424
                  la           s9, sub_7
                  sub          s0, a3, a7
                  xori         ra, ra, -1796
                  addi         s9, s9, 71
                  blt          s4, t2, sub_5_j6 #branch to jump instr
                  lui          ra, 897134
sub_5_j6:         jalr         t1, s9, -71 #jump sub_5 -> sub_7
212:              sra          t5, s5, s7
                  or           t4, a2, s1
                  srl          t1, a6, gp
                  bgeu         s5, s8, 225f
                  auipc        a6, 49240
217:              andi         a4, t3, 1711
218:              xori         s2, a4, 1531
                  auipc        s11, 584478
                  sra          zero, s1, s5
                  addi         s3, t6, 245
                  add          s1, a3, a4
                  ori          t5, t4, -833
                  and          s6, s0, t5
225:              slt          a2, t2, a2
                  andi         s7, tp, -605
                  lui          a7, 788968
                  and          ra, s9, s8
                  blt          t0, s1, 232f
                  ori          a5, sp, 1053
                  add          s8, s3, t1
232:              sltiu        a2, s3, 579
                  addi         t4, s10, -381
                  andi         sp, t4, -1863
                  bltu         ra, ra, 254f
                  lui          s4, 925616
                  sltu         tp, s5, s0
                  add          a2, t5, t3
                  add          t3, s10, s6
                  sltiu        t1, s11, -527
                  lui          s11, 156166
                  andi         t5, t6, 206
                  sub          s0, t5, a1
                  srli         a5, s11, 24
                  sra          t3, a2, s1
                  sub          s5, t6, gp
                  bltu         t6, a2, 255f
                  nop
                  srai         s8, s8, 13
                  slt          a2, gp, t1
                  sltiu        a6, a4, 1837
                  bne          t5, s5, 271f
                  slti         gp, t3, -1847
254:              sltiu        a3, t3, -1582
255:              ori          a3, a2, 672
                  addi         s7, t0, -1622
                  slt          t1, tp, ra
                  or           t2, a1, a6
                  nop
                  sltiu        t2, sp, 1140
                  bgeu         a3, t5, 276f
                  andi         s1, a4, 1033
                  and          a7, t1, sp
                  bgeu         t6, a6, 273f
                  bge          s4, gp, 273f
                  auipc        s4, 909184
                  sra          a4, a2, t4
                  ori          a7, a5, -1058
                  andi         s1, t4, -548
                  lui          s1, 804418
271:              or           s6, s9, s0
                  addi         t2, t3, 527
273:              slli         a2, zero, 15
                  slt          s3, ra, gp
                  andi         s8, s11, -233
276:              and          t4, a3, s5
                  sltiu        a7, a6, 541
                  slti         s0, s3, -1314
                  bne          a2, a4, 282f
                  srai         sp, a3, 14
                  sltiu        a2, s5, -228
282:              sra          s1, t4, s2
                  add          a7, a7, s10
                  srl          ra, a6, s4
                  sll          t4, s1, s8
                  and          gp, t2, ra
                  xori         s9, t0, -1893
                  sub          a5, a3, ra
                  ori          s2, s5, 780
                  auipc        t3, 51393
                  slli         t5, s8, 6
                  andi         s6, s4, -966
                  andi         a2, t6, 1370
                  sltu         s2, sp, t6
                  sltu         ra, t5, t6
                  bgeu         s10, zero, 304f
                  beq          t6, a6, 301f
                  lui          s3, 462372
                  and          t3, s0, s4
                  blt          a5, s4, 319f
301:              slt          s7, s3, t5
                  ori          a5, t6, -1045
                  srai         a0, t6, 25
304:              add          t2, s8, s5
                  bltu         a1, a4, 311f
                  sra          a6, a2, t2
                  bgeu         a1, s6, 312f
                  addi         s5, s6, -1602
                  slt          a6, s9, t4
                  srai         s2, t4, 30
311:              xori         a7, s8, 959
312:              sra          s6, gp, a6
                  nop
                  slt          s10, t4, s8
                  auipc        t5, 768086
                  or           s3, s11, t4
                  bgeu         s1, s10, 318f
318:              sltiu        s7, t6, 438
319:              bgeu         t3, t5, 331f
                  addi         a0, t5, -1465
                  bne          a0, t5, 340f
                  sll          s11, sp, a0
                  blt          s2, zero, 327f
                  srl          s9, sp, t5
                  addi         a4, t0, 757
                  beq          t2, a0, 345f
327:              sra          a6, t1, s2
                  sltu         a0, s11, tp
                  bne          t3, tp, 338f
                  add          a3, a0, zero
331:              sltu         a7, t4, s3
                  and          ra, a0, s6
                  lui          t4, 761239
                  sltu         a2, a7, s4
                  sub          a4, s3, s8
                  beq          s1, s3, 344f
                  sltiu        a5, zero, 808
338:              xor          ra, s2, a0
                  srli         s11, t6, 29
340:              lui          s3, 979101
                  blt          t4, s3, 354f
                  ori          s5, a2, -917
                  sra          a7, sp, gp
344:              sra          s8, s7, s5
345:              slt          t5, t4, s2
                  srli         sp, s7, 2
                  srl          gp, t1, a3
                  or           s3, a1, a3
                  addi         sp, a6, 1674
                  slti         a7, s9, -1495
                  addi         s1, tp, -1078
                  or           a0, s0, t4
                  andi         t2, s0, 203
354:              andi         a0, s8, -1658
                  xor          s9, gp, t5
                  addi         s11, s6, -22
                  lui          a6, 364479
                  ori          a2, s1, -1965
                  bgeu         s7, zero, 371f
                  slti         sp, t2, -1767
                  sra          t4, tp, t5
                  blt          s2, ra, 365f
                  and          s5, s8, s8
                  srl          tp, s0, a6
365:              slti         a7, a4, -362
                  xori         tp, a4, -955
                  srl          gp, t3, s4
                  auipc        gp, 644461
                  nop
                  beq          t0, s6, 389f
371:              andi         s2, s0, -844
                  nop
                  slt          zero, s9, s0
                  sub          s5, tp, s0
                  nop
                  addi         a6, sp, -1369
                  addi         s0, s11, -1339
                  xor          t2, zero, s8
                  sra          s7, t1, ra
                  srai         a2, a2, 25
                  lui          sp, 93103
                  bltu         t3, a2, 399f
                  slli         s8, s1, 21
                  andi         a0, a1, 893
                  slt          gp, a0, s2
                  lui          t1, 494006
                  bltu         a5, a5, 399f
                  andi         s3, t3, -5
389:              bltu         a0, s2, 399f
                  addi         s9, s5, 1312
                  sll          s6, ra, a1
                  or           t3, s6, s0
                  sll          sp, t1, s7
                  sltu         a2, s2, s6
                  beq          tp, s6, 398f
                  lui          a6, 632773
                  nop
398:              slli         t2, ra, 13
399:              or           s11, s8, s10
                  andi         s0, t5, -111
                  bne          s11, s1, 410f
                  add          s0, s8, sp
                  sub          s0, a7, a1
                  sll          tp, a4, s0
                  addi         s9, s3, -1326
                  xori         t5, s5, -1210
                  bne          t4, t0, 421f
                  addi         a6, t6, 1965
                  sltu         t3, s6, gp
410:              lui          s8, 525582
                  slt          sp, s9, a2
                  lui          a7, 371678
                  beq          s4, s7, 426f
                  sll          s0, a0, s8
                  bne          s8, a4, 432f
                  srl          t3, s2, tp
                  auipc        a5, 923912
                  auipc        s11, 493067
                  xori         s11, a4, 712
                  blt          a5, tp, 426f
421:              bge          a7, s11, 430f
                  slli         s8, s1, 20
                  and          s9, a2, s9
                  blt          sp, t5, 425f
425:              ori          s5, s3, 1372
426:              beq          tp, s0, 445f
                  slti         s2, t4, 1337
                  srl          sp, a4, t1
                  xori         s0, t3, -1058
430:              andi         a6, t0, -641
                  sub          a2, t6, s6
432:              and          s3, t6, s1
                  xori         a2, a1, -1240
                  sltu         t3, zero, zero
                  slt          s2, t6, a3
                  xori         t2, s4, -1996
                  sub          zero, t3, a0
                  sub          ra, a3, a4
                  ori          s7, a6, 1967
                  andi         a6, t0, -169
                  xori         s8, zero, 670
                  bgeu         tp, t3, 447f
                  add          s5, s4, t1
                  add          a4, s4, ra
                  andi         s3, a3, 1638
                  sll          gp, t0, s9
                  lui          s4, 666388
                  slli         a0, t4, 7
                  sll          gp, tp, gp
sub_5_j8:         jal          t1, sub_6 #jump sub_5 -> sub_6
                  beq          s9, a2, 447f
445:              sub          s6, a0, t5
                  slli         sp, s7, 4
447:              addi         t2, a4, -785
                  slt          a0, a3, s8
                  sltiu        tp, s5, -437
                  add          t2, t4, t1
                  bge          a5, s3, 466f
                  andi         s3, t3, 105
                  ori          t3, zero, 841
                  srai         gp, sp, 25
                  sltu         s9, a0, s8
                  slt          s3, sp, a4
                  srli         t5, zero, 5
                  bgeu         s8, tp, 477f
                  and          a5, s4, tp
                  xor          tp, s7, a0
                  auipc        s7, 948873
                  xor          s7, s10, t0
                  blt          a3, t6, 475f
                  or           s1, t5, s3
                  beq          a3, s1, 478f
466:              slti         s1, a0, 1734
                  or           zero, s2, t3
                  sltiu        gp, s1, -571
                  add          t1, zero, s8
                  bge          gp, a6, 473f
                  sltu         s0, t6, s8
                  srl          s2, s0, s5
473:              slti         s0, a7, 614
                  sll          tp, s6, zero
475:              bge          a1, s1, 485f
                  srli         ra, a1, 19
477:              andi         t2, zero, 1105
478:              slti         s9, a1, -1892
                  beq          gp, a2, 493f
                  auipc        t1, 1009836
                  sll          s0, s1, t6
                  xor          t3, s7, tp
                  sub          a4, a1, sp
                  slli         zero, s5, 5
485:              xor          s3, a0, tp
                  bne          t0, a2, 492f
                  or           a3, s1, s7
                  xor          s0, s3, s7
                  srl          a6, t1, ra
                  bgeu         zero, t0, 509f
                  beq          s0, a5, 503f
492:              slli         s8, s9, 2
493:              sll          a7, tp, t6
                  srli         sp, tp, 3
                  andi         a6, a6, 1992
                  bgeu         t4, t6, 515f
                  bge          t2, s2, 514f
                  ori          sp, a1, -1012
                  xori         a0, t0, -324
                  add          t3, s7, s1
                  bgeu         t1, t4, 514f
                  and          a2, sp, sp
503:              add          sp, s6, a2
                  bge          t2, tp, 508f
                  sub          a0, t6, t2
                  sltu         s6, s3, t3
                  slti         a6, s11, -746
508:              bge          a2, s10, 520f
509:              slli         t3, s2, 23
                  sltu         s0, a7, s3
                  lui          s2, 7853
                  slt          s9, a4, t1
                  srli         a5, ra, 8
514:              sra          s9, a6, s5
515:              bgeu         a4, tp, 522f
                  sltu         ra, zero, a2
                  nop
                  bne          a3, a0, 522f
                  bltu         s8, s6, 522f
520:              sub          ra, s6, s10
                  xor          a6, a1, s6
522:              sll          ra, a3, a4
                  srli         s9, a1, 5
                  nop
                  lw           t1, 4(t0)
                  xor          s5, a6, gp
                  addi         t0, t0, 8
                  xor          tp, s2, gp
                  add          t5, a4, a3
                  andi         t5, s3, 1068
                  sub          s1, s5, a1
                  nop
738:              addi x6, x6, 0
738:              jalr x6, x6, 0
sub_6:            blt          s7, ra, sub_6_stack_p
                  sub          t4, s10, a6
                  srl          a4, a0, t4
                  xor          s3, t1, a0
                  lui          s10, 100252
                  slti         zero, t5, -1919
sub_6_stack_p:    addi         t0, t0, -28
                  sltiu        s1, t4, -1089
                  sw           t1, 4(t0)
                  srli         s2, a7, 4
                  la           a7, region_1+1678 #start riscv_load_store_rand_instr_stream_0
                  lb           gp, 11(a7)
                  lbu          a0, -1(a7)
                  sll          a5, s5, s11
                  lbu          a4, 2(a7)
                  sb           t4, 7(a7)
                  lb           s4, -15(a7)
                  lbu          s2, -8(a7)
                  lb           zero, 14(a7)
                  lbu          s1, 15(a7)
                  sb           t0, -13(a7)
                  lb           gp, 7(a7)
                  lbu          a4, -3(a7)
                  lb           s6, 7(a7)
                  lbu          s2, -13(a7)
                  lbu          sp, -4(a7)
                  xor          a5, gp, s10
                  sh           zero, -4(a7)
                  slt          s8, s10, s4
                  and          s11, ra, gp
                  sub          s9, s8, t4
                  lb           s9, 11(a7)
                  lb           ra, -1(a7)
                  srli         ra, s8, 19
                  lhu          t2, -12(a7)
                  auipc        gp, 590262
                  lb           s2, -5(a7)
                  sb           t0, -13(a7)
                  andi         t5, t3, -1133
                  lbu          a5, -13(a7)
                  sb           a3, -3(a7)
                  auipc        s4, 1046275
                  slt          zero, a5, ra
                  srai         s1, t1, 3
                  sb           s9, 1(a7)
                  sb           s10, 11(a7)
                  lb           a3, 9(a7) #end riscv_load_store_rand_instr_stream_0
                  or           t3, s1, t3
                  andi         s9, t6, 191
                  nop
                  sra          tp, ra, s10
                  addi         s11, a3, 483
                  lui          t1, 577216
                  slt          a3, t0, s2
                  addi         s3, zero, -596
                  nop
                  xori         s1, t5, 518
                  lui          a0, 1011742
                  bge          t6, a6, 14f
                  sltiu        s5, t5, -1418
                  lui          s4, 877614
14:               nop
                  bgeu         t3, tp, 25f
                  srai         a7, t2, 31
                  srl          a7, sp, a1
                  ori          s2, a3, 1347
                  lui          sp, 943321
                  bne          t1, t1, 30f
                  ori          s3, s10, 167
                  sltiu        a2, sp, -91
                  ori          t4, t4, 375
                  sub          t3, s8, s7
25:               lui          a3, 665039
                  bge          a5, t4, 32f
                  bltu         s9, a0, 31f
                  sltiu        sp, a4, -834
                  xor          t3, s2, s10
30:               blt          s8, t5, 46f
31:               sltu         zero, zero, a7
32:               add          t5, s10, s6
                  sltu         t2, tp, s6
                  add          s3, a6, t1
                  addi         t2, a2, 1658
                  auipc        t1, 480087
                  srai         a5, a4, 19
                  slti         gp, s3, -550
                  andi         t2, t2, 1334
                  slt          a2, ra, s0
                  srli         t5, tp, 15
                  srai         a7, a2, 24
                  bltu         gp, a5, 51f
                  bge          s7, s7, 54f
                  bgeu         a3, a7, 52f
46:               addi         s8, zero, -1400
                  sltiu        t1, s10, 1987
                  sltu         t4, a5, gp
                  ori          s7, a5, 607
                  sub          a5, s10, a7
51:               sltiu        s6, a7, 1775
52:               blt          gp, s1, 60f
                  srl          s6, ra, s4
54:               blt          s4, t3, 72f
                  blt          s8, zero, 65f
                  nop
                  slt          gp, tp, s5
                  xor          t4, s3, a4
                  and          zero, t3, tp
60:               sra          a5, t2, s11
                  slti         sp, s3, -1967
                  bge          a3, a0, 63f
                  la           t5, region_0+1719 #start riscv_load_store_rand_instr_stream_1
                  sra          t1, t3, s7
                  sltiu        a4, a4, -497
                  sb           ra, 20(t5)
                  lbu          s11, -39(t5)
                  lb           t1, 26(t5)
                  ori          a2, s3, 1714
                  srl          a6, a1, tp
                  lbu          s0, 12(t5)
                  slli         zero, a1, 14
                  nop
                  sb           s3, 20(t5)
                  lui          s7, 95908
                  sub          s7, t1, s3
                  sh           s1, -1(t5)
                  lbu          t3, 16(t5)
                  sb           s1, 50(t5)
                  sb           s2, -61(t5)
                  sll          s7, s7, s0
                  auipc        a5, 154799
                  ori          s10, s6, 666
                  lh           t2, 37(t5)
                  lbu          s2, 38(t5) #end riscv_load_store_rand_instr_stream_1
63:               bltu         ra, s8, 76f
                  addi         a4, t2, 383
65:               addi         s7, t3, 1179
                  xori         t3, s9, -893
                  srl          s0, s11, s6
                  sltiu        t1, s7, -415
                  add          s2, t1, a5
                  slt          s3, t3, s9
                  andi         a3, t3, -723
72:               andi         t2, t4, 1217
                  beq          s5, a6, 76f
                  slli         s5, ra, 24
                  xori         s11, t3, -1578
76:               or           a0, s3, t5
                  bgeu         s8, sp, 82f
                  bne          s1, t5, 82f
                  srli         a5, s1, 21
                  or           a0, t6, a4
                  srli         a4, t5, 18
82:               blt          s10, t2, 92f
                  bgeu         s4, s3, 91f
                  srl          s2, a1, s5
                  slli         s5, t0, 2
                  beq          a0, a2, 101f
                  slt          s3, t5, zero
                  and          s3, ra, a6
                  sltiu        sp, s8, -920
                  blt          s1, t2, 103f
91:               sra          s11, a4, t0
92:               beq          tp, s1, 105f
                  slli         s7, a0, 11
                  sll          tp, t6, s0
                  and          t1, ra, s5
                  sltiu        s5, s4, -382
                  blt          gp, a2, 101f
                  slti         sp, gp, 352
                  add          t5, a3, s7
                  add          t5, t6, ra
101:              sub          s0, a5, s11
                  auipc        s6, 858852
103:              bgeu         t5, s10, 121f
                  sll          s5, s5, s4
105:              auipc        s7, 406556
                  andi         a3, s1, -1912
                  bge          s2, t1, 113f
                  srl          s11, s3, ra
                  srai         t4, s4, 11
                  bltu         zero, ra, 118f
                  or           s10, s5, s0
                  blt          s8, ra, 114f
113:              sltu         s7, s0, a6
114:              beq          s8, s9, 134f
                  bne          t5, t2, 125f
                  slti         s9, zero, 843
                  sra          a0, t6, s8
118:              slti         t3, s0, -1364
                  xor          a6, s8, a7
                  xori         t4, a1, -226
121:              bge          a6, sp, 139f
                  nop
                  srl          a6, s3, s3
                  srli         s9, t3, 21
125:              srai         a3, a7, 26
                  srli         t2, s1, 25
                  slli         t3, t0, 15
                  lui          ra, 597523
                  sltiu        s1, s9, 1996
                  bgeu         s7, s1, 131f
131:              and          ra, ra, zero
                  lui          t4, 923144
                  sll          sp, sp, t2
134:              auipc        s0, 854345
                  and          a6, s5, t3
                  bltu         t1, a6, 154f
                  ori          zero, s11, 1135
                  slt          t1, a0, s9
139:              sub          a5, a2, s11
                  auipc        a5, 945312
                  add          s9, ra, sp
                  xor          a0, ra, s2
                  bltu         s5, a2, 147f
                  srai         t5, a0, 17
                  sra          s2, zero, s8
                  addi         zero, s6, 1471
147:              sub          t4, s3, t3
                  slti         s7, a2, 1658
                  and          s10, t0, s11
                  addi         s0, t3, 434
                  slti         a2, s11, -682
                  addi         t3, a2, -2004
                  slli         a0, a3, 22
154:              auipc        a0, 183945
                  addi         sp, a2, -683
                  xori         gp, t2, 1936
                  slti         s6, s6, -1298
                  and          ra, a7, a2
                  srli         s0, a2, 21
                  sra          s11, t3, s5
                  bge          tp, s4, 164f
                  add          a7, zero, ra
                  bge          s10, t4, 171f
164:              lui          s3, 310725
                  sltu         tp, s1, a2
                  xor          a2, ra, a0
                  sltu         s5, a2, a3
                  sltu         s2, t5, s7
                  lui          s8, 81297
                  xor          s3, s8, s6
171:              srai         sp, s10, 2
                  nop
                  and          t5, s2, tp
                  addi         a0, a6, -1533
                  sll          s9, a7, a2
                  xori         t4, a1, 976
                  bgeu         a5, a1, 181f
                  nop
                  add          s6, a1, s6
                  and          t1, t0, s2
181:              or           s1, t1, s6
                  andi         t3, sp, -376
                  sub          s8, s1, gp
                  sra          s0, s1, a7
                  bge          s2, a4, 189f
                  srl          s7, s0, a2
                  slti         a4, a3, 74
                  sltu         ra, s3, tp
189:              bge          t3, zero, 194f
                  ori          s8, a5, 893
                  sub          gp, a7, s7
                  or           s7, a5, tp
                  bne          t5, a7, 201f
194:              sub          ra, a5, s6
                  bge          s7, a1, 205f
                  and          s1, t3, s6
                  slli         s8, t1, 17
                  srai         s5, a7, 9
                  sub          s7, s7, a5
                  srai         gp, a6, 21
201:              blt          s6, s0, 214f
                  sub          t5, s8, zero
                  addi         s8, t2, 1966
                  slti         gp, s10, -1156
205:              auipc        a7, 25340
                  nop
                  nop
                  slli         t3, s7, 27
                  slt          s2, s1, zero
                  sltiu        t5, a2, 530
                  blt          a6, t5, 219f
                  slti         tp, s6, -192
                  addi         s7, a7, -1223
214:              sltiu        s9, s2, -1050
                  xor          s0, t5, s7
                  blt          a2, s6, 232f
                  lui          a5, 799473
                  sll          s1, s3, a2
219:              bne          s3, s9, 229f
                  or           zero, s6, s5
                  nop
                  addi         s1, a3, -1038
                  xor          a6, a5, a2
                  or           a5, gp, s10
                  srl          a7, a6, s4
                  beq          zero, zero, 244f
                  blt          sp, tp, 237f
                  slli         zero, a7, 0
229:              nop
                  sub          sp, s8, s3
                  srai         zero, s9, 14
232:              bltu         s0, s9, 235f
                  lui          zero, 906600
                  sll          s11, s1, s7
235:              lui          s9, 256884
                  bltu         s1, ra, 243f
237:              ori          gp, s10, -975
                  sltu         tp, s1, zero
                  slt          zero, a1, t0
                  sll          s5, s8, t6
                  slli         ra, s3, 22
                  bne          a2, s5, 262f
243:              bne          s9, a1, 253f
244:              xori         a5, a2, 1914
                  lui          t3, 259594
                  auipc        s5, 210230
                  slli         t3, t1, 30
                  bge          s5, zero, 258f
                  nop
                  auipc        a3, 60579
                  and          s7, t0, a0
                  slli         s6, t6, 2
253:              bge          gp, s2, 263f
                  add          s7, s11, zero
                  nop
                  andi         a4, sp, 561
                  ori          s10, s2, -1543
258:              bltu         t3, sp, 263f
                  slli         ra, tp, 20
                  or           gp, s5, tp
                  add          sp, sp, s8
262:              bltu         s8, s0, 263f
263:              sra          gp, s2, gp
                  lw           t1, 4(t0)
                  auipc        tp, 12847
                  slt          s9, a4, t6
                  addi         t2, t4, 1155
                  addi         t0, t0, 28
                  lui          a4, 156934
                  add          a6, s1, s8
341:              addi x19, x6, 0
341:              jalr x19, x19, 0
sub_3:            addi         t2, a2, -1128
                  blt          s10, s1, sub_3_stack_p
                  andi         t2, t0, -104
                  lui          zero, 156094
sub_3_stack_p:    addi         t0, t0, -12
                  sw           t1, 4(t0)
                  addi         s5, s1, 223
                  and          a0, tp, s1
                  sltiu        a0, tp, 1593
                  or           t5, s4, t6
                  or           s9, t2, s6
                  xor          a0, t0, a3
                  nop
                  auipc        s3, 1006949
                  srl          tp, a4, a6
sub_3_j4:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  auipc        s2, 328428
                  bltu         s0, s2, 14f
                  srli         s7, s10, 15
                  bltu         t2, a6, 12f
                  bltu         s10, s10, 16f
                  bge          s11, s9, 6f
6:                srl          ra, s7, t6
                  sll          s6, s5, s10
                  add          a5, s10, sp
                  blt          tp, gp, 13f
                  bgeu         s11, a0, 13f
                  sll          tp, a7, s4
12:               bgeu         a2, t6, 21f
13:               bne          t5, t6, 23f
14:               slt          t4, s10, t6
                  blt          s5, a7, 30f
16:               blt          a7, s11, 20f
                  sub          zero, s6, a0
                  slt          t4, s10, s2
                  nop
20:               xori         s7, zero, 1300
21:               slt          s5, t3, s8
                  xor          s1, a7, zero
23:               nop
                  bgeu         s4, s3, 29f
                  slti         t3, s0, -886
                  addi         a2, sp, -1076
                  srli         a0, t5, 19
                  sltiu        s2, s4, -1780
29:               xor          s1, gp, s7
30:               or           s1, sp, s7
                  srli         a3, t5, 3
                  xori         tp, s10, -1610
                  srl          t5, a5, s10
                  bltu         t2, sp, 43f
                  bgeu         t4, t5, 40f
                  slli         ra, gp, 5
                  slli         s7, a6, 17
                  srai         s8, s7, 1
                  auipc        a6, 684299
40:               ori          a6, a2, -507
                  slti         s6, s7, -1468
                  srli         gp, t3, 1
43:               or           s8, s8, t2
                  beq          s0, tp, 48f
                  beq          s6, s10, 51f
                  and          ra, t4, t4
                  slti         s10, t4, 471
48:               blt          a2, a5, 51f
                  srl          tp, tp, ra
                  andi         a0, s2, 1574
51:               xor          a0, s9, s2
                  srl          s0, tp, t4
                  lui          s2, 36467
                  lw           t1, 4(t0)
                  srli         a7, a0, 16
                  sra          s1, t3, gp
                  sltu         s0, a4, t2
                  slli         s2, s2, 13
                  ori          s7, ra, 1380
                  sub          a7, s11, t5
                  addi         t0, t0, 12
                  sltiu        a2, s6, 2020
                  srai         s3, t3, 19
80:               addi x6, x6, 0
80:               jalr x6, x6, 0
sub_1:            beq          t1, s10, sub_1_stack_p
                  and          sp, a2, a0
                  sll          s6, a7, a3
sub_1_stack_p:    addi         t0, t0, -32
                  sw           t1, 4(t0)
                  sltu         s8, a4, s1
                  auipc        a3, 747868
                  bltu         a6, gp, 10f
                  bltu         t1, s9, 9f
                  xori         a2, sp, -663
                  andi         s7, gp, 1579
                  ori          zero, s0, 736
                  slli         a7, a6, 31
                  la           sp, region_0+1875 #start riscv_load_store_rand_instr_stream_0
                  lhu          s9, -13(sp)
                  addi         a5, t6, 1144
                  lb           a0, 5(sp)
                  sw           s4, -11(sp)
                  sb           s3, -1(sp)
                  sltiu        s9, sp, -3
                  lb           gp, 0(sp)
                  sra          ra, a3, s0
                  slt          t2, s0, a6
                  or           s11, a1, t2
                  sll          s2, a5, s8
                  lhu          t1, 13(sp)
                  lb           s5, 13(sp)
                  lb           s5, 8(sp)
                  lhu          s8, -5(sp)
                  lh           t4, -15(sp)
                  sb           a5, -4(sp)
                  xor          t3, a0, s6
                  lb           a7, 3(sp)
                  lh           s11, -3(sp)
                  sll          t3, s4, s3
                  lbu          s11, 11(sp)
                  sb           a0, 2(sp)
                  sh           t4, 13(sp)
                  lbu          s9, 3(sp)
                  sb           t6, -3(sp)
                  sra          a7, t2, s10
                  lb           s7, -6(sp)
                  sltiu        a0, a2, -1774
                  sb           s3, 2(sp)
                  lb           a0, 10(sp)
                  lh           a5, 5(sp)
                  lbu          s8, 7(sp) #end riscv_load_store_rand_instr_stream_0
                  bgeu         s6, a7, 20f
                  srli         a7, s9, 17
                  slt          t3, s0, a5
9:                and          a4, a7, a2
10:               srl          s9, a0, t6
                  auipc        t4, 850366
                  xor          s6, a6, s7
                  beq          a2, s2, 15f
                  beq          gp, s2, 15f
15:               srli         s10, a0, 25
                  bgeu         a5, s0, 18f
                  auipc        a2, 824028
18:               xori         sp, a3, 2028
                  sub          sp, t3, ra
20:               bgeu         a2, ra, 28f
                  sub          a2, s5, a0
                  ori          s11, gp, 1960
                  srli         s11, a0, 23
                  nop
                  nop
                  andi         s4, t6, -1750
                  ori          s6, a5, 2031
28:               or           s3, t5, s2
                  ori          s11, s9, 121
                  ori          a6, a2, -1962
                  or           a7, a6, t2
                  slti         s5, t2, -1858
                  xor          s7, t4, t1
                  xor          t5, t4, s9
                  addi         s0, ra, 1954
                  auipc        sp, 885612
                  bltu         ra, gp, 41f
                  beq          s5, t4, 56f
                  srl          s3, s0, a5
                  bltu         a7, s5, 53f
41:               sll          a2, s0, tp
                  bgeu         a1, s0, 62f
                  bge          s10, a4, 60f
                  ori          t1, a0, 700
                  bgeu         sp, s6, 59f
                  bgeu         s10, t0, 59f
                  bne          a7, a7, 58f
                  lui          t2, 320204
                  slt          s3, a2, a0
                  nop
                  sra          sp, s11, t4
                  slli         ra, a4, 2
53:               sll          a3, s7, gp
                  and          tp, gp, s11
                  bge          zero, s9, 65f
56:               srli         s6, a4, 30
                  srai         t4, t2, 16
58:               sll          s2, s0, a2
59:               sra          t4, t0, a2
60:               bge          s10, a2, 76f
                  beq          s0, t0, 76f
62:               bltu         t1, s2, 63f
63:               sra          a2, s6, s7
                  ori          s6, ra, 513
65:               xori         s9, a6, -1770
                  srli         s6, s2, 21
                  sub          a6, t1, s4
                  bgeu         t2, s2, 85f
                  srl          zero, a5, s11
                  nop
                  and          s4, a5, s7
                  bge          tp, a4, 89f
                  auipc        gp, 573598
                  lui          t4, 268504
                  srli         t1, s11, 24
76:               sra          zero, s4, t1
                  nop
                  srai         a4, s9, 30
                  and          s0, a4, a3
                  lui          s4, 366659
                  slt          s4, a3, a7
                  xor          s11, tp, s4
                  or           t5, s6, s7
                  srli         s7, t2, 6
85:               bltu         a4, ra, 89f
                  sltiu        s3, a4, -856
                  or           a0, s8, s11
                  auipc        s8, 686910
89:               slti         t5, s7, 1100
                  slti         s6, a3, 1194
                  lui          t1, 1018310
                  slli         a2, a4, 20
                  bge          s10, t2, 106f
                  srli         s2, s8, 12
                  auipc        s10, 432440
                  and          zero, t2, t3
                  srli         sp, s1, 13
                  bne          s5, s6, 106f
                  srl          s0, a0, sp
                  sub          a3, t1, ra
                  sltu         s1, zero, s9
                  slti         t4, sp, 345
                  lui          s2, 207282
                  slti         a5, s8, -1869
                  sll          t4, s2, t6
106:              sltu         s8, t0, s3
                  sltu         ra, ra, t2
                  or           s4, t1, t6
                  blt          a7, s7, 110f
110:              sltu         a4, s4, s10
                  slt          s2, a5, t1
                  auipc        s10, 823244
                  bltu         a3, t6, 115f
                  bltu         s10, t1, 131f
115:              srl          s9, s0, tp
                  bge          s3, s3, 122f
                  and          s0, s11, t0
                  srai         s5, a5, 13
                  or           t4, sp, t5
                  slti         s3, gp, -1216
                  xor          s0, t6, s1
122:              xor          t3, s3, zero
                  slt          s7, a6, t3
                  slti         sp, gp, -1231
                  srli         a7, a0, 23
                  beq          s0, a1, 139f
                  sra          s11, t2, t3
                  bgeu         sp, s0, 140f
                  blt          s10, s4, 131f
                  sltiu        t4, s10, 441
131:              ori          a0, t4, 518
                  bge          a0, s4, 149f
                  andi         a7, a3, -955
                  srai         s6, a4, 24
                  bge          zero, t6, 149f
                  bne          s4, t5, 150f
                  and          a3, a1, s3
                  la           s7, region_0+794 #start riscv_load_store_rand_instr_stream_1
                  sh           a7, 44(s7)
                  lb           ra, -37(s7)
                  sb           a5, -29(s7)
                  sb           ra, -53(s7)
                  ori          s0, a3, 1240
                  lbu          s10, 40(s7)
                  lh           s5, -28(s7)
                  slti         s3, t5, 381
                  lb           s9, 35(s7)
                  slti         zero, a4, -855
                  srl          t4, zero, s3
                  lb           s1, -23(s7)
                  xor          t3, s8, a3
                  auipc        s8, 540759
                  sb           gp, -46(s7)
                  sb           s2, -38(s7)
                  lbu          t1, 41(s7)
                  lb           s6, -47(s7)
                  sh           t4, 48(s7)
                  lb           t2, 11(s7)
                  ori          gp, t6, 1306
                  sb           s7, 36(s7)
                  lb           s0, 21(s7)
                  lbu          a3, 0(s7)
                  lhu          s8, -54(s7)
                  srai         a6, tp, 14
                  lbu          gp, -17(s7)
                  sw           s7, -26(s7)
                  sb           t6, 5(s7)
                  xori         a5, s6, -1601
                  or           s5, a0, s2
                  sh           t6, -12(s7)
                  lb           gp, 39(s7)
                  sb           s4, 13(s7)
                  lw           a7, -58(s7)
                  sb           t4, -52(s7)
                  sll          a3, s2, a4
                  and          zero, s8, s3
                  lb           s2, 35(s7)
                  and          s8, a6, t1
                  sb           t3, -32(s7) #end riscv_load_store_rand_instr_stream_1
                  andi         a7, a6, 522
139:              slli         s6, s11, 6
140:              and          s6, s10, a7
                  auipc        t2, 196619
                  nop
                  srli         s4, ra, 24
                  xori         a0, t5, -3
                  lui          tp, 830620
                  bge          a5, gp, 163f
                  bltu         a7, a2, 159f
                  addi         zero, a5, 1788
149:              srli         a2, s7, 29
150:              srai         a2, s1, 6
                  bltu         s3, zero, 168f
                  sltu         s10, a3, t0
                  beq          s11, s9, 154f
154:              bltu         s6, sp, 160f
                  srai         a7, s2, 27
                  add          a7, t5, a0
                  bltu         a3, s11, 170f
                  sra          a4, gp, a6
159:              srli         s5, zero, 30
160:              blt          ra, s4, 168f
                  sltu         gp, tp, s7
                  bgeu         t4, s9, 172f
163:              ori          ra, s1, -147
                  slti         s6, tp, -1432
                  slt          zero, t4, t6
                  sltiu        s3, zero, 1878
                  ori          t1, a4, 1615
168:              sltu         t3, gp, s2
                  sra          s4, s3, s1
170:              add          s9, a6, s9
                  sltu         a2, t5, s6
172:              andi         a2, a2, -481
                  slti         a7, a5, 1302
                  srli         s4, gp, 15
                  auipc        a0, 333781
                  bge          a4, zero, 194f
                  slli         s5, t5, 7
                  srai         t5, t4, 18
                  xori         a5, t1, -798
                  bgeu         zero, s4, 188f
                  auipc        t3, 798481
                  lui          ra, 1041224
                  sub          t2, a5, t0
                  sub          t4, a2, s1
                  bne          t3, a7, 196f
                  beq          s1, a4, 199f
                  auipc        a7, 995278
188:              sltiu        s5, zero, 1337
                  nop
                  sltiu        zero, a6, -175
                  nop
                  sltiu        s1, sp, 839
                  sub          s8, ra, s8
194:              addi         s0, s8, -1308
                  slli         a4, ra, 4
196:              sub          s0, a6, s9
                  lui          s1, 692294
                  sltiu        sp, s4, -619
199:              sltu         s6, t3, s6
                  lui          s8, 592065
                  sub          s10, t1, sp
                  auipc        s3, 697460
                  sltu         s9, a3, zero
                  srl          t1, t0, zero
                  sltu         tp, s2, sp
                  or           s3, ra, s3
                  bgeu         ra, gp, 208f
208:              srl          s10, s4, t3
                  sub          sp, a7, sp
                  or           s10, a4, t3
                  nop
                  srli         s3, a6, 30
                  sra          a5, gp, t2
                  sra          a3, a2, s10
                  or           s2, zero, t2
                  bne          t5, t3, 229f
                  sltiu        a6, a3, 2029
                  addi         s9, a6, -1785
                  andi         s6, sp, -1452
                  andi         t5, s4, 232
                  srl          s8, s3, t4
                  lui          a6, 416533
                  xori         a5, s4, -311
                  beq          ra, a7, 237f
                  slti         t5, s6, 1770
                  blt          a6, a1, 236f
                  xor          s7, t6, t5
                  srli         a5, t2, 9
229:              sltiu        zero, s3, 689
                  sltu         s11, tp, s10
                  srai         s5, t0, 20
                  sll          s7, s7, sp
                  xori         t5, s9, -847
                  ori          zero, a6, 1130
                  nop
236:              blt          a5, t0, 244f
237:              bge          t3, t1, 239f
                  bge          a5, s5, 255f
239:              sltu         s8, t0, sp
                  lui          s0, 177646
                  sub          t5, t2, t1
                  bgeu         sp, t3, 258f
                  or           s3, a5, s2
244:              add          a5, ra, t6
                  auipc        s9, 91782
                  bne          t2, s9, 258f
                  lui          ra, 285451
                  slti         a2, gp, -430
                  nop
                  andi         s9, s2, -1601
                  beq          a1, s6, 255f
                  slti         s9, t4, 1854
                  sll          s10, s4, a2
                  and          sp, s2, a0
255:              sltiu        tp, tp, -930
                  sltu         a5, s0, s6
                  nop
258:              sra          a2, zero, t2
                  srli         s5, a1, 15
                  nop
                  andi         s10, a1, -1774
                  lw           t1, 4(t0)
                  or           a4, s6, s5
                  sltiu        s4, s6, 988
                  addi         t0, t0, 32
                  addi         s9, a4, 1349
                  sltu         a2, ra, t2
                  addi         s6, t6, 456
352:              addi x1, x6, 1
352:              jalr x1, x1, 0
sub_4:            ori          t5, s1, 895
                  addi         t0, t0, -52
                  sra          t4, t3, zero
                  addi         gp, gp, -297
                  sra          t2, zero, a5
                  sw           t1, 4(t0)
                  sub          a2, ra, s9
                  srl          a3, t0, t2
                  lui          t2, 828555
                  la           s1, sub_5
                  sltiu        t5, s6, -881
                  sll          a6, a6, t6
                  sltiu        t5, a5, -1060
                  andi         s11, a1, 735
                  ori          t1, s7, -62
                  addi         s1, s1, 270
                  sltu         a3, t6, t6
                  slli         ra, a2, 13
                  bgeu         t4, s5, sub_4_j5 #branch to jump instr
                  slli         s7, a2, 1
                  xor          s9, t6, s5
sub_4_j5:         jalr         t1, s1, -269 #jump sub_4 -> sub_5
                  beq          t5, s7, 1f
1:                andi         t3, t1, -758
                  andi         zero, a5, 1427
                  blt          a0, sp, 13f
                  beq          gp, sp, 13f
                  nop
                  srai         s2, a6, 1
                  sll          s10, a1, s6
                  ori          a4, s3, 366
                  sra          t2, t6, t2
                  bne          gp, a0, 17f
                  sll          s4, t0, t3
                  slli         a2, s4, 12
13:               andi         s7, a5, 134
                  bltu         t6, s0, 31f
                  blt          a3, s10, 23f
                  sub          a5, t0, a0
17:               or           s6, t4, a6
                  xor          s3, tp, ra
                  bltu         s2, a7, 29f
                  bne          s10, a1, 29f
                  andi         gp, s7, -1067
                  bge          s4, s8, 32f
23:               blt          s8, s3, 29f
                  xor          a6, s6, a4
                  andi         s2, ra, -945
                  srai         s3, s8, 24
                  srli         t1, a2, 13
                  sltu         sp, a4, t1
29:               andi         s9, a6, -873
                  blt          gp, a4, 31f
31:               or           s11, s11, s5
32:               xori         ra, t4, 2021
                  sll          s8, s9, s5
                  lw           t1, 4(t0)
                  addi         t0, t0, 52
                  sra          s5, s8, ra
                  and          gp, s10, t0
                  srli         tp, a4, 19
                  sra          a2, s5, t3
                  slt          s3, t3, t3
63:               addi x19, x6, 1
63:               jalr x19, x19, 0
sub_8:            lui          s7, 372273
                  add          s2, s6, a1
                  andi         s2, a0, -150
                  sll          t3, a6, a1
                  bgeu         s1, sp, sub_8_stack_p
                  addi         sp, a4, 89
                  sub          sp, a1, t4
                  srli         s1, s7, 26
sub_8_stack_p:    addi         t0, t0, -48
                  srl          a6, s10, a5
                  auipc        s11, 23429
                  sw           t1, 4(t0)
                  srai         ra, t3, 2
                  la           sp, region_0+1582 #start riscv_load_store_rand_instr_stream_5
                  sltiu        ra, s9, -1379
                  lbu          s7, -92(sp)
                  sra          s4, ra, s3
                  lb           a4, 199(sp)
                  slli         ra, ra, 18
                  srl          s5, a5, a4
                  lb           t3, -195(sp)
                  slt          s0, s1, s3
                  srl          t4, s0, t6
                  lb           t3, -25(sp)
                  xori         a6, sp, -34
                  lw           s9, -30(sp)
                  sltu         s10, a6, s5
                  and          a5, s6, s1
                  ori          s5, a3, -1452
                  srai         a0, a1, 22
                  slti         a4, zero, -1839
                  sub          s3, s10, s6
                  sh           a4, 234(sp)
                  and          s3, s2, gp
                  slt          a2, ra, t0
                  sb           a4, 190(sp)
                  slti         zero, a6, 1665
                  lb           s7, -125(sp)
                  add          t3, t2, t5
                  auipc        s10, 100028
                  auipc        s10, 371019
                  sb           a7, 163(sp)
                  slt          a3, a4, sp
                  sb           t0, 223(sp)
                  xor          a2, s2, s11
                  sub          t1, a5, a1
                  sb           a6, -238(sp)
                  nop
                  auipc        zero, 378928
                  lb           s11, 88(sp)
                  slt          a6, a3, a6
                  slti         s11, a3, 211
                  srai         a0, s4, 11
                  lb           s6, -9(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s4, region_0+1357 #start riscv_load_store_rand_instr_stream_10
                  srai         s11, s7, 28
                  srl          ra, tp, a5
                  lb           a3, 41(s4)
                  lb           a3, -70(s4)
                  andi         s0, a4, -511
                  srl          t1, s2, a3
                  slti         s0, a5, 17
                  lh           t5, -35(s4)
                  lb           zero, -52(s4)
                  lb           s8, -204(s4)
                  andi         gp, gp, -1590
                  lui          s0, 743673
                  sb           s11, -64(s4)
                  addi         s0, a4, -672
                  sb           t1, 154(s4)
                  sb           a7, 227(s4)
                  sll          sp, s4, a0
                  auipc        a3, 46201
                  addi         a0, a5, 950
                  sb           sp, 208(s4)
                  xor          s9, t3, s4
                  lbu          s7, -205(s4)
                  lbu          s2, -122(s4)
                  sb           s4, -28(s4)
                  sb           s10, -149(s4)
                  sb           a6, -9(s4)
                  sw           a0, -161(s4)
                  sltu         s1, t6, tp
                  lbu          ra, 219(s4)
                  or           tp, t0, a3
                  lb           a5, -142(s4)
                  add          t2, s3, a6
                  lui          ra, 98351
                  srli         a0, t2, 29
                  lb           s8, -185(s4)
                  lbu          s11, 202(s4)
                  sltiu        zero, a3, -1650
                  lb           a4, -186(s4)
                  ori          s6, a7, 1244
                  xor          t1, s10, s8
                  sb           s1, -106(s4)
                  add          a4, t6, t4
                  or           gp, s1, a4
                  sb           t2, 256(s4)
                  lhu          a3, 117(s4)
                  sb           s3, 109(s4)
                  and          t2, a5, t1
                  lh           a3, 95(s4)
                  lb           zero, 152(s4)
                  lh           a3, 145(s4)
                  ori          gp, s6, 1443
                  sb           a4, 166(s4)
                  lh           a5, -185(s4)
                  lb           a7, 46(s4) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+709 #start riscv_load_store_rand_instr_stream_11
                  slti         s10, t1, -45
                  sw           a5, -1(sp)
                  addi         s1, s9, 1672
                  lb           s2, 61(sp)
                  xori         a4, t5, 329
                  lb           a3, -60(sp)
                  lhu          zero, -25(sp)
                  sb           s10, 44(sp)
                  or           a6, s3, a4
                  sb           a4, 48(sp)
                  slli         gp, zero, 12
                  auipc        s11, 688038
                  andi         ra, gp, 332
                  lb           t4, -58(sp)
                  sb           t6, -18(sp)
                  slt          a3, t5, s0
                  sb           sp, -11(sp)
                  sb           s11, 50(sp)
                  sw           t6, 35(sp)
                  srli         tp, t3, 27
                  lbu          s10, -10(sp)
                  and          s9, t1, s8
                  andi         s5, t6, 914
                  lb           s9, -30(sp)
                  sh           s9, 5(sp)
                  ori          tp, s7, 1143
                  sb           s10, 56(sp)
                  sltu         s4, s11, t3
                  add          a2, a7, s6
                  lw           s7, 23(sp)
                  sb           a7, -34(sp)
                  lb           t1, 34(sp)
                  lbu          s9, -33(sp)
                  lb           t5, -52(sp)
                  sw           s11, 39(sp)
                  sb           s10, -6(sp)
                  lb           t5, 30(sp)
                  auipc        t3, 726780
                  srl          tp, s2, sp
                  lw           s3, 27(sp)
                  lb           a3, 5(sp)
                  sb           s6, 32(sp)
                  lb           t3, -40(sp) #end riscv_load_store_rand_instr_stream_11
                  la           a2, region_0+1305 #start riscv_load_store_rand_instr_stream_12
                  sra          t5, t2, s0
                  slli         ra, s0, 9
                  xor          s4, s11, t3
                  lh           t2, 1(a2)
                  sltiu        sp, t5, -1077
                  lui          a5, 1014424
                  srli         t4, a0, 30
                  lhu          s0, 21(a2)
                  sb           s10, -24(a2)
                  sb           tp, -46(a2)
                  sra          s5, t1, s6
                  lui          a6, 964237
                  lbu          s3, -60(a2)
                  sw           a4, -25(a2)
                  sra          s8, zero, s6
                  sb           t1, 37(a2)
                  xor          a7, t6, s2
                  sb           a7, 37(a2)
                  lbu          t2, -6(a2)
                  sb           s4, 26(a2)
                  xori         a0, a6, -1066
                  sll          zero, t2, a0
                  sll          t5, s3, gp
                  slti         t3, s9, -2024
                  lbu          a3, 57(a2)
                  lbu          s1, 25(a2)
                  or           gp, t1, s6
                  srai         s8, s1, 11
                  lhu          t5, 37(a2)
                  srli         t5, s9, 29
                  addi         gp, s0, 1787
                  srli         s6, s4, 30
                  sb           a5, 48(a2)
                  lbu          t4, -28(a2)
                  addi         s3, tp, -1844
                  sw           t6, 39(a2)
                  lbu          t1, -26(a2)
                  lb           s3, 34(a2)
                  lh           s5, -53(a2)
                  lbu          a7, 36(a2)
                  lhu          a6, -13(a2)
                  xor          s5, s1, t1
                  sb           a1, -63(a2)
                  auipc        s8, 896285
                  sll          t1, s4, s3
                  sltu         s10, s5, s7
                  lhu          ra, -3(a2)
                  nop
                  lbu          a0, 32(a2)
                  and          s9, a2, a3
                  xor          t5, a7, t4
                  lbu          s6, 53(a2)
                  sll          s5, s4, a4
                  sb           s8, -18(a2)
                  lb           t4, 38(a2)
                  lbu          t4, -38(a2)
                  slt          s8, t3, a0
                  lh           s7, -57(a2) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+453 #start riscv_load_store_rand_instr_stream_0
                  addi         s6, sp, 795
                  lh           s3, -103(sp)
                  sb           t4, -18(sp)
                  lbu          t4, 42(sp)
                  xor          zero, s9, a7
                  slt          a6, s4, a5
                  andi         t2, t2, -658
                  srl          t4, a2, gp
                  srai         s7, s3, 8
                  lbu          tp, -88(sp)
                  xori         s5, t3, 1184
                  sb           t2, 143(sp)
                  lbu          s4, -192(sp)
                  lh           a0, 185(sp)
                  slti         tp, s11, -1127
                  lw           a2, 31(sp)
                  sb           t2, -48(sp)
                  sb           a5, 240(sp)
                  lui          s5, 115126
                  sltu         t2, t0, a3
                  xor          s2, t2, s0
                  sb           s10, -27(sp)
                  xori         s9, s3, -29
                  lbu          s6, -162(sp)
                  lbu          s0, -169(sp)
                  lbu          t4, 142(sp)
                  nop
                  lb           a0, -2(sp)
                  lb           ra, 47(sp)
                  sh           s8, 93(sp)
                  srl          s10, s9, s11
                  ori          a5, s8, -654
                  lbu          tp, 225(sp)
                  sltiu        s7, s5, 1873
                  sra          a2, ra, a4
                  nop
                  sb           s1, -64(sp)
                  lhu          t1, 243(sp)
                  xori         a3, a2, 353
                  lb           t2, -204(sp)
                  srli         s7, t5, 1
                  sltu         t3, s10, a1
                  sll          gp, s4, s8
                  lbu          t4, -34(sp)
                  sb           t5, 49(sp)
                  lh           t5, -45(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1056 #start riscv_load_store_rand_instr_stream_8
                  addi         a2, a4, -574
                  slli         s1, ra, 10
                  lbu          gp, -997(sp)
                  sltiu        s11, s6, -743
                  lhu          s7, -990(sp)
                  auipc        a4, 851329
                  andi         t4, ra, -284
                  sltiu        s7, a4, -1087
                  lbu          t3, 913(sp)
                  lhu          s3, 552(sp)
                  sltu         t2, t1, t3
                  slti         s2, gp, 2020
                  srl          s9, s5, s4
                  ori          s8, s1, -1617
                  slti         t1, a5, -185
                  ori          s5, s10, 374
                  sltiu        t5, t1, 1916
                  sltu         s1, a2, t4
                  sltiu        s3, zero, 295
                  sb           a7, 119(sp)
                  lhu          s9, -818(sp)
                  lh           s5, -708(sp)
                  lhu          t4, 386(sp)
                  nop
                  and          ra, a4, t5
                  sb           a4, 7(sp)
                  lb           s10, 121(sp)
                  sltu         t3, s3, zero
                  or           a2, ra, s1
                  srli         a3, t0, 17
                  xori         a0, s0, -1373
                  ori          ra, s2, -563
                  add          a2, ra, a2
                  xor          s6, s5, a2
                  slt          zero, a1, s2
                  sb           a1, 794(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s4, region_0+1055 #start riscv_load_store_rand_instr_stream_7
                  add          tp, t5, t5
                  lh           s3, -13(s4)
                  sub          s8, s11, t4
                  sltu         a7, s2, a6
                  and          a7, t0, s3
                  xor          a7, t6, s10
                  slti         t1, ra, -1538
                  srai         a3, tp, 14
                  addi         a3, zero, 1751
                  sll          a0, t6, t0
                  srai         s11, t2, 13
                  lbu          t3, 50(s4)
                  srli         s0, zero, 5
                  sh           s6, 23(s4)
                  sltiu        a0, s11, 973
                  or           sp, s8, a1
                  sb           s3, 1(s4)
                  lb           gp, -5(s4)
                  slli         ra, s9, 27
                  srl          gp, a7, a5
                  lb           t4, 44(s4)
                  sll          s1, a3, t2
                  ori          a2, s10, 77
                  andi         s9, tp, -631
                  lhu          t3, 31(s4)
                  sb           a0, 39(s4)
                  or           s6, s5, a0
                  sb           a4, -43(s4)
                  sll          gp, t1, s7
                  lb           t3, 5(s4) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1281 #start riscv_load_store_rand_instr_stream_2
                  ori          s0, t3, -331
                  lb           s3, 40(sp)
                  sb           a2, -58(sp)
                  add          a2, s9, tp
                  lbu          s4, -60(sp)
                  lb           t1, -4(sp)
                  lbu          t5, 19(sp)
                  xor          s6, t5, a2
                  slli         s0, s1, 4
                  lb           a3, -23(sp)
                  sb           t5, -20(sp)
                  addi         a6, sp, -27
                  xor          a2, tp, t3
                  slti         t1, s5, 1928
                  lh           t3, 9(sp)
                  slti         zero, t6, 1826
                  sh           t6, 1(sp)
                  sh           t4, 47(sp)
                  lb           a5, -6(sp)
                  sb           a3, 4(sp)
                  slti         s0, t1, -1957
                  lh           t4, -51(sp)
                  auipc        t4, 382487
                  lb           s0, 12(sp)
                  sltiu        s2, t5, -249
                  lbu          s9, -22(sp)
                  slt          s5, ra, a5
                  lb           s6, -9(sp)
                  lbu          t4, 46(sp)
                  lb           s7, 30(sp)
                  sltiu        zero, s2, -578
                  lbu          s10, 48(sp)
                  lui          a0, 317455
                  lb           a2, -25(sp)
                  xori         t3, a1, -1683
                  andi         a0, a7, -1648
                  and          s7, s6, t4
                  sw           s7, -33(sp)
                  andi         a2, t4, 2033
                  lhu          ra, -57(sp)
                  srai         s11, s4, 6
                  nop
                  sb           t2, -26(sp)
                  lhu          s3, 15(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         zero, s10, 19
                  add          sp, tp, zero
                  bltu         t5, zero, 14f
                  xori         a6, t0, -898
                  nop
                  xori         tp, s0, -1091
                  slt          s9, s7, t6
                  andi         a3, t3, -122
                  bne          s9, a2, 24f
                  bge          t2, a6, 16f
                  slti         t4, t5, -1193
                  bltu         s1, gp, 22f
                  lui          zero, 383459
                  or           a2, zero, a4
14:               ori          sp, t2, 1967
                  beq          a3, s10, 34f
16:               beq          t2, s5, 25f
                  sll          s5, a3, a2
                  bge          s7, a2, 33f
                  sll          s11, zero, s5
                  or           s2, a4, a1
                  bgeu         s10, s4, 23f
22:               sll          s11, a0, s8
23:               andi         sp, s3, 1210
24:               and          s8, a2, a5
25:               xori         tp, t6, 1322
                  auipc        gp, 735125
                  bltu         s1, s9, 37f
                  auipc        s9, 804772
                  srli         gp, a6, 19
                  bge          a6, a4, 36f
                  xor          a4, a6, t3
                  la           s7, region_1+218 #start riscv_load_store_rand_instr_stream_3
                  lb           s5, 11(s7)
                  sltiu        t1, s5, -1855
                  lbu          zero, -4(s7)
                  xori         s1, s6, 1397
                  andi         a3, a3, 242
                  lb           ra, 14(s7)
                  srli         s5, tp, 6
                  slti         s8, a0, -486
                  lh           s3, 8(s7)
                  lui          zero, 990669
                  lb           a2, 5(s7)
                  sra          s6, s1, s4
                  sub          s0, a1, t4
                  lbu          gp, 11(s7)
                  srli         a0, a4, 22
                  sb           s5, 8(s7)
                  lb           s11, 4(s7)
                  ori          s11, s9, -643
                  slti         a3, s9, 753
                  andi         s2, s9, 785
                  sltiu        t5, s11, -15
                  nop
                  lui          a6, 363021
                  add          a6, s6, ra
                  slli         gp, a6, 20
                  lw           tp, -10(s7)
                  sb           t2, -5(s7)
                  sra          a5, s10, s2
                  addi         s10, s1, 975
                  sb           a3, 7(s7)
                  lbu          s1, -15(s7)
                  srl          t1, a2, s7
                  nop
                  sltu         t3, a0, s1
                  sub          sp, a4, a4
                  lb           s9, 13(s7)
                  sub          a2, a3, s10
                  sltu         sp, s3, t6
                  or           a7, s5, s6
                  sh           sp, -12(s7)
                  lui          tp, 996221
                  srli         a2, s8, 8
                  srli         a0, s5, 29
                  nop
                  lbu          t1, -6(s7)
                  sh           a7, -14(s7) #end riscv_load_store_rand_instr_stream_3
                  slli         gp, s3, 31
33:               nop
34:               lui          a7, 226161
                  nop
36:               auipc        s7, 454966
37:               andi         a3, ra, 732
                  sltu         s3, t3, t0
                  srli         t3, t3, 29
                  srai         s9, s3, 22
                  blt          a3, gp, 50f
                  beq          a4, s7, 61f
                  auipc        sp, 791144
                  xor          tp, s0, a6
                  bge          t6, a2, 65f
                  beq          s10, tp, 65f
                  bgeu         a4, gp, 63f
                  sub          s5, a1, t3
                  addi         s5, s0, -158
50:               andi         ra, s5, 1812
                  sll          s0, sp, s4
                  andi         tp, s9, 653
                  xori         s9, t0, -1333
                  ori          t2, s0, 1592
                  xori         s5, tp, 300
                  beq          t0, a0, 59f
                  auipc        s0, 340792
                  or           a0, t1, a7
59:               srli         tp, t6, 7
                  srl          s10, s11, t1
61:               blt          t2, s5, 62f
62:               sra          s5, t6, s6
63:               blt          s3, s0, 67f
                  addi         a0, s4, -195
65:               bltu         a7, s2, 82f
                  sll          s0, sp, t1
67:               sltiu        a4, s9, 456
                  slti         a7, s11, 171
                  and          a2, a3, tp
                  sltu         a3, a2, t5
                  slt          s4, s2, s9
                  bgeu         s8, t1, 87f
                  bne          s7, a6, 90f
                  and          t3, s1, zero
                  lui          a5, 66049
                  sra          a6, a5, t6
                  sra          a0, t6, sp
                  auipc        s0, 1035531
                  add          s1, t2, t5
                  blt          gp, t0, 88f
                  bge          a2, zero, 88f
82:               and          s4, s11, t6
                  srli         s10, s4, 20
                  blt          a0, t1, 94f
                  sra          a5, s2, a4
                  sub          s8, a6, tp
87:               srai         a2, zero, 3
88:               bgeu         t4, s1, 105f
                  sll          s4, a5, s6
90:               or           s5, a4, a7
                  srai         a0, a4, 28
                  bgeu         tp, s8, 95f
                  xori         sp, s3, -1828
94:               auipc        a7, 435224
95:               lui          a2, 995668
                  srli         a3, s4, 12
                  sra          s7, t4, sp
                  srli         s7, s7, 13
                  sll          t2, a2, s4
                  slti         s8, a5, -414
                  sra          a6, t1, a1
                  nop
                  srl          a7, sp, a7
                  auipc        a4, 402759
105:              srl          a6, s3, s3
                  or           a3, a5, t1
                  sll          ra, gp, t1
                  andi         a0, s8, 579
                  auipc        s7, 957078
                  auipc        t2, 77688
                  andi         s7, a4, -1730
                  srl          s8, a5, s6
                  ori          gp, s6, -693
                  beq          t2, s7, 119f
                  blt          s6, s8, 129f
                  blt          t3, t5, 122f
                  add          s6, a2, s8
                  addi         t1, gp, 1745
119:              xor          s11, s1, a4
                  sra          s3, t2, t5
                  sub          s8, zero, sp
122:              add          s6, a1, s2
                  sltiu        a4, s11, 1856
                  srai         t2, s1, 24
                  add          ra, a3, a5
                  bne          t5, a3, 143f
                  blt          t3, a6, 130f
                  lui          s8, 554354
129:              slli         s1, a3, 8
130:              xor          t5, sp, s0
                  xor          zero, a0, a7
                  auipc        a4, 578402
                  ori          s11, a3, -946
                  bge          t5, a4, 151f
                  xor          t4, s0, s0
                  ori          t5, s3, 720
                  bne          a4, t1, 139f
                  la           sp, region_1+203 #start riscv_load_store_rand_instr_stream_4
                  lbu          s5, -36(sp)
                  ori          s10, a1, -427
                  srai         a7, s7, 18
                  addi         s5, s6, -895
                  lbu          t2, -41(sp)
                  or           s4, s2, zero
                  slli         s2, zero, 8
                  lb           s1, -40(sp)
                  lb           gp, -40(sp)
                  lb           s3, 48(sp)
                  lb           t5, -22(sp)
                  lh           a2, 27(sp)
                  srai         s1, sp, 31
                  addi         a6, s10, 1733
                  sub          a5, a1, s10
                  lb           t2, -8(sp)
                  xori         s2, a0, 2039
                  lh           s3, -63(sp)
                  sb           a0, -14(sp)
                  sltu         tp, t0, a1
                  lb           s11, -60(sp)
                  xor          a5, t3, s11
                  or           ra, s10, sp
                  andi         a0, sp, -1642
                  lhu          s8, 57(sp) #end riscv_load_store_rand_instr_stream_4
                  and          a5, a2, s5
139:              ori          a3, a6, -599
                  xor          a6, s6, s11
                  auipc        a2, 104086
                  srli         s4, sp, 7
143:              sra          t5, s2, t5
                  slti         sp, a4, -791
                  sub          s4, s5, s3
                  ori          a3, s4, 1797
                  srli         a6, s2, 30
                  slt          t5, t1, s5
                  slli         t2, s11, 25
                  blt          a4, a0, 169f
151:              srli         s2, t1, 24
                  bge          t5, gp, 159f
                  sll          t3, gp, a5
                  andi         s10, tp, -507
                  bge          a7, a2, 174f
                  sltu         zero, t2, tp
                  bltu         a0, t6, 174f
                  sltu         a2, tp, zero
159:              add          s0, t2, s2
                  sra          s10, t6, a3
                  slli         a3, zero, 28
                  auipc        a2, 120990
                  lui          ra, 215209
                  xori         sp, a4, -1472
                  andi         a4, a5, 380
                  or           s11, tp, a3
                  slti         s1, t0, -1129
                  bne          s5, t3, 184f
169:              bne          s3, sp, 175f
                  auipc        t4, 903332
                  bne          t0, tp, 183f
                  bltu         s4, t4, 181f
                  bgeu         a7, gp, 174f
174:              sub          gp, s2, s5
175:              bltu         s11, s5, 184f
                  bne          s4, t3, 190f
                  beq          s5, s9, 193f
                  and          a2, t4, sp
                  auipc        s10, 366284
                  sltu         t4, t6, t2
181:              nop
                  beq          s2, zero, 193f
183:              bltu         s9, a3, 193f
184:              auipc        s4, 573350
                  or           a7, a5, t3
                  blt          s7, s10, 192f
                  beq          a3, s1, 207f
                  bge          t6, s8, 203f
                  sra          s11, s1, s11
190:              sub          s9, s6, a7
                  srai         a5, s9, 8
192:              sra          t2, a5, a0
193:              and          a0, zero, s4
                  sltu         s10, a6, a7
                  slt          s0, s5, s3
                  xor          a0, t6, tp
                  srl          s1, t4, s3
                  srl          zero, s8, a7
                  srl          ra, t1, a5
                  nop
                  xori         a0, s0, 580
                  bge          sp, s0, 206f
203:              slli         t3, a5, 1
                  nop
                  slli         s9, s2, 9
206:              srli         s1, s11, 5
207:              slli         s11, s3, 25
                  srl          t2, a2, a5
                  slti         a0, s10, -2043
                  srl          a2, ra, t1
                  addi         t2, ra, -1937
                  nop
                  xor          a6, s0, s8
                  sltu         s2, gp, a2
                  slt          s11, s1, s0
                  sltiu        t2, t3, -1861
                  srai         a6, t1, 22
                  ori          s0, a3, -1238
                  lui          s8, 256482
                  bgeu         t3, t5, 227f
                  xor          a4, s7, s8
                  sub          a6, s4, s1
                  sra          a2, a3, zero
                  bge          s10, ra, 234f
                  slt          a3, s6, t3
                  and          s3, s0, s0
227:              xor          t2, s9, a2
                  srai         s4, s1, 7
                  bgeu         zero, s8, 232f
                  add          t3, a3, t2
                  sub          s7, a4, tp
232:              slti         s8, tp, -1835
                  sra          a7, t1, ra
234:              blt          tp, s2, 249f
                  lui          s11, 62357
                  xor          s3, tp, s10
                  bltu         t1, s8, 256f
                  srai         s5, t4, 30
                  sra          zero, s5, s1
                  ori          s2, s5, -1247
                  bge          s0, a7, 258f
                  xori         s8, t6, 836
                  beq          t4, t3, 260f
                  beq          t0, s9, 252f
                  and          t5, s5, a4
                  slt          s7, zero, s7
                  bne          a6, sp, 252f
                  sra          a7, s6, s11
249:              blt          s7, s3, 255f
                  srl          a5, s8, a5
                  srai         s6, s10, 17
252:              slli         a6, s3, 13
                  slt          a2, a4, t4
                  slti         gp, ra, 425
255:              slt          a3, a7, t2
256:              xori         tp, s5, -693
                  or           s5, zero, a5
258:              sub          s6, a5, s5
                  bltu         t2, s8, 260f
260:              add          a5, tp, a4
                  bgeu         t3, gp, 271f
                  sra          sp, t2, s5
                  sll          s4, t4, s1
                  bgeu         s3, s7, 280f
                  slli         t2, a7, 1
                  sltu         a3, a3, s11
                  beq          s1, a1, 273f
                  srli         s7, sp, 12
                  or           s11, a0, zero
                  andi         s2, a4, 810
271:              bltu         s7, a6, 273f
                  lui          gp, 536323
273:              blt          s6, s2, 287f
                  slti         s4, t3, 424
                  xor          t1, s10, t5
                  srl          tp, zero, a5
                  xori         s9, ra, 1617
                  slt          t1, t5, t6
                  slt          a5, tp, t0
280:              bne          s8, s9, 290f
                  sra          s7, a1, t6
                  sltiu        ra, s7, 536
                  srli         s9, gp, 1
                  sll          a4, s1, tp
                  xor          t1, s0, s11
                  or           t2, s1, sp
287:              andi         t4, t3, -1282
                  slti         a3, a4, -1303
                  sltiu        t3, t0, -1906
290:              sll          gp, s0, s2
                  srl          s2, s8, a2
                  bge          s10, s3, 295f
                  add          s11, t6, a1
                  bltu         t5, t4, 303f
295:              nop
                  nop
                  slt          s4, ra, a6
                  bne          t6, s10, 317f
                  beq          a2, t4, 316f
                  beq          a3, a5, 311f
                  lui          t1, 709189
                  blt          t2, s9, 317f
303:              blt          t2, a5, 319f
                  xori         t2, s11, 1263
                  lui          a4, 395268
                  bne          s0, t1, 325f
                  srl          t3, t6, s8
                  and          s7, s6, s8
                  sll          s0, t3, a7
                  sltiu        t2, a5, 981
311:              sltiu        s8, s0, 196
                  addi         a6, s8, -621
                  slt          a7, s1, s4
                  srli         gp, gp, 3
                  sra          s7, gp, a1
316:              slli         sp, t0, 2
317:              slli         s10, sp, 1
                  bge          a1, t0, 330f
319:              ori          s3, a0, 1473
                  ori          s3, s6, -1451
                  xori         a2, gp, -968
                  andi         t4, t3, -32
                  bgeu         t4, a1, 332f
                  nop
325:              and          a7, s4, s1
                  and          s5, a4, a3
                  sltu         t5, s9, s8
                  xori         s8, s4, 785
                  slli         a3, a1, 13
330:              slti         t2, t6, 1023
                  nop
332:              add          sp, s9, s3
                  or           a7, t6, a6
                  slti         s6, sp, 679
                  lui          t3, 428929
                  bltu         gp, t5, 339f
                  slt          s3, tp, gp
                  srai         s0, a2, 29
339:              srl          s2, s8, t3
                  bgeu         ra, a0, 357f
                  slt          s4, s3, gp
                  sub          t4, s4, gp
                  addi         s9, tp, 1405
                  lui          t3, 795137
                  srli         s2, t2, 12
                  sra          s7, s5, t1
                  nop
                  srai         s0, a6, 29
                  slt          ra, a4, s6
                  add          zero, s2, s9
                  nop
                  slt          t3, a3, s0
                  srli         sp, s9, 8
                  bne          tp, t0, 361f
                  beq          t0, zero, 360f
                  sub          a5, s4, a5
357:              bgeu         s9, tp, 364f
                  bne          a2, a0, 377f
                  srli         s3, a3, 18
360:              auipc        s11, 517252
361:              xor          zero, a0, t1
                  slti         s7, a6, -444
                  bgeu         s4, t1, 380f
364:              sub          t2, a4, t0
                  srl          s0, gp, t3
                  bgeu         s6, a3, 374f
                  srai         s1, sp, 10
                  srli         a2, s6, 26
                  and          s2, s7, t5
                  srai         s2, t0, 15
                  xor          s8, s3, t6
                  bltu         zero, a0, 389f
                  sltu         gp, s10, a6
374:              sltiu        a7, t6, -1803
                  la           s6, region_1+1865 #start riscv_load_store_rand_instr_stream_9
                  sltiu        t3, gp, 642
                  lb           s10, -14(s6)
                  lw           a6, 15(s6)
                  sub          zero, a7, s6
                  lbu          a3, -10(s6)
                  sh           t6, 5(s6)
                  nop
                  and          s2, s9, a6
                  sh           a0, 5(s6)
                  or           sp, s6, sp
                  lb           gp, -5(s6)
                  lbu          tp, -6(s6)
                  lb           t1, 10(s6)
                  slli         s0, t6, 13
                  lbu          t3, -8(s6)
                  sb           ra, 5(s6)
                  sb           s0, 12(s6)
                  xor          s10, s10, s10
                  lhu          t2, -3(s6)
                  addi         s9, s2, -1238
                  srai         s3, t6, 16
                  lbu          a2, -4(s6)
                  xori         s5, t3, -1728
                  lb           t4, 16(s6)
                  lhu          gp, -9(s6)
                  lui          tp, 761104
                  lh           a3, 13(s6)
                  sb           gp, 14(s6)
                  sb           a5, -15(s6)
                  sb           s6, 8(s6)
                  slli         tp, t4, 9
                  xor          a4, s11, t2
                  or           s2, a6, s10
                  sb           s4, -6(s6)
                  xori         a7, a2, 766
                  lh           sp, 11(s6)
                  sh           zero, 11(s6)
                  sb           s9, -1(s6)
                  slt          s11, s3, t6
                  sltiu        s7, a5, -1689
                  sltiu        zero, gp, 1158
                  slti         t1, a6, -397
                  sb           sp, -7(s6)
                  lb           s11, 13(s6)
                  lui          a6, 589118
                  lhu          s3, 3(s6)
                  lw           s9, 7(s6)
                  lb           ra, -9(s6)
                  lb           s11, -8(s6) #end riscv_load_store_rand_instr_stream_9
                  blt          a7, s5, 390f
                  srli         ra, a2, 15
377:              xori         s2, a5, -1133
                  add          s1, s5, t1
                  blt          s9, t3, 383f
380:              sub          t5, a6, t2
                  bge          t6, s9, 401f
                  andi         a4, t1, -302
383:              bge          ra, a6, 397f
                  sll          t1, t0, s6
                  lui          s10, 440471
                  sltu         a3, t6, a3
                  sub          s10, a7, a4
                  bltu         a6, s8, 405f
389:              addi         a5, s0, 76
390:              andi         ra, zero, -2045
                  or           s10, s8, s2
                  sra          a3, t3, s7
                  xor          a5, s5, zero
                  and          s3, gp, s3
                  addi         t1, a3, 217
                  sll          a2, s6, s4
397:              slti         a7, a7, 1621
                  srai         ra, s1, 8
                  bne          a6, s9, 406f
                  sltu         a0, t3, t0
401:              sra          s8, t0, s4
                  sub          a4, t4, s1
                  beq          s0, t0, 404f
404:              sltiu        t3, t5, 1318
405:              bgeu         s7, s2, 424f
406:              sltiu        a0, s3, 55
                  blt          a6, s10, 424f
                  beq          s1, zero, 411f
                  sll          a4, a5, s9
                  srli         s6, s6, 18
411:              sub          s10, s0, a0
                  sltu         a0, a2, ra
                  nop
                  andi         t5, s0, -694
                  or           s6, sp, t5
                  bne          t5, s10, 436f
                  xori         s11, s11, -748
                  srai         s1, t4, 11
                  sub          s6, s2, a6
                  beq          s0, s3, 422f
                  sll          t3, s2, s9
422:              slli         s3, tp, 20
                  andi         s6, s3, -2034
424:              addi         s1, a6, -1414
                  slti         s0, gp, 556
                  srai         s5, a4, 22
                  srl          a2, s1, a7
                  ori          s1, s7, 1765
                  bne          t0, t0, 432f
                  sll          t3, a3, s3
                  srl          ra, gp, s2
432:              or           tp, t3, t2
                  sra          t2, s7, s2
                  or           a0, ra, s6
                  andi         t1, ra, -1502
436:              or           s7, t1, gp
                  sub          a3, s8, a4
                  or           t5, zero, s7
                  addi         s9, s10, -444
                  sll          a2, ra, a0
                  sll          a7, s2, s4
                  bge          a5, t5, 461f
                  srli         a0, s4, 11
                  andi         a6, t1, -1296
                  ori          a7, a4, -792
                  addi         t2, a6, -1686
                  auipc        a3, 103405
                  nop
                  andi         a4, a3, -570
                  nop
                  bge          ra, s3, 461f
                  addi         a2, a5, -1453
                  srl          t5, zero, t2
                  xori         s3, t0, -48
                  srli         a2, s5, 12
                  sltiu        a7, s6, 501
                  ori          t4, zero, 618
                  addi         a5, a6, 306
                  sltu         s1, s1, s2
                  bgeu         s6, t5, 476f
461:              srai         s4, t2, 5
                  add          s2, t0, a2
                  sltu         s2, a3, s9
                  and          a0, t1, ra
                  slti         s6, s0, 261
                  slli         t4, s2, 9
                  sltu         t3, s9, s11
                  sll          t1, t1, a2
                  sltu         s2, a1, s4
                  bltu         s7, t1, 485f
                  sltu         s2, t2, tp
                  beq          s3, t0, 479f
                  bltu         s2, a4, 482f
                  addi         s5, t4, -1407
                  nop
476:              slli         a3, tp, 26
                  add          s7, s10, s0
                  sub          zero, a0, s5
479:              ori          s6, s1, 439
                  slli         s5, sp, 5
                  auipc        a7, 810217
482:              blt          s0, s5, 498f
                  beq          t5, t0, 502f
                  xori         a2, zero, 620
485:              or           s2, t4, s0
                  sltiu        s3, t6, 1261
                  blt          s0, a3, 491f
                  slti         s7, a7, -1251
                  sltu         ra, zero, s1
                  add          s8, a2, s6
491:              addi         s6, s7, -714
                  auipc        a6, 652252
                  sub          s6, t2, a2
                  sra          s6, sp, a0
                  bne          a1, t6, 507f
                  lui          s0, 151041
                  sltu         s3, a1, sp
498:              blt          s4, a0, 504f
                  addi         tp, s8, 108
                  nop
                  nop
502:              auipc        a6, 599391
                  lui          s7, 833135
504:              slli         zero, ra, 24
                  srl          t1, s9, sp
                  blt          sp, s0, 523f
507:              addi         a3, sp, 1449
                  sltiu        a2, a0, 868
                  sra          t2, t1, zero
                  slt          a3, s7, a0
                  sltu         a3, s5, s3
                  nop
                  addi         t2, s5, 222
                  sltiu        sp, s11, 758
                  slli         a0, t1, 23
                  bne          t1, a1, 526f
                  add          t3, t3, s6
                  slti         s6, a0, 1711
                  auipc        t1, 251020
                  ori          t4, t2, 101
                  and          a6, a6, a5
                  xori         s10, a2, -638
523:              slti         a7, a1, 1939
                  bltu         s7, a5, 529f
                  bltu         a6, t2, 531f
526:              or           s5, tp, s4
                  or           s5, a3, a1
                  and          s6, s8, s6
529:              blt          a6, s9, 538f
                  ori          s1, t6, -1874
531:              sll          a6, a1, t6
                  srl          a4, a7, zero
                  sub          t3, ra, s4
                  bgeu         t1, t3, 549f
                  andi         s2, a6, 139
                  blt          s10, s4, 544f
                  beq          s0, s1, 554f
538:              beq          s4, t3, 549f
                  slt          t1, a0, t6
                  beq          t4, a4, 549f
                  addi         s4, a7, 216
                  bne          s4, gp, 545f
                  or           s5, s10, t3
544:              sltiu        s9, a2, 404
545:              bltu         t0, sp, 562f
                  sll          s7, s2, s9
                  xor          s3, ra, a7
                  blt          ra, a7, 564f
549:              sll          s4, s10, s2
                  slli         s0, s6, 26
                  bne          a0, s1, 552f
552:              slti         t5, s7, 1671
                  and          gp, s8, s8
554:              slt          a0, s10, s7
                  xori         a4, a4, -443
                  sub          zero, a2, a0
                  beq          t0, s9, 577f
                  sub          t3, s5, t6
                  srai         ra, a0, 8
                  or           s0, s10, s9
                  sltiu        a7, s2, -1997
562:              lui          s8, 771242
                  bge          t6, t5, 575f
564:              slli         a3, t1, 17
                  lui          s10, 631491
                  or           ra, s11, s2
                  bltu         a4, a5, 586f
                  sll          t3, t5, s10
                  ori          s8, s7, 483
                  xori         t3, a3, 958
                  and          s4, zero, a7
                  addi         s7, a2, 120
                  andi         a4, s1, 753
                  nop
575:              addi         a7, a7, -1488
                  srai         a4, s10, 16
577:              or           t5, t6, ra
                  sltu         a6, zero, gp
                  sub          gp, t6, t1
                  or           zero, a7, t5
                  addi         s2, gp, 511
                  xor          s6, a3, a4
                  sra          gp, a5, gp
                  sltiu        s10, s7, -1040
                  beq          t1, tp, 600f
586:              slli         t1, gp, 18
                  slli         a0, s0, 8
                  andi         a4, s6, 82
                  sltiu        s0, t2, 1147
                  sub          a4, gp, a1
                  ori          a6, zero, 1905
                  sub          gp, t6, t1
                  sltu         s3, a0, s8
                  andi         t4, s2, -12
                  xor          s1, a2, zero
                  slli         s2, tp, 5
                  sltu         t5, a0, s1
                  srl          gp, a4, s4
                  beq          s7, a1, 605f
600:              bne          s3, tp, 607f
                  srli         s10, s10, 4
                  xor          s3, s10, s11
                  srli         t1, s11, 5
                  srai         gp, a3, 1
605:              slti         s1, s10, -1997
                  andi         t3, zero, -243
607:              slli         a5, t6, 20
                  bltu         ra, t4, 612f
                  andi         t2, s6, 1102
                  and          t3, s6, a6
                  srl          s5, s7, s10
612:              addi         s3, ra, 166
                  srai         tp, s7, 0
                  nop
                  srai         tp, s6, 20
                  srl          a2, a1, s10
                  sra          a0, s3, a3
                  srl          s9, t2, ra
                  srai         s0, a2, 5
                  auipc        a5, 126978
                  auipc        ra, 883447
                  beq          ra, t5, 629f
                  sltiu        t2, t6, 687
                  bltu         t6, s7, 641f
                  xor          s7, t0, ra
                  xori         s3, s11, -1283
                  sltiu        s4, a5, -264
                  slli         a3, s8, 21
629:              slti         s8, a2, -1407
                  addi         s3, zero, -997
                  sub          s0, s2, t2
                  sltu         a7, s5, tp
                  slli         s2, sp, 22
                  srai         zero, s0, 4
                  sll          a6, s7, sp
                  srli         a2, a1, 27
                  ori          ra, a2, 1969
                  slt          sp, a4, tp
                  lui          t2, 608802
                  srl          a3, a3, s10
641:              and          s11, t2, t5
                  xor          tp, s5, t6
                  lui          s9, 467083
                  sltiu        s2, s8, -341
                  and          s9, t3, t4
                  andi         zero, s5, 1948
                  slt          s7, s6, a7
                  and          a0, a2, a4
                  andi         s9, s1, 693
                  lui          ra, 663529
                  lui          a6, 865475
                  sra          s6, a0, a3
                  beq          a4, t2, 669f
                  slt          zero, t1, a2
                  slt          t1, s8, gp
                  sra          s8, a1, a0
                  bne          s2, s7, 666f
                  bne          a2, s8, 663f
                  sltu         t1, s1, a3
                  sra          s0, s4, a5
                  slli         t3, ra, 1
                  xori         s10, s6, 1293
663:              srai         ra, s9, 26
                  sra          s5, s0, tp
                  sub          sp, a2, s6
666:              ori          s5, a6, -1763
                  addi         s10, s11, -122
                  andi         s2, a7, 1428
669:              and          s11, t6, a6
                  auipc        t4, 917213
                  blt          t4, s0, 673f
                  slli         s0, s3, 13
673:              nop
                  lui          a5, 233096
                  bne          a3, a7, 683f
                  bge          a7, s2, 693f
                  addi         t4, s1, 1562
                  addi         t4, t1, 741
                  ori          s1, t6, 2017
                  xor          a5, s10, a0
                  addi         t4, gp, -1711
                  sltiu        tp, a5, -666
683:              sub          a0, t6, a6
                  sra          a2, a1, ra
                  or           s8, a0, a1
                  blt          gp, a5, 705f
                  bne          ra, a3, 690f
                  add          s2, a1, gp
                  addi         s10, s10, -2000
690:              sra          tp, a0, s0
                  addi         s3, a5, 2039
                  bne          t3, a2, 703f
693:              srai         a5, a6, 19
                  bgeu         a5, tp, 708f
                  blt          a0, zero, 705f
                  add          s0, s10, a4
                  add          s1, s6, sp
                  sub          s8, s2, a3
                  slti         s8, s8, 1215
                  bgeu         s6, s8, 715f
                  xor          a7, s5, a0
                  bgeu         a3, t5, 719f
703:              nop
                  bgeu         t1, s0, 710f
705:              sltu         s4, t5, s9
                  and          s8, s3, t4
                  lui          t4, 475128
708:              sltiu        a3, s1, -761
                  sltiu        a0, s2, 339
710:              slt          s4, s11, zero
                  bne          s6, a4, 721f
                  srai         s4, s10, 13
                  bne          a6, s11, 732f
                  xori         a2, zero, 1662
715:              nop
                  or           tp, t5, s4
                  srli         s7, s9, 15
                  sub          s11, s8, a7
719:              blt          s2, gp, 722f
                  and          s2, a7, t5
721:              bne          s2, sp, 738f
722:              or           t1, s5, a3
                  sub          s11, s2, a6
                  sltu         tp, s9, s9
                  srl          t2, s4, a6
                  srl          s2, a6, a7
                  bltu         s5, s9, 729f
                  xor          t2, s1, s3
729:              xori         a6, s6, -589
                  xor          sp, s2, s5
                  or           t4, a0, t3
732:              auipc        a6, 763773
                  beq          s3, a5, 749f
                  bne          t3, s11, 750f
                  nop
                  bne          s5, a4, 753f
                  ori          s10, a3, 1848
738:              add          sp, s4, s0
                  sra          a5, a1, s4
                  and          s1, s6, s1
                  nop
                  nop
                  slt          s7, gp, a6
                  sub          s8, t3, s3
                  bgeu         a2, s0, 764f
                  srli         gp, s8, 19
                  lui          a2, 608012
                  sra          t5, s11, s7
749:              and          s8, s5, s1
750:              slt          a5, a1, s3
                  slt          s5, s10, tp
                  slti         ra, a2, -921
753:              sub          gp, a1, s10
                  slli         s3, s3, 24
                  beq          s10, a1, 761f
                  or           s10, s3, s0
                  auipc        t5, 796918
                  ori          t3, sp, -442
                  slti         a2, a6, 20
                  and          a7, a5, t4
761:              addi         a5, s0, -1009
                  andi         ra, s11, -1310
                  addi         t2, s11, -1480
764:              add          t2, a7, a4
                  nop
                  auipc        s3, 129214
                  slti         s10, a2, 1598
                  and          sp, zero, zero
                  nop
                  bne          a1, t1, 787f
                  srli         t2, sp, 6
                  bne          s8, s3, 773f
773:              bgeu         t6, t0, 779f
                  sltu         a6, t3, zero
                  auipc        s11, 48528
                  beq          a4, a5, 786f
                  bltu         t0, a2, 785f
                  bltu         a0, a3, 795f
779:              sltiu        a4, t2, 1286
                  sltiu        a6, t0, -758
                  and          t5, t5, gp
                  add          gp, a2, s11
                  slti         s5, a0, -1861
                  sub          t3, t2, a0
785:              xori         a3, gp, 817
786:              and          zero, s6, t5
787:              xor          a3, s0, a4
                  nop
                  srl          s9, s10, a1
                  andi         a7, s1, 1546
                  srli         a0, s0, 5
                  beq          s2, s1, 802f
                  xori         a3, sp, 112
                  auipc        gp, 719817
795:              slt          a6, s6, s10
                  bgeu         a6, t1, 811f
                  srai         t4, a6, 5
                  lui          s0, 973698
                  bne          t4, t0, 811f
                  sltiu        gp, s7, -1895
                  sltu         s5, t5, ra
802:              slti         t3, s5, 504
                  or           t1, t4, s5
                  blt          s6, s8, 808f
                  srl          s5, a0, a0
                  and          s7, a5, t5
                  sub          a2, a3, s1
808:              sll          s0, t6, a4
                  slli         a0, t0, 18
                  add          s3, s9, s8
811:              slt          s7, t6, t1
                  addi         t4, t4, -2039
                  xor          t3, a1, s5
                  and          sp, a1, t4
                  slli         t1, a1, 17
                  add          gp, t6, t6
                  sll          ra, s0, s8
                  bltu         s4, a0, 838f
                  sub          s9, t0, t4
                  nop
                  sltiu        a0, s11, -1649
                  andi         zero, t2, -127
                  slti         sp, t2, 1911
                  blt          s6, a6, 835f
                  la           a0, region_1+365 #start riscv_load_store_rand_instr_stream_1
                  slti         a3, s9, 248
                  sub          a5, s2, a7
                  lb           s11, 1(a0)
                  xor          a5, a3, s0
                  srl          a3, s3, sp
                  sltiu        t3, s3, -912
                  lhu          a3, 45(a0)
                  lw           s2, -41(a0)
                  srli         a6, s9, 17
                  lbu          a5, -24(a0)
                  sb           a5, 12(a0)
                  lb           t3, 48(a0)
                  lw           s0, 63(a0)
                  lbu          s7, -5(a0)
                  sb           s5, 14(a0)
                  lb           a4, -30(a0)
                  srli         s2, zero, 14
                  sw           a2, -45(a0)
                  slt          s2, t1, ra
                  sll          s10, a5, sp
                  sh           zero, -59(a0)
                  srai         s0, a4, 30
                  lb           a5, -51(a0)
                  sb           t0, 18(a0)
                  addi         s4, s9, -407
                  or           a3, tp, s10
                  lbu          a4, -6(a0)
                  sra          tp, s6, a0
                  lbu          s8, -2(a0)
                  lbu          tp, 13(a0)
                  lw           zero, -33(a0)
                  lb           a7, 50(a0)
                  sb           a6, 46(a0)
                  sub          a4, a1, t1
                  lhu          a7, 19(a0)
                  lh           a4, -63(a0)
                  andi         t1, s6, 1684
                  lbu          t1, 25(a0)
                  xor          s2, a6, s6
                  sb           a5, 19(a0)
                  lb           gp, 37(a0)
                  sll          a7, s2, gp
                  srai         ra, a5, 29
                  xori         s3, a1, 748
                  lui          a4, 520649
                  lbu          tp, -64(a0)
                  lbu          s6, -55(a0)
                  lbu          a4, -58(a0)
                  lbu          a5, 50(a0)
                  lb           a5, -22(a0) #end riscv_load_store_rand_instr_stream_1
                  slt          a2, a0, s0
                  bne          t0, t3, 835f
                  beq          t3, a3, 846f
                  srl          a2, t5, a4
                  lui          s7, 322095
                  andi         s0, s7, -1186
                  beq          a7, t0, 838f
                  addi         a4, s11, 36
                  ori          t4, t1, -1032
                  sll          s2, a5, a4
835:              sltiu        t2, s3, 61
                  add          s11, t6, sp
                  sltiu        a6, tp, -836
838:              xori         t4, s9, -125
                  sll          s10, s2, s2
                  or           s3, gp, s9
                  xor          s1, s4, ra
                  auipc        s9, 505822
                  xori         zero, a1, 1531
                  sltu         s9, sp, ra
                  blt          s0, s7, 850f
846:              srai         sp, zero, 10
                  beq          t1, s2, 856f
                  bge          s4, sp, 867f
                  slli         s0, t5, 21
850:              andi         a0, s4, -93
                  xor          s3, s11, s4
                  and          s2, t6, a7
                  addi         s10, s5, 510
                  slli         s0, a7, 27
                  beq          a6, s3, 858f
856:              bge          tp, s6, 871f
                  bge          t6, a4, 864f
858:              addi         a5, t6, -1609
                  bgeu         s11, s3, 873f
                  srai         s5, a7, 17
                  beq          s9, t1, 864f
                  ori          a7, t3, 1567
                  add          tp, t1, t1
864:              or           s4, s5, a2
                  slli         s6, t6, 6
                  addi         s3, t2, -236
867:              blt          t2, gp, 877f
                  bltu         a6, s0, 870f
                  sub          a5, gp, a1
870:              bgeu         s0, t6, 885f
871:              slt          t3, gp, a0
                  slli         zero, s6, 24
873:              lui          t2, 162775
                  lui          a6, 378661
                  srl          s10, s1, t5
                  slli         s0, t2, 11
877:              sltu         s11, s8, t2
                  ori          t4, s5, -215
                  and          t5, a5, a6
                  addi         s2, tp, -178
                  and          a2, t6, ra
                  bge          s11, a2, 886f
                  bltu         gp, s3, 898f
                  addi         s0, gp, 1388
885:              slt          a0, s11, sp
886:              or           a2, a6, t1
                  add          s4, a4, a2
                  slli         a3, sp, 31
                  andi         zero, a6, 656
                  srli         sp, t2, 1
                  sra          t3, a4, t1
                  ori          s11, t1, -1343
                  sltu         zero, a2, t0
                  slt          s6, t5, t2
                  sll          a5, t5, s1
                  xori         a6, t0, -1138
                  xori         s0, s3, -1009
898:              beq          a3, a4, 910f
                  andi         s9, t0, 1160
                  add          s3, t0, a6
                  auipc        gp, 196369
                  nop
                  bltu         t5, s1, 912f
                  sltiu        t5, s0, -287
                  lui          s9, 1031628
                  slli         t3, t5, 31
                  srai         a2, s1, 18
                  sltiu        s8, t0, -1219
                  sra          gp, s2, s3
910:              bgeu         t2, s2, 916f
                  sll          a6, a4, t1
912:              sll          tp, t1, a3
                  srl          sp, t3, s7
                  sll          a5, s0, a2
                  beq          s6, s7, 934f
916:              slt          s9, s9, s10
                  lui          s2, 242001
                  srli         a0, a7, 3
                  slli         sp, t6, 30
                  bne          tp, s0, 936f
                  srli         s2, a5, 22
                  lui          t4, 891786
                  sra          s8, s0, t0
                  slti         s1, a0, -1879
                  sltu         t2, sp, a1
                  beq          t5, tp, 929f
                  add          s3, s2, s3
                  slt          s9, s10, a1
929:              sub          gp, t4, s5
                  sll          s9, s5, s3
                  slti         t1, a7, -1123
                  add          gp, a3, s7
                  or           s4, s2, t2
934:              and          t4, ra, a6
                  slt          gp, s0, s1
936:              blt          s7, a0, 953f
                  lui          gp, 891457
                  ori          t3, sp, -1051
                  sltu         s8, a4, t4
                  bltu         t5, s3, 947f
                  ori          s2, a1, 1563
                  bge          a2, a2, 961f
                  or           a2, gp, s0
                  sltiu        s7, t5, -184
                  add          t3, ra, t3
                  sub          a0, t3, s0
947:              srli         s1, s4, 6
                  sltu         t4, a2, t6
                  andi         ra, s11, 129
                  sub          s2, s9, t3
                  ori          a6, s8, -1406
                  sra          a0, tp, ra
953:              or           t5, s4, a5
                  sra          a7, s3, sp
                  slt          s3, gp, s10
                  slti         ra, sp, -97
                  auipc        a2, 315594
                  slti         s5, a1, -737
                  auipc        a6, 912546
                  slti         t5, t2, 1631
961:              sltu         t4, s5, t4
                  srl          t2, t2, a6
                  slt          ra, t1, t3
                  srli         a0, t1, 11
                  andi         s9, s2, 318
                  sll          s7, s4, a3
                  andi         s11, t6, -1915
                  add          s10, s1, a1
                  sltu         s5, t5, tp
                  or           t5, s7, tp
                  sll          s0, s11, t3
                  and          a6, s2, t3
sub_8_j11:        jal          t1, sub_9 #jump sub_8 -> sub_9
                  slli         t3, t5, 27
                  srl          s2, a7, t5
                  sltu         s6, a3, a2
                  srli         s4, tp, 7
                  bge          a7, s1, 975f
                  auipc        a3, 13705
                  sltiu        s10, s5, -675
                  slt          s8, s6, s11
                  and          s2, a6, a6
                  slti         a7, s3, 1214
                  bge          a4, t6, 987f
                  xor          a4, s9, t4
975:              sll          a0, a2, a0
                  nop
                  sltu         t5, s7, zero
                  bge          zero, t3, 994f
                  nop
                  add          s8, s4, s7
                  srai         t5, a7, 7
                  addi         s5, s6, 1950
                  srai         s3, ra, 18
                  bgeu         t3, s3, 1004f
                  sltu         a7, t3, t5
                  srli         a0, s7, 19
987:              sltu         s9, a5, s2
                  bltu         t6, a6, 995f
                  slti         s0, a1, 816
                  auipc        t2, 1044500
                  bgeu         s2, s6, 997f
                  add          t3, a3, a7
                  srli         s6, s9, 13
994:              beq          s11, gp, 1003f
995:              srl          a4, s3, a4
                  ori          gp, tp, 1664
997:              sub          ra, sp, s7
                  sltiu        a7, s4, -1996
                  or           t3, ra, s8
                  xor          zero, a3, a0
                  srl          s10, sp, s9
                  slli         gp, s2, 4
1003:             bgeu         s11, a6, 1014f
1004:             auipc        s4, 57219
                  bltu         s7, s0, 1024f
                  bltu         a5, t1, 1023f
                  add          sp, s6, t3
                  ori          t5, s10, 259
                  bge          s4, tp, 1010f
1010:             srli         s0, s9, 25
                  sltiu        t4, t5, -1665
                  add          s11, a6, a4
                  slli         t5, s2, 29
1014:             slli         t2, a4, 15
                  sra          t3, t3, t1
                  slti         tp, sp, -627
                  and          s2, a7, a1
                  slt          s7, sp, s0
                  bge          zero, a3, 1036f
                  andi         a4, s0, -648
                  auipc        t2, 532258
                  xor          a7, t5, a4
1023:             or           a4, t2, sp
1024:             ori          a6, t6, -337
                  bne          a1, a7, 1030f
                  bgeu         t0, a1, 1043f
                  sll          t5, a3, s10
                  xor          a4, s7, tp
                  bltu         s4, s0, 1039f
1030:             add          t3, a7, t1
                  sub          s8, t0, t6
                  nop
                  srli         a2, s5, 22
                  or           a4, a3, s9
                  addi         s0, t5, 1251
1036:             add          ra, s7, s7
                  srli         a4, a5, 3
                  srli         t2, s4, 4
1039:             beq          gp, t4, 1054f
                  lui          gp, 763131
                  blt          t2, t3, 1057f
                  xor          a5, s10, gp
1043:             and          s6, s6, s11
                  sltu         ra, tp, s8
                  bge          a0, t5, 1048f
                  slti         t5, s10, -709
                  beq          t0, t0, 1053f
1048:             srai         s7, s5, 5
                  blt          sp, t3, 1066f
                  bne          t1, a3, 1051f
1051:             blt          t2, a4, 1059f
                  lui          s11, 97570
1053:             xor          t2, t6, s7
1054:             blt          a6, a4, 1073f
                  srl          t3, a1, s2
                  ori          a0, a5, 570
1057:             ori          a0, gp, -1229
                  srli         s6, tp, 4
1059:             srl          a5, s0, gp
                  auipc        s1, 911911
                  auipc        t5, 167693
                  sltiu        zero, s11, -54
                  bne          s8, t3, 1074f
                  xor          tp, a3, a6
                  blt          t5, a3, 1072f
1066:             and          t5, t4, s7
                  bne          s1, a3, 1077f
                  beq          s8, s10, 1085f
                  beq          a1, s4, 1071f
                  srai         tp, t3, 4
1071:             srl          a0, s7, s3
1072:             xor          zero, s4, s6
1073:             bltu         s2, s4, 1089f
1074:             bge          t3, sp, 1079f
                  bltu         s10, t6, 1084f
                  lui          s8, 597826
1077:             add          ra, t5, a6
                  and          s6, a0, a2
1079:             beq          t4, s2, 1098f
                  lui          a2, 360524
                  blt          s1, s7, 1090f
                  sltu         t1, s1, s2
                  nop
1084:             auipc        zero, 108150
1085:             sltiu        a5, s4, 1586
                  andi         gp, t2, 216
                  sra          s10, s3, a4
                  srli         s8, s7, 7
1089:             or           s6, t3, s5
1090:             beq          t0, t1, 1097f
                  nop
                  xori         ra, zero, 1123
                  sltiu        gp, zero, -1894
                  andi         a4, s3, -1276
                  addi         s0, s8, -201
                  sll          t4, s7, t4
1097:             sub          tp, t6, a5
1098:             addi         s2, s3, 216
                  andi         s2, a0, 922
                  or           tp, s2, t4
                  bge          s8, a5, 1118f
                  andi         s2, s6, 1577
                  srli         t1, a4, 29
                  sltu         gp, a6, s8
                  bltu         t4, s3, 1125f
                  andi         a5, zero, -855
                  beq          a6, s5, 1111f
                  nop
                  blt          a0, s0, 1115f
                  srai         a2, s6, 24
1111:             addi         s5, zero, 1697
                  ori          s0, a0, 50
                  and          a7, t3, s3
                  blt          t0, s0, 1117f
1115:             ori          a2, gp, 1793
                  sra          s2, t3, s2
1117:             slli         a5, s8, 22
1118:             xori         a6, sp, -1776
                  and          tp, a4, t5
                  bgeu         sp, ra, 1139f
                  addi         a4, gp, 1154
                  auipc        gp, 672859
                  bgeu         zero, s4, 1140f
                  sltiu        s10, t2, -1085
1125:             srl          a2, a6, t3
                  bne          s9, a1, 1136f
                  xor          s4, s7, s10
                  lui          s7, 370991
                  sltiu        a0, a2, 1421
                  bne          t3, sp, 1144f
                  blt          s11, a4, 1143f
                  and          s0, zero, a5
                  or           s6, s0, t1
                  sub          sp, s9, s9
                  andi         zero, a3, -805
1136:             slt          ra, a2, a2
                  srai         a2, t6, 7
                  bltu         sp, a1, 1153f
1139:             or           s6, t2, s5
1140:             xor          t5, sp, s4
                  slti         tp, a0, -1497
                  xor          s4, a3, a7
1143:             slt          a4, a6, s0
1144:             auipc        t2, 605990
                  beq          s11, ra, 1157f
                  lui          a0, 729059
                  srl          a7, s2, gp
                  slt          a4, a4, tp
                  srli         s2, t1, 23
                  auipc        s5, 46199
                  and          sp, s4, s4
                  or           a5, a4, s11
1153:             bge          a0, a0, 1170f
                  sltu         a5, s8, t1
                  bge          gp, t5, 1160f
                  slli         s11, a3, 7
1157:             bge          s10, s7, 1176f
                  nop
                  beq          a4, s7, 1175f
1160:             beq          t3, a1, 1175f
                  sra          a3, t0, zero
                  andi         t4, s2, 1374
                  slli         a3, a2, 16
                  slli         a4, t3, 17
                  ori          t4, t4, 200
                  sub          s11, a1, s11
                  xori         s4, ra, 1038
                  blt          tp, a2, 1178f
                  xor          sp, s1, t6
1170:             bge          a6, s5, 1184f
                  bne          t4, s4, 1188f
                  slt          t4, a3, a1
                  sltiu        tp, s6, 1409
                  nop
1175:             ori          gp, s4, -1808
1176:             srli         s4, gp, 5
                  beq          s8, tp, 1196f
1178:             bne          gp, s2, 1180f
                  bgeu         s6, s8, 1183f
1180:             auipc        t3, 14518
                  and          s5, zero, s5
                  addi         a3, zero, 1039
1183:             or           t2, s2, t6
1184:             slt          a3, a4, gp
                  sub          sp, a5, s11
                  srai         a0, s9, 3
                  bltu         s8, a6, 1194f
1188:             bgeu         ra, s3, 1191f
                  bge          t1, t0, 1206f
                  bge          s4, s1, 1206f
1191:             sll          s8, t0, s2
                  sltu         a5, t0, a2
                  slt          s3, s8, s0
1194:             andi         t4, t0, -474
                  and          a4, a6, a7
1196:             or           gp, ra, t5
                  sll          t1, ra, a2
                  bgeu         t3, a7, 1201f
                  lui          a4, 65003
                  xori         a5, t2, -1277
1201:             add          a5, a7, s11
                  bgeu         t1, s0, 1211f
                  auipc        s11, 520585
                  srl          ra, s10, a4
                  add          s6, ra, sp
1206:             sll          tp, gp, zero
                  addi         a6, gp, -929
                  sltu         t2, t6, s0
                  sll          t3, s9, s8
                  ori          t1, t5, 1322
1211:             lui          a2, 273157
                  srai         a3, a5, 0
                  xor          tp, a1, a6
                  sltu         tp, s11, s11
                  slti         t2, tp, 1187
                  or           s7, t5, a5
                  ori          s10, s3, 173
                  nop
                  la           sp, region_0+1537 #start riscv_load_store_rand_instr_stream_6
                  sltu         t3, s4, s5
                  xor          a3, t6, a1
                  srai         t5, a6, 16
                  lbu          s1, -257(sp)
                  lb           s4, 422(sp)
                  sb           s11, -902(sp)
                  or           t4, a6, s4
                  auipc        s0, 330765
                  addi         s9, t0, -1465
                  slti         s3, s7, 730
                  slti         tp, t4, -1527
                  lh           a6, -815(sp)
                  slli         s6, t1, 26
                  and          s2, t4, s3
                  sltu         s8, s7, s3
                  nop
                  lb           a0, -1026(sp)
                  srl          s5, s3, t3
                  or           ra, t4, t0
                  sb           a2, -741(sp)
                  sll          s10, s4, s9
                  xori         s2, s6, 1886
                  lbu          s2, -1359(sp)
                  slli         a4, s10, 1
                  slt          a3, t3, t5
                  nop
                  lhu          s9, -1407(sp)
                  sltu         s5, s5, s10
                  sltu         tp, t6, s10
                  add          s7, a5, s11
                  sb           ra, 130(sp)
                  or           zero, a6, s2
                  ori          a2, t3, 846
                  or           a6, a0, t3
                  xori         s11, a7, -248
                  lb           t5, -184(sp) #end riscv_load_store_rand_instr_stream_6
                  lui          s4, 875938
                  srl          t2, s10, a5
                  lui          s0, 244365
                  srli         gp, a4, 30
                  srai         s2, s0, 27
                  slli         a5, a0, 24
                  slti         s1, a2, -1154
                  sub          s9, t6, a1
                  bgeu         s6, ra, 1236f
                  add          t3, t1, a3
                  ori          s8, s5, 677
                  sll          a6, a5, s0
                  bne          s10, s11, 1242f
                  srli         s4, a7, 29
                  slli         ra, s2, 24
                  and          s1, a7, s7
                  bltu         t6, zero, 1255f
1236:             sub          s6, t4, s11
                  andi         gp, s10, 40
                  or           s9, ra, t0
                  srl          s10, s2, a1
                  sra          s3, t4, a3
                  srai         s1, zero, 29
1242:             andi         a6, t6, 1966
                  sltu         tp, s2, a5
                  slli         a6, t0, 22
                  sra          a4, gp, t6
                  sra          a0, t6, t1
                  auipc        s6, 664376
                  bge          ra, s1, 1255f
                  sltiu        s6, t3, -1880
                  ori          s11, a1, -660
                  sra          t4, s8, s5
                  nop
                  sub          gp, s8, s0
                  sltiu        a6, a2, -917
1255:             bge          s5, a4, 1261f
                  andi         t3, s5, 1767
                  sltiu        a0, s8, -1485
                  andi         s5, a7, 175
                  sltiu        s3, t2, -1344
                  srai         t2, a2, 5
1261:             and          s5, gp, a0
                  sll          s11, s7, a6
                  nop
                  bltu         s6, s1, 1279f
                  srl          s4, t4, s10
                  sll          t5, s4, t5
                  auipc        a7, 884722
                  bltu         s6, t5, 1276f
                  sra          s1, s9, t2
                  sub          s3, t4, t4
                  sltiu        a2, s11, -502
                  andi         a6, t5, -1383
                  addi         gp, a3, -1710
                  and          s6, s5, s3
                  bge          sp, s4, 1292f
1276:             sub          s5, s3, s5
                  xor          s11, s2, t1
                  ori          s9, ra, -1178
1279:             sra          s6, t0, sp
                  srai         ra, s9, 13
                  bne          s0, s11, 1300f
                  andi         t3, a5, 62
                  bne          a4, s3, 1293f
                  auipc        a4, 233966
                  beq          s2, s8, 1286f
1286:             and          ra, tp, ra
                  addi         s8, a5, -40
                  auipc        s3, 553060
                  sub          s10, a7, t2
                  lui          a0, 1043420
                  srli         s1, s9, 31
1292:             sra          a6, s3, a6
1293:             sub          gp, t0, a3
                  slli         s9, ra, 31
                  lui          a4, 774828
                  nop
                  andi         zero, t2, -930
                  bltu         ra, s5, 1304f
                  xor          a3, tp, t4
1300:             xor          t3, a7, zero
                  bne          s4, s3, 1321f
                  srl          a5, a7, s2
                  sll          zero, s2, a0
1304:             and          a0, a3, s4
                  bgeu         s10, s3, 1308f
                  lui          t5, 678502
                  sll          gp, s0, a3
1308:             nop
                  and          s4, a5, a7
                  auipc        a3, 244228
                  slti         a4, a2, 1137
                  sll          s6, s11, t3
                  srl          s0, t5, t2
                  srai         s2, t6, 17
                  lui          s8, 714656
                  blt          a6, t5, 1330f
                  slti         t1, s6, 293
                  add          zero, a6, ra
                  and          a7, a0, a2
                  slti         s4, a2, -171
1321:             andi         zero, a0, 1323
                  andi         t1, gp, -969
                  xori         a5, zero, 163
                  srai         s6, s9, 16
                  nop
                  nop
                  sub          s8, zero, a0
                  sra          t2, t1, t6
                  lui          s4, 843064
1330:             bltu         zero, zero, 1332f
                  xor          t3, tp, s10
1332:             sll          tp, t5, t5
                  slti         a6, t3, 1845
                  or           s6, t1, t6
                  andi         a2, t1, 1142
                  beq          a7, a7, 1352f
                  bge          s10, s6, 1343f
                  ori          t2, t3, 1678
                  bne          t1, a0, 1356f
                  srli         s0, a7, 2
                  srai         s2, t1, 6
                  sltu         sp, sp, t1
1343:             or           a4, s1, sp
                  blt          s1, t1, 1354f
                  bne          t1, s6, 1357f
                  sub          sp, s6, s8
                  sltu         t2, s3, tp
                  ori          s0, a4, 1367
                  or           a0, s2, s10
                  slt          s8, t3, gp
                  and          sp, s3, s9
1352:             bgeu         ra, t0, 1353f
1353:             ori          a3, t1, -1262
1354:             bge          t4, a5, 1363f
                  xor          a3, a0, s0
1356:             srli         s7, a3, 7
1357:             sll          gp, sp, a2
                  srli         t4, s0, 22
                  addi         s0, ra, 1963
                  srli         t5, a0, 0
                  xor          t2, a0, s2
                  beq          t1, gp, 1381f
1363:             sub          a4, a3, s0
                  sltiu        t4, s11, 1318
                  ori          a6, a5, -1533
                  lui          t2, 359904
                  nop
                  addi         a0, a6, 1053
                  bge          t0, t2, 1386f
                  slli         s2, t4, 15
                  bge          s0, t3, 1374f
                  blt          a2, s0, 1376f
                  lui          s3, 1017302
1374:             or           gp, t5, a0
                  sltu         t1, s9, sp
1376:             or           s5, t1, s2
                  slli         a3, t2, 14
                  slti         s4, s8, 317
                  beq          s0, s4, 1396f
                  slli         s5, s6, 1
1381:             sra          a7, t4, t2
                  xori         s2, t0, -713
                  nop
                  auipc        s0, 490268
                  xori         gp, t3, -593
1386:             ori          s11, t6, -729
                  addi         sp, t2, 25
                  sra          s3, s10, a3
                  slt          s8, gp, s2
                  sra          s3, s4, s6
                  slt          s1, a4, ra
                  bge          s2, s2, 1407f
                  ori          a6, sp, -1462
                  srl          a7, s9, a6
                  auipc        s6, 863362
1396:             xor          s2, s1, t3
                  bge          s2, a1, 1414f
                  sra          s8, s4, s9
                  bge          s4, s10, 1406f
                  nop
                  bne          t0, s11, 1408f
                  sra          t5, t3, t5
                  lui          s4, 959220
                  slli         ra, t5, 8
                  xori         t5, s5, -1364
1406:             bgeu         a7, sp, 1425f
1407:             add          ra, t6, s0
1408:             slt          s10, s3, s10
                  nop
                  sll          s1, s3, a4
                  add          s2, s10, s8
                  beq          t0, a1, 1423f
                  slti         s11, t4, -545
1414:             slli         s8, t4, 4
                  blt          a0, s4, 1431f
                  bltu         s11, s2, 1426f
                  add          a4, tp, s8
                  sll          zero, ra, s7
                  auipc        s11, 409751
                  slli         s1, t3, 5
                  slli         a6, s7, 13
                  sltiu        t2, t3, -378
1423:             bltu         a2, t0, 1438f
                  and          s7, a1, s11
1425:             bltu         s7, t2, 1433f
1426:             ori          t2, a0, -1658
                  andi         s1, t4, -1337
                  lui          a0, 239340
                  srli         s9, t2, 24
                  auipc        t2, 890834
1431:             andi         s8, a4, 88
                  nop
1433:             xori         s10, a2, 575
                  andi         s9, t4, -755
                  xor          t4, s0, ra
                  bne          s9, s9, 1442f
                  sltiu        s11, t3, -1577
1438:             bge          s10, s10, 1447f
                  slt          s5, s10, ra
                  srli         t5, s10, 15
                  andi         s8, s6, -1790
1442:             add          s9, a3, s3
                  lui          a7, 472837
                  and          s3, s4, t4
                  xor          sp, t6, a5
                  nop
1447:             ori          s7, s9, -2012
                  sub          t3, a5, s5
                  and          a4, s5, s3
                  xori         s1, s4, 184
                  sub          a0, gp, s4
                  sltu         s7, s1, a5
                  bltu         t5, a4, 1458f
                  srli         a5, t6, 6
                  xori         zero, s0, 1730
                  sltu         s9, s0, a6
                  slli         s5, a4, 1
1458:             srai         sp, zero, 3
                  xor          s6, t0, ra
                  blt          a0, sp, 1479f
                  xori         ra, t5, 920
                  blt          a7, a7, 1479f
                  sub          a2, sp, s11
                  ori          zero, s9, -459
                  ori          a6, s1, -1548
                  bne          s11, tp, 1481f
                  srai         s8, tp, 29
                  or           gp, t3, a3
                  nop
                  slt          t2, a0, s9
                  xori         a0, s11, 1169
                  lui          t4, 360599
                  or           s0, s7, t5
                  slli         s1, t5, 22
                  and          s4, tp, s2
                  srli         s11, s8, 5
                  and          s6, a1, a4
                  sra          a5, t6, zero
1479:             or           s6, a5, a6
                  lui          t3, 622962
1481:             ori          s4, s0, -1606
                  auipc        s2, 151627
                  sll          s6, s8, gp
                  lui          s6, 79714
                  add          a0, a0, t3
                  add          t3, s11, t5
                  bge          zero, s7, 1498f
                  srli         a2, t4, 16
                  sltiu        t1, tp, -1517
                  auipc        a4, 979115
                  andi         t3, t3, 126
                  nop
                  addi         s1, s7, -1063
                  auipc        s0, 597295
                  or           zero, t6, s6
                  sltu         s5, s7, t6
                  sll          a5, t6, s10
1498:             sll          s0, s3, a7
                  addi         s0, s3, 1262
                  sra          a2, s5, t1
                  or           ra, s0, gp
                  ori          gp, t5, -1639
                  slt          s1, t1, zero
                  sltiu        s3, t3, 1536
                  addi         a5, s0, -729
                  addi         ra, t4, 900
                  srai         s3, s10, 19
                  sll          t4, ra, t5
                  or           s6, s2, t5
                  or           a5, ra, s1
                  srli         s2, zero, 31
                  sltiu        a2, s1, 1098
                  srl          s6, t6, s2
                  sub          t1, a0, s11
                  sll          s8, sp, s10
                  bne          s7, a3, 1532f
                  nop
                  blt          s4, gp, 1521f
                  blt          zero, s2, 1533f
                  sra          t5, a4, t3
1521:             andi         a3, s10, -1316
                  auipc        s4, 213946
                  addi         a0, gp, 821
                  auipc        s0, 880130
                  and          s2, sp, t6
                  sll          a0, t5, a7
                  bge          a0, s8, 1530f
                  andi         t1, ra, 116
                  slt          gp, s10, gp
1530:             slt          zero, zero, s6
                  nop
1532:             srai         s7, t1, 11
1533:             add          s9, s2, sp
                  sll          s0, a1, s4
                  sll          t4, s11, s7
                  or           s2, a1, s9
                  beq          a4, t1, 1554f
                  or           a5, s8, gp
                  auipc        s0, 895584
                  sub          s0, t4, s5
                  srl          s1, s11, a3
                  ori          s1, s8, 1449
                  add          a2, tp, a2
                  sll          a7, ra, a1
                  sra          a2, t1, s0
                  sll          sp, s3, s11
                  nop
                  add          tp, sp, s3
                  blt          a2, s9, 1551f
                  bltu         t0, s6, 1569f
1551:             bge          a3, a5, 1570f
                  and          t5, t5, a0
                  sub          ra, s6, s5
1554:             bne          s11, s3, 1563f
                  sub          s4, a3, s2
                  sltiu        a7, a0, 1918
                  slt          a2, sp, a0
                  bge          s10, t5, 1567f
                  sll          s2, a7, a1
                  sltiu        s6, t4, 952
                  slti         ra, a1, 1138
                  ori          a7, t6, -122
1563:             sra          a0, s2, a1
                  sltu         s4, t3, s0
                  blt          tp, t2, 1582f
                  slli         tp, a5, 11
1567:             sltiu        tp, t6, -178
                  sltiu        s3, ra, 360
1569:             sra          s8, s1, s5
1570:             lui          t5, 499606
                  ori          s9, a2, 1813
                  xor          s3, a2, s5
                  or           tp, a6, a5
                  srli         s5, t5, 30
                  slti         t1, t5, 884
                  slt          t3, t0, a3
                  slti         a0, s6, 163
                  bge          a3, a7, 1590f
                  sub          t3, a4, a1
                  andi         s5, a3, -1125
                  srl          t3, s5, t1
1582:             xori         s5, t0, 1610
                  ori          s7, t5, -37
                  bne          a2, a6, 1600f
                  beq          t4, s6, 1593f
                  slt          a7, s3, a6
                  bltu         a7, a1, 1606f
                  sra          gp, a1, t3
                  blt          t2, s9, 1606f
1590:             auipc        t5, 805004
                  bne          s5, ra, 1601f
                  addi         t4, s9, 1616
1593:             srl          a2, s5, s9
                  sll          s8, a1, t4
                  ori          s6, t0, 1460
                  srl          a6, s0, a6
                  lui          s10, 12377
                  slli         ra, s3, 25
                  slti         t4, zero, 1086
1600:             auipc        s11, 412898
1601:             bgeu         s1, s9, 1607f
                  ori          s10, s5, -116
                  ori          a4, s6, -948
                  bne          ra, s5, 1609f
                  slli         zero, s1, 6
1606:             sra          s7, a4, a7
1607:             beq          t0, t3, 1611f
                  slti         sp, s10, -657
1609:             lui          s4, 978147
                  sll          s10, tp, s10
1611:             bge          t3, s11, 1617f
                  sra          t5, a2, s7
                  bne          a0, s2, 1620f
                  nop
                  slli         a4, t2, 3
                  bltu         a1, s6, 1636f
1617:             addi         s0, s7, -756
                  slti         ra, tp, 93
                  srl          zero, zero, a7
1620:             sra          s2, s0, a3
                  srl          s0, s5, s5
                  andi         s6, a2, 926
                  nop
                  slt          s11, t1, s3
                  xor          t5, s2, a7
                  sltiu        a6, s2, -877
                  add          s7, s1, s2
                  slt          s5, s7, a4
                  sltu         a5, s8, a0
                  or           s4, s5, a6
                  nop
                  slli         s0, s0, 17
                  blt          s8, a7, 1634f
1634:             sub          t3, s9, s3
                  sltu         a6, s8, t0
1636:             slt          s8, s7, s2
                  and          s9, zero, ra
                  nop
                  ori          s9, tp, -279
                  slt          a0, s7, t1
                  andi         s5, s1, -1092
                  srai         s0, a4, 30
                  bge          a3, a4, 1653f
                  bne          t3, a2, 1651f
                  bge          a6, a7, 1660f
                  beq          t4, gp, 1663f
                  lui          s0, 622040
                  add          s11, a6, s1
                  or           s4, s1, s2
                  blt          ra, a5, 1660f
1651:             slli         t5, a5, 0
                  sra          a6, s4, s4
1653:             sll          a0, s4, s8
                  sltiu        zero, a6, -811
                  bge          s3, s8, 1662f
                  or           a2, a6, s8
                  blt          t1, s8, 1674f
                  addi         tp, s0, -652
                  and          s4, t4, t5
1660:             and          s7, a0, a7
                  srli         t3, a1, 28
1662:             sra          s4, a6, sp
1663:             srai         s7, a1, 22
                  sll          a6, a0, s4
                  xor          s3, a1, a6
                  andi         s4, t0, -1660
                  srli         s0, s1, 11
                  slt          s5, s5, t1
                  slli         t2, t6, 16
                  sub          t2, s2, gp
                  xori         t4, t2, 22
                  srl          s3, s6, s0
                  bge          sp, t6, 1674f
1674:             srl          s9, t4, a0
                  bne          t0, t1, 1682f
                  sltiu        a4, s3, 1763
                  sltiu        s0, t2, -249
                  beq          s2, a0, 1680f
                  nop
1680:             sll          s10, ra, s0
                  andi         s1, a5, 1786
1682:             sub          t2, t2, a6
                  bltu         s1, a6, 1686f
                  slt          s1, a0, s6
                  srl          s4, s0, tp
1686:             srli         a6, s9, 27
                  srl          t3, a6, s9
                  slt          t1, t5, t4
                  addi         a3, s4, -1543
                  beq          s3, t2, 1691f
1691:             add          s4, s10, s9
                  lw           t1, 4(t0)
                  slt          gp, s7, a6
                  addi         t0, t0, 48
                  srl          s9, t1, t2
                  srai         t3, s11, 19
2291:             addi x19, x6, 1
2291:             jalr x19, x19, 0
sub_7:            andi         s7, s0, -1651
                  bgeu         s2, a7, sub_7_stack_p
                  slt          s0, sp, a3
sub_7_stack_p:    addi         t0, t0, -60
                  sll          t4, t0, a6
                  sw           t1, 4(t0)
                  sll          a5, sp, a5
                  srl          a6, a2, s4
                  sll          t2, a5, tp
                  and          zero, ra, s2
                  xor          s9, s8, a3
                  la           s8, sub_8
                  sub          ra, t1, t1
                  andi         s9, a0, -1776
                  sltu         s9, a1, s11
                  slt          t4, a1, s6
                  addi         s8, s8, -916
                  srai         ra, a4, 23
                  srli         s9, a4, 13
                  beq          s1, a7, sub_7_j9 #branch to jump instr
                  sltiu        ra, t1, 746
sub_7_j9:         jalr         t1, s8, 916 #jump sub_7 -> sub_8
                  slt          s5, s11, s4
                  slt          s7, a4, s3
                  sra          t4, t4, t2
                  blt          t3, s3, sub_7_j10 #branch to jump instr
                  sltiu        t1, s9, -1276
                  addi         s2, t3, -1886
                  or           s6, s10, t4
                  xori         a4, s10, -488
                  addi         s3, s10, 177
                  sltiu        s8, t3, -51
                  or           ra, t5, ra
sub_7_j10:        jal          t1, sub_8 #jump sub_7 -> sub_8
                  la           t1, region_1+355 #start riscv_load_store_rand_instr_stream_0
                  srai         s3, sp, 2
                  slti         s2, t2, 1455
                  srli         s4, s6, 22
                  lh           a2, 809(t1)
                  lbu          ra, -170(t1)
                  sb           a2, 34(t1)
                  srli         tp, a7, 24
                  slti         s8, s4, -928
                  lb           s7, 244(t1)
                  addi         s0, s11, -1998
                  ori          gp, a6, -978
                  lbu          a0, 542(t1)
                  nop
                  sb           s9, 1223(t1)
                  sb           t1, 1120(t1)
                  lh           tp, 1359(t1)
                  sb           a2, 1364(t1)
                  sltu         a6, t2, t4
                  sb           t4, 770(t1)
                  lb           s2, 900(t1)
                  lb           a2, 994(t1)
                  srli         s0, s9, 6
                  sb           zero, 1038(t1)
                  sltu         s0, s10, t6
                  sb           t0, 807(t1)
                  lb           s2, 150(t1)
                  slt          s2, a1, t6
                  sll          a6, zero, s7
                  lbu          a6, 224(t1)
                  slli         t4, ra, 31
                  lbu          s1, 152(t1) #end riscv_load_store_rand_instr_stream_0
                  sub          a3, s6, sp
                  sra          s7, a2, sp
                  xori         s1, t1, 809
                  slli         a3, s7, 8
                  bltu         zero, a4, 13f
                  auipc        gp, 306872
                  andi         s10, t2, 539
                  xori         t5, zero, 1183
                  auipc        s2, 357340
                  sll          s1, s2, s11
                  slti         s8, t3, 219
                  bgeu         s8, a1, 14f
                  slti         s7, zero, 1928
13:               or           tp, s11, s9
14:               sltiu        a0, tp, 1191
                  sll          s3, ra, t0
                  blt          a5, s11, 26f
                  slli         s10, t4, 25
                  sra          a0, sp, t0
                  and          s11, a5, s0
                  sra          a6, s2, a2
                  beq          t5, t2, 28f
                  slt          ra, a1, sp
                  blt          s4, a2, 28f
                  or           a7, s0, t5
                  slli         sp, s10, 21
26:               sub          tp, s8, t2
                  or           a5, gp, t2
28:               bltu         s7, t1, 33f
                  bgeu         t5, a4, 36f
                  sll          s5, a6, s2
                  sll          s4, t4, t2
                  bge          s10, ra, 47f
33:               andi         t3, t4, -684
                  sra          s6, t4, s11
                  andi         a5, t6, 1867
36:               sltu         s10, gp, a2
                  sltiu        zero, s8, -1498
                  slti         s4, t1, -455
                  auipc        a4, 896140
                  lui          a5, 473243
                  and          s7, s10, t0
                  slt          s3, a7, t0
                  slt          s9, t4, s6
                  add          s8, t0, a4
                  add          gp, s3, s10
                  slli         s6, gp, 9
47:               sltiu        sp, s10, 1799
                  xor          ra, t2, s0
                  srai         s3, a7, 0
                  slti         a6, t6, 399
                  srai         s4, s4, 27
                  beq          t4, s11, 71f
                  addi         t3, s3, 260
                  srli         s7, a6, 2
                  addi         s3, zero, 19
                  srl          t1, ra, s1
                  or           s10, s4, a2
                  auipc        s3, 171011
                  andi         t1, s0, -320
                  lui          s7, 915329
                  bge          t6, s10, 66f
                  ori          s9, a0, -940
                  bltu         s5, s10, 81f
                  srl          a6, s10, sp
                  sub          a7, s8, s9
66:               and          s0, t6, a6
                  beq          a5, s11, 82f
                  sub          s11, a4, a7
                  andi         t3, gp, 171
                  or           s2, t4, s6
71:               and          t3, s9, a5
                  blt          a1, s5, 76f
                  srli         a4, t1, 20
                  or           ra, gp, s8
                  sll          s11, sp, s3
76:               bltu         s4, zero, 85f
                  add          t2, a0, s8
                  slt          ra, t2, gp
                  slt          s5, s0, t0
                  nop
81:               auipc        t2, 75977
82:               xor          s8, t5, a2
                  beq          a2, s8, 86f
                  sub          a7, sp, s0
85:               addi         t2, t1, 79
86:               and          a4, a3, t0
                  sltiu        t4, t5, -497
                  add          a6, a5, zero
                  sltu         a6, a0, s3
                  sll          s2, gp, sp
                  addi         s8, s0, -266
                  srl          t1, a3, t5
                  bltu         s10, ra, 97f
                  nop
                  lui          a3, 669894
                  add          s0, t4, a7
97:               beq          s6, zero, 101f
                  sra          ra, tp, s6
                  auipc        sp, 783464
                  slti         s11, s5, -2026
101:              xor          t4, s0, t6
                  or           s4, a7, a1
                  auipc        a6, 189966
                  srai         s10, sp, 20
                  add          tp, a6, s11
                  bge          a1, t3, 109f
                  slti         a7, t0, 1584
                  slli         s2, sp, 23
109:              bltu         tp, ra, 117f
                  srli         gp, s2, 23
                  slti         s2, a0, -911
                  xori         t3, s6, 805
                  xori         tp, t1, 1194
                  srl          gp, a3, s0
                  add          s10, s5, a6
                  srli         ra, s5, 28
117:              add          t2, s2, t0
                  srl          s5, a1, t0
                  lui          s7, 756429
                  nop
                  sltiu        sp, a0, 1150
                  srli         sp, a4, 29
                  sltu         s8, a6, s1
                  srai         s9, t6, 0
                  xori         t2, s6, -1019
                  blt          t3, s5, 133f
                  or           t4, a2, t1
                  sltu         ra, s8, a1
                  ori          a2, s4, -704
                  ori          a6, t2, -192
                  xori         t5, a3, 36
                  addi         s2, a3, 1781
133:              sltiu        t5, a0, 1918
                  auipc        a7, 379592
                  or           t4, t0, a2
                  addi         s1, gp, -548
                  addi         s8, zero, -842
                  bge          s1, t5, 147f
                  sltiu        s8, gp, 518
                  srai         s7, a4, 4
                  or           s6, a2, s2
                  nop
                  and          t1, gp, gp
                  xori         a0, s8, 1249
                  auipc        a0, 976594
                  bltu         s2, s8, 150f
147:              srai         tp, t0, 30
                  bne          t4, a2, 152f
                  lui          s3, 686991
150:              add          a6, s6, zero
                  xor          ra, s6, a0
152:              ori          s4, ra, -1227
                  or           a3, s11, sp
                  sub          a3, s3, s2
                  srli         a6, s6, 18
                  lw           t1, 4(t0)
                  addi         a4, s8, -644
                  add          t2, a0, zero
                  srli         a6, a5, 23
                  addi         gp, a5, -1465
                  addi         t0, t0, 60
                  slti         t4, s5, -1232
                  ori          a2, a2, 681
                  andi         a4, a1, 71
231:              addi x27, x6, 1
231:              jalr x27, x27, 0
sub_2:            bge          s6, s9, sub_2_stack_p
                  sltu         a5, s0, s1
                  andi         s10, s3, 1398
                  nop
                  add          t5, s8, t2
sub_2_stack_p:    addi         t0, t0, -20
                  sll          zero, s1, s7
                  sll          zero, ra, a1
                  sw           t1, 4(t0)
                  slti         a3, a3, -1322
                  addi         t4, zero, 640
                  slti         a0, t5, -1930
                  la           sp, region_1+1088 #start riscv_load_store_rand_instr_stream_0
                  xori         a6, s1, 1591
                  or           s4, s3, a6
                  sb           t1, -246(sp)
                  srai         a7, t6, 10
                  sll          t1, sp, s11
                  andi         a5, s6, -145
                  sb           s11, -37(sp)
                  lbu          a2, -197(sp)
                  sub          s1, s8, s11
                  sb           s0, -231(sp)
                  and          a3, t2, s5
                  lh           s1, -10(sp)
                  xor          ra, s6, a5
                  sb           sp, 153(sp)
                  lb           s7, -229(sp)
                  sra          a6, a4, a5
                  lb           s4, 176(sp)
                  sll          s9, s8, tp
                  srai         t5, a5, 10
                  sw           s6, 24(sp)
                  sb           s9, -68(sp)
                  sw           zero, -136(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_0+1136 #start riscv_load_store_rand_instr_stream_2
                  xori         s9, s2, 1022
                  sh           t1, 682(a4)
                  slt          ra, t3, s11
                  lb           gp, 813(a4)
                  sb           a7, -687(a4)
                  sub          tp, t4, gp
                  lh           s6, -520(a4)
                  srai         s2, a1, 4
                  lh           s10, 774(a4)
                  sub          s10, t0, sp
                  ori          a7, t1, 827
                  lbu          s11, -518(a4)
                  lb           s4, -726(a4)
                  lb           t5, -999(a4)
                  addi         s2, t1, 726
                  xor          sp, t1, s11
                  ori          t5, s2, -404
                  lbu          a3, -806(a4)
                  andi         a3, a6, 44
                  addi         s3, s3, -58
                  lh           s10, -368(a4)
                  addi         zero, t3, 1380
                  slt          s8, t1, s2
                  sb           s4, -267(a4)
                  sub          t1, s3, a6
                  lb           sp, -299(a4)
                  andi         s8, a3, -85
                  lh           a0, -436(a4)
                  auipc        s3, 717799
                  ori          a5, sp, 360
                  sb           s6, 417(a4)
                  lbu          a5, -149(a4)
                  lb           s4, -81(a4)
                  sb           s4, -458(a4)
                  lb           s1, 64(a4)
                  sb           t1, -849(a4)
                  sh           s4, 806(a4) #end riscv_load_store_rand_instr_stream_2
                  srai         s1, s5, 16
                  sltu         s6, s2, t2
                  ori          gp, s1, -1789
                  beq          s0, s7, 11f
                  sltiu        t4, s3, -1018
                  xor          t1, gp, t2
                  sra          s4, a6, s0
                  bgeu         s5, a7, 23f
                  lui          s8, 483331
                  srai         s0, a1, 11
                  srli         s2, s6, 31
11:               bltu         a1, a2, 22f
                  xori         t3, t0, 619
                  xori         a2, a6, 1830
                  srai         a6, zero, 17
                  sll          s8, s0, a6
                  bge          gp, s2, 23f
                  beq          a5, ra, 28f
                  lui          s11, 234197
                  sltu         a7, tp, a1
                  slti         a6, a2, 1268
                  lui          s8, 545565
22:               slti         t4, sp, 1006
23:               slti         a2, t2, 1521
                  bltu         tp, t6, 35f
                  xor          a3, t4, s11
                  sltiu        gp, tp, 239
                  sub          zero, s3, a0
28:               bltu         ra, a6, 45f
                  beq          s6, t6, 42f
                  addi         s1, s7, 627
                  sra          t1, sp, zero
                  bltu         a5, s2, 50f
                  add          s1, s11, t5
                  xor          t2, a3, a3
35:               or           tp, a0, s11
                  lui          s0, 60010
                  bge          a3, a4, 43f
                  slti         s1, a3, 126
                  blt          a0, s5, 57f
                  add          s9, a7, s8
                  sltu         s10, ra, tp
42:               and          s4, sp, a2
43:               srai         s6, s0, 8
                  nop
45:               sltiu        t5, s10, -1938
                  bltu         t4, ra, 65f
                  sltiu        a2, a5, 1631
                  auipc        t4, 1018398
                  bne          gp, t1, 68f
50:               and          s6, s11, gp
                  srl          s1, t2, a6
                  blt          a3, s9, 68f
                  andi         s5, s6, -658
                  addi         a7, t6, 2020
                  and          a3, a3, s11
                  ori          sp, s8, -122
57:               slli         s6, a6, 7
                  sub          a4, t2, t4
                  srai         s10, ra, 1
                  bne          a3, a0, 68f
                  beq          s4, gp, 78f
                  beq          zero, a6, 73f
                  srli         sp, s1, 18
                  sltu         t1, sp, t6
65:               and          gp, s10, a3
                  xori         s2, t6, 1130
                  sra          tp, gp, a2
68:               sltiu        ra, s0, -745
                  sltu         ra, s7, s2
                  beq          gp, a0, 86f
                  srl          s2, t3, s11
                  ori          a6, a4, -1545
73:               addi         t4, s0, -1111
                  auipc        s6, 277473
                  ori          s5, s1, 805
                  or           tp, zero, t3
                  blt          a5, s3, 86f
78:               sltiu        t5, a6, -282
                  and          s11, t0, s8
                  andi         s0, tp, -1546
                  sltu         t5, a2, tp
                  addi         a4, s0, -1232
                  auipc        t2, 178120
                  add          s3, s5, s7
                  sll          a7, a7, a1
86:               sll          zero, t3, s0
                  add          s9, a0, a3
                  nop
                  bge          a1, a0, 105f
                  bne          t6, s6, 101f
                  sltiu        a6, s6, 1579
                  sll          a6, s4, s7
                  slt          t3, s4, a7
                  bgeu         a4, s3, 104f
                  ori          t1, s0, -1276
                  sll          s8, s3, s8
                  srai         s2, s11, 17
                  andi         s2, s9, 1609
                  or           a7, s1, s3
                  sub          s8, s0, a5
101:              bne          s9, s4, 119f
                  xor          s9, gp, s3
                  bltu         t0, t2, 118f
104:              srli         a7, a6, 2
105:              nop
                  xori         s9, s10, 398
                  slti         s4, a5, -378
                  xor          a7, t6, s8
                  auipc        tp, 231359
                  beq          ra, s3, 115f
                  sltiu        t4, a3, -747
                  beq          ra, s10, 118f
                  slti         gp, s11, -2045
                  sra          s8, s8, s9
115:              addi         a4, s2, 514
                  sltu         ra, t4, s11
                  bne          gp, t5, 121f
118:              srai         s2, t6, 6
119:              srai         s9, a5, 18
                  and          s1, s4, t3
121:              sll          ra, s6, s3
                  auipc        sp, 211832
                  addi         s6, a3, 2024
                  add          s6, s1, t6
                  or           a7, s9, t4
                  beq          t4, s5, 145f
                  and          tp, a2, a7
                  sub          s1, tp, s3
                  sub          sp, s10, t6
                  xori         s7, ra, -939
                  srli         t5, s6, 29
                  bgeu         t2, t4, 152f
                  or           s1, a3, t4
                  add          s8, a7, tp
                  xor          a2, t4, t6
                  bge          gp, a3, 154f
                  bge          t2, ra, 141f
                  sltiu        s4, gp, 1798
                  nop
                  ori          s1, gp, 1083
141:              bltu         s5, s8, 159f
                  auipc        sp, 235173
                  slti         a4, a0, -331
                  la           s2, region_0+1934 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, -10(s2)
                  lbu          a4, -7(s2)
                  add          a4, a6, sp
                  lh           s0, 0(s2)
                  sb           s3, 9(s2)
                  lbu          s1, -5(s2)
                  lb           tp, 9(s2)
                  sb           s7, 12(s2)
                  auipc        t4, 780359
                  lui          s1, 708067
                  srl          t2, s7, s4
                  lb           s11, 6(s2)
                  sb           s0, -15(s2)
                  sb           s6, -1(s2)
                  sub          tp, ra, sp
                  lb           s9, -12(s2)
                  sb           s7, -1(s2)
                  lb           s0, 11(s2)
                  lbu          a2, 11(s2)
                  srl          a4, a7, zero
                  lbu          s7, -5(s2)
                  lb           a7, 15(s2)
                  lb           gp, 0(s2)
                  lb           s9, -7(s2)
                  sll          t5, zero, tp
                  andi         tp, s9, 1358
                  or           s9, zero, s11
                  and          t2, s0, t6
                  lb           a7, -2(s2)
                  sub          s1, s8, s9
                  lb           a0, -3(s2)
                  sh           s1, -4(s2)
                  sb           a4, 13(s2)
                  lb           t2, 10(s2)
                  lbu          s7, 4(s2)
                  addi         s8, s2, 1209
                  andi         t5, t3, -1563
                  or           a4, gp, a2
                  lbu          a3, -3(s2)
                  slt          t4, s4, s3
                  srl          s9, t0, s1
                  lh           a4, -12(s2)
                  lbu          t3, -13(s2)
                  sb           t4, 5(s2)
                  auipc        a7, 9777
                  sra          zero, t5, s11
                  sw           a4, 10(s2)
                  srai         s1, sp, 29
                  sb           s3, -8(s2) #end riscv_load_store_rand_instr_stream_1
                  andi         t5, t2, -1020
145:              xor          a6, s7, s9
                  bgeu         s3, a5, 154f
                  and          a2, a3, t2
                  nop
                  ori          s6, t0, -1172
                  lui          ra, 311445
                  sra          s1, s0, t3
152:              nop
                  blt          t2, s0, 160f
154:              bgeu         zero, a5, 165f
                  bgeu         s9, a1, 173f
                  addi         ra, t1, -1299
                  lui          a2, 113407
                  xori         a3, a5, 1976
159:              slli         s11, s6, 11
160:              lui          t2, 1035113
                  srai         a7, s1, 5
                  bgeu         s6, a3, 170f
                  andi         s10, a4, 1064
                  bgeu         a4, t5, 181f
165:              add          s0, s4, s3
                  slti         sp, a7, 1540
                  andi         s5, s6, -1014
                  bge          a7, s0, 186f
                  ori          t3, t2, 310
170:              slli         a0, t5, 4
                  sra          s10, a2, s4
                  auipc        s6, 326260
173:              auipc        sp, 347075
                  sra          s9, a1, gp
                  sll          zero, tp, t6
                  sltiu        t2, t3, 530
                  sltu         zero, s2, s5
                  xori         s3, t1, 1852
                  sltu         s3, s10, s11
                  bne          a1, a5, 197f
181:              sltiu        t3, s10, 823
                  nop
                  srl          zero, s6, s1
                  sltiu        a0, tp, 1146
                  sra          a4, s6, s9
186:              xori         t5, t6, 1537
                  sll          a4, sp, s6
                  sltiu        s9, a7, -256
                  srl          s3, s9, t2
                  slti         s10, t6, 1056
                  srl          a5, t4, s3
                  slti         t3, s3, -275
                  bgeu         s10, t5, 212f
                  sub          gp, ra, s10
                  xor          s0, a7, s4
                  sra          s11, s9, a3
197:              beq          t0, a2, 216f
                  xor          t4, sp, a0
                  bne          t6, t3, 210f
                  or           tp, s10, a5
                  blt          gp, s0, 219f
                  slli         sp, s4, 18
                  sltiu        s1, sp, 1187
                  sll          a0, a5, t6
                  nop
                  auipc        t1, 830832
                  srl          t3, t4, a1
                  srai         s11, a3, 4
                  ori          s3, a1, 760
210:              sltu         a2, s0, tp
                  add          tp, t3, t3
212:              sltu         s0, s4, s5
                  sll          t5, a4, sp
                  bltu         s8, s8, 225f
                  and          a0, a4, s5
216:              or           s7, t2, t0
                  bgeu         t6, t0, 230f
                  slli         t4, s8, 0
219:              bgeu         a5, s3, 238f
                  sll          t3, s10, t1
                  bltu         t2, a3, 231f
                  sltiu        a7, t4, -1184
                  add          a4, t1, sp
                  slt          s5, a5, t0
225:              beq          a5, s2, 236f
                  slti         gp, s9, 104
                  slti         s8, a1, 640
                  sub          t3, s6, t5
                  sltu         zero, t6, s4
230:              xori         s0, ra, 1489
231:              add          a6, a5, a0
                  bltu         t5, s0, 248f
                  andi         gp, tp, -932
                  addi         s10, s8, 1619
                  slt          sp, a7, t3
236:              sltu         a5, a3, s0
                  bgeu         a1, a0, 243f
238:              sub          t3, zero, a1
                  sub          s3, s6, gp
                  slti         a0, t1, -693
                  add          s9, s11, a3
                  add          s11, t0, a1
243:              nop
                  bge          t2, s6, 250f
                  lui          a5, 799959
                  sll          s10, s4, t0
                  sll          gp, s3, s1
248:              slli         tp, a1, 16
                  lui          a4, 892145
250:              sltu         s7, a3, a5
                  sll          s0, sp, gp
                  bne          a2, t0, 267f
                  auipc        s7, 518486
                  nop
                  bne          gp, s8, 260f
                  bgeu         s5, zero, 276f
                  xori         t3, s1, -515
                  srli         t4, t2, 0
                  add          s5, s10, sp
260:              addi         a5, a7, 817
                  srai         s6, t2, 14
                  srl          tp, s9, s10
                  andi         s8, s0, -239
                  bgeu         a0, t6, 280f
                  bne          s0, s8, 281f
                  add          a6, s7, s5
267:              bge          t6, a6, 278f
                  slli         s3, t1, 6
                  add          t1, gp, sp
                  srl          t2, t0, s0
                  xori         s0, sp, -992
                  bgeu         s5, sp, 288f
                  xor          s5, s11, t3
                  srai         a6, sp, 15
                  or           a5, s3, a7
276:              nop
                  sll          sp, t3, s11
278:              srli         t4, t3, 9
                  bne          ra, s1, 288f
280:              srli         s8, s11, 22
281:              bge          s0, gp, 297f
                  bge          gp, s5, 300f
                  add          gp, s2, zero
                  add          gp, a0, a3
                  lui          a3, 824361
                  bltu         s10, t2, 295f
                  bne          s4, t2, 306f
288:              sll          s4, t1, a6
                  add          a5, t5, t1
                  sltiu        s8, s5, 477
                  or           t3, t4, tp
                  addi         s4, t5, 1955
                  srai         s1, t6, 29
                  bgeu         a6, s4, 300f
295:              slli         a4, s8, 21
                  slli         a7, s4, 4
297:              srli         tp, s3, 28
                  auipc        t1, 709462
                  bne          s2, sp, 317f
300:              addi         s0, t6, 1402
                  beq          s5, a1, 312f
                  sltu         t2, t0, s11
                  nop
                  ori          s3, s4, 1122
                  sra          zero, t5, ra
306:              xori         s1, ra, -561
                  blt          s4, ra, 326f
                  bgeu         s0, s1, 319f
                  and          s5, t0, t6
                  lui          s10, 80178
                  sltu         s4, s1, s2
312:              ori          s2, gp, -531
                  and          ra, s6, s5
                  bgeu         tp, a6, 329f
                  addi         s11, s10, -508
                  bgeu         t2, a2, 334f
317:              sltu         a4, a5, s11
                  slti         s9, s0, 2045
319:              bgeu         s7, a3, 329f
                  xori         a3, gp, 1630
                  add          s5, s3, s6
                  lui          t1, 1038282
                  slli         gp, s4, 5
                  or           s8, a0, s3
                  sll          t3, a7, t4
326:              sub          gp, a7, s3
                  slti         t4, t2, -1188
                  blt          t2, s4, 344f
329:              beq          zero, sp, 335f
                  andi         s1, tp, 897
                  blt          s2, t1, 348f
                  xor          a4, sp, s3
                  lui          a2, 105226
334:              srai         t4, s4, 14
335:              ori          s3, a3, 980
                  ori          a4, s5, 1625
                  sltu         t3, s11, s1
                  slti         s0, s9, 1491
                  sltiu        s5, s7, -1038
                  sltu         zero, s1, s7
                  bne          a3, t3, 345f
                  xor          a4, s11, ra
                  auipc        s0, 418491
344:              bgeu         t3, s11, 352f
345:              and          s2, s2, a1
                  addi         t3, s1, -1316
                  slli         s1, a5, 23
348:              or           t3, s2, s2
                  bne          t1, a5, 356f
                  addi         t4, zero, -765
                  lui          gp, 572740
352:              sltu         a0, s3, s7
                  xori         t5, a5, 603
                  sll          t5, t1, t1
                  beq          s5, s3, 360f
356:              andi         t2, s2, -386
                  slti         s11, a1, 1552
                  slti         s0, s11, 1683
                  sltu         t3, a1, a2
360:              sub          s0, t6, a6
                  andi         t4, a1, 1044
                  bne          t3, s11, 375f
                  sub          zero, zero, s10
                  bge          ra, s4, 380f
                  sll          t1, s1, gp
                  bne          a7, s4, 377f
                  auipc        s5, 947264
                  slti         s5, a6, -804
                  bltu         a0, s5, 388f
                  sra          a3, t5, s5
                  blt          gp, s11, 388f
                  sltiu        tp, s2, 1226
                  bgeu         a7, a0, 393f
                  sltiu        s1, a3, -2004
375:              slti         s7, s8, 1226
                  blt          a3, tp, 392f
377:              and          zero, zero, tp
                  srl          s6, t1, t5
                  and          s3, s10, t2
380:              beq          t0, s5, 391f
                  auipc        tp, 712063
                  and          s8, a7, a4
                  srl          s3, tp, t4
                  add          s11, s0, s3
                  blt          a6, t2, 393f
                  blt          t6, s11, 404f
                  nop
388:              srl          a0, a0, s4
                  and          t1, t5, s6
                  slti         s4, ra, -1473
391:              lui          a5, 548239
392:              nop
393:              bne          t2, a2, 404f
                  slli         tp, t5, 8
                  slt          t5, s3, t2
                  sltiu        s4, a0, -602
                  andi         s11, a1, -1043
                  add          s11, t5, ra
                  andi         sp, a6, -1511
                  add          t4, s4, s11
                  addi         s8, zero, 1645
                  nop
                  sub          tp, s9, a1
404:              sub          t4, a7, t3
                  add          t2, a0, gp
                  bne          t3, zero, 421f
                  xori         s8, s8, -292
                  auipc        s1, 778769
                  sltiu        s8, s4, -1979
                  srli         t5, s0, 6
                  ori          s4, t2, -1618
                  auipc        sp, 258882
                  sltu         t5, a2, a0
                  sll          gp, zero, s9
                  sltu         s4, a2, s10
                  bgeu         s2, s3, 427f
                  ori          s7, sp, -457
                  bltu         a5, t2, 434f
                  beq          t2, s6, 437f
                  and          a2, s10, s1
421:              auipc        s7, 658437
                  sub          s9, s10, ra
                  sra          a0, s7, tp
                  sltiu        t4, ra, 504
                  nop
                  slli         s6, a1, 5
427:              bge          sp, t5, 433f
                  and          tp, a7, a1
                  ori          s8, t4, 275
                  sltu         tp, s5, s3
                  addi         s6, s9, 1365
                  add          sp, gp, s7
433:              slli         s10, a1, 15
434:              sll          s7, s1, s3
                  lui          t4, 50446
                  sltu         a0, t4, s10
437:              sub          tp, s10, s9
                  nop
                  addi         t4, sp, -1274
                  bne          s4, s3, 452f
                  sltiu        t5, s10, -91
                  addi         t5, gp, -739
                  sltiu        zero, t3, 1309
                  addi         a5, t2, 1393
                  and          s9, t1, s0
                  beq          t2, zero, 452f
                  lui          sp, 481459
                  bltu         t1, s9, 452f
                  bge          s11, a2, 452f
                  auipc        a2, 439759
                  sltu         zero, s9, s7
452:              slt          s11, ra, t3
                  sltiu        s8, t5, -1321
                  srli         s9, s1, 9
                  lui          s8, 295448
                  lw           t1, 4(t0)
                  sub          s1, s8, a6
                  or           a6, gp, a4
                  addi         t0, t0, 20
                  and          t5, s4, s4
584:              addi x18, x6, 0
584:              jalr x18, x18, 0
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
                  addi x5, x5, -128
                  sw  x1, 4(x5)
                  sw  x2, 8(x5)
                  sw  x3, 12(x5)
                  sw  x4, 16(x5)
                  sw  x5, 20(x5)
                  sw  x6, 24(x5)
                  sw  x7, 28(x5)
                  sw  x8, 32(x5)
                  sw  x9, 36(x5)
                  sw  x10, 40(x5)
                  sw  x11, 44(x5)
                  sw  x12, 48(x5)
                  sw  x13, 52(x5)
                  sw  x14, 56(x5)
                  sw  x15, 60(x5)
                  sw  x16, 64(x5)
                  sw  x17, 68(x5)
                  sw  x18, 72(x5)
                  sw  x19, 76(x5)
                  sw  x20, 80(x5)
                  sw  x21, 84(x5)
                  sw  x22, 88(x5)
                  sw  x23, 92(x5)
                  sw  x24, 96(x5)
                  sw  x25, 100(x5)
                  sw  x26, 104(x5)
                  sw  x27, 108(x5)
                  sw  x28, 112(x5)
                  sw  x29, 116(x5)
                  sw  x30, 120(x5)
                  sw  x31, 124(x5)
                  add x11, x5, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x22, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x22, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x22, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x22, x17, ecall_handler
                  li x17, 0x1
                  beq x22, x17, instr_fault_handler
                  li x17, 0x5
                  beq x22, x17, load_fault_handler
                  li x17, 0x7
                  beq x22, x17, store_fault_handler
                  li x17, 0xc
                  beq x22, x17, pt_fault_handler
                  li x17, 0xd
                  beq x22, x17, pt_fault_handler
                  li x17, 0xf
                  beq x22, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

load_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

store_fault_handler:
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x5, x11, zero
                  lw  x1, 4(x5)
                  lw  x2, 8(x5)
                  lw  x3, 12(x5)
                  lw  x4, 16(x5)
                  lw  x5, 20(x5)
                  lw  x6, 24(x5)
                  lw  x7, 28(x5)
                  lw  x8, 32(x5)
                  lw  x9, 36(x5)
                  lw  x10, 40(x5)
                  lw  x11, 44(x5)
                  lw  x12, 48(x5)
                  lw  x13, 52(x5)
                  lw  x14, 56(x5)
                  lw  x15, 60(x5)
                  lw  x16, 64(x5)
                  lw  x17, 68(x5)
                  lw  x18, 72(x5)
                  lw  x19, 76(x5)
                  lw  x20, 80(x5)
                  lw  x21, 84(x5)
                  lw  x22, 88(x5)
                  lw  x23, 92(x5)
                  lw  x24, 96(x5)
                  lw  x25, 100(x5)
                  lw  x26, 104(x5)
                  lw  x27, 108(x5)
                  lw  x28, 112(x5)
                  lw  x29, 116(x5)
                  lw  x30, 120(x5)
                  lw  x31, 124(x5)
                  addi x5, x5, 128
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
