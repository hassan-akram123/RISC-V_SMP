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
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x67b6ce9
                  li x2, 0xf0c57426
                  li x3, 0x0
                  li x5, 0xa
                  li x6, 0xb
                  li x7, 0x2
                  li x8, 0xf0648a27
                  li x9, 0x9
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x1
                  li x16, 0x80000000
                  li x17, 0xfd0c3b75
                  li x19, 0x80000000
                  li x20, 0x6e5a17db
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xf0852e2b
                  li x24, 0x0
                  li x25, 0xf86e5f8d
                  li x26, 0x2
                  li x27, 0x80000000
                  li x28, 0x7e3c9010
                  li x29, 0x0
                  li x30, 0x6ed238db
                  li x31, 0x9
                  la x4, user_stack_end
main:             and          t3, s7, tp
                  srli         s7, s0, 16
                  la           s3, sub_1
                  auipc        t2, 712920
                  sub          s1, s4, t5
                  and          a5, gp, t4
                  sra          s5, s9, t2
                  and          a7, s7, s8
                  sub          t0, s9, a7
                  addi         s3, s3, -466
                  auipc        t1, 484569
                  xori         a2, s7, 1004
main_j2:          jalr         t1, s3, 467 #jump main -> sub_1
                  sltu         t3, s0, a1
                  la           t5, sub_2
                  slli         s11, s6, 14
                  slli         t4, s5, 4
                  ori          t6, a7, 1177
                  auipc        s6, 364006
                  andi         t3, s1, 1789
                  slt          s6, t4, a1
                  addi         t5, t5, 85
                  auipc        t4, 252701
