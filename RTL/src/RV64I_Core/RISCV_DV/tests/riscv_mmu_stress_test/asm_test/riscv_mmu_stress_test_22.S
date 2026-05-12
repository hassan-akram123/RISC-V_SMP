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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
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
                  li x0, 0xa2b7483d
                  li x1, 0xd72bd55c
                  li x2, 0xfce1e4b0
                  li x3, 0x56d2b248
                  li x4, 0x0
                  li x5, 0xf71b61b4
                  li x6, 0x1
                  li x7, 0x0
                  li x8, 0x4cc70f30
                  li x10, 0x5
                  li x11, 0x1
                  li x12, 0x80000000
                  li x13, 0xbf9e79c5
                  li x14, 0xf5b150e5
                  li x15, 0xfe262af7
                  li x16, 0x72ec8978
                  li x17, 0xf3e859ce
                  li x18, 0x8
                  li x19, 0x80000000
                  li x20, 0x2
                  li x21, 0xf25a0651
                  li x22, 0xf8e03277
                  li x23, 0x80000000
                  li x24, 0xf9982bea
                  li x25, 0x0
                  li x26, 0xc
                  li x27, 0x6
                  li x28, 0x2
                  li x29, 0xf35d96cc
                  li x30, 0x0
                  la x9, user_stack_end
