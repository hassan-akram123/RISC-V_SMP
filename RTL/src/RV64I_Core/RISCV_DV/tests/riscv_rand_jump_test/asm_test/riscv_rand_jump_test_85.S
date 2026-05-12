.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x16, kernel_stack_end

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
                  li x0, 0x51659c8c
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xa
                  li x5, 0xf13a1b05
                  li x6, 0x5
                  li x7, 0x80000000
                  li x8, 0x6c7d54f8
                  li x9, 0x2baa33d5
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0x3
                  li x15, 0x2
                  li x17, 0xf9be2b03
                  li x18, 0x56f6a868
                  li x19, 0x8
                  li x20, 0x80000000
                  li x21, 0xfbdf2a74
                  li x22, 0xff3cfcc7
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xdc9f9655
                  li x26, 0x0
                  li x27, 0x3
                  li x28, 0x6
                  li x29, 0x2
                  li x30, 0xf2ec04d2
                  li x31, 0xff87c609
                  la x10, user_stack_end
main:             la           ra, region_0+1669 #start riscv_load_store_rand_instr_stream_1
                  and          a1, t0, s10
                  lb           t3, -1424(ra)
                  add          t0, t5, t1
                  sltu         t4, a3, ra
                  srli         t3, s8, 4
                  lbu          s0, 126(ra)
                  add          s8, s6, a5
                  srai         a4, s10, 15
                  or           s8, s1, a1
                  sra          a4, a5, a0
                  sh           s1, -259(ra)
                  addi         sp, a3, 1557
                  sb           sp, -81(ra)
                  sra          s9, s1, a0
                  slti         t2, ra, -2047
                  sltu         s3, s10, t1
                  lh           a7, -123(ra)
                  xori         a3, s6, 1036
                  sltiu        a3, a2, 1789
                  nop
                  xori         t4, s2, 165
                  lb           t6, -734(ra)
                  lb           s9, -409(ra)
                  sltiu        t5, s5, -2001
                  sb           s5, 164(ra)
                  auipc        tp, 383207
                  slti         t0, a3, -50
                  sltu         s8, a4, gp
                  sltu         s5, a5, a6
                  andi         s6, a2, 541
                  lw           s5, 223(ra)
                  sltiu        sp, a7, -445
                  auipc        t3, 3141
                  lui          s9, 111278
                  sub          s3, s9, t5
                  sltu         tp, ra, a5
                  slli         s9, s4, 14
                  slti         t0, a7, -266
                  lbu          t1, -1515(ra) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_1+1585 #start riscv_load_store_rand_instr_stream_0
                  srl          s0, t5, s3
                  ori          t2, t5, -608
                  lhu          t1, -15(s4)
                  lbu          s1, -2(s4)
                  sh           t1, 3(s4)
                  sh           a0, 15(s4)
                  lb           t5, 13(s4)
                  lb           s6, -15(s4)
                  sub          sp, s7, a4
                  lw           t6, 7(s4)
                  sw           s10, -13(s4)
                  lbu          s10, 12(s4)
                  and          s10, s11, s4
                  lbu          a4, 7(s4)
                  lb           a7, 8(s4)
                  slt          t0, t1, t5
                  add          s0, t0, t4
                  sltu         s5, a3, a0
                  lw           zero, -1(s4)
                  lb           s0, 9(s4)
                  xor          s5, t6, t2
                  and          a3, s11, a0
                  sll          t1, tp, a7
                  lbu          t2, 14(s4)
                  sb           a3, 12(s4)
                  sltiu        t5, gp, 112
                  sltu         gp, sp, s2
                  ori          s1, ra, -356
                  slti         a5, t2, -602
                  lb           t4, -11(s4)
                  andi         t3, t6, -1902
                  sb           a3, 14(s4)
                  lui          s11, 981739
                  srai         t0, a5, 7
                  srai         s0, s6, 27
                  sb           a7, -1(s4)
                  sltiu        s3, zero, -111
                  sw           a0, 15(s4)
                  auipc        t2, 909937
                  lui          ra, 927195
                  lb           t5, 8(s4)
                  or           a5, t2, a5
                  sltiu        gp, a3, -348
                  add          zero, a0, s1
                  lb           sp, -15(s4)
                  and          t4, s7, s4
                  sh           s9, -7(s4)
                  sb           a2, 14(s4)
                  sb           s4, -16(s4)
                  lbu          t5, 9(s4)
                  lbu          tp, -2(s4)
                  lb           s1, -2(s4)
                  sb           s6, -16(s4)
                  lhu          zero, -3(s4)
                  sb           s9, -4(s4) #end riscv_load_store_rand_instr_stream_0
                  srli         s3, s0, 3
                  sltiu        s5, gp, -1103
                  xori         t3, s0, 1733
                  srl          gp, t5, t3
                  xori         s7, s8, 449
                  srai         t0, s1, 26
                  bgeu         a4, s8, 26f
                  slli         t4, s7, 18
                  sub          ra, a2, t0
                  add          s3, sp, t3
                  sll          t0, t5, s10
                  bgeu         s2, t5, 18f
                  bne          s5, s3, 26f
                  add          s7, s3, s6
                  slli         sp, s0, 3
                  sltiu        s8, t0, 1719
                  sub          a5, t3, s10
                  slti         s7, a5, -507
18:               sll          ra, s3, tp
                  add          s9, s2, t3
                  sltu         s9, s4, a4
                  slti         t1, t4, -450
                  ori          zero, a3, 339
                  sltiu        sp, s6, 242
                  add          t6, s6, t3
                  xori         a5, t4, -483
26:               add          t3, t0, t0
                  auipc        a7, 126054
                  nop
                  xori         s1, a7, -1798
                  srai         s11, t2, 31
                  addi         s1, t3, -182
                  nop
                  sltu         s2, s1, s4
                  srli         s1, s6, 12
                  bge          t4, a1, 41f
                  bgeu         s6, s6, 38f
                  nop
38:               sll          s1, s11, a4
                  slti         s2, s9, -918
                  sltiu        s3, s6, -46
41:               sub          tp, ra, t6
                  srli         a1, a0, 11
                  blt          t5, t2, 49f
                  slti         s11, s4, 1375
                  bltu         s5, t6, 47f
                  sltiu        s4, t2, 1670
47:               andi         tp, s2, 542
                  srai         s9, zero, 18
49:               lui          ra, 210085
                  ori          a7, s4, 88
                  slti         a1, sp, 390
                  slti         s6, t2, -915
                  slt          s0, a4, tp
                  or           s8, s4, gp
                  ori          s6, s7, -151
                  blt          s6, a2, 76f
                  and          s9, a4, t1
                  la           s10, sub_1
                  and          t4, s4, a0
                  sltiu        t3, t4, 1382
                  addi         s10, s10, 377
                  sltu         t6, a2, s3
                  andi         s2, tp, -416
                  bne          s6, a4, main_j2 #branch to jump instr
                  sll          s1, s10, s6
                  slli         t0, a3, 13
                  ori          t4, t3, 949
main_j2:          jalr         t1, s10, -376 #jump main -> sub_1
                  srai         t6, s9, 15
                  xori         sp, a2, 440
                  lui          s4, 511671
                  srl          tp, a6, s10
                  slli         a3, a4, 6
                  xor          a4, t0, s7
                  andi         s3, t6, -598
                  bge          s10, t3, 77f
                  xori         t0, t0, -1711
                  bge          t6, t3, 69f
                  xori         zero, t2, -207
                  srl          tp, s11, a1
69:               bge          t1, s8, 78f
                  auipc        s6, 458828
                  bne          s11, s8, 75f
                  add          s0, t6, t4
                  xori         s0, a5, -1600
                  bgeu         t6, s3, 82f
75:               blt          s4, a4, 95f
76:               slt          s0, a6, t1
77:               srai         s6, ra, 24
78:               beq          zero, a2, 81f
                  add          t3, a0, s3
                  bne          s11, a5, 81f
81:               add          s8, ra, s10
82:               bge          s11, tp, 101f
                  bltu         s3, s5, 85f
                  bne          s3, t4, 98f
85:               blt          s10, ra, 95f
                  sra          a7, a6, a4
                  auipc        ra, 1027700
                  xor          ra, s5, t6
                  lui          a7, 858764
                  sub          s4, s8, gp
                  nop
                  lui          s8, 554079
                  bne          gp, a6, 108f
                  bge          s0, t3, 108f
95:               bne          t5, s1, 105f
                  slt          gp, s10, a6
                  add          s8, s6, t6
98:               sltu         s4, t3, s7
                  auipc        s9, 833007
                  auipc        a5, 894166
101:              addi         t5, s7, -844
                  sltu         s1, t1, ra
                  srli         t0, a7, 11
                  ori          ra, s5, 846
105:              addi         ra, a5, -449
                  and          s2, gp, t0
                  nop
108:              sub          s9, a0, a5
                  slti         s10, s2, 699
                  bne          s1, a2, 111f
111:              lui          t4, 372734
                  sub          a1, gp, gp
                  add          s9, s11, a7
                  or           s6, s3, t1
                  addi         zero, s1, -1544
                  add          gp, t5, s6
                  sub          s6, a6, t1
                  bltu         s4, s7, 126f
                  ori          s2, a1, 131
                  and          s1, sp, t4
                  auipc        t0, 1028262
                  or           s1, s7, s7
                  srai         tp, a1, 4
                  auipc        s3, 413383
                  slti         t1, t1, -2032
126:              sll          t6, s3, s11
                  nop
                  sltu         s8, t4, a1
                  srli         t2, s11, 24
                  bgeu         t4, s4, 147f
                  slti         t2, s7, -1591
                  or           t6, sp, a3
                  slli         s4, a3, 25
                  xori         t1, s2, 1441
                  xor          t6, t0, a3
                  addi         ra, s5, -1841
                  xori         t3, a5, 210
                  srl          s4, a3, t4
                  sub          t2, s6, a0
                  slti         t0, tp, -785
                  ori          s6, s5, 671
                  xor          t0, s10, a1
                  slli         t1, s11, 15
                  slt          t4, zero, s1
                  addi         a7, s8, -719
                  srli         t5, t6, 2
147:              auipc        gp, 96402
                  sra          a3, s6, t2
                  slt          s5, a6, a7
                  slli         s9, s7, 7
                  slli         t5, t2, 2
                  andi         t3, a6, 905
                  ori          t4, a7, -1582
                  sub          a4, a0, a2
                  and          t5, sp, s3
                  auipc        a7, 195733
                  xor          a1, a2, s2
                  and          s8, ra, sp
                  auipc        t5, 50798
                  ori          s3, s11, 1494
                  bge          s10, s1, 171f
                  and          a7, s6, zero
                  slli         s3, t0, 0
                  andi         a5, s11, 1816
                  bgeu         s11, s8, 178f
                  nop
                  lui          s4, 879409
                  srai         s0, s7, 14
                  bgeu         s3, t2, 176f
                  slli         s2, s3, 17
171:              bgeu         t0, a5, 188f
                  xori         t4, s3, -1605
                  slt          t6, a1, s1
                  xor          s6, zero, a6
                  slli         t5, a6, 28
176:              xor          t6, s5, s4
                  or           t2, s9, a3
178:              ori          s1, s0, 1496
                  and          s7, t1, s10
                  xor          a5, a4, a1
                  xori         s11, s4, 1620
                  beq          s3, s0, 202f
                  xori         s0, t4, -1669
                  sll          zero, t6, t2
                  addi         s6, a0, 1906
                  ori          s4, s6, -1115
                  add          s10, a1, tp
188:              blt          a6, t0, 189f
189:              srai         s7, a1, 16
                  beq          s5, t6, 192f
                  blt          tp, gp, 206f
192:              blt          t4, a4, 202f
                  blt          s4, a0, 207f
                  sll          t0, t2, t0
                  slti         s11, a3, -346
                  nop
                  xori         s0, t0, 739
                  srl          ra, ra, t0
                  ori          a7, s4, 93
                  sltiu        zero, s6, 2020
                  addi         s1, a5, -290
202:              or           t3, a2, a3
                  and          s0, s8, a0
                  sll          s4, zero, s1
                  bge          tp, t5, 215f
206:              srai         t3, a7, 21
207:              srli         t5, a5, 14
                  sub          s7, s3, t3
                  bltu         t6, a5, 216f
                  sll          s5, s7, s8
                  sltu         s6, a0, zero
                  sltiu        gp, ra, 14
                  slti         t5, s11, 963
                  sra          t5, a3, s4
215:              ori          t2, s4, -1106
216:              ori          zero, a4, 1688
                  srl          t5, a2, ra
                  or           s10, t6, gp
                  sltiu        gp, t3, 532
                  slt          a5, t5, t3
                  and          t1, a4, zero
                  slli         a3, a0, 13
                  ori          tp, t0, 34
                  srli         a1, t6, 27
                  nop
                  ori          s3, s9, 1645
                  and          s0, ra, ra
                  bltu         a1, a7, 235f
                  slti         s7, s6, -1518
                  blt          s4, a5, 232f
                  sll          s10, s5, s3
232:              sub          s8, t1, s6
                  sll          t1, a5, s10
                  bltu         a0, a4, 251f
235:              sltu         s8, t2, a2
                  bgeu         t5, s6, 256f
                  bltu         s6, t1, 257f
                  nop
                  sltiu        s7, tp, 99
                  andi         s6, s5, 612
                  sra          s11, ra, a2
                  slt          s9, a2, s10
                  xor          s9, a4, s3
                  auipc        a4, 186318
                  sra          s4, s6, a3
                  xor          a1, a4, s9
                  andi         tp, ra, -364
                  beq          t4, s2, 256f
                  sltu         a7, s5, a1
                  nop
251:              andi         s5, a1, -318
                  or           s6, s5, s11
                  slli         s8, t3, 10
                  nop
                  bltu         s5, t5, 269f
256:              bge          s4, gp, 262f
257:              bltu         s4, gp, 276f
                  addi         s0, s11, -343
                  and          s0, a2, s10
                  slt          a4, t2, s5
                  sltiu        t1, a5, 1841
262:              add          s6, s0, t0
                  slt          s2, a1, t6
                  slli         t4, s2, 13
                  slti         t6, a3, -1541
                  sra          t4, tp, a3
                  addi         s2, ra, 700
                  slli         a1, t2, 6
269:              auipc        t0, 213722
                  slli         s10, a0, 22
                  sra          a3, a5, tp
                  srai         s6, s6, 12
                  addi         zero, a4, -788
                  xori         t3, sp, 467
                  srli         t1, t4, 23
276:              bne          s6, a4, 289f
                  sltiu        s11, a3, -370
                  slti         a3, s11, -60
                  ori          s3, s7, 1376
                  srli         a7, a6, 1
                  sltiu        t2, a5, 179
                  or           s2, t6, t3
                  ori          t5, zero, 1517
                  bne          a5, s10, 290f
                  slti         t4, s2, 262
                  srl          sp, t4, t3
                  sra          t1, gp, a2
                  bne          sp, t4, 298f
289:              auipc        s0, 834909
290:              andi         s1, a7, -555
                  and          t6, t4, s11
                  auipc        a4, 299656
                  addi         s9, t1, 1667
                  nop
                  la           a7, sub_1
                  addi         a7, a7, 395
                  sll          s3, s6, t2
                  bge          s7, s1, main_j3 #branch to jump instr
                  nop
main_j3:          jalr         t1, a7, -394 #jump main -> sub_1
                  or           t0, t0, s7
                  sltu         t0, ra, s7
                  xor          t2, s10, s8
                  beq          s9, s0, 297f
                  lui          s2, 122576
297:              xor          s8, sp, s11
298:              ori          s4, t4, -914
                  sltiu        a1, a0, -1173
                  slti         s1, gp, -1574
                  la           a3, sub_2
                  or           t5, s10, s9
                  ori          s5, s5, -1168
                  addi         a3, a3, -673
                  srli         t2, s2, 22
                  or           t2, tp, s10
                  xor          t3, s3, t0
                  lui          zero, 653904
                  bgeu         gp, t6, main_j1 #branch to jump instr
                  srai         t2, a3, 16
                  srli         t4, t5, 11
main_j1:          jalr         t1, a3, 674 #jump main -> sub_2
                  sll          s1, a7, s6
                  srli         t0, a3, 23
                  or           s4, s0, a4
                  bne          tp, s7, 306f
                  or           s0, s8, tp
                  bgeu         s2, ra, 307f
                  sll          a1, t1, t6
306:              srai         t4, a1, 5
307:              add          a3, s10, zero
                  bltu         s8, gp, 311f
                  sub          s10, s7, a1
                  bltu         a3, gp, 311f