main_j3:          jalr         t1, t5, -85 #jump main -> sub_2
                  la           a7, region_0+1791 #start riscv_load_store_hazard_instr_stream_0
                  sb           t3, -6(a7)
                  nop
                  lbu          t0, -6(a7)
                  sltu         s4, s10, zero
                  sb           gp, -6(a7)
                  lbu          a3, -6(a7)
                  lbu          t2, -6(a7)
                  sltu         a0, s0, a4
                  sb           s2, -6(a7)
                  sb           s1, -16(a7)
                  sb           a4, -16(a7)
                  lbu          s8, -16(a7)
                  sb           a1, -16(a7)
                  lbu          t0, -16(a7)
                  lbu          s5, -16(a7)
                  sb           t2, -16(a7)
                  sb           a0, 15(a7)
                  andi         t2, a2, 395
                  lh           t4, 15(a7)
                  lb           s8, 14(a7)
                  lbu          t0, 14(a7)
                  lbu          a0, 14(a7)
                  addi         t3, t1, -984
                  slli         s1, a4, 11
                  xor          s0, s9, t4
                  lbu          t4, 14(a7)
                  sb           s11, 9(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           a6, region_0+102 #start riscv_load_store_hazard_instr_stream_1
                  sh           t6, -56(a6)
                  srl          s4, t4, s5
                  sb           sp, 9(a6)
                  sh           s3, 6(a6)
                  sb           t3, 6(a6)
                  sb           s2, 6(a6)
                  lb           gp, 6(a6)
                  lbu          s7, -2(a6)
                  sltu         t4, t0, a1
                  sb           gp, -25(a6)
                  lbu          a1, 11(a6)
                  lbu          t1, 41(a6)
                  sw           a2, 14(a6)
                  lh           a2, 14(a6)
                  lhu          t1, -52(a6)
                  sb           s3, 59(a6)
                  lbu          s5, 59(a6)
                  lh           s10, -34(a6)
                  lbu          s7, -7(a6) #end riscv_load_store_hazard_instr_stream_1
                  la           s7, region_0+499 #start riscv_load_store_rand_instr_stream_0
                  lui          a6, 238635
                  lbu          a1, -5(s7)
                  and          s6, s11, t6
                  lbu          s11, -6(s7)
                  lui          t3, 655837
                  lui          t1, 52228
                  lbu          t5, 8(s7)
                  slli         s10, t0, 27
                  sub          s11, s3, s5
                  lb           t3, -15(s7)
                  srli         s1, s5, 10
                  sra          ra, tp, tp
                  and          s0, sp, a4
                  nop
                  sb           t0, 6(s7)
                  sub          sp, gp, t0
                  addi         s11, t1, -543
                  lbu          a6, 16(s7)
                  slli         s4, ra, 27
                  xori         t0, s1, -1388
                  sb           s2, 12(s7)
                  lbu          s1, -2(s7)
                  sh           gp, -5(s7)
                  sh           s7, 1(s7)
                  sb           a1, -12(s7)
                  sb           zero, 11(s7)
                  sb           t5, 2(s7) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+159 #start riscv_load_store_rand_instr_stream_1
                  lbu          s0, -16(sp)
                  slti         t3, zero, 1507
                  nop
                  sb           ra, -51(sp)
                  lbu          a5, 5(sp)
                  slli         a7, s6, 24
                  lhu          s6, -51(sp)
                  slti         s4, s9, 146
                  sb           zero, -24(sp)
                  lbu          s1, 58(sp)
                  sub          a1, tp, s2
                  lbu          s1, -17(sp)
                  lb           t0, 53(sp)
                  slli         s5, t4, 10
                  ori          a7, s3, 211
                  lbu          a1, 36(sp)
                  sb           s1, -33(sp)
                  andi         s1, s9, 1573
                  addi         s7, t0, -70
                  sltiu        s7, tp, 1251
                  lh           a6, -63(sp)
                  sra          a5, gp, s1
                  slti         t0, s10, 182
                  addi         t2, zero, -1461
                  lhu          zero, 35(sp)
                  sra          s11, gp, s10
                  lhu          a7, -31(sp)
                  slti         s10, s3, -500
                  sb           zero, -16(sp)
                  lui          s6, 1047170
                  lh           s3, 57(sp)
                  xori         s3, t2, -1254
                  slt          a6, s7, s4
                  lb           t6, -16(sp)
                  sb           a3, -29(sp)
                  sltiu        s6, t1, -727
                  lbu          s1, 39(sp)
                  sb           s3, 32(sp)
                  slti         s1, s7, 681
                  sh           s6, 61(sp)
                  lbu          gp, -62(sp)
                  srli         s10, sp, 16
                  srl          a2, sp, s6
                  lbu          s3, 25(sp)
                  srli         s1, a7, 26
                  sw           a3, 13(sp)
                  slt          t5, s8, s0
                  lh           a2, 21(sp)
                  lb           s5, 4(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_1+1234 #start load_store_instr_stream_2
                  la           a0, region_1+1648 #start load_store_instr_stream_1
                  la           s10, region_1+786 #start load_store_instr_stream_0
                  lbu          a5, -1021(s0)
                  sb           t2, -78(s0)
                  lw           a5, -358(s0)
                  lw           ra, 10(s10)
                  lbu          a7, -189(a0)
                  lb           s8, -163(a0)
                  sb           t4, -961(s0)
                  lb           a3, -3(s10)
                  lbu          s1, -63(s0)
                  lb           s8, -7(s10)
                  sb           zero, -189(a0)
                  lh           a5, 214(s0)
                  lbu          s1, 57(a0)
                  lh           t5, 38(a0)
                  sb           t6, -43(s0)
                  lbu          a2, 14(s10)
                  lb           a2, 423(s0)
                  lbu          s1, -209(a0)
                  sb           a2, -909(s0)
                  sb           t3, 313(s0) #end load_store_instr_stream_2
                  sb           a1, 2(s10)
                  lhu          s5, 8(s10)
                  lhu          s9, 14(a0) #end load_store_instr_stream_1
                  lbu          s1, 5(s10)
                  lw           s6, 2(s10)
                  lb           t1, 15(s10) #end load_store_instr_stream_0
                  sltiu        s6, t0, -153
                  slt          sp, s10, s3
                  srli         s1, s4, 21
                  bne          s11, t5, 6f
                  slt          t3, s0, a4
                  add          a5, s8, t5
6:                sll          s3, s7, gp
                  srli         t0, a4, 20
                  andi         s5, s3, 404
                  sltiu        s6, a7, 1249
                  srai         a2, a6, 18
                  ori          a7, t0, 669
                  sltu         t5, s1, t2
                  srl          s6, a4, s2
                  auipc        s6, 233445
                  sll          a2, a0, s3
                  bne          zero, ra, 28f
                  sra          s9, s7, a5
                  and          t0, s8, t4
                  xori         s11, s1, 139
                  sltu         t5, a0, a3
                  srai         s5, t5, 19
                  srl          a1, s8, tp
                  srai         ra, a7, 2
                  nop
                  sltiu        a7, t4, 1045
                  nop
                  xori         a2, a5, 623
28:               ori          s6, a1, -1686
                  srli         s1, a3, 13
                  bge          s1, s1, 39f
                  blt          t3, a2, 38f
                  auipc        s5, 996988
                  sltiu        a6, zero, -1907
                  andi         a5, t0, -1696
                  addi         a1, s8, 687
                  lui          a0, 26528
                  srai         s11, s1, 18
38:               add          sp, a2, a2
39:               or           s0, s10, a3
                  xori         s10, s0, -900
                  sltiu        s8, t3, 838
                  xori         s11, t5, 1831
                  sltiu        zero, t0, -828
                  beq          t1, s9, 56f
                  beq          t3, t0, 57f
                  bgeu         t1, s5, 53f
                  bltu         t0, a4, 65f
                  andi         s11, a7, 923
                  add          a7, s0, gp
                  slt          s5, a2, a2
                  addi         t0, s5, 194
                  addi         s0, s6, 1344
53:               srai         s5, t0, 19
                  or           s8, t1, sp
                  nop
56:               blt          s3, t5, 66f
57:               beq          a3, t2, 77f
                  bgeu         t6, a1, 74f
                  slt          a0, s6, s2
                  srli         s7, t2, 28
                  or           s1, t0, s0
                  xori         t2, a3, 1461
                  blt          s8, s11, 81f
                  sltiu        a6, gp, -1379
65:               bgeu         s3, zero, 72f
66:               nop
                  nop
                  slti         ra, t2, 87
                  sll          zero, s1, a2
                  or           t0, s6, s11
                  sra          s10, tp, a1
72:               srai         gp, s3, 16
                  or           s0, s10, s2
74:               slti         a2, s1, -64
                  bgeu         t0, a7, 91f
                  add          s10, a4, t5
77:               blt          t2, s3, 83f
                  bne          s11, s3, 81f
                  srl          t6, s4, a6
                  or           t0, a3, s4
81:               addi         a0, s0, -658
                  nop
83:               and          a0, a0, s10
                  beq          s4, a4, 90f
                  or           s3, gp, a0
                  bne          a1, t1, 104f
                  xori         t4, a3, 1304
                  blt          t5, t5, 105f
                  and          zero, a5, sp
90:               lui          a0, 362043
91:               bgeu         t6, s4, 92f
92:               bge          t6, t1, 109f
                  slt          t5, a6, s0
                  and          a3, s6, a7
                  slti         s4, s10, -1151
                  xor          s5, a4, t0
                  srai         s10, a5, 21
                  sub          s0, a5, a0
                  slt          a6, tp, a3
                  xori         t4, gp, -1130
                  sra          s1, ra, s8
                  slti         s11, s4, 779
                  slti         ra, s4, -625
104:              bne          ra, s10, 111f
105:              bge          s9, a2, 118f
                  bltu         a2, s10, 119f
                  sltu         t2, t0, a2
                  beq          a5, a4, 127f
109:              srli         s3, sp, 21
                  xor          s6, a6, t5
111:              beq          sp, s1, 127f
                  bge          a0, s6, 130f
                  srai         a1, s1, 29
                  srli         s6, a1, 3
                  srai         zero, zero, 11
                  blt          t4, s2, 119f
                  sltiu        zero, a7, 997
118:              nop
119:              srl          t3, ra, a4
                  sltiu        gp, t1, 171
                  xori         s4, t2, 1839
                  and          sp, a6, s6
                  and          t6, s11, s2
                  srli         a0, s8, 6
                  bge          s10, s3, 141f
                  nop
127:              blt          t4, t3, 134f
                  bge          t3, s8, 140f
                  nop
130:              sltu         t3, zero, a5
                  srai         t5, gp, 9
                  sra          t1, zero, t2
                  sra          a2, tp, t1
134:              nop
                  or           gp, a2, s8
                  xori         a2, s0, 231
                  sltu         a5, t6, t3
                  slti         t0, t5, -1720
                  addi         s0, a1, -1539
140:              ori          a7, a6, 1159
141:              slt          a0, tp, s5
                  slti         s3, s0, 566
                  and          s8, t4, zero
                  bge          a3, a4, 163f
                  srli         s4, a2, 3
                  sltiu        a2, a2, 795
                  sra          t2, t4, ra
                  ori          s9, a6, -314
                  blt          tp, s0, 167f
                  xor          s11, t0, tp
                  and          s7, s0, tp
                  lui          s1, 819406
                  slt          t1, t4, s8
                  andi         t0, s8, -1945
                  sltiu        s7, t2, -1682
                  xor          t5, a0, a3
                  slti         t4, sp, -512
                  ori          s6, sp, -406
                  xori         sp, t1, 329
                  slt          gp, t5, s5
                  srl          t4, t0, a7
                  srl          sp, s7, s3
163:              auipc        s1, 347149
                  bltu         t6, a0, 180f
                  auipc        s3, 35596
                  lui          a6, 469633
167:              blt          a2, tp, 183f
                  sll          a0, s10, s10
                  auipc        s4, 790727
                  slt          t1, s8, t3
                  sra          a3, s9, a3
                  beq          s11, s3, 175f
                  beq          gp, s11, 186f
                  xor          s3, t2, a6
175:              beq          a7, s3, 187f
                  addi         s8, s5, -1957
                  beq          s0, t1, 184f
                  addi         s10, a7, 2042
                  bltu         a6, s3, 186f
180:              srai         t3, a5, 3
                  slt          s9, t5, s7
                  slt          s5, s10, s3
183:              sltu         a5, a2, t5
184:              srl          t3, s9, s8
                  andi         t3, a1, 1846
186:              slti         gp, t5, -581
187:              addi         s6, a6, 1086
                  lui          s10, 1037328
                  bltu         s0, s6, 192f
                  la           sp, region_0+622 #start load_store_instr_stream_1
                  lb           s7, -7(sp)
                  la           t5, region_0+1415 #start load_store_instr_stream_0
                  lb           s8, -15(sp)
                  lbu          t0, 31(sp)
                  lh           s5, -31(t5)
                  sh           s2, -21(t5)
                  sb           t0, 34(t5)
                  lw           a7, -31(t5)
                  lhu          a7, 26(sp)
                  lbu          t1, -49(t5)
                  lb           t0, 25(sp)
                  sb           s2, -58(sp)
                  sw           a3, 5(t5)
                  lb           a0, -61(sp) #end load_store_instr_stream_1
                  sb           a0, 29(t5) #end load_store_instr_stream_0
                  slti         s6, t0, 1996
                  srli         s10, s0, 0
192:              slt          t1, gp, a7
                  bgeu         s7, s5, 202f
                  bne          s1, a6, 212f
                  sll          t6, ra, t0
                  xor          t2, ra, sp
                  sub          s3, a5, a7
                  andi         s9, a6, -1435
                  srl          s9, a7, s8
                  la           sp, sub_2
                  sltiu        s11, gp, 1488
                  addi         sp, sp, -997
                  sll          t0, s10, t6
                  bltu         a3, s4, main_j1 #branch to jump instr
                  sra          ra, s6, a1
                  xori         t1, a6, 1190
                  sra          gp, a2, t0
main_j1:          jalr         t1, sp, 998 #jump main -> sub_2
                  and          a1, a3, s7
                  addi         a7, t1, 829
                  addi         s5, s7, 1452
                  sltiu        s9, s3, 391
                  ori          s3, a1, -9
                  sltu         a5, s10, tp
202:              or           s5, tp, ra
                  slti         s5, s9, 1444
                  sub          zero, s10, s0
                  xori         t4, a1, 1485
                  addi         s5, s10, 1482
                  xori         t5, s2, -2006
                  auipc        gp, 876180
                  xor          a3, s8, a0
                  bne          a6, s0, 224f
                  nop
212:              xori         s4, t4, -1146
                  auipc        a3, 124480
                  beq          s3, s9, 215f
215:              bgeu         t4, gp, 218f
                  bge          s8, s6, 224f
                  srai         a0, s2, 15
218:              srai         s3, s7, 5
                  bge          zero, a5, 224f
                  lui          s11, 480526
                  andi         a5, a1, 954
                  or           a3, s9, a6
                  addi         s9, s2, -8
224:              sltiu        t5, a6, 352
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            and          ra, a6, t0
                  sltu         a6, sp, s1
                  addi         tp, tp, -16
                  nop
                  lui          s5, 515210
                  srli         a3, t3, 17
                  sw           t1, 4(tp)
                  slli         s5, gp, 5
                  la           sp, region_1+85 #start riscv_load_store_rand_instr_stream_2
                  srl          s8, sp, s10
                  sb           s9, 112(sp)
                  lbu          a7, 1166(sp)
                  lbu          s3, 634(sp)
                  lh           s10, 797(sp)
                  ori          s3, s1, -1966
                  slti         s1, s0, -305
                  lbu          a0, 276(sp)
                  srli         ra, t6, 21
                  srai         a1, sp, 30
                  sub          a3, a2, tp
                  slti         s5, s5, 2017
                  ori          a0, t3, -800
                  sltiu        a6, a0, 1201
                  sh           s5, 1137(sp)
                  lbu          a5, 1642(sp)
                  sb           gp, 1562(sp)
                  sltiu        s11, s7, 704
                  slti         s6, a3, -1065
                  lui          s6, 192189
                  sb           t4, 180(sp)
                  sra          gp, s10, s11
                  lb           a3, 1166(sp)
                  lb           s9, -55(sp)
                  addi         s3, a0, 245
                  sh           ra, 1169(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s6, region_1+245 #start load_store_instr_stream_2
                  sw           t0, 87(s6)
                  la           a7, region_1+1997 #start load_store_instr_stream_0
                  la           a1, region_1+1779 #start load_store_instr_stream_1
                  lb           t3, -13(a1)
                  sb           a0, 234(s6)
                  lb           sp, -16(a7)
                  sb           a3, -6(a1)
                  sb           s10, -2(a7)
                  lbu          zero, -36(s6)
                  lh           s1, 3(a1)
                  sb           a3, -10(a1)
                  lbu          a6, -27(s6)
                  lhu          s5, -49(s6)
                  sh           t3, -15(a7)
                  lbu          t4, -9(a7)
                  sb           a6, 114(s6)
                  lbu          t6, 218(s6)
                  lbu          sp, -11(a1)
                  sb           s6, -14(a1)
                  lh           s7, -9(a7)
                  lb           s3, 6(a1)
                  lh           s8, 225(s6)
                  lb           s3, 5(s6) #end load_store_instr_stream_2
                  lbu          a2, 1(a1) #end load_store_instr_stream_1
                  lb           s9, -6(a7) #end load_store_instr_stream_0
                  la           gp, region_1+1879 #start riscv_load_store_hazard_instr_stream_0
                  sh           s4, -257(gp)
                  lh           s5, -257(gp)
                  auipc        t0, 737678
                  ori          a1, a3, 971
                  sb           s4, -257(gp)
                  lbu          s3, -257(gp)
                  lbu          s4, -257(gp)
                  lh           s0, -257(gp)
                  xori         t0, s3, -1620
                  lb           sp, -257(gp)
                  sb           s11, -257(gp)
                  sltiu        t5, gp, -585
                  lb           t5, -257(gp)
                  slti         s0, s9, -1402
                  andi         s11, s10, -1933
                  lb           a3, -257(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           a1, region_1+906 #start load_store_instr_stream_3
                  la           ra, region_1+1264 #start load_store_instr_stream_2
                  la           a5, region_1+891 #start load_store_instr_stream_1
                  la           sp, region_1+307 #start load_store_instr_stream_4
                  lw           t6, 38(a1)
                  la           s3, region_1+1170 #start load_store_instr_stream_0
                  sb           s2, -101(sp)
                  lbu          a6, 69(s3)
                  lhu          t5, 91(sp)
                  lhu          t2, -48(a1)
                  sb           ra, -1067(ra)
                  lb           t0, -21(a1)
                  sh           zero, -245(a5)
                  lh           a2, -111(a5)
                  lb           a7, 57(s3)
                  lb           t6, -52(a1)
                  sb           s0, -141(sp)
                  lb           s0, 170(a5)
                  sb           s10, -176(s3)
                  lb           s11, -151(ra)
                  lb           gp, 64(sp)
                  lhu          gp, 5(a5)
                  sb           tp, 658(ra)
                  lbu          s1, -168(a5)
                  lb           s4, -97(a5)
                  lhu          a0, 20(a1)
                  sb           s5, -56(a1)
                  lbu          s7, -651(ra)
                  lb           a2, -21(a5)
                  sb           a3, -220(s3)
                  lb           t1, 29(a1)
                  lbu          a7, -60(a5)
                  lw           t3, 6(a1)
                  lbu          s11, -15(sp)
                  lb           a6, 467(ra)
                  sw           s6, -58(a1)
                  lbu          a3, -1225(ra)
                  sb           a2, 168(a5)
                  lbu          a3, -589(ra) #end load_store_instr_stream_2
                  lb           t0, -28(a1) #end load_store_instr_stream_3
                  sh           a2, 208(s3)
                  lw           t3, 33(sp)
                  lb           s9, 217(a5) #end load_store_instr_stream_1
                  lb           s0, 148(sp) #end load_store_instr_stream_4
                  lb           a3, 175(s3) #end load_store_instr_stream_0
                  la           sp, region_0+238 #start riscv_load_store_rand_instr_stream_1
                  sb           s5, 1646(sp)
                  or           t6, a3, s2
                  lb           s10, 1245(sp)
                  srl          t6, s5, zero
                  sll          s6, a5, s10
                  sltiu        t2, tp, -86
                  lb           a0, 633(sp)
                  sb           t5, 1212(sp)
                  sb           s11, 1721(sp)
                  lh           t2, 1760(sp)
                  addi         s3, s3, -1840
                  sll          s0, s4, s7
                  sltiu        a3, s3, -2022
                  sb           a4, 1541(sp)
                  lbu          a0, 734(sp)
                  or           t4, t0, s6
                  sh           s9, 222(sp)
                  sra          a1, t2, sp
                  lbu          s0, -5(sp)
                  lbu          a7, 812(sp)
                  lbu          a0, 977(sp)
                  srai         t4, a7, 31
                  lw           a0, 658(sp)
                  slt          s0, t5, a4
                  lb           t5, -19(sp)
                  sb           t6, 1673(sp)
                  add          s7, a0, t6
                  lbu          t5, 305(sp)
                  lbu          s3, 891(sp)
                  lb           ra, 1373(sp)
                  sltiu        a2, tp, -1887
                  sra          s0, t1, s6
                  srl          s10, a6, s6
                  andi         t6, s0, -2002
                  sltiu        s4, t4, 833
                  sub          s9, a6, a2
                  sll          s11, t3, a1
                  sra          s4, s6, t2
                  addi         t0, s1, -1706
                  lbu          s7, 1596(sp)
                  lw           a2, 1682(sp)
                  lb           a2, 1667(sp)
                  slti         a7, s0, 463
                  add          t4, a7, t4
                  sw           a7, 26(sp)
                  lbu          a2, 619(sp)
                  slli         a3, s4, 31
                  sub          t5, a6, s10
                  slti         a1, gp, -1360
                  lui          a2, 541997
                  sltu         s8, s11, s6
                  lb           a6, 803(sp)
                  lh           zero, 1536(sp)
                  lbu          s8, 417(sp)
                  nop
                  srl          s11, a5, s8
                  lb           t4, 1649(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+111 #start riscv_load_store_hazard_instr_stream_1
                  sb           t3, 67(sp)
                  lb           a6, 67(sp)
                  lh           t2, 67(sp)
                  lb           a2, 67(sp)
                  sb           a3, 67(sp)
                  auipc        s4, 899631
                  and          t1, a3, sp
                  lhu          zero, 67(sp)
                  auipc        s8, 407210
                  lb           a1, 46(sp)
                  lb           t0, 46(sp)
                  lbu          t1, 46(sp)
                  sb           a7, 46(sp)
                  sb           tp, 46(sp)
                  lb           s6, 46(sp)
                  lbu          s0, 46(sp)
                  lb           s10, 46(sp)
                  lb           t2, 46(sp)
                  lbu          t6, 46(sp)
                  andi         ra, s5, 1479
                  lb           s0, 46(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a5, region_1+651 #start load_store_instr_stream_0
                  la           s11, region_1+794 #start load_store_instr_stream_3
                  la           t4, region_1+748 #start load_store_instr_stream_2
                  la           a1, region_1+1363 #start load_store_instr_stream_1
                  la           ra, region_1+1283 #start load_store_instr_stream_4
                  sw           t0, -427(a5)
                  sb           tp, -1054(a1)
                  lhu          a2, 0(s11)
                  lhu          s0, -721(a1)
                  lhu          s10, -1297(a1)
                  lbu          s3, -45(a5)
                  lb           sp, -321(t4)
                  sb           gp, -556(ra)
                  sb           t6, 181(ra)
                  lbu          s8, 8(s11)
                  lb           s6, -463(t4)
                  lb           t3, 463(a5)
                  sb           s7, 547(t4)
                  sb           s0, -8(s11)
                  lbu          t3, 1054(a5)
                  lb           s10, -831(ra)
                  lb           s8, 680(a5)
                  lbu          a2, -218(a1)
                  sw           ra, 2(s11)
                  sh           s1, 246(t4)
                  sh           sp, -893(ra)
                  lb           t5, -307(t4)
                  lbu          s10, 275(a1)
                  lbu          t3, -258(t4)
                  sb           a1, 190(a5)
                  lh           t3, -1195(a1)
                  lb           t1, 8(s11)
                  lb           a0, -332(a1)
                  lhu          s6, 6(s11)
                  sb           t1, 6(s11)
                  sb           s8, 584(ra)
                  sb           t1, 913(t4) #end load_store_instr_stream_2
                  sb           ra, 10(s11)
                  sb           a4, 698(ra) #end load_store_instr_stream_4
                  sb           tp, -354(a1) #end load_store_instr_stream_1
                  sb           t6, 5(s11) #end load_store_instr_stream_3
                  lbu          a0, 1114(a5) #end load_store_instr_stream_0
                  la           a1, region_0+1624 #start load_store_instr_stream_0
                  la           a6, region_0+1234 #start load_store_instr_stream_1
                  lhu          sp, 120(a6)
                  lh           t2, 16(a1)
                  sb           s6, -93(a6)
                  lhu          a5, -194(a6)
                  lbu          ra, -13(a1)
                  sb           t5, 9(a1)
                  sb           s5, -16(a1)
                  lhu          t1, 100(a6)
                  lbu          t0, 1(a1)
                  lb           a0, -16(a1)
                  lbu          t2, 1(a1)
                  lh           ra, 4(a1)
                  lhu          a2, 172(a6)
                  sh           a5, -204(a6) #end load_store_instr_stream_1
                  lbu          t5, 16(a1) #end load_store_instr_stream_0
                  la           sp, region_1+1010 #start riscv_load_store_rand_instr_stream_0
                  lbu          a5, 307(sp)
                  sll          s6, s7, gp
                  lhu          a3, 750(sp)
                  xor          s4, zero, sp
                  sb           t5, 751(sp)
                  lb           s6, -601(sp)
                  sb           t4, -831(sp)
                  lb           s5, -401(sp)
                  sltiu        s8, s11, 1680
                  lbu          s0, 841(sp)
                  lb           s8, -969(sp)
                  sb           t6, -521(sp)
                  xor          s5, t6, s1
                  lb           s3, -7(sp)
                  lh           a6, -440(sp)
                  slt          s6, ra, a4
                  nop
                  lb           gp, -191(sp)
                  lbu          a0, 548(sp)
                  or           s5, s2, s0
                  lh           s1, 710(sp)
                  lbu          t0, -71(sp)
                  or           s3, a3, sp
                  auipc        a1, 805417
                  and          a3, a1, t0
                  sh           a3, -452(sp)
                  slt          t1, s9, tp
                  lbu          s0, -112(sp)
                  slti         a1, t5, -14
                  ori          s6, t2, 1140
                  sub          s0, s11, zero
                  lh           ra, -478(sp)
                  lh           a0, 624(sp)
                  lb           s11, -347(sp)
                  nop
                  lbu          s1, 411(sp)
                  sb           s4, 897(sp)
                  sb           s4, 239(sp)
                  lbu          t3, -729(sp)
                  lbu          t3, -973(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+1855 #start riscv_load_store_hazard_instr_stream_3
                  sll          gp, s0, sp
                  lui          s11, 1017633
                  add          s3, a4, s2
                  auipc        t6, 819333
                  sb           s5, -930(s0)
                  sb           a1, -930(s0)
                  or           t4, s4, t4
                  sb           s10, -930(s0)
                  lbu          t2, -930(s0)
                  slti         sp, a3, -244
                  sb           t0, -930(s0)
                  lb           s3, -930(s0)
                  ori          s9, a2, 508
                  sb           a3, -930(s0)
                  lbu          gp, -930(s0)
                  lb           ra, -930(s0)
                  lb           s1, -930(s0)
                  sb           s2, -930(s0) #end riscv_load_store_hazard_instr_stream_3
                  sltiu        a0, s6, -1048
                  lui          a5, 487631
                  add          t5, t5, s4
                  bgeu         a6, sp, 19f
                  slt          s11, s6, s5
                  srai         ra, t1, 25
                  bge          a1, t5, 7f
7:                blt          sp, a5, 19f
                  lui          t6, 449526
                  beq          s8, t2, 17f
                  nop
                  blt          ra, s3, 12f
12:               add          s11, ra, a7
                  bge          s5, gp, 29f
                  bgeu         s0, s9, 34f
                  nop
                  srai         gp, t1, 2
17:               bge          a2, zero, 29f
                  bge          a4, s9, 31f
19:               beq          s11, a1, 26f
                  sltu         s0, s9, sp
                  addi         s11, zero, -579
                  srai         ra, sp, 9
                  sltu         t0, s8, a4
                  andi         sp, t5, 1667
                  srai         a1, s2, 25
26:               bge          s0, a5, 40f
                  sll          gp, a6, a3
                  srai         s8, s5, 5
29:               srl          t2, t5, a0
                  andi         sp, a2, 680
31:               nop
                  blt          tp, sp, 36f
                  addi         a2, t3, 1950
34:               addi         t0, s4, 1998
                  srl          gp, t6, a6
36:               nop
                  addi         s11, s7, 1889
                  srli         s9, s7, 23
                  slti         t4, zero, 1792
40:               sltu         s5, s7, s9
                  and          a2, s1, s0
                  andi         t5, a0, -524
                  xori         a3, t6, -552
                  lui          s5, 900478
                  bne          s2, t0, 61f
                  sra          s9, t4, s8
                  bge          a2, zero, 52f
                  bgeu         a6, t4, 54f
                  slt          t4, a5, a0
                  auipc        s4, 173224
                  sll          a2, a7, t4
52:               sltu         s3, s2, s9
                  nop
54:               andi         a6, a1, -1232
                  lui          gp, 220848
                  sll          s4, s7, tp
                  xor          s1, s7, a3
                  xori         a1, t6, 304
                  lui          s6, 380899
                  bge          s4, ra, 68f
61:               slti         t3, a4, 1052
                  lui          zero, 76335
                  add          gp, s5, ra
                  xori         t1, t1, 1581
                  blt          t6, s6, 84f
                  andi         t6, s1, 874
                  sub          gp, a3, a3
68:               blt          a0, s11, 78f
                  sub          s4, sp, a7
                  sra          s1, a2, s9
                  sra          t1, a6, a0
                  nop
                  slli         a5, s8, 26
                  add          s8, sp, ra
                  srli         a5, s6, 6
                  blt          a7, s11, 89f
                  sub          a6, s10, t6
78:               addi         s4, t3, -1531
                  and          t1, a2, s11
                  sltu         t1, s4, s7
                  srli         s10, s2, 9
                  xori         s3, t1, 1510
                  srai         s3, t1, 1
84:               slti         t5, s7, 1283
                  xor          a5, t4, a2
                  andi         s1, t1, 2034
                  srl          a7, s2, s4
                  bne          gp, s9, 89f
89:               ori          t2, t4, 1451
                  srl          t0, zero, a1
                  slli         a3, s2, 25
                  xor          t5, s3, t0
                  auipc        zero, 569851
                  bne          a2, a0, 96f
                  sub          s5, t5, a0
96:               lui          a5, 694555
                  or           s9, t1, t5
                  nop
                  sub          t0, s9, a1
                  sub          t0, t6, t3
                  bne          s4, s2, 114f
                  beq          s2, a6, 119f
                  srli         a1, zero, 17
                  sub          a3, a4, s6
                  bltu         s10, s2, 116f
                  sltu         ra, a6, t3
                  slt          s9, a5, s10
                  add          s8, s8, a7
                  or           sp, s0, gp
                  srli         a0, t3, 13
                  bne          a1, a0, 128f
                  slt          a0, a2, t5
                  xori         s0, t6, -1642
114:              srai         s0, a2, 3
                  srli         a1, t6, 25
116:              bltu         a6, a1, 123f
                  auipc        s7, 367562
                  xori         s9, s9, 1511
119:              or           s7, a3, a3
                  bne          s6, s4, 122f
                  bne          t3, a2, 123f
122:              sltu         s9, t4, a5
123:              sll          a5, s10, t2
                  slt          s6, t6, s10
                  nop
                  srli         s8, a7, 8
                  beq          tp, s8, 135f
128:              beq          a3, s5, 138f
                  andi         s5, a2, 741
                  and          s0, s7, a6
                  sll          gp, a4, t6
                  sub          s1, s11, zero
                  ori          ra, sp, -620
                  beq          t0, ra, 146f
135:              or           s7, a2, t6
                  srli         t0, a0, 24
                  nop
138:              andi         a2, a3, 1671
                  andi         gp, s5, 1358
                  lui          s1, 369888
                  sltu         a1, ra, a3
                  bgeu         t4, zero, 159f
                  nop
                  add          a7, s11, sp
                  and          gp, a3, gp
146:              addi         zero, t4, -1693
                  auipc        t3, 357174
                  xor          s3, t5, s3
                  sltiu        a6, s2, 1197
                  sra          s0, a4, a5
                  blt          ra, s1, 155f
                  xori         ra, s4, -368
                  sltiu        a2, s9, 1036
                  ori          s11, s1, -262
155:              bne          t2, gp, 169f
                  lui          s7, 131277
                  nop
                  sll          s4, s1, s6
159:              nop
                  srai         t0, a3, 6
                  srai         t0, s1, 23
                  addi         t1, s1, 1742
                  slt          t5, a6, a6
                  beq          s7, sp, 177f
                  or           a6, ra, tp
                  add          s4, s4, s11
                  slti         a5, a7, -1843
                  ori          s1, s9, -1342
169:              sub          sp, gp, sp
                  xor          a1, tp, a7
                  or           t3, s0, a2
                  xor          s10, s5, s2
                  add          a6, ra, s7
                  beq          s10, s2, 194f
                  auipc        a3, 951393
                  blt          a2, a4, 184f
177:              bge          s0, s9, 179f
                  srli         s4, a4, 17
179:              sltu         sp, a2, tp
                  bge          t2, a6, 188f
                  xor          t2, s9, zero
                  xor          zero, ra, s2
                  slt          s7, sp, s11
184:              slti         s7, s9, -585
                  srai         sp, t2, 22
                  sra          t6, a1, zero
                  srl          s4, a6, s5
188:              sub          s8, a4, s7
                  auipc        s11, 96544
                  bge          s11, t2, 192f
                  bgeu         a0, t4, 202f
192:              sub          t6, t4, t6
                  nop
194:              srai         t6, a6, 1
                  lui          a0, 1041171
                  sltiu        t5, a2, 1001
                  blt          s8, a4, 199f
                  auipc        a0, 550248
199:              sltiu        a1, t6, 1030
                  and          s8, s9, t4
                  srli         a5, a1, 21
202:              sub          s8, s6, s5
                  andi         sp, s4, -1823
                  sll          a6, tp, sp
                  bltu         s5, a0, 218f
                  bge          s11, a6, 222f
                  slli         s11, a6, 10
                  and          s3, s7, t1
                  srl          a0, a5, a3
                  slt          s11, t6, s4
                  addi         t0, s8, 1783
                  andi         a6, ra, 1903
                  srl          s9, zero, sp
                  and          s10, s5, s0
                  bne          a0, a1, 222f
                  slt          s0, s9, s1
                  srai         s4, s10, 28
218:              bltu         s4, t3, 230f
                  beq          s7, ra, 229f
                  sub          a6, t0, a7
                  sll          a3, zero, t1
222:              bgeu         tp, a4, 228f
                  beq          gp, zero, 233f
                  bgeu         a6, s5, 241f
                  sltu         a1, a0, a2
                  and          sp, s9, ra
                  addi         s8, tp, -992
228:              add          a0, t3, s1
229:              or           s4, a5, t0
230:              slt          t4, a5, a1
                  sub          sp, s9, t5
                  sra          a3, t5, t0
233:              bne          a1, a6, 246f
                  andi         a7, t0, 814
                  srl          s8, t1, s0
                  sub          s3, a6, s8
                  or           s8, s6, t4
                  nop
                  srli         t4, t4, 29
                  bgeu         s10, s5, 241f
241:              bltu         s9, s0, 242f
242:              xori         t4, s0, -1216
                  bge          a5, s5, 251f
                  sub          t5, s8, s11
                  and          ra, sp, a3
246:              sltu         s7, a1, s5
                  auipc        s10, 105953
                  auipc        t4, 576149
                  blt          s6, s0, 265f
                  lui          a2, 545754
251:              and          t3, ra, s7
                  slti         a6, a7, -195
                  slli         s7, gp, 12
                  bgeu         s0, a6, 270f
                  bne          s2, s8, 262f
                  bgeu         s10, zero, 261f
                  and          s9, gp, zero
                  srl          s6, s4, s1
                  bltu         s10, t2, 278f
                  addi         t3, t0, 2033
261:              bltu         t3, zero, 262f
262:              andi         t6, t0, 437
                  sltu         t1, s1, a0
                  srli         a6, a1, 25
265:              srai         zero, a5, 10
                  andi         ra, s5, 598
                  blt          a6, s4, 279f
                  sltu         t4, s3, zero
                  slti         t1, s10, 1592
270:              lui          s0, 526087
                  add          s10, a1, s10
                  sltu         s8, s6, a3
                  sll          t4, a2, t3
                  sra          sp, t1, s0
                  sra          sp, t0, s1
                  and          t1, s6, s5
                  slli         a3, s2, 4
278:              lui          a5, 3680
279:              slti         a7, t1, 1253
                  sll          t0, zero, t1
                  xori         t1, s0, 1490
                  bltu         t4, s1, 287f
                  slt          t4, t4, a6
                  bgeu         s2, s3, 286f
                  sub          s5, t5, s6
286:              xor          a7, s10, t3
287:              sra          a1, a7, s11
                  slt          t4, a1, t0
                  beq          a0, s6, 291f
                  or           s8, t2, t6
291:              srli         a2, s8, 16
                  bge          s8, s0, 312f
                  beq          a3, s6, 310f
                  bge          s11, t1, 307f
                  slti         s0, a3, 337
                  addi         gp, tp, -1198
                  slt          s9, s11, s7
                  lui          s10, 843429
                  bne          a2, gp, 312f
                  andi         a0, s1, 1904
                  addi         s1, ra, 1067
                  slli         t6, t6, 6
                  sra          a7, a6, t4
                  sltiu        a2, s6, 1381
                  sll          t1, s5, a3
                  blt          s1, s3, 308f
307:              bge          s5, a6, 323f
308:              sra          s11, s9, t2
                  lui          zero, 803211
310:              blt          s7, a1, 311f
311:              nop
312:              addi         t6, t3, -1238
                  blt          a4, s5, 323f
                  auipc        a7, 838173
                  bge          a6, s1, 328f
                  slli         s11, s11, 12
                  slt          a6, s7, s1
                  nop
                  andi         s5, ra, -81
                  beq          a2, s5, 328f
                  andi         a3, t5, -1790
                  srl          t3, s9, a2
323:              sra          t1, a5, s4
                  sltu         t1, tp, t0
                  slt          s5, t4, a3
                  beq          a6, t3, 338f
                  sll          s10, a4, sp
328:              nop
                  lui          t0, 152657
                  xori         zero, s5, -1388
                  bge          t5, a4, 350f
                  addi         a5, a7, -850
                  sltu         t3, ra, s4
                  bne          s10, t3, 345f
                  slti         a6, t1, 35
                  slt          t4, s11, s6
                  beq          s5, a4, 341f
338:              or           t4, ra, zero
                  sltiu        t2, s11, -271
                  srai         a3, gp, 17
341:              andi         t5, s2, -176
                  sltiu        t5, a0, 519
                  srli         gp, sp, 19
                  slt          a5, s2, s11
345:              sub          a7, a3, s7
                  srai         a2, s9, 8
                  bge          t1, a1, 357f
                  sltu         s1, s8, s1
                  beq          s9, a4, 357f
350:              srl          a1, s6, a6
                  srli         ra, t3, 27
                  srl          s5, a6, s7
                  lui          t0, 866770
                  xor          zero, t1, s11
                  sltiu        t1, s0, 1341
                  lui          s4, 736026
                  la           s0, region_1+1927 #start riscv_load_store_rand_instr_stream_3
                  srli         sp, sp, 3
                  addi         zero, zero, -705
                  lb           ra, -298(s0)
                  addi         s9, tp, 1352
                  lhu          sp, -409(s0)
                  and          t6, a4, t5
                  lb           s1, -1650(s0)
                  sb           tp, -70(s0)
                  addi         t1, tp, 1338
                  lui          t4, 964255
                  sb           s1, -1740(s0)
                  ori          a7, t0, 593
                  lb           a2, -996(s0)
                  srl          s10, t1, s10
                  lb           a1, -1260(s0)
                  lb           a0, -998(s0)
                  sb           t0, -1668(s0)
                  nop
                  srai         a2, s8, 10
                  lb           t0, -1828(s0)
                  addi         a5, s11, -1124
                  srli         t0, a2, 3
                  slti         t5, t6, 1718
                  srli         a2, t6, 16
                  sb           t0, -864(s0)
                  lbu          a2, -210(s0)
                  lb           a1, -1398(s0)
                  lb           zero, -1650(s0) #end riscv_load_store_rand_instr_stream_3
357:              slt          a0, a5, t4
                  andi         t0, a6, -847
                  srai         s0, t5, 10
                  slti         s11, a5, 264
                  sltu         gp, s9, s6
                  la           s4, region_1+26 #start riscv_load_store_hazard_instr_stream_2
                  addi         gp, zero, 1811
                  lbu          a7, -4(s4)
                  lh           t3, -4(s4)
                  sb           a7, -4(s4)
                  lh           gp, -14(s4)
                  sll          s8, zero, s10
                  nop
                  lbu          s1, -13(s4)
                  sb           tp, -13(s4)
                  sb           s2, -5(s4)
                  lb           t4, -5(s4)
                  lbu          t3, 8(s4)
                  lbu          t2, 3(s4)
                  lbu          s5, 9(s4)
                  lb           t5, 15(s4)
                  lbu          t6, -15(s4)
                  sw           s5, -2(s4)
                  sw           a6, -2(s4)
                  srli         t0, s2, 31
                  lb           a0, -9(s4) #end riscv_load_store_hazard_instr_stream_2
                  and          s6, a3, t0
                  sll          a2, t6, t5
                  andi         ra, s3, 396
                  bgeu         a2, s9, 382f
                  bltu         s5, t6, 382f
                  sltu         s8, t5, a5
                  sll          s3, s6, s1
                  slli         zero, s3, 5
                  srl          gp, a1, t0
                  sub          s5, tp, a5
                  slli         a6, a7, 28
                  and          s7, t1, t1
                  and          s3, tp, t0
                  srli         a6, a3, 12
                  bne          a6, a0, 384f
                  sub          s4, a6, t0
                  slti         a5, s4, -1046
                  srl          t0, a7, t2
                  sub          s1, t0, a5
                  slti         t5, t3, -64
382:              lui          t6, 1017993
                  bne          a1, a3, 390f
384:              blt          a4, a0, 385f
385:              srai         s8, tp, 2
                  slti         a3, ra, 1459
                  srai         t4, tp, 24
                  srl          a1, gp, s11
                  srl          zero, s9, gp
390:              srl          s11, s6, t6
                  sltu         a3, t5, s10
                  auipc        s0, 204259
                  andi         s5, s2, -710
                  slti         s8, sp, 550
                  bgeu         s5, a4, 411f
                  srl          a3, s5, a6
                  srai         t3, a5, 15
                  sltu         t0, s11, s5
                  slti         t5, a1, -991
                  lui          t0, 238197
                  and          a6, s9, a2
                  slti         t5, s4, -759
                  sra          s11, zero, s6
                  sub          s3, s3, s6
                  auipc        t2, 239588
                  bge          s11, t3, 411f
                  sltu         a6, s2, a4
                  blt          ra, t1, 409f
409:              xor          s1, s5, a0
                  bltu         a4, gp, 411f
411:              slt          s4, a7, a6
                  lw           t1, 4(tp)
                  sltu         s1, t0, s11
                  slti         a7, a2, 145
                  nop
                  addi         tp, tp, 16
                  and          gp, a0, a5
790:              addi x17, x6, 1
790:              jalr x17, x17, 0
sub_1:            addi         tp, tp, -20
                  ori          a5, a7, -1912
                  xori         s4, t2, 1807
                  lui          s6, 262412
                  auipc        gp, 698804
                  sw           t1, 4(tp)
                  addi         a5, a7, 1693
                  lui          a2, 247139
                  and          s4, t0, s9
                  slli         a3, a1, 31
                  slli         ra, t4, 27
                  la           sp, region_0+507 #start riscv_load_store_rand_instr_stream_0
                  lui          a7, 15679
                  sb           s9, 1(sp)
                  sltu         ra, t0, t5
                  sltiu        a2, s5, 1737
                  sb           ra, 12(sp)
                  lbu          s11, -10(sp)
                  xor          s3, s6, s3
                  sub          a2, t0, t3
                  srl          a2, t6, a6
                  lhu          a1, -9(sp)
                  andi         s3, s10, -386
                  sh           zero, -5(sp)
                  slti         a7, gp, 36
                  add          t4, gp, s3
                  nop
                  xori         s7, a4, 722
                  lbu          t0, 8(sp)
                  ori          a1, sp, -1392
                  sb           t0, 5(sp)
                  lb           s3, -10(sp)
                  add          a1, a3, gp
                  lui          s1, 421796
                  lb           t2, 15(sp)
                  sltiu        s7, s8, 1882
                  auipc        t3, 324388
                  auipc        s6, 82974
                  lhu          s11, -1(sp)
                  or           s1, t6, t0
                  sb           t4, 6(sp)
                  andi         a3, t6, 1216
                  lhu          zero, -15(sp)
                  sw           gp, 9(sp)
                  lui          s0, 966800
                  or           s9, s9, a4
                  sb           a6, 1(sp)
                  slli         a7, sp, 12
                  sltu         t2, s6, s6
                  lbu          s9, 5(sp)
                  sb           gp, -11(sp)
                  srai         s3, s3, 7
                  lb           a3, -8(sp)
                  lb           a0, -5(sp)
                  or           s9, s3, a4
                  lhu          t5, -7(sp)
                  lhu          s9, 1(sp)
                  ori          s3, ra, -1682
                  lh           s9, -9(sp)
                  slt          s7, s5, s2
                  srli         t1, s2, 15
                  lb           a0, -8(sp)
                  nop
                  sb           s10, -16(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+661 #start riscv_load_store_hazard_instr_stream_1
                  lb           s6, 550(s9)
                  lbu          zero, 550(s9)
                  lb           s1, 550(s9)
                  lbu          s1, 550(s9)
                  lb           s11, 550(s9)
                  lbu          gp, 550(s9)
                  xori         t0, a7, -1322
                  lb           s0, 550(s9)
                  lhu          s10, 177(s9)
                  sb           tp, 177(s9)
                  sltiu        t1, s8, 1759
                  lbu          gp, 177(s9)
                  sh           ra, 177(s9)
                  sb           s4, 177(s9)
                  lh           a2, 177(s9)
                  sb           s0, 177(s9)
                  and          zero, t2, s7
                  srli         s8, s8, 28
                  sb           t3, 177(s9)
                  lb           s5, 177(s9)
                  lhu          t3, 177(s9)
                  lh           a7, 177(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_0+1120 #start riscv_load_store_rand_instr_stream_1
                  andi         ra, t1, 127
                  lbu          s6, 93(t4)
                  nop
                  andi         s1, a1, 1157
                  or           s7, t0, t4
                  srai         t6, t0, 18
                  lbu          t1, -87(t4)
                  lb           a1, -4(t4)
                  lhu          sp, -140(t4)
                  xor          a7, a1, a4
                  sh           s8, 146(t4)
                  sb           t2, -64(t4)
                  sub          t3, t3, s11
                  lw           t2, -112(t4)
                  lhu          t3, -228(t4)
                  ori          s6, gp, -1747
                  lbu          a0, 67(t4)
                  lh           t0, -98(t4)
                  lbu          gp, 123(t4)
                  sra          a2, s4, gp
                  xori         a5, a6, -555
                  sub          s4, s11, a5
                  lbu          s1, -61(t4)
                  lb           s8, 38(t4)
                  srai         ra, t1, 14
                  and          s7, t4, s2
                  lb           s4, -34(t4)
                  xori         s4, a4, -144
                  sll          sp, s6, s0
                  srl          t1, t4, a0
                  lb           a7, -178(t4)
                  and          zero, t4, tp
                  srai         s11, t4, 11
                  lhu          s6, -246(t4)
                  add          s7, a1, s0
                  slti         s9, a4, -1795
                  xori         a0, a0, -536
                  sb           t1, -2(t4) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_0+1414 #start load_store_instr_stream_2
                  la           a3, region_0+1209 #start load_store_instr_stream_1
                  la           sp, region_0+1098 #start load_store_instr_stream_0
                  sb           a5, -184(a3)
                  lb           a5, -1108(s1)
                  lhu          s0, 14(sp)
                  lh           s0, -948(s1)
                  lbu          s10, 9(a3)
                  lh           ra, -702(s1)
                  sb           a6, -198(a3)
                  lb           s10, -16(sp)
                  lb           a1, 249(a3)
                  sb           s11, 542(s1)
                  lb           s11, -2(sp)
                  lbu          a0, -116(a3)
                  lb           zero, 8(sp)
                  sb           a5, -219(s1)
                  sb           s4, -671(s1) #end load_store_instr_stream_2
                  lhu          t2, 16(sp)
                  lw           s3, 3(a3)
                  sb           ra, -148(a3) #end load_store_instr_stream_1
                  lbu          s8, -7(sp) #end load_store_instr_stream_0
                  la           s1, region_0+1870 #start riscv_load_store_hazard_instr_stream_2
                  srli         s6, s6, 15
                  lbu          s3, -325(s1)
                  sltiu        s4, t0, -1334
                  lb           t0, -37(s1)
                  lb           t6, -37(s1)
                  sb           sp, -37(s1)
                  lb           t3, -37(s1)
                  lb           ra, -37(s1)
                  addi         s7, t2, 1529
                  lh           s9, -694(s1)
                  lhu          a6, -694(s1)
                  sub          t1, s2, t0
                  sb           a5, -1(s1)
                  lbu          a3, -1(s1)
                  slli         t4, s6, 0
                  add          s4, t3, s7
                  lb           a5, -1(s1)
                  sb           t4, -1(s1) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1698 #start riscv_load_store_hazard_instr_stream_0
                  lb           a6, 59(sp)
                  sb           gp, 59(sp)
                  sb           s1, 59(sp)
                  lh           t5, 140(sp)
                  lh           zero, 140(sp)
                  or           s10, a7, tp
                  sw           t5, -234(sp)
                  lhu          s6, 200(sp)
                  ori          a0, s9, 777
                  lb           s9, 200(sp)
                  sb           a6, 200(sp)
                  lb           t5, 200(sp)
                  sb           s5, 85(sp)
                  lbu          gp, 67(sp)
                  lbu          s0, 67(sp)
                  lb           t5, 67(sp)
                  sb           a1, -159(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+980 #start riscv_load_store_rand_instr_stream_2
                  andi         a1, a2, -1576
                  slti         t6, s9, -1341
                  srl          ra, s4, s7
                  lbu          a2, -754(sp)
                  lbu          a5, -424(sp)
                  sb           s10, 187(sp)
                  lw           t1, 712(sp)
                  andi         s0, a2, -843
                  xor          s7, a4, t2
                  sltu         a1, a6, s8
                  addi         s4, s2, 1679
                  slli         s3, s8, 2
                  ori          t4, t0, -1186
                  sb           a6, 713(sp)
                  sub          s9, gp, t2
                  srli         a2, s8, 1
                  lbu          t6, -843(sp)
                  add          zero, a4, s3
                  slli         t2, a2, 0
                  sb           a4, 535(sp)
                  lb           s11, 676(sp)
                  lb           s1, 557(sp)
                  add          t1, a0, a7
                  lh           t0, 720(sp)
                  lb           t0, 94(sp)
                  lbu          a5, 773(sp)
                  lbu          a2, -883(sp)
                  sb           t5, -260(sp)
                  sb           t0, -343(sp) #end riscv_load_store_rand_instr_stream_2
                  bgeu         t1, s11, 8f
                  sltiu        a1, t0, -1822
                  add          t0, s6, s4
                  xor          a0, tp, a2
                  bge          s4, a0, 22f
                  slti         sp, t3, 342
                  or           s4, s11, t4
                  addi         s7, t1, -2033
8:                xori         sp, s6, 647
                  and          t0, a4, sp
                  slti         s3, s0, -502
                  sub          ra, s0, s5
                  sltiu        s6, t4, 876
                  sltu         a5, s6, ra
                  bge          t4, s4, 28f
                  auipc        t5, 587468
                  addi         s3, t3, -601
                  auipc        t1, 422998
                  slti         t3, t3, -549
                  lui          t3, 37115
                  nop
                  srai         a1, a0, 29
22:               xori         t1, a4, -797
                  and          t2, s11, t4
                  beq          gp, s9, 27f
                  nop
                  la           ra, region_0+1949 #start load_store_instr_stream_2
                  la           s6, region_0+1979 #start load_store_instr_stream_1
                  sb           t1, -1(ra)
                  la           s3, region_0+1761 #start load_store_instr_stream_0
                  sb           t6, -214(s3)
                  sb           s7, -4(ra)
                  lw           sp, -15(s6)
                  lb           zero, 2(ra)
                  lb           t0, 168(s3)
                  lhu          s9, -25(s6)
                  sb           ra, 212(s3)
                  lbu          t5, -10(ra)
                  sb           s7, 0(s3)
                  lbu          s0, 7(ra)
                  sh           t5, -161(s3)
                  lb           t3, 186(s3)
                  sw           s4, -43(s6)
                  lhu          t3, 231(s3)
                  sw           s10, -1(ra) #end load_store_instr_stream_2
                  lbu          s7, -16(s6)
                  lhu          t6, -11(s6) #end load_store_instr_stream_1
                  lbu          s9, -128(s3) #end load_store_instr_stream_0
                  bge          zero, a2, 31f
27:               bne          a4, s2, 33f
28:               bgeu         a0, t5, 35f
                  bltu         a6, t2, 32f
                  slt          s4, a7, a6
31:               slti         t2, ra, -664
32:               bgeu         s11, a6, 43f
33:               srai         ra, t0, 15
                  xor          s0, a5, s1
35:               xor          a0, a6, t5
                  sra          t3, t1, t4
                  xori         a5, t1, 55
                  slti         s9, sp, -891
                  sub          s1, s9, t5
                  add          t3, s8, t6
                  sltu         a1, s5, a3
                  srl          t3, s4, s6
43:               bge          a4, gp, 51f
                  xor          s4, s6, a1
                  bltu         t0, t1, 57f
                  srai         a2, a4, 30
                  xori         a6, t1, 567
                  srli         sp, s8, 28
                  sltu         a5, s9, s5
                  sll          s6, t6, t2
51:               sub          s5, ra, t5
                  sltiu        t3, s9, -903
                  bltu         zero, t6, 67f
                  bgeu         a3, s3, 56f
                  bge          gp, t1, 68f
56:               beq          t1, t5, 58f
57:               and          a1, tp, s9
58:               xor          s11, s8, t6
                  bltu         t0, s5, 79f
                  nop
                  srli         s4, t6, 0
                  slt          a3, a1, t2
                  or           a2, a0, s9
                  bge          s9, t0, 69f
                  auipc        t4, 57384
                  srl          s6, t2, a0
67:               sub          a3, ra, s8
68:               bgeu         sp, a7, 87f
69:               sra          t4, a2, a2
                  bge          s3, t4, 87f
                  sltiu        s4, gp, 1964
                  srl          t3, t1, s2
                  addi         s9, a1, 698
                  add          s4, s0, t2
                  srl          s6, s7, a5
                  blt          t3, s0, 91f
                  bgeu         t1, a2, 78f
78:               nop
                  la           t4, region_0+35 #start load_store_instr_stream_3
                  la           t0, region_0+1070 #start load_store_instr_stream_0
                  lb           t1, 326(t4)
                  la           ra, region_0+829 #start load_store_instr_stream_1
                  la           s11, region_0+678 #start load_store_instr_stream_2
                  sb           s0, 1(t0)
                  la           a2, region_0+1392 #start load_store_instr_stream_4
                  lbu          t6, -782(ra)
                  sb           t1, 974(t4)
                  sw           s0, -188(a2)
                  lhu          t3, -12(t0)
                  sb           s1, 7(t0)
                  lw           t2, 10(t0)
                  lbu          gp, -207(a2)
                  sb           zero, -9(t0)
                  lb           a7, 1(s11)
                  lb           s6, 47(a2)
                  sb           a7, -339(ra)
                  lbu          gp, 7(s11)
                  sh           tp, 1535(t4)
                  sb           a3, 5(t0)
                  lh           s10, -759(ra)
                  sb           a7, -223(a2)
                  lbu          t2, 1344(t4)
                  lb           s4, 792(t4)
                  sb           a1, -8(s11)
                  lh           t2, -191(ra)
                  lh           a5, 1799(t4)
                  lb           s8, -13(t0)
                  sb           t0, -219(a2)
                  sw           t0, 1613(t4) #end load_store_instr_stream_3
                  lbu          a1, 3(s11)
                  sh           t4, 2(s11)
                  lh           t3, 847(ra)
                  lb           s3, 247(a2)
                  sh           s8, -6(t0)
                  sh           zero, 10(s11) #end load_store_instr_stream_2
                  sb           t0, 1150(ra) #end load_store_instr_stream_1
                  sb           ra, 8(t0)
                  lhu          a3, -226(a2) #end load_store_instr_stream_4
                  lh           s1, 10(t0) #end load_store_instr_stream_0
79:               bge          s9, t5, 84f
                  beq          a6, a7, 95f
                  bgeu         a0, sp, 100f
                  bgeu         a4, t0, 95f
                  slli         s5, a1, 15
84:               slti         s4, tp, 1792
                  sra          s9, t3, a5
                  add          a3, t2, t2
87:               sra          a6, s7, s9
                  bgeu         a0, gp, 96f
                  and          s0, t4, a5
                  xori         t6, t2, -871
91:               bltu         s0, a2, 103f
                  srli         s8, t4, 8
                  srl          s7, a6, t0
                  sra          gp, t1, s9
95:               andi         zero, s8, -1344
96:               bne          s9, s10, 115f
                  beq          ra, tp, 101f
                  nop
                  xor          s4, a3, s8
100:              beq          a1, s8, 106f
101:              slt          a3, s2, s0
                  blt          ra, a7, 121f
103:              bgeu         t5, s10, 109f
                  srai         a5, tp, 8
                  ori          s0, zero, -1671
106:              bgeu         gp, zero, 110f
                  lui          s8, 1030479
                  sub          t1, t4, a0
109:              xor          s7, s8, a5
110:              bne          a0, sp, 113f
                  add          s1, s11, t4
                  sltu         s3, s10, t2
113:              srl          a2, a7, s6
                  srai         t6, a0, 4
115:              sub          s10, s10, t6
                  sltiu        s4, s6, -166
                  lui          t5, 142292
                  or           gp, t3, sp
                  blt          a6, ra, 130f
                  sra          a6, s3, a1
121:              sltu         a6, s1, s9
                  bne          a6, a5, 135f
                  lui          zero, 992880
                  slti         s5, s0, 456
                  or           a7, tp, t0
                  xori         a3, a0, 1869
                  or           t5, s11, zero
                  slt          sp, s1, t1
                  lui          ra, 128343
130:              srli         a1, a2, 9
                  sra          s1, s3, s4
                  xori         t4, a1, -1226
                  ori          s4, s1, 1801
                  blt          t5, t5, 148f
135:              slti         s9, s2, -1475
                  xor          s10, s11, s1
                  bltu         a4, s8, 155f
                  andi         t6, s4, 1025
                  slt          a2, s11, t6
                  srl          t1, a2, s6
                  sll          s6, s3, a0
                  and          t5, t2, t0
                  sltu         a3, s9, a6
                  bne          t3, a5, 159f
                  bge          t3, a0, 157f
                  and          a1, s5, s6
                  slt          t6, s8, t6
148:              srl          a2, tp, t2
                  and          a5, s8, t4
                  srl          t6, s2, t3
                  bgeu         ra, s6, 159f
                  addi         a1, a1, 1785
                  or           a0, a6, s5
                  or           t6, a7, s6
155:              add          sp, t2, gp
                  nop
157:              sub          t4, s9, t2
                  bne          s0, a1, 160f
159:              slli         gp, s5, 13
160:              or           t6, sp, a7
                  or           a7, t3, a0
                  bne          gp, t3, 169f
                  auipc        t2, 492742
                  nop
                  bltu         a2, t6, 185f
                  slt          gp, t3, s1
                  ori          s4, s6, -44
                  srai         t0, s10, 22
169:              lui          t5, 944263
                  slli         s0, a7, 22
                  bltu         a2, sp, 174f
                  bge          a1, ra, 185f
                  beq          s7, s11, 188f
174:              srl          t1, t1, s9
                  ori          sp, a2, 1321
                  andi         a7, a5, -1714
                  lui          s9, 972321
                  blt          zero, a0, 186f
                  xor          a3, s11, t2
                  beq          s3, t6, 199f
                  sltu         sp, t1, a4
                  bltu         t4, sp, 194f
                  bgeu         a4, a7, 202f
                  xori         s9, t2, 1683
185:              bgeu         t3, a0, 193f
186:              beq          s7, s11, 191f
                  slti         t2, t3, 528
188:              xori         a3, s3, -1136
                  andi         a6, s1, 1476
                  or           sp, a6, s6
191:              sra          t3, s2, ra
                  auipc        t6, 445174
193:              sltu         a7, t5, tp
194:              nop
                  bne          s11, s4, 209f
                  ori          s7, s3, -1635
                  andi         sp, t3, 920
                  nop
199:              beq          a7, t3, 204f
                  srai         s3, t5, 12
                  lui          a6, 806054
202:              add          gp, zero, t4
                  nop
204:              srai         s3, sp, 6
                  sll          t5, ra, a0
                  ori          s3, s6, 964
                  and          a0, sp, s9
                  srli         a2, s3, 10
209:              add          a7, s0, t4
                  blt          s11, a7, 216f
                  nop
                  srl          a0, a6, a6
                  beq          s11, a6, 230f
                  beq          s8, sp, 215f
215:              srli         t4, a0, 5
216:              sll          a0, s0, a1
                  sub          s7, tp, ra
                  xor          s11, t2, s9
                  auipc        s6, 912021
                  bgeu         s5, s8, 222f
                  beq          ra, gp, 226f
222:              slli         s9, a1, 27
                  slt          t6, s1, a5
                  nop
                  andi         a5, s8, 160
226:              nop
                  sub          zero, s11, gp
                  ori          s11, s6, -691
                  slti         a0, a1, -168
230:              bltu         ra, s2, 235f
                  addi         a7, ra, 407
                  xori         t1, a7, 1422
                  sra          t0, a0, a6
                  xori         a5, s11, -2001
235:              blt          t3, sp, 252f
                  or           s10, a5, s4
                  sra          s10, t4, t2
                  or           t6, s11, a3
                  addi         a0, s8, -719
                  add          s4, t6, s9
                  bne          a4, s4, 254f
                  beq          a4, a5, 244f
                  xori         t4, s11, -1318
244:              slt          t0, zero, s6
                  bne          s2, s3, 249f
                  bgeu         tp, a4, 248f
                  slli         a0, a0, 15
248:              or           t5, a5, gp
249:              or           t2, t5, a2
                  bltu         s2, t5, 253f
                  blt          t0, s0, 269f
252:              bne          s0, t2, 271f
253:              sra          zero, a3, t0
254:              bge          s7, a7, 267f
                  slti         a5, sp, 1597
                  bltu         a0, t1, 264f
                  nop
                  add          ra, gp, tp
                  srai         t1, a6, 4
                  sra          s8, sp, a4
                  andi         t3, s3, -1512
                  bne          a1, t0, 270f
                  sub          t6, zero, a7
264:              andi         s11, s3, 754
                  sub          t2, gp, a3
                  bltu         s9, s9, 274f
267:              beq          t4, tp, 270f
                  sra          s6, s2, ra
269:              srai         a0, ra, 7
270:              bne          s4, a4, 285f
271:              or           sp, s11, sp
                  bge          s11, s7, 277f
                  srl          t3, s10, a4
274:              bltu         s9, a1, 288f
                  nop
                  auipc        a3, 369855
277:              beq          t3, ra, 292f
                  sltiu        zero, a3, 1596
                  andi         t6, a0, -1237
                  and          s1, s0, ra
                  sra          a5, s1, s11
                  bltu         t5, t6, 294f
                  bltu         s7, s3, 284f
284:              beq          s9, t3, 303f
285:              slt          a3, t6, t0
                  srl          s7, t4, s10
                  sltu         s9, s9, t0
288:              slt          sp, t3, a2
                  bge          s9, t5, 309f
                  sltiu        s1, a0, -1944
                  bge          zero, s10, 296f
292:              sltu         a1, a6, s0
                  addi         gp, s10, -952
294:              bgeu         a6, s10, 300f
                  lui          a1, 862985
296:              sltiu        t3, s5, 1548
                  sll          s9, a0, s0
                  nop
                  sra          a6, tp, s2
300:              sra          s5, s9, t4
                  bgeu         t5, a0, 313f
                  srl          sp, t5, a6
303:              and          a6, s5, s0
                  sub          zero, zero, t4
                  or           a6, a6, tp
                  beq          a3, a7, 325f
                  or           zero, a5, t1
                  andi         sp, t0, -1671
309:              sra          s4, a6, gp
                  nop
                  srli         t2, a0, 19
                  blt          zero, t0, 326f
313:              slli         s9, s4, 18
                  bne          s5, a1, 325f
                  andi         t5, s0, 1588
                  slt          s3, a5, ra
                  bne          ra, a2, 323f
                  srai         s8, a2, 2
                  srli         a6, a6, 18
                  sll          s1, s11, ra
                  sltiu        s8, s7, -1688
                  bgeu         t2, t0, 329f
323:              bne          s8, a4, 342f
                  sub          s11, a3, s7
325:              bltu         gp, s0, 327f
326:              sll          zero, s6, a5
327:              addi         t2, a6, 337
                  srl          t4, t1, s10
329:              sll          a3, t5, s10
                  sll          a1, gp, t1
                  beq          a4, t4, 351f
                  lui          a6, 269452
                  slti         t3, zero, 990
                  slti         s10, s11, -1092
                  srl          s7, a6, t3
                  srl          t2, s1, sp
                  beq          t3, zero, 342f
                  or           t5, a3, s7
                  blt          a3, t2, 342f
                  slli         s11, s2, 20
                  srl          s11, s0, s0
342:              bgeu         s10, t6, 356f
                  sra          s3, s4, a3
                  lui          zero, 357366
                  sll          s6, t0, ra
                  sltu         s10, t0, ra
                  andi         t0, s5, 578
                  bltu         a3, a1, 349f
349:              or           ra, t5, gp
                  auipc        sp, 321720
351:              bge          s7, tp, 353f
                  blt          t2, s9, 362f
353:              beq          a1, zero, 361f
                  sltiu        gp, gp, -1513
                  sra          t5, t0, s3
356:              addi         s5, s5, 666
                  andi         t2, s9, 521
                  ori          s10, s9, -1585
                  srl          s6, s0, sp
                  bge          a6, t1, 362f
361:              and          s0, a3, t3
362:              nop
                  lw           t1, 4(tp)
                  lui          s7, 8130
                  addi         tp, tp, 20
                  auipc        s6, 875911
                  sltiu        a1, s0, -1885
646:              addi x7, x6, 0
646:              jalr x7, x7, 0
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
.word 0x021531aa, 0x536471ac, 0x16eb0466, 0x16c22c5c, 0x4ccc8906, 0x184946c0, 0xc1f89917, 0xaa1691ef
.word 0x00b0cc24, 0x1ae84f17, 0x035b50b7, 0xdd562799, 0x7ce99f91, 0x608df359, 0x91301802, 0x6ecf4010
.word 0x6a5ebb0a, 0xdbe322a2, 0xfdbc9321, 0x7eba96ee, 0xdbb6007e, 0x125ea846, 0xc4f4e2f7, 0xb4de776d
.word 0x1218301f, 0xf0090534, 0x372c4115, 0x99f9b9fa, 0xf530e9f2, 0xff960feb, 0x1547819c, 0x3a508275
.word 0x9dacede7, 0x190920a0, 0xa47ab941, 0xed219eca, 0x92067dd6, 0xac921214, 0xf93971ac, 0x10aeafa7
.word 0xe2c8f255, 0xb6401640, 0xfa367239, 0xf7c1a5ed, 0xf18c2aee, 0x69e91475, 0x6d88f203, 0xc783affb
.word 0x3f7c6fcf, 0xd247353b, 0x91b9e835, 0x8e7e2166, 0x7639ffc5, 0x81299ccb, 0x0f23757d, 0xdb856176
.word 0x8f77583c, 0xb40f132e, 0x333de44b, 0xf0d028e2, 0x0f8ea2a2, 0x3de2f6a5, 0x09455b65, 0x7c1660f3
.word 0x8ff4d852, 0xc10a5b37, 0x1ed93956, 0xba5a14aa, 0x01445756, 0xa01c9f12, 0xc047c54f, 0x975a967e
.word 0xf1a3e502, 0xf9f3285a, 0xe6387a86, 0x1da48370, 0x8b817a2c, 0xc666f056, 0xb3d03478, 0x06ca036f
.word 0xb771830b, 0x3f47dca2, 0xc7993128, 0xaae07a34, 0x1d8ba47f, 0x85293848, 0xc85dca12, 0x55a87173
.word 0xa837f8d6, 0x7d1a9b31, 0x1acd6046, 0x100a5f63, 0x682b302b, 0x124c458c, 0x957a6892, 0xa303f383
.word 0x789911b0, 0x9949f13f, 0xa28e840b, 0x276b8716, 0x481538e3, 0xbc0c5c5d, 0xdb6bbfda, 0x69ab4c9f
.word 0xaa828a64, 0x5b975c44, 0x6cb9742e, 0x154201af, 0xe658182a, 0x8fcb4c0f, 0x7d6e3e75, 0x9aaa689b
.word 0xeee1d1ef, 0x5868b19f, 0x1e24c54d, 0xa201b09a, 0x04e3fee5, 0x1b3d4b48, 0x8d35887d, 0x3bec99b9
.word 0x2a50bc0c, 0xd70faa91, 0xa39226a9, 0xb242d84a, 0x82bed0c7, 0x89502385, 0x17d72a8b, 0x3f818ee7
.word 0x2c5a4cdf, 0xd28d2367, 0xc1c03c3d, 0x28658db7, 0xa80b309d, 0x1442588d, 0x8e05d520, 0x73f6576d
.word 0x07b2447c, 0x54d3d836, 0x3757e9d7, 0xd0008b64, 0xfcc63d7b, 0x7aade65b, 0xaf62e4a6, 0x9abebfe4
.word 0x9d14c8cc, 0x62936743, 0x285c888a, 0x1808e431, 0xd1e373cd, 0x0aaf8152, 0x36720a97, 0xe134d00a
.word 0xd1ab3e67, 0x97d6dcf1, 0x55db9828, 0x052b1245, 0xc5ab6ce7, 0xb64094d6, 0x1795ad6a, 0xe28f5ac9
.word 0xbefd4a71, 0xcbba3dc2, 0xd3611e59, 0x3d512f5e, 0xbe1c2523, 0xeae9332a, 0xcd45b66b, 0x286ca57e
.word 0x8938243f, 0xf2181b7f, 0xa6dbbfa8, 0xcad3123a, 0x0daff011, 0x3f1b0844, 0x0e5d7310, 0x43f29285
.word 0xd7bbfc6e, 0x4255f8b1, 0x2e5a9d14, 0x94abcffd, 0x950fde03, 0xb619cf21, 0xf9e1d9f5, 0x71b62990
.word 0xe16fe05a, 0x2a7cc6ab, 0xa2cdb808, 0xde3f988e, 0xcf71d543, 0x1ce9773b, 0xa61425d4, 0x5f26c806
.word 0x5b935dcb, 0x4aea5201, 0x74db6350, 0x535dc30c, 0x431c6eed, 0xdc7c1958, 0xc174552c, 0x9ff62637
.word 0x2003eff2, 0x643df504, 0xdaf5ca90, 0x4cd0103d, 0xd64f5d1c, 0xbdc85e14, 0x772b2b62, 0x6a1eb9b2
.word 0x04d7c9b6, 0xcb142750, 0xfdbd1aff, 0x3c710919, 0x7a165e61, 0x4d591d10, 0xadc56803, 0x432a9fb5
.word 0xaabe80ce, 0xa42d91a8, 0x57c17521, 0x149b02d2, 0x2618329c, 0x950e1400, 0x64df62a9, 0xbfacf49e
.word 0x176463f6, 0x46d90ce7, 0x72c7055f, 0x5c6b4922, 0xd7fca789, 0x8f965d5e, 0xc16be605, 0x3fe323bf
.word 0x349d1ee4, 0x511e316c, 0x4627459e, 0x90d92be4, 0xf80541ed, 0xd114a297, 0x3b692ce4, 0x07a668d3
.word 0x21dd68db, 0x1a2aaf09, 0xc12dc860, 0xf477554f, 0x33e78031, 0x9bfba565, 0x3bdd206b, 0x76b49bbc
.word 0x3dc53993, 0x1c4aa9e9, 0x8bd7eed8, 0xb5744631, 0xd07a5cd7, 0x30384467, 0x67306128, 0xc87e4f14
.word 0x80dc3686, 0x630c5c2f, 0x501fd992, 0xb9768ef0, 0xab29920c, 0x928b492c, 0x208af8cc, 0xbd433b03
.word 0xbc673480, 0x6264ba43, 0x551e8c26, 0xea21f210, 0xa5a127ac, 0x87ba7599, 0x2c54b72e, 0x7b1c397e
.word 0x85d99ab8, 0xc0f923ff, 0x9466a8cc, 0x75166716, 0x9088bd6d, 0x7f5c0f28, 0xdcd302f7, 0x2dd30033
.word 0x08d895d9, 0xcd34deb4, 0xf22f181e, 0x6f52c0d5, 0x54430be8, 0xd5aa1a91, 0x94ce3fbd, 0x7f298c0a
.word 0x7457db54, 0xc51f838e, 0xeb07adbb, 0x548fd172, 0xfc1b1040, 0x3d8f8d56, 0x21644e46, 0x2ca8c6c2
.word 0x3633b489, 0x426e088d, 0x75575130, 0x1713e8c0, 0xb9b2609a, 0x5728a0f3, 0x08e7429a, 0x2bb7405f
.word 0x55b47903, 0xb8da907a, 0x1858e4b6, 0x15e3c83d, 0xe5b937b1, 0xfc7ea977, 0x2b84ff46, 0x8e0f345f
.word 0xbd45a956, 0x81b86abc, 0x49faddb4, 0x95e95b00, 0x8c3d7981, 0x17322873, 0xfad449fc, 0xf3545231
.word 0xeb723246, 0xd3676830, 0xd662c3a5, 0x49d2aaf9, 0xa501effa, 0xbbeae962, 0x1cccecdd, 0x9982a2d6
.word 0x1c39bcc9, 0x18d52e8e, 0xde8a42d7, 0x243404a9, 0x5e9c6304, 0x7b542bbc, 0x6ff3da61, 0xd7343a95
.word 0xbd198a1b, 0xbe03f17e, 0x2cd9a2b3, 0xd50c6876, 0xbcfe31e1, 0x9fb16715, 0x529caaaf, 0xa3b57b0b
.word 0x73489fb8, 0x5b991acd, 0xf6e755c9, 0xd6a05594, 0xa35278e0, 0x734ea4af, 0x2330db56, 0x27da7c9b
.word 0x70b20ebe, 0x045ebbdf, 0x6652e3cf, 0x76c62ad4, 0xb6380cb1, 0xb2e0f2c4, 0xfbd2dd37, 0x8f543718
.word 0x31b3a881, 0x6f210e6e, 0x08b1f984, 0x660eeb0d, 0xb0eed6db, 0x59a4196c, 0x20f34241, 0x852fae9f
.word 0x082e9731, 0x6f5188f7, 0x9b1681a0, 0xec9c6f8d, 0x48aab6c4, 0x96c0a35a, 0x4a10716a, 0xf2bee766
.word 0x2ae04ad7, 0xd86c72db, 0x148d2b68, 0xb03bf9b6, 0xb39d0262, 0xb221c717, 0x638bbb9d, 0x9ad0e77f
.word 0xe2d72065, 0xdfe73f48, 0x9c5a838c, 0x53b72ce1, 0xaa61531a, 0x561415c3, 0x0bc8b26f, 0xc3181b60
.word 0xe40107f5, 0x5dea83fd, 0x0e17e700, 0x8ce773d9, 0xfa4f0a2a, 0x3c95afa7, 0x0f8ac633, 0xb357c415
.word 0xb6dab402, 0x431c3cb5, 0x8abae050, 0xafb7dfbd, 0x9e62119f, 0x0884fd31, 0x7cd2f864, 0x66e70945
.word 0xdc5a9c24, 0xf0e18839, 0x705cdaf8, 0x206b3b69, 0xf0ea4902, 0x1fd8221f, 0x4699162f, 0x721d4b8c
.word 0x13341a62, 0x076dfdeb, 0x091910cb, 0x78e8bdab, 0x12c71939, 0x01c3877f, 0x2a7bcee0, 0x9d2cb446
.word 0x17e7ee41, 0xa4408c68, 0x01a14970, 0x1eb01632, 0xe27ae0cc, 0x210a6006, 0x2f2f20c4, 0x5ea328e4
.word 0x8d5888e7, 0x39adea32, 0xf13a4091, 0x0cd713bb, 0xf4a5aa78, 0x514fa170, 0xd0f291e4, 0x37f0c618
.word 0x7d02606f, 0x05989b8e, 0xefcceeb3, 0xfe9cc179, 0x32d4bbf2, 0x13c3e56d, 0x8c47d468, 0x2f571039
.word 0xefbab0ca, 0xce3c2fa5, 0x40910538, 0x38bf4e64, 0xf9443ff6, 0x4265a23c, 0x928dc559, 0x78da04e7
.word 0xcfffcf96, 0x74a9e6a6, 0x1ec14ef5, 0xa4865024, 0x71a6f50d, 0xe9d59f79, 0x25e384c3, 0x37cd952a
.word 0x03e9d841, 0x1603e5ae, 0x35f70396, 0x3819623a, 0x947ef0e8, 0x7ad2a460, 0xfb8b72ca, 0x79052ffc
.word 0x642e3177, 0x1c58db34, 0x7b6feffd, 0x11dcdcc4, 0x7c3e6079, 0x909efdd1, 0xbd3611b6, 0xc2ce8755
.word 0xe33b1f33, 0x0af32c94, 0x3d66bd84, 0x0ff9b956, 0x1360126e, 0xcf9c173e, 0xc1d88b01, 0xc6b370b8
.word 0xf19768d1, 0xbd978e0b, 0xfa7d5571, 0x4490f3f8, 0xd9a744a2, 0x6e58a4fe, 0x29cfc19a, 0x346cc308
.word 0xbe63fb86, 0xa56113ee, 0x21dd8f7c, 0xea839ba0
.section .region_1,"aw",@progbits;
region_1:
.word 0x92bfa5d7, 0xd1a40d7d, 0x5a5fba1b, 0x2fa6842e, 0x81ab4d92, 0x2613b001, 0x35371546, 0xd25be018
.word 0xd0497bb4, 0x74c49034, 0xdb98caff, 0xbd9580d8, 0x9b387c76, 0xe69d2fe0, 0x55b1ad4d, 0x45eb3374
.word 0x714c0d3c, 0x84f14899, 0xc9b64d47, 0xa8565845, 0x32c5b8a8, 0x4b64d29b, 0x72051558, 0x9ff88076
.word 0x2b09623a, 0x44fff7a6, 0x5314e430, 0x66b5420b, 0xc9f1fed6, 0xc95592e4, 0x3b6b3608, 0x12fd31da
.word 0x2cf1071c, 0xe2f1234a, 0x844df236, 0xa326c7d8, 0x9b898670, 0xb3c0173a, 0x227738fb, 0xa5d62134
.word 0x4f38405e, 0x50c62ada, 0x2d5e85fd, 0x5dc9d245, 0x1ee275e7, 0x3badeb76, 0x490acc35, 0x5ba1f47b
.word 0x003518b1, 0x55516e4c, 0x56ca5f4e, 0xa87c4263, 0x046de994, 0x99246f7a, 0x3ba1b45b, 0x93f0cb7e
.word 0x176193ef, 0xcc9b4e3b, 0x29616667, 0x543df146, 0xbc4b2699, 0xafd92f73, 0xa3df3564, 0x293715df
.word 0x7e8401e1, 0xc5aa596a, 0xa36eeb65, 0x6d1330be, 0x2027b6a1, 0x26cb2fe3, 0xee4d15d1, 0x87c288eb
.word 0xb84c244c, 0xcb22126e, 0xd61551a0, 0xf1ad8c5a, 0xbf97a803, 0xdfba7fa5, 0x65d79865, 0xa513a709
.word 0x77dedf17, 0x4e405920, 0xffb71362, 0x77fd0020, 0x9bfb0f7b, 0x33737d89, 0x807e811c, 0xc4d3a2aa
.word 0x17ba47e8, 0xe723aeb3, 0xcf67bb58, 0xce876790, 0xcf33fbf1, 0x6acf373e, 0x74300a30, 0xa83d4d8b
.word 0x2ded7a64, 0xebb636cd, 0x475ab42c, 0xcade4f55, 0x5a6318fd, 0x9aea57b3, 0x0e45e620, 0xd63c1e8c
.word 0xd3fa3d13, 0x437b5e0b, 0x650385b2, 0xcc8e6741, 0xd62e5f7e, 0x93927e51, 0x7afed0a3, 0x8c36141a
.word 0x3be52681, 0x9760b7f7, 0x973ea147, 0x871d39f5, 0x814b0872, 0x6642ec09, 0xb1c007bf, 0x67c9ceae
.word 0x5bdcd898, 0x792a2fb1, 0x53f09076, 0x1f9b6093, 0xeb14fefe, 0x38ad390e, 0x568e4bec, 0xa3a425e4
.word 0x0f80daf4, 0x0b3569c4, 0x4b3c2769, 0xe76c8c8b, 0x5e409e0e, 0x5b3b0dcb, 0x873cbd89, 0x45bdeffb
.word 0x9b060685, 0x8601fe70, 0x71cf8dc7, 0x4b285d9f, 0x261474c0, 0x17533487, 0xc79679f0, 0x9da90473
.word 0xc5f59307, 0x88bd15dc, 0x130a6e3b, 0xecc72f46, 0xf6f0b0df, 0x4170de48, 0xa38823c8, 0xac7ac4ae
.word 0x2835c11d, 0x2c15263a, 0xa31aff93, 0x5d80003e, 0x8c9c2a6d, 0x7f51792a, 0x9b4216a3, 0x61670212
.word 0x8ca792a7, 0x1c4eceee, 0xc73dfee7, 0x98d61804, 0x77d75aa0, 0xfe3452ff, 0xd64ad86c, 0x5b473948
.word 0xee5c9a11, 0x11a8c1fc, 0xed568080, 0xd515dde8, 0xcc346ffd, 0x81bac22f, 0x142d204d, 0xde263a52
.word 0xbeb20614, 0xb5cd8229, 0xc0bb7e2b, 0x1f277a58, 0xe7dda7af, 0xddd09483, 0x020edab9, 0x52fec7de
.word 0x83c0844e, 0xe91ec958, 0x124e9e40, 0xa851404f, 0xe0cec132, 0xf8a01896, 0x55ff6b65, 0x84a8e8f5
.word 0x9616cb6d, 0x33eb24ae, 0x4470d104, 0x77148c8d, 0x5ecc499d, 0xe1370430, 0x9206a99c, 0x98512642
.word 0x2158b62c, 0x044cb8eb, 0xe61b9c73, 0x8f1148a1, 0x2d185aeb, 0x9978eea3, 0xa7eec7d9, 0x3206f11b
.word 0xd30d0461, 0x9fc3a620, 0x7a62e29a, 0x56729759, 0xc6a20a22, 0x899b2cd7, 0x194529ef, 0x0d2f0c01
.word 0x7697b358, 0x54686497, 0x6dac84ef, 0xa1a80d2f, 0xdf09f5ef, 0x0040b9e9, 0x799e3880, 0xfd8f3cf7
.word 0xbed54842, 0xa3a6cdee, 0x6dee2af1, 0x442e7936, 0xec8df043, 0xeb0e066d, 0x8519ff12, 0xb09cc52d
.word 0x45a3bc92, 0x7387ae76, 0x219f606c, 0x243c0491, 0x48310e70, 0x8aad7ff5, 0x26c425e1, 0x9a43321f
.word 0xac9ba116, 0x2835f15b, 0xcc4d661d, 0x0ec01235, 0x4f28a1ff, 0x64f6bdd9, 0xfb19405a, 0x22e3a959
.word 0xce7c500c, 0x4b62dffb, 0xe2c7e4f9, 0xf9c8895a, 0xdf7dab40, 0xba37a076, 0x5b012f7a, 0xaac35587
.word 0xec67a862, 0xd47d33ef, 0xae868dc6, 0x5f59a6cc, 0xb9b540ba, 0xd63a40e5, 0x46fd4341, 0x9867aa11
.word 0xe8693242, 0x324343a6, 0x35cfaa6d, 0xc88f1727, 0xc79ded85, 0xf65944f9, 0x94bae658, 0x85df390f
.word 0x3ab3644b, 0xefb01a8d, 0x11c0f6c0, 0x71831c39, 0xd3a8f021, 0x21f5689b, 0x2a95109a, 0x8d313ae4
.word 0x702cb1b8, 0x326ee66f, 0xbd8d08ac, 0x5d460937, 0x4005af77, 0x3ed18eb1, 0x3f0e9554, 0x0d673457
.word 0xb5892e1c, 0x14df18cb, 0xbdd9a736, 0x1bf65c18, 0xabc041f6, 0xda7f08a5, 0x2ef2df22, 0xa5e7356d
.word 0x3883c404, 0x214ce624, 0xb0b2bdf0, 0x90fa7e4c, 0x18fc3e67, 0x5e740025, 0x42bcb6bd, 0x0b08da8b
.word 0x15f81e33, 0x5f1f3e54, 0x659d4324, 0x00d14db0, 0xb0137f56, 0xb4100fd4, 0x95612467, 0x1fc0649e
.word 0x1cf49331, 0xf2911765, 0xc321dfd7, 0xf45ddd56, 0x346aa44c, 0x5237cce4, 0xc7e5ef19, 0x4469fd6e
.word 0xcc32e6b5, 0x85b9cb26, 0x7798ef94, 0xb12c3946, 0xfa0ce1e3, 0x7aaa25ca, 0x4d6c3913, 0x194dada6
.word 0x751a0eb8, 0xe2e10c32, 0x1553318b, 0x4a6aabb9, 0x0c27c5d4, 0x1338f06a, 0xfec0db5d, 0xeaccf3a9
.word 0x700ae9f1, 0xd07a242b, 0x715374fd, 0x04b54c74, 0x7d196a6d, 0x3c47b5fa, 0xa85929bd, 0xd53f5ea9
.word 0x859547dd, 0x718fce86, 0x7066a202, 0x9bc2f960, 0xb1923013, 0x56d4ebef, 0x7607db59, 0x1613ea28
.word 0x52adc288, 0x3f425645, 0x2d7ddccb, 0x15a31fac, 0xc2bfb091, 0x0c9de7bd, 0xfdd241e5, 0xe0f33e9e
.word 0x5e21539a, 0x3997e776, 0x89aa63fe, 0xc2617842, 0xb7fb7d0d, 0x1861b069, 0xfa769e2d, 0x943aaeed
.word 0x62e752c8, 0x719d4d11, 0x5ab153ff, 0xb24d0b09, 0xc6e78a63, 0xe80adb85, 0x2f39b2d2, 0xbb9208d7
.word 0xaae968b2, 0x85a990b7, 0x87e63063, 0xd2d2341b, 0x545cccd8, 0x5ac5e6ea, 0xfdd3c18f, 0xa6af8f7f
.word 0x53720215, 0x537a924e, 0x35e98d78, 0xff615f97, 0xb4ae2b5d, 0xd75664fc, 0x58baff0c, 0x2d108fd4
.word 0xcd6f0ddc, 0x78ab9c84, 0x6caf4db6, 0x3af38c5f, 0x350cc250, 0xb6085104, 0xc2148e1c, 0xf1295adb
.word 0x0581ff0c, 0x9213ca1a, 0x7ea96b0e, 0x4535bc98, 0x353c83e8, 0x1a35c594, 0x17f27923, 0x008627d6
.word 0x7be99479, 0xbcaa5aa6, 0xe1725b21, 0xfae7ce26, 0xe1121b25, 0x4cacafcb, 0x70da50d2, 0x16d24b53
.word 0x9a0221a9, 0x29013573, 0x3dc67415, 0x5872df25, 0x4215ddb2, 0xc782a137, 0x9dc895c8, 0x424f17b0
.word 0xa18f8eda, 0xf8c5b6ba, 0xeeb19a71, 0x22e0b52a, 0x24fc59a6, 0xb5a07977, 0x973db63b, 0xa1f8f9e9
.word 0x7ba6e7eb, 0xc46d618c, 0xfe863364, 0x4a1e8b2b, 0xc7f247d2, 0x450025b6, 0xc5d267cf, 0x34727910
.word 0xd30fb668, 0xa0b0c626, 0xbf991595, 0x4c1a6d5c, 0x8c8d537d, 0x756734e2, 0x49564be3, 0x6d8d2c38
.word 0xf84dbe5c, 0x15a2551b, 0xbd1302fc, 0x134e63c7, 0x00d4d4db, 0x3228c189, 0x75cc0c2a, 0x69738040
.word 0xfd04c70f, 0xdffee3f3, 0x03666337, 0xe83290e5, 0x7498c1d3, 0xdf57e5e0, 0x98ddc767, 0xca4557d5
.word 0x9836cc7a, 0x99d9c8fc, 0x91599713, 0x439e3827, 0x77d6dd29, 0xe94fd759, 0x6d2a3e01, 0xb8807b16
.word 0x41c846f2, 0x1b40ad19, 0xa28dc08b, 0xb31d0c30, 0xff90fb7d, 0x637c950c, 0x5b2ae489, 0x5da8ac46
.word 0x809b280b, 0x7f51687a, 0x2fc5a78c, 0x7062b9ba, 0x4d109a2f, 0x31014857, 0x650b3c0f, 0x6b6f7a64
.word 0x903c1956, 0x0702ffce, 0x28bfe809, 0x88497673, 0x86b894f3, 0x8b043763, 0x7de9be5d, 0x979deb9a
.word 0x4b7928ce, 0xa6cdbcfa, 0x4460a79b, 0x60c53526
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x18, x4, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x13, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x13, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x13, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x13, x10, ecall_handler
                  li x10, 0x1
                  beq x13, x10, instr_fault_handler
                  li x10, 0x5
                  beq x13, x10, load_fault_handler
                  li x10, 0x7
                  beq x13, x10, store_fault_handler
                  li x10, 0xc
                  beq x13, x10, pt_fault_handler
                  li x10, 0xd
                  beq x13, x10, pt_fault_handler
                  li x10, 0xf
                  beq x13, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x4, x18, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
