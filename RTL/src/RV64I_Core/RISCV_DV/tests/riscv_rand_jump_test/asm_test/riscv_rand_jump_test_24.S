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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x22, kernel_stack_end

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
                  li x0, 0xf4917e05
                  li x1, 0xb89a21da
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xc0ec8e38
                  li x5, 0x653275b7
                  li x6, 0x10baac6f
                  li x7, 0xf17fee84
                  li x8, 0x80000000
                  li x9, 0x1
                  li x11, 0xfcd9c9e8
                  li x12, 0x38aef86f
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xc
                  li x17, 0x2
                  li x18, 0x1
                  li x19, 0xf
                  li x20, 0xc
                  li x21, 0x0
                  li x23, 0x9
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x6
                  li x27, 0x80000000
                  li x28, 0xe
                  li x29, 0xf0101d58
                  li x30, 0xf8ba9197
                  li x31, 0x0
                  la x10, user_stack_end
main:             srai         a2, zero, 17
                  la           s5, sub_4
                  and          s8, a5, s8
                  addi         s5, s5, -553
                  andi         s3, sp, 1919
                  bltu         s5, a5, main_j2 #branch to jump instr
                  slli         s7, t6, 19
                  addi         gp, s9, -1259
                  sltu         s10, t2, s4
main_j2:          jalr         gp, s5, 554 #jump main -> sub_4
                  add          a5, s4, s10
                  add          a1, t2, t0
                  la           s1, sub_3
                  and          t3, s3, t0
                  auipc        t5, 184108
                  addi         s1, s1, 293
                  lui          t2, 328407
                  addi         t3, a0, -883
                  slt          t3, ra, a4
main_j3:          jalr         gp, s1, -293 #jump main -> sub_3
                  auipc        t5, 797717
                  la           tp, sub_2
                  xori         s8, s11, -1468
                  xor          sp, a2, t2
                  addi         tp, tp, -49
                  sltu         s10, sp, sp
                  sll          gp, a6, gp
                  and          a2, gp, s7
                  sltiu        s10, s4, -1046
                  blt          gp, t1, main_j4 #branch to jump instr
                  lui          a1, 37413
main_j4:          jalr         gp, tp, 49 #jump main -> sub_2
                  and          sp, s6, s9
                  la           t2, sub_2
                  slli         a5, s1, 1
                  auipc        s1, 556590
                  addi         t2, t2, 450
                  bltu         a2, s4, main_j5 #branch to jump instr
                  addi         a1, t1, 1016
                  auipc        s8, 310794
                  ori          a1, a1, -155
                  srli         a4, zero, 19
                  lui          s11, 685752
                  srl          a7, t2, s9
                  slti         a6, s4, -1530