311:              sll          a3, t1, t1
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a0, a0, -36
                  lui          s6, 244527
                  sw           t1, 4(a0)
                  sltiu        gp, t4, 978
                  sltiu        t6, s5, -383
                  la           s4, region_0+237 #start riscv_load_store_rand_instr_stream_1
                  sb           s10, -2(s4)
                  andi         s3, t6, -1193
                  lh           t4, -47(s4)
                  or           a1, tp, s6
                  slli         t3, s4, 22
                  sb           s7, -42(s4)
                  sltu         s1, s9, zero
                  sb           zero, 12(s4)
                  xor          sp, s11, s6
                  sub          a5, s6, t3
                  auipc        a4, 624029
                  sltiu        gp, ra, -621
                  lb           t0, -6(s4)
                  sltu         s10, a1, a0
                  lb           s11, 36(s4)
                  sb           t5, -46(s4)
                  xori         s7, sp, 103
                  nop
                  sb           s1, 31(s4)
                  lb           s8, -3(s4)
                  sra          t3, a6, a4
                  sw           a3, -1(s4)
                  lbu          s11, -31(s4)
                  sll          zero, gp, a4
                  lb           a5, -14(s4)
                  lh           s3, -17(s4)
                  add          zero, ra, sp
                  sb           a1, 47(s4)
                  srai         t1, s9, 4
                  sb           s0, -28(s4)
                  andi         s11, t5, -1810
                  and          t5, gp, gp
                  xori         s10, t0, 21
                  lb           sp, 17(s4)
                  sh           a6, -53(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s10, region_0+154 #start riscv_load_store_rand_instr_stream_2
                  xor          t1, a0, a5
                  slt          tp, zero, s8
                  lw           zero, -38(s10)
                  lhu          s4, -56(s10)
                  lh           s5, -32(s10)
                  lw           t5, 54(s10)
                  and          s1, t4, s0
                  sh           a7, -14(s10)
                  srai         a7, s11, 4
                  addi         a5, t0, 514
                  xor          s7, a2, s11
                  sltu         t5, s7, s11
                  nop
                  srai         t2, t4, 2
                  lhu          t1, 6(s10)
                  sra          s11, s11, a1
                  slli         s6, s11, 2
                  lh           ra, -40(s10)
                  lbu          t2, 37(s10)
                  lhu          t0, 50(s10)
                  addi         s11, t0, -1012
                  add          gp, tp, t2
                  lb           s8, 7(s10)
                  slli         t5, zero, 21
                  auipc        a4, 613668
                  nop
                  slli         s7, s10, 16
                  sw           s10, 38(s10)
                  or           a5, sp, t5
                  lbu          s0, 9(s10)
                  srai         s11, t6, 8
                  addi         tp, s8, -55
                  auipc        t6, 954329
                  lb           a3, -63(s10)
                  lb           sp, 47(s10)
                  srai         ra, a6, 15
                  slli         s5, s0, 17
                  sub          sp, a6, a5
                  lui          ra, 67205
                  lb           s1, 27(s10)
                  add          s0, ra, t0
                  lbu          t1, -25(s10)
                  xor          s11, a5, tp
                  add          gp, sp, s8
                  sb           a5, -9(s10) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+1006 #start riscv_load_store_rand_instr_stream_3
                  sb           s8, -167(s9)
                  sb           zero, -99(s9)
                  lbu          t5, 143(s9)
                  lhu          s1, 192(s9)
                  xor          t4, t5, a3
                  lbu          s1, 62(s9)
                  sh           zero, 160(s9)
                  lb           a5, 72(s9)
                  slt          s5, s5, s6
                  lbu          a3, 174(s9)
                  srl          s0, s9, s0
                  lb           s4, -198(s9)
                  lh           s2, -150(s9)
                  srli         t6, t5, 12
                  sb           s11, -53(s9)
                  slli         t0, s2, 19
                  lbu          t3, 203(s9)
                  lb           a4, 43(s9)
                  sb           a2, 69(s9)
                  sb           s3, 151(s9)
                  lb           t3, -66(s9)
                  lbu          a4, 95(s9)
                  slli         zero, s4, 21
                  sll          s8, s4, sp
                  srli         zero, a4, 13
                  lbu          a3, -154(s9)
                  lb           s11, 255(s9)
                  sb           s11, -21(s9)
                  andi         s0, sp, -122
                  addi         t4, s11, 1953
                  sb           s1, -247(s9)
                  addi         sp, s6, -213
                  lh           t1, -72(s9)
                  lbu          gp, -230(s9)
                  lb           s6, 241(s9)
                  lbu          s11, -171(s9)
                  addi         s11, sp, -99
                  slt          t2, s5, s6
                  lb           a7, 233(s9)
                  sb           t6, -172(s9) #end riscv_load_store_rand_instr_stream_3
                  la           s2, region_1+139 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, 0(s2)
                  sltiu        t2, t2, -1680
                  sb           t0, 14(s2)
                  srl          s8, a0, s9
                  srli         s8, t1, 18
                  sltu         a7, t3, t2
                  sb           sp, -14(s2)
                  sltu         t2, a2, t3
                  sra          ra, s1, s5
                  srai         ra, s2, 3
                  sh           s4, -9(s2)
                  sb           a3, 16(s2)
                  sb           sp, 2(s2)
                  lbu          s0, -10(s2)
                  lbu          zero, -8(s2)
                  slti         s8, zero, -255
                  sltu         tp, a5, s3
                  lb           s6, -9(s2)
                  lb           t6, -10(s2)
                  add          sp, t4, s9
                  lbu          a5, 6(s2)
                  lb           sp, -10(s2)
                  auipc        t0, 1030362
                  sub          a3, s0, ra
                  xori         t0, t2, 686
                  lbu          t1, 13(s2)
                  lb           s0, -2(s2)
                  ori          a7, a4, -1853
                  lhu          s1, 13(s2) #end riscv_load_store_rand_instr_stream_0
                  srl          s9, gp, t4
                  or           t3, a5, a3
                  xori         s4, ra, 1621
                  add          s6, s10, s5
                  beq          s9, a3, 22f
                  bne          s3, s10, 15f
                  srli         s10, t0, 17
                  bgeu         s3, s6, 21f
                  or           a7, a5, t2
                  bge          a7, a4, 22f
                  bltu         s4, s1, 14f
                  add          t6, s1, a7
                  ori          t1, gp, 1749
                  sll          s0, t0, a3
14:               xor          s1, zero, s5
15:               bge          tp, a0, 27f
                  bne          tp, t5, 28f
                  xor          a5, a4, s0
                  blt          a2, zero, 30f
                  and          a5, t5, s7
                  bgeu         s0, ra, 29f
21:               add          s6, t0, a3
22:               bgeu         a5, t0, 28f
                  sub          s4, s4, s7
                  beq          a5, a1, 41f
                  lui          s9, 249618
                  bge          a5, t3, 44f
27:               blt          a0, sp, 41f
28:               or           s4, t0, s5
29:               and          s2, s1, a0
30:               srl          s7, a0, s1
                  and          a5, s3, t5
                  sub          s9, a3, s0
                  slt          s10, s8, sp
                  add          s5, s4, s7
                  addi         t4, a7, 463
                  nop
                  add          a5, a6, a6
                  or           s8, s6, s8
                  sltu         s6, s3, t0
                  bge          s0, a0, 46f
41:               sltiu        s5, a5, -632
                  srli         t4, a7, 9
                  sub          a7, a5, a7
44:               bne          t5, a5, 50f
                  srl          s0, s5, t1
46:               blt          a7, ra, 55f
                  beq          a5, s3, 59f
                  sltiu        s3, zero, 1275
                  bltu         s5, s10, 67f
50:               bltu         s9, sp, 70f
                  and          a4, t2, a6
                  sub          s5, sp, s3
                  ori          t5, a4, 584
                  slt          a4, sp, s0
                  lui          s7, 97828
                  sra          s4, a0, s6
                  slli         t2, s5, 11
                  slt          t0, t3, t3
                  la           s2, sub_3
                  xori         a7, s3, -169
                  andi         sp, s10, 261
                  addi         s2, s2, 811
                  addi         s1, zero, -119
sub_1_j5:         jalr         t1, s2, -811 #jump sub_1 -> sub_3
                  bltu         s9, s6, 56f
                  auipc        s8, 949859
55:               bge          s4, a7, 60f
56:               sub          s4, a2, t1
                  nop
                  bgeu         a2, zero, 71f
59:               or           s7, s3, a7
60:               addi         t3, a2, 1392
                  addi         t5, a6, -1456
                  nop
                  andi         a4, a0, -324
                  andi         s2, s11, -712
                  and          s11, s7, s9
                  sltiu        s8, ra, 730
67:               ori          a1, s6, 1073
                  sltiu        s8, t3, 315
                  slti         s10, a3, -1020
70:               xor          tp, t0, zero
71:               slli         t3, s5, 21
                  sltu         a3, t6, s5
                  xor          zero, s0, zero
                  slli         s10, zero, 27
                  beq          s11, a3, 94f
                  and          s9, s6, zero
                  nop
                  srl          a3, sp, s1
                  and          t4, ra, t5
                  bne          a2, s10, 87f
                  blt          sp, s9, 92f
                  bgeu         s8, t4, 95f
                  xori         a1, t4, -463
                  bne          tp, ra, 101f
                  sub          s2, a6, gp
                  sra          t3, zero, s9
87:               bgeu         t6, s0, 105f
                  bgeu         t4, t1, 100f
                  sra          t3, s10, t3
                  lui          sp, 877219
                  beq          a4, t0, 93f
92:               sub          s0, ra, a1
93:               blt          s9, s0, 99f
94:               sra          s8, s7, gp
95:               sra          t2, s5, s8
                  sll          gp, t2, zero
                  nop
                  bltu         s5, t1, 109f
99:               sub          s8, a5, t6
100:              blt          s11, t5, 118f
101:              lui          a4, 488340
                  srai         t4, a1, 30
                  nop
                  xori         ra, s4, 4
105:              srai         ra, t2, 10
                  xori         s5, a4, -915
                  sll          a7, a6, s7
                  beq          t3, s5, 126f
109:              sra          s4, a4, s3
                  xor          s0, gp, t2
                  sll          t5, a6, t6
                  addi         a3, t1, 385
                  bgeu         s11, s10, 127f
                  ori          s3, s9, -1497
                  bltu         ra, s7, 128f
                  slt          a1, zero, a3
                  sltu         s9, a3, a1
118:              srli         ra, a1, 18
                  or           s0, s8, s7
                  sltu         gp, s9, s2
                  ori          a5, a2, -719
                  xor          t3, ra, a5
                  sltu         t6, a5, a0
                  bltu         t4, s5, 143f
                  la           sp, region_1+872 #start riscv_load_store_rand_instr_stream_4
                  add          t4, ra, a6
                  slti         a3, a5, 3
                  lhu          s2, 16(sp)
                  srli         s11, a4, 24
                  lb           a3, 5(sp)
                  addi         a3, s6, -1826
                  lbu          s0, 9(sp)
                  or           s3, t5, s8
                  slti         tp, a6, 2044
                  lbu          t3, 1(sp)
                  sll          s7, a6, a6
                  slli         s9, a6, 21
                  sra          s5, tp, a5
                  nop
                  addi         a7, t0, 1723
                  xor          s2, t6, s0
                  lb           s7, 4(sp)
                  lb           ra, 4(sp)
                  lbu          s7, 4(sp)
                  sw           s6, 8(sp)
                  andi         t5, a4, -1264
                  lb           s2, -1(sp)
                  lbu          zero, 10(sp)
                  sub          s3, s3, s5
                  lbu          a4, 1(sp)
                  sra          a1, s10, s4
                  sb           a0, 6(sp)
                  lb           tp, 5(sp)
                  auipc        zero, 347472
                  lb           s11, 1(sp)
                  lh           s5, -14(sp)
                  lb           tp, -10(sp)
                  sll          a1, s10, a0
                  xor          s7, s8, a0
                  lb           s6, 13(sp)
                  lb           t0, 10(sp)
                  sb           t6, -10(sp)
                  sb           s10, 10(sp) #end riscv_load_store_rand_instr_stream_4
                  slli         a1, tp, 13
126:              bne          zero, t0, 136f
127:              xori         ra, s10, 1249
128:              xor          ra, a4, s2
                  sub          t3, s6, s6
                  blt          s9, tp, 150f
                  auipc        s2, 449028
                  bne          sp, s3, 144f
                  sll          t6, s0, s2
                  bltu         s10, s11, 140f
                  bgeu         t3, s2, 137f
136:              bge          ra, t2, 154f
137:              beq          a7, t1, 154f
                  sltu         tp, t5, s6
                  srai         s7, s8, 19
140:              auipc        zero, 450327
                  slli         s2, t2, 17
                  xori         sp, s7, -195
143:              bge          t3, a3, 157f
144:              sltu         a7, a1, t4
                  and          t0, t0, sp
                  sra          s7, s5, a3
                  bne          a1, zero, 156f
                  bge          a1, s7, 157f
                  andi         ra, s4, -206
150:              bne          s3, a4, 168f
                  slt          tp, sp, a1
                  sltu         t3, s5, ra
                  sub          tp, a0, gp
154:              bne          s4, s2, 166f
                  add          t6, a2, sp
156:              sll          a7, s0, t2
157:              and          t6, a5, s7
                  bgeu         a0, s0, 170f
                  addi         t0, t2, 997
                  lui          t6, 925674
                  slli         ra, a6, 16
                  sltiu        s4, sp, 749
                  slt          t0, s9, a2
                  srli         s0, a1, 16
                  sub          t5, s11, a6
166:              bgeu         s0, s11, 183f
                  sll          a3, t0, t4
168:              srli         ra, t3, 17
                  sra          s9, t0, tp
170:              nop
                  add          s4, sp, s3
                  srli         zero, t3, 13
                  nop
                  andi         gp, s10, -637
                  sub          zero, s6, s11
                  and          t0, t6, a0
                  ori          s0, sp, 1238
                  andi         s1, a1, 911
                  sll          s4, a5, tp
                  xor          gp, a0, t5
                  and          s4, t6, a6
                  beq          s9, s4, 194f
183:              add          a5, t5, s11
                  and          t0, s0, a7
                  lui          s0, 407796
                  srai         t1, t3, 10
                  blt          t2, a3, 193f
                  slt          zero, t3, a4
                  andi         ra, s2, -1005
                  lui          s2, 615641
                  sltu         s6, s1, a4
                  xori         a7, s2, -720
193:              srli         t4, a1, 20
194:              xor          t5, a4, s11
                  beq          gp, s4, 198f
                  ori          a4, zero, 1713
                  xor          sp, tp, s1
198:              slti         s0, s7, -1431
                  beq          a5, s7, 212f
                  auipc        s9, 580857
                  addi         s5, t4, 2042
                  bge          s2, s11, 209f
                  srli         t1, t3, 29
                  blt          gp, s9, 208f
                  srl          s3, a7, t4
                  xori         s7, s10, -538
                  lui          a1, 466432
208:              auipc        t6, 97923
209:              ori          t5, a4, 432
                  and          s1, s11, t6
                  slli         a3, t3, 19
212:              srli         t4, s10, 26
                  bge          s7, a1, 225f
                  ori          s6, a5, -467
                  bgeu         s2, sp, 220f
                  xor          s7, s9, a1
                  slti         t6, t1, -1734
                  auipc        s1, 470477
                  bne          t4, a0, 232f
220:              bne          s9, s2, 238f
                  xori         s5, t1, -1953
                  sltu         zero, s9, s8
                  add          a4, a5, s0
                  xori         s0, gp, -960
225:              lui          a4, 1033469
                  sltiu        s2, s8, 1089
                  bne          gp, s10, 233f
                  srli         a3, tp, 26
                  auipc        zero, 642138
                  bge          a4, a4, 236f
                  or           sp, s11, t3
232:              slt          s3, a1, t4
233:              slti         s1, a6, 130
                  nop
                  bge          gp, a5, 248f
236:              bltu         s11, t6, 246f
                  lui          s1, 116744
238:              slt          t2, t1, s4
                  lui          s9, 430320
                  andi         s0, a5, 208
                  sll          a5, gp, a7
                  sub          s7, zero, a2
                  and          zero, sp, a7
                  xor          a5, gp, t2
                  and          s5, t2, s9
246:              and          s2, s4, s11
                  addi         tp, a6, -824
248:              nop
                  bltu         s4, a3, 261f
                  slli         zero, t4, 24
                  srli         s7, s4, 24
                  sll          t4, a1, s1
                  bgeu         a0, s3, 271f
                  bgeu         s9, s2, 268f
                  sltiu        sp, t3, 1152
                  sltiu        t0, a0, 1512
                  slt          a5, t6, s9
                  slli         s10, a1, 4
                  blt          s8, s1, 268f
                  bge          s11, s8, 277f
261:              addi         s6, t1, -1372
                  nop
                  beq          s0, s11, 280f
                  sub          ra, s0, s6
                  bne          s5, a0, 271f
                  andi         a7, s11, -717
                  addi         t5, s11, -490
268:              sltiu        s0, t5, 947
                  sub          t4, t5, t0
                  sub          s10, t3, s4
271:              sra          a3, a4, t0
                  srai         t2, s0, 8
                  srai         t1, a3, 31
                  sub          t1, t0, s0
                  slti         s11, a2, -1015
                  sra          ra, t3, ra
277:              add          a3, s9, t2
                  xori         t3, t2, -332
                  srai         gp, s10, 7
280:              blt          tp, t2, 292f
                  slli         s11, t4, 5
                  slt          s2, t6, s0
                  or           s3, s1, t1
                  sltiu        t2, s7, -1319
                  sltiu        s8, t3, 1049
                  slli         s11, s6, 8
                  add          s10, s2, s9
                  sltu         t6, s8, s5
                  slt          tp, zero, t6
                  lui          s5, 524053
                  ori          s6, t1, -1247
292:              add          s9, ra, gp
                  srai         t6, a1, 4
                  sltiu        s2, t2, -1606
                  blt          gp, s6, 307f
                  add          ra, s1, s0
                  bne          ra, a0, 309f
                  srli         s9, a7, 23
                  blt          s7, a3, 311f
                  srai         s0, a6, 9
                  bgeu         s1, s6, 321f
                  bne          a6, a2, 304f
                  slli         s1, t4, 19
304:              srli         s5, s0, 28
                  sltu         s4, t2, s7
                  lui          s9, 943012
307:              and          a4, t0, s9
                  sra          s5, sp, a3
309:              addi         sp, a0, -172
                  or           s2, a4, s7
311:              srai         tp, s4, 18
                  ori          t5, s8, -1142
                  bltu         s3, s7, 326f
                  sltiu        t3, a5, 617
                  addi         a4, a5, 705
                  lui          a5, 645460
                  sltu         s5, a2, s10
                  add          a7, s2, t5
                  xori         a3, a2, 1246
                  slt          zero, t5, gp
321:              sub          a5, s2, s0
                  and          zero, t5, a4
                  beq          tp, t0, 327f
                  nop
                  srai         t3, ra, 12
326:              bgeu         s11, s9, 331f
327:              srli         t1, s5, 7
                  andi         t2, s9, -828
                  sltu         a4, t6, a7
                  bne          sp, s8, 349f
331:              slt          a5, t0, tp
                  addi         s9, gp, 1037
                  nop
                  ori          t1, tp, 292
                  slt          s1, t6, a4
                  sub          t5, t1, t0
                  sra          t4, s4, t3
                  sltiu        gp, t3, 516
                  add          a4, a3, t6
                  bge          a0, t0, 347f
                  nop
                  srli         t0, s0, 6
                  xori         a3, tp, -1866
                  bltu         a3, t3, 355f
                  sra          t0, s6, t3
                  sub          s11, s0, tp
347:              sltiu        s3, a2, 1611
                  bgeu         a6, t5, 357f
349:              lui          s0, 146530
                  slt          a5, tp, a2
                  sltu         s5, gp, tp
                  sll          a7, s9, zero
                  xori         s1, a3, -729
                  nop
355:              andi         t6, a4, 791
                  andi         s10, a1, -1901
357:              bltu         t3, s5, 375f
                  sltiu        t5, t3, 1951
                  srli         s9, s2, 17
                  bgeu         t5, a1, 378f
                  sra          s9, ra, a4
                  sltiu        a4, s4, 933
                  and          s6, a3, t6
                  sra          t1, s2, s1
                  beq          t5, t1, 368f
                  add          a5, s8, t6
                  addi         s1, s0, -1250
368:              slt          s7, t2, t4
                  blt          a1, s5, 383f
                  slli         s2, a4, 27
                  sra          sp, a6, a1
                  andi         sp, s2, -1829
                  sll          s8, s11, a7
                  nop
375:              sltiu        tp, a2, -654
                  add          s11, s4, s9
                  srli         gp, s6, 13
378:              slli         s4, t0, 13
                  ori          a7, zero, -1363
                  xor          sp, ra, a6
                  slt          s9, t1, s0
                  nop
383:              ori          a4, s6, 1380
                  bge          s1, s8, 397f
                  lui          t5, 448341
                  andi         s6, s2, -1412
                  nop
                  slt          t2, s2, s3
                  add          s0, s7, s2
                  bgeu         t1, a1, 402f
                  andi         s4, s4, -1363
                  add          t5, s7, s7
                  bne          a2, t4, 405f
                  ori          s4, t1, 1846
                  bne          zero, sp, 408f
                  srai         s10, s2, 25
397:              andi         s3, t6, 1258
                  bgeu         t3, t6, 415f
                  sltiu        s5, t0, 1361
                  xor          a1, s11, a1
                  slt          t2, s1, s3
402:              andi         t1, s2, -387
                  sltu         tp, gp, gp
                  ori          zero, a7, 1955
405:              slli         t4, a5, 3
                  sltu         s11, a3, t4
                  addi         s0, s2, 1058
408:              xori         t1, s5, -185
                  sltu         a5, t6, s11
                  addi         s5, s9, 2042
                  sltiu        s1, t1, 1248
                  bne          a3, t4, 429f
                  sltu         s11, gp, s0
                  slli         s9, t6, 20
415:              xor          s11, tp, s9
                  slti         t1, t0, -1080
                  addi         t5, ra, -199
                  beq          zero, s5, 429f
                  blt          s8, s8, 437f
                  xori         s0, a4, 1884
                  lui          s7, 596118
                  srai         t0, s1, 26
                  sltiu        s0, s11, 727
                  slti         s7, a4, -480
                  auipc        t3, 804985
                  slli         a4, t4, 25
                  ori          t2, s2, 649
                  srl          s7, a3, t5
429:              bltu         a0, t0, 436f
                  sub          t3, gp, tp
                  sltu         t6, a2, a5
                  sltu         s6, t5, t1
                  slti         s0, a3, 195
                  srli         a7, s5, 0
                  srai         s4, s9, 13
436:              add          t6, t3, s8
437:              ori          gp, a0, -1250
                  or           s3, t4, s11
                  srli         s5, s11, 26
                  sltu         s9, t4, s8
                  bgeu         s6, t6, 443f
                  add          tp, zero, ra
443:              ori          s9, s1, 1115
                  blt          t3, s4, 447f
                  srl          s8, tp, a7
                  srl          a1, t1, zero
447:              bge          a2, a4, 453f
                  slli         s6, t2, 4
                  auipc        s3, 717652
                  xor          a7, a5, a1
                  slli         gp, a4, 27
                  add          gp, t6, a4
453:              lui          t6, 764811
                  bne          s2, zero, 474f
                  lui          s6, 310554
                  sub          t6, a1, tp
                  andi         gp, zero, -1683
                  auipc        t6, 502679
                  blt          s1, s10, 472f
                  bltu         s8, a4, 472f
                  addi         zero, s6, 1089
                  addi         t3, a0, 211
                  slti         a7, t4, -1009
                  addi         s4, s0, 1403
                  andi         a1, a4, 605
                  auipc        gp, 644631
                  slli         t2, s10, 26
                  sltu         t1, a5, a2
                  lui          s0, 957218
                  sltu         s3, s1, s6
                  ori          a1, s3, -64
472:              addi         t1, t1, -507
                  and          t0, t3, a3
474:              xor          a3, s9, t5
                  slt          a5, ra, s0
                  beq          s8, s0, 488f
                  sra          s5, s1, s11
                  sltu         sp, tp, t3
                  sll          t6, s1, ra
                  nop
                  sltu         t5, ra, t3
                  and          s6, a5, a3
                  srl          t4, s6, s8
                  and          gp, sp, zero
                  sub          s8, s6, tp
                  auipc        a4, 640868
                  slti         t1, a1, 145
488:              sll          sp, t3, ra
                  srai         t3, a1, 9
                  addi         ra, a2, -1410
                  sra          s5, t6, s5
                  sra          ra, a4, s8
                  xor          s6, s11, sp
                  sub          t6, a3, s0
                  and          s9, t2, s1
                  srli         gp, t1, 6
                  or           s9, t5, t3
                  bge          a2, a3, 516f
                  sra          s0, a4, a7
                  lui          s5, 960086
                  auipc        s7, 848472
                  blt          s10, a4, 520f
                  auipc        s10, 200530
                  ori          gp, t0, -1752
                  srai         zero, a7, 0
                  beq          a1, sp, 519f
                  and          t0, t4, a5
                  bge          t5, t3, 520f
                  auipc        s11, 191676
                  srl          a5, a0, a6
                  auipc        t5, 378710
                  srai         zero, a5, 9
                  beq          gp, s2, 531f
                  sltiu        t6, s6, -1300
                  beq          s10, a4, 534f
516:              sub          t0, a6, s11
                  xori         t2, s4, 137
                  srli         s4, s7, 30
519:              or           s6, s10, s11
520:              sltiu        gp, s6, -200
                  nop
                  srai         t5, s10, 1
                  sub          a1, a0, t4
                  add          zero, s4, a3
                  andi         t2, tp, -952
                  and          s5, s4, t5
                  slti         t4, zero, 435
                  blt          a7, s6, 533f
                  slli         s6, sp, 23
                  bltu         s1, a3, 539f
531:              slt          s4, sp, s9
                  bltu         a4, a7, 538f
533:              bgeu         a7, s6, 537f
534:              blt          a1, s10, 548f
                  bne          a1, ra, 541f
                  beq          a0, a1, 546f
537:              ori          s8, zero, 508
538:              or           gp, s4, a4
539:              bge          a6, s6, 548f
                  srai         s9, a1, 7
541:              srl          t0, t3, a4
                  bge          tp, s2, 556f
                  bltu         s11, s2, 556f
                  sll          s10, a7, t3
                  slti         a7, a5, -314
546:              bne          t4, s3, 558f
                  sltiu        s1, zero, 1879
548:              srli         s5, s10, 25
                  nop
                  slti         ra, a5, -1639
                  slti         s2, zero, 858
                  and          tp, s3, s10
                  bge          a0, s7, 566f
                  bne          a5, a4, 573f
                  srli         sp, tp, 7
556:              xor          tp, s10, t0
                  bne          a3, a1, 560f
558:              sll          s7, gp, s11
                  or           s2, s3, t6
560:              slli         t6, a6, 10
                  auipc        s0, 169073
                  slli         a7, zero, 5
                  nop
                  xor          s8, a0, s8
                  nop
566:              sltu         sp, a2, a2
                  slti         t2, tp, 835
                  sltiu        s5, s11, 278
                  andi         gp, t3, -1970
                  bgeu         a7, t4, 588f
                  add          zero, a3, s6
                  srai         gp, s5, 26
573:              beq          zero, s7, 578f
                  srai         t0, zero, 15
                  andi         s1, a6, -1630
                  srai         s0, tp, 4
                  add          s7, t0, a3
578:              bltu         t5, a3, 584f
                  beq          s9, a7, 583f
                  slt          t2, s4, s6
                  bne          t5, tp, 593f
                  bltu         tp, gp, 596f
583:              sra          s0, s9, s4
584:              sra          tp, s7, s0
                  sra          ra, a6, s2
                  blt          a5, a2, 604f
                  bltu         s11, s2, 601f
588:              sub          a7, t4, a6
                  auipc        t2, 481344
                  and          a4, s5, s2
                  slli         a1, s2, 9
                  la           a7, sub_3
                  sra          t4, s4, a7
                  addi         a7, a7, -670
                  sltiu        s3, a1, 1283
                  add          s4, s1, s5
                  slti         t5, t1, -804
                  or           t3, t5, a6
                  bge          s2, s11, sub_1_j4 #branch to jump instr
                  nop
sub_1_j4:         jalr         t1, a7, 671 #jump sub_1 -> sub_3
                  and          sp, s11, t2
                  bltu         t1, s10, 609f
593:              or           zero, a6, a3
                  sll          t3, a2, t0
                  slti         a5, a6, 63
596:              and          a3, a6, a6
                  sll          s6, s4, a3
                  ori          a4, t4, -1363
                  srai         t4, s7, 18
                  slti         s3, t2, 213
601:              xor          tp, sp, s9
                  nop
                  srli         s10, a1, 19
604:              slt          t6, a4, sp
                  sltiu        t4, s4, -368
                  ori          s11, t3, 1826
                  srli         zero, tp, 24
                  and          a5, s1, t6
609:              srai         s5, t6, 1
                  slli         zero, t1, 31
                  lui          s0, 183384
                  sub          t0, s9, s11
                  sra          ra, sp, sp
                  srai         ra, tp, 31
                  nop
                  sub          a5, ra, t4
                  bgeu         t1, a5, 635f
                  sltu         s11, s5, a6
                  addi         s1, t3, -1434
                  bltu         t5, a0, 626f
                  add          t0, s2, t2
                  sll          s1, a6, t4
                  sll          s10, s3, a2
                  sltiu        gp, s11, -1456
                  auipc        t4, 948820
626:              sltu         t5, t1, gp
                  addi         s8, sp, -1404
                  auipc        s2, 634840
                  nop
                  srli         t0, zero, 10
                  or           t0, t6, ra
                  xori         t3, a4, 1951
                  blt          t6, a1, 635f
                  auipc        gp, 769776
635:              slti         s11, gp, 1805
                  bge          t2, s7, 642f
                  nop
                  bgeu         t5, a7, 651f
                  bgeu         a7, t1, 650f
                  srai         s10, s6, 10
                  srai         s2, a7, 8
642:              lui          t0, 224784
                  srli         ra, a6, 30
                  beq          t1, s5, 664f
                  ori          s0, s6, -57
                  sltiu        ra, gp, 1795
                  sll          a5, t0, gp
                  sltu         t5, a2, t5
                  srli         gp, s8, 15
650:              andi         s1, t6, -1909
651:              xor          zero, s11, s1
                  sub          t3, zero, a5
                  andi         s8, s10, -109
                  bgeu         s11, s10, 672f
                  andi         a5, a2, 835
                  blt          t2, t6, 668f
                  xor          a3, s2, t2
                  srli         t5, s7, 0
                  xor          a3, t2, s11
                  srl          s1, a3, s0
                  sra          s9, s7, t0
                  addi         s5, s11, -1715
                  or           s3, s2, s0
664:              bltu         gp, s11, 673f
                  beq          a7, a5, 677f
                  slti         tp, s6, 1224
                  lui          s3, 36128
668:              sltiu        s0, tp, -339
                  lui          s8, 311642
                  blt          s11, s7, 679f
                  auipc        tp, 67269
672:              slt          a3, gp, tp
673:              bgeu         s1, t1, 690f
                  sltu         zero, a5, s9
                  ori          t5, a0, -2033
                  xori         s6, a7, -1293
677:              ori          t5, a0, 1789
                  srli         t1, a0, 15
679:              sub          s10, t6, zero
                  sub          s9, s8, a1
                  and          ra, t4, a1
                  or           t6, ra, a2
                  sra          s1, s0, s6
                  srai         t4, tp, 24
                  sltiu        s7, t2, 1223
                  ori          s6, a5, 1293
                  srli         t3, s6, 26
                  sltiu        s1, a4, 1250
                  nop
690:              slti         t5, a2, -551
                  srli         t4, s7, 19
                  bgeu         s9, t2, 704f
                  xor          s0, a2, a5
                  blt          t0, a5, 701f
                  srai         s8, s9, 28
                  srli         s11, gp, 18
                  lui          s3, 402917
                  slli         s5, t6, 6
                  srl          s4, a2, t1
                  sll          s3, t1, a7
701:              bgeu         t4, a1, 711f
                  auipc        a7, 589455
                  auipc        t5, 663016
704:              auipc        ra, 424299
                  ori          sp, s10, 1501
                  slti         s4, a6, -1781
                  add          s1, t4, t1
                  bltu         s0, t0, 714f
                  srli         s7, s10, 4
                  lui          s9, 1007450
711:              auipc        a7, 351202
                  sll          a4, a7, a6
                  sll          s3, s8, t4
714:              addi         s7, a7, -1787
                  ori          s0, s2, -212
                  sltu         s4, t3, t5
                  slti         tp, gp, -983
                  blt          s0, s6, 724f
                  bltu         a6, sp, 732f
                  lui          t4, 890272
                  srai         s7, gp, 20
                  srli         a5, s5, 8
                  andi         a5, ra, 226
724:              beq          s1, s6, 742f
                  bltu         a3, t3, 739f
                  srl          t0, a1, s10
                  sll          zero, s9, s1
                  slt          s9, t4, s2
                  bne          s9, t1, 741f
                  slt          s7, t6, a3
                  sll          a1, t0, t1
732:              sub          ra, tp, a1
                  sub          t1, s4, a5
                  lui          a4, 998500
                  add          s9, s3, s3
                  addi         sp, t3, 1978
                  slt          a5, ra, a3
                  slli         s8, t4, 4
739:              bltu         s4, t1, 747f
                  xor          s4, a6, a6
741:              addi         s5, s2, -148
742:              sll          t5, s10, t0
                  bne          s3, t1, 747f
                  auipc        t2, 596793
                  add          a5, a3, a1
                  slti         s10, s6, 545
747:              addi         s4, a3, -889
                  lw           t1, 4(a0)
                  auipc        t0, 301312
                  sll          s6, s3, t6
                  addi         a0, a0, 36
                  xori         s11, ra, -161
                  nop
                  andi         t3, s8, -1696
975:              addi x3, x6, 0
975:              jalr x3, x3, 0
sub_5:            sub          s5, a2, s10
                  and          s7, s11, s7
                  and          gp, s1, a6
                  auipc        s3, 466316
                  bltu         s0, zero, sub_5_stack_p
sub_5_stack_p:    addi         a0, a0, -24
                  sw           t1, 4(a0)
                  lui          s2, 193595
                  and          tp, a0, s8
                  slli         a3, t3, 1
                  slti         sp, zero, -1666
                  srai         gp, s8, 19
                  sltu         s11, t6, tp
                  srl          s10, s11, s9
                  slti         s2, s1, -411
                  sltu         t3, zero, s8
                  add          a7, ra, a0
                  srl          s5, s0, s1
                  slli         zero, t2, 5
                  srai         s6, s0, 11
                  bgeu         t4, t0, sub_5_j9 #branch to jump instr
                  slti         s7, t6, 1206
                  xori         tp, s10, 815
sub_5_j9:         jal          t1, sub_7 #jump sub_5 -> sub_7
                  sra          s3, s7, a0
                  slli         t1, s10, 31
                  srai         s3, sp, 11
                  sltiu        s6, a1, 339
                  bgeu         t3, ra, sub_5_j11 #branch to jump instr
                  lui          s11, 974971
                  xor          s2, a3, ra
                  auipc        s9, 270983
                  nop
                  lui          s9, 672224
sub_5_j11:        jal          t1, sub_6 #jump sub_5 -> sub_6
                  la           sp, region_0+903 #start riscv_load_store_rand_instr_stream_11
                  lh           s5, 11(sp)
                  lw           t4, -51(sp)
                  slti         a4, sp, -605
                  addi         s5, s4, -1353
                  lbu          t4, -50(sp)
                  lh           s0, 63(sp)
                  sw           s8, 1(sp)
                  addi         t5, s0, -1325
                  ori          s1, zero, -512
                  lbu          s9, -22(sp)
                  lhu          t0, 23(sp)
                  andi         t2, s6, 641
                  lw           s7, 13(sp)
                  nop
                  sub          t3, a2, zero
                  sb           s0, 9(sp)
                  or           s6, tp, a4
                  lw           zero, -3(sp)
                  or           t1, t0, t6
                  lbu          a7, 11(sp)
                  sb           s7, 54(sp)
                  sb           s2, -42(sp)
                  srai         s6, gp, 21
                  lbu          t1, -4(sp) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1612 #start riscv_load_store_rand_instr_stream_5
                  lb           s1, -15(sp)
                  slti         s7, t2, 903
                  lbu          s8, -3(sp)
                  lb           t3, 1(sp)
                  xori         s5, a2, 506
                  lui          t5, 716851
                  xor          s6, a3, t1
                  lw           s6, 4(sp)
                  lhu          s11, -16(sp)
                  sb           a4, 1(sp)
                  lb           tp, 9(sp)
                  add          s4, s11, tp
                  sb           a6, -9(sp)
                  lbu          ra, -2(sp)
                  add          t4, a4, s8
                  auipc        s1, 886887
                  xori         s4, zero, -26
                  xor          t1, t1, s10
                  addi         gp, s10, -944
                  nop
                  lbu          t1, 5(sp)
                  sb           s7, 4(sp)
                  lw           a5, 0(sp)
                  auipc        tp, 183216
                  sltiu        s10, gp, -1174
                  lb           zero, -9(sp)
                  lw           s7, -16(sp)
                  lbu          s10, 4(sp)
                  sb           t2, 9(sp)
                  sltu         s5, s1, zero
                  lb           a3, -9(sp)
                  lhu          gp, 12(sp)
                  lbu          t6, -12(sp)
                  lb           t1, 7(sp)
                  srl          s6, s4, s8
                  lh           s9, -6(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+713 #start riscv_load_store_rand_instr_stream_7
                  sltu         s11, tp, a2
                  lb           t3, 16(sp)
                  addi         a7, s4, -1848
                  slt          a5, s8, a5
                  slt          s4, ra, s8
                  sb           t3, 15(sp)
                  srl          t2, a3, a0
                  sb           a4, -7(sp)
                  sw           t6, -5(sp)
                  xor          a4, a4, a2
                  lhu          s7, 3(sp)
                  addi         a4, s0, -1869
                  sb           a0, 12(sp)
                  lbu          s10, -9(sp)
                  lbu          s6, 8(sp)
                  lb           gp, 11(sp)
                  sb           t0, -9(sp)
                  srai         t3, s11, 1
                  sb           a0, 8(sp)
                  sh           s0, 5(sp)
                  sh           s9, -13(sp)
                  sb           t6, -8(sp)
                  sb           s8, -2(sp)
                  sub          t3, s2, a6
                  lb           s7, -3(sp)
                  lbu          s11, 16(sp)
                  sb           s9, -6(sp)
                  sb           t3, -6(sp)
                  ori          zero, s5, 789
                  lh           t3, -3(sp)
                  sh           s8, 3(sp)
                  sub          t1, t5, t4
                  lbu          t2, 14(sp)
                  sb           t0, -16(sp)
                  lb           s4, -14(sp)
                  sw           t0, 3(sp)
                  xor          s0, s11, a0
                  lbu          zero, -1(sp)
                  lb           s0, 12(sp)
                  slti         a7, s11, -1044
                  srli         s7, t3, 15
                  lhu          zero, 15(sp)
                  lbu          ra, 4(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+40 #start riscv_load_store_rand_instr_stream_3
                  slt          t4, t4, zero
                  srl          s3, s0, t5
                  srli         s9, s1, 7
                  lb           s4, 171(sp)
                  add          s2, a3, s6
                  sb           a5, 1765(sp)
                  auipc        a7, 1020195
                  and          s9, t6, tp
                  add          ra, zero, s4
                  srai         t2, tp, 9
                  srli         zero, s9, 22
                  xor          a3, s10, s3
                  sltiu        s0, t1, 375
                  lhu          s2, 1310(sp)
                  sb           a7, 1861(sp)
                  ori          a5, s4, 1814
                  or           t3, s5, t5
                  lbu          s8, 1343(sp)
                  lui          t1, 303466
                  addi         s7, zero, -1456
                  sb           t4, 1732(sp)
                  sra          a3, s6, a6
                  sh           t6, 1842(sp)
                  lb           s11, 265(sp)
                  sll          a3, gp, a1
                  lui          s2, 551201
                  or           s4, sp, a3
                  slt          a3, t5, s9
                  sltu         s5, s5, t6
                  sub          a7, s3, a2
                  and          t4, a5, t4
                  lbu          t4, 1391(sp)
                  nop
                  sra          s0, a2, a3
                  lui          gp, 802047
                  ori          s1, t5, -1024
                  xor          ra, ra, a2
                  xori         t0, s0, -101
                  xori         s4, t2, -697
                  lb           s5, 1859(sp)
                  sb           a6, 1935(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_0+561 #start riscv_load_store_rand_instr_stream_0
                  lh           s11, -13(a4)
                  lh           s6, 9(a4)
                  sub          s3, a4, s3
                  xori         s1, ra, -1561
                  ori          s10, s11, -1379
                  sltu         s11, t0, t4
                  srli         gp, s11, 16
                  lw           t1, -1(a4)
                  xor          t1, s7, s10
                  srai         t5, a0, 16
                  lh           s9, 9(a4)
                  lb           s4, 0(a4)
                  lbu          a3, 14(a4)
                  lbu          ra, 15(a4)
                  srl          a1, s5, t0
                  lb           s7, 13(a4)
                  sb           s0, -2(a4)
                  lbu          s1, 5(a4)
                  sltiu        s4, a4, -1502
                  sra          sp, a3, t4
                  lbu          t0, 6(a4)
                  sltiu        t0, zero, 2041
                  nop
                  lh           t6, -5(a4)
                  lb           s8, -12(a4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1613 #start riscv_load_store_rand_instr_stream_10
                  auipc        tp, 769763
                  sltiu        s7, s5, -188
                  lb           t3, -1058(sp)
                  sltiu        t5, t6, 339
                  lui          a3, 974860
                  lbu          s3, -1390(sp)
                  lbu          t6, -1371(sp)
                  lbu          s10, -205(sp)
                  lbu          ra, -617(sp)
                  sb           gp, -346(sp)
                  xor          t1, s1, t4
                  lb           s4, -1077(sp)
                  and          a4, t3, s6
                  lbu          s10, 110(sp)
                  or           s2, s1, s1
                  nop
                  lb           s5, -1126(sp)
                  lbu          s6, -646(sp)
                  sra          s6, ra, s6
                  sltu         s6, a4, s1
                  sb           s11, -1295(sp)
                  add          t1, a1, s7
                  lbu          t0, -1068(sp)
                  lbu          tp, -730(sp)
                  lbu          t3, -1341(sp)
                  lb           s11, 366(sp)
                  lb           s5, 79(sp)
                  slt          s10, s4, t4
                  sltu         ra, zero, s11
                  lb           ra, -706(sp)
                  addi         t6, ra, -753
                  lb           t1, -1448(sp)
                  add          t3, zero, a2
                  lbu          t4, -1386(sp)
                  srl          s4, gp, t2
                  sh           t3, -1385(sp)
                  lbu          a3, -492(sp)
                  nop
                  sb           t4, -172(sp)
                  and          s2, a5, a7
                  lh           s0, -1047(sp)
                  nop
                  sub          s8, s2, a1
                  sb           s6, 249(sp)
                  andi         s11, t5, 1900
                  srl          t0, zero, s11
                  lbu          t5, 255(sp)
                  lb           t2, -506(sp)
                  lbu          tp, -1016(sp) #end riscv_load_store_rand_instr_stream_10
                  la           s11, region_1+1330 #start riscv_load_store_rand_instr_stream_8
                  slt          a1, t3, t2
                  lbu          a5, -1086(s11)
                  addi         t3, t0, -1883
                  lb           s1, -56(s11)
                  slt          a4, t1, s8
                  xor          t4, ra, zero
                  auipc        s9, 207621
                  xor          a4, a1, t2
                  srl          s8, s0, t6
                  lb           s5, -1079(s11)
                  and          s8, a4, s10
                  sh           t6, 348(s11)
                  sra          ra, t2, s10
                  lbu          s5, 71(s11)
                  sh           a4, -1286(s11)
                  sub          zero, a1, zero
                  nop
                  lb           a4, -1187(s11)
                  slti         s10, s10, 1489
                  xori         s4, s3, -1775
                  sra          t6, s4, a7
                  auipc        t4, 130735
                  slti         t4, s10, -1035
                  or           t1, t1, ra
                  lb           tp, 650(s11)
                  nop
                  sra          tp, s11, s9
                  sh           t2, -1294(s11)
                  sub          a5, t2, t3
                  sll          a5, s4, s2
                  slti         s3, a0, -1272
                  lh           a5, -438(s11)
                  sb           ra, -1031(s11)
                  slt          a3, a5, tp
                  xori         s6, t6, 47
                  and          s6, a7, s11
                  auipc        s4, 756878
                  sltiu        ra, tp, 1606
                  lbu          s6, -298(s11)
                  lb           s6, -41(s11)
                  lhu          s0, 202(s11)
                  sb           sp, -104(s11)
                  lbu          ra, -943(s11)
                  slli         s3, s11, 25
                  xor          t4, t1, a6
                  lbu          s4, -655(s11) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+379 #start riscv_load_store_rand_instr_stream_4
                  lhu          t4, -29(sp)
                  lb           a7, 4(sp)
                  lb           s3, 20(sp)
                  lhu          s8, 3(sp)
                  lb           s3, -38(sp)
                  lbu          s7, 41(sp)
                  xori         a1, s4, 918
                  xori         t1, s11, 1345
                  lhu          tp, -59(sp)
                  lb           s7, -10(sp)
                  srai         t5, s10, 7
                  lbu          s7, -53(sp)
                  nop
                  lw           a1, -47(sp)
                  lbu          t3, -56(sp)
                  sh           sp, 59(sp)
                  or           s10, s4, a0
                  sb           s6, 20(sp)
                  sb           t4, -60(sp)
                  sb           a2, -58(sp)
                  sltu         s0, a4, s6
                  lbu          tp, 16(sp)
                  sb           s10, 43(sp)
                  auipc        t1, 464271
                  sb           sp, -16(sp)
                  slt          t2, s2, t4
                  sw           t2, -63(sp)
                  srli         a3, t6, 0
                  lui          s0, 733427
                  lb           t1, -54(sp)
                  lb           s9, -42(sp) #end riscv_load_store_rand_instr_stream_4
                  bgeu         s6, t3, 4f
                  srai         t1, s11, 3
                  bgeu         zero, s9, 19f
                  addi         t4, ra, -1749
4:                sll          t2, s8, ra
                  lui          s9, 603477
                  bne          t6, s4, 14f
                  sltu         s0, s0, s10
                  sll          s1, s1, sp
                  blt          s4, s7, 13f
                  ori          s1, t0, 1533
                  add          s1, a5, t6
                  bne          s7, zero, 15f
13:               bltu         s5, t4, 21f
14:               slli         a7, t4, 27
15:               lui          t0, 381653
                  slli         s0, a6, 23
                  auipc        a7, 668661
                  lui          s5, 1000067
19:               blt          s3, s9, 28f
                  bltu         a5, s1, 39f
21:               bltu         s8, t1, 32f
                  sltu         a1, ra, t3
                  add          s4, t1, sp
                  bgeu         a0, tp, 43f
                  add          s0, a0, s1
                  sltu         a1, t2, ra
                  sll          t2, s8, a1
28:               xori         sp, a6, -89
                  slti         t6, sp, -568
                  sltiu        t3, a7, 1138
                  slt          t3, s4, s5
32:               bgeu         a6, t0, 47f
                  slti         t1, a4, -212
                  ori          t6, t5, 1740
                  ori          a1, a5, -2045
                  bltu         t5, a7, 41f
                  bltu         a2, t3, 46f
                  srai         t1, t4, 14
39:               and          s2, s0, s7
                  bgeu         s2, t5, 44f
41:               sub          a4, s5, ra
                  bltu         s6, a6, 56f
43:               auipc        s2, 943158
44:               bltu         s2, s2, 59f
                  sltu         s1, a6, t4
46:               srai         s4, a0, 7
47:               slti         gp, s7, -1521
                  and          s9, a3, a2
                  add          a7, t2, a5
                  sra          a3, s11, s0
                  srai         s11, a2, 29
                  ori          s9, a3, -525
                  bltu         t2, t2, 62f
                  sltu         t0, sp, t5
                  addi         zero, t5, -515
56:               xor          s7, s7, zero
                  slti         t5, a7, 1908
                  sltiu        t6, s10, -323
59:               bne          t2, s10, 78f
                  beq          s9, ra, 79f
                  bge          s9, a4, 63f
62:               sltiu        t6, s11, -68
63:               addi         sp, s2, -1374
                  sltiu        s9, t6, -1869
                  slti         ra, ra, 1773
                  slli         s4, s6, 26
                  beq          a7, t6, 74f
                  sltu         ra, t3, ra
                  or           s0, s6, ra
                  ori          a7, a7, -1287
                  nop
                  slli         s0, s6, 9
                  andi         s11, s6, -579
74:               xori         s3, t5, 1538
                  sltu         s7, s5, s11
                  sra          s8, s10, t4
                  nop
78:               sra          t5, s7, s4
79:               beq          s1, zero, 82f
                  sll          t1, a5, a6
                  beq          s4, t0, 91f
82:               auipc        t2, 826749
                  srl          s10, t5, s10
                  add          s4, s2, a5
                  or           a4, t5, t3
                  nop
                  srli         s4, a4, 20
                  sltiu        sp, tp, -1661
                  addi         s3, a3, 1070
                  lui          a7, 37915
91:               blt          t5, s11, 95f
                  auipc        t1, 679270
                  bgeu         t0, t3, 102f
                  sll          t1, a1, a2
95:               add          s0, a6, s4
                  lui          tp, 699073
                  xor          t4, a1, t0
                  slli         s6, s11, 3
                  sll          tp, a5, t0
                  srli         a7, s1, 9
                  sub          ra, s2, s6
102:              slti         t3, sp, -908
                  lui          s10, 730852
                  blt          t5, s4, 122f
                  andi         s11, a1, 1503
                  sltu         zero, s11, s7
                  xor          s5, t0, s5
                  and          a5, s10, a1
                  lui          s11, 670204
                  bge          s9, t5, 115f
                  bgeu         t5, a7, 118f
                  sltiu        s11, a1, 1135
                  srl          t6, s9, t6
                  bne          s2, a4, 117f
115:              sll          s4, s2, s2
                  blt          a2, t4, 134f
117:              beq          s0, a5, 122f
118:              ori          t3, a3, -1006
                  ori          sp, s10, -1414
                  bltu         s4, a3, 138f
                  sub          s8, tp, t2
122:              sub          t4, a1, s2
                  auipc        s10, 1017899
                  slt          zero, t5, a4
                  xor          s11, s4, s6
                  sltiu        s5, a1, -1547
                  sltu         s3, t2, t0
                  add          s6, s4, t0
                  slti         s9, sp, -1976
                  lui          a7, 744821
                  xori         s8, s1, 1733
                  sltiu        a4, t0, 1169
                  blt          s5, s1, 137f
134:              sll          s5, t2, t1
                  lui          s11, 722252
                  bltu         a7, a5, 155f
137:              sltu         t2, s7, a0
138:              auipc        sp, 109570
                  sltu         s0, a4, t3
                  ori          s5, a2, 1474
                  slli         a3, zero, 11
                  andi         t4, s5, -1177
                  sra          s9, s2, t4
                  sltu         zero, s3, s0
                  sub          t4, t5, a4
                  srli         t2, a5, 4
                  sll          s9, a1, s3
                  nop
                  sub          t1, s4, a0
                  xori         gp, t5, 1943
                  ori          s9, ra, 274
                  srai         s4, s2, 18
                  lui          s9, 222129
                  sltiu        t3, a3, 448
155:              and          t5, t4, t4
                  srli         s7, s6, 12
                  srai         s0, t3, 7
                  srli         t3, a5, 31
                  andi         s0, gp, -1009
                  beq          t0, t2, 179f
                  bgeu         s6, s3, 164f
                  ori          a4, s5, 244
                  bge          a7, t6, 166f
164:              blt          s9, s10, 178f
                  bltu         a2, s0, 174f
166:              andi         s3, s6, -879
                  bltu         s4, tp, 170f
                  addi         s8, a5, -1584
                  sltu         s6, s8, s1
170:              xori         a4, t4, -1055
                  slt          a1, t6, s11
                  beq          t5, s2, 180f
                  blt          a6, s3, 192f
174:              bltu         s6, s6, 183f
                  auipc        t3, 427942
                  sll          t6, s7, a4
                  sltu         s8, s11, t6
178:              or           s10, s10, t2
179:              or           s7, t2, s4
180:              nop
                  addi         s0, t0, -666
                  bge          ra, t3, 199f
183:              lui          s0, 587145
                  bne          s5, s4, 189f
                  sra          t2, t1, t1
                  slt          sp, t2, a3
                  auipc        a1, 538138
                  bge          a6, t1, 197f
189:              addi         t1, t5, -280
                  bltu         s5, a3, 208f
                  ori          t4, t6, 1607
192:              xor          sp, a5, s6
                  lui          s3, 476315
                  or           a4, s2, zero
                  slli         a3, t6, 23
                  bltu         ra, a3, 211f
197:              srl          a7, tp, t5
                  addi         a5, a3, 1436
199:              beq          a4, a0, 203f
                  slt          s2, t4, s5
                  auipc        s11, 783844
                  sub          s3, s11, a7
203:              andi         t3, sp, 360
                  beq          a6, s2, 206f
                  or           t1, tp, s9
206:              bge          s10, t5, 210f
                  sltiu        s3, ra, -1874
208:              bge          t6, a3, 217f
                  bge          t6, tp, 217f
210:              sltu         a7, s9, zero
211:              andi         s3, t4, -759
                  bne          s3, t5, 223f
                  sra          s2, a2, s8
                  slti         s4, t3, 850
                  xori         a7, s10, 1627
                  andi         a4, s10, 427
217:              bne          s3, s4, 224f
                  srli         s5, a0, 31
                  la           gp, region_1+54 #start riscv_load_store_rand_instr_stream_1
                  srai         t6, s11, 10
                  sll          s7, s7, a5
                  slti         s1, a5, 1508
                  srli         tp, s0, 24
                  or           s4, t2, t5
                  sra          ra, s9, a5
                  sltu         s0, t6, s8
                  sb           t4, 185(gp)
                  lhu          tp, 60(gp)
                  sb           s1, 127(gp)
                  sub          s3, s1, s8
                  sltiu        a7, sp, 715
                  lh           tp, 182(gp)
                  srli         s10, gp, 31
                  sll          t5, s11, ra
                  and          s1, a6, s11
                  lbu          sp, 201(gp)
                  or           zero, t1, t4
                  srli         s8, s3, 15
                  slli         a5, t4, 26
                  lb           s2, 164(gp)
                  lh           s0, 176(gp)
                  auipc        t2, 763233
                  andi         t3, s1, 22
                  lb           s4, -25(gp)
                  sra          t3, t4, s10
                  slt          t2, t6, a1
                  lhu          s10, 6(gp)
                  srl          s0, s10, s9
                  lh           s9, 242(gp)
                  lb           s5, 105(gp)
                  lh           t2, 88(gp)
                  slti         s9, a5, -961
                  lbu          t4, -15(gp)
                  nop
                  lbu          s2, 205(gp)
                  lhu          s6, 210(gp)
                  lbu          a3, 130(gp)
                  and          a7, a2, ra
                  sh           t5, -44(gp)
                  lbu          t1, 37(gp)
                  and          t1, t6, s5
                  lh           t3, -36(gp) #end riscv_load_store_rand_instr_stream_1
                  srai         a5, s11, 16
                  lui          s8, 588137
                  and          t6, s1, a5
                  xori         s2, s5, 838
223:              sub          s5, zero, tp
224:              sltu         s10, t3, s0
                  sltiu        s4, s8, -54
                  bgeu         s10, zero, 245f
                  ori          s3, t4, 276
                  blt          a7, s3, 243f
                  ori          zero, s3, 215
                  lui          t0, 704226
                  lui          sp, 73970
                  srai         a5, t0, 30
                  slti         a3, s10, -1610
                  slt          a5, s4, a2
                  srl          s1, a6, s5
                  and          t4, a7, t5
                  bge          t2, s2, 244f
                  and          s2, s9, t1
                  srai         t2, t6, 2
                  bge          s1, tp, 244f
                  bltu         s5, s3, 251f
                  sra          s5, t1, a0
243:              addi         a5, t1, 1596
244:              beq          t3, ra, 263f
245:              blt          s6, s10, 255f
                  sltu         t3, t3, s1
                  bgeu         s2, s6, 265f
                  slti         a7, a0, 1018
                  sll          s10, t0, a4
                  srli         tp, s0, 20
251:              slt          t5, s2, a2
                  sub          t1, gp, sp
                  xor          t4, s7, t6
                  xor          a7, s10, t3
255:              and          s8, s9, a1
                  and          t6, a3, a7
                  andi         t3, gp, -1187
                  xor          a3, t0, s0
                  and          s5, tp, t2
                  bne          ra, s5, 278f
                  xor          s9, s2, t3
                  andi         t0, s11, 1365
263:              andi         tp, s11, -765
                  srli         s8, a4, 7
265:              add          zero, t2, t4
                  add          t1, s6, s4
                  auipc        zero, 291266
                  bge          s2, sp, 271f
                  bne          t4, tp, 284f
                  sub          t0, s11, t6
271:              srai         a1, s5, 3
                  or           a3, s6, s5
                  xor          s6, tp, s7
                  sub          s6, a2, a3
                  bgeu         t3, a6, 278f
                  addi         t5, t5, -667
                  xor          s8, ra, t1
278:              andi         sp, t3, 1260
                  bltu         tp, t4, 288f
                  ori          s0, t6, -32
                  sltu         s6, s2, s5
                  and          s7, ra, a3
                  bgeu         t5, ra, 288f
284:              slt          t5, a3, t4
                  lui          s4, 814203
                  bne          a5, t2, 288f
                  sub          ra, a0, s4
288:              xori         s7, s3, 1712
                  sltiu        t1, zero, 115
                  sll          t3, sp, s8
                  sltu         a1, a7, a3
                  addi         tp, s0, 1267
                  sub          ra, s9, sp
                  srai         s9, a1, 15
                  sll          s0, s9, s8
                  sll          s10, s8, s9
                  sltiu        s10, s5, 1256
                  beq          a3, sp, 307f
                  sll          s5, s0, s8
                  or           s10, t6, s4
                  sra          t4, a0, s10
                  srl          s1, a4, sp
                  bgeu         s7, ra, 314f
                  nop
                  srli         t5, s3, 21
                  bltu         t2, s11, 323f
307:              sltiu        s9, t1, 1097
                  sltu         t1, a5, s9
                  xor          tp, s4, gp
                  srai         a4, a2, 30
                  and          s0, t5, a6
                  sltu         s0, s1, a5
                  add          t4, ra, a0
314:              bgeu         a7, a2, 322f
                  slli         s9, a6, 26
                  srl          s3, a3, zero
                  sub          a4, s11, s5
                  nop
                  srli         s8, s7, 19
                  or           s2, s2, s3
                  nop
322:              srai         a1, s6, 0
323:              bgeu         gp, a5, 342f
                  srli         gp, t5, 14
                  slti         s4, t0, -1918
                  or           t2, s8, s0
                  sltu         s6, t4, s2
                  bge          t5, a1, 332f
                  sll          a3, t0, a5
                  and          s7, t2, a3
                  sltiu        s0, tp, 783
332:              sra          s9, t0, t5
                  srl          t4, s2, t1
                  srli         s8, zero, 11
                  or           s5, s9, sp
                  srl          s9, a1, zero
                  lui          ra, 217004
                  sltiu        gp, zero, 176
                  add          a5, t4, t5
                  bge          a4, s6, 347f
                  bne          a6, s0, 345f
342:              bltu         s5, a3, 361f
                  and          s5, s11, tp
                  bgeu         a6, a6, 351f
345:              auipc        t6, 872468
                  sra          a7, t0, t2
347:              srli         s7, t3, 19
                  blt          a7, a5, 352f
                  sll          zero, s10, ra
                  srai         s11, a2, 26
351:              or           s7, t4, a3
352:              or           t5, s6, a0
                  slti         a4, s9, 1726
                  sltiu        a3, t5, 198
                  bge          s9, a2, 359f
                  bge          s10, a5, 361f
                  add          s4, s3, a2
                  slt          a4, s5, s10
359:              srai         s11, a2, 24
                  addi         t6, tp, 1044
361:              xor          t5, tp, s3
                  or           t1, s1, t0
                  lui          t4, 341833
                  nop
                  sltu         t3, s8, t3
                  sltiu        s6, s8, -529
                  and          a7, t5, t5
                  auipc        zero, 871166
                  slti         zero, a1, 2032
                  andi         s6, zero, 1370
                  nop
                  bgeu         a2, s6, 386f
                  sra          ra, a5, t0
                  sll          s4, t1, a1
                  slli         s10, a5, 20
                  auipc        s7, 1005747
                  slli         zero, t1, 20
                  and          s2, s10, s3
                  srli         a4, s4, 14
                  slti         zero, s7, 1582
                  or           s3, s0, t6
                  slti         t6, t4, -1447
                  slti         s11, zero, -62
                  bgeu         sp, s6, 393f
                  bne          sp, s6, 393f
386:              bne          t1, a7, 389f
                  srai         a4, t2, 1
                  addi         t4, t4, 1802
389:              xori         s6, a2, -784
                  beq          s10, t3, 405f
                  srl          s1, s4, a6
                  and          s0, ra, s4
393:              sltu         s9, a6, t6
                  bgeu         t3, t3, 403f
                  slti         a4, s3, 70
                  bgeu         t4, s4, 415f
                  xor          a7, a7, t4
                  auipc        t0, 1043668
                  xori         t1, a5, 136
                  add          t3, a1, a1
                  sltu         s10, a2, s4
                  add          t6, t1, s6
403:              sub          s0, s5, s11
                  bgeu         zero, a3, 408f
405:              slli         t1, t3, 14
                  xor          a7, t0, s5
                  or           gp, t5, s10
408:              addi         s10, s10, 99
                  add          t0, s11, t3
                  and          s2, t5, a6
                  addi         a3, t2, -1189
                  lui          a4, 683765
                  beq          a0, t3, 423f
                  srai         ra, s10, 29
415:              nop
                  bne          t3, tp, 419f
                  sra          s5, t0, s6
                  add          t2, s5, s6
419:              srai         gp, a2, 8
                  addi         a7, sp, 1759
                  xor          s4, t1, s8
                  sra          a4, a6, t6
423:              bge          a6, t2, 426f
                  add          s10, s5, s5
                  sub          t2, s5, s2
426:              sltiu        tp, t1, 1205
                  blt          t1, a7, 430f
                  sub          s0, a6, s0
                  bgeu         a3, a7, 433f
430:              and          a4, s8, a5
                  bltu         a0, a2, 435f
                  ori          s5, a6, -1413
433:              or           t5, a0, a5
                  xori         ra, t3, -1792
435:              ori          s5, t6, 1070
                  auipc        t0, 406601
                  andi         a4, s7, -128
                  srli         a7, sp, 2
                  srai         a1, s0, 14
                  nop
                  slt          s7, s3, gp
                  sll          a4, s1, s3
                  srai         gp, s4, 20
                  bne          a3, t2, 453f
                  or           t5, s5, t1
                  nop
                  bgeu         s0, t6, 456f
                  bge          t5, t2, 452f
                  slt          tp, a1, s2
                  sub          s11, s4, t1
                  nop
452:              xor          s9, a6, a3
453:              bltu         t1, ra, 462f
                  beq          s9, a1, 473f
                  srli         t0, gp, 24
456:              srl          t6, s11, t3
                  auipc        s5, 789007
                  srai         s3, a5, 23
                  sltiu        s9, s5, 932
                  or           a7, s4, s10
                  sltu         gp, t6, s10
462:              beq          t0, a4, 480f
                  ori          s3, gp, -96
                  beq          s4, t2, 473f
                  sra          t1, a3, s6
                  add          t3, s3, a5
                  ori          a5, s7, -810
                  slli         s8, t0, 6
                  auipc        ra, 56609
                  auipc        s3, 178310
                  srl          s11, s0, s7
                  ori          s10, s10, 1256
473:              srl          t2, a4, s9
                  sll          zero, t3, s7
                  bgeu         a1, s2, 494f
                  srai         s5, t4, 23
                  sll          s0, a2, t2
                  auipc        ra, 919569
                  andi         t4, s4, 686
480:              bne          s5, s11, 491f
                  bne          sp, a7, 488f
                  bgeu         s8, t1, 497f
                  sltu         ra, ra, zero
                  sltiu        s7, s3, -1028
                  lui          t0, 645939
                  srl          s3, s0, a0
                  sra          ra, a6, s2
488:              srai         t0, t4, 15
                  srli         s7, gp, 30
                  sltiu        tp, t0, -371
491:              bgeu         s8, t5, 506f
                  blt          s10, t3, 506f
                  or           s7, s1, a7
494:              xor          s5, t0, ra
                  blt          t2, s5, 503f
                  bltu         s8, s10, 503f
497:              xor          s0, a2, s1
                  srl          t4, s2, t6
                  bne          a5, a0, 504f
                  srli         s0, a5, 24
                  slti         s7, ra, 415
                  slt          t6, s2, a4
503:              addi         sp, s6, 1351
504:              ori          t2, a6, -111
                  add          t6, a2, s7
506:              andi         s0, t0, 1089
                  sltiu        s11, s2, 1889
                  xor          t3, s7, a1
                  xor          s10, s2, s5
                  slt          s5, t0, a7
                  sra          t3, a2, a2
                  srli         t2, t3, 20
                  srli         t0, s2, 17
                  ori          tp, s11, -1506
                  beq          s10, s0, 534f
                  andi         t3, s8, -1015
                  bne          sp, s2, 519f
                  srli         t1, tp, 15
519:              slli         zero, t5, 16
                  lui          t4, 708651
                  sltiu        t0, s3, -1958
                  sra          t6, s6, t2
                  srai         s3, s3, 22
                  bne          a1, s5, 529f
                  slt          s11, s9, a1
                  lui          a5, 982566
                  slli         s10, s11, 7
                  and          t1, t5, s0
529:              bgeu         s7, s11, 547f
                  andi         s11, a6, -767
                  blt          a5, zero, 539f
                  beq          a5, s8, 551f
                  auipc        t5, 635398
534:              beq          a6, s4, 551f
                  auipc        t6, 259027
                  slti         a3, t3, 1726
                  lui          s6, 591348
                  slt          s5, a1, s1
539:              bne          gp, s3, 543f
                  sltiu        t5, ra, -1004
                  srli         t4, s3, 16
                  srl          a1, s5, gp
543:              slli         a7, a5, 2
                  xori         s6, s6, 1189
                  slt          t5, sp, a5
                  blt          s8, ra, 557f
547:              xori         a4, s7, -1630
                  bgeu         ra, t5, 557f
                  auipc        s11, 278319
                  nop
551:              xori         a1, t1, -1391
                  sltiu        s1, sp, 1987
                  lui          s1, 413369
                  slti         s0, t2, 1155
                  lui          t3, 797659
                  or           a1, s11, t2
557:              xori         sp, a7, 665
                  bge          sp, t2, 577f
                  andi         ra, t2, 928
                  auipc        s1, 99921
                  slli         s7, s10, 23
                  bge          a5, t6, 567f
                  blt          a5, t2, 581f
                  xor          t5, sp, s6
                  xori         sp, a4, -448
                  srli         t0, a7, 5
567:              sltu         t1, t4, t3
                  bltu         s1, s11, 583f
                  slt          s8, t2, a7
                  add          s5, a4, s10
                  beq          a0, t5, 590f
                  sub          a3, t1, s2
                  add          s7, t2, s1
                  addi         gp, t0, 111
                  ori          t6, a6, -1558
                  slti         s2, t3, 1465
577:              sra          s3, a5, s0
                  beq          s7, t4, 582f
                  and          s11, s5, t6
                  or           a5, a0, s1
581:              lui          s7, 894716
582:              srli         s4, s9, 31
583:              slli         t0, t0, 19
                  nop
                  add          t4, s3, gp
                  bne          s6, a5, 601f
                  add          s4, a5, sp
                  bge          a0, a5, 598f
                  bltu         a1, zero, 596f
590:              xori         a3, s0, 288
                  bge          ra, t4, 594f
                  slti         t3, zero, -89
                  lui          s4, 854883
594:              slti         tp, tp, 1965
                  andi         t2, s1, 1379
596:              lui          a5, 578991
                  srl          a7, s7, a4
598:              bltu         a6, a1, 602f
                  xor          s0, s9, t4
                  or           s10, s3, a2
601:              xori         a3, a4, -749
602:              lui          t6, 323230
                  bltu         t1, s4, 612f
                  slli         gp, t0, 21
                  beq          sp, gp, 609f
                  sra          t0, tp, a5
                  bne          s9, s6, 626f
                  srli         t2, s6, 21
609:              add          s11, t1, a0
                  bge          a1, a5, 617f
                  sub          t3, s11, s3
612:              sra          t2, s10, t2
                  bne          a5, s2, 616f
                  slti         t1, s7, 546
                  sltiu        t5, s6, 1526
616:              addi         s0, a6, 1650
617:              sltiu        s9, t1, 1941
                  xor          s7, s5, s10
                  auipc        s8, 562332
                  bgeu         sp, s0, 637f
                  add          a3, t5, gp
                  srli         t0, gp, 0
                  ori          t4, t4, 822
                  or           zero, a4, s0
                  or           t4, s3, s5
626:              sltiu        zero, t1, -221
                  addi         t5, a5, -390
                  slt          s3, sp, t2
                  slt          s4, a2, a5
                  srai         a5, sp, 5
                  xori         s11, a0, 1055
                  sll          s8, t1, t4
                  srli         a7, t3, 31
                  bltu         a4, gp, 648f
                  sub          tp, a2, a1
                  or           zero, s8, zero
637:              auipc        s1, 738368
                  and          s7, a2, s4
                  and          t6, zero, s2
                  srai         a7, gp, 24
                  auipc        t3, 167020
                  sra          t1, a6, a0
                  sll          s7, sp, t1
                  bltu         s6, gp, 649f
                  slti         a5, s11, -269
                  add          t1, a5, a4
                  slti         t2, a6, 1332
648:              sltu         gp, a2, s3
649:              xori         t2, zero, 715
                  bltu         tp, t0, 653f
                  add          t5, s9, sp
                  slt          t4, s3, a7
653:              add          s6, s1, tp
                  bgeu         t1, t5, 672f
                  or           t3, s4, s7
                  add          s6, a2, tp
                  and          s4, a0, a0
                  bgeu         s5, a2, 677f
                  add          s2, s3, a1
                  bltu         s4, s0, 662f
                  bgeu         s5, a0, 670f
662:              sub          a3, t2, a0
                  or           a5, s1, s9
                  or           s9, s5, tp
                  slt          gp, s4, t2
                  srl          s3, sp, s7
                  addi         tp, s6, -1564
                  sub          t3, a7, s5
                  srai         t0, s6, 16
670:              beq          s7, s10, 678f
                  add          s5, t1, a0
672:              and          a4, t2, s7
                  beq          t6, s7, 681f
                  bgeu         t4, sp, 683f
                  beq          s1, s8, 678f
                  bltu         s8, s3, 685f
677:              blt          t1, s8, 696f
678:              add          s2, a1, s3
                  xor          a7, t4, sp
                  slt          a4, s2, s3
681:              beq          tp, t2, 700f
                  or           s2, s8, t1
683:              auipc        sp, 548724
                  bltu         s9, s9, 687f
685:              srai         s2, sp, 27
                  slt          s1, t5, t6
687:              ori          s3, s10, 325
                  bgeu         a3, s3, 703f
                  lui          s9, 103338
                  srl          t4, s8, t6
                  bltu         s1, t1, 709f
                  slli         a3, a5, 14
                  slt          a7, s6, a5
                  nop
                  sra          t4, t1, s11
696:              beq          t6, s2, 714f
                  add          s4, ra, a3
                  sll          s3, ra, a7
                  srai         s8, t3, 5
700:              srli         s1, gp, 21
                  ori          s8, sp, -572
                  bne          s6, s0, 705f
703:              addi         a3, a3, 1991
                  bltu         a2, a2, 723f
705:              blt          s9, ra, 716f
                  addi         zero, s4, 1163
                  sll          s6, t4, s4
                  srl          a7, s6, s1
709:              sltiu        s6, t4, -1725
                  andi         a1, t4, 496
                  srli         a7, t2, 7
                  beq          a7, s9, 722f
                  andi         s8, s10, -1839
714:              slt          s2, t6, a5
                  xori         a5, a2, -1034
716:              ori          a1, a1, -694
                  bge          ra, t5, 724f
                  bltu         gp, s9, 727f
                  andi         s5, a1, 977
                  bne          a3, t1, 722f
                  or           s2, zero, tp
722:              sub          t4, a2, s2
723:              beq          s3, a2, 727f
724:              sra          s3, s3, a3
                  sra          t4, a3, a0
                  bge          s9, a2, 730f
727:              sub          t2, t3, s4
                  blt          a0, t3, 737f
                  bltu         t5, s10, 737f
730:              bne          ra, a3, 744f
                  add          s3, a7, a4
                  bgeu         s11, gp, 749f
                  nop
                  sub          s10, s8, s4
                  bgeu         t6, tp, 742f
                  lui          a4, 383613
737:              and          zero, zero, s4
                  slli         ra, s0, 21
                  slti         s8, a6, -1237
                  sltu         zero, a1, t2
                  or           s3, t4, a3
742:              bgeu         s9, s9, 751f
                  bltu         a7, t5, 751f
744:              ori          zero, ra, 863
                  xori         t5, a1, 78
                  srai         gp, s0, 27
                  blt          s7, s10, 762f
                  slli         t2, s2, 31
749:              auipc        a3, 640558
                  la           sp, region_1+1526 #start riscv_load_store_rand_instr_stream_2
                  lbu          t0, 7(sp)
                  lb           s9, -13(sp)
                  lbu          s2, -15(sp)
                  add          t0, s0, s3
                  xor          s8, t4, t1
                  auipc        t2, 164427
                  sltiu        t6, a4, -517
                  xori         ra, a4, -1447
                  auipc        s9, 986963
                  sb           gp, -1(sp)
                  slli         s8, s5, 17
                  sb           s6, 16(sp)
                  auipc        t6, 146786
                  sb           a5, -12(sp)
                  lui          t0, 99461
                  lb           s7, 4(sp)
                  sb           a7, 16(sp)
                  add          a3, s11, tp
                  slti         t2, s5, -98
                  slt          s5, t2, s11
                  sltiu        s8, t4, -1795
                  lhu          t1, -12(sp)
                  sh           t4, 8(sp)
                  xor          a1, t6, s0
                  ori          s0, t4, 195
                  slli         t5, s10, 14
                  lhu          zero, 16(sp)
                  lb           a3, -13(sp)
                  lh           s11, 0(sp)
                  lb           gp, -11(sp)
                  lb           s8, -15(sp)
                  lbu          s9, -10(sp)
                  lbu          s10, -1(sp)
                  lb           s5, -1(sp)
                  xori         s5, a7, 1727
                  srl          t5, a3, a3
                  lhu          s11, 16(sp)
                  lhu          s1, -2(sp)
                  lbu          s11, -7(sp)
                  sb           t0, -11(sp)
                  slt          s3, s11, a3
                  ori          t4, a0, -1670
                  lui          s6, 1031039
                  sh           t4, 2(sp)
                  sb           a3, 15(sp)
                  lb           s11, 14(sp)
                  lb           t0, -15(sp)
                  xor          s1, a4, gp
                  xori         tp, zero, 1208
                  sb           s1, -1(sp)
                  lbu          s9, -8(sp)
                  sh           s11, -10(sp) #end riscv_load_store_rand_instr_stream_2
                  add          s8, zero, tp
751:              bge          t5, t0, 755f
                  beq          a3, t4, 756f
                  add          t2, t2, gp
                  blt          a4, s0, 773f
755:              beq          gp, s3, 760f
756:              sub          a5, s6, s6
                  xor          s8, gp, s3
                  ori          s2, a1, -525
                  add          a1, t4, t0
760:              or           s10, t6, sp
                  bltu         s9, t6, 766f
762:              nop
                  add          t4, t5, t2
                  slli         t4, a5, 16
                  bltu         ra, t2, 768f
766:              sll          a5, ra, ra
                  xor          t3, tp, a3
768:              or           s0, a1, a4
                  beq          t5, t1, 788f
                  ori          a4, s7, -1894
                  blt          t1, tp, 789f
                  nop
773:              andi         sp, t0, -875
                  slli         a3, zero, 1
                  srli         s8, a3, 15
                  bge          gp, a3, 780f
                  srai         s7, s7, 12
                  or           s1, t1, t0
                  addi         s3, s3, -1518
780:              sltiu        a7, gp, 1236
                  or           s8, a2, t2
                  ori          tp, s0, -1162
                  slti         sp, a6, 84
                  lui          a3, 478424
                  sub          s3, s10, t6
                  srai         gp, s3, 26
                  blt          a3, a1, 795f
788:              srli         zero, t5, 24
789:              sltu         a1, s8, s7
                  bgeu         t2, a7, 799f
                  bge          s5, a4, 795f
                  beq          a7, s5, 796f
                  add          a3, s9, a3
                  ori          sp, s4, -2017
795:              srl          a7, a0, a6
796:              sll          a7, s0, t5
                  nop
                  sltu         a5, s8, a3
799:              bne          t2, s8, 808f
                  add          a5, tp, s4
                  sltiu        gp, ra, 655
                  and          a1, s2, a1
                  blt          t2, a5, 820f
                  addi         s0, t4, -1563
                  xori         s11, a6, 610
                  or           t3, s5, zero
                  ori          s9, sp, -173
808:              sll          t0, s3, t3
                  srli         s5, ra, 26
                  sub          ra, t2, t6
                  sll          t3, t5, a7
                  sltu         zero, s6, s2
                  sltiu        ra, s1, -502
                  srli         a4, t4, 7
                  or           zero, tp, t6
                  blt          a2, t5, 827f
                  bgeu         t1, a4, 827f
                  sub          s1, ra, s10
                  bge          ra, t2, 838f
820:              addi         a1, s9, 1807
                  sll          tp, a4, a4
                  sltu         t6, s11, a3
                  sll          s4, s0, s7
                  slti         s6, t2, 399
                  lui          s0, 964440
                  blt          s4, t2, 840f
827:              auipc        t0, 116757
                  srl          tp, t2, a6
                  bgeu         zero, s7, 834f
                  bne          s10, s1, 849f
                  or           s1, gp, a4
                  srai         s3, ra, 2
                  bgeu         ra, t0, 851f
834:              sltiu        a7, ra, -421
                  addi         t2, t6, -634
                  lui          s4, 794318
                  slt          s2, s6, ra
838:              andi         a7, a1, -633
                  beq          t4, tp, 854f
840:              blt          gp, s5, 859f
                  bgeu         zero, s3, 850f
                  sll          a4, s7, s5
                  lui          a3, 689055
                  srai         zero, a3, 23
                  srl          gp, s10, s8
                  or           tp, s2, gp
                  and          a3, s5, t2
                  lui          t3, 96764
849:              lui          s4, 809920
850:              addi         s6, s1, 1718
851:              lui          ra, 787289
                  sub          s3, t3, t3
                  srai         ra, s10, 22
854:              xor          s1, s11, a2
                  add          a5, t1, s2
                  and          gp, s6, ra
                  xori         s5, s9, -923
                  xori         a1, sp, 1263
859:              slli         s1, s1, 5
                  bgeu         s5, a0, 863f
                  sra          s1, zero, t6
                  xor          t2, a4, t5
863:              bge          s9, t5, 870f
                  addi         a1, a4, 1287
                  slli         t5, t0, 29
                  srl          a4, t4, a3
                  auipc        s0, 300701
                  xori         t5, sp, -1730
                  ori          s3, ra, 849
870:              andi         s11, s0, -879
                  sra          s1, s9, s7
                  xor          s0, t4, s7
                  sra          t5, t3, t6
                  slli         t6, s11, 5
                  sltiu        sp, s3, -1181
                  bne          a2, s8, 878f
                  bltu         t2, a4, 884f
878:              sltiu        a7, t2, 94
                  auipc        gp, 851125
                  blt          s11, s1, 883f
                  sub          zero, t3, s5
                  sll          t5, t0, s0
883:              bne          t1, a0, 888f
884:              slt          s11, zero, a7
                  or           s0, s5, t4
                  srli         s7, s3, 0
                  xori         gp, a4, -1041
888:              auipc        a3, 545627
                  srai         t0, gp, 31
                  and          t2, a3, t4
                  srl          t5, t6, gp
                  sltiu        t5, a4, -267
                  ori          s6, a3, 81
                  bge          t2, a6, 898f
                  xor          s0, sp, t3
                  sub          s0, a0, s9
                  la           sp, region_0+971 #start riscv_load_store_rand_instr_stream_6
                  lbu          tp, -14(sp)
                  lb           s5, 12(sp)
                  nop
                  addi         s5, t6, -809
                  sb           s7, -8(sp)
                  srai         s7, a5, 4
                  xor          t3, a3, s3
                  srai         t3, t5, 19
                  sub          zero, t6, a5
                  sb           s0, 16(sp)
                  auipc        s8, 381881
                  sb           ra, 16(sp)
                  sh           a1, 15(sp)
                  lbu          tp, 10(sp)
                  add          s6, t2, t4
                  sb           t4, -9(sp)
                  lhu          s4, -7(sp)
                  nop
                  ori          s5, s2, 1204
                  xori         a7, sp, 247
                  sub          t4, t4, t0
                  sh           a6, -11(sp)
                  lb           tp, -14(sp)
                  lbu          t3, 8(sp) #end riscv_load_store_rand_instr_stream_6
                  ori          t5, s6, 1331
898:              slti         s0, t4, -1372
                  xor          s11, gp, s4
                  blt          s0, t5, 908f
                  srai         s10, s0, 25
                  auipc        s9, 1030928
                  auipc        a4, 232504
                  andi         a3, s11, -1373
                  andi         t6, s10, -272
                  sltiu        sp, s7, -750
                  xor          a7, t0, t4
                  bne          s0, a7, sub_5_j12 #branch to jump instr
                  xor          a7, s0, s6
                  sltu         s9, a5, s9
                  xor          s4, t5, a5
                  auipc        s2, 778657
sub_5_j12:        jal          t1, sub_8 #jump sub_5 -> sub_8
                  sltiu        sp, t0, -449
                  sll          a1, s5, a2
                  add          s2, a6, t4
                  sra          a4, s4, t2
908:              add          ra, s0, a5
                  slli         gp, tp, 1
                  xor          tp, s7, s8
                  andi         t1, s4, -1507
                  srai         s11, a0, 5
                  lui          s6, 730962
                  xor          s7, zero, a4
                  blt          s10, s5, 924f
                  slli         t1, s0, 23
                  bltu         a3, a7, 932f
                  or           zero, t1, s8
                  slli         s3, a1, 15
                  add          t5, s6, a5
                  sub          t0, s11, s11
                  srai         s8, a5, 19
                  bgeu         gp, s10, 932f
924:              or           a3, s7, s5
                  nop
                  sll          t3, s3, a2
                  sub          t0, t3, a5
                  nop
                  xori         s11, ra, 1098
                  or           gp, t2, t5
                  sll          s11, t0, s4
932:              srai         a1, s5, 10
                  srai         s10, t1, 31
                  blt          zero, zero, 952f
                  or           t6, s5, s5
                  sll          s5, s2, gp
                  andi         s1, s4, -680
                  xor          s11, gp, s4
                  sltiu        a7, tp, -1786
                  andi         t4, tp, 441
                  bne          s5, a1, 950f
                  nop
                  auipc        ra, 243656
                  ori          s0, a6, -670
                  srai         s1, a0, 5
                  xor          t3, s10, zero
                  sltiu        s6, ra, -2019
                  auipc        a5, 280922
                  xor          t6, s5, s4
950:              nop
                  andi         a1, t0, -553
952:              and          a5, a5, tp
                  auipc        s8, 966849
                  bne          s6, a4, 958f
                  lui          t3, 580584
                  slti         s6, tp, 1975
                  srli         s1, t4, 1
958:              bgeu         s10, t0, 977f
                  auipc        a4, 484593
                  auipc        s2, 343746
                  nop
                  lui          a5, 667768
                  bltu         s3, t6, 974f
                  slli         s6, a6, 26
                  bne          s0, s0, 972f
                  srl          t1, t1, t6
                  nop
                  lui          a1, 500668
                  srl          ra, zero, s3
                  slli         tp, a5, 7
                  nop
972:              sub          t4, a5, tp
                  blt          s6, t2, 991f
974:              slli         s3, a5, 17
                  andi         gp, s8, -1460
                  sll          s10, s6, ra
977:              sub          t5, s7, s2
                  sltu         s0, zero, s9
                  lui          ra, 720696
                  auipc        s6, 885903
                  xori         t3, s9, 1339
                  sltu         t5, t1, gp
                  bgeu         t3, a3, 1002f
                  ori          s8, s9, 973
                  addi         t0, t5, 454
                  bge          gp, a4, 988f
                  sra          s3, a0, t4
988:              and          gp, a1, s7
                  ori          a4, t1, -2031
                  sra          a1, a5, s8
991:              srli         s2, t5, 6
                  andi         s6, t6, 563
                  andi         t4, a2, 862
                  sltu         s4, t1, t3
                  lui          a5, 669482
                  sltiu        s5, a4, -192
                  blt          s1, tp, 1001f
                  srl          s1, s5, s10
                  bgeu         t3, tp, 1003f
                  srai         s9, s2, 14
1001:             auipc        zero, 696950
1002:             blt          a0, s8, 1005f
1003:             srl          sp, a2, s5
                  slti         gp, t2, 1616
1005:             lui          tp, 99957
                  bltu         ra, s8, 1010f
                  srli         s5, s11, 1
                  or           gp, gp, tp
                  add          s3, zero, t5
1010:             sra          a3, t0, t3
                  ori          a1, sp, 832
                  addi         t0, t6, -1210
                  sltiu        s0, t6, -1841
                  sltu         t6, s4, s5
                  slli         s10, sp, 17
                  auipc        sp, 584595
                  bltu         a3, a4, 1034f
                  srai         s7, sp, 21
                  bge          s8, zero, 1028f
                  nop
                  slt          a4, t3, t4
                  sra          s8, gp, s0
                  sll          s10, t1, t4
                  beq          a1, a5, 1033f
                  srai         s0, s11, 31
                  slli         a4, s0, 9
                  srl          a4, s10, s8
1028:             ori          tp, a5, -1414
                  slli         s4, s0, 6
                  auipc        t2, 1043927
                  auipc        s4, 1033306
                  add          t5, a2, t6
1033:             xor          s5, t1, a2
1034:             auipc        s11, 971216
                  or           s1, t3, s2
                  addi         t1, s2, -1614
                  slti         s5, a4, 1542
                  bgeu         s8, s7, 1043f
                  srai         a3, tp, 5
                  nop
                  auipc        t5, 891375
                  sub          t4, s9, s11
1043:             slli         t3, a0, 28
                  auipc        a5, 726841
                  slt          gp, s0, s0
                  sll          s8, t5, t3
                  sll          t3, s6, a7
                  andi         zero, a7, 702
                  and          s7, s7, zero
                  sra          gp, t5, s3
                  add          t6, a4, t4
                  ori          a5, a1, -133
                  or           a5, t3, t5
                  auipc        s5, 798857
                  blt          s3, s3, 1058f
                  la           t4, region_0+689 #start riscv_load_store_rand_instr_stream_9
                  or           s5, t2, a1
                  lbu          t1, 12(t4)
                  sb           s10, 16(t4)
                  sb           t4, 14(t4)
                  and          s10, a2, s4
                  lui          s8, 987968
                  sb           ra, 11(t4)
                  addi         s8, a7, -1965
                  sub          s10, a2, s1
                  lb           s8, -7(t4)
                  lb           a5, 16(t4)
                  slli         a3, t3, 26
                  sra          s10, t3, t4
                  sb           zero, -6(t4)
                  and          tp, a2, s7
                  sltu         s10, t0, zero
                  lb           tp, -2(t4)
                  sw           s10, 11(t4)
                  srli         t5, s5, 2
                  lui          t5, 518834
                  sb           a0, -16(t4)
                  sw           a7, 11(t4)
                  lb           s9, -11(t4)
                  sra          sp, t6, a6
                  srli         s4, sp, 28
                  lbu          sp, 13(t4)
                  sb           s0, -2(t4)
                  lb           s4, 2(t4)
                  sw           s8, -5(t4)
                  lui          s1, 587610
                  lb           s5, 4(t4)
                  sb           s8, -8(t4)
                  sb           ra, 5(t4)
                  or           s7, s3, t0
                  sb           t4, 14(t4)
                  add          s8, a4, s4
                  lbu          s4, 8(t4)
                  srl          s1, s10, sp
                  lb           t2, -9(t4)
                  sb           s11, -8(t4)
                  sh           s9, -7(t4)
                  lw           t3, -9(t4)
                  addi         s1, t1, 1292
                  lbu          a7, 2(t4)
                  lb           s1, 16(t4) #end riscv_load_store_rand_instr_stream_9
                  srl          t4, t6, s6
                  blt          s11, s4, 1076f
1058:             xori         s3, s4, 126
                  lui          sp, 287202
                  slt          s11, t3, s9
                  sll          s4, a2, ra
                  srl          t3, zero, s2
                  srl          s2, s8, s10
                  sub          gp, a2, zero
                  ori          ra, a3, 1917
                  add          s6, ra, t2
                  xori         s2, s4, 771
                  auipc        a4, 880367
                  xor          a1, s2, sp
                  slli         a5, a6, 0
                  bge          a5, zero, 1086f
                  or           t0, s8, s3
                  sra          s4, s1, ra
                  blt          a2, ra, 1082f
                  slt          ra, t0, s9
1076:             bne          s10, s1, 1084f
                  slt          s4, t4, s5
                  srai         a3, t0, 4
                  srli         s10, sp, 11
                  sub          tp, tp, s11
                  srl          s5, s5, a0
1082:             blt          s7, a2, 1092f
                  andi         sp, t1, -1862
1084:             add          sp, s3, s0
                  andi         s1, s2, 1488
1086:             sll          tp, s10, s9
                  sll          t6, s1, t1
                  beq          a4, ra, 1091f
                  blt          t0, s8, 1103f
                  srai         gp, s9, 6
1091:             bgeu         s5, s1, 1106f
1092:             sub          s10, s9, t0
                  bge          sp, a5, 1098f
                  andi         t2, t6, -1555
                  add          a4, t5, t3
                  sra          t0, t1, gp
                  srli         t4, ra, 0
1098:             srl          s0, s10, s2
                  andi         s6, tp, -725
                  sub          s2, a3, tp
                  sub          s3, a6, t6
                  bgeu         a4, zero, 1109f
1103:             add          ra, a0, a0
                  sll          s10, s5, t2
                  sltu         ra, sp, t1
1106:             auipc        a5, 406561
                  auipc        a1, 977883
                  sub          s6, s8, s9
1109:             srli         t2, t3, 27
                  sltiu        tp, s5, -694
                  xori         s4, t5, -1064
                  sub          t6, a1, s0
                  andi         t0, a0, -908
                  sub          s3, s5, a3
                  srli         s6, t1, 24
                  lui          s11, 247280
                  xor          t4, ra, tp
                  nop
                  andi         zero, a5, -195
                  beq          t2, a4, 1139f
                  slti         s11, tp, 1902
                  sltu         t6, tp, s11
                  srai         s11, s8, 27
                  sltiu        t4, s5, -401
                  srl          s8, t0, a1
                  beq          s11, t6, 1144f
                  slti         s7, t0, 601
                  slli         a7, s10, 4
                  bgeu         a0, s1, 1143f
                  bne          s6, s4, 1139f
                  sra          t4, sp, s0
                  sra          s11, s1, s3
                  slti         a5, a1, 1292
                  ori          s1, s11, 1681
                  slli         zero, s6, 8
                  xor          s8, sp, a2
                  auipc        s9, 1036917
                  add          t3, s3, t3
                  lui          t2, 403089
                  bne          s2, a6, sub_5_j10 #branch to jump instr
                  srai         a3, a3, 31
                  andi         gp, a3, 135
                  nop
sub_5_j10:        jal          t1, sub_7 #jump sub_5 -> sub_7
                  slt          t0, a0, s7
                  beq          ra, s0, 1152f
                  sltiu        sp, ra, 1578
1139:             bltu         s9, t4, 1144f
                  and          s3, s4, s6
                  add          t1, s8, a5
                  beq          s6, s9, 1160f
1143:             add          s3, a4, a1
1144:             xor          t6, a5, t5
                  andi         t1, a4, -206
                  bge          s2, s0, 1150f
                  lui          s0, 1027693
                  sltu         s7, t4, t2
                  slti         tp, t0, 2000
1150:             srai         s7, a1, 3
                  andi         s11, sp, -80
1152:             addi         s11, s5, 1904
                  sub          s7, a5, a1
                  srl          a7, s7, a6
                  lui          ra, 369744
                  blt          zero, t1, 1159f
                  srl          t1, s1, a0
                  auipc        a7, 999233
1159:             beq          a3, t1, 1163f
1160:             ori          s4, tp, -1682
                  lui          t1, 692137
                  sub          a1, s11, a7
1163:             blt          s11, a4, 1182f
                  sra          a1, sp, s9
                  sra          s11, s3, a7
                  slt          s3, s7, t4
                  xor          s9, ra, t0
                  and          tp, s0, s3
                  xor          a7, t3, t1
                  srl          zero, tp, t4
                  blt          s2, s9, 1188f
                  add          tp, s5, s8
                  srli         t2, t5, 31
                  bgeu         s4, t5, 1179f
                  ori          s1, t0, 359
                  slt          s4, a1, a1
                  bge          a7, ra, 1180f
                  beq          t4, s4, 1181f
1179:             addi         gp, s8, -1047
1180:             and          t6, ra, a7
1181:             and          t4, a5, gp
1182:             xor          a4, s9, a0
                  xor          t6, zero, s8
                  srai         s11, s0, 20
                  auipc        s4, 760078
                  srl          s3, t5, t0
                  auipc        s9, 822356
1188:             sub          gp, s6, a6
                  xori         s6, a2, 757
                  slti         s1, a4, 457
                  slt          t3, s4, s5
                  auipc        s7, 78149
                  srl          s9, t1, a3
                  bne          a1, s3, 1213f
                  lui          a4, 8339
                  slli         a7, s10, 9
                  beq          s6, s4, 1206f
                  slti         s9, a1, 1177
                  xor          s7, t3, t5
                  slti         tp, tp, -901
                  lui          s10, 9530
                  srl          s6, t6, a3
                  nop
                  bge          s11, a1, 1206f
                  sra          tp, a5, zero
1206:             slti         a1, s8, 926
                  sltiu        s9, t4, -1664
                  ori          s5, a2, -372
                  lui          gp, 316908
                  bge          t1, s3, 1220f
                  bge          t1, ra, 1215f
                  srl          s3, t1, t4
1213:             ori          a3, s7, -1360
                  lui          a7, 184605
1215:             sra          t5, t3, s6
                  sub          ra, s10, t1
                  sra          zero, t4, gp
                  slti         s6, s4, -263
                  auipc        t2, 734850
1220:             srli         a7, a1, 10
                  xor          a1, s10, s4
                  ori          s9, a2, 1773
                  bge          s5, s11, 1238f
                  bge          s5, s1, 1228f
                  xor          s8, a1, a1
                  addi         ra, a1, -1051
                  sltiu        s5, ra, 1691
1228:             bne          a0, s9, 1236f
                  srai         t4, a5, 25
                  sll          t3, t6, a5
                  ori          s4, ra, -1423
                  lui          s7, 525767
                  nop
                  ori          a1, s7, -229
                  sub          t5, s11, t4
1236:             bge          a5, a7, 1244f
                  srl          s6, s2, a0
1238:             and          t1, s0, gp
                  sub          s11, a0, a0
                  sra          s8, t2, s3
                  bgeu         t5, t5, 1252f
                  and          zero, s9, s6
                  nop
1244:             bgeu         s8, s3, 1253f
                  bge          t1, tp, 1264f
                  auipc        tp, 108909
                  sub          s5, a2, t3
                  srli         t4, s2, 1
                  add          a4, a0, s5
                  srai         t0, zero, 28
                  auipc        sp, 510019
1252:             add          gp, s8, zero
1253:             nop
                  sltu         s8, t4, s2
                  bltu         t5, a0, 1262f
                  bge          s11, t2, 1265f
                  srli         tp, a1, 10
                  auipc        t6, 956423
                  ori          t0, t4, 484
                  and          s2, a5, tp
                  beq          a0, a7, 1268f
1262:             xor          t5, t5, t3
                  bgeu         t6, t6, 1282f
1264:             add          a5, t1, a0
1265:             bltu         t0, s4, 1276f
                  sll          sp, a2, ra
                  and          s10, s2, t6
1268:             sub          a5, t4, t2
                  add          a4, sp, t6
                  xori         s9, s1, 1474
                  xor          a7, a6, t2
                  and          s5, s6, ra
                  slt          s6, a4, s6
                  bge          a7, a6, 1278f
                  bgeu         a0, s8, 1293f
1276:             slt          s4, s10, a0
                  bne          t2, ra, 1279f
1278:             xori         a1, s0, 553
1279:             ori          t1, ra, 1527
                  bne          a1, s3, 1283f
                  srai         sp, s9, 30
1282:             ori          tp, zero, 436
1283:             sltiu        s9, t4, 1729
                  srai         tp, t5, 9
                  bgeu         s2, a3, 1303f
                  lui          s7, 577704
                  sub          t0, a4, s3
                  lui          s9, 463045
                  bne          s3, s10, 1293f
                  bne          a2, t4, 1298f
                  ori          s11, gp, -694
                  nop
1293:             blt          zero, t4, 1298f
                  bne          s11, t6, 1301f
                  slti         t0, s11, 98
                  bge          s3, s0, 1300f
                  bne          t6, s6, 1316f
1298:             addi         a1, t4, -1036
                  ori          a4, zero, 759
1300:             slt          s6, gp, t0
1301:             slli         a7, s11, 10
                  sub          a7, a1, tp
1303:             add          s7, s9, sp
                  bltu         ra, ra, 1314f
                  bltu         t6, s7, 1309f
                  sub          a4, s5, ra
                  slli         s0, s3, 20
                  slti         a7, s10, 1104
1309:             bgeu         gp, t2, 1312f
                  bne          s5, a4, 1313f
                  addi         s1, s6, 292
1312:             slt          s0, s10, a5
1313:             lui          gp, 355886
1314:             bne          a7, s7, 1321f
                  slli         a3, s0, 17
1316:             add          a4, s1, s3
                  sll          s6, tp, s6
                  srl          t5, t6, ra
                  srai         s9, t4, 0
                  or           s11, s4, s0
1321:             bgeu         t1, t6, 1330f
                  beq          a7, ra, 1339f
                  bge          ra, s7, 1331f
                  andi         t6, s8, -667
                  beq          s2, a0, 1334f
                  addi         s10, a4, 1500
                  sub          zero, s2, s11
                  addi         t5, s1, -810
                  bge          s5, s2, 1344f
1330:             add          s9, a1, s7
1331:             bltu         s2, s1, 1350f
                  srli         s11, ra, 11
                  srl          zero, t0, s8
1334:             andi         s4, a5, 1917
                  and          t6, s6, s9
                  sll          s11, s8, a3
                  bgeu         a1, sp, 1356f
                  bne          s11, s8, 1353f
1339:             slli         s7, s3, 29
                  blt          ra, a6, 1354f
                  slt          ra, a7, t5
                  slli         s9, s3, 17
                  sll          t3, a0, a2
1344:             andi         s2, zero, 863
                  sra          a1, s0, s8
                  addi         s6, a5, 886
                  auipc        s0, 882128
                  xor          t4, s10, s1
                  xori         t6, a2, -1008
1350:             slli         tp, t5, 25
                  sub          s11, a7, s6
                  bne          s7, s0, 1361f
1353:             or           ra, a4, t2
1354:             addi         s6, s5, 68
                  sltiu        s1, s9, 995
1356:             beq          gp, a1, 1365f
                  bge          t3, a0, 1376f
                  add          s0, s5, ra
                  beq          a0, a4, 1364f
                  sltu         s5, s3, s5
1361:             sltu         gp, t3, s0
                  add          s7, sp, t5
                  srl          t1, a3, s5
1364:             sltu         a5, s6, a0
1365:             add          a7, zero, a2
                  sltiu        s0, s11, -1494
                  andi         s1, t0, -147
                  sra          s5, tp, gp
                  srai         a7, a3, 17
                  ori          s2, sp, -266
                  bgeu         t2, t1, 1374f
                  auipc        s10, 442539
                  slti         t6, a0, 454
1374:             andi         gp, s6, -58
                  sra          s9, ra, s3
1376:             or           t5, s5, a6
                  sltu         s8, s3, s1
                  sll          a3, s3, s11
                  bgeu         a0, s2, 1394f
                  add          s8, t4, s1
                  andi         t4, zero, -1635
                  xor          s8, t0, s9
                  sra          s2, s9, a3
                  bgeu         zero, a5, 1403f
                  sltiu        s8, a3, 1208
                  or           t6, s9, a6
                  srli         t4, s7, 19
                  nop
                  add          sp, s6, s1
                  nop
                  bgeu         s8, ra, 1405f
                  srai         sp, s0, 6
                  srli         s2, s10, 18
1394:             sll          s11, s6, t6
                  slt          s5, t2, t6
                  bge          a5, s7, 1400f
                  blt          ra, a2, 1405f
                  bne          a3, ra, 1407f
                  or           tp, s4, ra
1400:             add          a1, s8, gp
                  slt          s6, s0, t6
                  add          s6, a1, a1
1403:             or           t0, s11, a0
                  add          s11, zero, s3
1405:             bltu         ra, s10, 1424f
                  sltiu        t3, a7, -1830
1407:             slti         t3, tp, 1414
                  srai         a5, t1, 26
                  sll          t3, s11, t4
                  srli         s2, t5, 17
                  slt          zero, s7, a7
                  beq          a5, a6, 1427f
                  or           t0, t1, t0
                  blt          gp, a3, 1417f
                  sra          a3, a5, a3
                  nop
1417:             bne          t5, t0, 1421f
                  sub          a3, a0, gp
                  sltu         s11, s8, a7
                  slli         t4, t6, 2
1421:             srai         s1, s8, 15
                  bltu         s4, t0, 1433f
                  blt          t6, a0, 1440f
1424:             sltu         s7, a5, s3
                  beq          s6, t4, 1443f
                  or           s9, a3, a7
1427:             andi         s9, t0, -1652
                  sltu         a5, s6, a4
                  auipc        a3, 67038
                  srli         t3, t0, 7
                  addi         a1, ra, 349
                  xori         t6, a0, -1606
1433:             add          s10, s2, a5
                  sltiu        s4, t0, 1285
                  bge          zero, s2, 1444f
                  sltu         t2, t6, s6
                  sltiu        t0, t6, 1442
                  ori          s7, t3, 1318
                  sra          t2, tp, t2
1440:             bgeu         s4, a6, 1458f
                  blt          a0, a1, 1450f
                  srli         s3, s0, 24
1443:             sub          t4, t3, gp
1444:             slt          a5, s10, s7
                  auipc        t3, 777125
                  sltiu        s0, s5, -1504
                  sub          ra, t3, t3
                  beq          s0, s2, 1450f
                  bge          a1, t1, 1459f
1450:             sra          s6, s2, a4
                  bltu         a0, a0, 1458f
                  srl          s6, t1, t4
                  sll          s8, t4, a3
                  sub          s5, s1, t5
                  bgeu         s3, s2, 1460f
                  xori         t1, zero, -1414
                  xor          a1, s6, a7
1458:             bge          zero, s4, 1467f
1459:             bne          sp, a2, 1478f
1460:             auipc        gp, 164003
                  andi         tp, s0, 1513
                  bne          t3, t2, 1465f
                  xori         t3, s11, 374
                  slti         t0, a1, 1630
1465:             or           s2, s9, a4
                  add          ra, a3, t3
1467:             slli         zero, tp, 31
                  bge          t0, s6, 1487f
                  bge          s10, t3, 1474f
                  bltu         tp, ra, 1478f
                  slti         s3, t2, 1098
                  lui          s3, 192563
                  xori         t5, t2, 1085
1474:             or           t1, s0, s7
                  srai         tp, tp, 6
                  nop
                  slti         a1, t5, -1434
1478:             bne          s4, t1, 1485f
                  srli         t2, s3, 8
                  slti         s7, s0, -875
                  sra          t5, s1, s11
                  sltiu        a4, s11, -755
                  srai         ra, a0, 23
                  and          t4, s10, t5
1485:             sll          sp, a5, a7
                  auipc        a7, 554847
1487:             beq          zero, a2, 1491f
                  xor          gp, ra, s10
                  blt          t5, t5, 1493f
                  bge          t1, a0, 1504f
1491:             beq          t6, s11, 1501f
                  bge          t1, s9, 1495f
1493:             xori         a3, s7, 2019
                  blt          s0, t5, 1501f
1495:             sltu         s7, t4, a1
                  sltiu        t5, s10, -1650
                  beq          s9, a4, 1506f
                  bgeu         t5, t1, 1503f
                  ori          t5, s9, -1729
                  sra          t0, t1, t4
1501:             bne          t2, s5, 1512f
                  bne          s3, ra, 1521f
1503:             bltu         a6, a7, 1520f
1504:             bgeu         a5, t0, 1513f
                  srli         s1, t5, 6
1506:             add          s11, s1, s3
                  sra          s4, gp, a7
                  auipc        gp, 70419
                  nop
                  slt          t4, a5, a1
                  srl          s3, s4, zero
1512:             andi         s9, a6, -333
1513:             srli         t5, t5, 8
                  srli         t6, a5, 30
                  sltu         s4, t3, s8
                  srli         t6, t0, 3
                  bne          t5, t3, 1536f
                  blt          s7, s11, 1522f
                  sltiu        s10, a6, 1314
1520:             addi         tp, a3, -911
1521:             ori          s3, a1, -1217
1522:             add          s3, s9, a5
                  lui          zero, 334727
                  bne          gp, s7, 1531f
                  and          s8, s5, s7
                  bgeu         t3, t1, 1535f
                  bltu         sp, s11, 1542f
                  andi         a7, tp, 966
                  sltiu        s9, a0, 2026
                  slti         s8, s10, -1666
1531:             sltiu        s4, s6, -145
                  nop
                  lui          a5, 498210
                  auipc        t3, 740823
1535:             slli         a7, a1, 11
1536:             srli         ra, t6, 20
                  beq          s1, t0, 1556f
                  bne          a3, s0, 1542f
                  xori         s8, s7, 471
                  xori         s0, t2, 1506
                  sra          s2, t0, tp
1542:             bge          s5, s1, 1544f
                  sll          s3, t0, gp
1544:             beq          a6, a2, 1563f
                  bltu         gp, gp, 1548f
                  sltu         s2, s3, t6
                  lui          t0, 733156
1548:             slt          sp, tp, s10
                  or           a7, t1, s3
                  bgeu         s1, a0, 1558f
                  addi         a1, zero, 593
                  srai         t0, a6, 19
                  lui          t1, 302296
                  sltu         t6, s7, s1
                  auipc        t0, 928745
1556:             bltu         a6, a6, 1574f
                  slt          t5, t4, a5
1558:             sra          gp, ra, t2
                  bge          s0, s11, 1574f
                  sltu         t1, t0, zero
                  sra          a7, ra, a1
                  bltu         s7, s6, 1565f
1563:             xor          a5, a1, a1
                  srai         a1, ra, 10
1565:             bltu         s8, t3, 1583f
                  slti         s1, a1, 1716
                  bge          a4, a2, 1576f
                  srai         a4, t5, 12
                  slti         ra, t0, 536
                  andi         s9, a7, -6
                  bltu         s3, a6, 1575f
                  blt          s10, t4, 1577f
                  add          s0, t4, t0
1574:             xori         a3, a4, -1082
1575:             beq          ra, s7, 1579f
1576:             sltiu        gp, gp, 592
1577:             bne          zero, s0, 1585f
                  addi         a3, tp, 1231
1579:             slli         s3, a1, 15
                  ori          t0, s11, 1870
                  and          s2, zero, t6
                  ori          t1, t5, -1304
1583:             slli         s8, s4, 0
                  sltiu        gp, s8, -1128
1585:             auipc        ra, 78206
                  bltu         t4, a2, 1589f
                  add          s4, t2, a5
                  andi         gp, s1, 1343
1589:             sll          t5, s0, s3
                  slt          ra, zero, t3
                  add          t0, zero, s2
                  sll          a4, a3, s4
                  auipc        t5, 217560
                  bne          t2, s1, 1613f
                  and          t0, tp, s3
                  srl          t1, t6, s2
                  and          s1, t4, tp
                  nop
                  xori         s6, s10, 242
                  slt          gp, t6, gp
                  slt          s11, t6, ra
                  sltiu        s2, s11, -1245
                  slti         t4, t5, -1134
                  bltu         a5, t4, 1612f
                  sltiu        a4, sp, 437
                  slli         a7, t0, 3
                  sltiu        s2, a3, 1170
                  sra          s4, a2, s11
                  or           a1, a0, t1
                  nop
                  or           t0, tp, s2
1612:             sltu         zero, s4, t5
1613:             bne          s7, s4, 1622f
                  auipc        zero, 259656
                  addi         a1, a2, -59
                  ori          t6, a4, -1823
                  auipc        s8, 616010
                  bltu         s2, t5, 1623f
                  srl          sp, a4, tp
                  addi         s9, tp, -24
                  bltu         s6, t0, 1623f
1622:             srai         sp, a5, 31
1623:             addi         gp, ra, -1520
                  srli         a5, t2, 12
                  or           s7, sp, s10
                  auipc        tp, 57477
                  lui          t5, 147329
                  lw           t1, 4(a0)
                  srli         s8, t6, 2
                  addi         a0, a0, 24
                  or           s10, ra, a4
                  or           t3, t5, a1
2158:             addi x5, x6, 1
2158:             jalr x5, x5, 0
sub_8:            slti         t0, s7, 1903
                  nop
                  bge          gp, a5, sub_8_stack_p
                  slti         sp, gp, 1511
sub_8_stack_p:    addi         a0, a0, -32
                  sltu         a1, s5, s0
                  sw           t1, 4(a0)
                  add          s10, s7, a6
                  sltiu        s5, t1, -1005
                  and          a5, a6, s6
                  slt          a4, a2, t5
                  andi         t2, a1, 1212
                  slt          s1, tp, tp
                  add          t0, ra, t2
                  andi         s5, t5, -1081
                  slti         zero, s6, -706
                  sll          t5, s6, gp
                  auipc        s0, 691067
                  auipc        s10, 901589
                  lui          s9, 736452
                  nop
                  and          s3, s4, s0
                  lui          ra, 486767
                  andi         s7, s8, -493
                  slti         s1, t4, -172
                  or           t4, t4, t6
                  sra          s0, s11, s9
                  srai         t5, s0, 1
                  lw           t1, 4(a0)
                  slti         s5, zero, 959
                  sltiu        t3, s4, 1920
                  addi         a0, a0, 32
                  lui          s5, 767884
33:               addi x30, x6, 0
33:               jalr x30, x30, 0
sub_2:            lui          s11, 648018
                  srl          s1, s2, t2
                  addi         a0, a0, -28
                  addi         s9, t5, 151
                  srl          t0, t4, a2
                  sra          t4, s2, t1
                  auipc        gp, 818888
                  or           s8, a1, s3
                  sw           t1, 4(a0)
                  sll          a5, s2, s3
                  andi         ra, s5, 1233
                  addi         a5, t4, 1883
                  bne          a0, t4, 4f
                  srai         t3, t0, 28
4:                sub          t1, s3, s11
                  bltu         gp, t3, 9f
                  blt          zero, tp, 10f
                  nop
                  bltu         s8, t4, 17f
9:                slt          t5, s3, ra
10:               sra          t0, a3, sp
                  bgeu         a1, s11, 13f
                  and          gp, ra, a2
13:               add          s7, a4, t4
                  slt          s3, s4, s9
                  addi         tp, s2, 165
                  srli         s1, s0, 1
17:               srli         gp, ra, 24
                  andi         s7, a6, -906
                  lui          a1, 1021363
                  addi         s3, s10, -951
                  sub          s5, t0, s0
                  bge          s11, s9, 41f
                  slt          s8, s8, s8
                  ori          a3, a2, -555
                  srl          s0, t6, t0
                  auipc        ra, 127419
                  blt          s4, t1, 35f
                  bltu         tp, t4, 37f
                  and          t0, gp, tp
                  bge          t0, a5, 31f
31:               or           a4, s1, t0
                  slti         s1, a5, 1766
                  sltu         t3, s9, s8
                  slti         s10, t4, -125
35:               slli         s9, tp, 3
                  ori          s5, tp, -499
37:               auipc        s2, 592784
                  sra          t2, sp, t5
                  add          a5, a2, a5
                  slli         t6, s9, 10
41:               srl          s6, t3, t2
                  bltu         s6, s0, 44f
                  addi         t1, sp, -1902
44:               andi         t5, s5, -631
                  blt          s5, t6, 52f
                  slt          a7, s5, t0
                  sll          s10, s8, t4
                  bgeu         s9, sp, 50f
                  slli         s11, zero, 26
50:               or           a5, t1, ra
                  addi         s4, s3, 1630
52:               beq          a4, zero, 64f
                  ori          t0, t3, 263
                  sub          s2, gp, s5
                  and          s7, s3, s2
                  beq          s1, sp, 73f
                  sub          a3, s10, s11
                  sltiu        s7, s10, -519
                  and          t1, s11, a5
                  ori          s9, a0, 718
                  add          s9, t6, s7
                  nop
                  ori          gp, gp, 1259
64:               bgeu         a2, gp, 74f
                  sub          s10, gp, t2
                  blt          t2, a5, 69f
                  and          a7, s3, a6
                  srli         s11, s2, 31
69:               nop
                  or           s6, s11, s4
                  bge          s9, t2, 73f
                  addi         t6, ra, 1124
73:               blt          t2, t4, 81f
74:               sub          a4, a4, a2
                  sltu         a5, gp, ra
                  sra          t4, t4, s11
                  addi         t1, s6, -1148
                  xori         a3, a3, 1584
                  sra          s4, s4, tp
                  addi         s11, s9, 1552
81:               bge          t6, s4, 90f
                  auipc        s4, 185805
                  and          t3, a2, a0
                  bgeu         s5, s0, 90f
                  sltiu        t6, sp, 950
                  srai         s11, s2, 21
                  srl          gp, t0, s10
                  srl          t5, s3, a2
                  beq          a1, a3, 90f
90:               srl          t5, s0, a4
                  lw           t1, 4(a0)
                  addi         a0, a0, 28
                  srl          s10, a7, tp
                  xori         ra, a0, -1377
                  sub          t4, s10, a4
                  slli         a1, a0, 2
                  sll          a7, s2, t3
108:              addi x30, x6, 0
108:              jalr x30, x30, 0
sub_4:            bltu         s3, a7, sub_4_stack_p
                  ori          s1, s1, 289
                  and          tp, s4, s6
sub_4_stack_p:    addi         a0, a0, -12
                  srai         s1, s3, 7
                  sw           t1, 4(a0)
                  sra          s7, a7, s5
                  bge          t1, t0, 7f
                  or           s1, a6, tp
                  bne          s11, s11, 9f
                  sll          a4, a3, s3
                  andi         s8, t5, 183
                  or           sp, a0, t0
                  sra          t0, t3, s11
7:                srl          s1, tp, t3
                  andi         t0, a5, 1112
9:                or           s3, s2, t5
                  andi         sp, a1, 1557
                  slti         a3, s2, -1167
                  blt          gp, s1, 26f
                  beq          s11, s0, 26f
                  slt          zero, s7, s3
                  srl          a4, zero, s11
                  xor          a1, s10, ra
                  sltiu        t2, t5, -1561
                  xor          sp, s3, s3
                  srai         s3, s10, 23
                  lui          s5, 218379
                  blt          s11, t2, 26f
                  xori         zero, t6, 367
                  sll          a4, t1, a7
                  slt          t5, a1, sp
                  beq          s10, a5, 26f
26:               lui          s8, 708585
                  ori          s4, a0, -1727
                  or           s1, s11, t3
                  lw           t1, 4(a0)
                  and          t0, a2, a3
                  addi         a0, a0, 12
                  slti         s2, s6, -467
40:               addi x14, x6, 0
40:               jalr x14, x14, 0
sub_6:            addi         zero, s11, -178
                  xor          gp, s6, a2
                  bgeu         t2, s9, sub_6_stack_p
sub_6_stack_p:    addi         a0, a0, -12
                  sw           t1, 4(a0)
                  sub          t6, s10, gp
                  add          t2, t1, t3
                  and          gp, s6, s7
                  sltiu        t5, t4, 1922
                  ori          tp, a6, -1854
                  srli         s3, s7, 16
                  sub          t4, a6, s9
                  sll          tp, s3, t6
                  and          a4, s1, t2
                  nop
                  sltiu        a5, s1, 1281
                  ori          a3, t5, -185
sub_6_j13:        jal          t1, sub_10 #jump sub_6 -> sub_10
                  srai         a5, a1, 20
                  sra          s8, s9, a0
                  andi         s6, t6, 2010
                  or           s8, s4, t1
                  bgeu         a0, s3, 11f
                  xor          s10, t3, gp
                  ori          gp, s8, -845
                  ori          t6, gp, -749
                  slt          s10, a4, t5
                  blt          zero, s10, 11f
                  sll          t5, s3, s0
11:               sra          s5, a4, t6
                  slli         s5, s8, 28
                  srai         s5, t4, 29
                  lw           t1, 4(a0)
                  ori          s10, s11, 1486
                  addi         a0, a0, 12
                  sll          t4, t4, s1
36:               addi x18, x6, 1
36:               jalr x18, x18, 0
sub_10:           or           s5, t1, s7
                  bne          a3, t1, sub_10_stack_p
                  slli         a5, s11, 0
                  sub          t0, a1, a6
                  slli         a7, ra, 31
                  add          s2, s3, a7
                  xori         tp, sp, -1562
                  slti         a7, s4, 1615
sub_10_stack_p:   addi         a0, a0, -8
                  sw           t1, 4(a0)
                  sltu         a3, tp, s7
                  sub          s5, s3, a4
                  la           sp, region_0+517 #start riscv_load_store_rand_instr_stream_0
                  xor          a4, s4, a6
                  sub          s0, s3, s10
                  lbu          s0, 3(sp)
                  lhu          a1, 7(sp)
                  lbu          s2, -4(sp)
                  lbu          a7, 10(sp)
                  or           zero, a2, zero
                  lui          t5, 1018392
                  lb           a7, -4(sp)
                  lh           tp, -3(sp)
                  slti         t4, tp, -975
                  sra          s11, s1, s3
                  sb           ra, 10(sp)
                  xori         s9, s3, 1021
                  sltiu        s8, s2, -1850
                  lui          t3, 43873
                  or           a3, t5, tp
                  addi         s5, a7, 1089
                  slt          tp, t0, a4
                  lbu          s11, -10(sp)
                  auipc        s4, 757729
                  sb           t2, 8(sp)
                  sll          s11, s5, tp
                  lbu          s5, -5(sp)
                  lh           t0, -3(sp)
                  srl          t5, tp, t2
                  xor          tp, a3, a1
                  lh           t1, -11(sp)
                  sh           s5, 9(sp)
                  lbu          t6, -3(sp)
                  auipc        s4, 613835
                  sw           ra, -9(sp)
                  add          ra, s4, s3
                  ori          s10, a3, -1971
                  slli         s0, zero, 12
                  lb           a5, -8(sp)
                  lb           a5, 7(sp)
                  lb           s7, 9(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         a4, a6, s2
                  auipc        a5, 856516
                  bgeu         s11, a0, 19f
                  sltiu        sp, a7, 1821
                  sll          s6, a1, s1
                  xor          s5, sp, t6
                  andi         a5, t6, -318
                  slt          sp, sp, a7
                  sra          t2, s8, a5
                  nop
                  add          tp, a4, a5
                  auipc        t2, 278872
                  add          s2, s5, s11
                  bne          t3, s2, 26f
                  xori         s8, t1, -1751
                  sltu         s7, ra, s6
                  srli         sp, s3, 3
                  sll          s10, gp, a3
                  sll          s3, s4, s5
19:               xori         a5, a7, 263
                  nop
                  ori          s5, t6, -1140
                  blt          t5, a7, 41f
                  bne          tp, a0, 24f
24:               srl          s3, s9, t2
                  and          gp, t4, a4
26:               srl          s7, s2, s0
                  lui          t2, 604946
                  sll          s1, sp, a7
                  and          s9, s3, tp
                  or           s3, s0, s4
                  xori         a7, t6, 1719
                  sra          s0, gp, s6
                  sub          gp, t6, s4
                  auipc        s10, 825759
                  sltu         sp, gp, gp
                  ori          t1, s10, 1598
                  bgeu         a0, s0, 54f
                  auipc        zero, 927783
                  sltu         s4, s0, a7
                  srai         s3, a4, 31
41:               lui          s9, 662558
                  ori          s6, t3, -1428
                  blt          a7, s5, 50f
                  blt          a0, s1, 49f
                  auipc        a4, 1004728
                  slli         t5, s9, 19
                  bne          t0, a6, 49f
                  srl          t5, t2, s11
49:               srai         s7, s5, 21
50:               sra          a1, t2, a1
                  auipc        a7, 618675
                  slt          t1, t3, a6
                  nop
54:               sll          t3, s6, s11
                  andi         s8, tp, -747
                  and          s1, a2, t2
                  bltu         s2, s3, 59f
                  srli         s11, s1, 24
59:               xor          s7, s6, gp
                  srli         t6, t1, 13
                  slt          a1, gp, tp
                  or           ra, a7, sp
                  slt          s9, a6, s1
                  sll          a3, t5, s2
                  ori          s0, ra, -1318
                  sra          a1, t1, s6
                  bgeu         s9, s7, 68f
68:               or           s11, a2, a4
                  xor          a3, s0, s1
                  sltiu        a1, s8, -488
                  bgeu         s10, s1, 91f
                  or           a5, s3, ra
                  bltu         ra, a3, 85f
                  beq          a7, a2, 80f
                  sltu         s10, tp, s5
                  nop
                  srai         s1, a7, 7
                  sll          ra, t6, s5
                  ori          s4, s7, -1767
80:               nop
                  bgeu         t3, s9, 92f
                  addi         a1, a0, 391
                  sub          s6, t0, s2
                  bltu         a0, s8, 85f
85:               slt          s2, a4, s9
                  nop
                  ori          s3, a2, 215
                  andi         ra, t3, 1827
                  sra          sp, s5, s3
                  sltu         a1, sp, t0
91:               bge          a5, a3, 107f
92:               bgeu         s3, t6, 111f
                  bge          s1, t2, 100f
                  auipc        sp, 401436
                  or           t3, a0, s0
                  slli         tp, s0, 9
                  xori         s5, s11, -2009
                  sub          s9, tp, sp
                  and          s9, s10, a2
100:              nop
                  sltiu        s11, zero, -939
                  srai         t5, s10, 22
                  blt          t3, t3, 118f
                  blt          t3, sp, 109f
                  or           s7, a1, s0
                  bltu         t2, s0, 124f
107:              addi         t6, s2, -576
                  srai         s5, t6, 4
109:              sltu         s10, s8, s7
                  blt          t5, a4, 111f
111:              xori         a1, s6, 548
                  blt          a0, a2, 125f
                  slli         zero, s2, 28
                  sll          s10, tp, s9
                  xor          s0, a1, t3
                  srl          a3, s8, a6
                  beq          ra, s2, 123f
118:              bltu         a5, s1, 125f
                  srli         s5, t6, 5
                  auipc        s11, 139025
                  addi         t0, s11, 495
                  slli         s5, t6, 16
123:              bltu         a7, zero, 125f
124:              slti         a4, a2, -458
125:              sltu         s9, s0, s0
                  xori         zero, a4, 1958
                  lui          s1, 238392
                  sra          s7, sp, a3
                  nop
                  lw           t1, 4(a0)
                  nop
                  add          s10, t5, t3
                  addi         a0, a0, 8
                  sltu         a7, a0, s8
                  srli         a4, a4, 15
                  srli         t6, a6, 31
188:              addi x4, x6, 1
188:              jalr x4, x4, 0
sub_7:            addi         a0, a0, -12
                  or           a4, a4, a0
                  srli         t5, gp, 19
                  sw           t1, 4(a0)
                  andi         s9, s8, 741
                  sra          t6, a5, s6
                  nop
                  add          t3, s6, t5
                  addi         a4, gp, 1201
                  nop
                  sub          ra, a3, t2
                  add          sp, s4, s4
                  xori         ra, a5, -1393
sub_7_j15:        jal          t1, sub_10 #jump sub_7 -> sub_10
                  la           a5, region_0+1298 #start riscv_load_store_rand_instr_stream_3
                  lbu          a4, -371(a5)
                  xor          t0, s8, t1
                  lb           s5, -937(a5)
                  sb           t4, -651(a5)
                  lb           a4, -34(a5)
                  lb           s8, 697(a5)
                  sb           a7, -732(a5)
                  lbu          s11, -115(a5)
                  lb           t2, -805(a5)
                  srai         s4, gp, 15
                  lb           a7, -118(a5)
                  sw           a4, -782(a5)
                  lb           a1, -1059(a5)
                  sltiu        s2, s10, 1286
                  lbu          t0, -977(a5)
                  lhu          gp, -124(a5)
                  lb           tp, -731(a5)
                  lb           s4, -329(a5)
                  addi         a1, s6, -1959
                  sra          s10, s10, a6
                  lh           sp, -222(a5)
                  xori         s1, s2, -1750
                  lhu          s5, -242(a5)
                  lb           t2, -1182(a5)
                  lh           a7, 16(a5)
                  sll          t3, s11, a4
                  sll          s8, a6, gp
                  addi         s2, t2, -1410
                  sub          t2, a1, tp
                  and          t6, s2, a4
                  sb           zero, -1153(a5)
                  lb           t5, -639(a5)
                  lw           s4, -1294(a5)
                  sb           t0, -1049(a5)
                  sb           t5, 145(a5)
                  slt          a3, a7, t1
                  lb           t2, -191(a5) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+48 #start riscv_load_store_rand_instr_stream_0
                  andi         t5, t1, -746
                  sra          t3, s0, s0
                  auipc        a5, 35954
                  sb           a1, 269(sp)
                  add          tp, s0, t0
                  sltiu        a1, a5, 1905
                  lb           a4, 1889(sp)
                  lw           s9, 92(sp)
                  andi         s2, s3, 1919
                  add          s2, s7, zero
                  sub          tp, a5, a3
                  addi         t4, t3, 1870
                  or           s3, t1, t5
                  srl          t1, zero, s11
                  slt          s3, s10, a6
                  lbu          t5, 1442(sp)
                  and          t1, s11, a5
                  sb           a7, 1080(sp)
                  srai         s9, a0, 27
                  auipc        t3, 477252
                  srl          s6, t5, a0
                  sltu         t3, t0, s4
                  lhu          t1, 94(sp)
                  srli         s7, a1, 24
                  xori         a3, gp, -612
                  sub          t5, a5, zero
                  lbu          t4, 809(sp)
                  lw           t1, 1684(sp)
                  lhu          t4, 1478(sp)
                  slli         s0, s10, 23
                  addi         gp, tp, 1018
                  sra          a3, t2, s3
                  xor          t2, s7, t0
                  add          s9, a1, a7
                  xor          s10, t1, s7
                  sb           a1, 1927(sp)
                  lbu          a4, 1575(sp)
                  lb           s1, 21(sp)
                  srai         s11, s3, 24
                  lh           t1, 644(sp)
                  xor          zero, t0, s8
                  nop
                  sb           s7, 1895(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+1769 #start riscv_load_store_rand_instr_stream_1
                  sra          s2, s9, a6
                  lw           t0, -209(s8)
                  lb           t5, 68(s8)
                  sltiu        a1, s5, -1189
                  lbu          zero, 131(s8)
                  slt          t2, s5, s4
                  add          s7, zero, s5
                  lbu          s2, -121(s8)
                  lbu          s10, -37(s8)
                  sll          s5, zero, a1
                  slt          t0, s2, a4
                  slli         s10, a4, 0
                  slt          s2, s11, sp
                  slt          a1, s11, s5
                  sub          gp, s2, a3
                  slti         t3, ra, 198
                  srl          s2, s2, s10
                  auipc        t1, 534425
                  sb           t0, 21(s8)
                  lb           a5, -162(s8)
                  sb           a3, -249(s8)
                  sll          s9, s0, a3
                  srl          s7, t1, s2
                  sw           t2, 31(s8)
                  sb           a5, 80(s8)
                  lbu          t1, 188(s8)
                  srli         sp, tp, 8
                  sw           a4, 147(s8)
                  xor          a4, a5, s3
                  andi         s2, s3, -628
                  or           t4, a3, s2
                  slli         a3, a6, 20
                  sltiu        s0, s9, 871
                  sb           s8, -61(s8)
                  xori         s1, a5, 1176
                  nop
                  nop
                  lb           s1, -81(s8)
                  srl          t6, s2, a6
                  sltiu        gp, t4, 1384
                  lbu          s2, -190(s8) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+571 #start riscv_load_store_rand_instr_stream_2
                  lbu          s5, -45(t3)
                  sub          s1, ra, s11
                  sb           t1, -63(t3)
                  lb           t5, -49(t3)
                  sb           a2, 12(t3)
                  add          tp, a7, s2
                  lhu          s0, -45(t3)
                  nop
                  sb           a2, -15(t3)
                  sll          s0, t6, s10
                  lbu          t0, -44(t3)
                  lb           a1, -53(t3)
                  lb           a5, 45(t3)
                  sb           tp, -39(t3)
                  sh           t6, -39(t3)
                  sra          s7, ra, a3
                  sb           a4, 46(t3)
                  srl          a1, a6, a3
                  sw           a4, 25(t3)
                  xor          t5, a4, a2
                  lhu          t6, 61(t3)
                  lhu          t0, -13(t3)
                  sb           sp, 13(t3)
                  sltu         s4, s4, s5
                  lhu          s10, 37(t3)
                  sh           tp, -37(t3)
                  and          a7, s11, s4
                  sh           a3, 49(t3)
                  and          zero, gp, a6
                  auipc        ra, 247700
                  sb           tp, -31(t3)
                  lb           t5, -54(t3)
                  xor          t5, sp, tp
                  sb           ra, -13(t3) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+1557 #start riscv_load_store_rand_instr_stream_4
                  auipc        s5, 607259
                  lui          s11, 561888
                  srl          zero, ra, t5
                  lbu          a7, -4(s0)
                  andi         a1, zero, -1927
                  lb           ra, -16(s0)
                  lbu          t2, 6(s0)
                  sll          gp, gp, s1
                  lhu          s10, -7(s0)
                  lb           a3, 2(s0)
                  sltiu        s8, ra, 699
                  sb           s7, -8(s0)
                  srl          tp, t0, a4
                  lbu          ra, -15(s0)
                  lb           t0, -12(s0)
                  xori         gp, s5, -1366
                  lbu          s1, -6(s0)
                  auipc        t3, 829879
                  srl          sp, a4, a4
                  lbu          s3, -6(s0)
                  lb           s8, -2(s0)
                  slli         t1, s7, 11
                  sltu         s10, a4, a2
                  sra          s11, s4, s10
                  or           s1, a1, a3
                  srai         a3, t5, 16
                  lhu          s9, -5(s0)
                  add          sp, s5, a6
                  lhu          a4, -15(s0)
                  slt          s3, a5, a0
                  sltu         zero, sp, a6
                  addi         tp, t1, 1269
                  ori          a5, s2, -414
                  srai         s1, a1, 29
                  lh           a4, 15(s0)
                  sh           tp, -11(s0) #end riscv_load_store_rand_instr_stream_4
                  bne          s7, a6, 8f
                  andi         s0, s6, -842
                  slti         s1, a3, -1991
                  ori          s3, t0, 205
                  bge          t0, a4, 18f
                  bltu         s5, s2, 15f
                  auipc        s8, 35291
                  sll          gp, a4, s9
8:                srai         s10, s5, 29
                  bltu         s1, t4, 10f
10:               sra          zero, s3, t2
                  sll          gp, s9, gp
                  xori         a1, t6, 1474
                  slti         zero, a6, 1013
                  sltiu        s3, t3, -1865
15:               sra          t6, a3, a5
                  addi         a7, t2, -1929
                  and          a7, s10, s1
                  srai         sp, ra, 21
                  sra          t4, a3, s7
                  slli         t3, s5, 15
                  or           a5, a3, ra
                  slt          s0, s11, a0
                  slti         gp, a6, 1384
                  or           t4, gp, s10
                  sltiu        a1, a4, 888
                  la           t5, sub_9
                  sll          s11, t2, tp
                  addi         t5, t5, -359
                  bge          a4, a3, sub_7_j14 #branch to jump instr
                  add          s0, s5, a2
sub_7_j14:        jalr         t1, t5, 360 #jump sub_7 -> sub_9
18:               sltiu        s0, a1, 1876
                  addi         s8, s1, -1216
                  bgeu         t2, s3, 21f
21:               bne          s8, s6, 34f
                  bne          tp, t6, 40f
                  slli         s1, a2, 21
                  sra          s1, s2, a0
                  addi         s3, zero, -734
                  bne          s7, s3, 39f
                  and          s1, t3, a2
                  sub          t2, sp, tp
                  slli         t3, a3, 22
                  srl          t5, zero, zero
                  sltu         s6, a2, s2
                  bne          s8, t1, 36f
                  srl          a4, s0, t4
34:               ori          ra, a6, -561
                  sltu         t1, s6, s11
36:               ori          a3, ra, 647
                  bltu         s9, a7, 44f
                  and          t6, zero, t0
39:               bltu         t3, a3, 40f
40:               srai         s0, t2, 5
                  srai         s0, gp, 26
                  bne          a3, a1, 55f
                  sll          s5, a0, s5
44:               auipc        s7, 568266
                  sra          s1, t5, tp
                  slli         a7, s11, 18
                  srai         s2, t6, 25
                  sltiu        s6, a1, 561
                  andi         t5, a6, -1126
                  sub          t6, tp, t2
                  sltu         s11, s0, s0
                  auipc        s0, 588803
                  xori         t4, t3, 537
                  addi         s8, a1, 878
55:               beq          t6, t4, 59f
                  add          a1, s5, t5
                  auipc        t4, 965391
                  addi         t5, t5, 1982
59:               auipc        s0, 306560
                  blt          a7, t3, 71f
                  addi         s2, s10, -348
                  bge          s3, a7, 79f
                  bltu         t0, s7, 83f
                  srai         s6, a6, 13
                  slli         s10, gp, 13
                  addi         a1, a1, 1270
                  add          s0, t1, s5
                  slti         s7, a2, -1378
                  xori         a7, a4, -769
                  srl          s1, t3, s3
71:               beq          s8, gp, 75f
                  and          s0, s8, s8
                  sll          a5, a6, t6
                  sra          s7, s0, t2
75:               srl          a1, s7, s0
                  beq          a6, t5, 83f
                  or           a7, s1, a4
                  slli         ra, s0, 23
79:               sltu         s9, gp, a5
                  auipc        a7, 940981
                  beq          s0, s1, 90f
                  srli         a5, t6, 16
83:               sltu         tp, a1, sp
                  ori          a5, t1, -1619
                  add          s4, t2, s1
                  bne          s0, t2, 99f
                  sra          s5, a2, t1
                  xori         s8, s8, -871
                  srli         s1, s7, 23
90:               slli         t2, t3, 16
                  nop
                  xor          s2, t1, gp
                  sltiu        s1, a7, -16
                  lui          tp, 858149
                  or           s5, a3, a7
                  bltu         a0, s11, 105f
                  andi         t3, zero, 225
                  beq          a7, s5, 104f
99:               andi         gp, t4, 983
                  sltiu        s8, t2, -618
                  nop
                  blt          t0, t5, 103f
103:              sltu         t2, s4, a2
104:              bge          t4, a6, 119f
105:              slti         s8, a1, 432
                  bne          s8, a7, 123f
                  addi         tp, s1, 827
                  or           s7, s8, a1
                  beq          s4, s2, 112f
                  bltu         t2, zero, 123f
                  bgeu         s1, s9, 130f
112:              slli         t0, s1, 24
                  xori         s9, s7, 469
                  bgeu         a2, s4, 128f
                  add          a1, a7, a4
                  slt          s3, s10, s9
                  andi         s1, a1, 1600
                  ori          s0, t3, -1397
119:              srl          a5, t5, t6
                  bltu         s0, s11, 129f
                  sll          tp, s5, t6
                  slli         gp, t2, 31
123:              beq          s5, t2, 134f
                  ori          ra, s11, -1055
                  sub          a7, t1, s1
                  xor          t0, s1, t5
                  or           s5, gp, s8
128:              auipc        a5, 253092
129:              bltu         s3, s0, 144f
130:              srai         sp, t3, 1
                  srli         s3, s4, 31
                  auipc        s0, 603543
                  sll          s6, s0, t5
134:              slt          s1, a5, a7
                  beq          ra, s10, 141f
                  sra          t1, t0, s5
                  sll          ra, zero, s11
                  sra          t0, a7, a2
                  sub          s5, a5, t5
                  srai         t6, a4, 0
141:              bge          a0, t0, 155f
                  sltu         t0, sp, s5
                  sll          s7, a0, a0
144:              sra          s11, t6, s4
                  xor          t1, s8, sp
                  bge          t5, s2, 159f
                  sra          a3, t6, t0
                  blt          s0, s1, 152f
                  ori          a5, tp, 625
                  slt          ra, a5, s8
                  or           t4, a3, s10
152:              bge          s1, a6, 161f
                  bgeu         a7, a0, 166f
                  addi         a4, gp, 732
155:              sll          a1, t1, tp
                  srl          s10, s7, s10
                  srai         s6, s11, 0
                  srli         s9, s1, 3
159:              or           s6, tp, zero
                  xor          ra, tp, s8
161:              and          s6, s7, s10
                  xor          a1, t6, a4
                  auipc        a3, 97859
                  srai         s11, sp, 2
                  beq          a3, a3, 182f
166:              srai         s6, sp, 8
                  beq          s1, s2, 175f
                  bltu         gp, a2, 169f
169:              blt          a1, s5, 183f
                  and          a4, ra, s7
                  and          s2, gp, a2
                  bne          a7, a6, 175f
                  bge          s2, t6, 177f
                  sub          s5, t6, a3
175:              auipc        t3, 624680
                  andi         zero, s9, 35
177:              beq          s2, t1, 190f
                  add          a4, s10, zero
                  sub          t0, t6, t2
                  addi         a7, s5, -1277
                  beq          t0, a7, 199f
182:              or           t3, zero, t2
183:              sub          t4, a0, s7
                  srli         t2, a3, 0
                  slli         t3, s8, 5
                  bne          s1, a3, 206f
                  srl          sp, a1, ra
                  sra          t2, s0, s9
                  sra          gp, s11, t6
190:              nop
                  xori         a5, t2, -186
                  beq          s5, ra, 193f
193:              bgeu         s0, a4, 202f
                  slt          t0, a1, t6
                  lui          a3, 734097
                  bne          sp, t6, 205f
                  xori         t5, a0, -1781
                  sll          gp, s2, ra
199:              srl          a5, s9, a7
                  bltu         gp, t0, 207f
                  addi         t6, s10, -975
202:              sub          s2, a3, s2
                  xor          s10, s11, a4
                  add          s0, a0, t4
205:              sltiu        t3, s11, 1483
206:              sltiu        s0, a0, -1480
207:              bne          gp, t1, 208f
208:              bge          s4, t1, 227f
                  auipc        t2, 698352
                  addi         t3, t6, -740
                  nop
                  sra          s1, t6, a1
                  ori          s8, s7, 161
                  or           s0, s1, a5
                  blt          tp, a2, 225f
                  srl          t6, a5, s11
                  bge          s8, a1, 218f
218:              auipc        zero, 1033965
                  slti         t0, a0, 1995
                  sll          a1, a0, s11
                  sll          gp, t2, t5
                  blt          s1, gp, 226f
                  sra          t0, s5, s7
                  bne          t2, s11, 237f
225:              add          t3, a5, t6
226:              slt          a4, a5, a2
227:              slt          s2, t3, a4
                  srli         ra, a2, 6
                  andi         s8, s11, 1721
                  auipc        t0, 70605
                  addi         t1, t3, -850
                  srl          a4, t3, a5
                  lui          sp, 655467
                  lui          zero, 738985
                  add          s2, gp, t4
                  and          s7, s6, t6
237:              auipc        t4, 295880
                  add          s10, a2, s4
                  sll          s8, t5, a0
                  and          a5, a5, a0
                  srli         s11, s3, 4
                  blt          a2, s4, 259f
                  slli         a5, a4, 22
                  srl          s4, t4, a3
                  slti         zero, t4, 99
                  add          gp, s1, zero
                  ori          a7, s11, 953
                  ori          a5, s1, 30
                  add          s3, t4, tp
                  blt          s8, gp, 263f
                  nop
                  blt          s11, tp, 259f
                  sltiu        ra, a2, 1557
                  xori         t0, a5, 960
                  bne          s0, t0, 259f
                  srai         gp, a4, 31
                  slt          s11, a3, s7
                  add          s0, t1, s9
259:              addi         a4, sp, -69
                  beq          s4, t2, 273f
                  lui          t5, 835463
                  add          a3, a1, a6
263:              andi         s0, t2, -536
                  sra          t5, a1, a6
                  and          s9, t3, s2
                  and          a5, s11, t3
                  slti         a1, t4, -579
                  beq          s1, a2, 269f
269:              xori         a1, t3, 1920
                  beq          s3, t4, 280f
                  sra          a4, sp, s6
                  bne          s5, sp, 286f
273:              sub          gp, s5, ra
                  ori          s1, s3, -933
                  bgeu         t4, a4, 290f
                  bgeu         a7, s4, 294f
                  sll          a4, t5, t3
                  bgeu         ra, s2, 291f
                  bne          gp, s2, 280f
280:              sltu         s3, t6, s2
                  sra          s3, s5, s2
                  auipc        t1, 880678
                  xori         s1, a5, 1878
                  srai         t4, a0, 1
                  sra          t6, t1, s0
286:              ori          a5, t5, -1959
                  lui          s6, 895772
                  beq          s11, t3, 294f
                  srl          s4, a6, s1
290:              bge          s3, t2, 299f
291:              xori         s11, s7, -489
                  addi         t0, a7, -224
                  slti         a7, s8, -389
294:              sra          t1, s9, s9
                  bgeu         t0, s11, 299f
                  srai         t2, s6, 27
                  sra          a5, s10, s3
                  srai         ra, a6, 11
299:              slt          s1, s7, s0
                  nop
                  sub          t5, s9, ra
                  sra          s3, a1, t2
                  sll          s2, a7, s11
                  or           s6, s3, a1
                  beq          s6, t0, 325f
                  add          s5, ra, s5
                  srli         a7, s3, 30
                  sltiu        s9, tp, 1877
                  sltu         t5, s8, t5
                  auipc        t3, 341378
                  sra          s11, t5, s9
                  xor          t5, a6, s7
                  or           sp, gp, s11
                  sub          zero, t0, t5
                  xori         tp, t1, 1516
                  andi         t1, t2, -618
                  or           s8, t0, t5
                  slt          ra, a1, a2
                  bne          a6, s7, 320f
320:              bge          t0, t5, 337f
                  bge          a6, t2, 324f
                  beq          s9, s7, 323f
323:              srli         s0, a4, 30
324:              srli         a4, a7, 22
325:              sll          t5, a0, zero
                  srli         a4, s5, 27
                  sub          s4, tp, s0
                  xor          t3, s5, t3
                  sra          a3, s5, sp
                  sra          s8, s3, ra
                  xori         s11, a4, 610
                  nop
                  slli         t2, a1, 18
                  blt          t2, a2, 351f
                  lui          gp, 559773
                  srai         t4, s0, 26
337:              addi         t5, a7, -292
                  andi         ra, s11, -1427
                  sltu         s4, a6, s10
                  slti         a1, t3, 923
                  slli         s2, s8, 30
                  addi         s3, zero, 1728
                  sra          zero, s11, t1
                  slti         t0, s3, 1147
                  sltiu        tp, s1, -1160
                  bltu         t1, s3, 350f
                  add          s5, t3, s2
                  addi         a4, s2, -460
                  bgeu         t0, a3, 362f
350:              addi         gp, s1, 1668
351:              sra          s3, a7, t0
                  or           t3, s4, a6
                  bne          gp, tp, 364f
                  xor          s1, sp, t3
                  sltu         sp, s10, a4
                  srai         a7, tp, 14
                  xor          s3, zero, s5
                  or           s4, a1, t1
                  slt          t5, sp, a2
                  beq          gp, t4, 379f
                  andi         t1, s8, 245
362:              sltiu        s3, s2, -1514
                  bne          s0, s1, 376f
364:              srai         tp, a3, 26
                  srai         a1, a4, 8
                  sltu         t0, zero, a4
                  sub          s1, t5, t5
                  addi         a7, a2, -306
                  bne          ra, s8, 376f
                  sltu         tp, t4, s1
                  bltu         s8, a5, 378f
                  slt          t3, a1, a7
                  bltu         s3, s7, 382f
                  and          s6, s3, s5
                  bne          a5, s7, 384f
376:              srl          gp, a2, a0
                  lui          s6, 243373
378:              addi         gp, s9, -920
379:              sltiu        s9, t1, -1601
                  bge          s2, t1, 394f
                  addi         s6, s3, 516
382:              slti         t0, tp, 1792
                  andi         t1, t2, 108
384:              sra          t4, t5, s5
                  add          a4, t6, tp
                  xori         a3, tp, 643
                  bgeu         gp, t0, 395f
                  xor          a1, s7, s1
                  bltu         a2, a3, 402f
                  bne          gp, s9, 400f
                  xor          s5, a7, a3
                  lui          t2, 658128
                  srl          sp, s2, s0
394:              blt          sp, t3, 403f
395:              sub          t5, s6, s10
                  andi         s9, s10, 1815
                  or           a1, t6, t6
                  sll          s4, s0, t2
                  add          sp, zero, s7
400:              slti         ra, a7, -1489
                  and          t3, s11, t0
402:              and          zero, a0, s6
403:              slt          s5, a5, a5
                  lui          a7, 630585
                  ori          t6, a1, -353
                  bltu         tp, s3, 413f
                  bgeu         t4, a6, 420f
                  srli         a5, s1, 6
                  slti         t6, s8, 1320
                  srai         a5, s11, 21
                  ori          t6, zero, -1028
                  andi         s11, a0, -847
413:              bgeu         s1, s1, 414f
414:              sltiu        a5, s1, 813
                  xori         s8, a1, 1018
                  andi         t6, s7, -1728
                  bltu         s6, t6, 435f
                  sub          gp, s3, tp
                  or           gp, t5, a3
420:              sub          t5, t1, a0
                  sra          s9, a5, ra
                  sltiu        zero, a5, 1078
                  xor          t1, s5, t4
                  bne          t2, sp, 438f
                  nop
                  slli         sp, s9, 18
                  bne          a7, a4, 428f
428:              bgeu         ra, t2, 431f
                  beq          s0, s2, 433f
                  srli         t6, tp, 20
431:              slt          ra, a6, sp
                  and          t6, a2, gp
433:              srl          t5, s0, t4
                  auipc        s2, 548526
435:              auipc        s7, 719475
                  slli         s10, s11, 1
                  sll          s2, s7, a2
438:              ori          t4, t6, -782
                  auipc        t6, 207587
                  srai         t0, t0, 21
                  sltiu        t2, s0, -820
                  auipc        t0, 457759
                  slti         t2, s3, 1816
                  addi         ra, a0, -1667
                  sub          s8, t0, s2
                  ori          s7, t1, 363
                  bne          tp, a4, 467f
                  bltu         a6, t5, 459f
                  srl          ra, s0, t5
                  addi         s10, s11, 248
                  srl          a1, sp, s6
                  sltu         ra, a7, s11
                  bltu         t2, a2, 459f
                  and          t0, a5, sp
                  nop
                  bge          a6, a2, 460f
                  add          s2, s2, s7
                  add          t1, s6, s0
459:              addi         a7, s0, -464
460:              srli         t3, ra, 12
                  and          a7, t1, s3
                  andi         gp, t4, 1684
                  sltu         s10, s9, tp
                  bge          sp, t2, 477f
                  ori          s1, s2, 422
                  srli         sp, a7, 26
467:              ori          a4, t4, 1063
                  bltu         a4, a5, 475f
                  sub          s1, s4, sp
                  bne          a4, t5, 471f
471:              add          s6, a5, s9
                  bge          a6, zero, 473f
473:              slti         t5, t0, 210
                  slli         gp, s6, 15
475:              sltiu        ra, s0, -152
                  srai         s1, t4, 2
477:              sub          t5, a5, s10
                  slli         sp, a3, 27
                  xori         a4, sp, -458
                  sll          t4, a4, gp
                  blt          ra, a5, 500f
                  add          t1, s9, a5
                  bgeu         a3, t2, 498f
                  srai         gp, t2, 24
                  bge          s2, t3, 498f
                  bge          t0, a0, 499f
                  blt          s7, sp, 504f
                  sll          t5, a5, s2
                  beq          t4, t0, 498f
                  sra          s2, tp, t5
                  sll          s6, s2, s1
                  xori         a5, s1, -1525
                  addi         t4, s2, 851
                  slli         a3, sp, 28
                  srli         s4, t6, 11
                  beq          a7, t1, 513f
                  xori         a3, s10, -855
498:              auipc        s6, 571590
499:              lui          s4, 662100
500:              bgeu         s9, t2, 513f
                  sltiu        s0, ra, -799
                  auipc        t2, 343117
                  sra          s2, a2, a2
504:              srli         t2, s9, 4
                  add          s6, tp, a4
                  slli         s10, a2, 15
                  bne          t0, t0, 521f
                  sll          t1, t6, a5
                  ori          a3, a5, -178
                  lui          zero, 197961
                  nop
                  srli         sp, zero, 15
513:              xor          a4, s3, a4
                  bltu         gp, t3, 523f
                  bge          s2, zero, 519f
                  blt          a2, s4, 524f
                  srai         ra, sp, 15
                  or           sp, t5, s3
519:              slti         s4, s7, -1494
                  bne          s2, t1, 539f
521:              sub          a7, s1, s7
                  bltu         ra, t3, 540f
523:              addi         s7, a0, -1527
524:              slli         sp, t3, 11
                  or           a5, sp, t1
                  bge          t4, gp, 532f
                  blt          s9, gp, 528f
528:              sltu         sp, a0, a6
                  xori         s8, s4, -717
                  slt          gp, s0, a5
                  slti         s4, t0, -373
532:              sltiu        s8, s10, 200
                  bgeu         s2, t5, 546f
                  slli         t1, t4, 22
                  sll          a1, t5, a5
                  xori         s8, a2, 1692
                  bne          s4, s6, 546f
                  and          t5, a2, a0
539:              or           s1, zero, tp
540:              sub          ra, s10, t6
                  bgeu         s4, s2, 555f
                  sra          s6, t1, s10
                  sra          t0, s11, t2
                  and          a7, s8, t4
                  add          s4, s0, s1
546:              and          s2, s0, a3
                  bltu         s3, s3, 560f
                  sra          s6, a4, t3
                  slt          t2, s9, s1
                  add          s5, s10, a0
                  beq          a3, t5, 554f
                  and          a5, s5, zero
                  blt          s7, tp, 573f
554:              add          gp, s10, s7
555:              bne          s8, t2, 559f
                  add          s8, s0, t0
                  sub          a3, s1, t0
                  sltiu        t1, a1, 29
559:              bne          t4, s5, 574f
560:              lui          s10, 336060
                  bge          a7, ra, 578f
                  lui          a1, 75373
                  srli         t5, a4, 15
                  sub          t6, t0, a7
                  beq          zero, a0, 566f
566:              xori         s9, gp, -1374
                  slli         s6, s11, 5
                  addi         s5, s1, 887
                  srli         a4, s3, 7
                  addi         t4, ra, 143
                  add          t0, t0, a3
                  and          s3, s7, s7
573:              slti         sp, t6, -1152
574:              add          s7, a5, sp
                  xori         a4, s0, 511
                  beq          t3, a7, 584f
                  lui          s6, 355226
578:              or           t5, a5, s10
                  auipc        s9, 230880
                  add          a7, s8, a4
                  add          s5, a6, t0
                  or           t3, ra, s7
                  xori         t3, s4, -299
584:              sll          a5, a1, s8
                  auipc        a4, 139472
                  srai         s11, sp, 15
                  ori          s6, a1, -1608
                  sltiu        zero, s1, 411
                  srli         s9, t6, 31
                  bgeu         tp, a7, 597f
                  beq          a1, s8, 592f
592:              slt          s4, a0, t5
                  srai         t2, a7, 2
                  and          s5, a0, a4
                  slt          t6, s3, s10
                  slli         t2, s2, 3
597:              or           gp, s4, s11
                  slti         sp, s8, -747
                  bne          s1, t1, 608f
                  andi         s0, a5, 969
                  xori         a3, t3, -1837
                  slt          a4, a1, tp
                  bltu         s2, a1, 607f
                  bne          t5, tp, 611f
                  bltu         t4, s0, 619f
                  ori          s0, a6, -896
607:              and          t6, s11, s3
608:              ori          zero, t0, -1032
                  ori          gp, a5, -105
                  slli         t2, a4, 3
611:              srl          t0, a4, s1
                  and          s10, a5, tp
                  srli         zero, t3, 12
                  lui          s6, 191918
                  addi         s9, t3, 242
                  bgeu         t3, sp, 626f
                  sra          s2, t4, a3
                  add          s8, s9, s10
619:              slt          s1, a0, a2
                  sra          s10, a1, tp
                  xori         a4, s5, 1696
                  beq          a3, a1, 633f
                  slli         a1, t4, 22
                  slli         t5, t1, 17
                  blt          s2, a1, 633f
626:              slli         s9, a1, 2
                  srli         a4, a0, 18
                  sra          t3, s3, s4
                  srli         t0, s6, 10
                  sra          ra, t1, a3
                  or           s11, s11, s10
                  bgeu         a0, t5, 633f
633:              sra          s8, s9, sp
                  lw           t1, 4(a0)
                  andi         s8, ra, -169
                  andi         s8, a2, -494
                  addi         a0, a0, 12
                  slti         t3, zero, -785
                  nop
864:              addi x11, x6, 0
864:              jalr x11, x11, 0
sub_3:            lui          t6, 311161
                  addi         a0, a0, -28
                  xori         a5, a1, -1783
                  sll          t6, t6, s5
                  or           s3, t1, t0
                  sltiu        ra, gp, 1026
                  ori          s5, t4, 267
                  sw           t1, 4(a0)
                  and          s11, t2, s2
                  la           t2, region_1+1304 #start riscv_load_store_rand_instr_stream_6
                  sll          tp, zero, s2
                  slli         a5, s8, 16
                  lbu          a3, 0(t2)
                  andi         ra, t0, -1611
                  auipc        a3, 602850
                  xor          s1, zero, a0
                  sltiu        s2, t3, -384
                  sll          tp, s7, s0
                  srl          t5, s1, s4
                  sw           s10, 4(t2)
                  sub          t6, a6, s4
                  sll          s1, sp, a7
                  or           a4, a0, tp
                  ori          t1, a1, 1747
                  lui          s2, 865064
                  sh           s1, 10(t2)
                  lbu          s9, 13(t2)
                  lb           t5, 1(t2)
                  sh           s8, -8(t2)
                  sb           s1, 5(t2)
                  sb           s4, -4(t2)
                  lb           t6, -12(t2)
                  or           tp, a0, a5
                  lui          s7, 178388
                  and          a1, s10, a4
                  sra          sp, s1, tp
                  auipc        s8, 679506
                  slli         s8, s5, 17
                  srai         s8, zero, 1
                  lui          s6, 361822
                  lbu          s5, -1(t2)
                  srai         s5, a7, 20
                  lb           a5, 5(t2)
                  lbu          t5, 13(t2)
                  lbu          s5, 11(t2)
                  lh           s5, -10(t2)
                  srl          s2, tp, a0
                  srai         zero, t3, 10
                  sb           a4, -5(t2)
                  lbu          s11, -3(t2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+233 #start riscv_load_store_rand_instr_stream_0
                  ori          t5, t5, -402
                  sb           s8, -1(sp)
                  sb           t4, 12(sp)
                  sra          a4, s7, s4
                  sltiu        s1, gp, -1747
                  add          t4, s6, t1
                  lb           s7, 0(sp)
                  lbu          s0, -9(sp)
                  slt          s3, s5, s11
                  sb           sp, 6(sp)
                  lbu          gp, 7(sp)
                  sb           t1, 0(sp)
                  and          a1, gp, s5
                  lb           s5, 12(sp)
                  lbu          a5, 0(sp)
                  sw           t6, -9(sp)
                  srli         a5, t3, 16
                  srli         t5, a1, 12
                  sb           s4, -6(sp)
                  xor          s1, s11, sp
                  sll          a3, a2, a5
                  lbu          s1, 5(sp)
                  lbu          a7, -8(sp)
                  slti         s5, tp, 935
                  sll          s11, s11, s9
                  lb           ra, -2(sp)
                  sb           s8, -12(sp)
                  sltiu        t4, s4, -1324
                  sb           t4, -13(sp)
                  lbu          s6, 8(sp)
                  sb           a5, -10(sp)
                  and          zero, gp, s9
                  lbu          s5, 4(sp)
                  slti         s9, sp, -1463
                  lbu          zero, 8(sp)
                  lb           s2, -9(sp)
                  lbu          tp, -7(sp)
                  lbu          a4, 15(sp)
                  xori         s0, a7, -1816
                  slli         t1, gp, 26
                  lh           s4, 13(sp)
                  slti         s4, s4, -1789
                  sw           t3, 3(sp)
                  srai         a5, t3, 23
                  add          a7, t2, a1
                  andi         a7, s10, 1083
                  xor          t2, t3, s0
                  sb           a5, 6(sp)
                  lui          s10, 574948
                  xor          s6, s3, zero
                  nop
                  lbu          t2, -3(sp)
                  lw           s11, -1(sp)
                  sra          a5, s7, gp
                  srai         a4, a2, 23
                  lbu          s4, -7(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_0+1628 #start riscv_load_store_rand_instr_stream_1
                  lb           t0, 39(t6)
                  sltu         t1, s4, t3
                  lui          ra, 567272
                  lhu          t4, -64(t6)
                  auipc        t5, 557712
                  lhu          s10, -8(t6)
                  addi         s7, s11, 1844
                  lhu          a5, -54(t6)
                  lb           a4, -31(t6)
                  sb           s7, -61(t6)
                  xori         s4, a4, -1068
                  sub          t1, s3, tp
                  srli         t0, s6, 17
                  lbu          s6, 1(t6)
                  sb           s7, -16(t6)
                  andi         t2, s6, 1856
                  lui          a7, 650016
                  srai         s2, s2, 1
                  addi         s10, a1, -529
                  lbu          tp, -41(t6)
                  xor          s4, t6, t5
                  sb           s10, 39(t6)
                  lb           t3, 33(t6)
                  lhu          s5, -2(t6)
                  lw           s10, 20(t6)
                  srli         a4, s0, 16
                  sltiu        t1, s7, 380
                  lb           a4, 10(t6) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_0+1802 #start riscv_load_store_rand_instr_stream_3
                  lbu          a4, -1(t4)
                  lw           s4, 6(t4)
                  andi         tp, s1, 587
                  nop
                  lb           s3, 36(t4)
                  or           s7, s4, s3
                  add          a1, s5, s5
                  or           a7, a6, a3
                  ori          t2, s9, 1237
                  lb           s7, -39(t4)
                  addi         t5, s8, 1743
                  slt          t3, t6, t3
                  nop
                  sh           a5, 56(t4)
                  addi         s7, a4, -1104
                  lb           s11, 50(t4)
                  lb           t5, -27(t4)
                  and          s2, a6, a1
                  and          t2, a0, s10
                  sb           s1, -39(t4)
                  slli         t2, s11, 25
                  lb           s3, 19(t4)
                  and          a5, t4, t6
                  srl          a5, t6, s7
                  sb           t4, 13(t4)
                  lw           s10, -18(t4)
                  sb           a6, -39(t4)
                  sll          s7, t3, a6
                  lhu          s11, 44(t4)
                  addi         s7, a1, -925
                  sb           sp, 3(t4)
                  lh           a5, 58(t4)
                  lb           s4, -27(t4)
                  lhu          t0, -30(t4)
                  srl          tp, s9, sp
                  lbu          ra, -47(t4)
                  auipc        t3, 936168
                  lhu          t3, 2(t4) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_1+169 #start riscv_load_store_rand_instr_stream_2
                  sb           a3, -12(gp)
                  lbu          ra, -40(gp)
                  or           s2, s5, a7
                  lbu          ra, -52(gp)
                  srl          s3, a0, t2
                  addi         s7, s2, -739
                  slli         s4, s0, 7
                  ori          a4, a1, 1988
                  lbu          s0, -26(gp)
                  sb           s2, 50(gp)
                  lhu          t0, -7(gp)
                  xor          s2, t6, a0
                  srl          s2, a4, s5
                  sub          a4, a6, s4
                  lb           a5, 5(gp)
                  lui          s3, 307134
                  sw           s11, 63(gp)
                  slli         s0, sp, 20
                  lbu          s5, -61(gp)
                  sra          s4, s10, s10
                  lb           t4, -62(gp)
                  sra          t1, a2, a5
                  nop
                  andi         ra, sp, 524
                  or           t4, zero, t4
                  or           zero, s11, s11
                  lbu          s1, 15(gp)
                  lb           s6, -30(gp)
                  srai         s8, s7, 15
                  lh           s3, 45(gp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+441 #start riscv_load_store_rand_instr_stream_4
                  lb           a5, 0(sp)
                  auipc        s3, 249878
                  and          s3, t6, a1
                  lbu          a5, 12(sp)
                  srli         zero, s7, 31
                  addi         gp, sp, -1708
                  nop
                  slti         t3, s1, -1807
                  lb           zero, 11(sp)
                  lw           t0, -5(sp)
                  lbu          t2, -5(sp)
                  addi         a7, t6, -1460
                  sll          a3, a0, zero
                  or           s10, a0, s1
                  lhu          t6, 9(sp)
                  add          s4, a6, gp
                  srli         a4, a3, 6
                  sh           s7, -5(sp)
                  or           s2, gp, s5
                  lbu          a3, 2(sp)
                  sra          s7, s5, t6
                  sw           s3, -1(sp)
                  slt          a5, a0, a0
                  srl          s1, s10, t1
                  sltu         t3, s2, t5
                  lb           s1, -7(sp)
                  lui          t3, 224646
                  lb           t5, -8(sp)
                  sh           a1, -13(sp) #end riscv_load_store_rand_instr_stream_4
                  srl          t2, s11, a1
                  auipc        t5, 969630
                  slt          zero, zero, t4
                  and          t5, a0, a2
                  or           s8, s1, zero
                  srl          s9, a6, s8
                  blt          t4, t0, 17f
                  andi         s8, t0, 1558
                  lui          a5, 127917
                  andi         s2, s5, 1692
                  bgeu         a4, a5, 15f
                  beq          t5, a3, 13f
                  addi         t3, s1, 460
13:               srli         t3, a0, 5
                  slti         a7, t4, -695
15:               beq          t0, tp, 31f
                  xor          s7, s7, a7
17:               xori         s8, s8, -1391
                  ori          s8, s3, -338
                  beq          s3, s11, 24f
                  sltiu        s0, t3, -854
                  xor          s9, a3, s3
                  bltu         s0, s7, 41f
                  beq          t5, t5, 36f
24:               bgeu         sp, sp, 41f
                  auipc        a7, 549709
                  slt          a7, s1, a5
                  sra          t1, t0, t0
                  sub          gp, s5, t1
                  addi         gp, t2, -1444
                  sltiu        a3, s10, -834
31:               nop
                  bne          s1, a5, 47f
                  blt          s1, gp, 35f
                  ori          t2, s7, -1281
35:               or           s11, t3, a1
36:               blt          s2, t5, 41f
                  addi         s1, t6, -213
                  bne          a0, t0, 42f
                  blt          s8, sp, 52f
                  slli         gp, gp, 22
41:               sll          gp, a3, s10
42:               srai         t0, t4, 19
                  ori          zero, t5, 1433
                  srl          s11, s4, a1
                  slli         a5, zero, 12
                  ori          a7, s1, 472
47:               add          s1, t1, t2
                  xori         ra, s7, 529
                  and          s11, ra, s3
                  auipc        zero, 587415
                  lui          s0, 627289
52:               lui          s2, 926482
                  addi         s2, a0, 909
                  srl          s8, zero, s2
                  slti         s0, t4, 685
                  bltu         s2, a5, 73f
                  andi         s9, t6, 642
                  bne          s3, gp, 63f
                  xor          s1, s2, t1
                  addi         s10, a4, 36
                  and          s9, t3, tp
                  ori          s5, gp, 521
63:               xori         t5, a7, 1126
                  sltu         s10, t0, t1
                  bgeu         ra, gp, 81f
                  bgeu         s9, t2, 75f
                  srl          s9, s7, a1
                  bge          a0, t0, 80f
                  xor          tp, sp, a2
                  bne          ra, a0, 83f
                  add          a7, t4, t4
                  sra          a7, s2, s1
73:               srai         s3, s1, 14
                  srli         s11, s0, 18
75:               sltu         t5, t0, s1
                  srli         a5, a2, 4
                  beq          s7, s0, 90f
                  srai         sp, s3, 8
                  addi         t0, a3, 430
80:               nop
81:               add          a5, a3, ra
                  addi         a1, a0, -283
83:               andi         a7, t5, -260
                  beq          t2, s9, 87f
                  auipc        s5, 284444
                  auipc        s5, 107709
87:               bgeu         s5, s6, 101f
                  xor          t5, s4, s6
                  andi         ra, ra, 1464
90:               bge          t3, t1, 104f
                  andi         t5, s8, 1185
                  srl          ra, s1, s5
                  sltiu        t0, a0, 744
                  blt          ra, s4, 101f
                  or           s7, zero, t6
                  slt          s5, s6, tp
                  blt          s5, t5, 103f
                  srl          gp, a7, t4
                  bltu         a5, a7, 109f
                  nop
101:              bge          t5, tp, 106f
                  andi         sp, t6, -555
103:              blt          s0, t2, 123f
104:              auipc        t3, 922235
                  slti         a5, s0, 1560
106:              slli         s4, a0, 16
                  bgeu         s9, t3, 108f
108:              bge          gp, t1, 121f
109:              add          zero, a6, a4
                  sll          a3, s0, a1
                  nop
                  bne          t5, a2, 132f
                  slli         s5, a7, 18
                  beq          a7, a1, 127f
                  lui          t5, 931207
                  xori         t1, a6, 1775
                  sltu         s6, a4, a2
                  bge          s10, t3, 125f
                  beq          t1, zero, 123f
                  ori          t2, s7, 151
121:              bne          ra, a1, 123f
                  srl          t1, gp, s11
123:              ori          s10, t3, 1852
                  or           s11, a0, a4
125:              lui          zero, 332703
                  xor          sp, t6, s5
127:              sub          s11, s0, s9
                  bltu         s10, s10, 133f
                  slli         a3, sp, 16
                  srl          t5, t1, s6
                  bgeu         t1, t1, 141f
132:              ori          t3, t1, 1393
133:              srai         t3, s3, 8
                  xori         s3, s8, -1467
                  slli         a7, s7, 16
                  addi         t6, a5, -1955
                  slt          a5, zero, a2
                  and          tp, a4, ra
                  ori          s7, s10, -582
                  or           s4, s4, s11
141:              or           gp, t0, zero
                  lui          a4, 250859
                  bge          s3, s4, 159f
                  slti         t3, a4, -941
                  auipc        s10, 267795
                  blt          tp, t1, 152f
                  slt          a3, a3, t2
                  or           t1, s7, a1
                  blt          s0, t5, 151f
                  blt          ra, a5, 163f
151:              addi         a3, s5, -1820
152:              slt          s10, sp, s2
                  or           s4, a6, t2
                  slti         s2, s0, 774
                  addi         s10, t1, -314
                  srai         s3, s6, 11
                  add          s10, a7, s2
                  srli         s4, s8, 9
159:              srai         s9, a5, 19
                  srai         s2, s11, 10
                  sltiu        t5, s0, 1622
                  bne          s0, t2, 175f
163:              srl          s0, s3, t4
                  lui          s5, 587684
                  auipc        ra, 367095
                  ori          t0, a3, 1077
                  ori          s5, t5, -28
                  sltu         a7, a6, a6
                  bge          s9, t2, 170f
170:              srl          s8, zero, t1
                  bgeu         a6, t1, 176f
                  sll          s4, a5, s0
                  bltu         sp, s1, 187f
                  sll          s8, a3, a4
175:              xor          s1, s0, a2
176:              bge          a1, s6, 181f
                  sra          s5, s8, s7
                  addi         a4, s7, -1023
                  bgeu         s1, s8, 184f
                  add          s6, s6, sp
181:              srai         s10, gp, 2
                  auipc        ra, 680217
                  or           tp, s11, s1
184:              bne          a3, tp, 189f
                  and          s8, a0, s6
                  auipc        sp, 12670
187:              sra          t3, a5, s4
                  andi         ra, a4, 1507
189:              bge          t6, s10, 198f
                  bne          s5, t6, 203f
                  add          s9, s6, t1
                  or           s3, zero, a2
                  add          s7, a4, s6
                  ori          s3, s4, 774
                  ori          a3, sp, -1368
                  bltu         a7, s6, 213f
                  srli         s1, s10, 4
198:              sll          a5, s0, s8
                  bge          s8, sp, 218f
                  auipc        s4, 178724
                  bne          a4, s11, 214f
                  auipc        s11, 309823
203:              sub          s4, a6, s7
                  nop
                  bgeu         a6, a0, 222f
                  slt          sp, zero, s3
                  srli         ra, s9, 21
                  srai         zero, a1, 8
                  blt          t6, a3, 225f
                  bgeu         s3, s1, 221f
                  add          sp, t2, s2
                  slt          a3, a0, a5
213:              bne          a3, t4, 216f
214:              bltu         s2, s1, 229f
                  srli         a3, s3, 16
216:              nop
                  blt          a6, s4, 231f
218:              srl          s9, s7, ra
                  or           t5, s9, s3
                  srai         s9, t2, 8
221:              ori          a1, t0, 1215
222:              ori          s1, s8, 1753
                  nop
                  slli         t2, a6, 7
225:              srl          s6, a5, a6
                  bne          t2, a0, 238f
                  xori         t6, s9, 1023
                  bgeu         s3, s6, 241f
229:              add          t1, s9, t5
                  beq          s4, a7, 231f
231:              bne          s11, t3, 236f
                  sra          s6, zero, s10
                  addi         t6, a4, -1745
                  bge          s3, s9, 247f
                  bne          t3, t6, 238f
236:              srl          s7, a4, ra
                  beq          s5, t2, 243f
238:              beq          t2, a6, 252f
                  bgeu         t0, a3, 244f
                  sltu         s8, a5, s2
241:              srai         tp, a5, 9
                  sra          a3, s10, s7
243:              andi         s8, t6, -620
244:              nop
                  beq          zero, s9, 254f
                  ori          t5, a5, -1807
                  sll          s5, zero, t3
                  add          s10, t0, s3
                  or           t0, a4, s2
                  ori          a7, zero, 701
                  sltiu        zero, t3, -692
                  slti         s11, s10, 150
                  or           ra, t5, sp
                  auipc        a5, 893860
                  slt          ra, s4, s1
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  xor          s7, t0, s3
247:              ori          zero, s10, 1047
                  sub          gp, t2, s7
                  bltu         a3, s11, 260f
                  andi         s9, t1, -1385
                  sub          a4, s10, t1
252:              bltu         s1, a0, 269f
                  xor          s0, a4, s10
254:              srl          a4, t1, s0
                  nop
                  slti         t4, sp, -37
                  blt          gp, a6, 262f
                  beq          s6, gp, 274f
                  andi         s4, a0, -582
260:              srli         s11, s9, 2
                  bne          t0, s3, 276f
262:              blt          s6, gp, 267f
                  addi         t4, t6, 1502
                  andi         t2, t5, -1984
                  slti         s8, a0, -1964
                  bgeu         a2, t3, 285f
267:              bgeu         t2, s0, 271f
                  beq          t6, tp, 280f
269:              bge          t0, a1, 271f
                  addi         t1, a4, -1196
271:              bne          tp, t6, 284f
                  slli         s4, a4, 14
                  ori          s9, zero, 484
274:              bgeu         s11, s7, 291f
                  blt          gp, a5, 288f
276:              slt          t6, t5, s6
                  bge          ra, ra, 290f
                  slt          s5, s5, s11
                  and          t3, s3, s5
280:              bne          a7, s2, 294f
                  beq          a7, t6, 283f
                  srl          s1, s2, ra
283:              slti         s9, t6, 1194
284:              xori         a4, s5, 1320
285:              bgeu         t0, s10, 305f
                  xor          a4, s7, t5
                  sltu         a4, s10, s0
288:              bgeu         s9, s0, 295f
                  beq          a7, a1, 305f
290:              blt          a5, a4, 295f
291:              srai         a3, s8, 26
                  blt          s7, t4, 302f
                  srl          t1, gp, a7
294:              addi         t1, s9, -449
295:              beq          ra, ra, 309f
                  xor          s1, gp, a1
                  xori         s4, ra, -74
                  addi         sp, s7, -613
                  slli         a4, s7, 0
                  and          sp, s3, a0
                  srl          t1, a7, s10
302:              sltiu        ra, s8, -1114
                  bge          ra, s9, 316f
                  sltu         s2, zero, a7
305:              xori         s0, t2, -650
                  addi         s11, a1, 1346
                  bltu         s4, tp, 318f
                  sra          s9, ra, s3
309:              sltu         a4, s8, s4
                  sltiu        a1, s0, -51
                  slli         a1, s10, 15
                  slt          s8, a3, t4
                  slli         s6, s8, 13
                  nop
                  slti         s5, a0, 817
316:              slti         t5, s1, -340
                  srai         s1, a4, 28
318:              slti         t1, s11, 125
                  bne          s2, s10, 326f
                  blt          t0, a6, 329f
                  srai         a4, s10, 2
                  blt          s7, s8, 327f
                  slti         t1, t6, -186
                  bgeu         t1, zero, 337f
                  sub          t4, a2, a6
326:              ori          t0, t0, -609
327:              sltiu        s5, s3, -177
                  beq          a1, s4, 341f
329:              bgeu         a2, s5, 345f
                  bge          s5, s10, 335f
                  bgeu         a1, a4, 347f
                  sltiu        s11, t2, 1846
                  auipc        s8, 435318
                  sra          s3, s3, s10
335:              sltiu        a1, a4, 1018
                  bltu         gp, a2, 339f
337:              srl          s2, s4, a3
                  andi         ra, s9, -567
339:              slli         s0, a5, 24
                  slti         a7, a4, 1480
341:              xor          t6, a3, a6
                  or           s1, t6, a5
                  slli         tp, s5, 19
                  sltiu        zero, s0, -1246
345:              slt          s9, s9, ra
                  andi         s11, a4, -1208
347:              srl          s0, t0, s4
                  sra          a7, tp, zero
                  beq          a1, a7, 364f
                  sll          s7, a1, s1
                  sll          t5, gp, t4
                  nop
                  bge          t6, a4, 355f
                  nop
355:              addi         s0, t4, 924
                  srl          a3, s10, t6
                  sub          s7, s1, a7
                  lui          s5, 965809
                  lui          s10, 604452
                  sltu         s2, a7, a0
                  bgeu         s10, t6, 378f
                  sltu         s0, t5, t5
                  sll          s0, sp, t6
                  la           s5, sub_4
                  sltiu        s4, s4, -1137
                  nop
                  addi         s5, s5, 271
                  srai         a5, t3, 4
                  slti         a5, t0, -762
                  lui          a5, 625638
sub_3_j6:         jalr         t1, s5, -271 #jump sub_3 -> sub_4
364:              slli         s3, t2, 29
                  srl          t1, s0, a5
                  bne          tp, a6, 371f
                  srli         t6, s11, 15
                  bgeu         gp, s3, 385f
                  or           s11, t3, s7
                  sub          s4, s9, s6
371:              sra          zero, t2, a2
                  add          s0, zero, tp
                  sltiu        s0, gp, -754
                  sll          s6, t5, zero
                  or           t0, s7, a5
                  bltu         s1, a5, 395f
                  or           a4, a6, t6
378:              or           zero, s5, t2
                  slt          t0, a4, a0
                  auipc        t1, 328742
                  nop
                  ori          s0, zero, -1821
                  nop
                  srl          s2, a7, sp
385:              srai         sp, a6, 1
                  andi         t6, a4, 1496
                  srai         s8, s0, 4
                  lui          t6, 385401
                  bge          t3, t3, 394f
                  slti         s0, ra, 2001
                  sra          sp, t1, gp
                  addi         s2, s10, 851
                  blt          s10, zero, 406f
394:              lui          t5, 263127
395:              sll          tp, s6, t4
                  add          s3, s0, t1
                  xor          t4, t2, s0
                  bltu         s6, a2, 408f
                  sll          gp, zero, ra
                  xori         zero, s3, 1881
                  sra          s7, ra, a7
                  bge          sp, s9, 415f
                  addi         s11, a5, -1192
                  slt          s6, s6, s2
                  xori         a4, s8, 1894
406:              sltu         s3, t1, t4
                  srai         a3, a1, 31
408:              srli         zero, t0, 23
                  sltiu        t0, s4, 47
                  xori         a1, zero, 352
                  srai         a3, s6, 20
                  bgeu         t1, tp, 413f
413:              lui          s4, 927674
                  and          tp, zero, s6
415:              andi         gp, t2, 458
                  xor          t3, t5, s0
                  bne          a5, gp, 421f
                  addi         s10, s7, -312
                  slti         s7, s5, 548
                  lui          s3, 314564
421:              sltu         t3, sp, t2
                  lui          t6, 480278
                  and          tp, s6, a6
                  slti         s8, a1, -686
                  la           s7, region_0+1375 #start riscv_load_store_rand_instr_stream_5
                  sw           a7, 53(s7)
                  lbu          t3, 79(s7)
                  andi         t5, sp, 2036
                  lui          s2, 45149
                  lhu          s9, -37(s7)
                  lw           s11, -27(s7)
                  ori          sp, zero, 1785
                  sub          s9, s2, t1
                  sltu         a1, a1, s11
                  lb           t6, 136(s7)
                  ori          sp, zero, 2037
                  nop
                  slti         t5, t0, 175
                  sb           s8, -40(s7)
                  xor          s2, a1, s2
                  slt          zero, s2, a5
                  lb           t6, 125(s7)
                  add          ra, a6, a7
                  lhu          t2, 99(s7)
                  slli         t5, s2, 28
                  and          s5, a0, t2
                  and          s11, s5, a5
                  slli         s2, s3, 2
                  xor          ra, a5, t6
                  lb           gp, -62(s7)
                  xori         a4, s5, 291
                  lb           ra, -17(s7)
                  lb           a5, 20(s7) #end riscv_load_store_rand_instr_stream_5
                  or           t1, a0, a0
                  andi         s2, s11, -1865
                  bge          sp, t2, 447f
                  xori         ra, s2, -1376
                  srli         s7, s7, 22
                  sra          t6, s7, s7
                  sra          s3, a1, a2
                  sll          tp, zero, s2
                  auipc        a7, 550604
                  srl          t3, a7, a6
                  sra          s6, s3, tp
                  slti         s4, s9, 660
                  sll          s8, s2, sp
                  sra          s7, s9, t1
                  bgeu         t3, s4, 445f
                  slt          a5, s3, a1
                  lui          s6, 174250
                  sll          s0, ra, s6
                  ori          ra, a7, -858
                  sltu         t5, s7, t4
445:              beq          s7, s5, 450f
                  beq          a5, t4, 448f
447:              or           a4, s6, t6
448:              blt          a6, s8, 462f
                  sltu         s2, tp, a0
450:              nop
                  andi         s3, a1, -1471
                  xori         t5, t6, 97
                  srl          s6, ra, a0
                  xori         t6, s4, -1863
                  sra          s1, s11, t4
                  bge          s4, a4, 468f
                  or           a1, t3, s5
                  andi         gp, s1, -1813
                  sltiu        t6, a0, 1653
                  srl          t6, t6, s2
                  srl          a3, s9, a0
462:              sub          gp, a0, ra
                  ori          sp, a1, -1426
                  xor          s2, a0, t5
                  srai         s0, s11, 15
                  and          s10, s0, t1
                  lui          s8, 857022
                  slli         s11, tp, 7
sub_3_j8:         jal          t1, sub_4 #jump sub_3 -> sub_4
                  sra          s8, s1, t0
                  sll          s9, s2, t6
                  bne          sp, s4, 479f
                  sub          gp, a3, a0
468:              bge          a1, a5, 474f
                  sra          zero, a1, tp
                  sub          a1, t6, a0
                  bgeu         s11, s6, 478f
                  sltu         a4, a2, t5
                  andi         s4, a2, -1617
474:              beq          t3, a4, 479f
                  lui          s6, 269626
                  bne          t2, t3, 479f
                  srai         a5, s5, 13
478:              bgeu         a0, s8, 483f
479:              or           s3, gp, s6
                  bne          t6, a6, 493f
                  slli         s0, s8, 10
                  bne          t5, s11, 496f
483:              slt          t2, a3, a4
                  andi         s9, a1, 1016
                  bge          a4, t6, 487f
                  and          a3, zero, a1
487:              bne          t5, a3, 503f
                  addi         s4, t2, 1893
                  nop
                  xori         s3, s3, 588
                  sub          t1, s5, t1
                  addi         s1, s9, 1067
493:              add          t4, gp, t2
                  addi         s2, s6, -576
                  bgeu         s2, s9, 515f
496:              nop
                  srl          s9, sp, sp
                  sltiu        a4, a7, 656
                  srl          s11, s6, t0
                  add          s7, s4, s2
                  blt          s10, s11, 511f
                  sra          s0, s9, s1
503:              beq          gp, s2, 518f
                  srli         a7, sp, 29
                  srli         s7, t2, 21
                  nop
                  sub          s4, s10, t4
                  sub          s4, a1, a4
                  bne          s1, a6, 522f
                  beq          s7, a3, 524f
511:              xori         s1, s10, -895
                  sub          t2, a5, s2
                  bgeu         t2, a0, 517f
                  xor          gp, s4, gp
515:              srai         s10, a2, 5
                  and          t0, a4, ra
517:              sltu         ra, t5, t5
518:              sub          a3, t5, t5
                  lui          s5, 4163
                  sra          s2, a1, a6
                  lui          ra, 822148
522:              or           tp, a5, t6
                  slli         s10, t3, 24
524:              slt          t1, s0, sp
                  ori          t0, s10, -1945
                  sltu         a3, gp, t4
                  slli         s11, a6, 26
                  srl          zero, s0, t1
                  xor          a4, gp, s10
                  sra          s6, a5, ra
                  sra          gp, a0, a5
                  xor          t3, s5, s4
                  auipc        a7, 205733
                  auipc        s8, 331834
                  srl          a4, ra, s11
                  add          s7, s7, s9
                  andi         s9, t0, 1173
                  sra          t6, zero, s5
                  nop
                  sltiu        s0, a6, -279
                  srai         s6, a1, 7
                  lui          s2, 460152
                  sub          a1, s10, s1
                  and          s11, s8, s4
                  or           a5, s0, ra
                  and          s2, s9, t3
                  srai         t3, tp, 27
                  bgeu         s5, zero, 565f
                  srai         ra, s7, 12
                  slti         t4, s10, -1927
                  xori         t5, t1, -2
                  bgeu         s3, t5, 564f
                  sltiu        s7, s3, 483
                  addi         s5, t5, -762
                  sltu         t3, s2, a0
                  addi         s4, t2, -750
                  ori          s7, s9, 1567
                  beq          s11, t0, 577f
                  nop
                  slt          s4, a3, sp
                  bne          t4, s3, 572f
                  sll          s11, ra, ra
                  lui          t4, 154119
564:              auipc        a5, 130509
565:              or           s1, t1, a5
                  bge          s1, a2, 571f
                  bne          t2, t3, 568f
568:              auipc        s9, 377830
                  add          tp, t1, s1
                  bltu         zero, s5, 586f
571:              xori         t0, s11, 1622
572:              slti         zero, t3, -484
                  add          t2, a1, t2
                  srli         s4, t3, 20
                  auipc        tp, 467156
                  bgeu         s7, a4, 593f
577:              andi         s9, ra, -25
                  add          t2, a2, s7
                  add          s10, s2, s1
                  lui          tp, 539452
                  bltu         a0, tp, 590f
                  ori          sp, s11, -1328
                  slti         ra, a6, -1671
                  sub          t4, s2, a6
                  or           t4, s5, a0
586:              slt          s3, a2, tp
                  sub          t5, tp, s0
                  bltu         s0, zero, 593f
                  srl          s10, ra, t5
590:              nop
                  sll          s2, a5, tp
                  sra          s0, a0, s5
593:              beq          t3, a3, 598f
                  sltu         ra, s11, zero
                  and          s1, a0, a5
                  andi         sp, s7, -1416
                  slt          zero, sp, a5
598:              xor          t1, t1, s4
                  andi         a3, s7, 454
                  addi         a1, t5, -1126
                  srli         t0, s3, 18
                  xori         s5, a1, 9
                  nop
                  sltiu        s0, s4, 720
                  bgeu         s1, s3, 618f
                  bne          s2, s9, 608f
                  bne          sp, a0, 620f
608:              bge          s8, sp, 613f
                  bne          s11, sp, 613f
                  auipc        a1, 676007
                  srli         ra, tp, 29
                  slti         s1, s0, -1253
613:              bge          t3, sp, 629f
                  auipc        ra, 66958
                  ori          a3, s2, 60
                  slli         sp, t2, 10
                  bge          t0, s3, 622f
618:              xori         gp, s11, -455
                  slt          t6, s8, t5
620:              slt          a3, a3, sp
                  blt          a7, s11, 627f
622:              nop
                  sltiu        s11, t1, -1252
                  srai         s1, s4, 12
                  sll          a3, s0, zero
                  srai         t0, a5, 15
627:              slli         s7, sp, 9
                  bltu         s8, s0, 638f
629:              slt          s1, a5, a3
                  xori         s5, ra, 80
                  slt          s1, t5, s9
                  sra          s7, tp, s5
                  slli         t1, a2, 2
                  xor          s11, s7, a5
                  sub          t1, a6, s5
                  beq          a7, s1, 641f
                  sltiu        s3, a3, 1020
638:              slli         a1, t3, 20
                  add          s2, tp, ra
                  srli         s5, a7, 25
641:              beq          a5, t5, 654f
                  lui          s5, 894405
                  srl          s6, a5, t5
                  or           s6, s2, s1
                  slli         s10, ra, 17
                  xor          s7, s5, s7
                  sll          a4, a2, s3
                  bge          s7, s11, 668f
                  xori         ra, t2, -1809
                  beq          zero, sp, 666f
                  srl          sp, s0, t6
                  sub          t5, a5, s3
                  bgeu         t1, s3, 665f
654:              sra          t1, t5, t4
                  nop
                  and          a3, a0, a3
                  auipc        s3, 1015741
                  addi         t4, s5, -739
                  slti         gp, t3, 567
                  sltiu        t5, s7, -1931
                  ori          s9, a3, 927
                  lui          t2, 58887
                  ori          t5, sp, 1117
                  blt          t2, tp, 665f
665:              lui          a1, 785994
666:              sub          tp, s11, zero
                  srl          t5, t0, sp
668:              sll          t5, t4, a7
                  or           s5, s6, t5
                  andi         s2, a0, 964
                  srli         sp, s11, 6
                  sll          s10, s11, a7
                  bltu         a7, ra, 675f
                  blt          s6, t4, 687f
675:              sub          a3, a0, t6
                  sra          s3, s0, a4
                  slti         a3, s8, 1430
                  and          s0, s7, a6
                  beq          t3, tp, 686f
                  and          a3, s2, s3
                  srl          t0, t4, a1
                  auipc        t5, 308807
                  beq          tp, s3, 688f
                  sltiu        zero, a6, -1886
                  xori         gp, zero, -1186
686:              sub          s4, t3, ra
687:              bne          s5, t1, 704f
688:              sltu         a1, ra, s3
                  andi         t0, t6, -59
                  srai         s5, s2, 24
                  or           t2, sp, t4
                  slti         s4, t5, -1032
                  bge          a4, s8, 707f
                  sltu         a5, ra, t1
                  sltu         s5, s3, s3
                  sltu         t0, sp, a4
                  sra          t6, t1, s10
                  bltu         s7, s11, 703f
                  ori          t0, a0, -731
                  srai         s7, zero, 2
                  sra          a1, a1, tp
                  andi         s11, tp, -2044
703:              sub          t6, t3, s4
704:              auipc        a7, 696005
                  xor          t2, gp, a0
                  sltu         a1, s2, s4
707:              srai         s7, s5, 8
                  srai         s4, s2, 24
                  sub          t1, gp, s11
                  bne          t6, t5, 723f
                  slli         s3, zero, 29
                  slt          a5, t2, a0
                  slt          ra, s11, s0
                  slli         t2, s0, 24
                  bne          t3, s2, 717f
                  bgeu         s3, a3, 731f
717:              srl          s9, zero, s10
                  auipc        s10, 80380
                  add          t3, a0, a3
                  srai         t3, s5, 19
                  bge          t5, a6, 732f
                  srli         s11, a7, 31
723:              add          s6, s11, a5
                  bltu         sp, s5, 738f
                  bne          t3, a2, 738f
                  sltiu        s4, ra, -1064
                  srli         s6, s1, 21
                  lui          s2, 832869
                  sra          t1, s2, a3
                  bne          a4, s4, 747f
731:              andi         s6, s5, 496
732:              andi         s6, t4, -1267
                  lui          s5, 276955
                  xori         zero, a4, 836
                  sub          t2, zero, s8
                  srai         s6, t1, 15
                  or           t2, t4, s6
738:              and          s7, tp, a7
                  slli         s7, a3, 24
                  lui          s11, 544308
                  bge          a6, t0, 760f
                  add          s5, a7, a5
                  srli         s2, ra, 27
                  slli         tp, tp, 1
                  srl          sp, t3, s10
                  slt          a4, t1, s6
747:              bltu         s5, s4, 756f
                  xori         a3, t3, -1517
                  andi         s11, s9, -1704
                  beq          a0, tp, 753f
                  slli         s9, tp, 9
                  bge          a4, s9, 765f
753:              or           t2, s4, s10
                  bltu         a6, t0, 764f
                  andi         t4, t4, -928
756:              auipc        a1, 499608
                  bge          s6, s1, 758f
758:              nop
                  xori         t6, a6, 1849
760:              blt          a6, t2, 777f
                  bltu         s5, s8, 766f
                  bne          a5, s9, 775f
                  srli         sp, t6, 13
764:              add          s4, a1, a6
765:              andi         t5, a7, 914
766:              nop
                  xori         s7, gp, -784
                  slti         s7, a3, 1398
                  sub          s7, s5, t2
                  lui          s0, 441261
                  lui          t2, 163802
                  xori         s2, a4, -1425
                  srl          s0, t0, zero
                  lui          t6, 911714
775:              or           s7, t1, a7
                  bltu         s1, s2, 796f
777:              srl          s1, s6, ra
                  bgeu         s4, s1, 785f
                  bge          gp, t4, 781f
                  slti         s6, t4, -1473
781:              sll          ra, a2, zero
                  sltiu        a1, s7, -35
                  auipc        s10, 499774
                  beq          s10, s6, 789f
785:              slli         ra, s10, 12
                  sltiu        s0, a7, -70
                  srl          s2, a2, s0
                  sub          ra, tp, t5
789:              and          s5, t6, s7
                  sltu         ra, a5, a4
                  addi         ra, a2, -455
                  nop
                  bltu         s11, t5, 808f
                  sub          s3, a0, a7
                  xori         t3, s8, -660
796:              or           t2, zero, a6
                  srl          s4, s5, s8
                  lui          t3, 444918
                  srai         tp, s8, 24
                  blt          s10, ra, 814f
                  slti         a5, s2, -1080
                  srli         a3, a0, 19
                  ori          s1, a2, -948
                  nop
                  sltu         a5, a3, a5
                  srli         ra, s4, 29
                  or           s5, a0, a4
808:              bgeu         a7, s9, 814f
                  sub          s9, s10, a5
                  srli         a3, t6, 29
                  srai         s6, a1, 30
                  srl          s0, t0, s10
                  bne          s10, t6, 818f
814:              nop
                  sra          ra, a2, s0
                  srai         s0, t2, 7
                  slt          a5, ra, s1
818:              blt          a3, s11, 834f
                  bgeu         s0, tp, 832f
                  ori          s3, a2, 1956
                  auipc        a4, 359854
                  sra          t5, s7, s5
                  srl          t5, t1, tp
                  srai         sp, t6, 7
                  beq          a7, s9, 830f
                  sra          s9, t0, s5
                  xori         s9, t3, -1768
                  and          t5, s6, t6
                  slt          zero, s4, tp
830:              and          gp, s11, t5
                  sll          zero, ra, a1
832:              sra          s5, a1, gp
                  slti         gp, sp, -1140
834:              slli         s6, s4, 27
                  addi         a3, s7, -907
                  sltiu        t3, s0, -569
                  and          s4, s2, t5
                  sll          t4, a4, s8
                  slli         ra, t0, 3
                  bne          t4, s3, 851f
                  xori         t1, s6, -824
                  xori         a5, t2, -2010
                  sltiu        s6, s6, 229
                  auipc        s6, 748517
                  slli         s5, s5, 14
                  and          t2, s8, a5
                  nop
                  sra          a1, s3, ra
                  sra          s7, a0, a6
                  lui          s3, 486677
851:              sra          t4, s9, t4
                  addi         s1, gp, -1878
                  srai         s6, t4, 14
                  xori         s6, t4, 231
                  xor          t3, s11, t1
                  srl          s9, a7, a6
                  sub          t6, s2, sp
                  bne          s5, a6, 871f
                  beq          s1, ra, 862f
                  sll          t4, sp, a4
                  sub          s3, s0, s2
862:              srai         t3, t3, 8
                  sll          t3, ra, a6
                  srl          s11, ra, t6
                  blt          t2, t3, 884f
                  bltu         t5, ra, 879f
                  sll          ra, a7, s5
                  add          s8, s10, ra
                  slli         t1, s7, 30
                  andi         s6, s9, 647
871:              lui          s3, 466623
                  xori         s10, s9, -543
                  ori          s3, t6, -410
                  xori         t6, tp, -1436
                  xori         t6, s2, 717
                  nop
                  add          a5, a7, a1
                  and          s7, t1, sp
879:              slt          t0, zero, s11
                  auipc        s7, 836905
                  and          tp, sp, t2
                  sltu         s1, a5, s7
                  sra          s1, t5, ra
884:              bge          ra, s1, 886f
                  bltu         s7, t5, 887f
886:              slti         tp, a3, -497
887:              addi         t2, s0, -2022
                  lui          s8, 962799
                  sll          s7, s2, t3
                  lw           t1, 4(a0)
                  xori         s4, s5, 1969
                  srl          a5, tp, sp
                  xor          a4, s9, s10
                  addi         a0, a0, 28
                  ori          tp, t0, -914
                  ori          t6, a1, 1807
                  sub          s3, a7, t2
1188:             addi x25, x6, 1
1188:             jalr x25, x25, 0
sub_9:            bgeu         a2, t5, sub_9_stack_p
sub_9_stack_p:    addi         a0, a0, -32
                  sra          a4, s0, s9
                  sw           t1, 4(a0)
                  andi         a5, s9, 128
                  srli         t5, s10, 22
                  nop
                  la           t2, region_1+76 #start riscv_load_store_rand_instr_stream_3
                  sb           s6, 388(t2)
                  sb           t3, 3(t2)
                  sh           a4, 1854(t2)
                  lbu          s10, 745(t2)
                  lbu          t5, 857(t2)
                  lhu          tp, 1066(t2)
                  sb           t3, 135(t2)
                  sltu         s0, s7, s1
                  lhu          t6, 914(t2)
                  slt          s2, s5, t5
                  lb           s2, 1(t2)
                  sb           a0, 775(t2)
                  lhu          t3, 428(t2)
                  lw           s0, 1592(t2)
                  lbu          a1, 1575(t2)
                  addi         s3, s11, 859
                  andi         s8, a0, -981
                  nop
                  sltiu        s8, a4, 1517
                  lb           s2, -41(t2)
                  lbu          t1, -56(t2)
                  srai         a1, s5, 7
                  sb           t0, 1774(t2)
                  lbu          s6, 1008(t2)
                  lb           a7, 677(t2)
                  sb           s7, 151(t2)
                  lbu          t1, 180(t2)
                  sra          s6, a6, ra
                  sw           t2, 560(t2)
                  lb           s3, 1659(t2)
                  sh           a5, 360(t2)
                  lhu          sp, 906(t2)
                  lbu          s9, 626(t2)
                  lh           s7, 1106(t2)
                  lhu          t0, 1840(t2)
                  sll          t0, s10, s11
                  lb           s9, 1131(t2)
                  sll          t6, s8, s11
                  sb           a2, 1230(t2)
                  lh           a7, 1746(t2) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_1+1656 #start riscv_load_store_rand_instr_stream_2
                  sltiu        a3, s9, 562
                  lhu          a5, -52(tp)
                  sb           a1, -13(tp)
                  lh           s1, -50(tp)
                  slli         s4, t3, 27
                  or           a5, s10, a4
                  lui          ra, 1043643
                  lb           t4, 2(tp)
                  sb           t0, -38(tp)
                  lbu          t0, -58(tp)
                  lb           gp, 31(tp)
                  lhu          s2, -34(tp)
                  srai         s7, ra, 16
                  or           s11, a6, a7
                  lb           s2, -21(tp)
                  sh           t4, -16(tp)
                  lbu          s1, 59(tp)
                  lb           s6, -29(tp)
                  or           s1, a7, s11
                  lb           s5, 46(tp)
                  sltiu        gp, t1, 35
                  sltiu        t3, s10, 1973
                  sra          s1, tp, s8
                  ori          t0, tp, 1682
                  sb           s9, 9(tp)
                  auipc        s4, 118698
                  srli         s6, ra, 26
                  lbu          s8, -19(tp)
                  sb           t2, -31(tp) #end riscv_load_store_rand_instr_stream_2
                  slti         t6, s2, 384
                  bne          s6, ra, 10f
                  srai         s4, t3, 1
                  sll          t0, t1, s9
                  lui          s4, 965112
                  and          s11, a0, a3
                  sra          t2, a0, s0
                  addi         s6, t5, 284
                  bgeu         s5, t0, 14f
                  la           sp, region_0+528 #start riscv_load_store_rand_instr_stream_1
                  sb           s10, 87(sp)
                  ori          s7, sp, -1482
                  sltu         t5, s11, t6
                  lb           s5, -67(sp)
                  sb           s1, 146(sp)
                  or           s2, s9, s2
                  srli         s3, s5, 8
                  sh           a0, -248(sp)
                  lbu          ra, 254(sp)
                  sb           a3, 13(sp)
                  xor          a3, s2, a6
                  addi         t3, zero, 1071
                  or           s0, sp, a6
                  sh           t3, -116(sp)
                  lbu          s3, -91(sp)
                  sra          s10, a4, a2
                  lbu          s8, -49(sp)
                  lbu          s2, 59(sp)
                  lh           ra, -218(sp)
                  nop
                  lbu          s11, -83(sp)
                  ori          tp, s8, -837
                  lb           t1, 150(sp)
                  lbu          s9, 221(sp)
                  slli         tp, s4, 14
                  lbu          zero, -178(sp)
                  slti         s0, a7, -1114
                  sb           s10, -243(sp)
                  add          t0, sp, t2
                  lbu          s8, -111(sp)
                  sb           t1, 197(sp)
                  lb           ra, -145(sp)
                  sb           s10, 165(sp)
                  lui          s7, 196097
                  or           s7, t6, ra
                  sh           s5, 214(sp)
                  sb           s3, -132(sp)
                  lbu          s9, -249(sp) #end riscv_load_store_rand_instr_stream_1
                  or           s0, t0, s1
10:               slti         s3, a4, -1277
                  and          s1, zero, t4
                  or           s3, t6, s6
                  slti         tp, t3, -1455
14:               sltu         s7, a0, sp
                  addi         t4, a1, -722
                  sub          s3, s3, s11
                  sra          tp, a6, t5
                  beq          s2, a1, 29f
                  bne          a6, s5, 34f
                  blt          s1, a4, 24f
                  slli         gp, t4, 6
                  srli         t3, a6, 17
                  srai         t0, a2, 22
24:               auipc        t5, 797197
                  lui          zero, 599935
                  slli         s4, s3, 29
                  slli         ra, a1, 1
                  srli         zero, a6, 13
29:               ori          a1, t0, -1592
                  or           t2, s11, s10
                  bne          s3, s7, 33f
                  sltu         a7, t2, a2
33:               srli         gp, a5, 25
34:               bgeu         s7, s10, 49f
                  beq          t4, s0, 47f
                  srl          gp, gp, sp
                  slli         t0, a6, 3
                  bltu         a3, s6, 57f
                  sll          s7, s3, a2
                  add          sp, s0, zero
                  lui          t1, 327428
                  xor          s0, s2, a7
                  or           t1, s5, a2
                  sltiu        s11, s8, 1565
                  slli         a7, t1, 29
                  xori         s11, t6, 1691
47:               slti         s1, t3, -1849
                  sub          zero, a6, s3
49:               lui          t6, 827819
                  sltu         ra, a3, s4
                  beq          gp, s7, 57f
                  bltu         s4, sp, 54f
                  bne          sp, t3, 72f
54:               xori         zero, a0, -482
                  slt          s1, s0, s10
                  auipc        a3, 707515
57:               andi         ra, tp, -16
                  ori          zero, s7, -1269
                  bltu         t0, t0, 78f
                  sra          s6, a2, s8
                  auipc        tp, 999702
                  srai         s11, tp, 1
                  sub          a5, t0, a5
                  lui          ra, 982273
                  lui          sp, 544349
                  beq          sp, a1, 81f
                  srli         t6, s4, 20
                  addi         t2, a2, -1791
                  sltiu        s6, s6, -317
                  addi         s8, t4, 1526
                  and          t3, a6, gp
72:               bltu         t0, gp, 87f
                  bne          sp, s11, 90f
                  bge          gp, s0, 81f
                  andi         ra, s3, -1770
                  xori         t4, s2, 104
                  slli         t5, s8, 21
78:               sra          s3, a4, a4
                  slli         t0, tp, 8
                  sll          t3, a0, t6
81:               slt          a4, s0, t1
                  add          t3, t6, s10
                  lui          a7, 157570
                  sltu         t3, a2, tp
                  blt          t3, t4, 97f
                  andi         zero, t1, 1885
87:               addi         s6, s10, -1352
                  srai         s9, s2, 31
                  slli         s0, tp, 19
90:               add          s4, s2, ra
                  nop
                  bltu         s11, s5, 108f
                  ori          a3, zero, -941
                  auipc        t2, 541184
                  slti         t4, t0, 821
                  addi         s4, s11, -431
97:               xori         t3, s0, -326
                  bltu         a2, s9, 112f
                  sll          s10, a7, s11
                  bltu         t6, t5, 104f
                  sll          s10, sp, a4
                  slti         s10, a6, -1077
                  lui          a5, 103682
104:              andi         s11, a7, 2046
                  andi         s9, a7, -252
                  xori         a1, a2, -779
                  sltiu        s5, t3, -1708
108:              xori         a4, t1, 1054
                  srai         ra, t5, 21
                  sll          t6, s11, zero
                  or           s11, t3, t0
112:              sltiu        zero, s9, -1784
                  auipc        a4, 486645
                  slli         t1, tp, 19
                  srl          s1, t1, a4
                  sll          a7, zero, a7
                  lui          s10, 84633
                  addi         t5, a6, -773
                  xori         s10, s0, -223
                  bltu         t1, t0, 133f
                  nop
                  beq          tp, s8, 142f
                  srai         t2, t6, 16
                  xori         sp, s4, -901
                  srli         s10, s4, 18
                  xor          s0, s0, s5
                  nop
                  xor          sp, a7, a2
                  and          ra, s4, t4
                  nop
                  bgeu         a6, s4, 145f
                  addi         t3, s4, -1883
133:              blt          a7, tp, 135f
                  and          a7, s6, a2
135:              sltu         t3, s4, t3
                  nop
                  bne          s4, tp, 150f
                  xori         t6, s7, 951
                  srai         s6, s11, 4
                  and          t3, a6, a7
                  xor          a3, a4, sp
142:              auipc        a5, 986327
                  or           sp, a5, t0
                  xori         s9, a6, -120
145:              andi         t2, s6, -1572
                  andi         t2, a2, -332
                  sub          s0, a7, s8
                  srai         s3, zero, 29
                  bne          ra, s3, 157f
150:              slli         t4, s10, 9
                  bgeu         t5, a7, 165f
                  xor          s10, t2, a6
                  srl          s10, s1, zero
                  bgeu         a7, s1, 164f
                  xor          s3, s4, s7
                  andi         a3, sp, 827
157:              blt          s9, a0, 161f
                  nop
                  bltu         a4, a6, 174f
                  bltu         a3, s9, 179f
161:              xor          s6, s7, t0
                  bge          s2, t3, 164f
                  sltu         s2, t1, ra
164:              xori         s11, t3, 146
165:              auipc        a1, 518496
                  sub          t2, gp, t4
                  ori          a3, ra, 975
                  ori          s6, gp, -1652
                  ori          t4, t4, 778
                  bltu         s8, a3, 183f
                  srli         zero, t6, 11
                  nop
                  bltu         t6, a5, 188f
174:              bltu         a1, a6, 186f
                  addi         s10, t5, -273
                  lui          t6, 860763
                  sub          ra, s5, a7
                  bge          a2, a2, 187f
179:              bgeu         t0, a3, 194f
                  bge          s4, s4, 199f
                  blt          gp, s10, 193f
                  addi         a5, ra, 735
183:              andi         t0, t2, -1017
                  bltu         s8, s8, 190f
                  bne          t4, s4, 195f
186:              lui          t6, 283833
187:              beq          gp, s10, 191f
188:              lui          t6, 265453
                  bge          s11, a6, 193f
190:              xor          a5, t2, t1
191:              and          s9, s0, a2
                  slt          gp, t1, tp
193:              andi         a7, s2, -1338
194:              srai         s2, s0, 2
195:              bge          t2, a1, 209f
                  xor          t4, s11, s11
                  blt          s8, gp, 212f
                  srli         zero, s5, 17
199:              beq          a3, t4, 218f
                  slt          sp, sp, tp
                  sra          a3, t5, gp
                  la           sp, region_0+1244 #start riscv_load_store_rand_instr_stream_0
                  sh           t0, -76(sp)
                  andi         t3, s2, -1807
                  lb           s5, 133(sp)
                  srai         a7, s0, 17
                  srl          t0, a0, s6
                  andi         s11, tp, -1231
                  xori         zero, s6, -1239
                  lbu          s11, -193(sp)
                  ori          s7, s6, -1979
                  addi         s2, t2, 1229
                  auipc        s4, 529057
                  lb           t4, -99(sp)
                  auipc        s3, 565964
                  srl          s11, a5, t2
                  sll          a1, s8, s2
                  ori          s11, a3, -1329
                  lb           t0, 256(sp)
                  sb           a3, 23(sp)
                  sb           tp, 237(sp)
                  auipc        s4, 785331
                  lh           s2, -194(sp)
                  sh           s3, -178(sp)
                  lb           t4, -191(sp)
                  add          t4, a2, a6
                  sltu         s9, s4, s8
                  lbu          s9, 75(sp)
                  lbu          a7, -64(sp)
                  lh           t0, -108(sp)
                  sub          s5, t5, s10
                  sll          s10, s1, s3
                  lbu          s6, -114(sp)
                  andi         s9, s5, -1004
                  sltiu        t1, t3, 615
                  sh           s9, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         sp, zero, a2
                  srl          zero, a5, t6
                  slt          t0, s9, s6
                  sltu         s1, t6, sp
                  slti         s5, s1, 1349
                  bge          t3, s9, 218f
                  sll          s5, a0, s9
209:              bltu         a6, t0, 217f
                  and          t2, ra, a1
                  lui          t3, 677528
212:              addi         s4, t0, -683
                  blt          sp, a2, 227f
                  add          a4, s8, s10
                  sltiu        t1, s8, -1157
                  srai         s8, t0, 3
217:              auipc        a5, 840312
218:              ori          s1, t3, 726
                  bge          gp, gp, 225f
                  slt          a1, t2, ra
                  bge          s10, s7, 241f
                  srl          a7, s0, s7
                  bgeu         s2, zero, 240f
                  sra          s1, t2, t6
225:              xori         zero, gp, 1968
                  sra          s1, a5, s10
227:              bne          a2, gp, 229f
                  sll          sp, t6, t1
229:              blt          ra, s11, 236f
                  blt          s1, s4, 243f
                  slti         s8, s4, -837
                  slti         s7, s4, 1161
                  sltiu        s1, a7, -1094
                  slli         a1, a7, 24
                  lui          sp, 930370
236:              lui          ra, 260573
                  slt          s7, s3, s5
                  bne          s11, a7, 240f
                  sub          a4, sp, a4
240:              addi         s8, gp, 273
241:              srl          ra, sp, t4
                  sltu         s3, t6, s6
243:              bne          gp, s9, 257f
                  beq          a3, s9, 248f
                  srai         sp, a6, 10
                  sll          a1, s1, zero
                  nop
248:              or           t1, sp, s9
                  bne          a3, t3, 265f
                  sra          a1, a1, t1
                  bgeu         t1, s11, 268f
                  auipc        s8, 958040
                  sll          a3, t5, t6
                  auipc        tp, 365737
                  bltu         tp, a5, 269f
                  sll          t4, s6, t5
257:              ori          t4, t1, -215
                  sltu         t0, s0, s8
                  bne          s11, a2, 267f
                  add          ra, s6, a3
                  sra          t4, a5, a3
                  beq          tp, tp, 276f
                  andi         a7, a7, 1259
                  bge          s8, s11, 283f
265:              ori          t3, a0, -1734
                  and          s1, s4, t1
267:              slli         s6, s6, 8
268:              or           a4, s2, ra
269:              srl          s3, a4, s6
                  bne          t1, a6, 282f
                  bne          s5, s11, 285f
                  srai         t0, a4, 20
                  xor          t1, s10, tp
                  srl          t5, t0, sp
                  slti         tp, s10, 42
276:              nop
                  or           s10, a2, s4
                  beq          tp, s8, 282f
                  blt          s3, s10, 285f
                  blt          tp, zero, 299f
                  nop
282:              lui          t1, 243216
283:              slli         gp, s1, 31
                  or           s5, a5, s11
285:              add          a5, a6, s10
                  srl          s2, s1, a4
                  lui          t1, 345555
                  bltu         a7, s3, 290f
                  srli         s5, t4, 9
290:              and          s0, a1, ra
                  slti         t5, s11, 1710
                  xor          a5, s2, s11
                  bge          s6, s6, 303f
                  ori          a4, t6, 208
                  srli         sp, s9, 11
                  xori         s4, ra, 1982
                  slti         a5, ra, 1847
                  xori         t5, a2, -402
299:              srl          s2, a6, sp
                  srli         t6, t4, 26
                  or           s1, a2, t4
                  lui          s11, 61545
303:              bgeu         t3, t5, 310f
                  auipc        a1, 74781
                  sll          gp, a3, ra
                  sll          sp, t1, s4
                  and          ra, a7, a0
                  sra          t3, a1, t1
                  beq          t3, a3, 324f
310:              xor          a7, t6, zero
                  and          s8, s7, t1
                  addi         s10, s5, -1684
                  addi         t1, tp, 260
                  nop
                  xor          s6, s10, t3
                  slli         s6, s7, 18
                  bne          s10, s2, 321f
                  sub          zero, t1, a4
                  srl          a3, t0, s5
                  sll          t5, s7, t6
321:              add          ra, t3, a0
                  lui          gp, 805992
                  xori         s7, t3, -1025
324:              sub          sp, s5, s1
                  addi         a1, a3, 1410
                  beq          a3, zero, 339f
                  lui          sp, 178579
                  or           a3, s1, a7
                  addi         sp, t3, 771
                  add          t6, s8, a3
                  andi         t5, a1, 482
                  srli         t1, a2, 20
                  lui          s5, 517775
                  nop
                  sltiu        a7, a5, 388
                  add          t0, s4, a1
                  lui          s4, 46126
                  or           s8, t1, t2
339:              bgeu         a2, s10, 343f
                  andi         a4, s11, 595
                  and          gp, zero, s7
                  bltu         zero, s9, 344f
343:              slli         s6, s0, 8
344:              andi         ra, t5, -1267
                  add          t0, s9, t5
                  slli         s5, t2, 29
                  srl          t6, a6, s10
                  slti         tp, zero, 320
                  add          s2, a7, t2
                  slli         s7, t4, 13
                  slti         s9, t0, -395
                  addi         a3, s9, 1309
                  sra          t5, s3, s3
                  addi         s6, s8, 363
                  blt          s4, a7, 375f
                  slli         s7, a5, 13
                  add          s11, zero, gp
                  bne          s5, t2, 364f
                  or           t0, s4, a6
                  slt          a1, a2, tp
                  xor          a5, t6, t5
                  slt          gp, t2, t4
                  andi         s10, t5, -2004
364:              sll          s1, s1, t6
                  bltu         a3, t1, 374f
                  bgeu         s1, t4, 381f
                  ori          a4, s10, -1843
                  slti         zero, t1, 244
                  auipc        t6, 241844
                  slti         t3, s8, -1717
                  slt          s6, s6, a3
                  and          s9, sp, s4
                  xori         t4, s9, 512
374:              srai         a5, s6, 20
375:              or           s5, a7, zero
                  sltu         t5, a2, s4
                  slti         tp, s6, 1533
                  auipc        s8, 64017
                  srli         tp, sp, 25
                  xori         s3, a2, 1623
381:              srli         tp, s9, 31
                  sltiu        t1, s3, 1609
                  add          tp, s3, tp
                  addi         a1, t1, 899
                  ori          ra, s4, -1073
                  slt          a3, sp, a5
                  sra          s2, a1, a5
                  and          sp, sp, t1
                  srai         s0, tp, 21
                  blt          s5, s6, 405f
                  blt          ra, s6, 402f
                  blt          s2, gp, 407f
                  sub          a5, t4, t6
                  auipc        s5, 671905
                  auipc        a5, 86951
                  blt          s7, s10, 412f
                  slli         a1, s4, 23
                  auipc        a3, 117121
                  srai         t6, s5, 25
                  bne          s3, a6, 402f
                  srli         t3, s4, 14
402:              xor          a3, a1, t2
                  bne          s8, a3, 416f
                  srai         a4, t6, 6
405:              slli         gp, a4, 8
                  add          tp, s1, s2
407:              add          s6, t1, a7
                  blt          s5, s4, 427f
                  nop
                  sltiu        s0, s7, 651
                  slli         s0, t3, 23
412:              xori         s10, a0, -660
                  srl          ra, a3, t0
                  lui          ra, 40632
                  ori          s2, s8, 420
416:              xor          a5, a6, s8
                  ori          t1, zero, 1169
                  ori          a5, s10, 1826
                  sll          s11, t0, s7
                  slli         s4, t1, 29
                  srli         s10, s4, 17
                  nop
                  lui          ra, 407692
                  srl          s2, s1, tp
                  slti         s9, gp, 1728
                  bltu         s4, a0, 438f
427:              sltu         t4, t4, t0
                  slli         t2, s3, 9
                  bge          a2, a5, 433f
                  sub          t5, a5, t6
                  addi         t5, ra, 1052
                  ori          a3, a3, 1634
433:              slli         a4, a6, 26
                  addi         t3, a6, 1007
                  bge          s10, a3, 454f
                  blt          a5, a6, 450f
                  srl          gp, gp, t6
438:              sltu         s2, a3, tp
                  bne          gp, s11, 451f
                  auipc        s10, 674062
                  bne          s5, a5, 458f
                  srl          t0, sp, s9
                  srl          t3, zero, a0
                  sll          t3, zero, a0
                  slti         s11, zero, -1444
                  andi         s8, s2, -579
                  lui          s7, 247141
                  nop
                  bltu         t6, s10, 455f
450:              sltiu        tp, a0, -407
451:              or           t0, a1, a0
                  srai         s0, s6, 28
                  slti         s9, a3, -2006
454:              xor          a7, gp, t5
455:              bge          s2, a7, 471f
                  beq          s0, zero, 465f
                  lui          t4, 245316
458:              lui          s8, 194422
                  sub          s11, s11, a4
                  slti         a1, s6, -1350
                  sll          s0, t2, s0
                  blt          s7, t3, 475f
                  slli         s4, s0, 5
                  xori         s7, s10, 427
465:              bge          s7, s2, 480f
                  blt          a0, s8, 468f
                  slti         t3, sp, 1231
468:              bne          t6, a5, 481f
                  andi         s7, s3, -1612
                  sltu         t2, s0, t4
471:              bltu         s1, s5, 483f
                  slt          a4, s5, t3
                  blt          zero, t6, 481f
                  slli         a5, t5, 12
475:              or           a7, a1, a3
                  srl          t6, a5, s10
                  beq          a3, t4, 491f
                  srl          tp, t6, s0
                  add          s11, s3, t5
480:              or           s9, a7, tp
481:              lui          a5, 834879
                  bgeu         s3, s5, 497f
483:              addi         t3, s9, 1188
                  and          s2, s10, t2
                  ori          s2, s8, -1814
                  xor          t0, s7, gp
                  sra          s4, a5, s5
                  sltu         zero, s2, a0
                  beq          a3, s11, 508f
                  auipc        a3, 837730
491:              sub          s3, s5, t3
                  and          t2, a6, ra
                  srl          t2, t3, tp
                  bge          s6, s11, 505f
                  slti         a4, a0, 1581
                  add          a5, a6, s10
497:              or           s11, a4, t2
                  or           s4, s3, t3
                  srai         t2, tp, 24
                  andi         gp, t2, 2041
                  srl          a5, s5, s10
                  sub          t4, s0, s11
                  sra          s6, t1, t6
                  addi         sp, s5, 774
505:              sll          gp, s6, s1
                  slli         ra, t4, 9
                  bne          s5, s4, 523f
508:              sub          tp, a6, s10
                  sltu         s7, s3, s8
                  bltu         s9, a2, 523f
                  srl          a5, a5, s0
                  addi         sp, t0, 692
                  slti         t5, s11, -650
                  lui          tp, 108421
                  bgeu         s9, a6, 521f
                  sll          s1, t5, s3
                  or           ra, t1, a0
                  ori          tp, zero, -538
                  xor          s8, s7, s9
                  nop
521:              bgeu         s8, t4, 523f
                  sll          s1, t3, s8
523:              xori         s1, a1, -1806
                  slt          t3, t1, t2
                  auipc        s4, 373351
                  xor          s11, s5, ra
                  slt          s3, t5, zero
                  lw           t1, 4(a0)
                  slti         a7, a2, 1844
                  sltiu        a4, a7, 223
                  addi         s4, t3, 1517
                  sra          s6, s11, s3
                  addi         a0, a0, 32
                  and          zero, t6, s4
                  add          t2, ra, s7
688:              addi x17, x6, 0
688:              jalr x17, x17, 0
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
.word 0x405eea56, 0x71f86c82, 0x32a4d4eb, 0x5ec79862, 0x2506c8b5, 0x296a1b8d, 0x9d31341d, 0x29bc44c7
.word 0x0be7c703, 0x233f2caa, 0xa78d047d, 0xed293932, 0xa801abd2, 0x33ced67c, 0x6cdc4577, 0x7c4dfe1a
.word 0x06414fef, 0x94667614, 0x32edffd2, 0xec05357f, 0x51fdbe5a, 0xa0170283, 0x24b7b147, 0x6ef6fde2
.word 0xda418744, 0x56edbabc, 0xbe074093, 0xba9778f3, 0xaefb5e42, 0x4950219b, 0x7196c80f, 0x0e4f5496
.word 0x286afe7e, 0x458416c7, 0x7be06e7d, 0x7074b0bb, 0x8e11dad6, 0x34b957fc, 0x76f913ae, 0xf1b8eacb
.word 0xbd0ec6ec, 0xb774db1f, 0x7d15e89d, 0x7d04cfe7, 0x91071cf2, 0x6eebc588, 0x95c3f2fe, 0xbda3581b
.word 0x5f7ffd15, 0x64ad8350, 0x93d4d606, 0x392ede09, 0x8951195e, 0xf4dc5560, 0x78114732, 0x61933348
.word 0xefab79dc, 0x5faa2aac, 0x97fbba4f, 0xef6fb9f5, 0xdfb8aeea, 0x9e955ad1, 0xb5f6de0e, 0x4e74618c
.word 0x6ccc8c77, 0xfc633ae4, 0x872567e3, 0xf42cf6bf, 0xc929ac35, 0xf8aa59f0, 0xa294adfe, 0x91eb9a7e
.word 0x3bb677af, 0xa8a810b3, 0x6e3e8e50, 0x43fe35fe, 0x632ef696, 0x23bb5b60, 0x81f5a693, 0xdb7835dc
.word 0x5017204f, 0x37437e73, 0xbf02eee3, 0x65b9a6ba, 0xa6e737c6, 0x1984328f, 0x30eb5a74, 0xa1b3ad52
.word 0x733853da, 0x5635b45e, 0xf8c27223, 0x230fd0a6, 0xcf9dcf8b, 0x51229b25, 0xfe67617b, 0xd8058052
.word 0x76d743aa, 0xa70f1f08, 0x46ff4464, 0x94ea9d21, 0x8f87b6e2, 0x5a94f7a3, 0x03f275ac, 0x4d5be4a6
.word 0xb16e23bb, 0x16727b24, 0xe89e909e, 0x86bb8d21, 0xe73dcdfb, 0xc66de4d1, 0x73e02ebe, 0x90112702
.word 0x1a5a1d19, 0xda273d29, 0x3a8d1c9d, 0x08c72d14, 0x868d9f1f, 0xef02f82a, 0xcd3c2109, 0x8f292593
.word 0xa5b10f3d, 0xe597d5be, 0xc088176c, 0x925ee895, 0x8c694196, 0xce916f1f, 0x8d8d0093, 0x2e93ecae
.word 0x92fbf536, 0xd4abe620, 0xa3cd50da, 0x3456cffc, 0xd78836a5, 0x2c12ea69, 0xf5a84fcd, 0xf26310fe
.word 0xb0b09edb, 0xfd9a4311, 0xee7d4450, 0x99d9a250, 0xa9531e18, 0x4ebb5d71, 0xeac987bb, 0x18741296
.word 0x64d96cfe, 0x6d2e2c9a, 0x74f681ad, 0x6d69d23c, 0x4e8787c9, 0xa4f5e583, 0xc1e81fda, 0x70a48878
.word 0x3fa332e3, 0x49894566, 0x6c590c48, 0xbd079a1a, 0xeaa3d007, 0x94b141e5, 0x94eb64d9, 0x34bda3c6
.word 0x3d1ae83f, 0x35f2ecd7, 0xfd6de1da, 0x94b96d31, 0xb41e6d6a, 0xe49688be, 0x2f552130, 0x38ef551c
.word 0x7557319e, 0x0c6decf9, 0x00d8c258, 0x16ac5389, 0xd24aa361, 0xff325846, 0x4ca65209, 0x35bd61ae
.word 0xedb8f9e3, 0xa105d395, 0x5d478d4d, 0x3c9a99d5, 0xfa140251, 0x4ca27d64, 0xcfd9ea74, 0x3c3bce95
.word 0xf0a76596, 0xd3376e73, 0x926e7a30, 0x8f7fc4de, 0x5de7278a, 0x12818633, 0x3317589b, 0x26519a97
.word 0xe8fc78f7, 0xa5aa069d, 0xb21d0fac, 0xe494e36c, 0x18ddcc51, 0x914446e7, 0x0c5fcdda, 0x0cd25d4f
.word 0xd737c61f, 0xa6bd6959, 0xa6aaaace, 0xb674c8e3, 0x145c354e, 0x66df7ada, 0x74f62cb8, 0xb430ee20
.word 0xbe28aacb, 0x0d7b5c9d, 0xeda1da61, 0x0fe3d0e0, 0x156fc23b, 0x8132a27e, 0xe1e6463d, 0x7a235b21
.word 0xa753a788, 0x4f8074c5, 0x4aa5830e, 0xa868b95d, 0x83116f55, 0x119fdff5, 0x2ad23dfc, 0xc6422d6b
.word 0x5c49fed8, 0x45d92d79, 0x5ec76e86, 0x5a21f3d5, 0x8e7633ff, 0x35736897, 0xdad60270, 0x4032c82c
.word 0x6b16a2b7, 0x5a61e112, 0xe8148c5f, 0xfb78ec91, 0x075fc247, 0xe3ca6477, 0x3a5bae6f, 0x895ae8f8
.word 0xb7b7f1c6, 0xad9934ad, 0xc1b5756f, 0xe86f18a2, 0x9367fc93, 0xe446b2b9, 0x34865bc1, 0x9f254465
.word 0xdc9e6092, 0x409cb0ad, 0x4a4aee8c, 0x297ff822, 0x88c104a3, 0xa393a19f, 0xb2268f8d, 0xcee30e14
.word 0x716e916f, 0x7a1c3035, 0x1ac747a3, 0xb9df0fe7, 0x3b61c5ad, 0x17fdec7b, 0x884614fe, 0x7c014fcf
.word 0x24d5f4bb, 0xbcc2cb9c, 0x1ee12e49, 0xc5bce55c, 0x211c45da, 0x95024dd9, 0xcedd5827, 0xc9dfed6f
.word 0x6e36ba03, 0x7267ad6a, 0xc884a565, 0xdc9a182e, 0xef939cc5, 0x5d3224fb, 0x8322fcd5, 0x887c7ed0
.word 0x3723abeb, 0xf9fc8a83, 0x6764fd65, 0xb4707678, 0x06dd7244, 0xa00b4bb3, 0x13784218, 0xc5aa4555
.word 0x8c72fb39, 0x2216e040, 0x25c026f4, 0xe1edcc98, 0x7ac0ed14, 0xc679830f, 0x01cae16d, 0x5255a0cd
.word 0x4d52fd9f, 0x5a69c073, 0x5809d7b2, 0x31e546a8, 0x992ecaee, 0x2e9d0f30, 0xd1d3c3c2, 0x96543a82
.word 0x3b6e309e, 0x3788a671, 0x8f6a274c, 0xc71d6e1f, 0x838c507d, 0x246a43f7, 0x9e9eb63f, 0xbc32da01
.word 0xa6640640, 0x0262e0cb, 0x1cadbdf5, 0x68b1ca76, 0xd83cfdef, 0xbe5f52f9, 0x23aa5cbd, 0x388bd050
.word 0xae5ce7d5, 0xc27874be, 0xb4d8e4a1, 0x9be083c0, 0xd051065b, 0x9de2f06a, 0x230865dc, 0x902e6804
.word 0x95bd364d, 0x57af98fa, 0x9dfebe47, 0x7e56e40e, 0xaa37b85f, 0x0ee012d5, 0xe4076ce0, 0x77e73813
.word 0x13f53610, 0x13efb6f5, 0xf18cce0e, 0x3c794096, 0xc985fc62, 0x4f192b4c, 0xb61db6e5, 0x3a12ce83
.word 0x892fdf58, 0x3be99fe2, 0xe66925a8, 0x10a165f0, 0x2b6900db, 0xe0067280, 0x8a692580, 0xbe9657d8
.word 0xad76fe9d, 0x02cdf477, 0xa3419355, 0x2ccfaa6d, 0x38f6eadb, 0x69e8486c, 0x05c49079, 0x478495a3
.word 0x9a4cb3e8, 0xaf2829ff, 0xbd68babf, 0x7eb566c9, 0x178d6dae, 0x6817b74a, 0x9e6e78c2, 0xc4fe0ba9
.word 0x3113902b, 0x96b21868, 0xc67d5569, 0xef91a8d5, 0xaac3b05f, 0x4f1ed95b, 0xdbf28f35, 0x1314cf9a
.word 0x263e86cb, 0x77282854, 0x67f7da4f, 0x19562e9e, 0xdee18eaf, 0x3778d87d, 0x1aa6a168, 0x257d2a9b
.word 0x14dbb098, 0x202ef11d, 0x9055c055, 0xac105c24, 0x6791d1b2, 0x35d9671c, 0x5cdf501a, 0x41596d44
.word 0x1dc08b9b, 0x4e5108b8, 0xc99d3bab, 0xc513ba4d, 0xe1c31e8f, 0xd640bd07, 0x6422fa04, 0x521979d1
.word 0xe0ca4010, 0x896e926c, 0x44d7c91f, 0xe4900662, 0xa0736f54, 0x2e3bea3f, 0x695dd789, 0x97b2c0c8
.word 0x50e35aa3, 0xd19fda3b, 0x71db3a7d, 0x17c9724b, 0x31f7fd66, 0x89b21a35, 0xd7400388, 0x1437d75c
.word 0xb7cd8e49, 0xf28762d7, 0xb60d91a7, 0xd6dbb1aa, 0x53772f1f, 0x21854695, 0xef5aa697, 0xe31e1522
.word 0x8cae1fa6, 0xda62782e, 0x2f53ff5d, 0xcedda394, 0x0b0079b0, 0x4a4696d0, 0x056fcdeb, 0x454f91f3
.word 0xc3f67b7f, 0x963ffce4, 0x62ba9f08, 0x735af27e, 0x3a99e11b, 0x1110daae, 0x083f65e3, 0x2585654b
.word 0x10cd79f7, 0x7353d80a, 0x96031333, 0xe7ec6afb, 0x25b8e3e0, 0xeb808c27, 0x4a7312eb, 0xdc4576d9
.word 0xbc3f8fa0, 0x95f7000d, 0x4c56fdd4, 0xc4fd482b, 0xaa0268fb, 0xadeee516, 0xfc0725a5, 0x2973e2d0
.word 0x762d2ceb, 0xa06258bc, 0xe9f44391, 0x7327b217, 0xaf0e706f, 0xaf459319, 0x4feaa6b5, 0x40900125
.word 0x07021545, 0x6c74764e, 0xd091dc7a, 0xa1ffdeec, 0x19b6914e, 0xdeba624e, 0x234b9830, 0x449ec860
.word 0x0d8039b4, 0x2f6780a4, 0xa20b3474, 0xef1173a9, 0xd1e98bff, 0xc66693eb, 0xf4c9ad9f, 0x030f6517
.word 0x156bb4d5, 0x90d01061, 0x1f5b2514, 0xb2575855, 0x54778dd2, 0x1bb8b165, 0xb49640a8, 0x537c295f
.word 0x69b76696, 0x57e80dc5, 0x746b812b, 0x37fedc04, 0xbf7e7e45, 0x8b0c9bc7, 0xf2dc217f, 0xd21032c0
.word 0x98438271, 0x6d1769d0, 0xd1f68964, 0x316abca2
.section .region_1,"aw",@progbits;
region_1:
.word 0x68f43a6b, 0xfe944af5, 0x87b8763b, 0xca8423a4, 0x2eee1dfc, 0x01f3117d, 0x627e7975, 0x462e0133
.word 0x2a8b829a, 0xbbe39a97, 0x628053b4, 0x61cd2760, 0x1e050903, 0x9573ff38, 0x0ae149a6, 0x162b1312
.word 0x5baa2880, 0x3d75e761, 0xfd6021b3, 0xbecca625, 0xe43cf2b3, 0xbc9c6649, 0x10c3ca3e, 0x8b616611
.word 0x427c58d3, 0x23104159, 0x45e4dc0c, 0xeee76299, 0x4411cac1, 0x17af99af, 0x4821e5e3, 0x35d6e3c3
.word 0x74136b0d, 0x6e7f71cf, 0x4c6a441e, 0x5144daf0, 0xc3883168, 0xf90cfd47, 0x40d8b432, 0x1edc803e
.word 0x25938b33, 0x81062f0c, 0x5da64afa, 0x2117df99, 0xe2c311d1, 0xe9a7feba, 0xf37308af, 0xc1f78d07
.word 0x59164185, 0x4f567412, 0xf0173201, 0xfa27dcfe, 0x347e556b, 0x854ecde5, 0x5711d253, 0xa6cc5b3d
.word 0xf5afb8b3, 0xcbbfe16d, 0xbe8b1d9a, 0xb3568653, 0x478122b7, 0x76cbe86b, 0x74d12e75, 0x641106bc
.word 0x2c17c526, 0xc093ce8b, 0xaa1128b5, 0xfcb6cdd6, 0xd0d3c609, 0xcdcacbc7, 0xe6bee728, 0x5fb4e080
.word 0x1b5cc6f4, 0x84267dc7, 0x878f61a0, 0x240d0ee0, 0xa759e299, 0xdb63bd7c, 0xba054c61, 0x823d3bcd
.word 0xf301cb28, 0xa7bc5559, 0x83c7460d, 0x27856bb6, 0xead64e4c, 0x2f200273, 0x84a64100, 0x507c93f0
.word 0x9b894156, 0x303f5adc, 0x9c0bfe1f, 0x162a4653, 0xdaf9914b, 0x404946f7, 0xc9db6a96, 0x547e01b7
.word 0xb50f76ed, 0xd6ff2192, 0x2233008d, 0xace88044, 0xb2ae899c, 0x69825fd7, 0x68d32a1a, 0xd433f626
.word 0x3a93cf77, 0x16472ad0, 0x9d043105, 0xf8fa44b8, 0xef7b176e, 0x8cdae8b8, 0x471a3bb6, 0x75524814
.word 0x20208e99, 0xd97067c9, 0x5ece1a26, 0x8ff0ede4, 0x48d98889, 0xd4ef7c62, 0xe45aae7d, 0xcac4220a
.word 0x929d17da, 0x1a6b1e17, 0x60e2eb95, 0xe51f59f5, 0x2fc72604, 0x5792347e, 0xe99d2e29, 0x651315fb
.word 0x0a89d253, 0x217156a7, 0xfda0e35a, 0x907a60f4, 0xc3a94e2a, 0xf7690e2b, 0x2b1bb6db, 0xad144768
.word 0x8a34a701, 0xbb0455ad, 0xe1555e5a, 0x99d91518, 0x87b4b191, 0x636e15bf, 0xf8b76c90, 0x91c94756
.word 0xb0a6d244, 0x7282ec28, 0x62ebfa6c, 0x4b12aa51, 0xf7947af0, 0xc04293e2, 0xccb0967e, 0xd609cf67
.word 0xaae67fa8, 0x5c67c522, 0x2231ebf5, 0xd810c835, 0x21be6200, 0x9e43d567, 0xe97ca377, 0x8e2b2131
.word 0x362f35a8, 0x830c615a, 0x9ec58a82, 0x6efc8fb7, 0x988d7dd2, 0xa1743284, 0x0575f3f3, 0x8ae4e57c
.word 0xbf351e67, 0x39e118df, 0xdf3a68f1, 0xa8e41a9a, 0x0d606021, 0xa6128a0f, 0x0d4abe9e, 0x92ca83dd
.word 0x859904ab, 0xa2ed16c2, 0xf47abbd6, 0xdae0a8cc, 0x69a8186a, 0xbd84fd43, 0xcc253ec3, 0xf17edec2
.word 0x8e2a002a, 0x75c4ed48, 0x910a8f0f, 0x083d82ae, 0x69ff8382, 0x1c8ae0d4, 0x27e9e384, 0xb0c9d62d
.word 0xaf7864e1, 0xad28bda1, 0x4ecc76c6, 0x11584dc4, 0x17387dfa, 0x1752c1c3, 0xb5827ba5, 0x2a6556c4
.word 0x29422bd8, 0x35798508, 0x47a3ea29, 0x2ab03835, 0x3c2349d4, 0xf4e8f1ce, 0xae7b62f2, 0xc697b43d
.word 0x9368ad1d, 0x2941459f, 0x896e1a01, 0x3a7c7b4e, 0x8c4d5945, 0x0d91aaf9, 0x2b4b9ff6, 0x28116268
.word 0xa7fa063f, 0xfd196ef9, 0x5c3d72b4, 0x5bd3b528, 0x25e0657e, 0xde184959, 0xfd43fa23, 0xfde02f1c
.word 0x283b1eb3, 0x2ca13135, 0xc5366b07, 0xa0ac61d9, 0x3af8c1d3, 0x1ebe7965, 0x05f814b0, 0xdf0b7bda
.word 0x680fc227, 0x50fb7f8c, 0x1b4d6323, 0xe9b90998, 0xce953939, 0x9871a1b8, 0xe28dbb7c, 0x569bf1f6
.word 0xcf5b4981, 0xcd19a3e4, 0xac0b7912, 0xb91b469b, 0xc85fb975, 0x233015f9, 0x3ef7d928, 0x24ed3032
.word 0x3de424ed, 0x4c52d4e2, 0xd722b2ff, 0x7c8cef52, 0x9c638280, 0x877dafe4, 0x9bdbff02, 0xc0a52693
.word 0x9e3e3928, 0xbcd3c159, 0xa4113557, 0x4aee8afe, 0x4e0004e0, 0xc4dd5441, 0xad01c9a7, 0xd1436848
.word 0xcd161cbf, 0x8193c3fa, 0x6551f583, 0x081da931, 0xfc64124d, 0xa1fb5614, 0x999dd507, 0x81f1b4da
.word 0x94ccc8dc, 0xc680ec37, 0x918fc286, 0xd5d18bae, 0x0257d8b5, 0xc8a32ebf, 0xeea195a8, 0x5e6f771b
.word 0x7cef00d1, 0x7cdbdf21, 0x45f66527, 0x8dfe4e4a, 0xa2db0fe3, 0xbea37289, 0xa74a91b1, 0x8aff0290
.word 0xa067a9f0, 0x2a153555, 0xbaa2dac3, 0x5636b7f5, 0xe8fce9c8, 0xedbf216f, 0xc1c49438, 0x5bc524f9
.word 0x57665af9, 0x0df70a43, 0x2147a996, 0xbaf969c2, 0xf637cfaf, 0xbd7802af, 0x5999fd90, 0xcf39cb85
.word 0x94ee1886, 0x11b4c4a7, 0x68f54eb4, 0x04f06a5a, 0x765f3b16, 0xffa1ae7c, 0x7339acd1, 0x68bfd2a7
.word 0xde84adce, 0xe975ce75, 0xf46d0963, 0x5ab86150, 0x353e8bb1, 0x093840c5, 0x5dc3cf74, 0x9ad3dd18
.word 0x4ac19b4c, 0xcd4f26d7, 0x67172d51, 0x54cbdc6b, 0xe802c70f, 0x6530763f, 0x06afd73f, 0x013cd583
.word 0xa12779f7, 0xf24737ef, 0xbfed90bb, 0x56c01066, 0xc0108cf0, 0x7974d36b, 0x09d865ea, 0xf7888b46
.word 0xa05761b4, 0x412e51e8, 0x53ea227d, 0x7766753a, 0x4d1c1cf5, 0xf8fade6d, 0x77fec892, 0xd5dad7c8
.word 0xba567635, 0x3a15c4bc, 0x9030b07b, 0xf4a020b1, 0x30f04a25, 0x37973b69, 0x26478d65, 0x92654bbe
.word 0x4aa923ea, 0x34b8cee0, 0x93432988, 0x6d8ee875, 0x6f6ee0c5, 0xdcf30638, 0xa45a0ef0, 0x6cd0249c
.word 0xe1b5d156, 0x5c3f49c9, 0x6e524d8a, 0xfc513b83, 0x042d2df4, 0x11e5066f, 0x7978f192, 0x1a1410cd
.word 0x1fc28286, 0x16b014a2, 0xc2761230, 0xb3835ca9, 0x8b677f62, 0x53e82422, 0xc66bfc93, 0x12e1204f
.word 0xadc77dba, 0x99ba6e84, 0xd76efb89, 0x9e988db2, 0x33788441, 0x5d17c748, 0x82be28ca, 0xc1a4dee1
.word 0xf5a156c0, 0x63c328e9, 0x6fa44ec1, 0xab9a9407, 0x0ec6e82d, 0x52e4af7a, 0xcf970ed4, 0x3e2191a8
.word 0x1393d00c, 0x454ef4fa, 0x223aa73f, 0xe537aaf8, 0xa30796f5, 0xd5d15902, 0xc4c5e3f4, 0xb506ec93
.word 0x84641ec0, 0x531bb0b6, 0x129704a5, 0xaa261619, 0x01b66094, 0x42e23026, 0xab8a5d43, 0x4a4b6fbd
.word 0xd5b4517a, 0x8eee061b, 0xcba4b46b, 0xb2436894, 0x107e4e93, 0xeca93be6, 0x2e01186c, 0xac228f60
.word 0x35126f08, 0x0504dc3f, 0x189e51d1, 0x96a85ec1, 0x648546b9, 0xaaf6098c, 0x2be03474, 0xcebb90ec
.word 0x73957e8f, 0xf4ff7231, 0x8233edaf, 0x45e9480c, 0x5a11076d, 0xf9f11214, 0xc41bf713, 0x48cb720e
.word 0xe3eb2b19, 0x47d0ff11, 0x3dc41ae4, 0x8c1eb5f7, 0x719e5e38, 0x2623bb2a, 0x9e699088, 0x86f04458
.word 0x84ceb987, 0x5e953b34, 0xae5ee25f, 0x25be29de, 0xdd577dd6, 0x24a04a9d, 0x63830ca3, 0x2b2d7f8b
.word 0x57e743dc, 0x9195ce66, 0xf3bddd26, 0xe9739c62, 0x415bdbd1, 0x4fcf0562, 0x2e76d4f8, 0x19328398
.word 0x142ce097, 0x1fc88cd4, 0x91abbc5a, 0x5a07ca2d, 0x7750b501, 0x2ff841fa, 0x0d01acae, 0xffa3d2c3
.word 0x5cd8b856, 0x04a50ee9, 0xab1ed8ef, 0xd6b40cfc, 0x6cb8e1a7, 0x7b068d8c, 0xb03b174e, 0x1da3124e
.word 0x28b0b550, 0x3bf6b4fc, 0x87eb7119, 0x0c053302, 0x9b1091cc, 0xaee9450a, 0x56964f59, 0x9ef4f450
.word 0xa9ae9570, 0x96bdd348, 0x89be4bc2, 0xc31b3fa2, 0x2f673361, 0xa8618281, 0x0b0ea976, 0x4348014f
.word 0xb8598a7b, 0x020b2779, 0x77452395, 0x1b34709b, 0x12cc5813, 0xc4016cd6, 0xeb6a7ebe, 0x6bb9934f
.word 0xcf5e57e1, 0xddc6c05e, 0x92417146, 0x806b0196
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x12, test_done
                  jalr x0, x12, 0

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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
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
                  1: la x12, test_done
                  jalr x1, x12, 0

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
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