main:             la           a5, region_0+180 #start riscv_load_store_hazard_instr_stream_0
                  lb           s0, 5(a5)
                  lb           a0, 5(a5)
                  sb           t5, -41(a5)
                  sltiu        s5, t3, -967
                  lbu          gp, -37(a5)
                  lb           s11, -37(a5)
                  lb           a2, 46(a5)
                  auipc        s8, 143471
                  sb           gp, 55(a5)
                  lb           s7, 55(a5)
                  lb           a2, 55(a5)
                  sb           ra, -36(a5)
                  lb           t4, -35(a5)
                  lb           s9, -35(a5)
                  lh           s3, -36(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           a5, region_0+1684 #start load_store_instr_stream_4
                  la           s9, region_0+1507 #start load_store_instr_stream_3
                  lbu          sp, -865(a5)
                  la           s0, region_0+1006 #start load_store_instr_stream_2
                  la           t0, region_0+1656 #start load_store_instr_stream_0
                  lbu          s5, -3(t0)
                  sb           a2, -387(a5)
                  lbu          ra, 7(s0)
                  lh           a4, -1017(s9)
                  la           s3, region_0+517 #start load_store_instr_stream_1
                  sb           t4, -3(s0)
                  lbu          t1, -1049(s9)
                  lbu          gp, 10(t0)
                  sb           sp, -155(s3)
                  lbu          s6, 1(s0)
                  sb           t6, -764(s9)
                  lb           s5, -216(s3)
                  lbu          a7, -9(s0)
                  sh           t5, -8(t0)
                  lbu          a6, -240(s3)
                  lb           a3, 1(s0)
                  lb           ra, 9(t0)
                  sb           gp, 1(t0)
                  lh           a3, -518(a5)
                  lhu          s7, 113(s3)
                  sh           s1, 65(s3)
                  sb           s0, -9(t0)
                  sh           s7, -540(a5)
                  lhu          ra, -12(s0)
                  lh           a3, -398(a5) #end load_store_instr_stream_4
                  lh           sp, 6(s0)
                  lbu          a0, 10(s0)
                  lb           s11, 295(s9)
                  sb           t1, -1210(s9)
                  lh           a3, -16(t0)
                  sb           a6, -16(s0) #end load_store_instr_stream_2
                  lb           a3, -157(s3) #end load_store_instr_stream_1
                  sb           s6, -498(s9)
                  lbu          zero, -7(t0)
                  sb           s0, -1021(s9) #end load_store_instr_stream_3
                  lb           a7, 5(t0)
                  lb           a3, -7(t0) #end load_store_instr_stream_0
                  la           s4, region_0+322 #start riscv_load_store_rand_instr_stream_0
                  lw           a7, 1318(s4)
                  lbu          gp, 767(s4)
                  sltu         s7, s1, t4
                  sb           s6, 614(s4)
                  lbu          s7, 17(s4)
                  sub          t3, a6, t6
                  srli         t1, s2, 11
                  sb           s4, 680(s4)
                  sb           t6, 620(s4)
                  sb           s11, 1281(s4)
                  sra          t1, s7, t4
                  slt          tp, a6, t6
                  sb           sp, 405(s4)
                  sb           t2, 750(s4)
                  sltiu        s9, t1, -69
                  xori         s8, a3, -978
                  lb           s2, 429(s4)
                  lbu          a0, -103(s4)
                  sh           s2, 1644(s4)
                  xor          s2, s7, s4
                  lh           a1, 244(s4)
                  auipc        ra, 346306
                  addi         t0, s8, 747
                  sb           s3, 371(s4)
                  srli         s6, s8, 6
                  ori          a3, a7, -715
                  addi         a0, s10, 510
                  lbu          a3, 1496(s4)
                  lh           s10, 1226(s4)
                  sltu         s9, s2, a0
                  sra          s3, t5, t6
                  sb           s8, -209(s4)
                  slli         s9, a2, 14
                  lh           a5, 1256(s4)
                  lbu          t0, 888(s4)
                  lbu          s3, 476(s4)
                  lb           a1, -279(s4)
                  sw           a7, 1394(s4)
                  lb           t0, 849(s4)
                  sb           a5, 1033(s4) #end riscv_load_store_rand_instr_stream_0
                  addi         s4, s7, -820
                  xor          a1, t1, s0
                  lui          s5, 274293
                  beq          s10, a0, 8f
                  addi         s2, s8, 574
                  ori          a4, s7, 1039
                  addi         t0, t5, -1169
                  addi         s6, t3, -440
8:                slt          s0, a4, a3
                  slli         s10, s8, 22
                  andi         s11, t3, 956
                  srli         s5, s2, 28
                  sll          ra, s10, t0
                  sltiu        a2, ra, -811
                  srl          s10, a4, a0
                  sub          s8, a1, s6
                  sltu         a4, s9, s4
                  beq          gp, t3, 19f
                  sub          a1, a7, s8
19:               andi         s3, s0, -1138
                  nop
                  xori         t3, a0, 395
                  sltu         a3, s11, t4
                  bge          a1, a5, 37f
                  or           a4, s10, a3
                  andi         a4, a0, 505
                  ori          a5, s4, -470
                  ori          s11, s9, -1644
                  nop
                  and          s4, tp, s7
                  srai         s9, s11, 18
                  srli         t5, s3, 8
                  beq          t1, s9, 43f
                  sra          a1, t5, a7
                  bgeu         s11, a5, 49f
                  xori         s11, s11, 1673
                  sll          t0, s5, s7
37:               srl          a5, s10, t5
                  sltiu        s6, s9, -164
                  ori          a2, sp, 1312
                  blt          tp, a5, 45f
                  sltiu        s10, s2, 1321
                  slli         a3, a3, 12
43:               srli         sp, a2, 15
                  sll          s11, s6, t5
45:               beq          s2, t2, 49f
                  sub          a1, a0, s11
                  lui          zero, 868648
                  srai         a2, s3, 20
49:               slti         t3, gp, 695
                  slti         t5, t0, -1399
                  xori         a7, a1, 1400
                  auipc        sp, 1029534
                  andi         zero, a1, 1263
                  lui          s2, 299526
                  addi         a3, t6, -1403
                  auipc        s4, 199818
                  blt          t2, a3, 72f
                  addi         s10, a2, -1979
                  bltu         s4, s2, 65f
                  sll          t4, s8, sp
                  xori         a7, s1, 1106
                  ori          a1, t5, 996
                  srai         a2, t2, 28
                  sll          s7, s7, t3
65:               srli         a0, t5, 8
                  sra          s9, t0, s8
                  xor          a1, a6, s0
                  bge          a7, s6, 85f
                  sltiu        zero, tp, -606
                  sll          gp, a3, s2
                  slt          s0, s5, s10
72:               bge          s6, a1, 75f
                  srl          t5, s0, t0
                  bgeu         s10, a0, 86f
75:               xori         s0, s2, 575
                  slli         s4, gp, 26
                  slti         s3, a7, -516
                  nop
                  bgeu         a3, s7, 91f
                  bltu         gp, t3, 97f
                  slli         s9, t2, 25
                  bne          a4, t4, 95f
                  bgeu         s7, s3, 103f
                  sltiu        s10, s3, 1073
85:               add          s0, t2, t5
86:               sltiu        s9, tp, 1167
                  sra          s11, zero, a3
                  slli         s11, a2, 8
                  beq          s3, zero, 107f
                  bge          a3, s6, 91f
91:               slt          s6, a5, s2
                  srl          t3, a2, t6
                  bltu         a1, t5, 98f
                  bge          t0, t4, 99f
95:               bgeu         gp, tp, 115f
                  sltiu        s6, s11, -90
97:               srl          a6, a5, s9
98:               sll          s8, t2, a1
99:               sra          s2, s11, s5
                  srai         s2, t2, 6
                  nop
                  sll          s8, s3, a6
103:              bne          t1, t0, 104f
104:              and          s9, s3, a0
                  sll          a1, sp, s7
                  sra          s7, s11, a4
107:              blt          t3, s5, 124f
                  sltiu        t0, t3, 293
                  srli         sp, s9, 22
                  and          s11, a4, a7
                  bltu         t5, s6, 125f
                  or           a2, t0, t3
                  srl          s6, sp, s6
                  sra          t1, a6, t6
115:              or           tp, a0, s0
                  bne          a2, a3, 134f
                  bgeu         a4, a1, 121f
                  addi         a4, a3, 1469
                  sra          s10, s1, a5
                  slt          a7, s10, t6
121:              ori          sp, a7, -1581
                  blt          s9, t0, 130f
                  sltu         a0, t1, sp
124:              addi         s0, a0, -734
125:              ori          s5, ra, -422
                  slt          ra, a6, a6
                  bgeu         t4, s8, 147f
                  slli         a3, s1, 15
                  la           a5, sub_1
                  addi         a5, a5, 352
                  srli         tp, gp, 28
                  bge          t6, s1, main_j1 #branch to jump instr
                  lui          a4, 439897
                  ori          ra, t4, 952
                  sltu         a1, t5, t5
                  or           zero, a1, zero
main_j1:          jalr         s8, a5, -352 #jump main -> sub_1
                  lui          s10, 295934
130:              lui          s8, 762306
                  sltu         t5, s3, sp
                  andi         s7, s0, -456
                  or           tp, a3, a4
134:              srli         a5, a3, 26
                  add          a5, a0, zero
                  blt          a1, t0, 155f
                  auipc        sp, 474739
                  bge          s8, a4, 148f
                  ori          t3, t5, 254
                  blt          gp, t6, 159f
                  sra          gp, t4, a3
                  and          tp, zero, tp
                  sub          t0, s0, a6
                  slli         t4, tp, 2
                  addi         tp, s11, 1767
                  xori         a5, t0, -1505
147:              beq          gp, s0, 151f
148:              slti         a2, s5, 1691
                  bltu         s0, a7, 167f
                  bgeu         s8, s2, 155f
151:              bgeu         s0, gp, 156f
                  sltiu        s4, s1, 358
                  bltu         a5, s9, 166f
                  bltu         t5, s8, 157f
155:              nop
156:              bgeu         t1, a0, 174f
157:              and          t5, s5, t1
                  andi         s5, t5, -1351
159:              sub          a1, s7, t2
                  xori         t4, a6, -324
                  andi         s8, a4, 651
                  nop
                  lui          ra, 783694
                  bne          a5, a4, 174f
                  ori          s11, sp, 449
166:              sltu         ra, a5, a5
167:              lui          t1, 358114
                  srli         t4, s4, 29
                  sub          s10, a0, s3
                  lui          a2, 782253
                  sll          a6, a2, s11
                  srai         a1, s1, 3
                  beq          t2, s6, 174f
174:              slli         a6, ra, 16
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            andi         a1, t1, 1988
                  slt          a0, s8, a7
                  bltu         t6, gp, sub_2_stack_p
                  ori          a4, sp, -504
sub_2_stack_p:    addi         s1, s1, -28
                  auipc        s10, 355916
                  xori         t1, s4, 1647
                  sra          t1, s2, s3
                  sw           s8, 4(s1)
                  sra          a2, a0, s6
                  srl          t3, a2, t1
                  la           s2, region_0+1391 #start riscv_load_store_hazard_instr_stream_2
                  lb           a3, 11(s2)
                  sh           s8, 11(s2)
                  sra          t5, s6, t5
                  lb           t4, 11(s2)
                  lhu          s8, 11(s2)
                  lhu          s5, 11(s2)
                  add          a2, tp, a2
                  lbu          t1, -16(s2)
                  add          sp, a6, t2
                  lb           s7, -16(s2)
                  sb           gp, -16(s2)
                  lb           s4, 11(s2)
                  sb           s9, 11(s2)
                  lb           s0, 11(s2)
                  lhu          a0, 11(s2)
                  sltiu        ra, a0, -1519
                  or           s10, s7, a3
                  sb           zero, 11(s2)
                  lb           zero, 11(s2)
                  sh           s6, -7(s2) #end riscv_load_store_hazard_instr_stream_2
                  la           gp, region_1+1012 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s6, -14(gp)
                  sh           a6, -14(gp)
                  lhu          a1, -14(gp)
                  lb           t0, -3(gp)
                  lbu          sp, 11(gp)
                  lbu          t0, -2(gp)
                  lui          s8, 677200
                  lb           a7, -2(gp)
                  sltu         ra, a5, t4
                  lh           s6, 8(gp)
                  lb           a0, -45(gp)
                  lbu          s5, -3(gp)
                  nop
                  ori          a2, s5, 515
                  sb           zero, -3(gp)
                  xor          a5, a3, gp
                  xori         t1, s6, 441
                  lbu          s8, -3(gp)
                  lb           sp, -3(gp)
                  and          a0, t6, s9
                  sw           s2, 32(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           a5, region_0+566 #start riscv_load_store_rand_instr_stream_2
                  lb           s4, 166(a5)
                  lb           tp, 63(a5)
                  add          s8, tp, a6
                  sb           a3, -49(a5)
                  sh           s3, 232(a5)
                  sb           ra, -46(a5)
                  nop
                  lb           s6, -25(a5)
                  addi         s3, s0, -545
                  sub          s6, a0, zero
                  auipc        a6, 661910
                  lb           a1, 205(a5)
                  lbu          s5, -145(a5)
                  lhu          s6, 156(a5)
                  srl          t1, a3, s9
                  sb           tp, -164(a5)
                  sltu         t1, s10, a5
                  lhu          ra, -202(a5)
                  lb           a7, -181(a5)
                  lbu          tp, -183(a5)
                  lb           sp, 183(a5)
                  lui          gp, 267948
                  lbu          t1, 88(a5)
                  lb           s9, -193(a5)
                  lbu          s3, -221(a5)
                  lh           t5, 222(a5)
                  lhu          s3, -102(a5)
                  lb           a6, -48(a5)
                  lbu          a3, -55(a5)
                  lbu          ra, -7(a5)
                  lhu          s6, 164(a5)
                  lh           s8, 64(a5)
                  lbu          a2, 15(a5)
                  sltu         t0, t2, s8
                  lbu          s2, -49(a5)
                  slt          s8, t3, t4
                  lhu          s11, 124(a5)
                  lw           a4, -22(a5) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_0+1381 #start riscv_load_store_rand_instr_stream_0
                  srai         t5, s5, 30
                  andi         t4, a6, 1559
                  nop
                  srl          s5, ra, t5
                  lb           a0, -32(a5)
                  xor          s9, ra, s0
                  and          t4, s2, a6
                  lhu          t5, -61(a5)
                  xori         t0, t0, -1642
                  lbu          s7, -57(a5)
                  lh           a6, -25(a5)
                  ori          tp, zero, -545
                  andi         s0, s7, -1071
                  sra          s9, a2, s5
                  sll          s5, s6, t4
                  lui          t0, 80275
                  sb           t5, -18(a5)
                  lh           a0, 23(a5)
                  srai         ra, s1, 4
                  or           s0, a6, s11
                  lhu          a2, 27(a5)
                  sltiu        gp, t2, 1598
                  addi         s11, s11, 1358
                  slt          s7, s2, s11
                  sb           a0, -39(a5)
                  lw           s0, -41(a5)
                  andi         a1, s10, -1049
                  addi         s8, s4, 402
                  andi         s2, s6, -633
                  sltiu        zero, a2, -681
                  lbu          s2, 38(a5)
                  slti         a2, s8, 1128
                  lw           s8, 55(a5) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_0+1378 #start load_store_instr_stream_1
                  lbu          s10, 5(t0)
                  la           tp, region_0+1064 #start load_store_instr_stream_0
                  sb           sp, 55(t0)
                  lh           a0, 38(tp)
                  sb           s10, 12(tp)
                  lhu          sp, 44(t0)
                  lb           s7, -61(tp)
                  lbu          t5, -60(t0)
                  lh           t5, -2(t0)
                  sb           s4, 51(t0)
                  lbu          t3, -38(tp)
                  lbu          a2, 39(t0)
                  lb           a2, 21(t0) #end load_store_instr_stream_1
                  sb           a2, 43(tp) #end load_store_instr_stream_0
                  la           s4, region_1+1283 #start load_store_instr_stream_2
                  la           a7, region_1+1431 #start load_store_instr_stream_1
                  sb           a4, -758(s4)
                  sb           a7, -731(a7)
                  la           s3, region_1+1581 #start load_store_instr_stream_0
                  lbu          a4, 221(s3)
                  lh           a3, -1337(a7)
                  la           a1, region_1+1785 #start load_store_instr_stream_3
                  sw           s7, -1161(s3)
                  lb           s6, -307(s3)
                  sb           tp, -428(s4)
                  lh           t3, -683(a7)
                  lh           ra, -329(s4)
                  sb           s2, -8(a1)
                  lbu          t4, -330(a7)
                  sw           zero, -1249(s3)
                  lb           gp, 4(a1)
                  lh           ra, 5(a1)
                  sb           zero, 48(s4)
                  sb           a6, -778(s3)
                  lhu          a3, -7(a1)
                  lb           s11, -14(a1) #end load_store_instr_stream_3
                  sb           t4, -206(s4)
                  sb           s10, 572(s4)
                  lhu          t3, -523(s3)
                  lb           a5, 94(a7)
                  lh           t4, -873(s4)
                  lh           tp, -379(s4) #end load_store_instr_stream_2
                  lbu          sp, 92(s3)
                  lhu          a0, -217(a7) #end load_store_instr_stream_1
                  lbu          s10, 89(s3) #end load_store_instr_stream_0
                  la           s3, region_0+1806 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s8, -10(s3)
                  sb           a1, 9(s3)
                  lbu          a5, 2(s3)
                  nop
                  sb           a1, -1(s3)
                  sub          a0, a2, s11
                  lb           a1, 6(s3)
                  lh           a4, 6(s3)
                  lb           t4, 6(s3)
                  lbu          a7, -7(s3)
                  lh           s4, 0(s3)
                  sh           sp, 0(s3)
                  lbu          t0, 0(s3)
                  lh           s8, 0(s3)
                  sltu         a1, a2, gp
                  lbu          s2, 8(s3)
                  sb           gp, 8(s3)
                  lb           a1, 8(s3)
                  lbu          s0, -1(s3)
                  ori          s5, tp, -1716
                  sw           a1, -10(s3)
                  sh           s7, 2(s3)
                  sb           sp, 2(s3)
                  lbu          a1, 2(s3) #end riscv_load_store_hazard_instr_stream_1
                  la           a7, region_0+586 #start riscv_load_store_rand_instr_stream_1
                  xori         s5, a3, -284
                  auipc        t3, 157859
                  addi         s5, s5, -79
                  nop
                  slt          t5, t1, ra
                  auipc        a4, 893412
                  sb           gp, -12(a7)
                  lb           a4, -17(a7)
                  sb           zero, -35(a7)
                  sb           s3, -33(a7)
                  ori          s8, t0, -1867
                  sb           t3, 45(a7)
                  lb           t4, -7(a7)
                  srai         s7, t4, 10
                  lb           ra, -39(a7)
                  lh           sp, -40(a7)
                  xori         s3, tp, 1497
                  sll          s2, a5, a0
                  lbu          s7, 32(a7)
                  nop
                  andi         a4, a5, 648
                  add          s8, a2, a6
                  lbu          s5, -24(a7)
                  lb           s9, 40(a7)
                  lbu          s0, -62(a7)
                  lbu          s7, 27(a7) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+1326 #start load_store_instr_stream_1
                  la           a7, region_1+149 #start load_store_instr_stream_0
                  sb           a6, -3(s5)
                  sb           s6, 33(s5)
                  la           s4, region_1+1874 #start load_store_instr_stream_2
                  lb           a3, 27(s5)
                  sb           t3, 41(s4)
                  sb           a5, 81(s4)
                  sb           s11, -10(a7)
                  sb           s4, -157(s4)
                  la           a2, region_1+700 #start load_store_instr_stream_3
                  sb           t5, 1075(a2)
                  lbu          s2, 53(s4)
                  lbu          a5, 17(s5)
                  lhu          s0, -60(s4)
                  lw           s11, -145(a7)
                  lbu          s7, 585(a2)
                  lb           t1, -29(s5)
                  sb           s4, 241(a7)
                  lb           sp, -99(s4) #end load_store_instr_stream_2
                  lh           t3, -46(s5)
                  sw           t2, 54(s5) #end load_store_instr_stream_1
                  sb           t2, 120(a7)
                  lb           zero, -433(a2)
                  sb           s10, 608(a2)
                  lb           t3, -70(a2)
                  lbu          s7, -99(a7)
                  sb           s1, -95(a2) #end load_store_instr_stream_3
                  lb           s9, -83(a7) #end load_store_instr_stream_0
                  srl          s0, tp, a7
                  addi         s7, s9, -1446
                  lui          zero, 798784
                  or           t3, tp, s7
                  slt          t1, s4, t2
                  bne          s6, gp, 19f
                  slt          s6, s4, s0
                  beq          s9, t3, 9f
                  bge          a6, s8, 19f
9:                xor          s2, s6, sp
                  bge          a1, t3, 20f
                  slli         t3, s3, 22
                  xori         gp, a0, -1809
                  beq          a5, t1, 17f
                  slli         t0, t2, 21
                  xor          s8, s7, t0
                  beq          t1, ra, 22f
17:               andi         s0, a6, -1095
                  and          s10, t6, s7
19:               sra          a6, s8, t5
20:               bltu         t3, a2, 26f
                  srl          s3, t5, a2
22:               bne          s9, a7, 29f
                  sub          s9, zero, s9
                  slti         s10, ra, 393
                  sll          t0, a7, t6
26:               slti         s7, gp, -57
                  slt          s7, t1, a3
                  xori         s7, a3, -677
29:               xor          s6, t0, s4
                  bgeu         a0, s4, 33f
                  and          t4, a4, a5
                  xor          t0, s4, s6
33:               and          s5, s7, s8
                  xori         sp, t0, 195
                  sub          s5, a5, s11
                  blt          s5, s10, 55f
                  bgeu         s8, a2, 40f
                  andi         zero, s11, -756
                  bltu         s6, s5, 49f
40:               andi         s0, a0, -1789
                  slti         s3, s2, 1485
                  srai         s2, s9, 11
                  srl          s10, t1, t5
                  sra          a6, zero, s2
                  xori         a6, s8, -2013
                  sltu         a0, zero, a2
                  bge          a1, t4, 54f
                  and          t5, a2, a4
49:               srai         a0, s0, 5
                  srai         gp, gp, 7
                  srai         a5, s4, 27
                  sltu         ra, a4, s7
                  srli         s9, t5, 4
54:               srl          t0, s10, t4
55:               srl          s7, s7, t0
                  slt          zero, s1, s1
                  bltu         s8, a3, 58f
58:               add          s6, s11, gp
                  srl          a6, t0, s7
                  sltu         t3, s4, a4
                  srl          a7, t5, t0
                  bne          a6, a7, 63f
63:               sll          sp, t1, tp
                  auipc        a6, 295749
                  blt          s4, a1, 67f
                  and          ra, a1, s0
67:               bne          s2, a0, 86f
                  srai         a1, s9, 1
                  sra          s7, gp, s8
                  bne          zero, zero, 74f
                  blt          t1, s7, 83f
                  slti         zero, s3, 1171
                  nop
74:               addi         a7, sp, 1719
                  slli         s8, s3, 25
                  ori          a6, a1, -1201
                  and          a0, s6, sp
                  bne          a5, a2, 80f
                  blt          gp, s3, 89f
80:               lui          s9, 983654
                  slt          a1, s2, gp
                  xor          s8, t4, a0
83:               addi         gp, a7, -650
                  nop
                  bltu         t3, a4, 105f
86:               beq          s5, a3, 88f
                  sra          s11, a6, t6
88:               sub          s5, a1, s11
89:               bge          s0, t6, 90f
90:               bne          s0, a7, 94f
                  sltu         s6, a1, t2
                  lui          ra, 227819
                  nop
94:               xori         zero, zero, 1229
                  slli         t1, s2, 1
                  sltu         t1, a6, tp
                  bgeu         a7, s3, 102f
                  sltu         gp, t4, ra
                  srai         t4, a2, 0
                  or           s0, s11, t2
                  slli         a2, t5, 9
102:              sltiu        tp, s1, -1502
                  bne          s8, s3, 120f
                  andi         s9, t6, -1268
105:              lui          t3, 891619
                  bltu         t2, t6, 108f
                  bltu         zero, a2, 121f
108:              or           s7, t3, s6
                  andi         a3, s3, 593
                  bne          s10, t0, 111f
111:              slli         s11, s2, 5
                  andi         t3, a2, 1202
                  xori         tp, a7, -1819
                  sll          a6, a6, t0
                  sub          s5, t5, s6
                  lui          s5, 321836
                  auipc        a0, 369302
                  or           s8, a3, s10
                  bge          a2, s10, 120f
120:              sub          s5, zero, s2
121:              bltu         s1, a4, 132f
                  bge          s8, ra, 129f
                  slli         t0, a6, 29
                  sll          s5, t6, a6
                  srl          zero, s4, a2
                  nop
                  add          s0, s10, s10
                  auipc        a1, 776353
129:              sra          gp, s11, s1
                  and          t0, s5, s2
                  sltiu        ra, s9, -1263
132:              or           s10, s7, t6
                  sra          t4, s4, s5
                  bge          t1, t2, 136f
                  sub          a0, a3, a7
136:              sltu         a4, tp, s6
                  xor          gp, a6, t0
                  bgeu         s3, t2, 148f
                  sltiu        t1, t4, 456
                  nop
                  and          s4, gp, s0
                  bge          a4, s7, 148f
                  xor          s8, a1, gp
                  sra          s11, a5, a4
                  bge          t6, a0, 155f
                  slt          s7, sp, s0
                  andi         a2, a2, 900
148:              add          s3, t1, s5
                  bltu         ra, a6, 152f
                  bne          zero, a3, 153f
                  and          s10, a3, s5
152:              and          ra, a6, a3
153:              slti         s10, s2, -249
                  lui          s3, 987892
155:              bgeu         s10, s6, 174f
                  bltu         s5, tp, 173f
                  xor          gp, s6, s9
                  ori          s8, a2, -1223
                  or           s4, a2, a0
                  blt          s4, s11, 161f
161:              srai         s2, s9, 1
                  sltu         a4, s8, s5
                  slli         t1, s8, 27
                  sltu         gp, s4, s10
                  srli         s6, zero, 4
                  srai         zero, a6, 14
                  and          s6, a5, t3
                  slli         a1, a5, 23
                  bltu         s3, s4, 176f
                  srai         zero, a1, 11
                  bgeu         t3, t3, 185f
                  bge          s7, a1, 184f
173:              slli         t0, a7, 11
174:              slti         s9, a6, -1668
                  andi         ra, s5, 742
176:              sltiu        a2, s8, 1355
                  bne          a7, a5, 179f
                  auipc        s3, 20776
179:              blt          t2, a4, 180f
180:              andi         s11, sp, 1980
                  andi         a7, s10, -789
                  xor          s10, a4, s1
                  nop
184:              auipc        s11, 242154
185:              addi         a6, sp, -1875
                  bgeu         s3, s10, 190f
                  slti         s7, tp, -368
                  srli         s5, s11, 19
                  sll          t5, tp, sp
190:              bge          s1, t1, 204f
                  sub          a2, t6, zero
                  bge          a3, t2, 196f
                  beq          t5, s11, 199f
                  andi         s3, a5, 605
                  slti         s10, s10, -1931
196:              sll          s6, s0, t6
                  sltiu        a4, tp, 150
                  sra          a7, ra, tp
199:              add          sp, s5, gp
                  ori          s3, s6, -907
                  slti         a5, s6, 1673
                  bltu         s9, t6, 212f
                  sltu         t5, t6, t3
204:              beq          t4, s11, 223f
                  bge          s2, t4, 207f
                  auipc        ra, 396490
207:              bltu         s8, s10, 211f
                  srl          s7, t2, t1
                  sltiu        s2, s0, 157
                  bne          s4, zero, 212f
211:              nop
212:              bltu         a2, t1, 217f
                  slti         s2, s0, -634
                  bltu         t0, a5, 216f
                  slli         s10, t0, 11
216:              lui          s10, 745472
217:              sub          t5, t3, s6
                  srai         t4, t5, 3
                  slti         s0, s10, -1365
                  lui          t4, 674945
                  sub          s7, a7, t4
                  auipc        sp, 1019368
223:              sltiu        a5, a6, -472
                  and          a0, gp, a6
                  add          s3, s2, a3
                  bgeu         a6, s2, 246f
                  nop
                  auipc        s3, 219341
                  andi         a0, a3, -417
                  xor          tp, a7, a7
                  sll          s9, a3, s3
                  blt          s2, t2, 233f
233:              bltu         gp, a2, 239f
                  srli         s2, t6, 31
                  add          sp, a1, ra
                  slt          a3, s1, s8
                  andi         t0, sp, 499
                  blt          a0, s6, 240f
239:              bgeu         s5, sp, 241f
240:              auipc        a2, 222903
241:              slli         a2, a1, 27
                  slt          a1, t4, s4
                  xor          gp, a0, s5
                  and          a7, s9, a6
                  addi         t1, s4, 1154
246:              ori          s9, a0, -1185
                  bge          s10, s3, 257f
                  sra          s3, s0, s10
                  srai         t3, t3, 21
                  beq          a7, s7, 251f
251:              slt          s7, t6, s5
                  sra          s3, a7, s2
                  bltu         a4, tp, 254f
254:              ori          s2, t6, -1101
                  srai         a1, s8, 5
                  bge          gp, t0, 263f
257:              add          t1, t1, t3
                  auipc        s5, 622490
                  slli         t4, a2, 13
                  sra          sp, s5, s6
                  xori         t3, a2, -1833
                  nop
263:              lui          a2, 950866
                  auipc        s9, 895601
                  srai         s3, sp, 9
                  slt          s6, a0, ra
                  beq          t6, s6, 278f
                  nop
                  srl          a6, a4, t0
                  addi         t5, zero, 586
                  slti         s3, s5, -788
                  bgeu         a7, s2, 275f
                  slt          a5, gp, a5
                  bge          tp, t6, 288f
275:              sra          sp, s3, s3
                  srli         s6, s6, 15
                  bltu         t2, s9, 296f
278:              or           s6, s1, a6
                  slt          s3, s5, a0
                  xor          a0, a2, gp
                  srl          t5, t0, s10
                  srai         t4, s6, 7
                  and          ra, t4, a7
                  bge          t6, t5, 288f
                  lui          a4, 159089
                  add          a7, a1, t2
                  and          zero, s3, a5
288:              sub          a0, a3, t5
                  slt          t1, a1, s1
                  srli         zero, s10, 23
                  bltu         t0, t6, 303f
                  sll          t1, s5, s0
                  slli         s5, s11, 18
                  sra          a4, s11, a6
                  bne          s3, s2, 296f
296:              sub          t1, s10, a5
                  bge          ra, t1, 300f
                  ori          s11, t3, -1567
                  nop
300:              sub          s11, s11, s2
                  bge          ra, a4, 305f
                  bge          t0, gp, 304f
303:              xor          gp, t6, s2
304:              addi         a0, s1, -1764
305:              srai         s3, t2, 26
                  beq          a2, s1, 316f
                  andi         s4, s6, -1718
                  slt          t1, a7, ra
                  lui          s9, 757795
                  andi         s11, a4, 1696
                  slli         t1, s6, 7
                  srli         s5, a4, 8
                  xori         s4, a3, -1408
                  auipc        t0, 952026
                  sltu         t1, a0, gp
316:              and          s3, s6, tp
                  auipc        ra, 73119
                  add          t3, s1, a7
                  slt          t5, t2, s9
                  ori          s9, a1, -808
                  srl          s3, s3, s4
                  bne          a2, sp, 324f
                  and          a0, t6, a7
324:              and          t5, a7, t3
                  add          a3, a6, s3
                  bne          zero, sp, 331f
                  xori         a4, a4, -742
                  ori          sp, a6, 1855
                  srai         s7, s8, 11
                  beq          zero, s8, 334f
331:              slli         s10, s2, 22
                  sra          s5, a4, sp
                  srl          a1, s11, a6
334:              slt          sp, ra, t5
                  addi         tp, t2, -184
                  srai         s2, t4, 3
                  sra          a4, ra, tp
                  slli         zero, s6, 9
                  sub          ra, s8, t0
                  srai         s10, t1, 5
                  sll          s2, s1, t2
                  srai         s5, a5, 25
                  xori         s4, s9, -23
                  slli         zero, t0, 30
                  sub          t0, sp, s4
                  lui          t0, 101673
                  beq          s10, t5, 353f
                  add          s4, s3, a2
                  sra          a7, t1, ra
                  blt          gp, a2, 351f
351:              xor          tp, s8, t1
                  srli         t5, s7, 24
353:              or           sp, a1, gp
                  slti         s6, a5, -198
                  lw           s8, 4(s1)
                  srl          a0, t4, s1
                  addi         s1, s1, 28
                  add          a0, sp, s2
                  srl          s7, s6, gp
614:              addi x30, x24, 1
614:              jalr x30, x30, 0
sub_1:            slli         zero, tp, 1
                  lui          s4, 954589
                  srl          t1, t4, s8
                  bltu         t1, t2, sub_1_stack_p
                  sub          t1, a6, t1
sub_1_stack_p:    addi         s1, s1, -12
                  sra          t3, s6, a5
                  srl          s7, zero, s5
                  lui          s7, 716289
                  slt          t3, s1, zero
                  sw           s8, 4(s1)
                  ori          s5, s9, 881
                  slli         t0, t0, 23
                  la           s4, region_1+1509 #start riscv_load_store_rand_instr_stream_0
                  ori          t5, zero, 1722
                  slti         s11, s11, -33
                  lbu          a1, -1396(s4)
                  slli         s7, tp, 28
                  lb           s11, -714(s4)
                  sb           a2, -604(s4)
                  sb           t6, -462(s4)
                  lb           a2, 396(s4)
                  sh           s5, -107(s4)
                  lw           gp, -809(s4)
                  sb           a6, 398(s4)
                  ori          tp, a3, 909
                  lbu          s11, 461(s4)
                  sh           t0, -345(s4)
                  slli         t5, s11, 23
                  sw           t2, -337(s4)
                  lb           s7, -1039(s4)
                  lbu          t4, 482(s4)
                  lh           s9, -715(s4)
                  lbu          t3, -696(s4)
                  sw           a6, -457(s4)
                  sw           s2, -481(s4)
                  and          t5, a6, a2
                  lbu          zero, -206(s4)
                  lb           a1, -379(s4)
                  sb           a1, 282(s4)
                  sb           t5, -925(s4)
                  sb           t2, -352(s4)
                  addi         t5, a7, 1262
                  slti         s11, t4, 217
                  lb           a0, -1431(s4)
                  lb           s2, -1089(s4)
                  sb           s8, -483(s4)
                  addi         a7, s5, -2026
                  sb           zero, -1188(s4)
                  sub          sp, a3, a4
                  sb           s3, -1170(s4)
                  lb           s8, -1190(s4)
                  lbu          tp, -204(s4)
                  lbu          a1, -774(s4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1809 #start riscv_load_store_rand_instr_stream_3
                  lh           a0, 9(sp)
                  and          a3, a6, s10
                  sll          s5, a3, t0
                  srai         s9, a2, 24
                  nop
                  sb           s0, 16(sp)
                  lbu          tp, 8(sp)
                  sub          t4, s4, s10
                  lbu          a7, -6(sp)
                  sltu         s7, s4, s6
                  sltu         a4, t1, s6
                  add          s8, tp, s6
                  slti         s9, s10, 916
                  lbu          a2, 2(sp)
                  srli         s5, s9, 21
                  lb           a5, 1(sp)
                  sh           s2, 1(sp)
                  slt          s3, s10, a6
                  sll          t3, ra, a7
                  lui          a1, 882441
                  lbu          s3, 16(sp)
                  lbu          s10, 3(sp)
                  lw           s8, 15(sp)
                  lh           tp, 9(sp)
                  sb           t5, -8(sp)
                  lbu          ra, 14(sp)
                  sll          a2, sp, a7
                  sltu         gp, zero, s9
                  addi         t3, a2, -1136
                  sw           t5, 15(sp)
                  sw           s6, -1(sp)
                  lbu          s4, 16(sp)
                  sb           s5, -10(sp)
                  lh           s7, -7(sp)
                  lhu          a6, 11(sp)
                  nop
                  sh           a1, 7(sp)
                  srli         s8, zero, 4
                  sb           t5, 6(sp)
                  lbu          a5, 7(sp)
                  sb           s9, 8(sp)
                  and          s11, s10, s2
                  lhu          a0, 1(sp)
                  lbu          s11, 6(sp)
                  sw           s3, -13(sp)
                  sb           s6, -7(sp)
                  lbu          t3, -5(sp)
                  lui          gp, 779003
                  slli         a1, a4, 5
                  nop
                  sb           a2, -16(sp)
                  or           s4, t2, s6
                  sb           a4, -15(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a2, region_0+844 #start riscv_load_store_rand_instr_stream_2
                  lbu          a1, 849(a2)
                  sltu         s2, t0, ra
                  lb           s4, 326(a2)
                  slt          s11, a3, ra
                  xor          a4, t3, s11
                  sra          t4, s11, s8
                  lhu          s0, -824(a2)
                  xor          s9, s7, s0
                  lh           t3, 228(a2)
                  sltiu        s3, s1, -1470
                  lbu          t5, -433(a2)
                  sll          t1, t3, s6
                  lhu          s2, 746(a2)
                  slti         a0, a0, -371
                  xori         s3, a2, 2001
                  and          s10, s0, a1
                  xor          t1, gp, ra
                  sb           s1, -687(a2)
                  lhu          t3, 1146(a2)
                  sub          s9, s9, t6
                  srl          ra, ra, sp
                  andi         a3, s1, -48
                  lb           a5, -329(a2)
                  sub          gp, t5, a5
                  lb           sp, 679(a2)
                  srli         t1, s7, 20
                  sw           ra, 684(a2)
                  lhu          tp, -284(a2)
                  sltiu        s5, s10, -946
                  lui          a3, 664551
                  lb           a6, 69(a2)
                  srl          gp, t3, a2
                  sb           a7, -637(a2)
                  or           s8, sp, s2
                  sb           s11, -451(a2)
                  and          t3, t5, zero
                  lbu          a0, -241(a2)
                  sb           a2, -46(a2)
                  xor          a6, a0, t6
                  srli         gp, s11, 13
                  xor          t0, a1, t6
                  lui          s0, 687126
                  lui          s0, 822833
                  lhu          sp, 706(a2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1838 #start riscv_load_store_hazard_instr_stream_3
                  lb           s11, -60(sp)
                  auipc        s2, 423510
                  lhu          t5, -60(sp)
                  lhu          tp, 8(sp)
                  sb           s9, 8(sp)
                  lh           s3, 52(sp)
                  srl          tp, ra, s3
                  sb           s8, 52(sp)
                  slt          s6, s0, a4
                  lbu          s0, 52(sp)
                  lhu          ra, 32(sp)
                  sb           t4, 16(sp)
                  lbu          s8, 23(sp)
                  slti         a1, zero, 1830
                  sra          t1, s6, a3
                  sb           s2, 23(sp)
                  sub          t3, s4, a3
                  sb           a1, -11(sp)
                  lb           a3, -11(sp)
                  sltu         tp, s9, ra
                  lb           a1, 27(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           a5, region_1+1166 #start load_store_instr_stream_2
                  la           s0, region_1+275 #start load_store_instr_stream_1
                  la           a2, region_1+222 #start load_store_instr_stream_0
                  sh           s2, -17(s0)
                  lb           a3, -13(a2)
                  lh           t5, 63(s0)
                  lb           zero, -55(a2)
                  la           t1, region_1+1455 #start load_store_instr_stream_3
                  lhu          t3, -45(s0)
                  sb           a0, 38(a2)
                  lb           a4, -14(a2)
                  sh           s4, 2(a5)
                  sb           t4, 24(s0)
                  sb           zero, -321(t1)
                  lb           t5, -292(t1)
                  sb           s9, 39(a2)
                  lh           s3, 2(a5)
                  lbu          sp, -1144(t1)
                  lbu          t4, 22(s0)
                  lb           t4, -472(t1)
                  lhu          a3, 479(t1)
                  lbu          t3, -1(s0)
                  lb           t4, -340(t1)
                  lb           s9, 9(a5)
                  lb           s11, -11(a2)
                  lbu          s10, 62(a2)
                  lb           gp, -1230(t1)
                  lbu          s3, 1(a2)
                  sb           t1, -1012(t1)
                  lb           a6, -25(s0)
                  sb           a0, -15(a5)
                  lbu          s5, -800(t1) #end load_store_instr_stream_3
                  lb           s11, 0(s0)
                  sb           a4, -3(a2)
                  sb           s11, -25(s0) #end load_store_instr_stream_1
                  lh           gp, -4(a5) #end load_store_instr_stream_2
                  lb           ra, -63(a2) #end load_store_instr_stream_0
                  la           s8, region_1+1944 #start riscv_load_store_hazard_instr_stream_0
                  lb           s9, -15(s8)
                  sb           s6, -15(s8)
                  sb           a6, -15(s8)
                  lb           a5, -5(s8)
                  lh           s3, 14(s8)
                  sh           s9, 14(s8)
                  sb           t5, -13(s8)
                  lbu          a6, -13(s8)
                  lhu          s6, 2(s8)
                  sltiu        s9, s4, 1840
                  sb           t1, 3(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           s11, region_1+1557 #start load_store_instr_stream_3
                  la           a4, region_1+853 #start load_store_instr_stream_0
                  la           t3, region_1+1668 #start load_store_instr_stream_2
                  la           s4, region_1+702 #start load_store_instr_stream_1
                  sh           a1, 2(t3)
                  lh           a3, 7(s11)
                  lbu          sp, 7(a4)
                  lbu          s9, -31(s4)
                  lbu          s2, 12(t3)
                  lhu          a2, 2(t3)
                  lb           t4, 33(s4)
                  lb           a3, 45(s11)
                  lbu          s10, 2(t3)
                  lbu          s0, 31(s4)
                  lbu          ra, 8(a4)
                  sb           s10, -4(a4)
                  lb           t1, -14(t3)
                  lh           a6, 20(s4)
                  lw           s6, 42(s4)
                  lh           s5, 5(a4)
                  lbu          t1, -29(s4)
                  lhu          t5, -2(t3)
                  lbu          s7, 206(s11)
                  lbu          a0, -1(t3)
                  lb           a7, -35(s4)
                  sb           t3, 34(s4)
                  lbu          gp, -245(s11)
                  lh           tp, 8(t3)
                  lh           s9, -11(a4)
                  lbu          s6, 16(a4)
                  sb           sp, 156(s11)
                  lbu          a2, -8(a4)
                  sb           tp, 122(s11)
                  sb           zero, -1(t3)
                  lbu          ra, 120(s11)
                  sb           s2, -35(s4)
                  sb           a7, 2(a4)
                  sb           a0, -90(s11)
                  lbu          t0, -29(s4) #end load_store_instr_stream_1
                  lbu          zero, 5(t3) #end load_store_instr_stream_2
                  lh           sp, 131(s11) #end load_store_instr_stream_3
                  lbu          t1, -4(a4) #end load_store_instr_stream_0
                  la           t5, region_1+957 #start riscv_load_store_rand_instr_stream_1
                  lb           t1, -130(t5)
                  lbu          tp, -209(t5)
                  lb           t1, 93(t5)
                  sh           s11, 209(t5)
                  sb           s0, 246(t5)
                  lbu          s3, -92(t5)
                  or           s8, s9, s2
                  lb           tp, 218(t5)
                  slti         ra, s9, -1922
                  lui          tp, 333080
                  or           s9, s4, s2
                  lbu          tp, -26(t5)
                  sb           s10, -226(t5)
                  sb           s10, -190(t5)
                  ori          t1, sp, -200
                  sb           s3, -8(t5)
                  lhu          tp, 95(t5)
                  lbu          sp, 111(t5)
                  slli         s7, s11, 9
                  lb           s8, 105(t5)
                  sh           a7, 5(t5)
                  slt          s6, t4, a5
                  lui          a4, 399441
                  lb           a1, -168(t5)
                  srl          s9, s11, s8
                  and          tp, s5, a7
                  lb           t4, -108(t5)
                  sb           s11, -75(t5)
                  lb           a4, -82(t5)
                  lb           a6, 2(t5)
                  lhu          tp, -143(t5)
                  lhu          gp, 205(t5)
                  lbu          gp, -100(t5) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+964 #start load_store_instr_stream_1
                  lbu          t4, -1(gp)
                  la           ra, region_1+457 #start load_store_instr_stream_4
                  lh           tp, -122(gp)
                  la           a4, region_1+1997 #start load_store_instr_stream_2
                  la           s2, region_1+1525 #start load_store_instr_stream_0
                  lb           s9, -249(s2)
                  sb           t4, -196(ra)
                  lb           s10, -1616(a4)
                  lh           a5, -283(a4)
                  lhu          s8, 118(gp)
                  sb           t0, 86(gp)
                  lh           a5, 169(ra)
                  sb           a2, -1201(a4)
                  lhu          a6, 121(ra)
                  lb           t4, -224(s2)
                  lbu          s3, 213(s2)
                  sw           s0, -101(ra)
                  sh           a4, 158(gp)
                  lbu          s4, -534(a4)
                  lb           t3, -246(s2)
                  sw           ra, -121(s2)
                  lbu          a1, -221(gp)
                  lbu          t3, -28(ra) #end load_store_instr_stream_4
                  la           a2, region_1+1411 #start load_store_instr_stream_3
                  sb           s11, -41(gp)
                  sb           s7, -239(gp)
                  lb           s9, -126(a2)
                  lbu          a5, 29(a2)
                  lh           t3, 73(s2)
                  lbu          t1, 16(s2)
                  lbu          zero, -1369(a4)
                  sh           a5, 39(a2)
                  lbu          sp, -206(a4)
                  lbu          s10, -67(gp)
                  lb           a7, 138(a2)
                  sb           s5, -883(a4)
                  sb           a0, -218(gp) #end load_store_instr_stream_1
                  lbu          zero, 200(a2) #end load_store_instr_stream_3
                  lh           s10, -1379(a4)
                  sb           t5, -52(s2)
                  lb           t3, -1070(a4) #end load_store_instr_stream_2
                  lbu          tp, -74(s2) #end load_store_instr_stream_0
                  la           t5, region_0+1604 #start riscv_load_store_hazard_instr_stream_2
                  lbu          ra, -7(t5)
                  sb           s9, -7(t5)
                  lb           a6, -7(t5)
                  xor          s9, a4, s6
                  sb           gp, -7(t5)
                  lb           s3, 12(t5)
                  lhu          a0, 12(t5)
                  lbu          zero, 9(t5)
                  lb           s8, 8(t5)
                  sw           s2, 8(t5)
                  sw           s11, 8(t5)
                  lb           s2, -3(t5)
                  lhu          s6, -10(t5)
                  lh           s4, -10(t5)
                  sltu         a7, t2, a2
                  auipc        s8, 670873
                  sb           t5, -10(t5) #end riscv_load_store_hazard_instr_stream_2
                  lui          t0, 903070
                  ori          t1, a7, -689
                  srl          ra, a4, zero
                  bne          a3, ra, 23f
                  bltu         s1, gp, 19f
                  addi         s7, a4, -830
                  auipc        a3, 2186
                  blt          t5, t2, 16f
                  auipc        s3, 440687
                  bne          s2, t2, 22f
                  lui          s4, 393421
                  srai         s7, tp, 24
                  slti         s5, s1, -1241
                  ori          tp, sp, -1197
                  srai         s7, s2, 4
                  beq          a5, ra, 25f
16:               slti         ra, s3, 829
                  lui          a3, 700350
                  andi         a5, s4, -1958
19:               slli         t1, a3, 11
                  nop
                  beq          t3, s3, 38f
22:               xor          zero, a3, a1
23:               andi         s10, t2, -1432
                  srl          a1, zero, s6
25:               xor          a0, a6, s8
                  nop
                  blt          t6, a3, 33f
                  bne          zero, t5, 44f
                  xor          a6, t1, t1
                  bgeu         s11, s2, 45f
                  addi         ra, s11, 488
                  nop
33:               sltiu        a6, a1, -1871
                  bltu         t4, a6, 38f
                  bne          s6, t6, 48f
                  and          s6, a6, s10
                  xor          s8, a1, s11
38:               bne          t5, s5, 41f
                  and          ra, t5, s0
                  auipc        t4, 677384
41:               srli         s6, zero, 20
                  bne          ra, s0, 53f
                  and          a6, s2, t0
44:               slli         t1, s0, 27
45:               srli         a4, tp, 14
                  add          s10, s10, t4
                  addi         t3, sp, -1027
48:               blt          tp, t0, 62f
                  srai         s5, s6, 11
                  sub          s5, t0, a5
                  nop
                  nop
53:               sll          s6, a2, s11
                  sub          tp, a7, tp
                  sra          sp, s10, sp
                  slli         a2, s11, 6
                  sltu         a1, s2, s3
                  sra          sp, a7, sp
                  addi         tp, a3, 821
                  nop
                  srl          t4, t2, a6
62:               sltu         s10, sp, s2
                  xori         t4, s5, -389
                  sub          s10, a2, s4
                  blt          s8, s1, 79f
                  bne          t3, s8, 81f
                  slt          a0, a7, t1
                  bne          s4, t0, 74f
                  andi         s10, s0, -310
                  sra          a2, s0, s8
                  auipc        a1, 165040
                  or           a3, s1, a1
                  add          a5, a3, a4
74:               sra          s6, t6, s10
                  sltiu        s10, t2, 168
                  bgeu         t0, tp, 93f
                  srli         zero, t3, 0
                  srai         sp, ra, 5
79:               srai         a3, a0, 22
                  xor          zero, t6, ra
81:               xori         a6, t0, -86
                  ori          s8, s6, -370
                  xori         t5, a6, -242
                  or           a7, s11, ra
                  addi         a5, s1, 1599
                  xor          sp, a7, a3
                  slli         zero, a0, 26
                  slti         a1, s9, 1519
                  blt          gp, t4, 100f
                  srli         sp, t3, 7
                  sra          t1, s2, a2
                  sltu         s9, s11, s2
93:               bge          zero, zero, 107f
                  bne          s2, s10, 104f
                  auipc        a6, 100975
                  beq          a4, tp, 106f
                  sltu         a6, s0, ra
                  lui          s9, 920768
                  blt          a2, s9, 100f
100:              andi         s8, s9, 618
                  slli         a7, t6, 31
                  sltiu        t5, s11, 432
                  slli         a5, s11, 0
                  lui          ra, 999781
                  slt          s11, t1, t1
                  la           gp, sub_2
                  addi         gp, gp, 427
                  sll          s11, a1, s0
                  bne          t6, s4, sub_1_j2 #branch to jump instr
                  xor          t4, a7, t6
sub_1_j2:         jalr         s8, gp, -427 #jump sub_1 -> sub_2
                  srai         sp, s7, 10
                  slli         a2, a2, 12
                  sltu         a4, s8, gp
104:              xori         gp, s1, -1833
                  auipc        a2, 123562
106:              andi         a6, t3, 990
107:              andi         a4, a2, 1954
                  bge          a3, s10, 127f
                  sll          a5, s6, a1
                  addi         s3, a1, -1431
                  srli         a2, s10, 21
                  sll          a4, s2, gp
                  nop
                  bne          s5, s6, 120f
                  srai         s4, t0, 14
                  bne          a0, a7, 134f
                  sub          a6, t2, t0
                  nop
                  bne          s10, a4, 129f
120:              bgeu         s3, t5, 126f
                  beq          a0, s5, 129f
                  sra          a2, a3, a7
                  xor          t0, zero, t2
                  xor          t5, a3, a7
                  addi         zero, a6, -1839
126:              blt          a2, t6, 132f
127:              add          gp, s5, t3
                  sltiu        s5, sp, -519
129:              slli         a7, a3, 31
                  addi         a0, zero, 1671
                  andi         s7, s10, 612
132:              beq          sp, s6, 146f
                  slli         a7, s6, 10
134:              slti         t4, zero, -942
                  bgeu         s11, t1, 139f
                  ori          s11, s11, 1549
                  slli         s9, zero, 21
                  andi         ra, a1, -1321
139:              slti         a0, s11, 132
                  lui          a2, 908667
                  bltu         s10, a4, 151f
                  auipc        a4, 167127
                  lui          s2, 942691
                  srl          s3, a3, zero
                  bge          ra, s3, 151f
146:              lui          a0, 791174
                  bge          ra, gp, 161f
                  bltu         sp, gp, 154f
                  ori          a4, s1, 259
                  lui          s2, 335987
151:              addi         s4, s10, -793
                  slti         a2, a1, -747
                  slti         ra, s7, -101
154:              bne          s0, s2, 160f
                  sltu         t1, a7, tp
                  auipc        a5, 810002
                  nop
                  bne          s11, t4, 175f
                  srli         a4, s1, 27
160:              nop
161:              sub          sp, gp, a0
                  bge          zero, t3, 172f
                  add          s7, s4, s7
                  sll          a7, a4, s1
                  la           s6, region_1+120 #start riscv_load_store_hazard_instr_stream_1
                  sh           t4, 220(s6)
                  sb           t0, 43(s6)
                  lbu          tp, 13(s6)
                  lbu          a6, 13(s6)
                  sh           s1, -60(s6)
                  sh           gp, -60(s6)
                  lbu          t5, -48(s6)
                  lw           s8, -48(s6)
                  lbu          a1, -48(s6)
                  lhu          a2, 44(s6)
                  lhu          sp, 254(s6)
                  sb           t6, 85(s6)
                  lbu          zero, 85(s6)
                  lhu          t3, 230(s6)
                  and          a2, a3, t0
                  sh           s11, 230(s6)
                  sh           a6, -64(s6)
                  lw           tp, -64(s6)
                  lbu          a3, 179(s6)
                  lw           s7, -8(s6)
                  sh           gp, 26(s6) #end riscv_load_store_hazard_instr_stream_1
                  bltu         s3, a6, 175f
                  sub          s10, s8, t5
                  sub          s2, s10, a6
                  beq          s1, s3, 184f
                  beq          s4, a0, 183f
                  auipc        a5, 600711
                  lui          t1, 179667
172:              and          tp, s6, t3
                  xor          s6, s9, t2
                  auipc        tp, 874279
175:              sltu         s7, s10, t6
                  srli         s7, sp, 11
                  srl          t1, t2, a7
                  bge          t4, s2, 191f
                  beq          sp, a4, 185f
                  srai         a5, s8, 22
                  ori          t3, s10, 665
                  add          s5, t6, a6
183:              lui          a1, 862641
184:              blt          sp, s6, 194f
185:              andi         a6, a7, 503
                  ori          s4, t1, 1453
                  andi         zero, a1, 14
                  sltu         s5, s8, a5
                  bge          t2, t0, 206f
                  add          s0, s8, a1
191:              srl          s6, gp, t5
                  or           t0, gp, t6
                  add          s11, s1, t6
194:              srl          s11, a2, s3
                  xor          s10, zero, a3
                  or           s0, a0, gp
                  andi         a1, t3, 1880
                  andi         s2, s4, 444
                  lui          a2, 660784
                  sll          tp, zero, a3
                  and          zero, a4, s4
                  srli         s3, s0, 0
                  slt          a7, s7, s6
                  and          s4, s6, s9
                  bgeu         s5, sp, 225f
206:              sll          t0, a7, s2
                  beq          ra, t2, 208f
208:              sra          s9, s1, s7
                  sltu         s8, t5, a5
                  beq          s8, s5, 219f
                  bne          s2, t2, 222f
                  sll          t1, a2, t0
                  bne          t0, a1, 231f
                  bgeu         a2, s6, 229f
                  bltu         s3, zero, 223f
                  bltu         t0, zero, 231f
                  andi         a0, s9, 16
                  srai         t3, s7, 21
219:              srli         t3, t5, 10
                  bge          s11, a2, 235f
                  slli         a2, s3, 0
222:              slt          gp, s10, a3
223:              sltu         a0, a2, ra
                  slli         s8, s0, 7
225:              ori          a1, t2, -1653
                  nop
                  auipc        zero, 969444
                  sltu         s7, s0, gp
229:              and          s9, s3, s11
                  srai         a4, s0, 1
231:              sub          a4, a0, a7
                  sra          a7, gp, a7
                  addi         s3, a5, -959
                  ori          a2, s5, -1161
235:              slti         ra, s8, -1891
                  nop
                  or           s10, t0, t6
                  srai         s0, t4, 16
                  bne          t1, t0, 252f
                  bne          s4, a6, 246f
                  slti         t3, tp, 1632
                  slli         a3, sp, 13
                  beq          gp, a1, 262f
                  sltu         t1, a5, a3
                  sra          tp, t5, t4
246:              sltu         s0, s10, sp
                  addi         t1, t0, -1323
                  sra          s4, s1, t1
                  bge          gp, a2, 260f
                  andi         a3, s7, -1095
                  or           s2, t1, a6
252:              slli         t4, a2, 22
                  slti         zero, a2, -502
                  srl          a5, s0, s8
                  xor          t3, a6, a7
                  add          s3, s9, s0
                  or           s7, t5, a2
                  bgeu         t2, s4, 261f
                  and          s10, s11, a4
260:              beq          a5, zero, 266f
261:              srli         s7, sp, 22
262:              bltu         a1, t2, 282f
                  xor          s8, a6, s4
                  xor          sp, a6, a3
                  xor          tp, t6, t3
266:              beq          t4, t1, 280f
                  bgeu         s4, a5, 284f
                  beq          t5, s11, 279f
                  xor          tp, s6, s2
                  bltu         s2, s2, 285f
                  la           a3, region_0+941 #start load_store_instr_stream_4
                  la           s8, region_0+803 #start load_store_instr_stream_1
                  lbu          a2, -3(a3)
                  la           t4, region_0+15 #start load_store_instr_stream_3
                  lb           s0, 20(t4)
                  la           s9, region_0+423 #start load_store_instr_stream_2
                  la           t1, region_0+1608 #start load_store_instr_stream_0
                  sh           a7, 1333(s9)
                  lh           s0, 71(a3)
                  sh           s1, 551(s8)
                  lb           a2, 1368(s9)
                  lb           s4, 728(s8)
                  lb           s0, -78(a3)
                  sw           t0, 5(t4)
                  sb           t5, 4(t1)
                  lbu          a7, -330(s8)
                  sh           s0, 811(s9)
                  lb           s0, -58(a3)
                  lb           s0, 342(s8)
                  sb           s5, -221(a3)
                  lh           gp, 865(s9)
                  sb           a1, 3(t1)
                  sb           s5, 1182(s9)
                  lhu          a2, 10(t1)
                  lb           s7, 11(t4)
                  lbu          s7, 1162(s9)
                  sb           t2, -6(t1)
                  lhu          t0, -5(t4)
                  sb           s10, 97(s8)
                  sb           s8, -11(t1)
                  lhu          t0, 1305(s9)
                  sb           a2, -6(t1)
                  lb           s7, 204(a3)
                  sb           t1, 549(s8)
                  lb           s6, 16(t4)
                  sh           t0, 0(t1)
                  lbu          s6, 979(s9) #end load_store_instr_stream_2
                  lbu          sp, 96(a3)
                  lbu          s5, -104(a3)
                  lw           a6, -16(t1)
                  lb           a2, 37(t4)
                  sb           sp, 0(t4) #end load_store_instr_stream_3
                  lhu          s11, 1133(s8) #end load_store_instr_stream_1
                  lhu          a2, -47(a3) #end load_store_instr_stream_4
                  lhu          s11, 2(t1) #end load_store_instr_stream_0
                  sll          sp, t1, s7
                  sltu         t1, t3, s3
                  sll          a3, t2, s2
                  beq          s6, t4, 291f
                  ori          a1, ra, 1670
                  andi         a3, a1, 749
                  xori         a6, s1, 1068
                  bltu         a6, a4, 284f
279:              andi         s5, s6, -192
280:              add          a4, s11, a6
                  addi         s7, s3, 106
282:              add          s7, a6, ra
                  slti         a0, t0, 165
284:              sra          a1, t6, s9
285:              bgeu         a1, t1, 303f
                  or           sp, sp, a0
                  srai         tp, a0, 16
                  auipc        s8, 374463
                  and          t5, a6, sp
                  slli         s8, s9, 23
291:              ori          s9, gp, -339
                  slti         s10, a3, 857
                  ori          a1, s4, 1102
                  bne          t2, t3, 300f
                  lui          s8, 671568
                  xori         a1, s1, 1581
                  lui          gp, 93052
                  bltu         s5, gp, 312f
                  sub          sp, a7, s0
300:              bltu         s5, t5, 306f
                  bltu         t6, a4, 320f
                  srli         s11, ra, 17
303:              add          s7, s4, a2
                  srl          tp, a2, s10
                  sltu         s5, t3, tp
306:              lui          a2, 592725
                  auipc        s8, 714366
                  sub          zero, a0, gp
                  or           s0, t4, s5
                  srli         ra, t2, 8
                  srl          gp, s4, a6
312:              srai         sp, a7, 5
                  blt          t2, t5, 319f
                  slt          a0, ra, s5
                  srai         tp, s11, 18
                  and          ra, t5, a5
                  la           s2, sub_2
                  srl          t1, a0, s1
                  sra          a2, s4, t5
                  add          a2, s7, sp
                  addi         s2, s2, -974
                  xor          s9, ra, t2
                  auipc        s3, 569750
                  lui          s0, 414742
                  nop
                  srl          ra, t2, ra
                  srai         s5, t1, 18
sub_1_j3:         jalr         s8, s2, 974 #jump sub_1 -> sub_2
                  slli         t3, s9, 14
                  sltiu        s0, t1, -1461
319:              ori          s0, a5, 1560
320:              sub          s0, t1, s5
                  bge          s11, t0, 337f
                  srai         zero, s11, 20
                  sltu         t0, s6, s0
                  bne          s10, tp, 337f
                  sltiu        s3, s3, -1243
                  srli         s2, zero, 12
                  ori          s5, s8, 421
                  slti         gp, a6, 1610
                  and          gp, tp, t4
                  auipc        a0, 265500
                  srl          a6, s8, a2
                  and          a2, t3, a3
                  lui          zero, 81463
                  bltu         tp, s6, 337f
                  auipc        t3, 834296
                  sltiu        ra, zero, 878
337:              sub          t4, gp, sp
                  bgeu         t0, t0, 349f
                  srl          a0, t0, t6
                  ori          s3, a6, -1827
                  ori          s2, s5, 1329
                  srli         sp, s10, 5
                  beq          s0, s11, 353f
                  bge          s11, sp, 358f
                  nop
                  sub          a2, t1, gp
                  bgeu         s9, s4, 357f
                  sra          a4, t3, s4
349:              sra          a5, s0, t5
                  add          s0, t6, s5
                  lui          a2, 326441
                  sra          a6, s8, t3
353:              nop
                  or           s4, t3, tp
                  add          t0, a0, t5
                  beq          t4, t5, 366f
357:              xori         zero, s4, -379
358:              addi         a2, t0, 301
                  add          tp, s4, s3
                  slti         a1, a1, 1815
                  srl          a2, sp, s4
                  xori         tp, t0, -1961
                  xori         tp, t3, -983
                  blt          s3, s9, 373f
                  srl          tp, a2, a4
366:              sll          gp, t0, gp
                  and          t4, zero, s10
                  srli         a5, s8, 20
                  xor          a0, t3, a7
                  bgeu         t5, zero, 371f
371:              and          s5, tp, a1
                  sltiu        a4, t3, 1673
373:              slli         t4, s3, 12
                  slti         s6, t6, -318
                  add          a1, s4, s0
                  srli         s5, s9, 6
                  bgeu         s8, a7, 387f
                  bltu         s8, a0, 393f
                  sra          a6, t3, gp
                  add          a4, tp, sp
                  bge          s1, s6, 396f
                  xor          gp, t2, a1
                  lui          zero, 1026116
                  sll          ra, t6, s11
                  srli         a7, s10, 14
                  blt          t0, t3, 390f
387:              slt          t5, a5, t0
                  bge          a5, s2, 396f
                  slli         s2, s5, 15
390:              sll          s3, s6, t0
                  srl          t4, t3, t3
                  bne          a6, ra, 405f
393:              bge          s5, a4, 402f
                  bne          t1, s8, 405f
                  slti         gp, a2, 1048
396:              srli         a1, t4, 21
                  slli         s7, a2, 25
                  xor          zero, t0, a6
                  andi         a1, a7, 1038
                  lui          s2, 288071
                  srai         t5, zero, 10
402:              or           gp, a1, a0
                  bltu         ra, s4, 416f
                  srl          a2, s9, s11
405:              sra          s4, t2, t1
                  beq          ra, a3, 422f
                  slli         ra, a5, 2
                  bltu         s2, a4, 423f
                  bge          s11, a5, 429f
                  and          t5, a6, a2
                  sra          t4, zero, a0
                  andi         a4, s10, -659
                  andi         s5, s3, 813
                  xor          s11, t2, a6
                  nop
416:              add          t1, s3, a0
                  bltu         t4, a3, 423f
                  bne          t6, s9, 436f
                  slti         a7, t2, -1175
                  sra          s5, s2, s9
                  slli         s10, a3, 31
422:              sub          a1, t2, a1
423:              sltu         t0, s10, s9
                  and          s6, a1, s10
                  sub          a3, t0, a1
                  slti         a4, a2, 1794
                  auipc        a7, 278104
                  or           t5, s6, sp
429:              ori          s3, s7, -1042
                  bge          sp, a3, 445f
                  lui          s9, 703857
                  srl          a4, t5, s11
                  auipc        s0, 770355
                  bne          s0, a2, 440f
                  srai         s7, s9, 2
436:              slti         a5, s0, -1216
                  ori          s0, s4, 1740
                  sra          s11, t3, ra
                  srai         ra, s1, 29
440:              blt          t2, s5, 451f
                  beq          t6, s9, 449f
                  beq          a6, s10, 457f
                  beq          t1, s0, 453f
                  bne          s3, ra, 457f
445:              srl          a5, a3, t4
                  srli         t1, a3, 6
                  srli         s8, t3, 28
                  auipc        a6, 737524
449:              auipc        s8, 120196
                  sra          a3, s9, a2
451:              add          s9, s2, a7
                  sll          a3, zero, s1
453:              sltu         a7, s6, s0
                  sltu         s3, a6, s2
                  xor          a6, ra, a4
                  srl          t0, s7, s5
457:              sll          s3, a2, t0
                  sra          s6, a3, sp
                  bne          gp, s5, 462f
                  blt          a0, a0, 466f
                  addi         a0, zero, 1972
462:              beq          a2, a2, 467f
                  beq          t4, s7, 467f
                  blt          s7, a4, 467f
                  bge          t1, zero, 467f
466:              xor          a4, a1, a2
467:              or           a3, gp, sp
                  lui          a7, 737110
                  auipc        s0, 776174
                  auipc        s0, 464538
                  lw           s8, 4(s1)
                  slt          t0, t6, a4
                  addi         s1, s1, 12
                  ori          a3, s1, 1712
926:              addi x2, x24, 1
926:              jalr x2, x2, 0
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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
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
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x6, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x6, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x6, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x6, x14, ecall_handler
                  li x14, 0x1
                  beq x6, x14, instr_fault_handler
                  li x14, 0x5
                  beq x6, x14, load_fault_handler
                  li x14, 0x7
                  beq x6, x14, store_fault_handler
                  li x14, 0xc
                  beq x6, x14, pt_fault_handler
                  li x14, 0xd
                  beq x6, x14, pt_fault_handler
                  li x14, 0xf
                  beq x6, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
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
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
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
