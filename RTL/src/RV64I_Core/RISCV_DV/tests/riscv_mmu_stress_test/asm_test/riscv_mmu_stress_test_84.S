.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
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
                  li x0, 0xc43e781f
                  li x1, 0xf
                  li x2, 0x0
                  li x3, 0xde08515b
                  li x4, 0x0
                  li x5, 0xf36944a6
                  li x6, 0x491c98d1
                  li x8, 0x80000000
                  li x9, 0xb
                  li x10, 0x50e47243
                  li x12, 0x8
                  li x13, 0xe4d99834
                  li x14, 0xbe45f765
                  li x15, 0xf7924e9b
                  li x16, 0x4
                  li x17, 0xe
                  li x18, 0x5
                  li x19, 0xa
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x40f3bfc3
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x9
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x9
                  li x31, 0x2
                  la x7, user_stack_end
main:             sub          s7, gp, a5
                  la           s2, sub_1
                  or           tp, t3, a5
                  slti         s6, a0, 2023
                  add          s0, s11, s4
                  addi         s2, s2, 327
                  and          t5, s2, gp
main_j2:          jalr         s5, s2, -327 #jump main -> sub_1
                  la           s6, region_1+1379 #start load_store_instr_stream_1
                  la           sp, region_1+783 #start load_store_instr_stream_0
                  la           t5, region_1+890 #start load_store_instr_stream_2
                  lbu          s1, 60(sp)
                  lb           a6, 898(t5)
                  lbu          s8, 126(s6)
                  lhu          a4, 764(t5)
                  lhu          tp, -9(sp)
                  lh           s11, 92(t5)
                  lb           s9, -192(s6)
                  lh           a6, 386(t5)
                  sb           s5, 46(sp)
                  lb           s0, 92(s6)
                  sb           tp, -179(t5)
                  lb           t1, -16(sp)
                  lb           a0, -6(sp)
                  sb           a6, -132(s6)
                  lb           a6, 402(t5)
                  sb           t1, 26(s6)
                  sh           a3, -188(t5)
                  sb           s5, 52(s6)
                  lbu          s2, -26(sp)
                  lw           a3, 198(t5)
                  lhu          t4, -186(t5)
                  lb           t6, 186(s6) #end load_store_instr_stream_1
                  lb           gp, 14(sp)
                  lhu          zero, -290(t5) #end load_store_instr_stream_2
                  sh           a5, 49(sp) #end load_store_instr_stream_0
                  la           s0, region_1+97 #start riscv_load_store_hazard_instr_stream_1
                  sb           s2, -3(s0)
                  sb           s9, -3(s0)
                  lb           sp, -3(s0)
                  lbu          gp, -3(s0)
                  sh           s8, -3(s0)
                  sltiu        a6, t6, 552
                  srl          sp, a2, s0
                  lhu          zero, -3(s0)
                  sh           t4, -3(s0)
                  lw           sp, 15(s0)
                  sltu         s3, t3, a4
                  sb           s8, 15(s0)
                  lw           ra, 15(s0) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_1+1639 #start load_store_instr_stream_1
                  la           s7, region_1+228 #start load_store_instr_stream_0
                  la           gp, region_1+1201 #start load_store_instr_stream_2
                  lh           a3, 1(a6)
                  lbu          s0, 12(a6)
                  sb           t2, -116(gp)
                  lb           t1, -4(a6)
                  sb           a3, 169(gp)
                  sb           t6, 11(a6)
                  lb           s4, 32(gp)
                  lb           a3, 1693(s7)
                  lbu          ra, 935(s7)
                  sb           t3, -154(gp)
                  sb           t0, 12(a6)
                  sb           a5, 0(a6)
                  lbu          a5, 69(gp)
                  sb           ra, 81(s7)
                  lb           t5, -7(a6)
                  sb           t3, 242(gp)
                  lb           s2, 829(s7)
                  sb           s9, -212(gp)
                  lw           a2, 9(a6)
                  lbu          t1, 14(a6)
                  sb           s10, 113(gp) #end load_store_instr_stream_2
                  sh           s1, -9(a6) #end load_store_instr_stream_1
                  lh           a5, 96(s7) #end load_store_instr_stream_0
                  la           sp, region_1+147 #start riscv_load_store_rand_instr_stream_0
                  lbu          s7, -32(sp)
                  lb           a5, 40(sp)
                  add          s7, a0, t0
                  and          t5, s10, s4
                  lbu          s9, 12(sp)
                  sub          a0, a1, s5
                  lb           t6, -39(sp)
                  xori         tp, s5, -187
                  lbu          s3, -14(sp)
                  or           t6, a3, ra
                  andi         a3, t4, -1704
                  nop
                  lb           tp, -15(sp)
                  sll          s0, s3, s2
                  xor          t3, s1, t3
                  sltiu        s11, t6, -1823
                  lbu          s9, 42(sp)
                  lh           s10, 27(sp)
                  add          s10, a4, a0
                  lbu          a5, -58(sp)
                  auipc        s5, 550390
                  sb           s11, -4(sp)
                  lh           s3, -15(sp)
                  lbu          t0, -16(sp)
                  srl          s3, s11, s6
                  add          s3, s8, ra
                  add          gp, tp, s5
                  sh           t6, -19(sp)
                  auipc        s11, 819031
                  sh           gp, 29(sp)
                  sll          s11, s1, s4
                  sb           s10, 28(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_0+48 #start riscv_load_store_rand_instr_stream_1
                  lbu          t1, 25(a6)
                  srli         a5, ra, 15
                  andi         t5, s6, -1605
                  ori          a5, sp, -335
                  lbu          a4, 39(a6)
                  lb           s4, -19(a6)
                  sh           s2, 156(a6)
                  lbu          a2, 144(a6)
                  or           s3, a5, t2
                  lbu          t0, 163(a6)
                  slt          a3, a0, s3
                  lb           t6, 112(a6)
                  lbu          a3, -16(a6)
                  sra          t1, tp, t5
                  lhu          t3, 98(a6)
                  lbu          a3, 213(a6)
                  slli         t3, a7, 7
                  sw           t4, 220(a6)
                  lhu          s4, 226(a6)
                  lbu          t6, 193(a6)
                  lh           s1, 254(a6)
                  slt          s10, a7, s8
                  auipc        s8, 577737
                  lbu          s3, 26(a6)
                  sw           s0, -12(a6)
                  slt          s9, a4, s9
                  lb           s6, 195(a6)
                  and          sp, s10, a1
                  sw           s10, 188(a6)
                  sll          a4, t4, a3
                  srli         a5, a6, 11
                  xori         s7, a1, -428
                  or           s4, t0, a3
                  lbu          a0, 100(a6)
                  sb           s0, 246(a6)
                  sb           a1, 23(a6)
                  lbu          t4, 63(a6)
                  ori          s8, a0, -1612
                  ori          t5, t1, 1248
                  sltiu        zero, s3, 1013
                  sh           a7, 114(a6)
                  addi         s9, sp, 564
                  sub          t4, s6, s10
                  sh           a0, 80(a6)
                  lb           s9, 174(a6) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+969 #start riscv_load_store_hazard_instr_stream_0
                  or           s1, t4, a0
                  or           t5, t3, t4
                  slt          t4, sp, s8
                  lbu          ra, 6(s0)
                  add          t3, zero, s4
                  xor          t1, s3, a0
                  andi         gp, a0, 155
                  lb           t3, 6(s0)
                  lbu          a2, -33(s0)
                  sb           zero, -63(s0)
                  lh           t5, -47(s0)
                  add          zero, a0, s11
                  lhu          s6, -47(s0)
                  lb           a5, 24(s0)
                  lbu          s10, 24(s0)
                  lbu          sp, 24(s0)
                  lb           s2, 24(s0)
                  lb           t0, 24(s0)
                  lbu          zero, 51(s0) #end riscv_load_store_hazard_instr_stream_0
                  srl          t6, t0, a2
                  bltu         s8, s8, 7f
                  bltu         a6, s9, 12f
                  bne          s0, a1, 10f
                  bne          t5, t6, 12f
                  bgeu         sp, t4, 20f
                  xori         s3, gp, -1593
7:                sll          t3, t2, s5
                  sll          a3, a1, s11
                  andi         t3, a6, 1296
10:               andi         s5, t4, -1333
                  add          s11, sp, a1
12:               slli         gp, t3, 9
                  ori          s6, t6, 1204
                  sub          gp, s1, a1
                  srl          s1, s6, t3
                  slti         tp, a2, -1034
                  sll          s8, s11, s8
                  sub          t1, a1, t0
                  bge          s3, ra, 38f
20:               beq          s9, s1, 38f
                  sub          s8, t3, a0
                  auipc        a3, 739841
                  sltiu        a0, a7, -264
                  sra          s10, a5, s9
                  nop
                  sll          a5, t4, a5
                  bgeu         s9, s5, 43f
                  beq          s8, s5, 30f
                  ori          t1, a3, 83
30:               ori          s6, t5, 176
                  ori          s5, zero, -720
                  la           s5, sub_1
                  sll          s6, sp, s4
                  srai         s4, t6, 22
                  andi         s7, s1, -1878
                  srli         t4, s2, 0
                  slti         s10, sp, -855
                  addi         s5, s5, -804
                  slt          a4, t3, s11
                  sltiu        a5, s4, 1158
main_j1:          jalr         s5, s5, 805 #jump main -> sub_1
                  xori         s4, gp, -1647
                  bne          s9, s4, 50f
                  srai         zero, s1, 16
                  sll          ra, sp, s10
                  ori          sp, t1, 992
                  bge          t6, a5, 57f
38:               ori          s0, a3, -1515
                  srl          s2, a1, t0
                  xor          s8, sp, t6
                  sra          s1, s9, s10
                  sll          t6, s1, s9
43:               slt          t6, s4, a6
                  srli         t0, t3, 15
                  sll          t5, s2, s0
                  sub          t3, t1, a6
                  srl          ra, s11, t2
                  andi         s5, sp, 673
                  sub          a2, gp, tp
50:               nop
                  srl          tp, s8, t5
                  slli         t3, s5, 20
                  sra          zero, s10, a1
                  bgeu         a0, s9, 57f
                  sltu         gp, s5, s6
                  blt          s2, s11, 58f
57:               and          gp, s11, a5
58:               addi         ra, s5, 651
                  lui          s10, 393806
                  bgeu         s11, a2, 61f
61:               addi         tp, s1, -773
                  auipc        t5, 602905
                  sltiu        t4, s1, -1604
                  or           s3, s6, t5
                  xor          t5, t4, a6
                  sll          s6, s2, a1
                  sra          s4, sp, t6
                  or           gp, s11, s1
                  lui          t1, 672474
                  srl          zero, s3, s7
                  bgeu         sp, s10, 84f
                  sltiu        t3, sp, 2015
                  add          a3, a6, ra
                  srli         tp, s2, 23
                  slli         s11, s2, 28
                  sltiu        sp, s10, 699
                  slti         t5, sp, -1365
                  sub          s10, a6, a0
                  bge          s8, s0, 99f
                  and          t6, s6, a1
                  auipc        s8, 366319
                  slt          gp, s1, t3
                  slti         ra, s9, 1620
84:               nop
                  xor          a2, t4, s1
                  nop
                  sll          t6, s4, tp
                  blt          t4, ra, 92f
                  ori          a3, t2, 1789
                  srai         s5, s8, 27
                  xor          s3, a0, gp
92:               sub          s11, s8, s11
                  bgeu         s9, a3, 105f
                  sll          s5, s7, s1
                  auipc        s11, 862403
                  bltu         t4, ra, 112f
                  andi         s9, t0, -1602
                  xori         s7, s11, -285
99:               srl          s4, a5, a7
                  auipc        sp, 343155
                  srai         a5, s8, 26
                  slt          t6, a4, zero
                  slti         a3, t4, -638
                  lui          sp, 839293
105:              and          t5, a4, t6
                  or           t6, t1, s3
                  slt          t1, t4, s8
                  bgeu         s11, a7, 120f
                  bgeu         ra, sp, 112f
                  add          a6, a6, t2
                  slti         t6, s6, 1024
112:              bltu         t3, t2, 128f
                  add          tp, zero, s8
                  srai         t4, t6, 25
                  andi         s2, a7, 946
                  beq          tp, t0, 122f
                  andi         sp, ra, -1941
                  sra          gp, s0, t2
                  slli         a4, t2, 26
120:              addi         s7, a1, 789
                  xori         t5, t4, 505
122:              srai         s10, a4, 10
                  ori          ra, t4, 1049
                  slt          s3, s10, a2
                  blt          a0, a0, 136f
                  slli         s1, s11, 0
                  sll          s3, a1, s9
128:              srl          s9, a1, t1
                  slli         gp, s3, 17
                  auipc        t1, 717265
                  xori         s10, s9, -1452
                  bne          a6, sp, 150f
                  srli         s5, t1, 18
                  addi         s4, sp, 1105
                  sltiu        t1, a7, -1375
136:              xor          a4, a2, s2
                  or           s7, a4, a3
                  sltiu        a6, a2, 1777
                  sltu         s5, s8, a1
                  or           zero, s10, gp
                  bge          a3, s5, 142f
142:              srai         s3, s2, 0
                  sltu         s6, a0, s1
                  nop
                  sltu         s0, s10, s4
                  sra          s3, s3, s10
                  sll          sp, ra, s10
                  auipc        a0, 1015091
                  bne          s9, s3, 165f
150:              srli         t0, s5, 25
                  srai         s9, s1, 17
                  beq          a6, t4, 167f
                  lui          s5, 113667
                  bne          a1, s7, 160f
                  auipc        tp, 414243
                  slt          zero, a1, s1
                  sltu         s6, s2, t6
                  sltiu        s8, a7, 1116
                  and          a3, a0, gp
160:              auipc        a3, 988140
                  ori          ra, a1, 1290
                  slli         a3, a4, 6
                  sra          s5, gp, s7
                  slt          s9, a0, s2
165:              add          t1, a4, s8
                  ori          t1, s9, -2002
167:              lui          ra, 459093
                  srl          t0, gp, a7
                  srl          t5, s7, s3
                  slti         tp, a7, -71
                  addi         a4, sp, 2017
                  beq          a7, s2, 183f
                  srl          s0, t3, a2
                  or           s7, t1, s6
                  or           s8, a2, a7
                  sltiu        zero, t3, -230
                  srl          a2, t3, a7
                  and          s11, a6, t4
                  or           tp, tp, t5
                  sra          s6, t6, t1
                  ori          t1, a3, 620
                  srai         gp, s2, 31
183:              and          sp, zero, t1
                  srli         tp, s10, 0
                  ori          tp, t0, 1135
                  add          a0, a0, t0
                  sra          sp, s11, s4
                  bge          a2, t6, 206f
                  andi         t5, s0, 1423
                  sltiu        t1, s0, 1710
                  sltiu        s7, sp, 94
                  slti         a4, a4, 1972
                  bltu         s10, t5, 205f
                  sll          zero, s0, s9
                  bge          a3, a5, 215f
                  srl          t1, ra, s1
                  slli         s5, s0, 19
                  andi         a0, t3, -18
                  slti         s7, sp, -1708
                  slli         a5, a6, 4
                  slti         sp, s1, -1945
                  sub          a3, t5, s7
                  bge          s6, t2, 205f
                  ori          tp, a2, 998
205:              sub          s3, s6, a4
206:              ori          zero, s2, 125
                  xori         t6, a6, 925
                  beq          a3, zero, 224f
                  or           t5, s6, s1
                  xori         s6, s2, -170
                  beq          s0, s6, 214f
                  nop
                  srli         a4, t2, 25
214:              bne          s2, s3, 225f
215:              sra          s7, t3, s7
                  sll          t3, a0, s2
                  xor          s6, a6, s10
                  srai         s7, s10, 10
                  sra          s4, s8, a7
                  andi         a0, s3, -601
                  srl          zero, a3, s5
                  slt          ra, s2, a5
                  auipc        a4, 623680
224:              srl          zero, s10, t3
225:              sll          a5, a2, a6
                  srli         a3, t6, 19
                  beq          t6, s10, 234f
                  bge          a6, s9, 244f
                  lui          s0, 771220
                  or           s7, a2, a5
                  xor          tp, s2, t2
                  sub          s1, a1, a2
                  beq          a3, t5, 250f
234:              add          s5, s10, a5
                  slli         s11, a2, 31
                  and          a0, gp, a7
                  xor          s11, t6, s9
                  sll          a0, t5, s6
                  sltiu        t3, a2, 1245
                  sub          s0, a0, a7
                  and          s6, s7, a1
                  xor          t5, s1, s5
                  srai         s9, s9, 8
244:              xor          s6, s2, a4
                  sltu         s8, s11, t4
                  bgeu         gp, t0, 254f
                  slli         t0, sp, 18
                  addi         a4, t4, 1314
                  nop
250:              srli         a6, tp, 19
                  bne          t2, t6, 254f
                  blt          s9, t3, 254f
                  auipc        s9, 766720
254:              slt          s9, gp, t4
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bltu         s7, s2, sub_1_stack_p
sub_1_stack_p:    addi         t2, t2, -28
                  add          t1, a1, sp
                  nop
                  sw           s5, 4(t2)
                  auipc        s11, 480670
                  la           sp, region_1+1430 #start riscv_load_store_rand_instr_stream_1
                  lb           a4, 215(sp)
                  lw           a0, -898(sp)
                  lb           s0, 468(sp)
                  sb           s4, -723(sp)
                  auipc        zero, 633869
                  srli         t3, t4, 19
                  lbu          a6, -539(sp)
                  lb           a4, -1144(sp)
                  sh           t5, 198(sp)
                  slli         a0, tp, 7
                  lhu          zero, 430(sp)
                  lbu          a4, -1246(sp)
                  srl          a5, zero, s8
                  sb           s2, -623(sp)
                  lhu          t1, -1102(sp)
                  sb           t6, -484(sp)
                  lb           gp, 208(sp)
                  addi         t3, a5, -888
                  srli         s3, sp, 12
                  sb           s10, -391(sp)
                  or           a4, a2, s0
                  lb           s0, -1155(sp)
                  sltiu        a4, s5, -806
                  sh           a2, 64(sp)
                  lb           a2, -679(sp)
                  lb           s2, -711(sp)
                  lbu          gp, -998(sp)
                  add          s6, ra, a1
                  lh           s11, 48(sp)
                  sb           a6, -329(sp)
                  lb           ra, -1124(sp)
                  lh           s10, -386(sp)
                  ori          ra, a6, -2002
                  lhu          tp, -1206(sp)
                  sb           a3, -1242(sp)
                  lbu          a5, -178(sp)
                  lb           a3, -769(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+369 #start riscv_load_store_rand_instr_stream_2
                  sh           a2, 601(t0)
                  sb           s10, 1186(t0)
                  sltiu        s6, a3, 1835
                  sw           t6, -9(t0)
                  add          a5, s10, a6
                  sb           tp, 518(t0)
                  and          a5, s11, s11
                  lw           ra, 515(t0)
                  lb           t4, 1410(t0)
                  and          s7, sp, s3
                  lhu          s6, 481(t0)
                  lb           tp, 785(t0)
                  addi         t6, a1, -540
                  sra          gp, a6, s10
                  sltu         s6, s2, a1
                  ori          s6, t4, -1604
                  xori         s1, gp, -603
                  and          a5, a7, t0
                  sltiu        tp, t4, 653
                  sra          zero, t6, s2
                  srli         a4, s5, 7
                  lbu          s3, 595(t0)
                  slti         s0, t6, -1248
                  lui          a2, 329373
                  sltiu        s5, s0, 1348
                  slti         t3, s3, 1864
                  ori          a2, a6, -1507
                  nop
                  slli         ra, a6, 20
                  slt          t6, t6, s0
                  sb           s1, -31(t0)
                  lb           s10, 31(t0)
                  srl          zero, tp, a4
                  lbu          s8, 176(t0)
                  lb           a2, 1118(t0)
                  xor          s2, sp, sp
                  lb           s4, 1530(t0)
                  slti         s3, s4, 1809
                  lb           s9, -142(t0)
                  srai         ra, s11, 0
                  add          s9, sp, s4
                  sra          a2, s1, s10
                  sub          s10, s6, s7
                  lbu          t5, 1148(t0)
                  lb           s8, 364(t0)
                  auipc        t3, 133985
                  sb           s11, -30(t0) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_1+419 #start load_store_instr_stream_3
                  la           s11, region_1+1442 #start load_store_instr_stream_1
                  la           s9, region_1+9 #start load_store_instr_stream_2
                  sb           s1, 43(s11)
                  sw           s6, 213(s10)
                  sb           s8, 156(s9)
                  sb           s2, 401(s9)
                  lbu          s6, 260(s9)
                  sh           s3, -61(s10)
                  lbu          sp, 41(s11)
                  lbu          a2, 405(s9)
                  la           s4, region_1+924 #start load_store_instr_stream_0
                  sb           t3, 0(s10)
                  lbu          s6, 81(s10)
                  lbu          tp, -31(s4)
                  lhu          a3, 36(s11)
                  sb           s7, 29(s4)
                  lb           a3, 206(s9)
                  sh           a4, -245(s10)
                  lbu          s0, -38(s4)
                  lb           t4, -43(s10)
                  lw           a5, -54(s11)
                  sb           t2, 1199(s9)
                  lbu          a3, -129(s10)
                  sw           a1, -24(s4)
                  lhu          tp, -52(s11)
                  sh           a1, 2(s4)
                  lb           sp, -15(s11)
                  lb           a6, 1750(s9)
                  sh           s11, -20(s4)
                  lbu          a4, -11(s11)
                  lb           a3, 51(s4)
                  lb           s3, 212(s10)
                  lb           sp, 546(s9) #end load_store_instr_stream_2
                  sw           gp, -227(s10) #end load_store_instr_stream_3
                  lh           a2, -38(s11)
                  lh           a0, 48(s11) #end load_store_instr_stream_1
                  sb           s5, -7(s4) #end load_store_instr_stream_0
                  la           t4, region_0+433 #start riscv_load_store_rand_instr_stream_0
                  lb           s0, 17(t4)
                  sb           s9, -38(t4)
                  lbu          s5, 2(t4)
                  sltiu        s9, s5, 2030
                  sb           a3, -8(t4)
                  sb           s4, -14(t4)
                  lb           a0, 57(t4)
                  lb           a5, -2(t4)
                  srai         s9, s0, 31
                  xor          t5, s5, s11
                  lh           t6, -45(t4)
                  lui          s7, 859160
                  lh           tp, -19(t4)
                  lbu          s7, -52(t4)
                  lb           t3, 0(t4)
                  lb           t6, 45(t4)
                  lh           t1, 59(t4)
                  ori          t1, t1, -1962
                  sh           s7, 1(t4)
                  sh           a7, 29(t4)
                  lb           ra, 9(t4)
                  lw           a3, 55(t4)
                  lbu          a0, 50(t4)
                  lb           sp, -27(t4)
                  srai         s4, a2, 27
                  lb           s1, -34(t4)
                  lbu          t6, 24(t4)
                  sb           s7, -11(t4)
                  sb           gp, -18(t4)
                  srl          gp, t2, a1
                  add          t6, s3, a3
                  addi         a6, a6, -1389
                  lb           s8, -30(t4)
                  lui          s10, 791748
                  lh           s11, 43(t4)
                  lhu          zero, -55(t4)
                  lb           t3, 31(t4)
                  sb           s2, -61(t4) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_1+965 #start riscv_load_store_hazard_instr_stream_1
                  lh           s4, -37(a3)
                  lw           s9, -37(a3)
                  sb           s6, 80(a3)
                  sh           a6, -193(a3)
                  lw           ra, -129(a3)
                  lhu          sp, -129(a3)
                  sb           s5, 116(a3)
                  lb           s7, 116(a3)
                  lb           s4, -236(a3)
                  xori         s4, t2, -691
                  lui          a2, 704152
                  sb           s2, -236(a3)
                  lh           s1, 7(a3)
                  slli         s10, s1, 14
                  auipc        s3, 154869
                  lhu          t0, 7(a3)
                  lbu          s10, 82(a3)
                  slli         s9, a5, 25
                  lui          s1, 978079
                  sw           ra, -93(a3)
                  lb           zero, -210(a3)
                  lb           s5, 55(a3)
                  lb           t4, -26(a3)
                  xor          gp, a1, sp
                  lb           gp, 31(a3)
                  lb           s7, 234(a3) #end riscv_load_store_hazard_instr_stream_1
                  la           s3, region_0+67 #start riscv_load_store_hazard_instr_stream_0
                  sb           t4, 64(s3)
                  xori         s11, a6, -1929
                  lbu          a5, 64(s3)
                  lbu          t1, 64(s3)
                  lhu          t4, 31(s3)
                  lb           a6, 31(s3)
                  sltu         a2, s0, s4
                  andi         t6, a6, -1016
                  lh           t6, 31(s3)
                  sb           s3, 4(s3)
                  lbu          tp, 4(s3)
                  lbu          t5, 4(s3)
                  lh           ra, 47(s3)
                  lbu          t0, 47(s3)
                  sb           t6, 47(s3)
                  lh           a4, 47(s3)
                  sb           t2, 47(s3)
                  ori          s10, t2, -331
                  lhu          sp, 47(s3)
                  sub          a4, a7, s5
                  sb           a7, 47(s3) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+292 #start load_store_instr_stream_1
                  la           tp, region_1+1861 #start load_store_instr_stream_0
                  la           t5, region_1+646 #start load_store_instr_stream_2
                  lhu          a6, -26(t5)
                  lb           s1, 227(s8)
                  sb           s3, -191(tp)
                  lbu          t3, -61(t5)
                  sh           t4, -18(t5)
                  lbu          a2, 155(s8)
                  lbu          s11, 28(t5)
                  sw           t0, 44(s8)
                  sh           s1, -43(tp)
                  lbu          s11, -213(s8)
                  lbu          s3, 17(t5)
                  lh           a0, -103(tp)
                  lhu          s11, 118(s8)
                  lbu          s7, 94(tp)
                  sb           ra, -30(t5) #end load_store_instr_stream_2
                  lh           a2, -126(s8) #end load_store_instr_stream_1
                  sb           s0, 71(tp)
                  lb           a5, 8(tp) #end load_store_instr_stream_0
                  sltu         s11, s9, a5
                  or           t4, t6, tp
                  xori         sp, s1, 1868
                  srl          zero, a3, t2
                  bne          s8, t5, 23f
                  lui          t4, 313079
                  xor          t4, zero, t0
                  slt          t6, s5, t0
                  xor          a3, s5, a3
                  add          a4, ra, s3
                  add          s2, ra, s0
                  beq          a1, a7, 20f
                  srl          a5, s4, t3
                  xori         s5, t5, -1133
                  srli         t1, t5, 5
                  lui          a0, 474610
                  lui          s2, 109021
                  srli         s4, s1, 5
                  bltu         a1, a0, 27f
                  sub          sp, a4, s9
20:               bge          sp, a0, 27f
                  srli         t1, ra, 30
                  bge          s10, s8, 25f
23:               srl          s1, s2, s8
                  sll          t4, t2, a7
25:               sra          t3, s10, a7
                  slli         s3, gp, 18
27:               sub          t5, a3, gp
                  xori         t1, t4, 1298
                  addi         s6, gp, 1096
                  andi         s0, a5, -1660
                  addi         s5, s3, 108
                  auipc        gp, 672144
                  bgeu         t6, s8, 36f
                  beq          t2, a4, 36f
                  xori         sp, a1, 1171
36:               and          t0, a6, a0
                  bne          s9, ra, 42f
                  sll          s7, t0, t6
                  blt          a4, s10, 57f
                  slt          s2, a2, s8
                  auipc        gp, 936612
42:               bgeu         t5, t2, 53f
                  sra          ra, s3, ra
                  slti         a4, s1, 1740
                  slt          s9, s1, a0
                  xori         s9, s2, -873
                  addi         s11, s5, -758
                  bne          t2, a3, 60f
                  bge          s6, a7, 64f
                  slti         s8, ra, 407
                  xori         s9, a7, -1622
                  ori          zero, a6, -252
53:               bgeu         ra, a3, 57f
                  bge          s1, sp, 56f
                  xori         t3, ra, -1859
56:               nop
57:               xori         s9, s9, -171
                  addi         s0, tp, 1436
                  xor          t3, s0, s1
60:               andi         sp, s10, -1490
                  srai         zero, s6, 28
                  srai         s0, s11, 30
                  sll          s10, s11, s6
64:               lui          ra, 840344
                  srli         t5, s3, 8
                  bge          ra, s9, 78f
                  and          t5, a2, s11
                  ori          s6, sp, 1104
                  sltu         s5, s1, t4
                  slt          a0, s3, a4
                  slt          s8, t1, a2
                  nop
                  sub          s1, s2, a4
                  bne          a7, s6, 87f
                  srl          s0, sp, s4
                  nop
                  beq          a1, a5, 93f
78:               sltiu        a0, s8, -328
                  xori         gp, t6, 1768
                  auipc        a0, 342305
                  addi         s3, t4, -208
                  sub          a6, s5, a7
                  or           t5, t1, a3
                  bge          s7, t3, 92f
                  xori         s8, ra, -729
                  xor          s11, s5, s4
87:               bgeu         s5, sp, 98f
                  sub          s3, s4, a4
                  srl          s10, t6, s3
                  and          s8, zero, t2
                  slti         a4, t1, 1634
92:               or           a5, t3, t6
93:               srai         a3, a0, 6
                  srai         a3, s5, 24
                  xori         a6, t5, -190
                  bge          t4, t4, 111f
                  srai         s8, s4, 23
98:               bgeu         ra, zero, 110f
                  or           s4, a2, a5
                  xori         s11, a0, 128
                  bgeu         s9, s8, 115f
                  andi         s10, s5, -1213
                  nop
                  la           s7, region_0+318 #start load_store_instr_stream_0
                  la           t1, region_0+1554 #start load_store_instr_stream_2
                  la           ra, region_0+1068 #start load_store_instr_stream_1
                  sb           a2, -173(s7)
                  la           t0, region_0+44 #start load_store_instr_stream_3
                  lbu          gp, 11(t1)
                  sb           a6, 203(t0)
                  sw           s7, 96(t0)
                  sb           t5, -89(ra)
                  lbu          s9, 13(t1)
                  lbu          s10, -133(s7)
                  lhu          a3, 130(t0)
                  sh           a3, -4(t1)
                  lbu          a5, -30(ra)
                  sb           a5, -44(t0)
                  lh           s10, 200(t0)
                  sh           s10, -156(s7)
                  lbu          s5, -129(s7)
                  sb           s6, -157(ra)
                  sb           t1, 7(t1)
                  lbu          gp, 215(ra)
                  lbu          s3, 183(t0)
                  lhu          s6, 12(t1)
                  lb           t4, -13(t0) #end load_store_instr_stream_3
                  lhu          s9, 132(ra)
                  lb           s2, 8(t1)
                  sw           t5, -22(s7)
                  lb           s8, 129(s7)
                  lh           t3, -152(ra) #end load_store_instr_stream_1
                  lbu          a2, 173(s7)
                  lbu          t3, -11(t1)
                  lb           t3, -1(t1) #end load_store_instr_stream_2
                  sw           t4, 178(s7) #end load_store_instr_stream_0
                  auipc        s8, 985950
                  or           t6, a0, sp
                  sltiu        zero, t5, -1384
                  sub          ra, s3, s8
                  slti         zero, t3, -934
                  slti         gp, a7, -249
110:              slt          t3, s0, t5
111:              slti         s2, tp, 699
                  beq          s10, s1, 127f
                  slli         s3, a7, 27
                  slli         a4, s7, 5
115:              sra          tp, s2, s9
                  xor          s6, tp, t6
                  and          t6, s4, s4
                  slt          a3, a3, t3
                  and          s8, s8, s0
                  add          t3, t3, t5
                  lui          a6, 749576
                  sub          s10, t0, s7
                  auipc        s8, 961458
                  sltiu        a5, t4, -582
                  sll          t6, sp, a0
                  lui          s5, 511026
127:              add          gp, s1, s11
                  sltiu        t1, t1, -278
                  blt          t3, t1, 141f
                  sra          s1, gp, s4
                  slti         t3, t0, -17
                  blt          sp, gp, 151f
                  sub          s0, sp, s2
                  slti         s2, a7, -1190
                  lui          s8, 29845
                  bge          t2, s8, 155f
                  beq          s7, s0, 142f
                  sll          t0, s11, a3
                  sltiu        zero, a2, 421
                  slti         zero, zero, 1241
141:              slt          s11, s11, a3
142:              bne          s2, a3, 155f
                  beq          s2, s10, 149f
                  xor          s5, gp, a0
                  srai         s5, sp, 24
                  srli         s1, s5, 6
                  beq          t1, a0, 159f
                  addi         s7, t2, -587
149:              beq          t2, s9, 163f
                  sltu         s1, zero, s11
151:              bge          a0, s8, 156f
                  bge          gp, s2, 159f
                  auipc        s10, 668351
                  beq          sp, s2, 173f
155:              sltu         t0, s3, a6
156:              blt          s2, s0, 164f
                  nop
                  bgeu         s0, s6, 170f
159:              srai         s1, a7, 27
                  sll          t0, s11, s8
                  slli         s7, s9, 23
                  srai         a3, a6, 21
163:              ori          t5, zero, -327
164:              srli         zero, s5, 23
                  srai         sp, s11, 14
                  auipc        tp, 783040
                  slt          s8, s9, a7
                  slti         t1, s9, 661
                  andi         s9, zero, 1748
170:              xor          a6, s1, ra
                  bgeu         s11, t4, 173f
                  sub          sp, t4, s9
173:              blt          a0, s2, 188f
                  slli         t6, a0, 17
                  bge          a3, a4, 190f
                  slli         a4, a7, 25
                  srai         gp, s6, 11
                  andi         ra, s3, -990
                  sra          s2, t5, t5
                  bgeu         a1, s11, 183f
                  slt          s6, a7, s4
                  sltiu        s2, a1, 1857
183:              lui          s9, 807455
                  sub          s5, s4, gp
                  slt          a4, s2, t3
                  bne          a3, a2, 197f
                  beq          s9, a6, 199f
188:              sltiu        sp, s8, 1926
                  nop
190:              bltu         s0, a1, 196f
                  sra          t6, s6, a4
                  srl          tp, s9, s5
                  andi         gp, s2, 690
                  sltiu        t6, s8, 1311
                  srli         a2, s6, 16
196:              slli         a2, s0, 27
197:              bltu         sp, s7, 216f
                  add          t6, t2, t3
199:              beq          t2, s7, 202f
                  and          t3, s3, s0
                  sub          s2, a5, s5
202:              xor          t6, s3, s9
                  bge          t5, a7, 212f
                  auipc        s6, 309941
                  andi         a4, gp, -62
                  addi         t1, t0, 1820
                  bgeu         t3, a1, 222f
                  sltu         t5, t6, tp
                  andi         a4, t1, -879
                  xori         s1, s5, -193
                  slli         a6, a0, 5
212:              srai         a5, s7, 31
                  lui          t3, 242752
                  sub          s8, a2, s4
                  bgeu         s10, t2, 220f
216:              xori         t5, a5, -190
                  addi         sp, a0, -1579
                  bge          s5, a0, 227f
                  slt          s2, ra, a0
220:              sltiu        s6, a7, 1021
                  srai         s3, a0, 31
222:              bne          s5, s11, 233f
                  and          s5, t4, t3
                  or           sp, gp, s11
                  sll          tp, t5, a5
                  auipc        s10, 292420
227:              blt          t1, ra, 231f
                  xori         s0, s8, -983
                  bltu         a5, s9, 241f
                  la           t3, region_0+978 #start riscv_load_store_hazard_instr_stream_2
                  lui          s9, 790539
                  add          sp, t3, tp
                  lbu          s8, -83(t3)
                  lb           s3, 156(t3)
                  sw           t2, 114(t3)
                  lh           s0, 114(t3)
                  srli         zero, s10, 14
                  lh           s8, 114(t3)
                  lh           s1, 216(t3)
                  sw           s10, 162(t3)
                  andi         s3, ra, 131
                  andi         t0, t0, 2009
                  lb           zero, -96(t3)
                  lbu          gp, 154(t3)
                  lb           s7, 154(t3)
                  lhu          t6, 154(t3)
                  lbu          s9, 57(t3) #end riscv_load_store_hazard_instr_stream_2
                  blt          s5, s10, 246f
231:              beq          a5, t0, 244f
                  bgeu         t3, a2, 234f
233:              blt          s6, a0, 252f
234:              bgeu         a7, s1, 252f
                  and          s2, s0, s6
                  sub          t5, t2, tp
                  andi         t1, a2, 89
                  xori         s9, t3, -1575
                  sltiu        s4, t6, 1513
                  addi         t5, sp, 514
241:              auipc        s10, 601702
                  sll          s0, a4, t0
                  slli         s3, s7, 9
244:              sub          a5, a4, zero
                  sub          tp, a7, t5
246:              slli         s8, s3, 9
                  srai         s8, s10, 25
                  addi         s2, ra, -2010
                  slli         s1, a7, 2
                  bge          s5, t4, 262f
                  slt          s1, a3, a7
252:              sub          zero, s9, t4
                  nop
                  sll          s10, a4, s1
                  addi         s5, s11, -86
                  sra          a6, s6, t2
                  srli         s11, t4, 13
                  bne          s1, s8, 271f
                  beq          a3, a5, 271f
                  bgeu         t2, a4, 272f
                  auipc        a0, 416180
262:              bne          s7, s7, 277f
                  xor          s7, s2, zero
                  slt          s0, t2, t5
                  srli         a4, s11, 6
                  sll          t0, s1, s8
                  bltu         s5, ra, 281f
                  sll          t6, s4, s3
                  or           zero, t4, a1
                  srl          t6, s7, t2
271:              sltu         t5, a5, ra
272:              andi         a4, s2, 1192
                  ori          s1, a5, -1455
                  bge          a1, s1, 283f
                  beq          a7, t1, 278f
                  xori         s2, t4, 334
277:              bltu         t6, a1, 296f
278:              sltiu        a2, t6, -435
                  sltu         ra, tp, t5
                  sltiu        a2, s4, 1764
281:              bltu         s8, t0, 299f
                  slt          ra, a6, a5
283:              auipc        tp, 848035
                  srai         t6, s9, 2
                  addi         s1, a1, 785
                  sub          t0, s8, a4
                  xori         zero, s8, -544
                  sltiu        s9, t1, -1578
                  bgeu         a7, a7, 292f
                  slli         a5, t5, 14
                  auipc        a6, 545300
292:              slt          s7, a4, s0
                  srli         s5, s9, 20
                  sra          s3, t6, t4
                  andi         zero, a3, -103
296:              slt          s8, s3, s4
                  bltu         t6, s8, 309f
                  add          s0, s5, t3
299:              srli         sp, t1, 30
                  sltu         s1, a3, t6
                  blt          t4, a6, 316f
                  xor          s9, s4, t4
                  slli         a3, a6, 23
                  ori          sp, s0, -18
                  bgeu         s3, s3, 316f
                  auipc        tp, 351715
                  srai         s8, t0, 24
                  slti         s9, gp, -42
309:              auipc        a2, 101994
                  sltiu        s0, a3, 1741
                  sra          s5, s5, a2
                  sltu         s7, a7, zero
                  bltu         a5, s5, 325f
                  bgeu         a4, t4, 329f
                  srli         a6, s5, 9
316:              beq          t6, s2, 325f
                  srl          s3, s6, a2
                  bgeu         s2, s6, 330f
                  lui          s9, 631580
                  slti         t1, t2, -1316
                  andi         a3, sp, 1801
                  auipc        t4, 501825
                  sltu         t1, t2, s3
                  nop
325:              sra          t1, t2, t0
                  sra          gp, gp, s5
                  auipc        s5, 99698
                  nop
329:              or           a0, s8, s6
330:              addi         t3, sp, 886
                  addi         t6, a0, -1012
                  srl          s5, s5, sp
                  sub          a0, a3, t5
                  srli         a4, s3, 27
                  blt          a3, s7, sub_1_j3 #branch to jump instr
                  ori          t4, tp, -54
                  sltiu        t5, a1, 1845
                  sltu         a3, tp, s4
                  auipc        t5, 105743
                  nop
                  andi         s2, s8, 333
                  and          s2, t5, t3
sub_1_j3:         jal          s5, sub_2 #jump sub_1 -> sub_2
                  bgeu         s7, t0, 342f
                  bge          gp, s8, 342f
                  or           s0, a5, t6
                  nop
                  sltu         t5, a4, s10
                  blt          a3, s2, 342f
                  blt          s2, t0, 342f
342:              slli         s7, s7, 4
                  xori         ra, s3, 1904
                  lw           s5, 4(t2)
                  addi         t2, t2, 28
                  srai         ra, a2, 22
                  slli         t3, s5, 15
                  sra          a0, t5, t0
648:              addi x29, x21, 0
648:              jalr x29, x29, 0
sub_2:            ori          s2, s1, 667
                  addi         t2, t2, -16
                  sub          s10, s1, zero
                  and          a4, s2, a7
                  addi         a2, t5, 1403
                  sra          s0, s3, a0
                  sw           s5, 4(t2)
                  xori         tp, s9, 826
                  la           s0, region_0+1813 #start riscv_load_store_hazard_instr_stream_3
                  lbu          s10, -1058(s0)
                  slli         t5, tp, 11
                  lbu          s3, -1058(s0)
                  lb           t1, -606(s0)
                  slti         tp, a1, -783
                  lb           s5, -606(s0)
                  lb           t5, -606(s0)
                  lbu          s4, -606(s0)
                  sb           sp, -878(s0)
                  sb           t4, -878(s0)
                  addi         s5, a6, 1897
                  lbu          zero, -878(s0)
                  lbu          a4, -878(s0)
                  lbu          tp, -878(s0)
                  sb           t6, -878(s0)
                  lhu          s1, -1319(s0)
                  lbu          ra, -1319(s0) #end riscv_load_store_hazard_instr_stream_3
                  la           s2, region_1+740 #start riscv_load_store_rand_instr_stream_3
                  sb           a1, 5(s2)
                  srli         s4, t2, 27
                  sltu         s10, s2, t0
                  nop
                  lbu          a4, -15(s2)
                  lbu          s6, 1(s2)
                  lbu          tp, 1(s2)
                  lh           s4, -4(s2)
                  srli         s6, t2, 28
                  lh           a3, 2(s2)
                  lb           a3, -2(s2)
                  lbu          s9, -9(s2)
                  slt          a0, t0, s11
                  lw           s10, 4(s2)
                  xori         s3, t3, 1872
                  lbu          s10, -15(s2)
                  lb           s11, -4(s2)
                  sb           sp, -2(s2)
                  lh           t6, -4(s2)
                  or           s1, s11, a5
                  sb           t6, 14(s2)
                  lb           t5, 5(s2)
                  lb           s3, 5(s2)
                  sh           zero, 6(s2)
                  srai         tp, t1, 19
                  sb           t6, 3(s2)
                  lb           s7, -14(s2)
                  nop
                  slt          tp, gp, a2
                  srli         s10, s1, 11
                  sltiu        a4, a5, 1189
                  nop
                  lb           s8, -13(s2)
                  sb           s6, -1(s2)
                  slli         s4, s8, 30
                  lb           a6, 3(s2) #end riscv_load_store_rand_instr_stream_3
                  la           t0, region_1+1245 #start riscv_load_store_rand_instr_stream_0
                  sh           s7, -775(t0)
                  xori         s5, a6, -298
                  slt          s5, a7, s8
                  sra          t4, a4, gp
                  lw           ra, -69(t0)
                  lb           ra, -522(t0)
                  and          s3, gp, a6
                  lhu          t3, -197(t0)
                  lbu          t3, 125(t0)
                  nop
                  lui          t5, 11695
                  lb           tp, -357(t0)
                  srai         s11, a1, 31
                  add          a2, t6, gp
                  srli         s6, s2, 14
                  sb           gp, 222(t0)
                  sh           s0, 743(t0)
                  lbu          s1, 381(t0)
                  slt          t4, t5, t0
                  lbu          ra, -169(t0)
                  lbu          a6, -82(t0)
                  lh           a3, 259(t0)
                  lb           sp, 274(t0)
                  sltu         zero, zero, t3
                  lhu          tp, 15(t0)
                  srli         s11, a4, 22
                  slti         s3, a3, 2009
                  auipc        a3, 9330
                  sra          t4, a7, a7
                  or           t4, s1, t4
                  slt          tp, ra, a4
                  lb           a2, 416(t0)
                  slti         s5, a7, 1868
                  srli         s2, sp, 31
                  sltu         s3, ra, s3
                  lbu          t1, -972(t0)
                  sra          ra, s10, s2
                  slli         t6, t1, 19
                  slt          t5, t2, a1
                  lb           gp, -886(t0)
                  sw           zero, -1017(t0)
                  sh           s11, 651(t0)
                  nop
                  lbu          s1, -1127(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1932 #start riscv_load_store_hazard_instr_stream_0
                  lb           s6, 39(sp)
                  sb           s6, 39(sp)
                  lb           ra, 39(sp)
                  slti         t6, t3, -917
                  lbu          zero, 39(sp)
                  lbu          a6, 39(sp)
                  sltu         t5, t4, s3
                  lui          s8, 451223
                  lbu          a6, 39(sp)
                  lb           a4, 39(sp)
                  sub          s5, t6, a5
                  lui          s5, 1012256
                  lbu          a0, 39(sp)
                  lbu          a4, 39(sp)
                  lbu          t0, 39(sp)
                  lb           s1, 39(sp)
                  lbu          s4, 39(sp)
                  sltu         t4, a1, s2
                  sb           a1, 39(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s3, region_1+56 #start riscv_load_store_hazard_instr_stream_2
                  lb           s1, 579(s3)
                  add          t4, s4, a0
                  xori         sp, t6, -242
                  lb           a0, 99(s3)
                  sb           s10, 812(s3)
                  sw           s1, 812(s3)
                  lb           gp, 812(s3)
                  sb           s10, 1931(s3)
                  sb           zero, 1300(s3)
                  lb           s10, 1300(s3)
                  ori          t0, a1, 1786
                  add          t3, s11, a4
                  lui          s2, 708574
                  lb           t6, 1835(s3)
                  lbu          a6, 633(s3)
                  lbu          a4, 633(s3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+426 #start riscv_load_store_rand_instr_stream_2
                  add          a4, t2, s1
                  and          s9, ra, t4
                  xori         a2, s8, 164
                  slt          t4, s2, t5
                  auipc        a5, 368080
                  sb           a6, -3(sp)
                  and          gp, t3, s1
                  auipc        s2, 214343
                  add          s9, s0, a4
                  lbu          t6, 1(sp)
                  nop
                  sra          t1, s0, s9
                  sh           s7, -4(sp)
                  srl          tp, a4, a6
                  ori          s3, s4, 1011
                  lbu          s8, -9(sp)
                  sb           tp, 7(sp)
                  lhu          s0, -6(sp)
                  sltiu        t5, s8, 962
                  lhu          s8, -4(sp)
                  auipc        gp, 56044
                  lbu          s6, -4(sp)
                  lbu          s0, -3(sp)
                  lui          s5, 664993
                  sltiu        s4, s4, -1364
                  lhu          s9, -14(sp)
                  sra          t3, a7, s6
                  sltu         s10, t4, gp
                  lb           t6, 9(sp)
                  sb           t6, -9(sp)
                  sub          a6, s11, a3
                  sltiu        s9, t1, -1685
                  lh           s8, 12(sp)
                  add          tp, a3, t0
                  sltiu        s7, s8, 1038
                  nop
                  sh           s2, 16(sp)
                  lb           t4, -16(sp)
                  lbu          s0, -6(sp)
                  sub          s3, tp, t4
                  sb           s3, -4(sp)
                  and          s4, a2, zero
                  lbu          a3, -13(sp)
                  ori          s4, s1, -746
                  slt          a3, sp, s9
                  lb           a3, -7(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_1+695 #start load_store_instr_stream_1
                  la           s5, region_1+1620 #start load_store_instr_stream_0
                  lb           zero, -183(s5)
                  lbu          a2, 27(a0)
                  sb           s8, 153(s5)
                  lb           s7, -17(a0)
                  lbu          s10, -3(a0)
                  lh           s1, 68(s5)
                  lb           t3, -29(s5)
                  sb           a1, 249(s5)
                  lb           s8, -44(a0)
                  sb           zero, 132(s5)
                  sw           t6, -51(a0)
                  lh           s10, 45(a0)
                  lb           s2, -56(s5)
                  lh           t5, 2(s5)
                  lb           gp, -53(a0) #end load_store_instr_stream_1
                  sb           s9, -69(s5) #end load_store_instr_stream_0
                  la           s11, region_1+1996 #start load_store_instr_stream_0
                  la           s5, region_1+1562 #start load_store_instr_stream_4
                  la           t5, region_1+285 #start load_store_instr_stream_1
                  sb           s7, 13(t5)
                  la           t0, region_1+606 #start load_store_instr_stream_2
                  lh           zero, -252(s11)
                  la           a4, region_1+919 #start load_store_instr_stream_3
                  lb           zero, 3(s5)
                  sb           t6, 11(t0)
                  sh           t3, -8(s5)
                  sw           a6, 557(a4)
                  sh           s5, -230(s11)
                  sb           s8, 5(t0)
                  lh           a0, 4(t0)
                  lbu          t1, -165(s11)
                  lbu          a3, 406(a4)
                  sb           s10, 1(s5)
                  sb           a5, -83(s11)
                  lbu          a6, -124(a4)
                  lbu          t1, 7(s5)
                  lhu          t4, -16(s5)
                  sb           s5, -246(s11)
                  lhu          s8, 14(t0)
                  lhu          s4, 863(a4)
                  lbu          s8, -11(s5)
                  lb           gp, -13(s5)
                  lw           a0, -14(s5)
                  sw           t4, -64(s11)
                  sb           s10, 44(t5)
                  sb           t6, 9(t0)
                  sb           t5, -25(t5)
                  sb           s2, -170(s11)
                  sb           s6, 3(t0)
                  sh           s4, -10(t0)
                  sh           s6, -15(t5)
                  sb           a1, -8(t0)
                  lw           tp, 19(t5)
                  lw           ra, 269(a4)
                  lb           s10, -13(t0)
                  lb           a6, -5(s5) #end load_store_instr_stream_4
                  lw           zero, -164(s11)
                  sb           s0, -82(a4) #end load_store_instr_stream_3
                  sh           s7, 35(t5) #end load_store_instr_stream_1
                  lb           a3, -13(t0) #end load_store_instr_stream_2
                  lw           a3, -36(s11) #end load_store_instr_stream_0
                  la           t3, region_0+1878 #start load_store_instr_stream_4
                  la           a4, region_0+755 #start load_store_instr_stream_0
                  la           s8, region_0+1118 #start load_store_instr_stream_3
                  sb           a4, 1(t3)
                  la           t1, region_0+608 #start load_store_instr_stream_2
                  sb           s1, 10(t3)
                  la           t4, region_0+1908 #start load_store_instr_stream_1
                  lh           gp, 14(t4)
                  lbu          gp, -8(t3)
                  sb           a3, 12(a4)
                  lh           a0, 10(t3)
                  lbu          a2, -179(s8)
                  sh           a4, -44(t4)
                  sb           a6, -223(s8)
                  lb           gp, -161(t1)
                  lb           s2, 2(a4)
                  sb           s7, 19(t1)
                  sb           t0, -165(t1)
                  lbu          gp, 5(t3)
                  lb           s11, -13(a4)
                  sb           t5, 34(t1)
                  lb           s7, -45(t4)
                  sh           a4, -2(t3)
                  lw           tp, -7(a4)
                  lhu          s2, 228(s8)
                  lbu          s3, 8(a4)
                  sb           gp, 4(a4)
                  sb           s6, 6(a4)
                  lw           ra, 58(s8)
                  lb           a0, 134(s8) #end load_store_instr_stream_3
                  lbu          s6, -95(t1)
                  sb           sp, -253(t4)
                  lbu          a5, 17(t4)
                  sb           t2, -13(t3)
                  lb           s6, -11(t1)
                  sh           gp, 168(t1)
                  sh           t1, 3(a4)
                  sb           s9, -14(t3) #end load_store_instr_stream_4
                  sb           t5, 68(t1) #end load_store_instr_stream_2
                  lh           s11, 80(t4) #end load_store_instr_stream_1
                  lh           s7, -11(a4) #end load_store_instr_stream_0
                  la           sp, region_1+1124 #start riscv_load_store_rand_instr_stream_1
                  sh           a3, 740(sp)
                  srl          s9, t3, a0
                  lb           s7, -384(sp)
                  add          t5, t5, s10
                  lhu          s10, 602(sp)
                  lb           a4, 445(sp)
                  lb           s6, 696(sp)
                  sb           tp, 283(sp)
                  nop
                  lbu          s11, -798(sp)
                  slt          s10, t5, a0
                  lbu          a2, 535(sp)
                  sb           a0, -485(sp)
                  lhu          gp, 826(sp)
                  srai         s0, a5, 8
                  sb           s8, -421(sp)
                  lb           s8, -86(sp)
                  lbu          gp, 775(sp)
                  sb           s4, -719(sp)
                  srli         s7, a1, 3
                  sltu         s4, zero, s7
                  lbu          s2, 836(sp)
                  slli         s1, s6, 4
                  sb           a6, -993(sp)
                  srai         s3, s3, 25
                  andi         t3, sp, 1760
                  andi         s9, s1, -1981
                  xori         t4, t4, -1712
                  lbu          a6, -945(sp)
                  sh           t2, -510(sp)
                  sb           t5, -629(sp) #end riscv_load_store_rand_instr_stream_1
                  bltu         s7, a2, 5f
                  xor          gp, s7, s0
                  auipc        a6, 1016349
                  andi         s4, s8, -617
                  srli         s1, s4, 26
5:                sra          s2, t1, s11
                  bgeu         s10, ra, 11f
                  sra          s1, t2, t3
                  srai         a2, t1, 20
                  ori          a4, a2, 1365
                  srli         s2, s8, 30
11:               nop
                  sub          s11, a4, t0
                  lui          t1, 286912
                  slli         a2, s5, 10
                  sltu         a0, s11, gp
                  srli         t5, t5, 18
                  bge          t6, a0, 20f
                  lui          s3, 380640
                  srai         a6, ra, 19
20:               beq          t5, tp, 29f
                  srli         s3, sp, 19
                  and          s3, s1, s9
                  ori          a3, s1, -1577
                  add          a3, s3, t6
                  sltiu        a5, s5, -854
                  ori          sp, a5, 1714
                  bgeu         a2, t4, 36f
                  ori          s0, s11, -1284
29:               beq          s7, s11, 30f
30:               sltiu        a4, sp, -1336
                  beq          s1, a3, 37f
                  addi         t3, a7, -1291
                  sra          a2, ra, a6
                  srai         s6, sp, 17
                  addi         s5, s6, 929
36:               ori          s2, a7, -1811
37:               blt          s11, a7, 50f
                  sub          s10, gp, t2
                  slt          a4, tp, t0
                  sltu         a2, t2, t6
                  bge          gp, s11, 44f
                  bne          a2, a3, 48f
                  bgeu         s6, zero, 62f
44:               ori          a3, s1, -746
                  lui          s2, 646055
                  sltiu        s2, t3, 705
                  srai         tp, t0, 27
48:               blt          s10, t0, 61f
                  or           s3, s8, s10
50:               or           t6, s10, a7
                  ori          t4, t4, 1177
                  sltiu        tp, a0, 1359
                  xor          t0, a7, a5
                  sll          a6, a2, a4
                  sub          s7, s5, a6
                  srai         t4, s6, 29
                  sltu         t3, tp, s11
                  sll          a6, s11, s2
                  lui          s11, 517216
                  lui          t6, 685764
61:               blt          s4, t6, 68f
62:               nop
                  beq          sp, sp, 74f
                  bltu         s3, a1, 83f
                  ori          a6, tp, 295
                  sltiu        t4, t0, -1365
                  srl          a2, s11, t1
68:               sll          t0, ra, a3
                  auipc        a4, 447365
                  ori          s1, s10, -670
                  blt          s0, gp, 76f
                  or           tp, a5, tp
                  and          s10, a1, s5
74:               nop
                  sltiu        s8, t4, -2014
76:               srai         s0, s3, 0
                  sub          t4, t2, s8
                  slti         s10, zero, 393
                  bgeu         a4, s10, 99f
                  bne          s7, s0, 84f
                  bgeu         t5, s2, 92f
                  lui          t1, 611085
83:               slti         t3, t1, -1729
84:               xor          s5, zero, t2
                  srl          s4, s8, s9
                  sltu         a6, t0, t3
                  auipc        a5, 18647
                  ori          sp, sp, -901
                  sll          zero, s4, s9
                  slt          s10, a3, s4
                  slti         s2, s2, 164
92:               addi         t3, s7, -648
                  sltiu        ra, t1, 962
                  slt          zero, t4, sp
                  srl          a5, a6, s9
                  bne          t6, s2, 113f
                  sltu         t3, zero, s3
                  slti         t0, a7, 139
99:               ori          s9, zero, -595
                  slti         t3, s0, 864
                  add          s8, t3, s10
                  blt          s9, t1, 121f
                  sltiu        gp, s11, -715
                  sra          s3, s10, a1
                  ori          s4, a6, 1654
                  xori         a3, t0, 1664
                  and          s5, sp, t2
                  bgeu         gp, a5, 127f
                  srl          t4, s9, a2
                  bltu         sp, s0, 118f
                  bge          a3, tp, 114f
                  bge          t5, t6, 121f
113:              sltu         sp, t5, sp
114:              srli         sp, a5, 25
                  andi         t4, s11, 1706
                  blt          s11, a3, 134f
                  bne          t3, t6, 122f
118:              and          a4, t6, t0
                  and          gp, t6, s1
                  bltu         s8, t5, 132f
121:              srl          a4, a6, t5
122:              srai         t1, s9, 22
                  sub          t3, s0, a2
                  sltu         s4, s0, sp
                  srl          a3, a0, t4
                  srl          s6, s0, s6
127:              srai         sp, s0, 29
                  sltiu        a3, zero, -1769
                  add          tp, a7, s3
                  bge          a6, t4, 138f
                  xor          ra, s11, sp
132:              bltu         s11, a4, 143f
                  xor          s9, sp, t0
134:              sra          s4, a4, a0
                  slti         t1, a2, -1778
                  xori         t5, s4, -426
                  lui          s4, 691037
138:              sltu         a0, ra, s4
                  slti         t5, s2, 516
                  nop
                  or           s4, ra, tp
                  andi         s0, s6, 670
143:              bge          s5, sp, 147f
                  sra          sp, a6, tp
                  bgeu         s9, t2, 151f
                  addi         a0, a1, -412
147:              slti         t1, tp, -1062
                  nop
                  sltu         a5, gp, a5
                  sltiu        s6, s5, 1972
151:              or           a5, ra, t0
                  add          a3, s10, t0
                  bne          t2, s5, 172f
                  srai         s1, a5, 10
                  addi         s3, s1, 200
                  slt          t0, t0, gp
                  addi         s11, s9, -1332
                  add          a2, t0, a0
                  srai         zero, a0, 21
                  bge          gp, gp, 163f
                  ori          s9, tp, -1234
                  auipc        gp, 424161
163:              srli         a3, a1, 1
                  bgeu         a2, s5, 169f
                  srai         t3, s9, 1
                  slt          s4, a3, a1
                  xori         a2, a3, -1460
                  bne          t6, s1, 177f
169:              auipc        s11, 235913
                  beq          t1, s11, 188f
                  or           sp, a3, a5
172:              srl          t5, sp, t4
                  lui          s4, 120811
                  bne          t5, sp, 179f
                  beq          s11, a1, 186f
                  slli         t1, s5, 16
177:              andi         t1, a0, 1270
                  add          a4, s11, s6
179:              beq          t3, zero, 198f
                  sll          a5, s0, s7
                  andi         a5, s10, 72
                  sltu         s11, a6, t2
                  addi         zero, a0, 138
                  sltu         s0, a5, s8
                  add          s10, a4, t2
186:              sll          a3, a6, s7
                  xori         zero, a6, 2002
188:              and          sp, s1, a0
                  sub          sp, ra, sp
                  srli         a5, a1, 24
                  ori          sp, s9, 550
                  beq          s6, t5, 211f
                  sub          t4, s0, s1
                  srai         t5, s5, 23
                  auipc        sp, 313489
                  or           a6, a2, a0
                  slti         s11, s4, -1167
198:              slt          s5, zero, s5
                  sub          s0, t5, t6
                  bltu         s6, s5, 211f
                  bgeu         ra, a3, 210f
                  or           s1, s0, a2
                  sltiu        s6, s9, 361
                  bge          a4, a3, 217f
                  xor          a2, a1, s5
                  sltiu        s10, s2, 1364
                  beq          t0, tp, 208f
208:              sll          a5, sp, t0
                  or           a3, s10, a7
210:              nop
211:              srl          s9, a1, s7
                  andi         sp, s6, -1168
                  bge          s10, tp, 230f
                  blt          s7, a6, 222f
                  addi         a0, a0, 1508
                  nop
217:              slli         t6, s2, 20
                  auipc        s10, 727879
                  sll          a5, s2, a0
                  srl          t0, a1, s11
                  slt          t4, s3, s10
222:              srli         a3, t0, 29
                  srli         s3, t6, 21
                  blt          zero, tp, 229f
                  and          t4, s11, s2
                  sltu         s6, tp, s3
                  sra          t3, s2, a4
                  sub          sp, s3, s0
229:              bge          a5, s3, 234f
230:              sll          s8, s9, s4
                  andi         s2, s7, -724
                  addi         tp, t5, 631
                  beq          zero, s3, 244f
234:              slli         t0, s4, 24
                  bltu         s6, s9, 242f
                  bge          sp, a5, 256f
                  addi         s0, s4, -719
                  bltu         a0, t6, 257f
                  bgeu         a4, a1, 248f
                  bgeu         gp, tp, 243f
                  auipc        a3, 747542
242:              addi         a2, sp, -491
243:              srli         s10, t3, 11
244:              srl          s11, t0, sp
                  addi         gp, t6, 1721
                  bltu         s3, s6, 258f
                  auipc        s5, 501068
248:              lui          a0, 769119
                  bge          a2, t5, 252f
                  xor          s1, s9, s11
                  sub          ra, a1, a3
252:              sltiu        s8, s4, 1677
                  or           s0, ra, a1
                  beq          s5, tp, 260f
                  srli         a2, s5, 17
256:              or           gp, t3, s10
257:              sub          a3, gp, s10
258:              srai         s8, t1, 20
                  xor          s2, s5, a5
260:              srl          s6, a0, t5
                  beq          a5, s4, 274f
                  nop
                  slti         s11, tp, 1453
                  slti         t1, s0, 323
                  sub          s8, zero, ra
                  bltu         t2, sp, 274f
                  slti         t1, a6, -213
                  bltu         gp, s6, 273f
                  lui          s8, 679675
                  sub          a5, s11, ra
                  blt          a2, s4, 280f
                  bltu         a5, s7, 291f
273:              bltu         s1, zero, 286f
274:              sra          zero, s6, a5
                  bge          s11, t3, 280f
                  bgeu         s0, s5, 289f
                  sltu         s7, t6, s4
                  xor          t4, a5, t4
                  sll          s8, ra, sp
280:              srli         s0, a6, 19
                  slt          s8, a2, s7
                  ori          a3, a3, 711
                  la           sp, region_1+225 #start riscv_load_store_hazard_instr_stream_1
                  lw           t4, -1(sp)
                  sltiu        a4, s1, 1644
                  lhu          s1, -1(sp)
                  lbu          a5, 246(sp)
                  lbu          s1, 246(sp)
                  lb           s11, 246(sp)
                  addi         s6, a2, -1017
                  lb           a0, 130(sp)
                  sb           t3, 130(sp)
                  lb           ra, 201(sp)
                  lhu          ra, 201(sp)
                  lb           a3, 201(sp)
                  lbu          t3, 201(sp)
                  sh           s10, 201(sp)
                  sb           a5, 201(sp)
                  xor          a4, s5, a4
                  sb           a7, 134(sp)
                  lb           s3, -148(sp)
                  sb           s11, -148(sp)
                  sb           s5, -216(sp)
                  lbu          s8, -216(sp)
                  lbu          t5, -216(sp)
                  ori          s7, s10, -978
                  lb           a4, -216(sp) #end riscv_load_store_hazard_instr_stream_1
                  slli         tp, a4, 12
                  slti         s6, a0, -1021
                  beq          s5, s6, 304f
286:              srl          s10, s5, s5
                  srli         t4, t5, 5
                  srl          a0, t2, t1
289:              srli         t4, a0, 6
                  xor          zero, a7, s0
291:              andi         s9, a5, -1682
                  bne          s3, tp, 295f
                  slli         s0, t3, 6
                  auipc        s8, 652889
295:              andi         s0, s3, -797
                  ori          ra, s0, 49
                  xori         s10, s8, 1204
                  andi         a6, t6, 960
                  sll          t1, t5, t6
                  sub          t5, t1, s6
                  nop
                  bltu         s1, s9, 319f
                  beq          a3, a0, 314f
304:              sll          s9, a0, a5
                  slt          s10, s3, a0
                  ori          gp, s11, -1022
                  bge          t5, s6, 312f
                  sll          a5, s1, a7
                  xori         gp, a0, 185
                  sll          a4, t3, a1
                  xor          s8, s7, sp
312:              sll          t3, s11, s4
                  andi         a3, s1, -972
314:              slli         a6, a5, 3
                  and          s1, s10, a5
                  slt          zero, a0, s5
                  beq          s9, s1, 336f
                  blt          s11, s0, 329f
319:              beq          ra, s4, 322f
                  srl          a6, t0, t1
                  beq          s9, a3, 333f
322:              sub          s11, zero, s1
                  or           a6, a0, s3
                  bne          tp, s1, 330f
                  sll          gp, ra, a4
                  xor          gp, s2, t3
                  sll          s8, s0, s6
                  add          s1, t4, s3
329:              andi         a6, t4, -762
330:              blt          s8, s4, 348f
                  addi         t0, s2, 848
                  sra          tp, s1, s8
333:              sltu         a6, t5, s3
                  slti         s2, t2, -1743
                  bne          s1, t3, 341f
336:              bge          t1, t2, 341f
                  beq          s5, s7, 357f
                  blt          t0, t5, 347f
                  sltu         s3, s11, zero
                  addi         gp, a1, 1929
341:              ori          s1, a1, -123
                  xor          t4, a6, s8
                  xori         tp, a0, 1866
                  bne          s1, s11, 347f
                  srli         s1, s7, 13
                  xor          s3, t1, a6
347:              bge          a6, a7, 348f
348:              sltu         tp, t0, a2
                  ori          a4, a5, -161
                  xori         s8, gp, 4
                  blt          t4, s4, 359f
                  slt          a4, gp, s7
                  slt          t5, s4, gp
                  sltiu        a6, a3, -1483
                  sub          s3, a6, a7
                  andi         t6, zero, 307
357:              addi         s7, s8, -610
                  srli         a3, ra, 24
359:              slti         s8, t3, 1786
                  slt          s2, s0, a0
                  sltiu        t0, t1, -521
                  sltiu        s0, t0, 313
                  srai         s7, a7, 30
                  bne          s7, s3, 375f
                  bltu         s4, s1, 372f
                  or           ra, s0, s2
                  bne          a3, s0, 386f
                  sltiu        ra, t2, 439
                  la           ra, region_1+222 #start load_store_instr_stream_0
                  la           a3, region_1+1978 #start load_store_instr_stream_1
                  sb           s8, -13(ra)
                  lhu          t3, -8(a3)
                  lb           gp, -16(ra)
                  sw           s7, -34(a3)
                  sb           s3, -5(ra)
                  lb           t6, -17(a3)
                  lb           s1, 14(ra)
                  lbu          s10, 0(ra)
                  sb           s6, -63(a3)
                  lbu          s4, 5(ra)
                  lbu          t3, -173(a3) #end load_store_instr_stream_1
                  lhu          s0, -8(ra)
                  lbu          a4, -3(ra) #end load_store_instr_stream_0
                  ori          t6, a5, 1548
                  bne          t3, s7, 374f
                  srli         s4, s1, 19
372:              xor          a6, sp, s7
                  auipc        t1, 86983
374:              bgeu         s6, a0, 383f
375:              xor          s5, zero, tp
                  bgeu         s7, a1, 384f
                  xor          t5, a5, s7
                  bgeu         s0, t3, 386f
                  slli         t1, sp, 21
                  slti         t3, t1, -2018
                  srl          s4, t1, a5
                  bge          a2, a1, 393f
383:              bge          a5, gp, 387f
384:              blt          s0, s0, 389f
                  and          s0, s1, a4
386:              sub          gp, t2, a6
387:              srai         t5, s4, 19
                  sltiu        a6, t0, 732
389:              sub          s10, s8, a2
                  sll          s4, t1, t3
                  andi         a3, gp, -965
                  or           a0, a4, t4
393:              sll          zero, s6, a3
                  nop
                  add          tp, s10, s2
                  addi         s9, zero, 291
                  slti         a2, s7, 1198
                  xori         s7, s11, 1039
                  sub          tp, a3, a6
                  slti         s6, s2, 1560
                  andi         zero, zero, -664
                  or           s2, t0, zero
                  lw           s5, 4(t2)
                  lui          s6, 125163
                  slti         t6, s3, 887
                  addi         t2, t2, 16
                  xor          s10, a2, a3
                  auipc        t5, 191085
                  or           tp, gp, t3
                  slli         sp, t2, 0
779:              addi x8, x21, 1
779:              jalr x8, x8, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x11, x7, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x20, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x20, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x20, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x20, x16, ecall_handler
                  li x16, 0x1
                  beq x20, x16, instr_fault_handler
                  li x16, 0x5
                  beq x20, x16, load_fault_handler
                  li x16, 0x7
                  beq x20, x16, store_fault_handler
                  li x16, 0xc
                  beq x20, x16, pt_fault_handler
                  li x16, 0xd
                  beq x20, x16, pt_fault_handler
                  li x16, 0xf
                  beq x20, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x7, x11, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