main_j5:          jalr         gp, t2, -450 #jump main -> sub_2
                  la           gp, region_0+595 #start riscv_load_store_rand_instr_stream_0
                  lbu          s1, -13(gp)
                  lbu          t1, 51(gp)
                  ori          s3, a2, 1610
                  lh           t5, 11(gp)
                  lb           s9, 12(gp)
                  slti         s1, a5, 1245
                  sra          t2, t4, s10
                  slli         s11, gp, 25
                  sb           a2, -42(gp)
                  sb           s5, -54(gp)
                  lbu          a1, 10(gp)
                  sll          t5, s0, s11
                  lui          ra, 256313
                  lb           ra, 60(gp)
                  lb           s3, -13(gp)
                  nop
                  sb           gp, 13(gp)
                  slt          s4, a2, s6
                  slli         s1, s7, 21
                  ori          s0, a6, 1665
                  nop
                  or           tp, a4, s8
                  addi         ra, s1, -1171
                  or           a7, s10, s11
                  lh           s2, -63(gp)
                  lb           a5, 31(gp)
                  lh           ra, 45(gp)
                  srli         s9, a4, 1
                  lbu          s2, 26(gp)
                  srli         t4, t1, 21
                  sra          a2, s11, t2
                  or           sp, a7, a5
                  lh           s9, 17(gp)
                  lhu          a1, 11(gp)
                  slt          a7, sp, s1
                  xori         t3, s5, -747
                  sra          a6, a2, gp
                  sb           s4, 48(gp)
                  lb           tp, -26(gp)
                  sh           s11, 1(gp)
                  lui          t4, 424792
                  sb           a0, -14(gp)
                  sh           t4, -61(gp)
                  lb           s4, 62(gp)
                  sb           ra, 58(gp)
                  lbu          a1, 4(gp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  slti         t1, t6, 114
                  andi         a7, t4, -1213
                  nop
                  srai         t6, s1, 4
                  addi         a3, t4, 1989
                  bne          s0, s8, 14f
                  sll          a3, s2, t4
                  sll          s5, t3, s10
                  slli         t6, a5, 4
                  srli         t1, sp, 23
                  and          s5, sp, s5
                  sra          ra, t0, s8
                  xor          gp, t4, a4
14:               andi         s10, s10, -1757
                  and          s8, s3, zero
                  sltiu        a5, s3, 1887
                  addi         s2, s6, 662
                  sub          a6, s4, s3
                  sra          s1, s11, s3
                  auipc        s1, 962210
                  lui          s3, 215306
                  nop
                  sra          a6, t3, sp
                  ori          s11, t1, -2033
                  xori         s2, zero, 1062
                  slli         s4, t3, 29
                  sltu         ra, tp, s11
                  sll          s10, a1, a3
                  nop
                  xor          s8, a4, a6
                  la           a7, sub_1
                  addi         a7, a7, 471
                  slt          s2, s1, a0
                  slt          s5, tp, a0
                  andi         sp, t5, 1446
                  sltiu        a6, s5, -821
                  xor          ra, s3, tp
                  sll          a1, s2, tp
main_j1:          jalr         gp, a7, -470 #jump main -> sub_1
                  bltu         t4, t3, 32f
                  slli         s5, tp, 24
                  sra          tp, s4, a6
                  slti         t3, t4, 1609
32:               slt          a3, a4, zero
                  srl          zero, a1, s2
                  xori         t5, s9, -271
                  xor          s1, s3, t6
                  slli         t3, s11, 26
                  xor          t2, t4, t2
                  sll          a3, a3, a0
                  add          a1, s6, s11
                  srli         a7, s6, 18
                  sltu         gp, s4, s0
                  slti         sp, t4, -1982
                  slli         a3, s4, 24
                  add          s4, s8, s4
                  slli         a3, s9, 8
                  or           t4, a5, s5
                  sra          a3, a2, t3
                  xor          zero, a0, a6
                  bgeu         t5, s0, 54f
                  auipc        s4, 530425
                  ori          s5, a6, 1629
                  slt          t6, zero, s7
                  lui          t1, 557021
54:               xor          s9, s1, s7
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            bge          a2, s3, sub_9_stack_p
                  auipc        ra, 1022055
                  srl          ra, s9, s2
sub_9_stack_p:    addi         a0, a0, -32
                  sw           gp, 4(a0)
                  srli         tp, t4, 8
                  xor          a6, t4, sp
                  la           a2, sub_10
                  sltiu        s1, t3, -460
                  addi         a2, a2, 643
                  and          s10, a2, s11
                  srai         t2, sp, 29
                  srai         t6, tp, 30
                  or           s2, s2, s3
                  bge          t3, t2, sub_9_j13 #branch to jump instr
                  slti         a6, s1, 2036
                  xor          s5, zero, a4
sub_9_j13:        jalr         gp, a2, -642 #jump sub_9 -> sub_10
                  la           sp, region_0+990 #start riscv_load_store_rand_instr_stream_0
                  srl          s0, a0, t6
                  slti         gp, zero, 1318
                  sltu         gp, s10, s11
                  lb           s10, -9(sp)
                  srai         gp, tp, 27
                  lbu          a6, -9(sp)
                  lhu          a5, 8(sp)
                  sll          s11, zero, s7
                  lui          s7, 12768
                  lbu          zero, -5(sp)
                  nop
                  lb           s9, -2(sp)
                  sb           tp, -3(sp)
                  lbu          s7, 1(sp)
                  xori         a4, s1, -314
                  sb           zero, 15(sp)
                  slti         a4, gp, -1337
                  sltu         t5, s10, s7
                  auipc        t6, 780564
                  lui          s10, 259127
                  slt          zero, s4, a5
                  srl          a2, tp, s9
                  lbu          t3, -12(sp)
                  lh           s8, 4(sp)
                  andi         s5, a3, -1806
                  sb           s5, -1(sp)
                  and          s10, s4, s11
                  srai         a3, zero, 16
                  lb           a5, 0(sp)
                  srl          t3, t4, a4
                  add          t1, s5, s4
                  sltiu        t4, s7, -838
                  nop
                  sra          a2, a1, a3
                  ori          s3, a7, -1553
                  andi         a3, a0, -1582
                  sra          s10, s0, a6
                  or           t1, t3, s3
                  sb           gp, 6(sp)
                  sll          t5, t0, s2
                  lhu          t2, 10(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1031 #start riscv_load_store_rand_instr_stream_1
                  sw           t4, 5(sp)
                  or           s10, s9, t0
                  slt          s2, a3, a6
                  lb           t1, -14(sp)
                  slti         tp, s5, 1883
                  lb           gp, -6(sp)
                  lh           a1, -7(sp)
                  xori         s2, a4, -1971
                  slt          s11, s11, sp
                  sb           t5, 13(sp)
                  sw           a4, -15(sp)
                  lb           s2, 10(sp)
                  slti         a2, t5, -1952
                  sltiu        t4, a6, -988
                  sltiu        s2, sp, -1614
                  lh           s1, -1(sp)
                  ori          s2, a5, -2043
                  addi         t2, t1, 1323
                  lh           t6, 7(sp)
                  addi         a7, a4, -1479
                  lb           s7, 12(sp)
                  lhu          s3, -11(sp)
                  srli         ra, a2, 31
                  lb           s11, 10(sp)
                  lb           a4, -2(sp)
                  lb           s8, 0(sp)
                  auipc        s4, 131380
                  sh           a7, -5(sp)
                  add          ra, t0, a1
                  lh           ra, 1(sp)
                  add          t5, tp, a0
                  add          tp, s2, s2
                  sb           s10, -11(sp) #end riscv_load_store_rand_instr_stream_1
                  slli         gp, t5, 15
                  slli         gp, a4, 12
                  add          s7, t0, s8
                  andi         a1, s7, 950
                  bge          s8, a1, 13f
                  sltiu        ra, t6, 179
                  addi         tp, s1, 1298
                  bne          s5, s6, 14f
                  sltiu        ra, a0, -160
                  slli         a7, ra, 18
                  xori         s2, t4, 1439
                  blt          t0, a7, 13f
                  sub          s10, s0, a3
13:               srai         t1, ra, 3
14:               blt          s2, s5, 24f
                  bge          a6, a1, 31f
                  ori          t3, s9, -1693
                  srai         s7, a5, 16
                  srl          t5, s0, ra
                  blt          a2, s0, 33f
                  srl          s10, a6, t5
                  auipc        a2, 1035374
                  srl          t2, s7, tp
                  srl          t4, a5, a1
24:               andi         t5, s11, -2028
                  bltu         a0, a6, 34f
                  srli         t6, tp, 22
                  srl          a2, s8, tp
                  sll          t3, a7, ra
                  ori          a6, a2, 286
                  slli         t6, s5, 19
31:               srl          t5, s6, t1
                  lui          s2, 545001
33:               sll          s4, a5, s9
34:               slt          s1, ra, s10
                  srai         t4, s3, 27
                  slti         t3, s3, 413
                  add          t1, s2, t0
                  blt          s9, ra, 53f
                  sub          t5, s3, ra
                  add          s2, s11, s2
                  and          s4, s0, tp
                  beq          s11, t3, 43f
43:               sub          s9, t3, a3
                  blt          t2, tp, 57f
                  andi         s9, t3, 1469
                  slti         a6, s10, -245
                  xor          t3, s11, a4
                  or           s1, t0, s3
                  xor          s3, a2, s0
                  bgeu         ra, ra, 61f
                  bgeu         s6, zero, 69f
                  srli         zero, a4, 26
53:               srai         s11, s11, 30
                  beq          t3, s4, 59f
                  ori          ra, t4, -1188
                  xori         s4, s5, -569
57:               nop
                  nop
59:               sltiu        a7, a1, -1948
                  bgeu         a0, s4, 64f
61:               sll          s8, t3, a0
                  addi         s11, s6, 307
                  andi         s4, t3, 173
64:               srl          gp, gp, s5
                  or           s1, a6, t6
                  add          a2, s5, s0
                  bge          s10, s9, 72f
                  srl          s4, gp, s9
69:               blt          s2, sp, 80f
                  and          s4, t5, s5
                  auipc        tp, 654272
72:               bge          gp, s4, 84f
                  nop
                  sub          t4, s11, s8
                  beq          zero, a4, 79f
                  slli         s9, a2, 27
                  la           a5, sub_10
                  lui          s3, 339697
                  andi         zero, s6, 1899
                  addi         a5, a5, -1016
                  sll          a2, zero, a1
                  add          gp, a4, a7
                  sub          s10, s8, t6
                  srai         t3, s2, 31
                  bgeu         a6, zero, sub_9_j12 #branch to jump instr
                  ori          a4, s4, -1268
                  lui          s0, 576347
                  andi         s1, s5, -1333
                  lui          a4, 56675
sub_9_j12:        jalr         gp, a5, 1016 #jump sub_9 -> sub_10
                  bge          ra, t4, 83f
                  and          t4, a0, gp
79:               bne          s2, s6, 90f
80:               xor          s10, t3, s8
                  xori         s9, t1, -1438
                  auipc        a3, 304133
83:               beq          s5, a2, 92f
84:               bgeu         sp, t3, 99f
                  slt          t6, s10, t5
                  srai         a3, a0, 18
                  srai         s4, a6, 19
                  addi         ra, s5, -1791
                  sub          s3, tp, t2
90:               slli         tp, t5, 22
                  beq          t0, a1, 104f
92:               xor          s10, t2, a4
                  bgeu         t4, zero, 113f
                  sltiu        a7, a6, 1558
                  blt          a2, s0, 108f
                  xor          tp, a4, s6
                  srl          s7, s9, a1
                  addi         t6, ra, 732
99:               and          s1, t4, a2
                  sltu         t4, a7, gp
                  sll          s1, s0, t5
                  slt          s7, zero, t1
                  ori          sp, s0, -259
104:              xori         a3, t0, -1469
                  srl          s2, ra, a3
                  or           s0, t0, gp
                  lui          a1, 985438
108:              addi         s3, sp, 1728
                  slli         a1, t6, 7
                  andi         t2, a7, -750
                  blt          t2, s6, 114f
                  xori         s4, a1, -797
113:              beq          s5, a1, 118f
114:              sub          sp, tp, sp
                  auipc        t6, 757936
                  or           t4, a0, a5
                  or           zero, a2, s4
118:              slli         a1, t5, 15
                  sub          gp, a1, ra
                  sltiu        s11, s0, 1535
                  add          zero, s5, s3
                  bne          a5, t1, 124f
                  and          s10, a3, t0
124:              nop
                  blt          t5, s1, 126f
126:              beq          s8, a2, 132f
                  xori         s10, t1, 1076
                  xori         t2, s7, -306
                  or           s4, a1, a6
                  addi         a1, t0, 664
                  addi         s5, zero, -799
132:              lui          a7, 839916
                  bgeu         gp, s8, 147f
                  auipc        s2, 530542
                  srli         s5, zero, 26
                  auipc        t2, 217491
                  lui          a2, 974426
                  add          sp, s11, s7
                  bltu         s1, a5, 148f
                  and          s4, a3, a3
                  addi         sp, t4, -1646
                  slli         s3, t4, 21
                  ori          s5, s9, -1841
                  srl          gp, t2, s11
                  srai         t6, s8, 22
                  or           s9, a1, s2
147:              sub          tp, s10, zero
148:              bne          s2, t0, 166f
                  slli         a4, t4, 11
                  add          s5, ra, a2
                  or           s0, a3, t4
                  slti         ra, t5, -1029
                  beq          zero, s1, 162f
                  or           s2, a4, s7
                  addi         s10, a2, -536
                  xor          t5, zero, t2
                  sub          s2, s8, t6
                  sltu         tp, s2, t4
                  xori         a5, s1, -1354
                  sub          t6, gp, s10
                  ori          s11, a6, 1158
162:              slti         a4, s0, 1948
                  auipc        s2, 667671
                  slli         a2, a0, 29
                  slti         s9, s5, 1089
166:              bgeu         a7, s7, 168f
                  bltu         t0, s0, 171f
168:              xori         t6, s1, -631
                  srli         a2, a1, 14
                  xori         s3, a6, 573
171:              auipc        s2, 669382
                  sra          gp, tp, s1
                  add          a3, t4, a7
                  sltiu        t4, s0, -1857
                  srl          s8, t5, ra
                  slt          a5, s11, zero
                  andi         t2, s9, -1014
                  add          a1, a0, sp
                  addi         zero, a4, 614
                  add          t6, s11, s5
                  bge          s7, a1, 194f
                  bne          ra, t2, 183f
183:              sltu         t1, s0, zero
                  beq          a0, sp, 185f
185:              srli         a4, a7, 25
                  xori         s5, a4, 1598
                  bge          s2, s2, 200f
                  or           zero, t5, a1
                  beq          a2, s7, 202f
                  or           tp, a0, sp
                  bne          s2, s8, 202f
                  blt          t5, s3, 203f
                  and          t5, s9, a0
194:              addi         ra, t4, -794
                  beq          tp, a6, 200f
                  or           t4, s3, s6
                  addi         s10, a6, -824
                  auipc        a1, 395543
                  bge          t6, ra, 208f
200:              xor          t5, t0, s0
                  bne          a6, s8, 211f
202:              blt          gp, t1, 209f
203:              add          gp, s9, s9
                  bltu         t1, gp, 206f
                  andi         t4, a7, 1662
206:              sltiu        s3, s3, 2042
                  slli         t4, t3, 25
208:              slli         t1, a1, 15
209:              sra          s4, s4, s5
                  sub          a6, s7, s8
211:              auipc        t4, 100413
                  auipc        s2, 253914
                  sub          s5, s11, sp
                  or           s2, t5, a5
                  sltu         a6, s2, a2
                  slt          ra, t0, s5
                  or           s1, s4, a4
                  xori         s1, tp, 1810
                  add          s7, t2, ra
                  sra          ra, sp, s4
                  auipc        sp, 610544
                  andi         a2, a2, -1913
                  andi         t5, a0, 1672
                  bge          t6, t0, 244f
                  blt          a1, a4, 231f
                  and          a1, t5, t6
                  bltu         t4, s3, 242f
                  auipc        a7, 634810
                  blt          s9, t5, 241f
                  sltu         gp, s4, a5
231:              and          gp, s6, gp
                  srai         t3, a6, 24
                  nop
                  auipc        t3, 287942
                  addi         s8, s5, -60
                  andi         t3, s11, 1943
                  srai         s4, s10, 19
                  andi         t6, s9, -1076
                  add          s7, a7, t2
                  sltu         sp, a3, a6
241:              lui          a5, 691676
242:              and          t1, sp, a5
                  beq          a5, a5, 248f
244:              sltu         a4, zero, s9
                  xor          a3, t4, t6
                  srai         s3, s9, 2
                  add          s2, t0, tp
248:              sltiu        a5, a5, -937
                  auipc        a2, 264004
                  ori          t4, t2, 317
                  slt          s11, s6, s11
                  bltu         ra, zero, 257f
                  slti         t2, zero, 1492
                  and          s3, ra, a1
                  slli         s9, s3, 5
                  blt          ra, t4, 272f
257:              bne          tp, a5, 261f
                  srl          t3, s6, t2
                  bltu         t4, a2, 270f
                  sub          a4, s9, s1
261:              sltiu        ra, t5, 385
                  xori         s11, sp, -1674
                  sltiu        s9, t5, 665
                  ori          a2, t3, 2017
                  blt          t4, a5, 268f
                  lui          s8, 26486
                  xor          tp, t3, gp
268:              and          s9, s9, s9
                  addi         t2, s0, 123
270:              bltu         a0, s8, 285f
                  bne          a4, s8, 277f
272:              beq          t0, s7, 277f
                  auipc        a5, 355766
                  sll          a2, s4, s2
                  sra          a7, a7, a7
                  ori          s5, s11, -755
277:              bne          t0, t4, 290f
                  lui          s11, 82002
                  lui          a4, 140474
                  srl          s10, t1, s3
                  or           a1, t6, s9
                  or           tp, t3, a7
                  andi         s3, t2, -1875
                  xor          s0, s4, a2
285:              sub          s11, t6, tp
                  srli         a5, t2, 19
                  andi         a4, gp, -1496
                  add          t3, s2, t3
                  slli         t1, zero, 27
290:              srl          s10, t4, s8
                  slti         s3, t5, 348
                  xori         gp, s1, 673
                  lui          s8, 825638
                  auipc        t3, 808907
                  addi         a2, t0, -417
                  andi         s1, a4, 1554
                  bne          a2, s6, 300f
                  sra          ra, t6, t5
                  add          a1, a1, t2
300:              lui          tp, 914748
                  srl          s9, t4, s2
                  xori         a4, sp, -1086
                  nop
                  xor          t4, gp, t0
                  auipc        gp, 701081
                  xori         s0, t4, -2027
                  sltiu        t1, s0, -1217
                  addi         a6, t5, -684
                  srl          s8, s7, t4
                  slt          s0, a6, s7
                  bgeu         zero, t0, 322f
                  xori         t4, a6, 1977
                  addi         a6, s2, 665
                  or           zero, s3, a5
                  slti         t4, gp, -1226
                  or           a3, s0, t0
                  andi         s2, t3, -1838
                  sra          s11, s9, sp
                  or           t3, gp, t5
                  bne          t2, a5, 327f
                  slt          gp, s10, t1
322:              or           s3, t6, a6
                  sub          a6, s1, a0
                  sll          gp, sp, s11
                  srai         s7, a5, 24
                  srl          s3, t0, s0
327:              lui          s8, 32266
                  xor          a7, a2, ra
                  beq          s0, s7, 338f
                  slli         gp, a1, 12
                  slti         a1, s6, 737
                  and          s5, s5, a5
                  bge          tp, s6, 337f
                  sltiu        s10, s2, 751
                  sra          t3, s6, t0
                  addi         s8, ra, 1005
337:              sub          sp, t3, s4
338:              auipc        t4, 262239
                  lui          s9, 87422
                  sub          ra, gp, s11
                  or           a5, s10, s3
                  sltiu        s1, t2, 1590
                  and          t5, s1, t2
                  beq          t4, a6, 349f
                  sra          s11, s6, t6
                  add          a4, s7, t5
                  ori          a1, gp, 2022
                  bltu         s4, s6, 349f
349:              auipc        a5, 643464
                  beq          t0, a0, 351f
351:              sra          s4, t1, s1
                  srai         s7, t0, 2
                  lw           gp, 4(a0)
                  srai         s0, t1, 12
                  srai         s1, a3, 1
                  sub          tp, s6, s9
                  addi         a0, a0, 32
                  addi         s9, a5, 51
                  add          a2, t2, s10
                  slti         sp, sp, -69
                  sltiu        s11, s8, 914
                  sltu         t1, tp, a2
                  ori          s9, zero, -1461
472:              addi x29, x3, 0
472:              jalr x29, x29, 0
sub_3:            srai         sp, a2, 4
                  addi         a0, a0, -36
                  sltiu        tp, zero, 1728
                  nop
                  or           s4, s2, a6
                  nop
                  sw           gp, 4(a0)
                  and          s1, a5, t4
                  sll          t4, a5, s8
                  xori         a4, gp, 1352
                  la           s4, region_1+1551 #start riscv_load_store_rand_instr_stream_2
                  sb           s3, -1(s4)
                  andi         s9, t2, 913
                  addi         t6, s8, -746
                  sub          t4, a4, a3
                  add          sp, a6, t5
                  nop
                  lbu          a5, 14(s4)
                  sb           t1, -9(s4)
                  sb           zero, -2(s4)
                  lbu          t4, -2(s4)
                  lbu          s8, 10(s4)
                  addi         t2, a0, 543
                  sw           t2, 9(s4)
                  lb           sp, -3(s4)
                  sb           a6, 2(s4)
                  lb           a5, 12(s4)
                  lui          t6, 320543
                  lui          zero, 268551
                  sb           t2, 12(s4)
                  slti         a3, s4, 574
                  sra          t2, s8, s8
                  lh           t2, -7(s4)
                  lb           s5, 6(s4)
                  sll          t6, s0, s5
                  sw           t1, 1(s4)
                  and          a3, a0, s9
                  lbu          a3, -16(s4)
                  lbu          s7, 16(s4)
                  sltiu        s1, sp, 1474
                  lb           a1, 2(s4)
                  slti         t3, a7, -1861
                  slt          s10, tp, a4
                  slli         s1, zero, 24
                  sub          a2, s3, t0
                  srli         t4, s7, 26
                  slli         a5, s3, 24
                  slt          s5, t3, a0
                  sra          t2, t6, sp
                  sb           a6, -8(s4)
                  srl          a2, s6, a5
                  srl          a7, s10, a4
                  lb           s2, -2(s4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1734 #start riscv_load_store_rand_instr_stream_3
                  srai         s9, s8, 15
                  sll          t6, t0, a2
                  lbu          a1, -1557(sp)
                  slti         a2, s6, 448
                  nop
                  slti         t3, tp, 822
                  srl          s10, sp, a6
                  lhu          s4, 248(sp)
                  lbu          s5, -673(sp)
                  and          a7, tp, t4
                  lui          t3, 885853
                  srl          a3, a0, s11
                  and          s2, t3, t3
                  lb           s8, -709(sp)
                  srli         s10, a1, 19
                  xori         tp, sp, 848
                  slt          s0, s9, a6
                  or           a7, t5, t2
                  lbu          s3, -1311(sp)
                  addi         tp, t4, -324
                  lb           t3, -1678(sp)
                  auipc        t4, 904760
                  nop
                  lui          tp, 719193
                  lui          a5, 553526
                  sb           s8, 97(sp)
                  sub          gp, s11, t1
                  slt          a2, t4, s9
                  auipc        t3, 506806
                  xor          a6, s1, s9
                  lui          a7, 1004805
                  lhu          gp, -1660(sp)
                  lb           s1, -1620(sp)
                  lbu          a5, -1451(sp)
                  add          t6, s6, s2
                  sra          t3, s10, s11
                  lh           s4, 160(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_0+494 #start riscv_load_store_rand_instr_stream_8
                  andi         s1, a5, 1391
                  slli         t1, t1, 21
                  lbu          a2, 787(s8)
                  lbu          a4, 872(s8)
                  lbu          t6, 1029(s8)
                  sltiu        a7, ra, -757
                  lw           gp, -402(s8)
                  ori          a2, a1, -975
                  sb           s9, 671(s8)
                  sb           s11, 1099(s8)
                  lw           t4, 1206(s8)
                  lb           ra, 910(s8)
                  and          a3, gp, s7
                  sb           s3, -220(s8)
                  sw           t4, 426(s8)
                  sub          a7, s10, sp
                  sub          t4, a5, sp
                  lbu          s7, 879(s8)
                  sltu         s4, s4, zero
                  sb           a7, 880(s8)
                  sw           ra, 334(s8)
                  slt          t5, zero, t1
                  slt          s1, a1, a7
                  xori         t2, s2, -1056
                  slt          s2, s7, s2
                  lbu          t5, -161(s8)
                  lbu          s3, 794(s8)
                  sw           t6, 970(s8)
                  sltiu        s5, a1, 63
                  auipc        t2, 55346
                  xor          zero, s1, a5
                  sh           t3, -194(s8)
                  xori         tp, t1, -8
                  sltu         t6, sp, a0
                  slt          tp, a6, a2
                  lbu          sp, 1250(s8)
                  lbu          s0, 506(s8)
                  sra          t2, s5, s5
                  and          t6, ra, t1
                  auipc        s7, 254281
                  sh           a7, -120(s8)
                  sb           a3, 407(s8)
                  lui          t2, 180339
                  lb           t6, 671(s8)
                  sh           sp, 630(s8)
                  lbu          ra, -289(s8)
                  sb           a5, 339(s8)
                  slli         a7, t0, 5
                  srl          zero, a3, s10
                  lbu          t5, 381(s8)
                  sub          t4, a3, ra
                  sra          a7, a6, sp
                  lbu          t5, 332(s8)
                  lb           a1, 638(s8)
                  lb           s0, 485(s8)
                  sh           t1, -414(s8) #end riscv_load_store_rand_instr_stream_8
                  la           a6, region_0+645 #start riscv_load_store_rand_instr_stream_1
                  lbu          a7, 1298(a6)
                  auipc        s1, 930166
                  sltu         s9, s9, s0
                  lhu          sp, 835(a6)
                  sltiu        s11, t6, 799
                  xor          t5, a5, tp
                  or           s4, ra, t5
                  andi         s4, a3, -692
                  slt          s3, s8, t4
                  srai         t3, s0, 28
                  lb           t1, 774(a6)
                  lb           s4, 403(a6)
                  ori          a7, t4, -81
                  nop
                  lui          a7, 880706
                  lb           a1, -458(a6)
                  andi         s7, s3, 1630
                  lb           s4, 608(a6)
                  srli         a4, tp, 22
                  lb           a7, -325(a6)
                  sb           a6, 761(a6)
                  and          a4, s8, s10
                  and          a1, t4, s5
                  lbu          s2, -538(a6)
                  lbu          s3, -593(a6)
                  and          s7, a5, s10
                  nop
                  srli         s4, a0, 8
                  lb           t2, -493(a6)
                  andi         s3, s8, 1517
                  lb           s1, -463(a6)
                  lh           a3, 45(a6)
                  or           zero, a6, gp
                  lb           s3, 136(a6)
                  lbu          s5, 1166(a6)
                  sltu         a4, s8, a1
                  lbu          s1, 618(a6)
                  lbu          a3, -456(a6)
                  lb           t4, 485(a6)
                  lb           s10, 1288(a6)
                  sb           a5, 1191(a6)
                  slt          a5, s5, a6
                  lbu          t3, 1033(a6)
                  xor          t4, s10, s5
                  srli         a5, s11, 10
                  addi         s7, s5, -1902
                  auipc        s10, 899151
                  ori          s1, a3, 668
                  auipc        s1, 156755
                  auipc        zero, 67693
                  sra          s4, s3, s10
                  lh           s4, 121(a6)
                  lw           a2, -221(a6) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1683 #start riscv_load_store_rand_instr_stream_0
                  lbu          tp, -1(sp)
                  sb           s7, -6(sp)
                  xori         s5, a2, 336
                  ori          tp, ra, 41
                  sh           s1, -5(sp)
                  xor          s5, s5, s3
                  sh           s6, 13(sp)
                  lb           t3, 8(sp)
                  sb           a1, -14(sp)
                  sll          s3, t6, t2
                  lh           s1, 7(sp)
                  sb           gp, -14(sp)
                  lbu          t4, 14(sp)
                  sra          s3, s10, tp
                  andi         a2, s4, -1017
                  lbu          a2, 0(sp)
                  auipc        s0, 1034398
                  and          t1, a5, zero
                  lb           t1, -16(sp)
                  lbu          s7, 0(sp)
                  sub          s3, t5, a0
                  andi         s2, s7, 1907
                  lbu          s3, 0(sp)
                  sb           t1, -6(sp)
                  lbu          s8, 2(sp)
                  lb           t6, 14(sp)
                  srai         a1, a5, 22
                  sra          s9, a3, s3
                  add          a5, s1, s9
                  ori          t4, t2, -1902
                  sb           t0, 4(sp)
                  sub          t5, a0, t1
                  lb           a2, -6(sp)
                  sw           s4, -15(sp)
                  sb           t6, -12(sp)
                  sub          s1, a5, t5
                  sub          s1, s8, tp
                  lbu          a5, -16(sp)
                  lb           s3, 4(sp)
                  lbu          s0, 14(sp)
                  sltiu        s10, s0, -1345
                  sltiu        s10, a4, -1059
                  lbu          a6, -12(sp)
                  sb           a4, -12(sp)
                  lb           s2, 7(sp)
                  lbu          t5, 8(sp)
                  lb           tp, -9(sp)
                  lh           s8, 15(sp)
                  sb           s5, -2(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1285 #start riscv_load_store_rand_instr_stream_6
                  srai         s2, a0, 0
                  sll          a1, a3, s5
                  lh           gp, 197(s3)
                  lb           sp, -140(s3)
                  sb           a2, -22(s3)
                  slti         s5, s4, -1845
                  slt          t3, a7, s10
                  xor          sp, tp, s5
                  srl          t5, a0, s3
                  add          a3, s10, a3
                  addi         s0, tp, 1092
                  sb           ra, -60(s3)
                  slti         a2, t4, 1603
                  lbu          a4, 130(s3)
                  srl          a7, sp, a3
                  xor          s4, gp, zero
                  slt          a5, s1, s0
                  lb           s2, 231(s3)
                  xor          t1, t1, gp
                  sh           a6, -235(s3)
                  sub          s4, s2, gp
                  lbu          s11, 159(s3)
                  add          s5, s2, a6
                  or           s8, t5, a4
                  xori         a5, sp, -1174
                  lb           a2, -239(s3)
                  sh           a7, 41(s3)
                  sh           s4, -175(s3)
                  lbu          s10, -176(s3)
                  sb           a5, -86(s3)
                  addi         gp, a2, 1034
                  lbu          zero, -28(s3)
                  lh           s7, -245(s3)
                  lhu          s5, -137(s3)
                  lbu          s2, -128(s3)
                  sb           s11, -4(s3)
                  lb           a1, 90(s3)
                  lb           s5, 2(s3)
                  lui          a6, 54683
                  lui          s5, 1043124
                  sb           zero, 96(s3)
                  lbu          t4, 125(s3)
                  sra          t5, s0, s8
                  nop
                  lbu          a3, 36(s3)
                  sb           ra, 150(s3)
                  slt          s9, a6, s4
                  sltiu        a7, t4, -573
                  lb           a6, -124(s3)
                  slli         t5, a3, 4
                  sra          s5, s4, s10
                  lb           t5, -64(s3)
                  srli         t6, tp, 3
                  or           s11, t0, a0
                  sltu         t4, a2, s1
                  lw           s1, -13(s3) #end riscv_load_store_rand_instr_stream_6
                  la           s4, region_0+951 #start riscv_load_store_rand_instr_stream_9
                  add          a2, s0, s10
                  lw           zero, 1(s4)
                  lbu          t5, -12(s4)
                  xori         tp, a2, -773
                  sb           a7, -16(s4)
                  slt          t2, a4, s2
                  lbu          s2, -9(s4)
                  and          a1, tp, s3
                  sb           s9, 15(s4)
                  lh           t4, 11(s4)
                  and          a3, t0, a4
                  lbu          s9, 11(s4)
                  lhu          t2, -3(s4)
                  xori         t6, a5, -1279
                  lbu          s1, -6(s4)
                  lbu          a3, -14(s4)
                  or           s3, a4, a2
                  lbu          s5, -8(s4)
                  lbu          gp, -12(s4)
                  sltu         s3, a5, a7
                  srai         s2, ra, 8
                  ori          t3, s2, -515
                  lh           sp, 9(s4)
                  lbu          ra, -14(s4)
                  sltu         a2, a5, a6
                  sub          t5, sp, s0
                  add          t6, s8, a2
                  lbu          s0, -1(s4)
                  sb           s0, 5(s4)
                  lui          s0, 870689
                  lhu          a7, -13(s4)
                  sh           t4, 13(s4)
                  addi         sp, s7, 1357
                  lbu          t4, 5(s4)
                  or           t5, s6, a1
                  lbu          sp, -10(s4)
                  sltu         s2, s9, t3
                  sub          t3, s2, s3
                  and          tp, s6, a7
                  ori          s8, t6, -838
                  lb           sp, 12(s4)
                  sra          a5, s11, t2
                  lbu          a5, 2(s4)
                  sb           zero, 15(s4)
                  sh           sp, 11(s4)
                  lbu          a6, 10(s4) #end riscv_load_store_rand_instr_stream_9
                  la           s7, region_0+1275 #start riscv_load_store_rand_instr_stream_7
                  sh           a7, 159(s7)
                  sub          zero, s1, a0
                  lhu          a2, 87(s7)
                  andi         a4, tp, -583
                  lhu          s3, -143(s7)
                  lb           gp, 162(s7)
                  and          s4, t1, sp
                  sltiu        s4, zero, 71
                  lhu          a3, -99(s7)
                  lb           sp, -22(s7)
                  lb           a2, 118(s7)
                  sltiu        s3, a3, 6
                  or           gp, t4, a2
                  lbu          gp, -26(s7)
                  lb           s5, 159(s7)
                  sb           t4, -188(s7)
                  nop
                  lw           gp, -191(s7)
                  lb           s0, 220(s7)
                  lbu          s10, -256(s7)
                  lbu          s8, 158(s7)
                  sra          a6, zero, s4
                  nop
                  sll          s5, t0, a2
                  srli         s1, zero, 27
                  lh           t4, -19(s7)
                  sb           t3, 10(s7)
                  sra          t1, a7, t3
                  sw           a3, -139(s7)
                  xori         s2, tp, -32
                  lbu          s5, 51(s7)
                  lb           gp, 76(s7)
                  sb           t6, -248(s7)
                  lb           zero, 70(s7)
                  lh           s9, 29(s7)
                  lw           t5, -119(s7)
                  lbu          t3, 110(s7)
                  andi         a7, s9, -1207
                  sb           s2, 129(s7)
                  lb           t6, 238(s7)
                  lbu          t4, 14(s7)
                  sltiu        s8, a7, 911
                  sra          t5, a5, t5
                  sb           s0, 12(s7)
                  lb           t3, 0(s7) #end riscv_load_store_rand_instr_stream_7
                  la           a2, region_0+1169 #start riscv_load_store_rand_instr_stream_5
                  sll          a5, s9, a4
                  sb           t2, -24(a2)
                  lbu          t5, 60(a2)
                  lw           a5, -53(a2)
                  lui          gp, 447446
                  ori          gp, ra, 1829
                  lhu          s5, -41(a2)
                  sh           a4, 59(a2)
                  lb           s11, -59(a2)
                  sh           s6, 1(a2)
                  srli         t3, s11, 18
                  lbu          tp, -32(a2)
                  sll          s9, a7, s10
                  lui          t5, 809398
                  lbu          a6, -20(a2)
                  sh           ra, -31(a2)
                  lhu          s8, -21(a2)
                  lhu          s9, -3(a2)
                  lh           t1, 3(a2)
                  lb           s2, 35(a2)
                  sb           t1, 23(a2)
                  lh           s3, -51(a2)
                  lbu          s3, -58(a2)
                  lh           a1, 35(a2)
                  lb           t3, -46(a2)
                  slli         gp, t6, 28
                  sb           s0, -15(a2)
                  lb           t5, -64(a2)
                  slli         t1, a7, 27
                  slti         t5, s9, 1489
                  andi         a1, t3, 1404
                  and          t2, t1, s7
                  sb           s8, 29(a2)
                  sb           a6, -28(a2)
                  sb           a1, -4(a2)
                  lb           s7, 62(a2)
                  lb           s1, -47(a2)
                  lbu          s2, -25(a2) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1726 #start riscv_load_store_rand_instr_stream_4
                  sb           t0, 23(sp)
                  sra          zero, s10, a2
                  sh           a3, -58(sp)
                  srai         s10, s9, 8
                  lb           t4, -51(sp)
                  andi         gp, t3, 2005
                  slt          s3, t2, a4
                  lh           a6, 0(sp)
                  lui          a1, 736032
                  slt          t4, a4, t2
                  lbu          t3, 5(sp)
                  nop
                  sra          t3, s11, s4
                  auipc        a6, 652583
                  or           a4, a1, zero
                  xori         a7, s4, -862
                  slti         t5, s4, -1495
                  add          a7, s7, s2
                  and          s5, t0, s7
                  sll          a3, ra, t4
                  or           zero, s4, s6
                  slt          tp, a3, a0
                  lhu          a5, 48(sp)
                  lb           a3, -32(sp)
                  lbu          s11, -33(sp)
                  sub          a3, a1, a6
                  slli         a3, tp, 27
                  srli         t4, a6, 22
                  slt          gp, t3, zero
                  xori         t2, t2, -1569
                  nop
                  lbu          a7, -4(sp)
                  slt          s10, a4, zero
                  xori         s1, t3, -1160
                  sb           t4, 22(sp)
                  lbu          s11, -40(sp)
                  sb           t2, 47(sp)
                  sltiu        s1, t2, -854
                  sltu         a6, s2, t3
                  lh           t2, -58(sp) #end riscv_load_store_rand_instr_stream_4
                  nop
                  slli         a3, a5, 5
                  srai         sp, s8, 21
                  sll          a5, t0, t1
                  lui          s7, 881578
                  bgeu         s4, s2, 7f
                  bne          s4, sp, 8f
7:                sub          a3, a6, s3
8:                slti         s3, s3, -2025
                  slli         s11, t6, 28
                  lui          s0, 857900
                  nop
                  sll          s9, s6, s7
                  sltiu        t5, s7, -726
                  or           t4, t5, s11
                  andi         t5, s3, -611
                  sltu         zero, t5, s3
                  addi         s5, s9, 565
                  slli         t3, t0, 12
                  addi         s3, s0, 876
                  sltu         s7, a4, a1
                  add          s4, s8, sp
                  sltiu        t1, s8, -791
                  bgeu         s2, s9, 36f
                  bltu         t3, gp, 41f
                  bltu         s1, zero, 33f
                  sub          a4, s4, s8
                  beq          t4, sp, 41f
                  sltu         t4, s10, a6
                  slli         gp, t1, 1
                  beq          t0, a4, 37f
                  add          ra, a7, s1
                  bltu         s7, a2, 39f
33:               xor          s2, a0, s3
                  auipc        a7, 744961
                  ori          s5, s6, -1078
36:               addi         a2, tp, 842
37:               and          t6, s2, t6
                  bne          gp, a1, 45f
39:               auipc        s2, 788793
                  bge          t3, a7, 52f
41:               sltu         s7, a2, sp
                  ori          t4, t5, 584
                  and          a1, s7, t5
                  add          t4, s4, s10
45:               xori         s3, t3, -164
                  andi         s4, a4, -1103
                  blt          s7, t4, 61f
                  beq          a4, t1, 64f
                  ori          ra, s6, -572
                  sll          a6, a3, a0
                  nop
52:               lui          zero, 992779
                  and          s1, s1, t3
                  blt          gp, s6, 60f
                  bne          s9, ra, 71f
                  slt          gp, s4, s3
                  add          ra, t3, t6
                  add          a6, t6, t2
                  auipc        s10, 867147
60:               srai         a1, s2, 19
61:               and          t5, a7, s2
                  sra          a7, a0, a0
                  bltu         s0, ra, 72f
64:               xori         s4, s6, -920
                  srli         t1, a3, 17
                  bne          t6, gp, 84f
                  sub          a4, s7, sp
                  blt          a3, s3, 87f
                  andi         a7, s2, -733
                  andi         s9, a3, 938
71:               lui          zero, 770178
72:               srl          s7, gp, s4
                  or           a1, a4, s8
                  bltu         s0, t4, 82f
                  bgeu         s11, s7, 83f
                  sll          s1, gp, t3
                  sltu         t5, t1, zero
                  auipc        s9, 84443
                  sltiu        t6, a1, -1445
                  xori         a4, t3, 328
                  srai         s0, a6, 4
82:               nop
83:               auipc        t1, 737220
84:               beq          s11, s11, 89f
                  auipc        a1, 818592
                  srli         t5, t2, 31
87:               bge          t2, s4, 93f
                  slt          s2, s4, t4
89:               slt          tp, a3, t6
                  ori          a4, s9, 128
                  or           a2, a7, a5
                  bge          s7, a4, 108f
93:               bgeu         s4, s3, 112f
                  addi         s0, a3, -2027
                  slti         s4, s11, 793
                  srli         a5, a6, 24
                  nop
                  lui          a7, 350117
                  slti         s8, sp, 1410
                  blt          t3, s7, 116f
                  srli         s7, s7, 19
                  sltiu        t1, s2, 1121
                  bne          s6, t4, 110f
                  beq          t5, ra, 116f
                  beq          a1, a7, 123f
                  beq          s10, a3, 108f
                  sll          s5, a4, t5
108:              nop
                  bne          a6, a0, 118f
110:              slti         s0, t4, 1803
                  sll          t2, a5, a7
112:              sub          t6, s6, sp
                  sra          s3, t1, ra
                  lui          s2, 391194
                  lui          s3, 682864
116:              beq          sp, zero, 128f
                  nop
118:              beq          t6, s9, 135f
                  sra          s4, sp, t2
                  nop
                  nop
                  slti         s1, a2, -1258
123:              or           s9, a5, a2
                  srai         s9, a7, 9
                  nop
                  andi         s11, t6, -323
                  srai         t6, s2, 17
128:              nop
                  srli         t3, t0, 10
                  andi         s0, a7, 433
                  slti         t4, zero, 1840
                  ori          s11, s6, -924
                  sltiu        a2, s9, 390
                  srai         a2, s6, 1
135:              xori         s10, a7, 258
                  blt          s10, a2, 138f
                  beq          ra, s3, 151f
138:              srl          s8, tp, s0
                  add          a6, tp, s11
                  srl          s2, tp, t3
                  beq          s11, a1, 159f
                  srl          s11, a4, a5
                  slli         s7, t3, 2
                  xori         s3, sp, -515
                  nop
                  andi         s11, s8, -1031
                  beq          s2, a5, 153f
                  and          a2, s4, s5
                  addi         s8, a5, -1193
                  xori         gp, ra, 630
151:              addi         t6, s8, -1190
                  bltu         a4, a5, 159f
153:              sll          s7, a5, s2
                  slt          s1, s8, s5
                  bge          s6, t3, 171f
                  andi         t5, s11, 80
                  bge          a6, a2, 176f
                  nop
159:              srli         t4, a7, 17
                  sra          t1, a1, a1
                  or           tp, ra, a1
                  slt          s0, sp, a5
                  or           t6, a6, t5
                  bltu         t5, a0, 176f
                  slti         a3, s2, -1207
                  blt          tp, s10, 171f
                  nop
                  andi         t3, a5, 698
                  xori         s3, a4, -1106
                  beq          ra, t1, 178f
171:              blt          s1, t4, 179f
                  slli         ra, s6, 16
                  sra          s8, s4, s3
                  xori         a1, tp, 1009
                  and          s11, s9, a6
176:              add          a1, a6, s11
                  and          gp, a5, s6
178:              slti         a7, s0, 296
179:              auipc        a5, 310289
                  slli         t2, t1, 22
                  sub          s7, a5, a7
                  sra          tp, s5, a4
                  slti         ra, t6, -1737
                  slti         t1, a2, -1470
                  srai         t5, s6, 4
                  sltu         t2, s7, s9
                  bltu         a4, s3, 203f
                  or           s1, a3, tp
                  xori         t1, t3, -338
                  bge          s5, ra, 192f
                  bne          s7, s2, 209f
192:              srai         t6, s5, 0
                  addi         zero, s0, 1556
                  auipc        t2, 940314
                  ori          s11, a3, -1720
                  lui          s7, 598600
                  or           s4, s8, a1
                  slti         sp, a1, 1123
                  bltu         zero, a1, 211f
                  beq          t1, t6, 207f
                  xori         s9, s0, -970
                  or           s1, a6, a5
203:              sltu         a5, ra, a5
                  sltiu        s1, a3, 694
                  xor          a7, ra, t5
                  slt          t1, t6, a4
207:              sltiu        s4, sp, -1680
                  srl          s11, s6, a0
209:              blt          sp, s3, 221f
                  or           gp, t6, t3
211:              srl          s4, s11, s6
                  slt          ra, gp, a3
                  sltiu        s10, ra, 618
                  addi         s4, s10, 1562
                  srai         s3, a2, 13
                  sra          a4, a3, t0
                  sra          t1, s2, a6
                  srli         a3, t3, 19
                  srai         s9, s10, 1
                  sra          a6, s2, t2
221:              add          s8, a2, t1
                  beq          t4, s9, 231f
                  add          gp, a0, t6
                  slt          a3, s2, s1
                  sra          tp, t1, s7
                  sra          sp, a2, s6
                  sll          a7, s2, t3
                  add          a1, sp, tp
                  bge          s11, t2, 236f
                  andi         t3, s0, -250
231:              beq          a4, t4, 239f
                  sltu         s8, t1, s10
                  xori         s8, t5, 1491
                  srli         s10, t5, 24
                  auipc        a5, 447771
236:              nop
                  lui          t5, 786305
                  bne          tp, s2, 251f
239:              bne          a1, t2, 253f
                  bge          s6, a0, 247f
                  xor          a6, a7, gp
                  srli         a5, s11, 24
                  beq          a0, s7, 249f
                  slli         s11, t1, 18
                  sltu         s8, sp, s9
                  bne          s8, t5, 265f
247:              bne          a0, t4, 263f
                  slt          s5, s1, s3
249:              beq          s5, s0, 258f
                  and          a1, s8, a1
251:              addi         ra, ra, -571
                  srli         t3, t4, 25
253:              sltiu        s1, s5, -1912
                  ori          s3, t4, 567
                  bne          a1, s10, 257f
                  and          t6, s9, s4
257:              blt          a0, sp, 273f
258:              sub          t2, t0, s1
                  auipc        gp, 300494
                  beq          a4, gp, 269f
                  slli         a5, zero, 9
                  andi         a2, zero, 1763
263:              bgeu         s4, t1, 282f
                  bgeu         zero, s3, 266f
265:              beq          a1, tp, 283f
266:              xor          a2, s1, t0
                  nop
                  addi         sp, s2, 385
269:              bltu         t6, s0, 276f
                  lui          t5, 421910
                  bge          s8, t3, 287f
                  auipc        a5, 698804
273:              xori         a2, gp, -66
                  srl          a6, t4, a1
                  slli         a2, a0, 5
276:              addi         s7, s2, 1825
                  sra          a7, s4, a7
                  addi         s4, s7, 1597
                  beq          a7, t1, 293f
                  add          sp, zero, t2
                  or           a2, s10, a3
282:              sra          tp, s9, a0
283:              nop
                  and          s7, gp, t1
                  sub          zero, t0, sp
                  bgeu         sp, s6, 292f
287:              sll          a6, t2, s2
                  bge          a0, a6, 307f
                  sra          s5, t0, t4
                  srai         s3, s10, 11
                  slli         a3, s2, 26
292:              srli         s10, s6, 31
293:              blt          s8, a4, 295f
                  srai         s7, a6, 19
295:              slli         s2, s8, 28
                  xori         zero, t3, 206
                  sra          s9, a1, a7
                  ori          s9, s7, -1062
                  and          t1, t3, t0
                  srli         t5, a2, 14
                  blt          s5, s8, 313f
                  srl          tp, a6, t1
                  xori         t6, t2, -1551
                  auipc        a4, 690062
                  sltiu        s1, s3, -832
                  slt          ra, t6, s6
307:              lui          zero, 130039
                  srl          s0, a6, a1
                  addi         s9, s9, -1869
                  xor          gp, t4, t6
                  bgeu         a2, t1, 323f
                  auipc        s5, 874378
313:              slli         s2, gp, 1
                  add          gp, s5, s3
                  sub          t4, t2, s0
                  andi         s4, a2, -1994
                  srli         s4, s6, 6
                  lui          s8, 855056
                  slt          s3, a2, sp
                  beq          s11, tp, 338f
                  xori         s0, s1, 1477
                  ori          s11, s8, 2025
323:              srai         t4, a2, 23
                  sll          s2, t5, a0
                  srli         tp, t5, 19
                  nop
                  slt          a6, zero, a7
                  bgeu         s9, s6, 334f
                  auipc        a6, 895286
                  auipc        gp, 241030
                  xori         s4, s3, -1194
                  sra          a1, a7, s10
                  bne          gp, a3, 345f
334:              nop
                  bgeu         t0, t1, 351f
                  sra          a5, a4, sp
                  srai         t2, s6, 10
338:              srli         a7, t2, 10
                  xor          a5, t3, s5
                  bgeu         sp, s9, 354f
                  srai         a1, s7, 16
                  bge          s4, a5, 347f
                  sltiu        a4, t6, 860
                  auipc        s10, 581563
345:              addi         a7, a1, -1426
                  sll          a1, t4, a1
347:              sll          sp, t2, s10
                  srli         t6, a7, 26
                  bne          s3, s11, 365f
                  bne          s5, t5, 366f
351:              xor          t1, s9, t3
                  srl          t5, sp, a7
                  auipc        t6, 73590
354:              sltu         s5, t4, s3
                  xori         t4, t2, 314
                  srl          tp, gp, ra
                  srai         zero, s0, 23
                  srai         a3, a1, 27
                  bne          s4, ra, 367f
                  xori         t2, ra, -799
                  ori          s8, a0, 227
                  bgeu         s10, a0, 364f
                  sll          a4, s3, gp
364:              slti         t4, s11, 1672
365:              bge          a3, s9, 372f
366:              srli         s10, zero, 3
367:              slli         s9, gp, 13
                  bge          t4, s4, 376f
                  sll          s4, s6, a0
                  xor          sp, a4, t5
                  andi         gp, s5, -1331
372:              and          t6, t5, s5
                  lui          t4, 98135
                  beq          t5, t2, 387f
                  addi         a2, a1, 656
376:              nop
                  bgeu         s9, s1, 384f
                  addi         t1, s0, 839
                  xori         a5, s3, 1626
                  beq          s4, t5, 389f
                  sltu         ra, t2, a6
                  slli         a2, a0, 26
                  addi         t3, s11, 236
384:              xori         a5, s5, 1457
                  xor          a3, t0, s8
                  sltu         s8, a6, a1
387:              or           s11, t6, s2
                  blt          a6, tp, 405f
389:              ori          s4, s0, 610
                  or           sp, zero, a1
                  srai         a4, s1, 25
                  sll          s10, a5, tp
                  xori         s1, s9, 159
                  nop
                  bge          s1, a1, 403f
                  or           t5, a7, s3
                  xor          s4, t3, a0
                  add          zero, s11, a0
                  nop
                  ori          a6, a7, -810
                  sll          t1, a0, zero
                  srl          sp, s10, a4
403:              sltiu        t3, s0, -1441
                  xor          s8, t1, s2
405:              lui          t6, 906616
                  blt          a3, a4, 413f
                  sll          s3, a2, s3
                  sra          s9, a5, s1
                  srai         s8, s3, 11
                  ori          s9, s4, 1660
                  beq          t1, sp, 429f
                  xori         s5, a1, 722
413:              sltu         s3, s8, t4
                  add          sp, s10, ra
                  srl          t6, s11, t1
                  nop
                  srli         s1, s10, 25
                  srai         s4, s10, 24
                  add          sp, t5, ra
                  lui          zero, 959810
                  bgeu         s8, a7, 438f
                  bne          sp, s4, 438f
                  beq          s9, tp, 425f
                  slti         s2, a3, 161
425:              auipc        s9, 438161
                  or           sp, s6, t5
                  nop
                  or           s8, gp, a3
429:              sub          a7, t6, a2
                  addi         s11, s7, 85
                  bge          s7, gp, 443f
                  xori         a7, s11, -756
                  nop
                  bltu         a3, a1, 448f
                  sll          a5, t1, a7
                  sltu         ra, a5, s10
                  xori         a7, a6, -884
438:              xor          a3, sp, s7
                  auipc        s5, 685505
                  srai         sp, t6, 29
                  bne          s11, s1, 449f
                  or           s1, a0, ra
443:              addi         gp, s10, 767
                  slti         t4, s2, -467
                  blt          t2, s9, 447f
                  sltu         a3, a7, s6
447:              srli         zero, s10, 30
448:              bgeu         t1, t2, 450f
449:              slt          a6, ra, s3
450:              auipc        s11, 408442
                  lui          t6, 946055
                  srli         a5, zero, 9
                  srli         s8, a4, 17
                  xori         t1, a0, 1853
                  bge          a2, a2, 464f
                  bge          t1, t1, 475f
                  xori         s11, t1, -172
                  bge          tp, t6, 474f
                  xori         t1, t5, -1466
                  beq          s7, t1, 472f
                  srli         a7, a5, 12
                  andi         a1, a0, -1984
                  bne          a1, t1, 470f
464:              beq          t2, a1, 477f
                  slt          ra, a4, ra
                  nop
                  auipc        t4, 283892
                  xor          s5, t3, s3
                  srai         a2, ra, 0
470:              andi         t3, s0, -318
                  or           a5, a0, a3
472:              nop
                  xor          t5, zero, s6
474:              blt          t5, a0, 490f
475:              or           sp, s0, s4
                  nop
477:              sltu         s10, s1, s5
                  slt          ra, a5, a1
                  sub          sp, s1, s9
                  sub          s4, s4, a6
                  andi         s3, t0, 1499
                  beq          a7, a5, 488f
                  beq          a7, t4, 502f
                  slti         a1, t4, 1291
                  and          a4, s5, a6
                  blt          s0, a7, 493f
                  sub          s5, a0, t5
488:              bgeu         t4, a6, 496f
                  slt          s8, tp, s0
490:              add          s0, a1, t3
                  slli         tp, s5, 7
                  bne          s6, s9, 499f
493:              bne          a7, t2, 501f
                  bgeu         a1, s2, 501f
                  sll          s1, zero, t6
496:              nop
                  beq          a6, a5, 502f
                  and          s10, s10, t2
499:              blt          t4, a5, 517f
                  sra          t3, ra, s0
501:              addi         a7, t6, 766
502:              sub          a7, tp, t1
                  auipc        t2, 763147
                  sll          s11, s10, t4
                  and          s2, s4, s11
                  beq          s5, s1, 520f
                  sltu         s10, s2, a3
                  sll          a2, t0, sp
                  srl          a1, ra, a6
                  srai         t3, s9, 12
                  lui          s9, 535022
                  lui          tp, 1009152
                  slt          ra, a1, s0
                  srl          s7, a3, s7
                  ori          t5, s0, -343
                  addi         s4, s10, -697
517:              sra          a5, s8, s1
                  slt          s0, t0, s4
                  sll          a2, t2, a0
520:              blt          a3, a4, 532f
                  srl          a5, a7, zero
                  xor          t2, s9, a6
                  addi         sp, s4, 204
                  lui          a4, 228597
                  sltu         a1, a1, s6
                  beq          tp, s1, 532f
                  andi         zero, a0, -16
                  xor          s8, s11, t2
                  add          s0, t0, s7
                  srl          s1, s5, s9
                  lui          s10, 463576
532:              bltu         s1, s0, 548f
                  addi         t3, a6, -1020
                  lui          s4, 278675
                  slli         t4, s2, 1
                  add          s3, s1, s5
                  srai         t5, t1, 12
                  addi         t2, t5, -1112
                  ori          a1, s8, -1761
                  sub          a1, t0, a5
                  slli         tp, s10, 18
                  xor          a6, s3, s4
                  xori         t6, s2, -1312
                  slli         a4, s7, 14
                  addi         s0, t1, 613
                  lui          s9, 601303
                  add          s4, a7, s9
548:              add          t6, s0, zero
                  sra          a3, s1, a7
                  srli         a5, gp, 24
                  slti         s0, a7, -1680
                  or           s9, a5, s0
                  sub          t3, a3, s2
                  add          s9, s2, tp
                  sra          s8, t3, a6
                  andi         s1, s3, 44
                  xor          sp, s3, zero
                  bltu         zero, t4, 567f
                  or           s7, t2, ra
                  bge          s1, a0, 565f
                  auipc        s11, 624607
                  ori          sp, s3, 535
                  srai         sp, s9, 7
                  xori         s7, a2, 219
565:              andi         gp, s0, 1575
                  and          t1, s2, t0
567:              bne          s3, s11, 574f
                  slti         gp, a6, 1154
                  srai         s5, gp, 3
                  ori          t5, a6, 1797
                  srai         zero, s10, 18
                  addi         t3, a7, 1899
                  and          zero, s6, s1
574:              ori          a3, s7, -546
                  sltiu        gp, tp, 708
                  slti         t5, a3, 1344
                  and          t3, gp, t0
                  srl          t6, a7, s0
                  slt          a6, s10, t4
                  andi         s5, a3, -28
                  srai         t2, s0, 16
                  andi         a3, gp, -1916
                  srli         a3, t5, 1
                  auipc        s3, 393483
                  addi         ra, s11, 1082
                  sll          gp, tp, tp
                  add          a1, s4, s4
                  srli         s10, a7, 7
                  sll          a1, s7, t5
                  sltiu        s0, s8, 1907
                  slli         a6, tp, 14
                  and          a6, a2, a2
                  sltiu        t1, t1, 696
                  sltiu        s10, s2, -1931
                  lui          s3, 281516
                  and          s8, s9, s8
                  bltu         s1, t4, 613f
                  srai         s10, s4, 21
                  add          t4, t3, s11
                  srai         t6, tp, 6
                  ori          a5, t6, -1896
                  slli         s8, ra, 5
                  srai         ra, t0, 23
                  addi         a6, ra, 1322
                  add          s10, a2, t3
                  ori          s9, a2, -1777
                  bne          tp, s8, 625f
                  ori          t6, a7, -1668
                  nop
                  sra          gp, t4, s10
                  bgeu         a4, zero, 624f
                  sra          a4, a3, s11
613:              ori          sp, s3, -219
                  auipc        tp, 54980
                  bne          s1, t5, 623f
                  bgeu         zero, a6, 624f
                  srli         s3, t1, 10
                  xor          t2, t2, s2
                  nop
                  bne          a6, s4, 632f
                  xori         t6, t6, -1387
                  bltu         zero, sp, 631f
623:              slli         t2, a6, 11
624:              andi         a2, s4, -37
625:              andi         zero, s11, -323
                  addi         t2, s2, 1561
                  sub          t6, s2, a2
                  andi         t4, s8, 1515
                  ori          a2, s1, 151
                  xori         s2, t6, -1143
631:              bltu         s7, s6, 639f
632:              slti         a3, a2, -1040
                  bgeu         s8, a2, 639f
                  sub          t3, s11, s4
                  slli         t6, tp, 28
                  xori         a3, s10, -1458
                  slti         s7, s6, 433
                  srl          a5, s8, s7
639:              sra          t6, a3, s9
                  or           sp, tp, t3
                  bge          t1, ra, 653f
                  blt          s1, t0, 656f
                  sub          gp, t5, s7
                  bge          t2, t2, 651f
                  lui          s7, 301487
                  ori          a7, t3, 290
                  beq          tp, t6, 666f
                  bge          s0, a0, 664f
                  slli         s7, ra, 22
                  add          t6, zero, s7
651:              addi         s9, s5, 1049
                  sll          tp, a3, a5
653:              blt          a3, t1, 670f
                  slt          t5, s0, tp
                  sub          tp, s10, a0
656:              xor          s2, s7, s1
                  slt          s7, s2, t3
                  beq          t4, t5, 676f
                  sltu         a4, sp, s11
                  slt          gp, a0, t2
                  srl          s4, t2, t4
                  lui          s5, 126461
                  sltiu        t3, s8, -616
664:              sltiu        s0, zero, 446
                  slli         a6, s4, 25
666:              slti         s11, s11, -952
                  xori         s0, a3, -1554
                  bgeu         s9, t5, 687f
                  xori         a6, t5, 1454
670:              sltu         t5, a5, ra
                  add          t3, s5, gp
                  xori         t5, zero, 237
                  srli         s11, t4, 23
                  sltiu        s10, t1, 280
                  sltiu        t3, s4, -148
676:              bltu         s5, s8, 692f
                  sub          s4, s6, a2
                  lui          s0, 298739
                  add          a3, a2, t2
                  srl          s9, zero, t3
                  slti         a4, a6, 1237
                  sltiu        a7, t1, 384
                  xor          a6, gp, t6
                  sltu         sp, s9, t6
                  or           a2, t4, a6
                  bgeu         s0, s10, 702f
687:              slt          t6, s10, zero
                  bltu         a6, a1, 695f
                  bgeu         s0, gp, 698f
                  and          s3, a7, t6
                  xori         tp, a7, 1870
692:              srli         sp, a3, 18
                  auipc        s4, 903280
                  srai         t6, t5, 19
695:              srl          s11, s6, s4
                  blt          s8, s10, 708f
                  bltu         a5, s11, 699f
698:              bltu         tp, t5, 700f
699:              slli         s9, a3, 28
700:              srl          s1, t2, a3
                  sltiu        s11, s9, -118
702:              srai         tp, a6, 26
                  bne          t0, t1, 710f
                  slli         t5, s7, 17
                  beq          tp, t5, 711f
                  srli         zero, s0, 21
                  sub          a1, s4, sp
708:              andi         s5, s8, -1197
                  sub          a6, a0, s8
710:              bgeu         a0, a2, 712f
711:              srai         a7, gp, 12
712:              xori         s4, t2, -129
                  and          a3, s3, s1
                  sll          s1, s4, t2
                  srl          tp, t3, t0
                  bne          s9, s1, 730f
                  srai         ra, s3, 31
                  bgeu         s6, s5, 726f
                  sra          t2, s0, s6
                  bltu         a3, a3, 738f
                  sltiu        a6, s3, -1911
                  addi         zero, s6, 616
                  slti         t2, t3, -197
                  addi         s7, a5, 782
                  srl          s9, s10, sp
726:              ori          a3, s5, -1804
                  slti         t4, ra, -1448
                  addi         t3, zero, 1521
                  lui          s9, 353304
730:              slt          a3, s11, t2
                  sltiu        t3, t4, 443
                  blt          t0, t1, 734f
                  xor          s3, s5, s3
734:              sltiu        s9, s4, -196
                  xori         a3, s0, 1803
                  sll          s5, t5, gp
                  or           s1, a5, s6
738:              slt          s2, a7, a0
                  nop
                  sltu         a6, s6, t5
                  bne          t5, a1, 759f
                  blt          a5, ra, 755f
                  addi         s4, a2, 226
                  sra          s7, a7, s0
                  sra          s3, s4, s0
                  xor          s4, s10, a0
                  auipc        a2, 493186
                  sll          s8, a3, a0
                  bne          t5, tp, 768f
                  and          s3, a7, t4
                  srai         s2, a7, 12
                  and          s8, a3, a0
                  bgeu         s11, gp, 765f
                  nop
755:              beq          zero, a7, 763f
                  slt          s7, sp, s5
                  or           s4, a6, a2
                  blt          t2, s7, 765f
759:              slti         s5, a0, -19
                  addi         s4, a6, -32
                  sll          a6, tp, s7
                  ori          s3, t4, 335
763:              sra          gp, s8, t3
                  ori          t1, s0, 561
765:              srli         s0, s9, 0
                  sltiu        t3, a4, 129
                  xori         t4, s5, 903
768:              beq          zero, a0, 782f
                  add          a5, t5, t4
                  sltu         a1, t1, t5
                  nop
                  add          a3, gp, t1
                  sll          s5, a4, a6
                  bne          t6, s2, 783f
                  sll          a4, sp, a1
                  blt          s2, s7, 795f
                  xori         ra, ra, -1924
                  andi         t2, s5, -272
                  lui          s0, 156445
                  sltu         t5, s5, s6
                  sll          s0, zero, s3
782:              blt          t2, t5, 791f
783:              sltiu        zero, t6, 773
                  and          s0, s10, t3
                  sll          s9, s5, zero
                  bltu         s5, t3, 803f
                  srai         s2, sp, 3
                  addi         gp, s2, -1363
                  or           a2, a3, t6
                  bltu         t5, s2, 806f
791:              auipc        zero, 601493
                  sub          s5, t6, s6
                  sltiu        s2, zero, 714
                  and          s0, s2, a7
795:              and          s11, t3, a0
                  addi         a4, zero, 450
                  nop
                  addi         s10, a2, 582
                  sub          gp, t2, s10
                  auipc        a4, 884941
                  xori         a1, zero, 1167
                  slli         s2, ra, 11
803:              xori         zero, s1, -106
                  and          s11, tp, s4
                  ori          a5, t1, 1048
806:              beq          t2, tp, 808f
                  nop
808:              sll          s2, s11, s8
                  slli         s4, t3, 7
                  slti         a3, zero, 303
                  add          a4, s3, tp
                  bgeu         zero, s6, 818f
                  xor          s5, a2, a0
                  srli         t4, s3, 0
                  andi         ra, a3, 498
                  auipc        a6, 606157
                  srl          s9, s5, s0
818:              bge          s4, s11, 826f
                  xor          a2, sp, sp
                  nop
                  blt          s2, a4, 823f
                  bge          a0, t4, 838f
823:              ori          s4, a0, -46
                  add          a2, a7, zero
                  slti         a4, a1, 1590
826:              addi         a7, s5, 1828
                  sra          t2, t5, s2
                  sltiu        s0, a0, -1346
                  add          t6, t1, ra
                  bltu         s2, t1, 846f
                  andi         s11, s4, -1558
                  sltiu        s5, s1, -1656
                  slt          a7, ra, t4
                  beq          a6, t5, 839f
                  bltu         s5, a0, 849f
                  blt          gp, gp, 848f
                  nop
838:              sltiu        s5, s2, -14
839:              or           s3, t0, s9
                  add          s3, s11, s10
                  sltu         a4, t0, s11
                  bge          a3, gp, 854f
                  or           s5, s7, s6
                  addi         s11, sp, 2038
                  lui          sp, 764318
846:              srli         s10, t4, 25
                  sll          s8, s9, s4
848:              slli         t4, gp, 11
849:              xor          gp, sp, zero
                  ori          s9, a6, 1655
                  auipc        a3, 316909
                  andi         t4, zero, -1621
                  xor          sp, zero, s8
854:              nop
                  bne          a4, s11, 871f
                  srai         a5, s2, 22
                  addi         a5, a3, 848
                  lui          a1, 808031
                  bltu         t3, s11, 866f
                  slli         a7, t5, 9
                  add          s5, s5, s6
                  bgeu         a2, s5, 869f
                  bgeu         a7, s4, 869f
                  srai         s9, s3, 9
                  sltu         s9, s0, s11
866:              addi         s9, t4, -2025
                  slli         s11, tp, 11
                  sltiu        s3, a2, -1631
869:              srl          gp, a6, ra
                  or           t5, s5, s2
871:              srli         s10, a1, 31
                  srai         s11, a6, 19
                  sub          tp, a0, s10
                  xor          t2, sp, t4
                  bgeu         a1, gp, 882f
                  slli         a2, t4, 24
                  sltiu        a6, sp, -719
                  slti         sp, s3, -1567
                  srli         a3, a2, 28
                  ori          a5, ra, -522
                  srli         a3, a4, 20
882:              lui          s10, 1020525
                  xori         zero, s1, -1848
                  xor          a4, a2, gp
                  ori          s0, s3, 560
                  sll          t5, a6, s2
                  addi         tp, t5, 1098
                  beq          a4, s1, 890f
                  auipc        t6, 540879
890:              andi         s3, s9, 585
                  bge          t6, t3, 893f
                  beq          s5, s5, 901f
893:              bne          t0, t3, 905f
                  addi         a6, a6, -538
                  sra          s11, gp, s7
                  bgeu         a3, a6, 914f
                  srl          a1, s6, zero
                  sltiu        gp, a4, -1181
                  auipc        s1, 45498
                  bge          s0, a1, 919f
901:              sra          s7, s4, s5
                  sltiu        s8, s2, -1428
                  xor          tp, a2, s4
                  beq          a5, t1, 910f
905:              slti         a6, s2, 1337
                  xor          s5, t4, t1
                  srli         s1, s4, 9
                  sra          s2, s9, t3
                  ori          t5, s11, -2038
910:              sra          zero, s5, t1
                  srli         a2, sp, 24
                  addi         s2, s3, -1990
                  andi         s10, ra, -56
914:              addi         ra, sp, -1546
                  xori         s5, s7, -885
                  nop
                  sltu         a6, t0, a1
                  sra          t1, s0, t3
919:              slt          s1, a6, a1
                  or           a2, t2, s2
                  sltu         s8, s1, t2
                  xor          ra, a2, a0
                  slli         s8, a2, 27
                  srli         gp, s10, 16
                  andi         t6, gp, -744
                  srl          t4, a6, a5
                  auipc        a7, 896039
                  srl          a3, zero, s9
                  nop
                  bne          a5, t1, 937f
                  sll          ra, a5, a0
                  xor          s2, s7, a5
                  sub          s4, s7, a0
                  sltiu        a6, zero, -481
                  sra          s8, s9, s9
                  bne          a0, zero, 942f
937:              slli         a1, s2, 11
                  srli         t3, sp, 16
                  xori         s10, s7, -1421
                  slti         t2, s1, 1877
                  sll          zero, tp, s8
942:              ori          ra, t4, -1119
                  srl          ra, s5, zero
                  or           s2, t6, t5
                  blt          gp, s2, 950f
                  bgeu         ra, t1, 954f
                  bltu         s2, a0, 954f
                  sltiu        ra, s8, 95
                  beq          s3, a5, 956f
950:              ori          s9, a0, 1686
                  or           t3, tp, s5
                  bge          s1, s5, 968f
                  beq          s11, s2, 967f
954:              bge          a7, t2, 967f
                  beq          a3, a3, 971f
956:              nop
                  or           a7, a2, a1
                  bne          a7, t1, 965f
                  xor          zero, a0, t6
                  andi         s4, a4, -1881
                  addi         t1, gp, -1764
                  sltu         s8, a5, s10
                  xori         a7, a2, -1610
                  xori         a3, s10, -1923
965:              beq          a4, s9, 983f
                  sra          s8, s5, a7
967:              blt          tp, ra, 979f
968:              blt          t6, a5, 987f
                  andi         a3, t0, 114
                  slti         a7, s0, 992
971:              bne          s6, s10, 979f
                  sra          t1, s11, a3
                  or           s4, s11, s7
                  sll          s7, s10, a4
                  sra          a7, sp, t6
                  sll          s8, s2, s7
                  sub          a1, ra, s10
                  and          t6, a0, s1
979:              sub          s3, s1, gp
                  or           a4, t4, a2
                  srl          s8, s4, zero
                  or           a1, ra, s10
983:              auipc        a1, 566339
                  sub          a3, sp, t0
                  slti         s9, s11, 1181
                  xor          a7, t6, tp
987:              addi         t6, sp, 1744
                  sltu         ra, a7, s11
                  add          s1, t2, a5
                  ori          t5, t0, 1752
                  and          a4, s3, t0
                  addi         s9, t0, -1931
                  andi         s10, ra, -613
                  bge          a6, s6, 1011f
                  sra          a6, s8, a5
                  srli         a2, a7, 14
                  lui          gp, 368408
                  xor          s7, gp, a2
                  andi         zero, s0, -1444
                  sll          t1, t0, a3
                  sltiu        t3, a4, -1308
                  blt          a0, s2, 1010f
                  beq          t6, s11, 1015f
                  and          a7, s3, s5
                  blt          t2, t1, 1021f
                  bge          t5, t3, 1022f
                  srl          s0, t2, tp
                  andi         a6, ra, 694
                  nop
1010:             srai         s5, t0, 5
1011:             sltu         s7, s7, t2
                  sll          s8, t2, t5
                  lui          s10, 126060
                  xori         a3, s3, 779
1015:             slti         s7, a1, 887
                  andi         s8, zero, 1393
                  bltu         gp, gp, 1019f
                  blt          a3, zero, 1032f
1019:             beq          s2, s3, 1028f
                  ori          s4, sp, 773
1021:             xori         t3, s8, -1064
1022:             blt          s3, zero, 1038f
                  addi         s0, s5, -1711
                  addi         zero, s10, 959
                  slt          t6, a4, s2
                  srl          s1, a1, t2
                  lui          gp, 213249
1028:             sra          ra, t3, t3
                  bltu         a2, ra, 1048f
                  sltiu        s8, s7, 2041
                  slt          a2, t0, s4
1032:             or           t1, s0, s1
                  bne          a3, t2, 1042f
                  andi         s9, ra, 1297
                  ori          s8, s4, -1901
                  lui          tp, 361950
                  nop
1038:             bne          t5, a7, 1046f
                  andi         t2, zero, 1466
                  lui          a1, 70634
                  xori         s5, sp, 1768
1042:             srl          t5, s8, a3
                  and          t2, a3, s9
                  srai         a7, t3, 26
                  slti         a4, s4, -1284
1046:             ori          zero, a2, -25
                  lui          s7, 113140
1048:             sub          ra, s5, t1
                  sub          t5, t6, a3
                  slli         a6, s3, 6
                  slt          t3, ra, t3
                  andi         s1, s7, -873
                  sra          a4, a5, tp
                  bge          s3, a6, 1066f
                  beq          t6, s11, 1068f
                  addi         ra, t6, -1307
                  lui          s1, 476922
                  ori          t1, s1, 523
                  andi         t1, t0, 246
                  sub          a4, ra, t6
                  sltiu        s11, s8, -1036
                  addi         s3, t1, 1270
                  sll          sp, t5, a0
                  blt          ra, t6, 1082f
                  ori          s8, s9, -1099
1066:             xori         s9, t6, -361
                  lui          t1, 505630
1068:             beq          t4, sp, 1074f
                  srli         a2, s5, 24
                  nop
                  bne          t1, zero, 1078f
                  beq          t0, s5, 1078f
                  sra          s1, a7, a1
1074:             blt          s6, s4, 1086f
                  bne          s4, s11, 1077f
                  xori         s4, a7, 875
1077:             slt          s4, a3, a3
1078:             lui          s10, 533176
                  sll          s1, s3, t1
                  blt          s0, s4, 1094f
                  sub          t3, t4, a4
1082:             auipc        s1, 360519
                  xori         s3, t4, 1686
                  sub          s4, t1, t3
                  bne          sp, t1, 1097f
1086:             addi         t3, a7, -835
                  xori         s9, s10, -418
                  nop
                  srli         s7, a2, 17
                  or           a7, t1, s10
                  sltu         t3, t5, a2
                  lui          t3, 826793
                  srai         t3, ra, 16
1094:             ori          a7, a4, -1959
                  sra          s8, gp, zero
                  bge          s5, zero, 1112f
1097:             slli         ra, a2, 1
                  sltu         s10, t1, t6
                  sltu         t4, s4, s4
                  nop
                  srl          s8, s6, a4
                  addi         t6, s2, -504
                  srli         s11, zero, 16
                  sub          t6, a5, ra
                  sll          s2, s6, s1
                  sll          t3, t0, a4
                  add          s3, t4, gp
                  or           ra, gp, s0
                  sltiu        t1, t5, -2002
                  xori         s7, gp, -1058
                  xori         t3, t5, 1254
1112:             auipc        t6, 760464
                  ori          t4, t0, 501
                  xori         s4, a4, 981
                  lui          s11, 318684
                  and          a6, zero, t1
                  nop
                  slli         s11, s1, 10
                  slti         a5, a7, 223
                  auipc        s11, 224315
                  beq          s1, t5, 1123f
                  sra          t4, a5, s11
1123:             bgeu         s9, s0, 1140f
                  sltu         a7, a7, s1
                  beq          s7, s0, 1143f
                  nop
                  slli         gp, s9, 26
                  blt          gp, gp, 1144f
                  or           s7, zero, s3
                  beq          s5, tp, 1149f
                  addi         s11, t3, -1352
                  sra          a6, s11, t5
                  slti         s0, a3, -1313
                  ori          s9, s10, -625
                  auipc        t3, 484250
                  bgeu         t0, t4, 1152f
                  sub          s1, s11, s9
                  slli         sp, sp, 7
                  lui          zero, 454505
1140:             sra          ra, a4, a1
                  ori          s8, s9, -756
                  bne          a3, a6, 1151f
1143:             sra          a7, s7, gp
1144:             xor          a6, a3, s1
                  xori         s11, a5, 1315
                  slt          a3, s3, s6
                  slti         s2, s9, -194
                  add          a4, t3, s9
1149:             sub          t5, t4, tp
                  sltiu        t6, t6, 278
1151:             blt          s8, s2, 1153f
1152:             sltiu        zero, t0, -671
1153:             slt          t4, zero, s11
                  xor          gp, a2, a1
                  sltiu        a7, sp, -1137
                  slli         tp, t1, 1
                  nop
                  addi         a4, t5, -1619
                  xori         tp, s6, -1681
                  or           s7, sp, s3
                  lui          tp, 623996
                  srl          a2, s2, t0
                  bltu         a1, a0, 1168f
                  srl          s3, ra, ra
                  sub          sp, zero, t1
                  add          s1, s4, s7
                  srli         t4, s6, 25
1168:             auipc        s3, 446657
                  sltiu        sp, a5, -1465
                  sll          a6, s11, t5
                  andi         a7, a3, -24
                  nop
                  beq          sp, sp, 1187f
                  sub          a5, s2, gp
                  lui          t6, 658962
                  beq          tp, a3, 1183f
                  bne          s7, a2, 1184f
                  beq          ra, ra, 1185f
                  sltu         t3, a6, t6
                  slt          s0, s7, a7
                  lui          s1, 310634
                  bge          t0, t4, 1190f
1183:             beq          t2, t3, 1191f
1184:             andi         s11, t4, 1211
1185:             bltu         s11, s0, 1203f
                  addi         s9, s4, -1257
1187:             xori         s8, s7, 581
                  sltu         a4, s11, t5
                  srl          a2, t3, t0
1190:             add          t3, t4, s2
1191:             bge          a2, a4, 1203f
                  or           s9, s5, a5
                  andi         s11, s5, -198
                  sub          s11, a7, s3
                  bgeu         t0, a3, 1202f
                  srli         a2, s9, 19
                  xor          s11, s9, s4
                  bgeu         s5, t5, 1214f
                  bne          a5, s7, 1206f
                  andi         s0, t0, -1828
                  and          a5, a3, a3
1202:             slli         s7, gp, 8
1203:             nop
                  addi         ra, s8, -1382
                  ori          sp, gp, -34
1206:             bne          a4, t2, 1214f
                  sltu         s11, a4, t0
                  and          s10, s11, a6
                  lui          gp, 32061
                  srli         s0, s10, 11
                  beq          a7, a5, 1225f
                  xori         s3, s9, -342
                  add          sp, s11, t5
1214:             and          s3, tp, a6
                  srai         t4, a5, 18
                  and          a3, a4, s11
                  srai         zero, a3, 21
                  sll          tp, t4, a0
                  srli         s10, gp, 26
                  xori         tp, s0, -1845
                  sll          a2, s9, gp
                  bge          a5, s2, 1241f
                  srai         s1, sp, 9
                  sll          s11, gp, t1
1225:             ori          s11, t5, -1437
                  sltu         ra, t0, a5
                  addi         s0, a2, 471
                  bne          s2, s1, 1240f
                  auipc        tp, 983016
                  add          t1, t6, ra
                  sub          t6, s1, gp
                  nop
                  bgeu         s4, gp, 1239f
                  sltu         s5, s1, t3
                  slt          s7, gp, t3
                  srai         t4, s8, 15
                  blt          a6, s11, 1250f
                  sltiu        t4, s3, 881
1239:             nop
1240:             beq          tp, a5, 1247f
1241:             and          t1, t6, sp
                  xori         ra, zero, 913
                  srai         s4, a0, 14
                  bgeu         a2, s3, 1249f
                  add          s5, s1, sp
                  slti         s4, a6, -152
1247:             srli         a5, a1, 21
                  beq          a1, t0, 1256f
1249:             or           t3, s3, s5
1250:             xori         s4, ra, -1345
                  bne          s3, a4, 1259f
                  srai         t4, t0, 31
                  lui          s9, 51125
                  sub          t6, a2, s4
                  srli         a7, s5, 10
1256:             xor          a1, tp, s6
                  slli         s4, a1, 9
                  nop
1259:             xor          s4, t2, a7
                  sll          a7, ra, a0
                  or           a1, a0, s11
                  sub          t2, t6, s6
                  srli         a3, s8, 27
                  xor          a5, t2, s8
                  srli         a3, s1, 0
                  lw           gp, 4(a0)
                  slti         ra, s1, -1029
                  sltiu        zero, t4, -648
                  srli         s9, s2, 20
                  srli         a2, a4, 31
                  addi         a0, a0, 36
                  lui          a2, 835903
                  ori          t2, ra, -1741
1756:             addi x29, x3, 1
1756:             jalr x29, x29, 0
sub_10:           nop
                  blt          s8, t4, sub_10_stack_p
sub_10_stack_p:   addi         a0, a0, -56
                  and          a7, t3, a5
                  sw           gp, 4(a0)
                  slti         t3, a7, 1233
                  la           t6, region_1+347 #start riscv_load_store_rand_instr_stream_0
                  slli         a6, gp, 10
                  lb           s10, 26(t6)
                  xori         s10, s1, 1535
                  slli         s8, s9, 5
                  lhu          zero, 55(t6)
                  xori         t1, s4, -1942
                  and          s4, s0, t6
                  lbu          s4, 55(t6)
                  slli         gp, t0, 30
                  lh           zero, 17(t6)
                  add          s8, a5, t2
                  nop
                  lb           zero, -60(t6)
                  auipc        s7, 359198
                  lhu          sp, 31(t6)
                  xor          a5, s5, gp
                  sb           a6, -22(t6)
                  slli         a4, gp, 5
                  sb           s8, 46(t6)
                  andi         s0, t5, -1132
                  sltiu        t4, a6, 176
                  srai         t5, a1, 22
                  lb           a3, -20(t6)
                  sra          t4, s3, a1
                  srl          a4, s1, a0
                  add          a3, s8, t3
                  lh           a1, 47(t6)
                  lh           s9, 55(t6)
                  lb           t5, 55(t6)
                  and          zero, a7, a5
                  or           a5, t1, a5
                  and          s4, s5, a6
                  sb           a5, 63(t6)
                  sh           s9, 15(t6)
                  nop
                  sra          a5, a2, sp
                  lh           a5, 59(t6)
                  add          t2, sp, s11
                  lh           t2, 11(t6)
                  lbu          s1, -23(t6)
                  lhu          s0, -11(t6)
                  sll          s1, t1, s4
                  sw           s5, -19(t6)
                  lbu          s10, 32(t6)
                  lw           ra, -31(t6)
                  sb           t4, -5(t6)
                  nop
                  lb           sp, 28(t6)
                  lbu          s5, 22(t6)
                  sh           s0, 19(t6)
                  addi         s9, s8, -506
                  lhu          s10, -3(t6) #end riscv_load_store_rand_instr_stream_0
                  xori         a5, a0, 988
                  nop
                  blt          sp, a5, 18f
                  bne          s8, a7, 16f
                  sll          gp, a1, a6
                  bne          gp, a0, 25f
                  and          t6, s4, a5
                  blt          t3, t0, 14f
                  bltu         gp, ra, 9f
9:                srli         t6, a0, 26
                  srl          s3, zero, a3
                  xor          t1, s8, s6
                  bge          s6, s3, 18f
                  nop
14:               sltu         s9, a2, t0
                  bge          a3, a1, 21f
16:               srai         s0, a4, 11
                  slt          s3, tp, a3
18:               sltiu        s8, s6, -1855
                  lui          tp, 996038
                  ori          a5, s1, -1635
21:               srl          zero, s0, s2
                  slt          a1, s6, s0
                  slt          s4, t6, t6
                  sltu         s5, ra, a5
25:               nop
                  sll          zero, zero, tp
                  srli         t4, a0, 9
                  sll          a7, a4, s6
                  lui          zero, 172143
                  xori         s2, t4, -267
                  sub          t2, s3, zero
                  sltiu        a1, t6, -878
                  srl          t6, s8, ra
                  sub          t1, s10, zero
                  ori          ra, s6, -1810
                  xori         a3, ra, -1148
                  blt          s7, zero, 51f
                  beq          s10, s3, 49f
                  sltu         a5, s6, s2
                  addi         s9, t3, 71
                  bge          t3, gp, 51f
                  srli         s8, sp, 10
                  auipc        t6, 432054
                  bge          t3, s2, 56f
                  bge          tp, s9, 48f
                  or           gp, a4, s3
                  bne          s11, t4, 50f
48:               ori          s5, s8, -170
49:               and          zero, t4, s10
50:               bltu         s11, a4, 68f
51:               add          s1, t0, s3
                  bltu         gp, s0, 62f
                  add          a3, tp, s7
                  beq          tp, s4, 68f
                  xor          s8, t6, s11
56:               sltu         s10, s9, a6
                  add          a5, a4, t0
                  andi         t5, a0, -1082
                  and          s7, t5, a5
                  bltu         sp, t1, 63f
                  slti         s7, t4, -1125
62:               slti         s0, s0, 1037
63:               bltu         t1, s3, 80f
                  blt          tp, a0, 66f
                  srli         t1, a0, 27
66:               sltu         t3, s2, a5
                  andi         s11, s9, -33
68:               xori         s5, zero, -1435
                  xori         s8, a3, 1435
                  bgeu         a3, s9, 74f
                  bltu         s9, a4, 89f
                  sub          t4, t6, s9
                  lui          t2, 504067
74:               sub          s9, tp, s4
                  srli         s8, t3, 11
                  slli         t6, t4, 22
                  srli         t6, a1, 31
                  lui          s5, 105729
                  srai         s10, s10, 5
80:               andi         s2, t2, -1690
                  auipc        a4, 221908
                  slt          tp, t2, s6
                  lui          a6, 454775
                  sra          t1, s2, s1
                  nop
                  srli         s0, s2, 4
                  srl          a1, a5, s6
                  beq          s11, s11, 90f
89:               xor          tp, a7, s11
90:               xor          t2, a5, a1
                  addi         a1, s8, -1806
                  sltu         t4, s7, t2
                  xor          tp, sp, s11
                  srai         a7, s0, 6
                  or           s1, s3, s6
                  srli         s9, t4, 31
                  xor          t6, a5, s10
                  and          s7, a5, ra
                  blt          s4, sp, 100f
100:              blt          a1, s10, 112f
                  auipc        s9, 308936
                  lui          a2, 149462
                  slt          s7, s3, t5
                  slli         sp, a3, 3
                  add          t2, s2, a0
                  nop
                  sltiu        s7, t5, 172
                  or           ra, a5, a5
                  sltu         t3, t6, t4
                  slt          a1, s8, t0
                  slti         tp, a7, 418
112:              slli         gp, t6, 11
                  bne          a0, t6, 115f
                  srai         s7, s10, 28
115:              or           t2, s5, s3
                  slti         gp, t1, 657
                  bge          sp, zero, 118f
118:              bltu         s10, tp, 121f
                  xori         s2, ra, 977
                  sltu         s4, a4, t0
121:              ori          a7, a5, 1503
                  sltiu        t1, tp, -1894
                  blt          s0, s1, 141f
                  sra          t5, zero, t1
                  bgeu         s11, s7, 130f
                  blt          t3, a0, 131f
                  xori         a2, gp, 2016
                  auipc        a2, 658885
                  srli         a6, sp, 17
130:              sra          s7, t1, s3
131:              bne          a7, t0, 149f
                  slti         t2, a1, -427
                  bltu         s7, a3, 134f
134:              xori         gp, s7, -825
                  lui          s9, 714614
                  sltiu        t2, s9, -365
                  srai         t4, s4, 5
                  slt          t5, a6, t2
                  bne          s11, t2, 141f
                  slli         a6, s8, 21
141:              srl          a7, a3, t0
                  sub          s5, t5, s1
                  sll          a3, gp, a3
                  beq          tp, a2, 146f
                  add          zero, s9, s11
146:              bge          t6, ra, 160f
                  xor          a4, s4, sp
                  andi         s8, a6, -1651
149:              xor          t4, a1, s0
                  bltu         zero, tp, 153f
                  sltiu        a6, a1, -1947
                  sub          t2, tp, s7
153:              slli         t6, s9, 9
                  auipc        tp, 827742
                  bltu         a7, a0, 173f
                  slt          a4, s5, s7
                  srai         a3, sp, 17
                  auipc        s9, 455933
                  sltu         s3, s7, t4
160:              slt          tp, t5, a5
                  xori         t5, s6, 1059
                  sltu         gp, s3, a3
                  lui          t4, 413723
                  lui          s3, 565574
                  sub          s2, s5, s3
                  srli         a5, zero, 15
                  slli         gp, s6, 26
                  sll          t4, a6, a4
                  beq          t0, s2, 186f
                  andi         t1, a4, 1643
                  sra          a6, s9, s9
                  srli         zero, s2, 2
173:              xor          s3, s2, gp
                  slli         a1, zero, 12
                  bge          s4, ra, 181f
                  srli         gp, tp, 17
                  sra          a6, a3, s10
                  xor          t5, t2, s0
                  slti         t3, t2, -1809
                  ori          t5, a2, 299
181:              sltiu        t3, ra, 1570
                  addi         tp, s5, -1488
                  andi         gp, t4, 1501
                  bgeu         s9, s2, 204f
                  lui          a7, 114486
186:              lui          s11, 979090
                  xori         s2, a0, -332
                  sll          s0, zero, t0
                  and          s5, tp, a0
                  sub          t5, s11, s6
                  and          t1, a1, t3
                  add          s5, gp, s4
                  andi         t3, s5, -982
                  add          s10, a2, s6
                  beq          a0, s11, 198f
                  or           s9, t1, a4
                  or           t1, sp, a0
198:              srl          a6, t0, a2
                  bltu         t6, s10, 200f
200:              srai         t3, a7, 2
                  slt          t6, a4, sp
                  sll          s2, zero, s7
                  sltiu        sp, a4, 154
204:              bne          s0, s10, 215f
                  bltu         s0, a6, 210f
                  xori         t2, s10, -1651
                  srl          a2, s10, s2
                  ori          s10, a1, -106
                  add          t6, t0, t4
210:              or           a1, s0, s7
                  sltiu        a2, a7, 1033
                  sltiu        t3, a2, -307
                  srli         a7, s7, 2
                  slti         t4, a5, 554
215:              xori         t2, a3, 1823
                  sub          t1, s5, a2
                  andi         a2, s7, 1035
                  slti         s11, s5, -1926
                  bgeu         a6, t4, 221f
                  sltiu        s1, zero, -1295
221:              lui          t6, 468004
                  ori          gp, s5, 867
                  srli         t6, t6, 27
                  bge          zero, zero, 234f
                  sub          s10, t5, s11
                  xori         t6, a1, 437
                  sra          a7, zero, s4
                  slt          s8, t0, s2
                  or           a4, gp, a7
                  blt          a2, s3, 233f
                  bge          t6, s11, 244f
                  sub          a1, s6, s8
233:              bne          s9, a0, 243f
234:              bltu         t3, a3, 244f
                  addi         tp, tp, 221
                  and          t3, t5, tp
                  bltu         s2, t0, 244f
                  add          s5, a4, s9
                  bne          t5, s5, 244f
                  xori         a6, a5, 897
                  slt          s5, a6, s2
                  add          s3, t4, t2
243:              xori         s1, s3, 799
244:              and          t3, a5, a1
                  lw           gp, 4(a0)
                  sll          tp, a5, t6
                  addi         a0, a0, 56
                  or           a2, t6, s10
                  and          s2, a6, s9
309:              addi x18, x3, 0
309:              jalr x18, x18, 0
sub_5:            blt          s6, sp, sub_5_stack_p
                  or           t2, s10, a4
                  slli         s0, s1, 3
                  srl          s7, a3, s4
sub_5_stack_p:    addi         a0, a0, -12
                  sw           gp, 4(a0)
                  srai         a2, s4, 12
                  add          zero, tp, s2
                  srai         s8, s6, 0
                  addi         s8, s6, -509
                  or           t6, t3, a6
                  nop
                  slt          ra, t2, sp
sub_5_j8:         jal          gp, sub_8 #jump sub_5 -> sub_8
                  ori          s0, s5, 1859
                  and          s7, t6, t5
                  sra          t2, t0, t3
                  sra          s5, ra, t5
                  add          t1, a3, s0
                  auipc        t6, 406606
                  blt          gp, s3, 25f
                  bgeu         sp, a1, 18f
                  sub          zero, s3, a3
                  xori         zero, s7, 1757
                  bltu         gp, t0, 21f
                  sll          t6, a4, s4
                  bltu         a0, s6, 26f
                  andi         t5, t0, -576
                  bne          zero, t3, 27f
                  bge          a2, sp, 19f
                  add          t2, t1, s11
                  xori         gp, a0, 340
18:               addi         s2, a1, 1222
19:               and          t3, t2, t0
                  sltu         s8, a0, t0
21:               blt          sp, a0, 30f
                  srl          sp, s5, sp
                  blt          t1, tp, 30f
                  sll          t3, s8, a7
25:               add          t5, s1, s0
26:               slli         zero, t1, 3
27:               sra          a6, t3, a2
                  or           s0, t4, sp
                  beq          a4, s9, 30f
30:               xor          gp, a1, a6
                  lw           gp, 4(a0)
                  srl          t6, ra, sp
                  sub          a1, s5, s3
                  lui          ra, 723576
                  lui          s10, 541468
                  addi         a0, a0, 12
                  xor          t1, a1, s7
                  slt          t4, tp, t3
                  srai         s0, a4, 20
                  auipc        t2, 300485
                  lui          s11, 573549
56:               addi x19, x3, 1
56:               jalr x19, x19, 0
sub_1:            srl          a2, t1, a1
                  sra          a2, ra, s1
                  bltu         t1, a2, sub_1_stack_p
                  srli         a1, s10, 21
                  lui          zero, 715520
                  or           a6, s4, a5
                  addi         s1, s6, 1775
sub_1_stack_p:    addi         a0, a0, -56
                  sll          a7, s11, s11
                  sra          tp, s1, gp
                  sw           gp, 4(a0)
                  srli         a5, s2, 19
                  la           sp, region_0+366 #start riscv_load_store_rand_instr_stream_3
                  lb           tp, -5(sp)
                  or           s10, a3, s8
                  slt          s7, s3, s2
                  slt          a6, tp, zero
                  lbu          s3, 17(sp)
                  sb           s11, 4(sp)
                  xor          a5, a3, a5
                  sw           a4, -2(sp)
                  sltiu        a3, s5, -1137
                  sltiu        a3, a6, -2014
                  sra          t5, a4, s5
                  slli         s4, a0, 13
                  lh           s3, -24(sp)
                  sub          a1, a2, s10
                  lw           a6, -62(sp)
                  srl          s5, s8, s8
                  or           s11, t5, a4
                  lb           t4, 23(sp)
                  lbu          a4, -44(sp)
                  lb           ra, 21(sp)
                  and          t2, s5, s0
                  auipc        s8, 143593
                  lb           tp, 9(sp)
                  sll          s2, sp, s10
                  sb           s10, 21(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s3, region_1+364 #start riscv_load_store_rand_instr_stream_0
                  and          zero, a6, s4
                  sb           a7, 7(s3)
                  lb           a2, -47(s3)
                  sb           s1, -55(s3)
                  auipc        s1, 730795
                  add          a3, s5, a6
                  sh           s1, -54(s3)
                  lb           t3, 45(s3)
                  lbu          s9, 47(s3)
                  sltu         a2, s3, sp
                  lb           a7, -61(s3)
                  sra          tp, s1, a2
                  add          s11, a2, s7
                  sw           sp, -36(s3)
                  sh           a2, -12(s3)
                  lbu          t4, 6(s3)
                  sh           s11, 64(s3)
                  lbu          a1, 20(s3)
                  srl          ra, s11, s7
                  lui          gp, 622514
                  ori          ra, a7, -1416
                  lui          s0, 102801
                  add          a1, a6, s11
                  lbu          t2, 6(s3)
                  lb           s7, -17(s3)
                  lb           s7, -61(s3)
                  sb           a6, -57(s3)
                  sll          a6, t0, ra
                  lbu          s10, -19(s3) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+944 #start riscv_load_store_rand_instr_stream_6
                  sb           sp, -7(a7)
                  lb           s11, 5(a7)
                  add          t5, s4, a5
                  sh           s2, -2(a7)
                  sltu         s9, sp, a1
                  lw           s9, -16(a7)
                  sh           a2, -16(a7)
                  lh           t6, 2(a7)
                  lh           a5, 14(a7)
                  slti         tp, s11, 1354
                  sb           t2, 15(a7)
                  sltu         s5, s10, a3
                  lbu          s8, -8(a7)
                  lbu          a4, 13(a7)
                  srl          s1, s6, t1
                  lbu          s7, -15(a7)
                  xori         tp, t0, 7
                  addi         a4, a6, 1016
                  lhu          a6, -8(a7)
                  lb           t5, 10(a7)
                  lh           s11, 8(a7)
                  lbu          t4, -14(a7)
                  lhu          s4, -12(a7)
                  lh           a6, -6(a7)
                  xor          sp, s8, tp
                  sb           zero, -15(a7)
                  sw           s5, -4(a7)
                  add          a1, s3, ra
                  lhu          s4, 14(a7)
                  sltiu        s0, t4, 1757
                  sw           t0, 4(a7)
                  xor          s1, s1, t1
                  slt          zero, s9, t3
                  srai         ra, a0, 7
                  lw           a1, 12(a7)
                  sw           s5, -8(a7)
                  sw           a5, 0(a7)
                  sll          s7, s6, s2
                  lbu          sp, -6(a7)
                  lhu          s10, -14(a7)
                  lb           s11, -11(a7) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+64 #start riscv_load_store_rand_instr_stream_2
                  lh           s8, 22(tp)
                  sb           t4, 7(tp)
                  srli         s4, a1, 13
                  srai         ra, t3, 7
                  srli         t2, tp, 30
                  nop
                  sb           s2, 171(tp)
                  or           a1, a2, a2
                  lbu          a5, 162(tp)
                  lbu          s2, 130(tp)
                  lbu          a1, -10(tp)
                  sltu         a3, s7, a6
                  sw           s3, 240(tp)
                  slli         gp, zero, 29
                  slti         a5, s2, 658
                  lb           zero, 93(tp)
                  sb           s4, 142(tp)
                  srl          s9, t5, tp
                  ori          a7, s1, -1477
                  lbu          zero, -26(tp)
                  addi         a4, t1, -1077
                  slti         a3, gp, 1430
                  add          s9, s7, s0
                  xor          s2, gp, s2
                  lb           a1, 113(tp)
                  lbu          t4, 232(tp)
                  lb           s10, -35(tp)
                  slti         t4, t1, -1835
                  sra          s7, zero, s9
                  slti         zero, gp, -251
                  lb           zero, 101(tp)
                  sb           ra, 139(tp)
                  lh           ra, 254(tp)
                  sh           ra, 78(tp)
                  sb           s5, 103(tp)
                  lbu          a4, 227(tp)
                  lb           t6, -18(tp)
                  lb           s9, 188(tp)
                  sb           zero, -3(tp)
                  sb           gp, -31(tp) #end riscv_load_store_rand_instr_stream_2
                  slt          s4, sp, s5
                  bne          a7, s5, 7f
                  bltu         ra, gp, 7f
                  lui          ra, 658319
                  addi         t5, s0, 255
                  nop
                  srl          s10, t3, s0
                  sub          a2, t4, s1
                  sll          s7, s9, zero
                  sub          s1, s1, t0
sub_1_j6:         jal          gp, sub_6 #jump sub_1 -> sub_6
                  blt          s4, gp, 24f
                  beq          t0, gp, 12f
                  add          s0, s10, tp
7:                bge          a2, s1, 17f
                  bgeu         s10, s5, 24f
                  xor          t5, a7, ra
                  slli         a6, sp, 15
                  bgeu         s4, t0, 28f
12:               bltu         gp, a4, 15f
                  auipc        t6, 757330
                  or           s11, a7, tp
15:               srai         a6, s6, 26
                  add          s2, sp, t1
17:               slli         a6, s0, 22
                  blt          s0, s8, 19f
19:               beq          a0, a7, 32f
                  srli         a5, ra, 30
                  xori         a3, s3, 1954
                  srl          s2, s6, a2
                  beq          a5, s5, 30f
24:               or           gp, s6, tp
                  sub          a1, t0, ra
                  blt          s7, s10, 37f
                  srli         a1, s6, 4
28:               nop
                  add          zero, s3, sp
30:               addi         s3, t0, 1478
                  ori          a4, t6, -561
32:               xori         gp, t0, -1951
                  srli         a7, s10, 28
                  xori         a4, a2, -223
                  sub          sp, s10, t3
                  andi         a1, s3, -67
37:               beq          zero, s1, 52f
                  srl          t2, zero, s0
                  xori         t6, s5, 909
                  blt          s7, a7, 43f
                  bltu         s8, s0, 59f
                  auipc        s3, 885434
43:               addi         a5, a4, -418
                  sll          t1, a3, s7
                  xor          s0, t2, s5
                  sll          s3, s6, s4
                  srai         tp, a4, 19
                  bgeu         s1, s5, 62f
                  beq          a4, a4, 62f
                  ori          s10, s9, -1938
                  slli         t6, t0, 7
52:               bltu         t5, t2, 70f
                  slli         t2, s11, 18
                  slti         a5, t5, -352
                  xori         s1, a7, 1656
                  bgeu         t4, t4, 75f
                  sltu         a7, s10, s7
                  bgeu         t3, t2, 74f
59:               nop
                  slti         t2, s8, 619
                  sll          tp, s7, s0
62:               blt          a4, a5, 65f
                  andi         s9, t2, -1295
                  srl          s4, a4, a1
65:               xor          a4, s11, s10
                  ori          s3, t4, -840
                  xori         s9, s1, -1648
                  srai         a7, s0, 21
                  auipc        a1, 589544
70:               nop
                  blt          tp, t3, 75f
                  slt          s1, t6, a2
                  bne          t6, zero, 87f
74:               add          s0, s10, s11
75:               srli         gp, t1, 27
                  ori          gp, a6, -1355
                  bltu         t4, s8, 78f
78:               slli         s5, s0, 19
                  srai         a7, t6, 19
                  sub          s4, t6, s7
                  blt          t5, ra, 98f
                  slli         a3, tp, 12
                  srai         a6, a6, 21
                  add          s5, tp, s4
                  bge          s9, a2, 98f
                  xor          s0, s8, a7
87:               blt          s8, s7, 102f
                  srai         t5, s5, 15
                  blt          s3, s7, 97f
                  srl          a2, t4, t4
                  or           sp, t3, s0
                  andi         s0, t3, 292
                  and          tp, tp, a7
                  xor          t3, a5, s4
                  and          s3, t2, s7
                  srl          s4, a3, s11
97:               add          a5, gp, s9
98:               xor          s11, s5, s10
                  andi         zero, ra, -1643
                  bltu         t5, a3, 105f
                  add          t6, s11, s10
102:              bgeu         t1, s10, 110f
                  sll          a7, s3, a0
                  add          ra, s11, t2
105:              srai         t6, s6, 17
                  addi         ra, a1, -1407
                  auipc        s11, 964769
                  slli         s5, s4, 14
                  bne          ra, ra, 124f
110:              slli         a1, zero, 25
                  sub          s5, s5, zero
                  or           s1, ra, ra
                  bge          s7, s8, 129f
                  bltu         s7, t0, 117f
                  sll          a1, s2, a0
                  lui          s7, 489911
117:              srli         a5, a1, 31
                  bge          a5, sp, 133f
                  bgeu         s11, s5, 127f
                  xori         gp, a0, 1916
                  sltu         t6, a0, tp
                  blt          tp, t0, 139f
                  lui          s0, 822320
124:              srli         s4, a3, 6
                  addi         s3, s2, -1735
                  add          t4, tp, a2
127:              bltu         a4, a0, 145f
                  or           a1, a4, s7
129:              and          s2, s4, a3
                  auipc        gp, 413499
                  srli         s9, t4, 24
                  sll          s3, a5, a5
133:              andi         s2, tp, 933
                  sra          a5, s11, a4
                  xori         s7, tp, -1519
                  srai         sp, a6, 22
                  sra          t1, s2, gp
                  sltiu        s8, a7, 113
139:              sltiu        s8, s0, -1285
                  slti         a5, t1, 43
                  addi         s11, zero, 1312
                  srai         ra, t4, 16
                  srli         zero, s9, 29
                  ori          a5, tp, -318
145:              srl          gp, gp, s6
                  srli         s9, s0, 25
                  bltu         ra, zero, 157f
                  blt          t3, s7, 161f
                  xori         gp, s2, -447
                  ori          s7, t1, 1736
                  srl          s2, t3, s11
                  bltu         sp, s6, 156f
                  srai         s3, t4, 18
                  lui          s8, 1011618
                  srai         s1, a5, 28
156:              nop
157:              bltu         t3, s0, 158f
158:              bltu         t5, t4, 163f
                  beq          a0, t6, 172f
                  srl          a1, sp, t2
161:              blt          s0, s11, 167f
                  sra          zero, t2, s10
163:              add          t5, s9, a1
                  slli         a6, ra, 11
                  bne          s3, t2, 168f
                  blt          a2, t6, 169f
167:              srl          s7, s1, s5
168:              nop
169:              andi         s11, gp, -112
                  blt          a0, s1, 184f
                  add          a1, t4, t1
172:              and          sp, gp, tp
                  or           s8, zero, s10
                  andi         a7, s2, -525
                  srai         s8, gp, 9
                  blt          a4, a1, 193f
                  xor          t2, t1, a6
                  sltiu        a6, a2, 1540
                  sub          s0, ra, s0
                  auipc        t1, 168962
                  auipc        gp, 914417
                  srli         zero, s10, 9
                  addi         a1, t0, 1786
184:              addi         t2, s10, 44
                  auipc        s2, 89254
                  slli         a1, a0, 1
                  srli         gp, s6, 30
                  lui          s8, 373977
                  blt          gp, gp, 202f
                  srli         t1, ra, 1
                  bne          s6, a2, 210f
                  sra          s11, a1, zero
193:              blt          a7, a4, 204f
                  blt          s8, s0, 201f
                  sltu         zero, s5, s6
                  or           s2, s5, s5
                  bne          s5, zero, 204f
                  slti         zero, sp, -412
                  bne          s10, s11, 213f
                  bne          s7, s9, 220f
201:              bne          a4, s3, 206f
202:              sltu         s11, s9, t4
                  srai         s9, a4, 9
204:              beq          s6, s0, 205f
205:              blt          t2, s8, 223f
206:              addi         s4, s1, -1203
                  lui          s11, 977321
                  lui          s4, 310926
                  bge          t2, s11, 217f
210:              and          s4, sp, s9
                  nop
                  srai         s11, a7, 20
213:              sub          a5, s5, s0
                  slli         s4, a4, 20
                  srli         t1, sp, 9
                  bltu         a6, s1, 232f
217:              sra          t4, a1, a2
                  sra          s3, s9, s11
                  add          a6, t3, s9
220:              srli         s8, a6, 6
                  sltu         a5, t3, a5
                  sll          s8, t5, s7
223:              or           gp, s8, t0
                  beq          sp, s6, 228f
                  sub          t3, t5, a7
                  sltu         s5, s10, a5
                  sub          tp, a6, s4
228:              bne          a6, a0, 236f
                  bgeu         s10, a0, 242f
                  lui          a6, 917897
                  beq          s3, t0, 247f
232:              or           a4, t5, t1
                  sltiu        s5, a1, 1712
                  xori         gp, s4, -3
                  bne          s7, s3, 253f
236:              slli         a4, s3, 4
                  xor          t3, t4, gp
                  srli         a2, t0, 27
                  srli         a5, a4, 17
                  andi         t1, a0, -929
                  lui          zero, 1045893
242:              and          a7, s8, a1
                  xor          t5, t2, s9
                  slt          a6, t3, ra
                  xor          s9, a2, s4
                  auipc        t5, 493888
247:              xor          a5, s7, s4
                  andi         s5, a0, 1086
                  bge          s0, a0, 254f
                  srl          t2, s4, s1
                  xor          t5, s0, t5
                  sra          gp, t1, s9
253:              blt          tp, a2, 269f
254:              addi         tp, a7, -254
                  srl          a3, a4, a5
                  slti         a3, t5, 1931
                  sltiu        s0, a1, -489
                  sltiu        a4, a6, 1847
                  sltu         s9, sp, s3
                  slli         tp, s3, 28
                  sltu         gp, a6, a3
                  nop
                  sra          s1, s1, t3
                  bne          t2, a6, 283f
                  nop
                  srli         ra, s10, 19
                  srai         s2, sp, 12
                  or           s10, t1, a4
269:              blt          s4, a0, 283f
                  bne          s5, s6, 277f
                  ori          s5, t2, -1553
                  sra          s0, s4, s1
                  slli         sp, s11, 10
                  ori          t1, tp, -153
                  or           s8, s0, t3
                  bltu         a7, zero, 279f
277:              srl          t6, s11, sp
                  blt          s10, tp, 296f
279:              bgeu         tp, tp, 294f
                  bne          a7, a0, 291f
                  sltu         ra, t2, s7
                  srli         s3, s6, 25
283:              sll          a7, a7, a6
                  add          sp, s1, a0
                  slli         gp, a2, 8
                  sub          t1, t1, a7
                  addi         t2, s0, -1264
                  sltiu        s9, s9, -884
                  sll          a6, s11, s10
                  ori          ra, t3, -51
291:              xori         t2, t2, -851
                  sltiu        sp, s2, -1395
                  srli         s9, gp, 31
294:              sra          a3, a6, s10
                  slt          s2, s6, tp
296:              blt          gp, a5, 299f
                  sltu         a7, a5, a1
                  slt          s11, s4, sp
299:              sll          s2, a3, s6
                  auipc        s0, 250626
                  sub          t6, s7, s5
                  blt          a0, t3, 319f
                  addi         s4, s6, -106
                  and          sp, s11, s1
                  xori         s8, gp, -1399
                  auipc        s0, 835351
                  xori         s10, t6, -1218
                  nop
                  or           s10, a2, s6
                  slli         a4, s1, 8
                  sll          tp, s7, a6
                  srli         a6, a5, 5
                  sltiu        s11, a3, -971
                  beq          t6, zero, 319f
                  auipc        s11, 941901
                  sltu         t6, tp, a4
                  sub          a6, t1, s0
                  ori          a2, s0, -1462
319:              auipc        s2, 729690
                  sll          s8, s6, a4
                  slli         s5, a5, 10
                  lui          a2, 705338
                  addi         ra, sp, 833
                  srl          t1, t4, tp
                  and          a3, t4, t2
                  xori         s3, a6, -1591
                  sll          s8, a0, sp
                  lui          gp, 397500
                  ori          a3, a6, 1935
                  or           s3, a1, s7
                  lui          a1, 83305
                  sltu         a3, tp, s2
                  srli         t2, t2, 12
                  bne          s6, s6, 340f
                  bge          a0, tp, 336f
336:              srai         s9, a6, 27
                  slli         a5, a1, 23
                  nop
                  add          a6, ra, a4
340:              srli         t1, s7, 8
                  sll          t3, a7, s6
                  xor          ra, a0, a1
                  blt          t0, s11, 357f
                  xori         s10, a2, -348
                  xori         t5, t1, -1731
                  sub          s7, s2, s0
                  sltu         a5, s6, t1
                  ori          a3, s9, -567
                  bge          tp, tp, 352f
                  and          s5, s5, t5
                  lui          s0, 787731
352:              andi         s10, t5, -583
                  and          s3, zero, s4
                  xori         s2, t4, -1387
                  or           a5, gp, t0
                  sltu         t2, s10, ra
357:              add          a2, t4, sp
                  bge          t4, s1, 365f
                  and          s7, zero, t5
                  sltiu        ra, s3, -465
                  bge          s1, s4, 376f
                  sltu         s11, gp, sp
                  sltiu        ra, zero, 1639
                  srl          s4, t2, a3
365:              slt          s10, zero, a6
                  auipc        tp, 10077
                  srli         s9, a3, 9
                  srl          a4, s9, s11
                  srai         a6, s1, 24
                  slli         s4, t3, 17
                  and          a7, a2, t2
                  add          t4, t1, a3
                  bgeu         s9, a3, 374f
374:              xori         t5, s11, -472
                  sll          s5, a3, a1
376:              xor          a7, a1, s7
                  bgeu         a3, tp, 387f
                  sltu         s1, a5, sp
                  slti         zero, tp, -1111
                  bltu         s4, a4, 393f
                  bge          t4, s11, 401f
                  or           tp, s6, s11
                  bne          tp, t4, 400f
                  blt          a2, a6, 392f
                  or           s10, t4, s0
                  nop
387:              addi         a3, t6, 632
                  nop
                  slti         s3, tp, 64
                  xor          t1, a4, tp
                  andi         sp, a3, -147
392:              andi         a7, t5, -659
393:              addi         t3, t1, -1362
                  xori         a3, a1, 1802
                  or           t2, zero, a1
                  slli         a6, a7, 7
                  bltu         a6, tp, 410f
                  bne          s7, s4, 416f
                  lui          s3, 1025928
400:              srl          s8, s11, t6
401:              or           zero, s9, a6
                  xori         sp, gp, 69
                  bgeu         a5, ra, 410f
                  xori         s9, gp, 1382
                  bne          a6, s10, 406f
406:              sub          ra, a3, t4
                  sub          s3, a1, s7
                  sub          zero, a7, s0
                  sra          s1, t6, zero
410:              slt          zero, t6, s10
                  bge          s8, t6, 425f
                  srli         s11, s3, 13
                  or           s7, s10, a6
                  sltiu        a1, s3, 1241
                  addi         s4, s4, 511
416:              bge          t3, s4, 417f
417:              nop
                  auipc        s9, 328399
                  nop
                  slt          a6, s10, t3
                  or           s10, a1, ra
                  slli         s11, gp, 17
                  slti         s11, s7, 318
                  beq          a2, a2, 435f
425:              sltu         a2, a2, a4
                  addi         a1, s6, 704
                  srai         s5, s2, 6
                  ori          ra, s0, 1937
                  srai         s7, tp, 5
                  sra          t4, sp, s8
                  and          a6, s5, a3
                  nop
                  add          a4, a6, a0
                  sltu         s1, s10, t1
435:              sltiu        t5, sp, -513
                  and          a4, a5, s9
                  slt          a6, s0, s0
                  sra          t2, s10, a1
                  sltiu        s0, s4, -1279
                  bltu         s5, t2, 447f
                  slti         sp, a1, 2003
                  nop
                  slli         s0, s4, 22
                  andi         a7, gp, -374
                  andi         a5, a7, 24
                  la           sp, region_0+1832 #start riscv_load_store_rand_instr_stream_1
                  sll          s3, s3, t0
                  slli         s11, s10, 3
                  xor          a3, t4, s4
                  auipc        a2, 83051
                  lh           a6, 32(sp)
                  xor          t5, s3, s11
                  sltiu        s8, s6, -1276
                  ori          s4, s5, 148
                  lbu          s9, -1029(sp)
                  sltiu        s11, s10, 237
                  add          a3, t5, s10
                  srai         s7, a2, 9
                  or           t6, t3, s4
                  andi         a2, s9, -1668
                  xori         s2, s7, -1921
                  xor          s1, a6, s2
                  lbu          a7, -1645(sp)
                  lb           zero, 0(sp)
                  andi         s3, s1, 1373
                  lui          a2, 772308
                  lbu          s1, -43(sp)
                  lhu          ra, -234(sp)
                  nop
                  sb           a0, -1292(sp)
                  lb           t5, -998(sp)
                  slli         s9, s5, 14
                  lb           a6, -1619(sp)
                  add          s3, s3, s1
                  slt          s0, ra, a6
                  lw           t6, -284(sp)
                  and          s1, a5, a7
                  srl          zero, gp, s5
                  lbu          a4, -1761(sp)
                  sh           s9, -212(sp) #end riscv_load_store_rand_instr_stream_1
                  bne          ra, a2, 459f
447:              sltiu        t3, a3, -878
                  la           s5, region_0+164 #start riscv_load_store_rand_instr_stream_4
                  nop
                  slli         a6, a6, 16
                  xor          a6, s5, zero
                  srai         s1, s7, 6
                  and          a2, t6, t4
                  lh           s1, 52(s5)
                  add          t3, a5, a7
                  lbu          t1, 7(s5)
                  sb           s5, 9(s5)
                  lw           t6, -20(s5)
                  sb           s5, 43(s5)
                  xor          ra, tp, s7
                  addi         t3, s1, -1889
                  lbu          t6, -14(s5)
                  lbu          a3, -38(s5)
                  sltiu        a1, a4, 1653
                  lb           ra, 47(s5)
                  lb           t3, 24(s5)
                  xor          s1, sp, sp
                  or           t1, tp, sp
                  lbu          gp, 51(s5)
                  lb           a5, 47(s5)
                  sra          t1, gp, s9
                  lh           s11, 48(s5)
                  add          a3, s2, a4
                  addi         zero, s8, 1470
                  lbu          a6, -57(s5)
                  addi         s1, t0, -744
                  lb           a3, -50(s5)
                  sb           zero, -33(s5)
                  sb           zero, 58(s5) #end riscv_load_store_rand_instr_stream_4
                  and          t5, s1, a5
                  blt          s1, t6, 464f
                  andi         a5, a2, -1356
                  sltiu        t3, s8, 1939
                  xor          s8, s9, tp
                  srl          s9, a2, sp
                  sltu         a3, t4, s3
                  ori          t5, s11, -563
                  bgeu         s7, s11, 476f
                  slt          a6, s9, tp
                  xor          ra, s3, sp
459:              sub          ra, s6, s0
                  sltiu        t3, tp, -1340
                  auipc        t3, 33658
                  add          s11, a0, s0
                  ori          a1, t4, 1101
464:              bge          a2, a2, 483f
                  and          s5, a4, s3
                  slt          s0, t1, sp
                  beq          a4, s9, 481f
                  xor          t5, s5, a5
                  lui          tp, 805140
                  srl          s11, gp, a2
                  slt          sp, tp, s3
                  addi         t2, t0, -734
                  bgeu         gp, s4, 491f
                  addi         t2, a1, 1033
                  xor          s7, s5, zero
476:              beq          a1, a5, 480f
                  sub          a1, t0, t0
                  auipc        a7, 368500
                  andi         s3, s1, -1442
480:              srai         s1, s9, 26
481:              add          s1, a6, s3
                  beq          s5, s4, 485f
483:              slli         a2, a6, 0
                  andi         s5, s5, -1806
485:              sltiu        t4, a6, -1981
                  ori          a2, a5, -368
                  srli         t6, tp, 13
                  andi         a7, s1, 1
                  and          a1, s5, s11
                  bgeu         a7, a6, 493f
491:              add          sp, zero, a7
                  lui          sp, 343480
493:              and          sp, a4, tp
                  srli         a6, t1, 9
                  beq          a7, t6, 505f
                  lui          t6, 629743
                  add          gp, s8, t5
                  sltiu        s11, tp, 447
                  and          sp, t3, t0
                  lui          s4, 275292
                  sll          ra, s8, a2
                  bne          a4, a3, 518f
                  srli         a1, s8, 4
                  sub          t4, t0, s6
505:              auipc        zero, 952950
                  slti         s3, gp, 1949
                  slti         ra, sp, 1365
                  or           ra, t0, ra
                  srli         a7, t4, 29
                  bgeu         a6, s8, 526f
                  lui          s0, 805381
                  slli         a5, tp, 26
                  or           a7, s10, sp
                  sltiu        a1, a6, 1428
                  slti         s4, s7, 1611
                  sltiu        t5, s5, -687
                  xori         a6, s2, -815
518:              ori          ra, s4, -1624
                  srai         s5, s4, 2
                  bgeu         a6, s6, 535f
                  bge          s1, a2, 538f
                  bltu         gp, s5, 539f
                  xori         a3, t2, -1935
                  ori          a6, sp, -1137
                  bgeu         a2, s0, 530f
526:              lui          s10, 529130
                  or           zero, t4, s5
                  bgeu         t5, a4, 533f
                  sltiu        s1, s10, 253
530:              addi         a4, t6, -1147
                  srl          a4, s3, s9
                  la           t6, region_0+65 #start riscv_load_store_rand_instr_stream_5
                  add          a7, tp, sp
                  lbu          t5, 5(t6)
                  sb           s1, 0(t6)
                  sltiu        s0, s4, -261
                  and          a1, gp, t5
                  ori          s10, t4, -87
                  sltu         a3, s1, t5
                  sb           sp, -15(t6)
                  sra          s7, ra, s4
                  lh           s8, -13(t6)
                  lb           a1, -12(t6)
                  srl          a1, t0, t2
                  sltu         s5, a5, s2
                  xori         t2, s1, 145
                  sb           t5, -4(t6)
                  sub          s0, t0, a7
                  auipc        t4, 479028
                  sra          tp, a6, gp
                  sb           sp, -15(t6)
                  and          tp, t6, a6
                  sra          s0, a7, t3
                  add          a2, a0, s5
                  xor          t2, s10, s9
                  srl          a2, t3, sp
                  andi         s5, t6, 605
                  or           s8, s5, s0
                  slti         t2, a3, 1962
                  lh           a6, -3(t6)
                  sub          s0, a0, a5
                  and          s8, a7, t4
                  lhu          s2, -11(t6)
                  addi         t5, gp, 1056
                  and          a7, t1, a7
                  lhu          s5, -3(t6)
                  addi         s4, t3, 1358
                  sh           a5, -5(t6)
                  add          s5, t6, t1
                  and          a7, s0, a0
                  or           t3, s4, s11
                  srli         s3, a5, 17
                  lbu          s2, -9(t6) #end riscv_load_store_rand_instr_stream_5
                  sll          s3, a0, s3
533:              xori         s5, s1, 334
                  auipc        s5, 691841
535:              bltu         zero, s9, 548f
                  or           a2, t5, s2
                  bgeu         ra, gp, 545f
538:              sra          s9, gp, t0
539:              bltu         s7, s2, 542f
                  ori          ra, s3, -484
                  andi         t5, a2, 472
542:              bltu         s4, s7, 550f
                  and          sp, s8, a5
                  nop
545:              sll          ra, a5, a2
                  bgeu         t3, zero, 559f
                  blt          t1, t6, 553f
548:              srli         t4, s11, 9
                  srl          a2, t1, t3
550:              xor          t6, t2, t6
                  sltiu        t1, s0, 1414
                  xor          t6, s5, t1
553:              auipc        t1, 2126
                  bltu         t2, s4, 567f
                  nop
                  slti         tp, s5, -1131
                  srli         s10, s4, 21
                  andi         a5, gp, 398
559:              srli         s7, a2, 24
                  xor          t4, s7, s10
                  sltu         s8, s10, t1
                  xor          t6, s8, a6
                  sltu         zero, t1, ra
                  bge          t0, s10, 567f
                  slt          s9, a3, s8
                  add          t2, s7, s8
567:              blt          s6, s5, 577f
                  add          s7, a0, a2
                  beq          s3, t6, 570f
570:              or           a7, t3, s9
                  or           t2, s6, sp
                  ori          a2, tp, -1705
                  slli         a6, a2, 4
                  nop
                  auipc        sp, 906456
                  bltu         a4, t4, 594f
577:              bne          s6, s8, 596f
                  auipc        s2, 633255
                  or           s4, sp, a7
                  sll          s0, s2, tp
                  ori          a2, s2, -1234
                  sll          t4, a2, s8
                  lui          a2, 215755
                  slt          zero, t6, s11
                  nop
                  beq          gp, s5, 594f
                  xori         tp, t0, -1685
                  auipc        a2, 964194
                  auipc        t6, 511628
                  xori         t4, a2, 739
                  sll          s8, s7, s9
                  bgeu         a0, a7, 609f
                  sra          s3, s8, t0
594:              blt          a3, a7, 611f
                  and          t6, s11, a6
596:              sltiu        t3, s2, -1806
                  sltiu        s1, t0, 1210
                  or           a6, a0, t0
                  slti         t5, s8, -1482
                  ori          s9, a7, 103
                  blt          a2, zero, 605f
                  addi         a3, t2, -1971
                  srl          a6, t4, t5
                  lui          a2, 434626
605:              bltu         s0, a1, 610f
                  xor          t1, ra, s4
                  srai         s1, t6, 2
                  sll          a6, s9, a0
609:              lui          gp, 381044
610:              slti         s0, t5, -373
611:              bltu         t3, s4, 625f
                  and          a6, s8, t0
                  addi         a4, gp, -318
                  xor          a7, zero, a6
                  bgeu         s9, ra, 628f
                  bne          a2, s3, 623f
                  beq          a5, a1, 635f
                  bgeu         s3, a3, 625f
                  bne          s0, s5, 622f
                  blt          s9, a2, 636f
                  slti         t6, a5, -414
622:              bne          s1, a1, 628f
623:              sltiu        zero, a4, -969
                  sra          gp, gp, t6
625:              slti         a2, a6, 1218
                  lui          a2, 117533
                  xori         s7, s4, 132
628:              bne          s8, gp, 648f
                  srai         a4, s11, 0
                  ori          s4, zero, 332
                  sltiu        s1, ra, 770
                  sltiu        t1, tp, -1536
                  bne          a0, s9, 634f
634:              bltu         s10, a2, 647f
635:              nop
636:              xor          s7, s10, s7
                  srli         a3, t6, 12
                  auipc        t3, 502646
                  add          s0, t6, s4
                  sltiu        s11, s2, -1407
                  srli         tp, t0, 3
                  add          t4, s9, t1
                  addi         a2, ra, -1143
                  slti         s8, s5, 1826
                  or           t4, s7, t3
                  andi         s9, a7, 1140
647:              srli         t4, t6, 0
648:              add          s5, t1, t4
                  or           sp, s4, a5
                  bltu         a0, t2, 658f
                  or           s5, s1, s7
                  sltu         s4, t0, tp
                  andi         t6, a6, 1847
                  ori          a2, s9, -1928
                  bge          gp, s10, 669f
                  slt          a3, s8, t6
                  sub          t4, a0, s3
658:              bltu         s4, t5, 669f
                  srl          s2, gp, a1
                  ori          s5, tp, -1217
                  lui          s2, 164386
                  bge          t0, a6, 665f
                  lui          s5, 360952
                  sltiu        s0, s10, 786
665:              or           s3, a6, a3
                  sll          t1, s2, gp
                  sll          t4, sp, t2
                  srl          s0, a6, t4
669:              or           s10, s7, t3
                  sll          tp, s7, s6
                  sltiu        a2, t0, 901
                  andi         s4, a1, 292
                  srli         t1, t2, 13
                  sub          ra, t4, s2
                  xor          t4, a5, a3
                  nop
                  slt          a3, t4, s7
                  sltu         s1, s8, s6
                  sub          s3, t0, a6
                  addi         t6, zero, 602
                  sll          s4, a6, t6
                  slli         a7, a6, 27
                  add          a7, s4, a2
                  beq          a5, tp, 699f
                  bgeu         s2, a7, 700f
                  and          a5, a0, s5
                  andi         s3, a7, -1088
                  addi         s5, a1, 267
                  srai         a2, t6, 29
                  ori          s4, tp, 1918
                  or           zero, t5, s7
                  slti         ra, a6, 1109
                  nop
                  srl          a7, s10, s4
                  slti         ra, a5, -1337
                  srli         a6, ra, 12
                  sra          zero, s9, s5
                  slt          gp, s6, s1
699:              slli         s7, s11, 11
700:              bge          t5, ra, 716f
                  slli         s1, a2, 30
                  sltiu        t3, t0, 136
                  beq          t4, s9, 708f
                  andi         gp, t0, 920
                  nop
                  slti         sp, t1, -25
                  bgeu         t5, tp, 720f
708:              srli         a3, sp, 26
                  add          s10, t3, a5
                  sub          tp, t5, s0
                  blt          a3, ra, 714f
                  lui          t4, 643194
                  sub          s10, s8, t0
714:              sltu         sp, s3, s1
                  auipc        a1, 782934
716:              sltu         a1, zero, a4
                  sltiu        s10, a5, -355
                  add          s11, t2, s11
                  srli         t3, t4, 21
720:              bltu         t4, t6, 725f
                  addi         tp, a6, 1657
                  beq          t6, t2, 729f
                  slli         s2, t5, 20
                  add          sp, s8, s2
725:              slti         s7, s9, 618
                  sub          t2, zero, s9
                  beq          a1, zero, 740f
                  andi         tp, a4, 544
729:              srl          s7, s2, s1
                  srli         s10, s2, 11
                  srli         ra, a0, 4
                  bltu         s8, s0, 740f
                  xori         a4, a1, 629
                  slli         ra, s10, 3
                  beq          s4, s4, 745f
                  xor          zero, a0, a0
                  sub          a5, s2, a0
                  slti         zero, s11, -397
                  lui          t5, 667507
740:              andi         s7, s10, 269
                  beq          zero, s4, 758f
                  or           s4, a6, s4
                  srl          a1, t6, ra
                  blt          a4, s11, 764f
745:              sll          sp, ra, s2
                  and          s0, t3, s8
                  ori          a4, t2, -760
                  srli         s7, s9, 1
                  andi         s11, a3, -1819
                  xor          s9, a5, t5
                  blt          tp, a3, 767f
                  slli         zero, t2, 1
                  andi         s0, ra, 1175
                  blt          s3, s6, 761f
                  srai         a1, s6, 4
                  srli         a7, t4, 22
                  slti         t4, zero, -977
758:              srai         a1, a2, 24
                  sra          a1, a6, s9
                  slli         t3, gp, 6
761:              slti         t2, s6, 831
                  srai         s9, t6, 28
                  slti         a5, sp, 1979
764:              bgeu         gp, a5, 782f
                  sub          sp, zero, s4
                  bne          ra, a3, 767f
767:              srl          s4, a2, a3
                  bne          ra, a7, 782f
                  xori         gp, a7, -323
                  beq          t3, t3, 776f
                  srl          s10, tp, t4
                  slti         s5, t4, -108
                  sltiu        t3, s4, -453
                  add          gp, zero, t5
                  slt          a7, sp, a1
776:              sll          a3, s0, gp
                  ori          a6, t0, -1512
                  lui          s3, 617398
                  ori          s0, t5, 1508
                  auipc        t6, 834415
                  lui          a7, 928942
782:              ori          a4, t2, -311
                  bge          a0, t6, 786f
                  srl          gp, s6, s2
                  sll          s9, a3, a1
786:              sltu         sp, zero, s10
                  add          a2, s3, a6
                  beq          t5, gp, 801f
                  xor          t1, tp, ra
                  bne          s9, a5, 805f
                  lui          t3, 256530
                  slli         a1, t3, 17
                  xor          s0, s1, a4
                  sra          s4, a4, t1
                  sra          t5, s1, sp
                  slti         s8, a2, -73
                  andi         s7, s10, 701
                  bge          a6, s11, 806f
                  or           t5, s10, a3
                  srai         t6, a4, 3
801:              blt          s9, s10, 818f
                  beq          a7, s3, 817f
                  srli         gp, t2, 27
                  srai         s2, ra, 0
805:              beq          sp, s11, 816f
806:              lui          a7, 921486
                  andi         s11, t6, 1525
                  sltu         t1, s6, gp
                  srl          a5, t0, zero
                  auipc        t4, 467284
                  andi         s4, a2, 1897
                  xori         a4, s1, 1873
                  srl          t5, t5, s6
                  sltu         a1, a0, t6
                  or           s3, s9, a2
816:              sltu         a2, sp, s0
817:              sll          s0, s9, zero
818:              andi         t3, s2, -1869
                  bgeu         s11, s9, 837f
                  bgeu         a3, s3, 825f
                  andi         s8, tp, 1783
                  or           a4, a4, tp
                  bgeu         s0, s9, 826f
                  ori          s11, s3, -575
825:              xor          sp, s10, s5
826:              lui          t3, 453841
                  sub          a4, s2, s4
                  slt          s5, a6, tp
                  sub          zero, s1, gp
                  bne          tp, t3, 844f
                  or           s10, s9, t4
                  xori         s5, s11, -1489
                  andi         s10, tp, 1304
                  nop
                  and          s10, s7, s3
                  slli         a5, gp, 26
837:              slli         a5, a6, 0
                  and          a6, ra, s6
                  sltiu        s5, a1, -893
                  sra          gp, gp, a5
                  blt          s3, zero, 860f
                  bne          tp, s5, 858f
                  slti         t1, s4, -1368
844:              srai         s5, s3, 25
                  add          s7, a0, t3
                  blt          s11, t6, 850f
                  srli         t1, gp, 10
                  addi         s10, s1, 1173
                  blt          s10, t0, 850f
850:              slti         a6, t4, 1856
                  add          s7, t2, tp
                  nop
                  sltiu        s11, a0, -1544
                  sltu         t6, s2, s5
                  slti         s1, a3, 1126
                  slt          s7, a7, s4
                  beq          s10, s0, 864f
858:              nop
                  bge          a6, t6, 860f
860:              blt          s7, zero, 876f
                  bne          t5, s10, 877f
                  ori          s2, s8, 1943
                  lui          a5, 208177
864:              xor          a4, s10, a2
                  xor          ra, s0, t0
                  ori          s11, a3, 1711
                  nop
                  blt          a0, s3, 887f
                  ori          t1, s9, 642
                  srli         a4, t4, 22
                  sub          s9, t5, t5
                  xori         gp, a6, 1407
                  sltu         a4, s11, a0
                  blt          s10, t5, 877f
                  srli         t4, t6, 6
876:              auipc        s7, 399498
877:              slt          s11, t6, tp
                  auipc        t2, 881153
                  xor          ra, s0, s9
                  bgeu         a1, t1, 895f
                  slli         a3, s2, 3
                  sltiu        s11, s10, 774
                  add          tp, ra, ra
                  slti         a2, a6, -1333
                  add          t3, s4, s3
                  bne          s6, s6, 904f
887:              srai         a6, t4, 20
                  andi         s2, gp, -855
                  and          s9, s8, a5
                  xor          t2, a1, t1
                  srai         a6, s2, 30
                  srai         a3, s7, 9
                  xor          a5, t1, a1
                  andi         t5, a6, 948
895:              addi         s0, s2, 1395
                  srai         t5, s4, 3
                  slli         a3, t3, 8
                  slti         t1, s0, 28
                  addi         t2, a3, -1123
                  slti         s5, a3, 1974
                  srai         a5, gp, 4
                  nop
                  slt          s8, a4, s10
904:              or           zero, a5, a2
                  or           s1, t6, t3
                  sra          t5, s11, a6
                  bltu         s2, t0, 912f
                  and          s9, s6, a2
                  and          t2, t1, t3
                  sltiu        t2, t4, 458
                  bge          s4, t2, 925f
912:              beq          sp, a3, 930f
                  nop
                  bltu         a5, t4, 934f
                  blt          zero, t1, 928f
                  ori          s7, a1, -921
                  bgeu         s7, t2, 930f
                  andi         a6, t3, 797
                  bge          s8, s6, 933f
                  andi         t4, ra, 1238
                  sltu         s11, s2, s9
                  sra          a1, t6, t4
                  srl          a7, a0, t1
                  slli         a3, s0, 16
925:              slli         s4, a0, 7
                  xori         ra, s1, 277
                  srai         s11, s8, 4
928:              andi         t1, s5, -1726
                  nop
930:              slt          gp, t1, a0
                  nop
                  auipc        s0, 882366
933:              srai         s8, t2, 15
934:              ori          sp, t6, 0
                  or           s2, a0, a5
                  bltu         s9, s0, 941f
                  sltu         s1, t2, s5
                  slt          a6, s4, t1
                  sub          a3, s11, a0
                  srl          a6, s11, s3
941:              blt          s11, t5, 958f
                  srai         gp, t5, 4
                  ori          ra, s9, 1795
                  and          s1, a1, t3
                  and          s5, t1, a3
                  add          t6, tp, sp
                  slti         t3, t2, -598
                  and          s7, t0, t5
                  or           a2, s10, ra
                  bge          t6, a1, 958f
                  bgeu         s7, s10, 955f
                  auipc        t2, 269232
                  sll          s1, t6, tp
                  sltiu        a2, a5, -599
955:              sltiu        t4, s0, 1659
                  srli         s11, a2, 10
                  add          s7, a1, a3
958:              and          s7, t4, s4
                  srli         s1, zero, 16
                  andi         a3, t0, 1778
                  auipc        ra, 942268
                  sra          a3, s4, s11
                  add          sp, s1, t5
                  srl          a6, t6, a7
                  bne          s11, a6, 968f
                  beq          a3, t6, 981f
                  or           s5, a5, t1
968:              bne          t6, a4, 975f
                  sll          t5, s0, a4
                  blt          a2, s6, 973f
                  addi         a7, t5, 1116
                  andi         gp, s2, 1955
973:              and          s7, s3, s9
                  blt          s4, a4, 991f
975:              and          a1, ra, s11
                  lui          s7, 625049
                  auipc        sp, 494575
                  addi         a4, s2, -1000
                  srai         t5, a4, 4
                  slli         a3, a6, 26
981:              slt          t5, a4, s6
                  addi         ra, t3, 47
                  sltiu        t6, a7, -617
                  addi         a6, s6, 1706
                  srai         s0, s6, 14
                  slli         t5, s10, 20
                  srl          s7, s11, ra
                  andi         a7, s3, 541
                  bltu         s2, s4, 997f
                  sltiu        ra, gp, 1964
991:              sll          s11, s3, a5
                  sltu         s4, t4, a7
                  andi         s5, a3, 1854
                  add          a1, s5, t1
                  bltu         s1, s7, 998f
                  auipc        t6, 793645
997:              sub          s2, a2, s2
998:              srli         s9, a0, 7
                  add          s5, tp, s1
                  sltiu        s11, ra, -514
                  lw           gp, 4(a0)
                  addi         a0, a0, 56
                  lui          s0, 971160
1271:             addi x29, x3, 0
1271:             jalr x29, x29, 0
sub_6:            bge          a6, ra, sub_6_stack_p
                  lui          s7, 259463
sub_6_stack_p:    addi         a0, a0, -40
                  sw           gp, 4(a0)
                  andi         t5, s6, -1719
                  sra          s0, a4, ra
                  xori         s1, t5, -186
                  lui          s0, 261069
                  sltu         t1, t5, t6
                  addi         t2, a7, -1174
                  sltu         t6, s8, a0
                  ori          zero, a0, 838
sub_6_j9:         jal          gp, sub_7 #jump sub_6 -> sub_7
                  bge          s9, ra, 12f
                  bgeu         s7, t1, 17f
                  sltu         s9, t1, s5
                  sltu         ra, s7, s8
                  sub          s2, a0, a5
                  lui          s1, 403927
                  srl          s9, a1, sp
                  bgeu         s0, zero, 21f
                  sltiu        t1, t6, -469
                  sra          s3, t2, s4
                  srai         t2, t2, 14
                  lui          s7, 904676
12:               srai         t5, s5, 17
                  bltu         s11, s7, 31f
                  slli         t6, t2, 18
                  lui          s10, 130014
                  beq          t2, a5, 32f
17:               and          a1, s4, s0
                  slli         tp, a4, 22
                  slt          ra, t5, t3
                  beq          gp, t3, 34f
21:               or           s8, s2, s10
                  or           t6, s7, a2
                  lui          a2, 714862
                  lui          s11, 105754
                  sltu         s7, s11, zero
                  slli         s11, t4, 14
                  sub          a1, t2, s10
                  sltiu        s8, t3, 562
                  blt          a5, s0, 47f
                  beq          zero, s3, 32f
31:               beq          s1, s10, 41f
32:               sll          a5, tp, s4
                  beq          a3, s9, 39f
34:               or           a6, t6, sp
                  sra          a7, a4, s0
                  andi         s9, t6, -1875
                  nop
                  andi         ra, t2, 1222
39:               xori         t3, a5, 2031
                  slt          a3, a2, s2
41:               slt          gp, t4, a0
                  slti         zero, t3, 1760
                  add          ra, t1, s11
                  slli         a2, s2, 0
                  sltu         s11, t3, s5
                  slt          a7, a7, a1
47:               sub          s9, s5, s6
                  beq          a6, s1, 54f
                  xori         a7, s5, -1962
                  addi         s4, a3, 1027
                  or           s9, ra, t4
                  bgeu         s10, s4, 58f
                  nop
54:               srai         gp, a6, 24
                  xor          s7, s4, s11
                  bgeu         s8, zero, 58f
                  slti         t1, zero, -606
58:               xori         tp, t6, 1125
                  lw           gp, 4(a0)
                  addi         a0, a0, 40
                  srai         s7, a5, 29
                  slt          s4, s8, a6
                  ori          s8, s7, 715
                  sll          t2, t0, a2
78:               addi x13, x3, 0
78:               jalr x13, x13, 0
sub_7:            slli         a6, s11, 16
                  srai         t2, s3, 10
                  or           s8, a1, s8
                  ori          s5, t0, -269
                  addi         s1, s6, 1884
                  addi         a0, a0, -8
                  slti         s2, s4, 349
                  sw           gp, 4(a0)
                  sra          s0, s4, zero
                  la           s4, region_1+726 #start riscv_load_store_rand_instr_stream_5
                  lb           a5, -64(s4)
                  lb           t5, 17(s4)
                  and          zero, s3, t1
                  or           s7, s5, a3
                  nop
                  sll          s9, sp, s4
                  auipc        s0, 759149
                  srli         s2, t2, 11
                  lui          a5, 712917
                  lb           a3, -48(s4)
                  xori         a1, s4, 203
                  lbu          a6, -4(s4)
                  lui          s9, 948488
                  lb           s7, -49(s4)
                  lb           s11, 53(s4)
                  sb           a7, -37(s4)
                  sltiu        zero, t2, -2002
                  slli         s1, t0, 5
                  sltiu        t6, a6, -1528
                  slt          t4, t2, s1
                  or           a3, t2, a3
                  auipc        t4, 1022683
                  sb           s8, 25(s4)
                  and          s5, t2, a0
                  slt          s8, t3, t3
                  lb           s5, 16(s4)
                  lui          zero, 387114
                  slt          sp, a3, a5
                  sw           s8, -34(s4)
                  xor          a7, s7, sp
                  lui          zero, 231606
                  lb           a2, -25(s4)
                  sb           ra, 11(s4)
                  andi         t4, s2, -1835
                  or           t6, a0, s5
                  lb           tp, -43(s4)
                  lhu          a1, 6(s4)
                  sb           s3, -8(s4)
                  slti         zero, s1, 467
                  sub          a4, s11, t1
                  sra          a6, zero, s6
                  lh           s5, -64(s4) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1909 #start riscv_load_store_rand_instr_stream_7
                  sub          s5, t4, s3
                  lb           s5, 14(sp)
                  sub          s2, a7, s8
                  lb           s7, 12(sp)
                  and          a7, t4, t1
                  nop
                  sh           t2, -11(sp)
                  and          s5, s7, t1
                  lhu          gp, -15(sp)
                  sra          ra, a6, a2
                  srli         s0, s6, 16
                  sra          a3, s11, t5
                  sb           a5, -3(sp)
                  sb           t5, 14(sp)
                  sb           s1, 11(sp)
                  sh           t5, -11(sp)
                  lb           s8, -7(sp)
                  sb           t6, -9(sp)
                  xori         s10, t5, 893
                  sb           t4, -12(sp)
                  lb           t4, -2(sp)
                  or           s5, a0, t0
                  sb           s2, 10(sp)
                  lw           t2, 11(sp)
                  lb           a5, 15(sp)
                  slt          t4, s2, s10
                  lhu          a1, 1(sp)
                  sltiu        a5, a7, 1148
                  sb           gp, -1(sp)
                  or           s9, t3, s5
                  sb           s1, 6(sp)
                  sb           s7, -10(sp)
                  xori         s10, s7, -849
                  srai         s0, s8, 8
                  lhu          s8, -1(sp) #end riscv_load_store_rand_instr_stream_7
                  la           a3, region_0+1000 #start riscv_load_store_rand_instr_stream_6
                  ori          zero, s9, 1257
                  nop
                  lb           s5, -430(a3)
                  sra          t1, zero, a4
                  lb           s5, 993(a3)
                  srl          t2, t2, s11
                  ori          t3, gp, -1642
                  xori         a7, s10, -1610
                  srli         s8, tp, 8
                  sltiu        sp, tp, 1479
                  slt          t4, ra, s10
                  lui          a7, 34188
                  nop
                  ori          s7, a1, -520
                  or           a4, a3, s4
                  sb           s0, -696(a3)
                  lb           ra, -291(a3)
                  sra          s0, tp, zero
                  sh           s7, -42(a3)
                  sltu         zero, s0, t5
                  lui          s11, 949104
                  and          a4, t2, s8
                  lw           s8, 452(a3)
                  addi         s7, a6, 1679
                  lbu          gp, -921(a3)
                  lbu          s3, -268(a3)
                  sb           s10, 571(a3)
                  lh           t4, 680(a3) #end riscv_load_store_rand_instr_stream_6
                  la           s3, region_1+1007 #start riscv_load_store_rand_instr_stream_4
                  sh           s6, 25(s3)
                  lbu          a6, 1(s3)
                  or           t3, s3, a4
                  sb           a6, 58(s3)
                  add          s9, s2, s4
                  andi         t2, t0, -900
                  lbu          t3, -16(s3)
                  sub          a5, s11, a4
                  lb           a5, -37(s3)
                  lb           a2, 4(s3)
                  sltiu        s1, s4, 1046
                  sb           a7, -28(s3)
                  sb           s2, 41(s3)
                  lw           t3, -15(s3)
                  sub          t1, a3, s6
                  lbu          s4, -40(s3)
                  sb           s4, 11(s3)
                  sb           t5, 16(s3)
                  lhu          s0, 31(s3)
                  lhu          t2, 49(s3)
                  auipc        sp, 316490
                  add          s9, tp, t4
                  sb           s11, -17(s3)
                  lhu          a1, 59(s3)
                  lb           t4, 54(s3)
                  sb           tp, -20(s3)
                  sb           a5, -48(s3)
                  sb           zero, 24(s3)
                  addi         s2, s8, -1099
                  lb           s1, -36(s3)
                  lb           s0, -24(s3)
                  lb           a6, 24(s3)
                  lb           tp, 14(s3)
                  sb           t4, 24(s3)
                  lh           t5, 41(s3)
                  sh           a0, -29(s3)
                  sub          a7, a3, tp
                  lbu          sp, -16(s3) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+606 #start riscv_load_store_rand_instr_stream_0
                  lbu          t6, 256(s1)
                  and          s0, a6, a7
                  srl          t6, s5, t3
                  lui          s0, 606997
                  lh           s4, -376(s1)
                  sra          a1, tp, gp
                  sb           s0, 1241(s1)
                  sb           a3, 57(s1)
                  sb           t0, -443(s1)
                  lhu          s7, 810(s1)
                  srl          a6, s9, s10
                  lw           s11, -142(s1)
                  addi         tp, zero, 1640
                  nop
                  nop
                  lbu          zero, 605(s1)
                  srli         s2, gp, 23
                  slt          tp, a2, t5
                  sb           s9, 988(s1)
                  sltiu        s5, t5, -630
                  slti         s2, zero, 2036
                  srli         s10, s4, 24
                  lhu          a1, 1054(s1)
                  sra          a1, sp, a3
                  lb           s0, 143(s1)
                  lb           s8, 226(s1)
                  lb           ra, 35(s1)
                  ori          s8, s6, -304
                  slt          sp, s9, s6
                  ori          a2, a7, -851
                  sb           a0, 925(s1) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_1+1033 #start riscv_load_store_rand_instr_stream_8
                  lb           sp, -134(t4)
                  lbu          s5, 193(t4)
                  sra          a7, a3, t6
                  lh           tp, -21(t4)
                  sub          a2, a1, a2
                  sh           tp, 53(t4)
                  lbu          sp, -51(t4)
                  slti         s1, s5, 1036
                  sltu         tp, t6, s5
                  sub          tp, s9, s7
                  sw           t1, -217(t4)
                  lui          a6, 912888
                  srli         a2, s7, 10
                  lh           zero, -229(t4)
                  lhu          t3, 73(t4)
                  lb           s10, 160(t4)
                  sltu         s11, t3, zero
                  slli         s5, s4, 26
                  lbu          t5, -78(t4)
                  lbu          s9, -31(t4)
                  sra          t2, sp, zero
                  srl          s3, s10, s6
                  auipc        sp, 626052
                  lb           a1, -244(t4)
                  auipc        ra, 487375
                  lh           t3, -217(t4)
                  lb           a2, 136(t4)
                  lb           a1, -214(t4)
                  sh           ra, 149(t4)
                  slti         ra, t4, -2030
                  sh           s1, 119(t4) #end riscv_load_store_rand_instr_stream_8
                  la           t4, region_0+746 #start riscv_load_store_rand_instr_stream_3
                  lbu          a5, 4(t4)
                  sh           t6, -4(t4)
                  lb           tp, -12(t4)
                  sb           s8, 13(t4)
                  lbu          t5, -10(t4)
                  lh           ra, 0(t4)
                  sb           a1, 15(t4)
                  sb           a6, -9(t4)
                  sll          s5, s11, s9
                  lb           a6, 0(t4)
                  sb           sp, 15(t4)
                  lui          s11, 199597
                  lbu          t1, -16(t4)
                  lw           ra, -2(t4)
                  lb           s10, -1(t4)
                  lb           s8, 7(t4)
                  andi         sp, s7, 829
                  sltu         t6, a3, a2
                  slti         a1, zero, 1954
                  srl          s4, s7, zero
                  and          gp, s11, a7
                  sh           a3, 6(t4)
                  xor          a1, s4, a2
                  lb           t1, 3(t4)
                  lw           s10, -14(t4)
                  sb           a0, 5(t4)
                  sb           a6, 13(t4)
                  xori         t3, a6, -106
                  sb           s9, -9(t4)
                  sb           s9, -16(t4)
                  addi         s5, ra, -120
                  sltu         s11, t5, s2
                  sb           a1, -3(t4)
                  lbu          t1, 3(t4)
                  sb           sp, 11(t4) #end riscv_load_store_rand_instr_stream_3
                  ori          t4, s3, 239
                  auipc        tp, 101403
                  nop
                  bgeu         s6, a4, 13f
                  sltu         s11, a4, a6
                  bge          a1, a2, 19f
                  addi         a6, a0, -1288
                  beq          a5, t6, 12f
                  sll          t5, s6, sp
                  slli         a2, sp, 25
                  add          t3, a6, ra
                  addi         ra, s5, -813
12:               blt          a2, s5, 28f
13:               nop
                  ori          s4, t4, 67
                  slt          s5, sp, zero
                  and          zero, a3, a7
                  or           s3, s11, sp
                  bltu         a2, t2, 34f
19:               sub          a1, a7, t2
                  srai         zero, a0, 26
                  nop
                  addi         s0, s7, -358
                  bne          s5, s11, 31f
                  sltiu        s5, s11, 633
                  sub          s1, tp, s7
                  andi         s11, s5, 624
                  bgeu         s3, s4, 37f
28:               sll          tp, s10, s10
                  bltu         a1, t3, 44f
                  bltu         t6, sp, 37f
31:               sltu         s4, t3, s9
                  slt          sp, s9, gp
                  blt          s5, t5, 53f
34:               sltiu        gp, s0, -749
                  auipc        a3, 432149
                  andi         s10, t1, 1057
37:               or           ra, s11, a1
                  sra          s4, s9, s0
                  srl          t2, t6, s2
                  lui          sp, 452706
                  nop
                  add          t5, t5, s9
                  sltu         t6, ra, s4
44:               blt          s4, gp, 53f
                  xor          s2, a1, t5
                  slti         t5, t4, -911
                  and          a1, s9, zero
                  ori          t4, s10, -1453
                  andi         a2, s3, -1440
                  add          s10, a4, a7
                  andi         s9, zero, -1062
                  xori         s9, a4, 1507
53:               srl          s8, s4, a3
                  xor          a7, ra, a3
                  sltu         t2, t3, ra
                  slt          a5, t0, s2
                  srli         sp, a6, 6
                  sll          a5, t3, s6
                  and          a1, a3, s2
                  srli         a4, t5, 24
                  bne          a0, a3, 74f
                  xor          a6, s10, a7
                  bge          a3, ra, 69f
                  sltiu        a1, s5, -1487
                  bge          s4, t2, 75f
                  slli         a7, a6, 26
                  bltu         t2, t4, 72f
                  slti         s4, s11, 2017
69:               slti         s11, s6, 1426
                  sll          s1, s9, s5
                  add          zero, a0, a6
72:               beq          t3, s5, 91f
                  sra          s10, t5, a7
74:               slt          t5, s9, a4
75:               bge          t4, gp, 92f
                  beq          t6, a1, 94f
                  andi         s10, a0, -339
                  xor          s2, s0, s8
                  ori          sp, s10, 1365
                  sra          t2, t2, zero
                  nop
                  slli         a1, s5, 23
                  bge          a1, t1, 87f
                  bgeu         s11, a3, 94f
                  auipc        a1, 169583
                  sltu         s8, t2, t2
87:               blt          t0, a7, 102f
                  andi         a2, tp, -119
                  slli         a3, s9, 11
                  sltiu        t5, t4, 602
91:               blt          a1, s2, 100f
92:               slti         a6, a5, 1736
                  bgeu         t0, t3, 110f
94:               slti         t5, t4, -170
                  sub          t2, s2, a5
                  bltu         s8, t2, 111f
                  bge          t3, sp, 99f
                  srli         a6, s9, 18
99:               nop
100:              lui          t3, 435303
                  srl          s1, a6, zero
102:              blt          s7, a0, 112f
                  sltiu        zero, a4, 134
                  bge          t3, tp, 120f
                  bgeu         t4, s5, 114f
                  addi         s9, a7, 2046
                  sub          s10, a1, s9
                  srl          t2, a7, s9
                  sra          s8, t5, s5
110:              addi         s10, gp, 341
111:              xori         tp, s2, -1765
112:              lui          t4, 896779
                  andi         a1, s7, -819
114:              srai         t3, zero, 13
                  sll          a2, s1, t4
                  blt          s10, s2, 130f
                  sub          s7, t4, s9
                  beq          a7, a7, 131f
                  bne          a7, t3, 126f
120:              nop
                  slt          zero, t1, s2
                  auipc        s9, 72301
                  bge          ra, s9, 136f
                  beq          s8, a1, 140f
                  xor          s2, s11, s0
126:              and          s2, t0, s4
                  ori          s5, s3, -1328
                  slli         sp, t4, 15
                  addi         a2, a6, 1590
130:              blt          s8, t0, 143f
131:              and          s11, t4, a5
                  add          s11, s8, s9
                  xori         s0, zero, -1221
                  bltu         zero, s11, 140f
                  ori          t5, s8, -806
136:              bltu         gp, a4, 145f
                  bltu         s0, s3, 146f
                  bge          s3, ra, 153f
                  auipc        zero, 708775
140:              sll          a6, sp, a3
                  andi         s5, zero, 319
                  beq          s8, a2, 152f
143:              add          gp, a5, s10
                  lui          s8, 417421
145:              sltu         s4, s9, a1
146:              or           a5, t2, t6
                  srai         ra, zero, 16
                  sltu         s5, s3, s4
                  slli         s4, tp, 2
                  bgeu         gp, tp, 165f
                  slli         a7, t0, 8
152:              bne          t1, s10, 170f
153:              nop
                  or           sp, s8, s5
                  xori         s9, t5, -89
                  nop
                  sub          s4, t0, t3
                  bne          t5, s5, 168f
                  xori         t5, sp, 511
                  xor          s8, t0, a4
                  slli         ra, t3, 11
                  blt          s10, s8, 176f
                  andi         s5, s4, -1723
                  bgeu         s3, t2, 174f
165:              bne          t2, s2, 182f
                  sltu         a3, zero, tp
                  slti         s2, t4, 799
168:              bge          s7, tp, 173f
                  sll          s10, s10, s10
170:              beq          a4, ra, 178f
                  addi         a6, zero, 174
                  beq          t5, s7, 192f
173:              addi         s4, t0, -227
174:              srli         a1, s0, 24
                  sra          ra, t0, a6
176:              sltu         t2, t5, s10
                  or           a5, t4, tp
178:              or           s4, s6, s2
                  auipc        s3, 964450
                  nop
                  ori          a3, a6, 669
182:              lui          s8, 295410
                  slt          s5, s2, s4
                  srai         sp, s6, 5
                  slli         a3, t6, 26
                  ori          zero, ra, 204
                  ori          t5, t0, -819
                  or           a2, s11, t6
                  bltu         s11, sp, 208f
                  srl          s9, s0, t1
                  sltiu        zero, s6, 1049
192:              srli         t2, t5, 27
                  sltiu        a5, gp, -1928
                  beq          s8, t1, 204f
                  lui          a6, 957817
                  bltu         s5, zero, 201f
                  and          a1, s9, s9
                  slti         s3, t3, -41
                  sltu         s5, sp, a4
                  blt          zero, a4, 202f
201:              sra          a4, a6, t2
202:              blt          a2, a1, 211f
                  auipc        a7, 731277
204:              srli         s4, a2, 22
                  or           s1, a3, a3
                  sll          t5, t6, t0
                  andi         a5, a7, 1400
208:              srl          s8, t3, t1
                  bge          s1, t4, 219f
                  slti         s3, a1, -1726
211:              bge          a7, t3, 228f
                  sltu         s11, a3, s6
                  sltiu        a6, a3, 1676
                  slt          a3, t4, a1
                  bge          a1, s2, 219f
                  sra          s9, a4, t1
                  bgeu         zero, s8, 233f
                  slli         s2, s7, 25
219:              add          gp, s1, s5
                  or           tp, s0, t5
                  auipc        t2, 277410
                  lui          s5, 52057
                  slli         s2, s10, 26
                  addi         t1, a0, 1342
                  andi         s2, t1, -1084
                  xori         s5, s4, 678
                  ori          zero, t2, 79
228:              slti         t1, s2, -691
                  bltu         tp, s0, 244f
                  sra          a1, t6, tp
                  slt          a5, a3, a3
                  slti         s9, s7, 1719
233:              sltiu        a4, t3, -1397
                  slti         s4, s8, -1275
                  ori          s9, a6, -72
                  slti         a1, t0, 357
                  sll          a1, s8, gp
                  sltiu        s1, s8, 694
                  auipc        a3, 234154
                  add          a1, t5, zero
                  slti         s11, a5, 838
                  sltu         t5, t6, s5
                  and          a6, a4, s1
244:              beq          s2, a3, 258f
                  sll          t4, sp, s2
                  andi         s7, s2, -1917
                  sub          a4, gp, a6
                  nop
                  slt          a4, gp, s0
                  auipc        a1, 347147
                  xor          a3, s0, s6
                  blt          s2, t1, 268f
                  sltu         a1, a7, ra
                  xor          s4, s9, t1
                  auipc        s10, 959918
                  slli         s10, ra, 3
                  sltiu        t4, a1, 113
258:              andi         a6, sp, 1948
                  sltiu        a6, a5, -1422
                  srl          ra, t0, t1
                  slti         t1, s10, -262
                  nop
                  bge          a4, a5, 273f
                  auipc        s4, 900438
                  bltu         a6, a0, 270f
                  nop
                  srl          s7, t4, s2
268:              sltiu        ra, a2, -85
                  blt          t3, a0, 271f
270:              bge          ra, s5, 289f
271:              add          s1, s11, s4
                  nop
273:              beq          t3, t1, 282f
                  slti         a6, t0, -2018
                  srai         a7, a7, 19
                  slli         t1, s11, 28
                  andi         t5, s3, -601
                  sub          gp, s6, s8
                  sub          a7, a4, a2
                  addi         a6, s11, 199
                  slt          s1, s3, a1
282:              and          s9, s3, s7
                  srl          s3, a1, t6
                  and          sp, s6, t3
                  beq          sp, s9, 295f
                  nop
                  bgeu         a2, s10, 302f
                  xori         t5, t6, -561
289:              sltiu        s4, s9, 1897
                  slli         a7, a2, 3
                  beq          a5, t1, 308f
                  sltiu        s11, s0, 573
                  srai         a5, s9, 31
                  srli         a3, tp, 29
295:              slti         t6, a3, 944
                  nop
                  addi         s5, s3, -1094
                  bltu         a0, zero, 307f
                  bgeu         gp, t2, 314f
                  bgeu         ra, s5, 314f
                  xor          s7, t4, gp
302:              srl          a4, t1, a2
                  addi         gp, t3, 949
                  bge          a4, t1, 321f
                  auipc        sp, 777475
                  ori          s7, t3, -1514
307:              nop
308:              srli         s3, a0, 21
                  slt          s7, gp, a0
                  xori         s1, sp, -1847
                  srli         a6, a1, 14
                  bltu         tp, t4, 328f
                  xori         s7, a1, -1751
314:              sll          gp, a6, t1
                  slli         s1, a1, 5
                  andi         s10, t0, -906
                  xori         s3, zero, 1795
                  sub          s4, a4, s10
                  or           s0, t1, s1
                  srai         gp, sp, 18
321:              sra          sp, s6, zero
                  xor          s4, t3, t0
                  slli         s5, a1, 22
                  xor          a5, a0, s4
                  beq          s11, a4, 338f
                  add          sp, s2, tp
                  lui          a7, 650596
328:              xor          s11, s10, t5
                  or           a5, a6, s6
                  srli         s5, t2, 24
                  or           t5, zero, a7
                  srl          s10, s11, zero
                  bne          s2, tp, 346f
                  addi         t2, a0, 1933
                  srl          s3, s5, s6
                  blt          s5, gp, 343f
                  add          tp, s9, s8
338:              addi         s2, a7, -107
                  andi         a3, s3, -1881
                  bgeu         s3, s6, 348f
                  addi         zero, s5, 1379
                  srl          zero, a4, tp
343:              bne          s11, a3, 363f
                  xori         a4, s3, 1542
                  sub          t3, s6, zero
346:              bgeu         ra, zero, 356f
                  auipc        sp, 97388
348:              add          a6, s8, a1
                  lui          t2, 929851
                  srl          a4, s5, s10
                  blt          t5, a3, 366f
                  sub          s0, s11, t0
                  and          t3, t4, s11
                  addi         s11, a2, 1558
                  sltiu        s0, t2, 340
356:              nop
                  nop
                  bge          s6, a7, 364f
                  xori         t4, a6, 447
                  bltu         a5, a7, 370f
                  sltiu        a1, s2, -1689
                  xor          a3, ra, ra
363:              addi         s8, ra, -1870
364:              sltu         a5, t1, s8
                  srl          tp, s1, s7
366:              bne          a2, s4, 382f
                  xor          t5, s10, t1
                  slti         t4, t5, 1221
                  srai         s1, s11, 25
370:              and          a4, t4, tp
                  addi         s5, a2, -586
                  lui          s4, 20618
                  bne          zero, a3, 377f
                  bge          t6, s4, 383f
                  blt          s2, gp, 385f
                  bne          s7, a5, 392f
377:              sltiu        a2, t4, -9
                  sra          ra, sp, s5
                  bne          zero, s4, 397f
                  add          a6, s10, s4
                  andi         a2, t5, -963
382:              slt          t1, ra, s7
383:              ori          t1, s11, -1927
                  and          s5, a1, a5
385:              bltu         t5, sp, 399f
                  nop
                  or           s5, s0, t0
                  sltu         s11, a4, s11
                  addi         s2, ra, 1956
                  bge          a2, s2, 395f
                  sub          s8, tp, sp
392:              ori          s10, tp, -978
                  ori          t4, gp, 267
                  beq          s7, a1, 404f
395:              sll          s2, a6, a3
                  auipc        s0, 425483
397:              bltu         sp, a7, 406f
                  bge          t0, a0, 415f
399:              srai         s11, t0, 3
                  xori         s10, s3, -413
                  srl          ra, a5, a3
                  add          zero, t2, s7
                  blt          t3, s3, 416f
404:              addi         tp, sp, -4
                  blt          s5, s0, 415f
406:              nop
                  bltu         t1, t6, 422f
                  bge          a5, s2, 412f
                  xor          t2, s9, a1
                  slt          t4, tp, s1
                  and          a1, s9, s7
412:              addi         t2, s2, 1756
                  xori         ra, ra, 101
                  sltiu        a4, t4, 1364
415:              slt          a4, s8, t2
416:              beq          a5, gp, 431f
                  bne          tp, t6, 422f
                  xori         a3, a2, -114
                  bltu         s9, ra, 432f
                  xori         s10, s4, -1457
                  blt          t3, a3, 431f
422:              sub          s7, s4, ra
                  and          t3, t0, zero
                  sub          a4, gp, a6
                  auipc        s10, 1012203
                  srli         s11, tp, 13
                  sll          s10, sp, a5
                  add          s11, s5, sp
                  bltu         t2, t2, 437f
                  or           s7, s10, a6
431:              add          s10, s0, s4
432:              slt          a3, t0, s8
                  sub          a4, s10, t3
                  addi         s7, t6, -1718
                  srai         s2, a7, 9
                  sltu         a1, t3, s7
437:              srl          a6, a4, t4
                  srai         zero, t5, 0
                  andi         tp, a0, 1552
                  sltiu        t2, a3, -648
                  srl          a5, ra, s3
                  sltiu        t4, zero, 193
                  bge          s3, zero, 457f
                  sub          s3, a4, s1
                  and          s9, tp, s2
                  nop
                  sltiu        sp, s6, 102
                  xor          sp, t3, gp
                  bne          t0, a4, 468f
                  sltiu        s11, t4, -1249
                  srai         s3, a1, 7
                  bne          t4, t3, 454f
                  sll          a4, t0, t0
454:              bne          s8, a3, 464f
                  slli         s8, s11, 18
                  bge          a6, s2, 465f
457:              xor          s9, s2, s1
                  and          t2, s11, s0
                  sltu         s10, a0, a0
                  ori          t4, t3, -200
                  addi         t4, s9, -1236
                  addi         sp, t6, -2026
                  xori         s9, zero, 696
464:              srai         zero, a7, 9
465:              blt          t6, s1, 471f
                  addi         a5, t1, 1825
                  bltu         ra, s10, 484f
468:              xori         t6, s6, -1265
                  slt          gp, t3, a6
                  sll          zero, a5, s5
471:              lui          t5, 650652
                  ori          tp, s4, 1939
                  sll          s2, s1, s5
                  srai         t5, a6, 14
                  sltu         s5, s4, t3
                  bge          t0, s5, 492f
                  lui          t4, 1037467
                  slt          t4, a4, a6
                  add          s11, t2, s8
                  srai         s2, gp, 19
                  addi         s8, t1, -1461
                  ori          tp, s6, 1551
                  add          s11, s9, a3
484:              sltiu        a2, t5, 489
                  xori         s1, a0, 1141
                  srai         t1, tp, 16
                  slt          s0, a0, a7
                  sltu         s8, a4, a2
                  sub          s4, s3, s3
                  sltiu        a7, t4, -680
                  sltiu        t2, a1, -1888
492:              add          t3, tp, s7
                  andi         zero, t6, 1178
                  addi         s0, a0, 416
                  srli         s7, s9, 0
                  and          s3, t0, ra
                  xori         a3, s8, -982
                  xori         t4, t0, -1953
                  srl          s7, t4, sp
                  nop
                  ori          ra, a7, 1791
                  slli         zero, t2, 21
                  or           zero, a1, ra
                  sub          tp, gp, a2
                  srai         s10, s7, 1
                  and          tp, s0, a0
                  beq          s4, t0, 527f
                  sll          t5, a5, t0
                  add          s2, ra, s4
                  and          a4, a1, s2
                  slt          t6, t6, s3
                  bltu         t6, s7, 528f
                  srli         t3, ra, 17
                  sltu         a2, s3, gp
                  sltiu        s3, a3, 672
                  sll          t1, tp, s2
                  andi         t6, t4, -193
                  add          s5, t1, s2
                  sltiu        a7, a6, -1151
                  sltiu        s1, a4, 1402
                  sltiu        tp, s3, 1286
                  addi         t6, s5, 619
                  bne          a0, tp, 541f
                  slli         s2, s1, 21
                  slti         s8, a3, -838
                  beq          s10, a2, 535f
527:              sll          s4, s0, a7
528:              sltu         a5, s11, a7
                  slli         s11, s10, 9
                  andi         t4, t5, 2024
                  sub          s11, s9, a2
                  xori         tp, s3, -1681
                  add          t1, a7, a1
                  auipc        s11, 743238
535:              slli         gp, zero, 0
                  slli         a2, s2, 15
                  auipc        s10, 269346
                  srl          s1, s6, a6
                  andi         s9, s5, -1964
                  beq          a0, s8, 547f
541:              nop
                  srai         a5, a1, 13
                  bge          a1, a5, 558f
                  bltu         a4, a5, 558f
                  slli         t4, s9, 21
                  lui          a3, 298856
547:              srli         s11, a4, 4
                  add          a3, s5, sp
                  or           s1, s10, s0
                  slti         s2, s8, -2008
                  sra          s8, a6, t5
                  slti         s5, a2, -1148
                  or           a4, t2, s4
                  srli         t5, s8, 21
                  xor          s2, a2, a2
                  sub          a1, a1, s9
                  andi         a3, ra, 60
558:              slt          sp, s8, a2
                  slt          t2, s1, s6
                  slt          t2, a6, s8
                  sll          s0, t3, a1
                  xori         t6, sp, -69
                  ori          s11, t0, 852
                  nop
                  lui          zero, 946041
                  srai         s7, a4, 21
                  xor          s1, a6, a3
                  or           t2, tp, t4
                  bne          sp, s11, 574f
                  ori          s4, a7, -273
                  srl          a2, s10, a5
                  slti         s2, ra, 1472
                  and          t4, s0, t4
574:              xor          s4, t0, s7
                  andi         a6, s8, 1443
                  bltu         t6, s6, 592f
                  nop
                  or           t4, s7, a5
                  nop
                  bltu         s7, a2, 590f
                  srl          zero, s6, a1
                  ori          s8, t2, -1289
                  bne          s8, s7, 588f
                  nop
                  andi         a4, a3, -1251
                  andi         t6, gp, 13
                  sub          t4, s1, a6
588:              bge          t1, a7, 590f
                  addi         a7, s4, -167
590:              beq          sp, s8, 599f
                  bge          s11, s8, 604f
592:              sltu         a7, sp, a6
                  bltu         a4, t2, 602f
                  sltu         t4, t0, s11
                  and          t5, s9, a5
                  srl          zero, t3, a6
                  and          s4, s8, tp
                  bltu         a7, t2, 613f
599:              slt          ra, s2, a7
                  bltu         s7, t0, 620f
                  slt          s5, a1, t3
602:              slti         a5, a2, 375
                  slti         t3, a0, -15
604:              sra          s2, t6, gp
                  add          s4, s7, s10
                  add          s10, s11, s6
                  bgeu         a0, a7, 622f
                  sltu         s5, a1, a2
                  nop
                  sltiu        gp, a0, 780
                  srai         s8, s7, 4
                  bgeu         s5, s3, 628f
613:              srli         t4, s2, 17
                  beq          t6, s9, 620f
                  addi         t5, t1, -1166
                  srai         ra, s1, 4
                  andi         s1, a6, 1736
                  slti         s4, s9, -1631
                  slli         s7, a4, 4
620:              ori          t3, t4, 966
                  beq          a4, a7, 631f
622:              srl          t4, a3, t5
                  sltu         s7, s7, t4
                  srai         a7, s10, 7
                  nop
                  bne          s6, t2, 630f
                  and          sp, t0, t2
628:              ori          a1, a4, 1529
                  slti         s2, a7, -587
630:              beq          a3, s1, 638f
631:              blt          t4, a6, 644f
                  add          s11, t3, s7
                  blt          zero, t0, 649f
                  srai         a7, t3, 6
                  slli         t2, t3, 4
                  srai         s4, s5, 1
                  andi         s7, s6, 34
638:              sltiu        t5, gp, -135
                  bne          a3, zero, 648f
                  add          a1, ra, a7
                  xor          s11, a2, zero
                  bgeu         zero, a7, 660f
                  auipc        s3, 561530
644:              auipc        a3, 527574
                  sll          a2, a0, s7
                  sltiu        t3, t5, -259
                  slli         a5, s6, 1
648:              bne          s7, ra, 662f
649:              slti         a7, t5, -544
                  sll          s11, a7, sp
                  blt          s3, a3, 661f
                  and          t2, s6, t1
                  sub          t3, tp, s8
                  sltu         a4, s3, s5
                  bne          t3, s2, 665f
                  bltu         s0, s6, 673f
                  add          zero, ra, zero
                  bgeu         a2, ra, 677f
                  bge          a6, ra, 676f
660:              sltu         s5, a0, t1
661:              sltu         s5, s9, s4
662:              or           s0, t1, t0
                  bltu         s6, a0, 673f
                  auipc        s5, 887343
665:              sub          s0, a7, t4
                  xori         a4, sp, -757
                  lui          s8, 849575
                  bne          a5, gp, 683f
                  bge          zero, a3, 679f
                  slt          ra, t6, t2
                  slli         s0, t6, 6
                  sltu         sp, sp, s3
673:              slt          t3, gp, t2
                  xor          ra, s6, t3
                  xor          s11, a7, a7
676:              bge          s0, s7, 692f
                  la           sp, region_0+1582 #start riscv_load_store_rand_instr_stream_2
                  sra          t6, s1, t5
                  srl          s5, t0, t0
                  lbu          s11, -12(sp)
                  andi         t2, t4, -1500
                  lb           s0, 8(sp)
                  sub          s0, a2, t3
                  and          t5, t3, a2
                  xori         t1, t5, 280
                  slt          a1, ra, t2
                  lh           t2, 0(sp)
                  sb           ra, 0(sp)
                  lbu          a7, 1(sp)
                  lbu          a7, 10(sp)
                  lw           gp, -6(sp)
                  lb           t6, 1(sp)
                  slt          s3, t4, t4
                  lb           t1, -8(sp)
                  sb           a4, 16(sp)
                  ori          s2, s10, 1928
                  sb           s3, -1(sp)
                  sb           a1, 9(sp)
                  lh           s8, 2(sp)
                  lb           s4, -16(sp)
                  lb           t4, 5(sp)
                  lw           s9, -2(sp)
                  sb           s5, -11(sp)
                  lb           tp, 9(sp)
                  slli         s5, t5, 6
                  add          a4, s3, s3
                  lb           s9, 14(sp)
                  srli         a4, a2, 15
                  lhu          zero, 14(sp)
                  srai         s2, sp, 18
                  lbu          s2, -4(sp) #end riscv_load_store_rand_instr_stream_2
677:              bltu         t0, s9, 684f
                  add          gp, a4, sp
679:              bne          t2, s10, 684f
                  bne          s6, a3, 694f
                  sltiu        s2, a4, -1275
                  ori          sp, t5, 875
683:              bne          gp, sp, 687f
684:              add          t2, t4, s10
                  nop
                  ori          s10, gp, 508
687:              nop
                  srli         t2, a6, 11
                  slti         sp, a5, -863
                  xor          t3, s9, s4
                  nop
692:              slli         s5, s8, 25
                  addi         sp, a7, -43
694:              addi         s3, s6, 391
                  addi         s3, gp, -1261
                  auipc        a4, 628560
                  srl          zero, s1, s8
                  bltu         gp, a4, 708f
                  add          gp, s0, s3
                  bltu         t4, t3, 720f
                  sll          t3, s0, s5
                  sltu         s4, sp, t2
                  or           a2, t5, s0
                  sltu         s10, s10, s6
                  auipc        s3, 314019
                  xor          s1, s11, s0
                  bgeu         a7, a5, 716f
708:              sub          a5, t1, a3
                  add          t6, t3, a3
                  add          zero, s11, s8
                  add          a2, s2, s10
                  auipc        ra, 21830
                  lui          s5, 1032671
                  srli         a4, s0, 1
                  auipc        t1, 231436
716:              bgeu         t5, a2, 722f
                  beq          a1, s10, 719f
                  or           t6, a5, a2
719:              sll          s8, a6, t5
720:              srl          a6, t4, t1
                  bge          s11, s6, 738f
722:              auipc        s10, 746543
                  andi         t3, t2, 1899
                  sltu         a1, s4, a6
                  bgeu         zero, a6, 741f
                  srl          a6, s6, t6
                  sra          a2, a1, s9
                  sll          a3, s0, zero
                  srai         a1, gp, 13
                  andi         s2, s11, 306
                  sltu         a7, s10, tp
sub_7_j10:        jal          gp, sub_9 #jump sub_7 -> sub_9
                  bgeu         s0, s1, 743f
                  and          s10, s0, tp
                  slti         s0, s5, -4
                  sltiu        a3, s0, -919
                  ori          t1, zero, -1153
                  sll          s2, t2, t0
                  or           gp, t1, s2
                  andi         s4, a3, -1309
                  beq          s8, a5, 750f
                  bltu         a4, s5, 750f
                  andi         s11, s5, 1501
738:              nop
                  srli         tp, s7, 31
                  add          t2, s2, s3
741:              addi         s0, s10, -39
                  beq          s6, s0, 752f
743:              srl          s7, gp, s0
                  slli         a4, s9, 22
                  sll          a7, s7, t2
                  blt          t4, s4, 759f
                  srl          tp, a0, s4
                  xori         a3, zero, 1082
                  bgeu         a1, s9, 759f
750:              and          t4, s4, t2
                  sltiu        s3, s1, -1121
752:              slli         s9, gp, 10
                  ori          s10, s9, 1556
                  ori          a7, a7, -910
                  beq          s7, s6, 760f
                  sltiu        t5, gp, -1487
                  bge          s7, a0, 767f
                  blt          zero, tp, 763f
759:              sltu         s4, s1, s4
760:              beq          tp, tp, 769f
                  nop
                  auipc        s5, 228261
763:              lui          a6, 316732
                  sra          sp, s2, tp
                  add          s10, gp, s5
                  xori         a7, a7, -402
767:              sub          a5, s0, s7
                  beq          t0, s4, 783f
769:              sll          t1, s0, s3
                  slti         ra, t4, 198
                  xori         s4, a1, -1624
                  xori         s1, s6, -580
                  nop
                  bgeu         t3, gp, 791f
                  andi         a7, t4, -54
                  addi         t2, t0, -1471
                  blt          s8, s11, 792f
                  sll          sp, a6, tp
                  slt          s10, t2, gp
                  srli         s7, a7, 4
                  sra          s7, t2, t0
                  srai         s7, gp, 13
783:              auipc        a6, 117755
                  ori          a5, sp, 1172
                  slti         a3, s10, 327
                  bgeu         tp, s5, 795f
                  sra          a6, a2, s10
                  sltiu        a4, t0, -479
                  and          ra, s9, s9
                  slli         a3, a1, 5
791:              slti         s4, a6, 1482
792:              bne          t3, s9, 810f
                  sltiu        a3, a1, 134
                  slti         a5, a2, -1590
795:              addi         tp, s6, -1648
                  and          a6, sp, s7
                  srai         s10, s0, 21
                  sub          s8, t6, s9
                  auipc        s3, 1010042
                  blt          s0, a4, 819f
                  add          t1, a0, a3
                  ori          s11, t0, -339
                  beq          s8, s4, 813f
                  xor          a7, t5, t2
                  srli         s10, t5, 0
                  ori          t1, s10, 331
                  bgeu         s1, a4, 820f
                  xori         s4, t6, 1423
                  bgeu         s5, a3, 823f
810:              sra          s4, ra, t0
                  sra          s3, gp, s2
                  sll          s3, s9, gp
813:              srli         t6, sp, 28
                  lui          s8, 425599
                  sll          t4, s1, tp
                  andi         a7, s6, -1854
                  auipc        a7, 403558
                  blt          a2, t5, 826f
819:              srli         s4, a0, 24
820:              sub          t3, a3, s7
                  bgeu         ra, t3, 828f
                  sll          s0, zero, s0
823:              nop
                  srai         t1, a6, 0
                  srli         t1, s6, 6
826:              lui          s4, 355597
                  bge          t1, s6, 843f
828:              sub          s5, s10, a4
                  bge          t4, a0, 846f
                  or           s10, t6, s7
                  add          a4, sp, s11
                  sll          s0, a7, ra
                  slti         a3, a6, -385
                  bne          s3, zero, 847f
                  sra          a3, t6, s4
                  srli         sp, t3, 1
                  slt          s2, s11, a5
                  beq          tp, gp, 848f
                  add          s7, a4, a7
                  and          t1, t0, sp
                  auipc        s9, 518144
                  slti         sp, t4, 285
843:              lui          t1, 342357
                  srli         s2, a6, 4
                  ori          s5, s11, -1732
846:              srai         a4, ra, 24
847:              addi         a4, a6, 484
848:              xor          t2, a0, a6
                  bltu         a1, a4, 854f
                  auipc        zero, 212300
                  bne          a0, s4, 864f
                  add          s7, ra, t2
                  srli         t3, a3, 5
854:              bge          a7, a6, 869f
                  sra          t3, a5, a0
                  addi         s11, s2, 1754
                  bgeu         a1, a1, 873f
                  slt          ra, gp, s1
                  nop
                  srli         a4, ra, 18
                  beq          t4, t5, 865f
                  ori          sp, a1, -964
                  bltu         t3, s4, 883f
864:              sra          t1, t0, a4
865:              sltiu        a2, ra, 957
                  ori          t5, a2, 1786
                  srai         a2, sp, 14
                  ori          s1, t3, 1956
869:              slli         a7, t2, 28
                  xori         t3, s0, 1321
                  bgeu         t3, s6, 878f
                  nop
873:              srl          t2, s7, s3
                  blt          s4, t5, 891f
                  xor          s9, a4, t3
                  or           s10, s7, s5
                  slti         t5, a2, 674
878:              add          t1, t4, s11
                  bne          t3, t3, 893f
                  andi         tp, s8, -1923
                  slt          t4, tp, s5
                  srl          tp, tp, s5
883:              ori          a5, s2, -508
                  andi         t5, s2, -1118
                  srai         s1, s7, 10
                  bgeu         zero, s3, 895f
                  bgeu         s11, s2, 902f
                  andi         a2, s8, 1984
                  sll          zero, t1, a3
                  srl          a2, sp, a2
891:              srli         zero, a6, 3
                  or           tp, ra, zero
893:              srli         a3, a6, 31
                  bne          s5, s11, 908f
895:              auipc        s4, 658100
                  xori         s4, a6, -949
                  auipc        a6, 691689
                  slt          a6, t4, s5
                  sra          s4, s7, gp
                  bgeu         tp, t5, 910f
                  xor          s10, t6, zero
902:              andi         t6, t3, 1279
                  beq          s2, a1, 909f
                  addi         a1, s8, -843
                  sub          s5, a0, s0
                  srai         s7, sp, 13
                  bltu         s2, a4, 922f
908:              and          sp, a1, t2
909:              and          tp, s4, t5
910:              srl          t1, sp, t5
                  or           s1, t4, t5
                  bgeu         s8, t3, 931f
                  andi         tp, s8, 684
                  bltu         t6, s8, 916f
                  sltiu        s3, a7, -1916
916:              nop
                  sra          gp, s2, s5
                  xor          s1, s8, t0
                  bgeu         t4, s11, 935f
                  bgeu         a4, s9, 929f
                  sltiu        gp, s7, 69
922:              bge          s4, t1, 927f
                  srl          zero, s1, s7
                  slti         a3, t0, 1600
                  slti         t1, s1, 18
                  bgeu         t0, s0, 944f
927:              bge          s10, s7, 937f
                  or           s7, s5, s4
929:              lui          t1, 1047593
                  bne          sp, s6, 938f
931:              srai         s2, t5, 6
                  bge          s1, tp, 941f
                  sll          s9, t1, a6
                  xori         s1, a6, 149
935:              and          zero, t4, s11
                  sltu         a3, t6, a6
937:              and          gp, s11, s11
938:              blt          t3, tp, 954f
                  sltu         t2, t6, s0
                  slti         a3, s3, -296
941:              addi         a2, a0, -1685
                  bgeu         a7, a0, 952f
                  slli         sp, a3, 28
944:              bne          s6, s3, 954f
                  andi         t5, s4, 127
                  xor          a4, s11, s9
                  sltiu        s3, t4, 861
                  bltu         zero, s10, 956f
                  beq          tp, a3, 959f
                  bltu         a5, t0, 967f
                  and          s2, a2, t0
952:              andi         a7, s2, -415
                  beq          s4, zero, 963f
954:              slli         gp, s1, 25
                  srai         tp, t0, 11
956:              slt          t5, a5, s2
                  srai         a7, a6, 7
                  bltu         a4, a4, 967f
959:              slti         sp, a3, -1432
                  slli         t4, t3, 18
                  sub          s1, s5, a0
                  andi         t1, t5, 1757
963:              sub          a5, s5, t6
                  sll          s9, t4, t0
                  beq          tp, s8, 980f
                  add          s5, a6, sp
967:              bltu         s11, s6, 981f
                  bge          gp, s10, 978f
                  andi         s10, t4, -839
                  addi         s9, s3, 1714
                  sra          s4, sp, a2
                  beq          t4, s7, 982f
                  srai         t6, s5, 5
                  srli         zero, t4, 11
                  sra          a7, tp, s9
                  srli         ra, a5, 4
                  sll          a7, gp, a0
978:              bltu         s4, tp, 987f
                  addi         a1, a5, -755
980:              xor          t3, t5, a7
981:              sub          s11, a1, s10
982:              slli         s8, s11, 29
                  sra          s11, zero, s0
                  beq          s5, s7, 1000f
                  sll          a6, t3, t2
                  sltu         s3, a0, a7
987:              and          a5, a2, s10
                  sll          a4, sp, t5
                  xori         t6, t4, 1473
                  addi         s1, s3, 323
                  nop
                  nop
                  bge          s4, t1, 1013f
                  xor          t2, t1, s4
                  addi         s5, s6, -189
                  auipc        a3, 353731
                  slti         s3, s0, -937
                  sltu         s0, t5, sp
                  nop
1000:             nop
                  andi         t3, s9, -1309
                  slt          a4, a5, s5
                  lui          a6, 872407
                  slt          s0, a7, t6
                  sltiu        s9, a6, -828
                  ori          t2, a4, -1836
                  bltu         gp, t2, 1014f
                  or           a1, ra, s8
                  bltu         t4, a4, 1013f
                  ori          a4, a0, 1619
                  bne          s1, tp, 1021f
                  xori         gp, s4, -444
1013:             nop
1014:             auipc        s11, 893181
                  bne          t4, a3, 1017f
                  xor          a4, s6, t6
1017:             ori          s7, a4, -1409
                  slt          s2, t1, a3
                  slli         s5, a3, 9
                  andi         s7, t3, -1524
1021:             bltu         s10, tp, 1040f
                  sltu         a7, s1, t5
                  sra          s5, s3, a3
                  bne          a7, s2, 1033f
                  xori         t1, t3, -1457
                  addi         s1, gp, -1091
                  srai         ra, gp, 22
                  srli         t6, s4, 12
                  bgeu         a1, a6, 1044f
                  slli         t6, a6, 6
                  auipc        sp, 875893
                  lui          s4, 510152
1033:             lui          s3, 499405
                  bgeu         ra, s8, 1052f
                  srl          s0, a0, t1
                  beq          sp, s3, 1052f
                  bne          s11, s10, 1042f
                  bne          t1, s4, 1052f
                  sub          t1, s10, s9
1040:             srai         s4, t3, 27
                  srai         a4, t0, 9
1042:             addi         s11, s4, -517
                  ori          s3, a6, -370
1044:             sub          s2, t0, s6
                  sltu         t4, a2, zero
                  srli         a3, tp, 19
                  andi         s8, a5, -1877
                  srl          a4, a1, sp
                  add          t4, s6, s7
                  and          t4, t0, s7
                  srli         s0, a5, 8
1052:             bge          t4, s9, 1057f
                  bge          t6, s4, 1059f
                  slt          t2, s10, a7
                  sltiu        a5, s1, 389
                  bne          tp, t5, 1071f
1057:             sltu         s7, t4, gp
                  nop
1059:             or           a2, a1, s10
                  bltu         t0, gp, 1073f
                  bne          t5, s6, 1077f
                  lui          t1, 212992
                  sltiu        t3, s4, -17
                  bltu         t0, s2, 1081f
                  bne          s2, a0, 1078f
                  bgeu         t0, s2, 1084f
                  or           a1, s10, s5
                  slli         s1, s9, 15
                  bne          s6, s0, 1082f
                  bltu         sp, zero, 1076f
1071:             slti         zero, s8, -1336
                  slt          s2, tp, s10
1073:             sll          a4, s10, a4
                  bne          s2, a6, 1091f
                  slti         zero, t3, -1947
1076:             srai         s7, ra, 17
1077:             nop
1078:             ori          tp, t2, 232
                  xor          gp, t2, t2
                  slt          a1, gp, t4
1081:             bltu         s10, a3, 1091f
1082:             add          s1, s8, t6
                  srli         s2, t6, 7
1084:             srli         a4, s3, 16
                  sra          s1, s2, a1
                  srai         a6, a6, 17
                  srai         a4, a0, 7
                  srl          t5, tp, t2
                  andi         t4, t4, -543
                  sltiu        a2, s7, 1737
1091:             srli         sp, zero, 5
                  sltiu        a4, t3, 1839
                  blt          s8, s4, 1098f
                  srl          s0, s11, s4
                  sub          s7, s2, s3
                  andi         a7, sp, 832
                  lui          t1, 381169
1098:             bge          t5, s2, 1117f
                  xori         s1, zero, 1362
                  bltu         t6, t2, 1102f
                  auipc        s7, 439336
1102:             andi         t2, a0, 93
                  sub          a2, s8, a7
                  nop
                  sll          s4, sp, s6
                  xori         t4, a2, 242
                  beq          sp, s5, 1122f
                  and          s4, s11, s4
                  bge          s6, gp, 1129f
                  bgeu         t6, a0, 1120f
                  srl          ra, a4, a7
                  nop
                  blt          a2, s3, 1127f
                  or           tp, a1, a5
                  sltiu        t2, t5, -1490
                  auipc        s1, 446889
1117:             add          a5, t0, a2
                  srai         s3, t0, 0
                  bge          s8, s10, 1127f
1120:             and          s9, s10, s4
                  sra          a7, s11, s3
1122:             xori         a6, a3, 944
                  slt          t5, s2, a7
                  bge          ra, s0, 1138f
                  bne          gp, a2, 1140f
                  bge          s0, a1, 1141f
1127:             slti         s7, a3, 852
                  addi         gp, a1, -719
1129:             sltiu        s9, s2, 1330
                  srli         s7, tp, 10
                  xori         gp, a3, 863
                  add          t5, t6, s7
                  blt          zero, a1, 1146f
                  lui          s8, 797692
                  xori         a1, tp, -763
                  sub          s3, s6, t3
                  slli         t6, s4, 3
1138:             ori          a6, t3, 747
                  blt          a4, a4, 1155f
1140:             blt          s10, a5, 1150f
1141:             beq          s5, s9, 1150f
                  andi         a2, s7, 1224
                  ori          s0, s7, 1887
                  bne          s7, s2, 1160f
                  or           s9, s8, s11
1146:             lui          t5, 205712
                  bltu         sp, a2, 1157f
                  bne          s8, s8, 1164f
                  sll          s11, zero, s6
1150:             beq          s0, s6, 1160f
                  bge          gp, s8, 1160f
                  addi         s11, a2, -328
                  lui          t3, 404485
                  bltu         t6, tp, 1171f
1155:             or           a7, a1, sp
                  and          s9, s3, a4
1157:             bne          a3, a4, 1162f
                  addi         s8, s8, 960
                  auipc        s10, 236540
1160:             slli         s10, a5, 9
                  ori          s9, ra, 1802
1162:             addi         a6, t0, 419
                  ori          s11, s2, 929
1164:             bne          s7, gp, 1171f
                  xor          t1, a4, t3
                  sra          tp, ra, s8
                  or           t4, s2, a3
                  sub          s0, s11, s8
                  bgeu         a2, t3, 1178f
                  slli         a6, a0, 2
1171:             slt          t3, s3, s8
                  xor          a6, a6, s9
                  srli         gp, zero, 2
                  or           s8, s0, t3
                  lui          a4, 865163
                  andi         s9, s3, -878
                  bltu         s7, a5, 1181f
1178:             slti         t1, t2, 1364
                  la           sp, region_1+1942 #start riscv_load_store_rand_instr_stream_1
                  lbu          a7, -1134(sp)
                  nop
                  lbu          s4, -805(sp)
                  lb           t3, 51(sp)
                  lb           ra, -872(sp)
                  lb           t4, -1133(sp)
                  add          s11, t5, a7
                  srai         t1, t2, 12
                  srli         t1, s11, 12
                  auipc        a5, 626292
                  or           zero, s9, s1
                  sb           t1, -1596(sp)
                  and          a3, sp, a0
                  slli         s2, s10, 4
                  lh           t4, -16(sp)
                  sb           a7, -63(sp)
                  or           s7, t5, tp
                  sub          t2, t3, s4
                  lbu          s4, -1851(sp)
                  or           s7, a6, s3
                  lb           s10, -1005(sp)
                  slli         s2, s10, 16
                  auipc        s8, 1000018
                  lbu          s11, -33(sp)
                  addi         t3, ra, 1597
                  lbu          a1, -146(sp)
                  sb           t1, -865(sp)
                  lbu          s1, -843(sp)
                  lbu          s5, -1024(sp)
                  lhu          ra, -108(sp)
                  srli         s4, sp, 7
                  lbu          s10, -689(sp)
                  lb           s2, -857(sp)
                  srli         a7, t5, 13
                  lb           a2, -1157(sp)
                  slli         a7, a1, 10
                  add          s3, s0, t6
                  addi         a3, a6, -1647
                  sw           s6, -114(sp)
                  srai         a1, gp, 5
                  sb           s1, -1247(sp)
                  lbu          t1, -909(sp)
                  lhu          t2, -1506(sp)
                  lhu          t2, -160(sp) #end riscv_load_store_rand_instr_stream_1
                  ori          s10, t1, 1650
                  or           t3, s5, a2
1181:             bgeu         s6, a5, 1188f
                  xori         t5, s11, -195
                  bltu         s10, t2, 1191f
                  add          a3, t0, s5
                  auipc        a2, 615156
                  srli         s4, t0, 11
                  sll          s5, a6, s4
1188:             srli         a4, a3, 30
                  bltu         s10, s4, 1195f
                  or           s9, s7, s3
1191:             slti         t5, a0, 408
                  sra          a1, s1, s7
                  bge          s9, s0, 1195f
                  bge          t4, a6, 1195f
1195:             slt          s2, s9, t1
                  xor          s10, s10, t3
                  addi         t4, s7, 722
                  sltu         s7, a5, s8
                  lui          s5, 156996
                  lw           gp, 4(a0)
                  slti         s8, t1, -181
                  nop
                  addi         a0, a0, 8
                  srai         t1, s7, 26
                  addi         ra, s3, -915
1548:             addi x7, x3, 0
1548:             jalr x7, x7, 0
sub_2:            srli         a5, t2, 26
                  and          a6, s8, ra
                  andi         a2, a5, 660
                  addi         a0, a0, -40
                  slti         s8, t5, -394
                  slli         a5, t0, 18
                  andi         sp, a2, -1260
                  sw           gp, 4(a0)
                  andi         ra, s11, 603
                  srli         a7, zero, 1
                  andi         a5, zero, -1989
                  bltu         t1, t0, 7f
                  srli         s2, t1, 8
                  sub          t2, gp, t2
                  auipc        a1, 109054
                  or           gp, a6, t5
                  nop
                  and          s0, t1, a2
                  la           s4, region_0+1775 #start riscv_load_store_rand_instr_stream_0
                  srai         t3, s11, 18
                  auipc        a1, 102820
                  lw           t2, 5(s4)
                  lb           s7, 25(s4)
                  addi         a4, tp, -263
                  slti         s1, t0, 776
                  lbu          tp, 20(s4)
                  lb           a5, -9(s4)
                  sb           a6, 35(s4)
                  or           s9, a3, a1
                  xor          s7, a7, t2
                  sh           gp, -21(s4)
                  sb           a0, -32(s4)
                  slti         sp, t5, -706
                  sub          zero, a0, t6
                  lw           t3, 33(s4)
                  lbu          s2, -46(s4)
                  srai         a3, t5, 19
                  sra          t6, s0, t3
                  andi         a5, a2, 1482
                  lbu          gp, -50(s4)
                  sb           s0, -47(s4)
                  auipc        zero, 615556
                  sb           s9, -38(s4)
                  lhu          s10, -19(s4)
                  sw           s5, 61(s4)
                  xor          a1, t3, a7
                  nop
                  srli         t6, t2, 12
                  lbu          a2, -35(s4)
                  lbu          t5, -53(s4)
                  srai         s0, a5, 15
                  sltu         a4, s8, a5
                  lbu          s10, 27(s4)
                  lb           gp, -50(s4)
                  lui          a6, 558255
                  lbu          a1, -44(s4)
                  lb           a5, 59(s4)
                  xor          t5, t0, s3
                  xori         t5, a7, 392
                  lbu          s10, 18(s4)
                  sll          a3, s11, t3
                  sb           s6, -12(s4)
                  and          s5, s0, t0
                  nop
                  sll          a5, s1, t3
                  lbu          a4, 61(s4)
                  lb           s3, 62(s4)
                  srl          sp, a3, s6
                  sb           a5, 55(s4)
                  sra          s3, s3, s1
                  lb           a4, 62(s4)
                  sub          a2, a4, s2
                  slti         s1, a1, -199
                  srai         sp, t4, 6
                  xor          t2, t0, a2
                  lh           a3, 15(s4)
                  lb           s0, -41(s4)
                  lbu          s11, -3(s4)
                  lb           s10, -58(s4) #end riscv_load_store_rand_instr_stream_0
7:                nop
                  xori         s8, t0, -219
                  slli         t1, s10, 24
                  nop
                  bgeu         a1, t6, 20f
                  or           s7, a3, a7
                  srai         gp, a5, 13
                  auipc        t4, 195548
                  xori         s5, t2, 1634
                  sub          t2, a0, a6
                  lui          gp, 994477
                  nop
                  andi         s9, gp, -1601
20:               sll          t1, ra, a4
                  sra          s11, s6, a7
                  lui          s9, 532893
                  bltu         a4, gp, 39f
                  sub          a6, t3, ra
                  srai         t2, t6, 20
                  add          s9, a2, a6
                  blt          s3, s11, 35f
                  ori          s10, t1, 1339
                  bge          s1, a4, 36f
                  and          a2, s4, s5
                  beq          s3, s7, 47f
                  slti         a2, s7, 152
                  slti         a1, s3, 852
                  sra          s3, a1, a4
35:               xor          tp, t1, a4
36:               slli         ra, a7, 13
                  addi         s5, s10, -1507
                  slli         s5, a5, 6
39:               sra          t3, s8, t2
                  sra          a6, gp, ra
                  add          t2, s6, s9
                  slli         a4, a7, 12
                  sll          s7, s5, t0
                  addi         t4, ra, -71
                  srli         a6, t4, 12
                  bltu         a4, t4, 50f
47:               bltu         t1, a6, 63f
                  srli         s2, s9, 31
                  sltiu        a3, a6, 673
50:               or           s9, s6, s5
                  beq          zero, a0, 59f
                  ori          s9, a3, -269
                  nop
                  sltu         s5, t2, a1
                  auipc        t4, 175443
                  srli         s7, a6, 25
                  xor          s9, a1, s11
                  bgeu         sp, zero, 76f
59:               sltiu        s9, s6, -1582
                  srli         a4, t3, 21
                  srai         a4, s7, 22
                  addi         a6, a6, 352
63:               blt          s10, sp, 80f
                  lui          s10, 532010
                  sltiu        t5, s10, -11
                  andi         s1, s1, -427
                  and          s5, a6, a7
                  bgeu         t5, ra, 74f
                  nop
                  srai         ra, s1, 0
                  sub          a3, s4, t1
                  ori          s5, s10, -1822
                  add          s4, a4, s7
74:               sub          s5, t0, sp
                  srl          tp, s2, a4
76:               ori          sp, t6, -202
                  bgeu         s10, zero, 96f
                  slli         t3, t3, 7
                  sub          s3, s11, s6
80:               add          s7, a3, s5
                  bgeu         s6, t4, 82f
82:               srl          gp, s4, s4
                  bge          t2, s9, 89f
                  srl          tp, t5, a1
                  srl          s1, tp, s11
                  bgeu         s2, a4, 106f
                  or           a6, tp, s2
                  sltiu        t5, t3, 1340
89:               andi         zero, a7, 1482
                  srli         t2, t2, 29
                  or           a5, t6, a2
                  slt          ra, zero, s5
                  ori          t3, s3, 1363
                  xori         a2, a2, 714
                  slti         t3, s1, -326
96:               xor          tp, t5, gp
                  ori          a5, a4, -1439
                  nop
                  or           t5, sp, s0
                  bne          s10, t2, 120f
                  srli         t5, a7, 5
                  sra          a2, a0, s9
                  xor          t2, a7, t2
                  slti         a6, s9, 1731
                  and          s8, t2, zero
106:              bge          t2, zero, 117f
                  bne          s5, s5, 127f
                  sltu         s4, sp, t0
                  ori          t1, a1, 304
                  or           a5, t5, s4
                  andi         t5, t4, -1249
                  nop
                  and          a4, s11, s4
                  blt          a7, s9, 132f
                  beq          t0, s1, 126f
                  and          s5, s11, s1
117:              lui          a1, 28212
                  ori          a5, a7, 706
                  andi         s8, a4, 1745
120:              xori         s3, t5, -1064
                  slt          tp, a5, t3
                  or           tp, t6, s5
                  sub          s9, s5, s6
                  bge          a0, a7, 126f
                  sltiu        ra, a1, -330
126:              ori          t2, ra, 665
127:              bge          a5, zero, 146f
                  bne          t0, s1, 133f
                  andi         a6, a3, 1176
                  slt          s9, sp, gp
                  slti         t3, t5, 1094
132:              bge          t3, s10, 140f
133:              srai         s2, ra, 27
                  srl          t5, s9, s6
                  srl          t2, a7, t3
                  bne          a7, a1, 143f
                  sltu         t4, s11, a4
                  nop
                  srli         t1, a5, 20
140:              sltiu        s8, a1, -1520
                  lui          s10, 491462
                  andi         s5, s0, -1310
143:              bne          s9, sp, 151f
                  sltiu        gp, t3, -665
                  add          s10, s2, t4
146:              sltiu        tp, a1, -574
                  add          s10, s5, s8
                  addi         t6, s6, 45
                  bne          s3, s1, 167f
                  add          s4, s4, ra
151:              slli         t6, sp, 11
                  lui          a6, 225943
                  andi         ra, s1, 1528
                  sltiu        s0, s7, -1381
                  srai         s4, a7, 24
                  bltu         s5, a3, 165f
                  sub          s7, zero, tp
                  lui          a3, 985829
                  bne          a5, t2, 162f
                  nop
                  slli         s3, t5, 0
162:              sltu         gp, a4, s11
                  and          s0, s9, s11
                  addi         t2, s11, -1804
165:              or           s11, zero, s10
                  sltiu        s11, s3, -1883
167:              lui          a1, 529294
                  auipc        s1, 156016
                  and          t6, gp, t1
                  slli         s4, s0, 20
                  auipc        a5, 326383
                  xori         t3, t4, -171
                  lui          a6, 124505
                  slti         t2, s5, -2005
                  sll          a6, s7, a7
                  slt          t4, s4, t4
                  lui          s1, 84331
                  slli         zero, s11, 8
                  or           sp, s9, gp
                  nop
                  sll          a5, t1, s6
                  nop
                  lw           gp, 4(a0)
                  addi         a0, a0, 40
                  srai         a4, s11, 25
258:              addi x24, x3, 0
258:              jalr x24, x24, 0
sub_8:            sll          s2, t3, s10
                  sra          t1, s2, s4
                  bge          s9, s1, sub_8_stack_p
                  ori          t3, s11, 1613
                  slli         s11, s11, 3
sub_8_stack_p:    addi         a0, a0, -52
                  sw           gp, 4(a0)
                  srl          s0, s8, ra
                  bltu         ra, t2, sub_8_j11 #branch to jump instr
                  sltiu        a3, t2, -652
                  add          sp, tp, a4
                  sub          a7, s2, t3
                  and          a7, a4, zero
                  srl          ra, s0, t2
                  srai         t3, a4, 22
                  sltiu        s1, t1, -1750
                  srai         t2, a3, 15
sub_8_j11:        jal          gp, sub_9 #jump sub_8 -> sub_9
                  la           t4, region_1+1476 #start riscv_load_store_rand_instr_stream_2
                  lw           s1, 48(t4)
                  lhu          t6, -4(t4)
                  lui          t1, 992023
                  addi         zero, a7, 355
                  lw           gp, 12(t4)
                  slti         t6, s11, -1540
                  lb           t5, 58(t4)
                  lb           a3, 52(t4)
                  sb           a0, -57(t4)
                  lbu          s4, 33(t4)
                  sb           a4, -31(t4)
                  lhu          s3, -18(t4)
                  sb           s4, -11(t4)
                  lbu          s4, 35(t4)
                  sra          a3, s5, a4
                  addi         tp, t1, -798
                  sb           t6, 13(t4)
                  sb           s0, 59(t4)
                  lhu          s11, -58(t4)
                  lw           t1, 56(t4)
                  lbu          a1, -52(t4)
                  lbu          a6, -61(t4)
                  sltiu        s11, s4, 1831
                  slti         t1, a6, 1040
                  lhu          s0, 36(t4)
                  sltu         t3, a3, t4
                  slli         a2, zero, 25
                  sb           s6, 7(t4)
                  lbu          a2, -51(t4)
                  lui          s10, 451419
                  lb           s0, 25(t4)
                  lb           s8, -18(t4)
                  lhu          s8, 0(t4)
                  sb           a7, -58(t4)
                  srli         a3, s7, 11
                  nop
                  sltiu        s9, s10, 807
                  lb           s0, -26(t4)
                  sh           a6, 40(t4)
                  lb           t1, 15(t4)
                  sh           s8, -32(t4)
                  sh           s0, -36(t4) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+1028 #start riscv_load_store_rand_instr_stream_3
                  lbu          a6, 142(t1)
                  sub          a1, a7, s11
                  lbu          t2, 83(t1)
                  sltu         a7, s10, s7
                  sll          zero, sp, t2
                  lb           s8, -204(t1)
                  lb           a1, -9(t1)
                  slli         s2, a1, 27
                  lb           s7, -6(t1)
                  lbu          a1, 247(t1)
                  lbu          s2, -214(t1)
                  lw           t6, 28(t1)
                  lh           t5, -170(t1)
                  lb           s0, -111(t1)
                  slli         a4, s3, 28
                  sltiu        a7, t4, 164
                  lbu          a6, 187(t1)
                  xori         s1, s4, -233
                  sll          tp, s7, a7
                  sra          s4, ra, s4
                  srl          sp, s7, a5
                  lbu          t3, -241(t1)
                  lbu          t4, 209(t1)
                  sb           a6, -111(t1)
                  slli         t3, a1, 10
                  lhu          t4, -116(t1)
                  srai         s10, zero, 11
                  lb           a4, -127(t1)
                  sb           s4, 149(t1)
                  lb           s5, -134(t1)
                  lhu          a5, -38(t1)
                  lbu          s4, -40(t1)
                  sh           a4, 152(t1)
                  sb           s7, 43(t1) #end riscv_load_store_rand_instr_stream_3
                  xori         t3, a6, -1361
                  lui          s11, 87955
                  slti         s3, a7, -1045
                  slt          s7, a1, a3
                  xor          tp, a0, t4
                  auipc        a2, 2595
                  nop
                  xor          t6, a1, s5
                  andi         a3, s11, -250
                  srl          s3, s6, a3
                  bne          t2, a0, 25f
                  bge          a2, tp, 22f
                  slti         t1, t4, 1358
                  srli         s8, a3, 16
                  lui          s11, 17658
                  sll          ra, s11, t5
                  sltu         s0, a1, s0
                  sra          s1, s9, s7
                  slli         s2, s11, 25
                  slti         a5, a0, -695
                  slt          ra, a3, s9
                  and          a6, t4, tp
22:               slt          s10, t6, a4
                  slti         a1, s6, 1862
                  nop
25:               bgeu         tp, t6, 43f
                  xori         s4, s10, -1830
                  and          s5, t3, t1
                  add          a6, zero, s2
                  beq          a1, t6, 44f
                  bgeu         a7, s1, 34f
                  srai         s4, t5, 21
                  blt          t3, t6, 42f
                  bltu         s10, s6, 34f
34:               add          t4, s1, t6
                  slli         t3, s3, 3
                  xori         s4, t1, 993
                  addi         t4, s3, -268
                  bne          s1, t4, 42f
                  sltiu        a4, t5, -365
                  sltu         s4, sp, zero
                  ori          s8, a6, 1018
42:               nop
43:               bltu         t4, s8, 47f
44:               lui          s11, 470850
                  ori          sp, s9, 1122
                  bge          s7, s9, 65f
47:               beq          zero, a1, 62f
                  sra          t3, s2, a7
                  srai         s1, s0, 3
                  or           a3, t6, s2
                  blt          ra, zero, 52f
52:               xor          a6, t4, a0
                  or           a7, s8, s1
                  xori         a5, t5, -887
                  blt          a4, s10, 60f
                  beq          tp, a4, 76f
                  xori         ra, t5, 1702
                  xori         t4, a6, -1766
                  xor          sp, s9, s5
60:               auipc        s9, 544207
                  slt          sp, s3, a7
62:               nop
                  xor          a6, s4, s10
                  lui          a7, 25712
65:               nop
                  bltu         a7, s4, 67f
67:               sll          t1, t3, a6
                  slt          a3, t6, a0
                  beq          a3, s6, 88f
                  blt          a5, s1, 88f
                  sll          ra, gp, tp
                  blt          s11, s6, 85f
                  lui          sp, 260207
                  sra          tp, s0, tp
                  sltu         s5, a2, s8
76:               srl          s5, s3, s5
                  lui          s7, 861952
                  slti         tp, s8, -1571
                  xori         s11, a3, 500
                  srai         a5, a5, 2
                  xori         ra, tp, -345
                  bltu         s6, t5, 100f
                  bgeu         s5, s10, 92f
                  beq          a0, t3, 90f
85:               sra          s8, ra, t0
                  slti         t3, s0, -7
                  lui          gp, 16725
88:               bltu         t4, a6, 100f
                  sltu         a7, a4, s11
90:               blt          s11, a6, 106f
                  lui          zero, 565328
92:               andi         s3, t5, 5
                  add          a4, s8, t2
                  xor          a1, t4, t2
                  xori         s9, gp, -1016
                  ori          s7, s3, -1655
                  bne          t3, t3, 112f
                  andi         a6, s2, 1452
                  xor          t3, s9, t1
100:              sub          tp, a1, a6
                  add          a2, s3, s11
                  andi         t2, a3, 540
                  nop
                  xor          sp, a0, s6
                  or           a1, gp, zero
106:              sll          s8, a0, s7
                  nop
                  slti         s8, s7, 1959
                  bltu         tp, s4, 129f
                  bltu         ra, s10, 123f
                  slt          t5, s0, a2
112:              bltu         sp, s7, 118f
                  bne          a6, t0, 131f
                  auipc        a4, 12506
                  addi         a6, t6, -1146
                  auipc        s11, 417617
                  bltu         t5, zero, 131f
118:              beq          tp, t4, 128f
                  srai         a6, t3, 16
                  srli         s8, t3, 11
                  la           s4, region_0+680 #start riscv_load_store_rand_instr_stream_1
                  lb           sp, 1182(s4)
                  slli         a4, ra, 17
                  lbu          a3, 417(s4)
                  sub          s1, s6, s5
                  lhu          s11, 612(s4)
                  sw           t1, -588(s4)
                  addi         gp, ra, 253
                  sw           s11, -644(s4)
                  sra          t1, a4, t4
                  lbu          tp, 560(s4)
                  add          a2, a0, s3
                  lbu          t2, 654(s4)
                  sb           t3, 249(s4)
                  xor          s8, s5, s1
                  srli         tp, t2, 31
                  srai         a3, a4, 1
                  lb           a6, 326(s4)
                  lb           t4, 1009(s4)
                  lb           s2, -371(s4)
                  srai         a2, s8, 26
                  sb           s4, -250(s4)
                  srai         a4, ra, 22
                  sll          sp, a0, a7
                  or           a5, t5, s1
                  nop
                  sh           a7, 200(s4)
                  or           zero, gp, a7
                  and          t5, t0, t6
                  sra          t6, s6, t5
                  lb           a7, 427(s4)
                  sub          s7, s0, s0
                  auipc        s11, 430822
                  sb           a1, -467(s4)
                  lb           s2, 409(s4)
                  sub          t1, t2, t3
                  addi         ra, s7, 1243
                  sb           t4, 650(s4)
                  sll          s10, s5, s4
                  ori          s7, s7, -1961
                  lbu          t3, 17(s4)
                  sb           tp, 775(s4) #end riscv_load_store_rand_instr_stream_1
                  and          a6, a0, a5
                  ori          t6, s7, 780
123:              bltu         a2, a7, 141f
                  bltu         s10, s0, 136f
                  xor          a3, a4, s2
                  or           tp, t4, tp
                  and          ra, s1, gp
128:              sltu         s10, t2, s8
129:              xori         a6, t4, -1521
                  srai         t3, t0, 27
131:              srli         a6, a6, 19
                  lui          a3, 797323
                  ori          s4, s10, 585
                  sll          zero, s11, s7
                  slti         t5, t3, -492
136:              ori          a5, s7, 1704
                  sub          s1, tp, s4
                  and          ra, s3, t3
                  ori          t1, s9, 1813
                  nop
141:              nop
                  sltiu        a4, s8, -840
                  srl          s0, t1, t3
                  sltiu        s1, gp, 16
                  sub          a5, t0, s3
                  andi         a6, t0, -368
                  sub          t3, a1, gp
                  nop
                  sll          t4, s8, s2
                  auipc        a5, 464037
                  slti         sp, s6, -1104
                  add          t6, a2, a2
                  or           zero, s0, tp
                  xor          zero, s3, a3
                  xori         s5, tp, 514
                  bne          s8, t5, 157f
157:              ori          ra, s1, 1046
                  andi         tp, zero, 823
                  sll          a7, a7, s2
                  srai         a6, t4, 24
                  xor          a7, gp, s8
                  nop
                  sub          s2, s0, a6
                  add          s2, a5, a1
                  xori         s3, s4, -689
                  auipc        a3, 742493
                  nop
                  bne          a1, t4, 179f
                  ori          s4, a4, 79
                  ori          t5, s2, 1238
                  lui          t2, 501821
                  srl          a4, s4, s8
                  srli         t3, s10, 13
                  ori          s9, t6, -1418
                  sltu         a1, a7, a1
                  slt          sp, t0, s3
                  sra          s7, s9, t0
                  srl          t4, t1, ra
179:              bgeu         tp, a1, 199f
                  bne          gp, t1, 196f
                  bne          tp, s5, 186f
                  srli         a4, s3, 6
                  bgeu         s3, sp, 201f
                  add          s7, a5, sp
                  slli         s1, s11, 17
186:              bne          s8, sp, 205f
                  srli         t2, s4, 23
                  andi         t5, a3, -1129
                  xori         a3, s9, 119
                  ori          s1, s8, 736
                  bltu         a6, s9, 205f
                  or           s7, t3, a7
                  srai         s10, s5, 27
                  srl          s11, a4, t0
                  ori          s10, s5, -594
196:              bge          gp, s8, 209f
                  bge          s10, a4, 215f
                  ori          s11, s3, -2000
199:              lui          t5, 591938
                  or           t3, sp, tp
201:              sll          a2, s1, t0
                  slli         a3, s1, 0
                  sra          a4, a7, s9
                  sll          s0, t2, s5
205:              xori         s4, t6, -378
                  and          gp, s3, a5
                  srl          t6, s6, a5
                  bge          s0, s5, 228f
209:              ori          a7, a2, -950
                  blt          a3, s3, 214f
                  nop
                  bltu         t5, zero, 218f
                  bltu         s3, s8, 228f
214:              sub          a2, t5, ra
215:              bge          s9, zero, 219f
                  bltu         s9, a1, 226f
                  andi         ra, t0, 314
218:              add          s4, s2, a7
219:              srli         a4, s1, 23
                  slt          a3, s4, s9
                  lui          t1, 433105
                  andi         t2, t5, -49
                  sll          s1, t6, t6
                  slt          t2, t1, t4
                  ori          t1, s11, -1623
226:              slli         a6, gp, 5
                  bgeu         t6, a5, 231f
228:              sltiu        a3, a6, -145
                  and          sp, s4, gp
                  add          tp, s6, a2
231:              sub          ra, sp, ra
                  slt          s7, s10, a2
                  blt          t5, a3, 248f
                  srli         s0, zero, 10
                  sltiu        s9, t2, 1673
                  bgeu         s9, s1, 237f
237:              blt          s2, a3, 250f
                  and          t2, a6, s11
                  sltiu        s5, a2, 33
                  nop
                  ori          a2, a4, -1089
                  slt          sp, s3, s4
                  bne          t2, zero, 244f
244:              bne          s11, sp, 259f
                  sltiu        s1, a1, -579
                  sll          tp, a6, t1
                  add          a1, a4, s6
248:              blt          t0, a1, 254f
                  xori         s2, zero, 676
250:              nop
                  auipc        a5, 290948
                  sltu         t1, s7, s0
                  bgeu         s7, t3, 268f
254:              nop
                  bgeu         ra, s8, 273f
                  srai         a1, t2, 13
                  srai         s3, a4, 1
                  srai         t1, s10, 22
259:              sll          s2, s2, a3
                  add          gp, ra, s8
                  sub          a5, t2, sp
                  sll          s0, t4, s11
                  or           s0, a5, gp
                  nop
                  add          s1, tp, sp
                  nop
                  slt          tp, s4, s2
268:              blt          s8, s5, 287f
                  xor          tp, t0, a7
                  add          a5, s0, s2
                  xor          s7, t2, a7
                  sll          t4, sp, sp
273:              beq          a7, s9, 283f
                  sub          s9, s7, a2
                  add          s3, gp, t6
                  beq          t2, t4, 285f
                  and          s8, zero, tp
                  slli         s5, t5, 23
                  srl          a4, s4, a1
                  sltiu        t6, a7, 1243
                  bge          tp, a1, 295f
                  xori         gp, s11, -915
283:              sltu         s4, t0, a3
                  sltiu        s3, tp, -883
285:              andi         ra, s2, 272
                  bltu         gp, a1, 299f
287:              srai         gp, t5, 7
                  slt          a4, s6, t6
                  sub          s2, s8, a4
                  auipc        ra, 294086
                  sltiu        s4, t4, 1602
                  sltu         t1, tp, a2
                  slt          s1, t6, a7
                  and          t2, s5, a7
295:              srli         a3, s7, 28
                  blt          a7, gp, 300f
                  beq          s3, ra, 307f
                  sub          s8, a5, s10
299:              xor          s8, t3, s8
300:              srai         t1, gp, 10
                  andi         t6, ra, 1228
                  sltiu        a1, s8, -822
                  xor          s4, t4, a4
                  srai         t6, t0, 14
                  sltu         a2, sp, sp
                  slt          s2, s6, a5
307:              sltu         s3, s10, s11
                  xor          s11, gp, t4
                  bge          a3, t4, 324f
                  sub          t2, s8, a0
                  srai         s10, a1, 16
                  sra          s1, s3, a2
                  nop
                  ori          ra, a7, -1324
                  xori         s8, s0, 1960
                  nop
                  lui          a6, 910869
                  ori          t2, a5, 1372
                  bne          s9, t1, 332f
                  srli         s4, t2, 28
                  blt          s8, t1, 339f
                  ori          s5, s9, 857
                  srl          a5, s3, s5
324:              bne          t1, s10, 342f
                  beq          s4, a2, 329f
                  auipc        a4, 608279
                  bgeu         t0, t5, 346f
                  sub          s3, s8, sp
329:              slli         a4, a6, 2
                  sra          a1, s10, t5
                  beq          t5, s3, 340f
332:              sll          a3, s1, t2
                  slti         t4, a3, -1125
                  bne          s0, a4, 352f
                  slli         t5, t3, 13
                  auipc        ra, 1035075
                  srli         s3, t2, 1
                  xor          sp, s7, t0
339:              auipc        a4, 266745
340:              beq          a7, s10, 355f
                  bge          s6, s8, 342f
342:              sltu         s5, s2, s5
                  slti         s9, t5, -1627
                  sltu         s7, t4, tp
                  bltu         a4, a3, 363f
346:              andi         a6, sp, -1447
                  sra          ra, s11, sp
                  slt          s3, a7, t4
                  bge          a3, a2, 369f
                  sltu         t5, a3, s4
                  xor          s8, ra, s2
352:              or           tp, s1, zero
                  sltiu        a4, zero, 125
                  slli         gp, zero, 4
355:              bne          a6, zero, 360f
                  and          s5, sp, s10
                  slli         s8, a0, 29
                  sub          s2, t0, s9
                  or           ra, sp, t6
360:              bge          zero, a3, 364f
                  beq          s2, s2, 372f
                  srl          t3, t0, t5
363:              blt          t4, a1, 382f
364:              blt          s3, a7, 376f
                  bne          t3, a4, 380f
                  slti         s9, s2, 444
                  sltu         s5, s10, s10
                  lui          gp, 632983
369:              sltu         s1, sp, t4
                  bge          t3, s4, 371f
371:              beq          s9, t6, 391f
372:              slli         s4, s4, 8
                  slt          a3, s9, t3
                  xor          s5, t3, s6
                  or           s11, s5, a4
376:              xor          zero, zero, s8
                  and          a7, s9, sp
                  sll          t3, a7, a3
                  bne          tp, t3, 389f
380:              andi         a3, ra, -157
                  andi         s1, a2, 1758
382:              srli         zero, a1, 19
                  ori          zero, a7, -1059
                  ori          a1, s5, -456
                  and          a4, gp, tp
                  addi         ra, a1, 1121
                  or           t1, zero, t5
                  beq          s2, a2, 403f
389:              xori         s0, t4, 576
                  sltu         a4, a4, tp
391:              addi         s0, t0, -712
                  slt          t6, t3, s3
                  lui          a6, 88107
                  beq          s4, a0, 395f
395:              bltu         a6, a4, 411f
                  bgeu         a0, gp, 402f
                  sub          a3, a1, ra
                  slt          s7, t5, s6
                  addi         s4, a4, 1220
                  bne          s1, s1, 406f
                  sub          t4, s11, tp
402:              sra          s4, a5, s5
                  la           a7, region_1+150 #start riscv_load_store_rand_instr_stream_0
                  sb           a5, -16(a7)
                  add          s5, gp, a0
                  srli         t5, t2, 2
                  srai         s8, ra, 28
                  lb           t4, -13(a7)
                  slli         s9, a7, 19
                  sh           a1, -6(a7)
                  lbu          t6, 9(a7)
                  sltu         s10, s2, zero
                  lh           a1, 4(a7)
                  ori          gp, a7, 1006
                  lb           a5, -1(a7)
                  lh           a4, 10(a7)
                  sh           s11, 10(a7)
                  lbu          t4, 1(a7)
                  addi         t1, t3, -1319
                  lbu          zero, -13(a7)
                  sll          s8, s3, sp
                  srli         s1, t3, 8
                  lw           t6, 6(a7)
                  srai         a3, a3, 5
                  sltu         a4, s11, s3
                  lb           s5, -13(a7)
                  sltiu        t2, t5, 224
                  lb           s10, -15(a7)
                  add          s0, s1, a6
                  lb           s3, 12(a7)
                  sh           ra, 12(a7)
                  lbu          s5, 1(a7)
                  ori          s9, s11, 1716
                  srai         s0, sp, 10
                  lhu          sp, 4(a7)
                  sh           a4, -6(a7)
                  lw           zero, -6(a7)
                  addi         a5, tp, -24
                  lb           a5, -5(a7)
                  sb           s6, -3(a7)
                  xori         s2, gp, -399
                  srl          a4, s1, s6
                  addi         s8, s9, 9
                  lhu          t1, -6(a7)
                  sb           a0, -16(a7)
                  lbu          s1, 2(a7) #end riscv_load_store_rand_instr_stream_0
403:              or           a4, s2, s11
                  bltu         s0, t5, 419f
                  bltu         s8, a1, 414f
406:              sltiu        s4, ra, 1835
                  andi         gp, zero, -1079
                  bgeu         t1, a1, 412f
                  slti         s9, t0, 949
                  bge          a0, t5, 415f
411:              auipc        s8, 150382
412:              andi         t5, a7, -126
                  add          gp, s1, a5
414:              add          zero, s2, s3
415:              ori          t3, ra, 398
                  srai         a4, sp, 5
                  slti         s2, a7, -837
                  addi         a5, s1, 1319
419:              sra          t5, t5, s7
                  and          gp, gp, s9
                  bne          t6, t2, 439f
                  srl          a6, s11, a7
                  xori         t2, a6, 771
                  slli         s9, a0, 31
                  addi         a4, t6, -888
                  xor          a3, gp, zero
                  addi         zero, t3, 469
                  addi         a6, s3, 698
                  auipc        t1, 151245
                  addi         t1, t6, -1035
                  bne          s8, s0, 432f
432:              sub          s2, gp, t5
                  sub          s7, s5, s0
                  or           a7, a6, t3
                  or           a6, s9, ra
                  lui          a3, 118677
                  slti         s5, s5, -1128
                  xor          s9, s9, a4
439:              srai         s10, gp, 28
                  bltu         s5, a7, 455f
                  lui          s11, 994860
                  andi         t5, t0, 1150
                  add          t5, s3, s3
                  bne          a0, tp, 463f
                  bge          t6, t3, 446f
446:              ori          t4, s2, 1418
                  slti         s5, a6, -937
                  srl          a2, s7, a7
                  sra          a1, s8, s4
                  bltu         a2, t6, 454f
                  srli         t6, s1, 2
                  slti         t5, a0, 1353
                  slt          a7, a7, ra
454:              blt          t6, a4, 472f
455:              srai         gp, s9, 18
                  srl          s9, t6, t2
                  bne          s11, t1, 458f
458:              beq          s10, a5, 476f
                  addi         s5, a2, 1384
                  nop
                  beq          s9, s0, 477f
                  slt          a6, a7, a3
463:              slli         tp, s2, 28
                  auipc        t1, 1032039
                  bne          s8, s4, 476f
                  bltu         a2, s5, 476f
                  nop
                  andi         s4, s9, -1288
                  lui          s5, 646829
                  beq          t3, t0, 490f
                  sltu         a5, ra, a3
472:              xor          s0, t4, s4
                  lui          s4, 413454
                  andi         a6, s6, 165
                  or           s7, a2, t3
476:              nop
477:              sub          a2, s1, a4
                  slti         a2, a5, -225
                  addi         t5, zero, -786
                  sub          s7, s9, a3
                  srl          t2, a4, s0
                  auipc        a1, 272532
                  sra          s4, a7, s0
                  slt          t1, s11, s0
                  andi         s5, a1, -1514
                  bltu         s4, s2, 505f
                  or           a5, gp, t2
                  lui          t1, 27818
                  and          t3, s1, s3
490:              srl          s2, t4, ra
                  ori          zero, s8, -301
                  sltu         s9, sp, sp
                  or           ra, t4, gp
                  add          s3, t5, s0
                  xori         s0, s9, -768
                  blt          s8, t2, 514f
                  and          t6, ra, s11
                  addi         gp, t5, 331
                  blt          a5, gp, 513f
                  add          t6, a0, a3
                  beq          a5, s5, 516f
                  slli         gp, t0, 2
                  slt          t6, s5, a2
                  lui          zero, 713826
505:              beq          s8, t0, 518f
                  srai         a2, t4, 17
                  ori          s5, s11, 1279
                  srl          s8, a0, s10
                  sll          s10, a4, s8
                  addi         a4, gp, 1205
                  sra          s2, a5, a7
                  auipc        zero, 267834
513:              srli         t3, a2, 3
514:              beq          s1, s4, 520f
                  auipc        s9, 728672
516:              sltu         a3, tp, t4
                  sltiu        t4, a7, 389
518:              xori         t1, t0, -1335
                  srl          s5, a4, s11
520:              bge          t5, s9, 532f
                  nop
                  lui          s11, 188022
                  blt          s1, s5, 538f
                  beq          gp, s7, 530f
                  sub          s11, s0, s2
                  addi         s9, t5, 37
                  slt          zero, s3, a6
                  sll          a1, t4, s4
                  sltiu        a4, t0, 1870
530:              lui          s7, 687588
                  or           ra, a2, s10
532:              lui          t6, 180923
                  slt          s0, gp, s9
                  srli         s3, sp, 19
                  slt          s2, s8, gp
                  srli         a5, ra, 9
                  slli         t3, s9, 15
538:              xori         a2, s8, -363
                  slli         s7, gp, 12
                  xor          a3, a1, zero
                  auipc        t3, 18207
                  lui          a2, 135384
                  srli         s3, a4, 13
                  andi         s11, s2, 319
                  sltiu        a3, a0, 98
                  sra          s0, s5, a5
                  sltu         a6, a7, a7
                  or           a2, a1, sp
                  slt          t2, s5, ra
                  lui          a3, 633590
                  bne          t1, a7, 555f
                  xori         t1, t4, 326
                  sltu         zero, a5, t2
                  sltiu        a6, t5, 1592
555:              sltu         t2, s1, ra
                  sll          a1, s9, s3
                  slt          s9, t6, a0
                  addi         a2, a6, -154
                  or           a1, ra, s11
                  sra          s5, s6, a1
                  slli         s11, t6, 6
                  bge          s5, a5, 572f
                  sltiu        a3, tp, -276
                  auipc        a1, 767752
                  srli         a3, t3, 7
                  sltu         t1, s3, s0
                  slti         a1, a5, -1148
                  blt          zero, s7, 581f
                  bne          a6, s11, 589f
                  slti         s3, s8, -1141
                  bge          tp, sp, 589f
572:              bne          t4, t4, 576f
                  bgeu         a6, a0, 574f
574:              andi         a2, a7, 1584
                  and          a5, a2, gp
576:              auipc        s2, 584250
                  and          s2, s1, sp
                  xor          s7, s11, t4
                  blt          gp, t4, 583f
                  slt          t2, s9, s1
581:              beq          s8, s3, 590f
                  slti         s10, gp, -544
583:              sltu         s7, t2, t3
                  nop
                  auipc        gp, 942598
                  srai         zero, t4, 21
                  auipc        s11, 281026
                  xor          a6, s0, t4
589:              slli         sp, s1, 5
590:              srai         t5, a7, 18
                  sltu         a7, s7, t3
                  sltiu        tp, a3, -811
                  and          ra, s2, s2
                  sll          zero, zero, s10
                  lw           gp, 4(a0)
                  addi         a0, a0, 52
                  sltu         sp, tp, a1
                  xori         a3, a5, -838
                  slt          zero, s6, s4
                  srai         sp, t6, 26
                  ori          t4, tp, 97
                  sra          zero, zero, ra
785:              addi x7, x3, 1
785:              jalr x7, x7, 0
sub_4:            lui          a1, 619485
                  bge          a3, sp, sub_4_stack_p
                  slli         tp, s7, 16
sub_4_stack_p:    addi         a0, a0, -28
                  sw           gp, 4(a0)
                  auipc        a4, 993238
                  slt          s5, s9, a6
                  srl          t4, s3, a3
                  nop
                  xor          s5, a2, a0
                  auipc        s1, 13201
                  bltu         t5, s7, sub_4_j7 #branch to jump instr
                  sltu         a3, a0, t0
                  sra          s10, t0, s8
sub_4_j7:         jal          gp, sub_5 #jump sub_4 -> sub_5
                  sltiu        s11, s1, 1586
                  andi         ra, a0, -1104
                  slti         gp, s0, 35
                  bge          a0, t2, 5f
                  sll          t5, t4, t6
5:                blt          s0, s8, 7f
                  srl          sp, s6, s6
7:                or           tp, gp, s2
                  bgeu         t4, t3, 27f
                  auipc        a1, 873528
                  xor          ra, s0, s1
                  sra          a4, s10, s8
                  sltu         s4, s4, t6
                  srl          sp, a6, a2
                  nop
                  beq          a5, s5, 25f
                  or           s4, s9, ra
                  slti         s0, tp, 884
                  bne          s1, t0, 20f
                  and          s3, s7, t2
20:               andi         t5, a5, -502
                  sltiu        zero, s9, 76
                  slt          s5, t2, s6
                  sltu         s3, a1, t2
                  srai         t4, a5, 9
25:               beq          t6, a2, 28f
                  slt          s0, t2, t5
27:               xor          a3, zero, t3
28:               add          ra, a2, s6
                  lw           gp, 4(a0)
                  and          sp, t4, gp
                  auipc        zero, 214389
                  auipc        zero, 309517
                  xori         s0, s7, 1766
                  addi         a0, a0, 28
                  slti         tp, s6, 531
51:               addi x18, x3, 0
51:               jalr x18, x18, 0
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
                  add x22, x10, zero
                  csrr x6, 0x300 # MSTATUS
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 31
                  bne x6, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x6, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x6, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x6, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x6, x28, ecall_handler
                  li x28, 0x1
                  beq x6, x28, instr_fault_handler
                  li x28, 0x5
                  beq x6, x28, load_fault_handler
                  li x28, 0x7
                  beq x6, x28, store_fault_handler
                  li x28, 0xc
                  beq x6, x28, pt_fault_handler
                  li x28, 0xd
                  beq x6, x28, pt_fault_handler
                  li x28, 0xf
                  beq x6, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x10, x22, zero
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
                  add x10, x22, zero
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
                  add x10, x22, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x10, x22, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x10, x22, zero
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
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x10, x22, zero
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
