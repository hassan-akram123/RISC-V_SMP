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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0xe
                  li x1, 0x0
                  li x2, 0xf6761910
                  li x3, 0x80000000
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x80000000
                  li x9, 0x0
                  li x10, 0x7c8711bd
                  li x11, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0xf3fb8b85
                  li x16, 0xf2960635
                  li x17, 0xdc4474d5
                  li x18, 0x35032ff1
                  li x19, 0x9
                  li x20, 0xae697793
                  li x21, 0xfa04e165
                  li x22, 0x0
                  li x23, 0xb4d04c95
                  li x24, 0xf56dac55
                  li x25, 0x0
                  li x26, 0xc
                  li x27, 0xd
                  li x28, 0x1d082fb0
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0x80000000
                  la x12, user_stack_end
main:             la           a0, sub_2
                  slli         s9, zero, 24
                  lui          s3, 1934
                  sub          sp, a5, s0
                  srl          t3, t3, a6
                  lui          t2, 227227
                  addi         a0, a0, -133
                  sltiu        s6, zero, -1914
                  slt          a7, s2, s9
                  ori          zero, t0, -594
                  bltu         s11, s10, main_j2 #branch to jump instr
                  sll          a5, t0, s2
main_j2:          jalr         t1, a0, 134 #jump main -> sub_2
                  la           a1, region_1+1631 #start riscv_load_store_hazard_instr_stream_0
                  sb           a0, 42(a1)
                  lb           s6, -44(a1)
                  sh           zero, -31(a1)
                  lbu          s0, 46(a1)
                  sb           s11, -17(a1)
                  lb           zero, 52(a1)
                  sb           s5, 30(a1)
                  lb           s6, 30(a1)
                  lbu          a7, 30(a1)
                  lbu          t3, -32(a1)
                  lh           a4, 13(a1)
                  sb           t2, 2(a1)
                  lbu          t1, 2(a1)
                  or           a5, sp, a5
                  lh           t3, 45(a1)
                  lh           t4, 45(a1)
                  lbu          s9, 20(a1)
                  lbu          s4, 20(a1)
                  lbu          s7, -50(a1)
                  sb           s11, -50(a1)
                  lb           a0, -19(a1) #end riscv_load_store_hazard_instr_stream_0
                  la           s10, region_1+117 #start riscv_load_store_rand_instr_stream_0
                  lb           a7, 122(s10)
                  sltu         a1, s5, s4
                  sll          a7, s0, s0
                  or           s9, s6, a1
                  lbu          a4, 218(s10)
                  lb           s3, -85(s10)
                  lhu          a5, 129(s10)
                  srai         t3, a2, 17
                  ori          t5, zero, 1780
                  nop
                  xori         s5, s2, -52
                  lbu          s2, -81(s10)
                  or           s4, zero, a7
                  lbu          s9, 212(s10)
                  sb           s8, 256(s10)
                  lhu          a0, -27(s10)
                  and          s1, gp, t6
                  slli         t0, t6, 29
                  lb           a3, -86(s10)
                  lhu          t1, 99(s10)
                  sh           zero, 57(s10)
                  lui          t4, 687743
                  or           gp, sp, s11
                  ori          t6, t2, -105
                  sb           a2, -56(s10)
                  srai         zero, t0, 9
                  slt          ra, s2, s2
                  lui          a5, 215953
                  sb           a7, 194(s10)
                  lb           t0, 234(s10)
                  lb           t0, -38(s10)
                  lbu          s9, 2(s10)
                  srli         s9, t0, 5
                  sltu         a1, a1, s5
                  sb           s8, -69(s10)
                  sub          t6, a6, s8
                  lbu          zero, 183(s10)
                  sltu         t1, s0, s1
                  lbu          a0, 18(s10)
                  ori          a6, gp, -475
                  and          s2, t5, s9
                  lui          a1, 606838
                  lbu          s8, -67(s10)
                  sltiu        s3, s11, -1091
                  lb           a1, -37(s10)
                  lh           sp, 33(s10)
                  lb           gp, 37(s10)
                  lhu          s0, 49(s10)
                  sb           a5, 101(s10)
                  slt          ra, s4, s1
                  sw           sp, -17(s10) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+1364 #start load_store_instr_stream_4
                  la           s2, region_1+1267 #start load_store_instr_stream_1
                  la           t1, region_1+1737 #start load_store_instr_stream_2
                  la           s3, region_1+1360 #start load_store_instr_stream_0
                  lbu          s1, 97(t1)
                  sb           s0, -283(s3)
                  lbu          a6, 0(t1)
                  sw           t5, -1156(s3)
                  lb           s6, 14(s2)
                  lb           a3, 0(s7)
                  lb           t4, -3(s7)
                  lb           t0, 0(s7)
                  la           t5, region_1+125 #start load_store_instr_stream_3
                  sb           a3, -6(t5)
                  lh           t0, -121(s2)
                  lbu          s8, 154(t1)
                  lh           t3, -466(s3)
                  lb           a5, -595(s3)
                  lb           s10, -4(s7)
                  lhu          a3, 193(t1)
                  sb           a2, 47(s3)
                  sb           s6, -194(s2)
                  lb           s6, -915(s3)
                  sb           t0, -16(s7)
                  lbu          a0, 10(t5)
                  sw           s9, -13(t5)
                  lbu          t6, 104(t1)
                  lbu          s1, 31(s7)
                  lb           s6, -220(s2)
                  sh           t6, 211(t1) #end load_store_instr_stream_2
                  sb           s4, 3(t5)
                  lb           zero, -252(s2) #end load_store_instr_stream_1
                  lhu          a7, -770(s3)
                  lbu          a0, 7(t5) #end load_store_instr_stream_3
                  lbu          t4, -56(s7)
                  lhu          s8, -10(s7) #end load_store_instr_stream_4
                  lbu          a3, -769(s3) #end load_store_instr_stream_0
                  bge          a4, sp, 17f
                  add          a1, s0, a5
                  sltu         t6, a6, t3
                  blt          s4, t0, 8f
                  sll          s6, t2, t1
                  sltiu        t3, t5, 351
                  lui          s5, 592412
                  xor          t3, a6, s0
8:                slli         s3, s2, 17
                  and          s8, tp, s10
                  sll          zero, s11, t1
                  andi         s1, ra, 1963
                  srl          a3, tp, t5
                  auipc        s4, 170686
                  srli         sp, s4, 23
                  slt          t0, t4, a6
                  bne          t0, s6, 34f
17:               or           a4, tp, a6
                  xor          gp, s10, t3
                  lui          s9, 846595
                  sll          gp, zero, s2
                  ori          a5, sp, -510
                  bltu         a0, a6, 23f
23:               andi         sp, t6, 306
                  add          t5, t4, a5
                  add          a0, a6, t0
                  la           s1, sub_2
                  srai         s7, t5, 0
                  addi         s1, s1, 312
                  sltiu        a1, t2, 1262
                  srli         s5, a1, 6
                  or           a6, t1, ra
                  sra          t6, sp, t4
                  lui          a3, 687879
                  slli         gp, a6, 12
                  sltu         t5, a3, t3
main_j3:          jalr         t1, s1, -312 #jump main -> sub_2
                  andi         s7, s4, -416
                  nop
                  auipc        a6, 649096
                  addi         a6, gp, 1169
                  bgeu         zero, s8, 33f
                  add          gp, s0, s1
                  andi         t4, a3, -1492
                  xor          sp, sp, gp
33:               srli         t4, s7, 10
34:               sltiu        s8, a0, 1610
                  lui          t0, 746683
                  and          s2, s8, t0
                  xor          a1, t6, s0
                  sll          a6, tp, ra
                  lui          s6, 133788
                  slli         s6, t5, 12
                  beq          a2, a0, 55f
                  ori          t2, s7, 685
                  nop
                  lui          t2, 291361
                  srl          s3, a5, s8
                  andi         sp, a7, 644
                  or           a1, t2, s9
                  beq          s10, a0, 54f
                  srli         s5, a5, 21
                  slt          t6, a1, ra
                  beq          a2, t6, 65f
                  bge          sp, t2, 62f
                  sltiu        t5, s11, 389
54:               sltiu        a3, s10, 1920
55:               lui          s3, 411497
                  and          s6, a5, a5
                  blt          t2, t4, 59f
                  auipc        s0, 115988
59:               andi         s4, t5, -1065
                  auipc        s6, 668206
                  auipc        t6, 913281
62:               slt          a7, t4, ra
                  and          s7, a3, t2
                  blt          s2, t4, 81f
65:               addi         a5, a6, -2041
                  xori         s6, t6, -800
                  xor          s4, zero, a2
                  xor          s7, s5, t6
                  lui          a7, 1035699
                  sub          s9, t2, t6
                  blt          a6, s5, 86f
                  slti         s7, s8, 318
                  bne          s10, gp, 75f
                  xor          s7, a6, a5
75:               sltu         t4, t0, s9
                  addi         s0, a4, -957
                  add          t3, a7, s3
                  ori          s8, s11, -1873
                  xor          a0, s8, a7
                  la           s5, sub_1
                  add          a4, s8, s9
                  srli         t6, ra, 15
                  srai         a5, s8, 13
                  sub          a3, t4, a7
                  addi         s5, s5, 435
                  ori          a4, s7, 1750
main_j1:          jalr         t1, s5, -434 #jump main -> sub_1
                  add          s6, t2, s3
                  xor          s1, s10, s11
81:               bltu         a1, s9, 99f
                  sltiu        t3, a3, -1518
                  srli         s2, a3, 12
                  srai         t0, t1, 13
                  addi         s9, s5, -2047
86:               lui          s5, 37289
                  add          a7, a7, s8
                  srli         sp, a3, 13
                  slti         ra, s3, 1128
                  beq          s4, t1, 102f
                  slli         s9, t3, 3
                  andi         t6, s1, -1381
                  sltu         a0, t4, t6
                  beq          s9, t3, 98f
                  nop
                  slti         a6, s6, -755
                  srl          a5, s1, s7
98:               srl          s4, a0, gp
99:               xor          t4, a1, s4
                  sub          a1, a1, zero
                  sub          a1, s7, tp
102:              sltiu        t5, s9, -646
                  add          t5, a5, s8
                  slt          t4, t4, zero
                  bltu         s11, a2, 117f
                  sub          t4, t0, sp
                  addi         a0, t3, -1992
                  srli         ra, a3, 20
                  slti         s1, s4, 1716
                  bltu         s1, a6, 121f
                  xor          gp, s10, s3
                  sltu         s1, a2, t3
                  blt          t1, s7, 120f
                  auipc        t5, 907183
                  bgeu         t0, sp, 130f
                  srli         s9, s3, 22
117:              nop
                  sll          a1, a3, a0
                  bne          s4, t5, 125f
120:              slli         s1, t5, 22
121:              slli         s6, t6, 24
                  nop
                  srli         gp, s1, 7
                  slli         t5, t6, 14
125:              blt          a1, s5, 134f
                  xor          a6, a4, s9
                  add          gp, s5, s7
                  xori         a4, a4, -1150
                  and          a4, a0, s7
130:              nop
                  sll          t1, s3, s11
                  bgeu         a0, a7, 136f
                  sltiu        s6, a3, -865
134:              sra          s6, gp, tp
                  xor          a7, t2, a3
136:              blt          a6, a3, 144f
                  and          s3, a7, t4
                  blt          t4, a2, 144f
                  srl          s4, t1, a7
                  srai         a5, s5, 15
                  sra          t0, a0, s4
                  slti         s1, t2, 216
                  andi         s7, s9, -489
144:              srai         t0, s6, 17
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltiu        s4, a3, 188
                  slt          s2, sp, a4
                  slti         s3, a6, 426
                  addi         zero, s8, -375
                  bgeu         t2, t3, sub_2_stack_p
                  sltiu        s1, s4, 450
                  slti         s9, s8, 184
sub_2_stack_p:    addi         a2, a2, -28
                  andi         s1, a4, 168
                  slt          gp, a5, a1
                  xor          t6, a5, t5
                  sw           t1, 4(a2)
                  addi         t6, s5, 1443
                  bltu         a5, a6, 10f
                  bge          a1, s1, 21f
                  or           gp, t3, a1
                  slli         t6, s4, 21
                  sub          s0, a6, s6
                  slli         s2, zero, 12
                  xori         t4, s9, -818
                  srli         t2, gp, 9
                  bltu         a2, s0, 17f
                  andi         t1, a4, 560
10:               bge          s8, gp, 16f
                  slli         t2, t1, 23
                  andi         s1, a7, 1707
                  auipc        a4, 487232
                  addi         a1, s2, 662
                  sltiu        gp, s4, -1981
16:               srai         a3, a5, 12
17:               blt          t5, a3, 33f
                  xor          s1, t4, ra
                  nop
                  srl          a7, t0, s9
21:               srli         t5, s8, 10
                  srai         a1, a5, 23
                  xor          a4, t6, t3
                  srai         a7, a6, 19
                  slti         zero, s5, -1313
                  srl          a4, t1, s4
                  slt          zero, a1, a0
                  srli         a3, s8, 20
                  bge          t2, s1, 48f
                  andi         a5, t3, -1171
                  slt          a4, a0, s9
                  slti         t0, a1, 1875
33:               bltu         s11, s1, 47f
                  and          s10, s8, s5
                  bne          t0, t4, 54f
                  and          s1, t0, a2
                  sltiu        a6, s8, 1762
                  bne          ra, t0, 50f
                  ori          sp, s2, 1357
                  xori         a4, s4, -1651
                  xori         t4, a1, 1671
                  andi         t3, s9, 1331
                  bge          s2, a3, 62f
                  bge          a4, a6, 50f
                  xor          a0, t5, a0
                  blt          s9, a2, 64f
47:               andi         a4, s4, 662
48:               slti         s1, a2, -1650
                  lui          s2, 164603
50:               slli         a4, t4, 9
                  auipc        a6, 242410
                  bne          a1, s2, 72f
                  sra          s6, t2, a5
54:               ori          a4, ra, -1154
                  auipc        t0, 874558
                  andi         t0, a4, -1047
                  xor          s3, a6, s4
                  bgeu         a3, s8, 70f
                  andi         s8, tp, 878
                  srli         s5, t6, 13
                  addi         sp, t2, 766
62:               blt          s11, a6, 74f
                  or           s1, t5, s6
64:               ori          a5, a0, -105
                  andi         t1, t2, -26
                  and          a1, s1, gp
                  lui          s10, 870467
                  srli         a0, a0, 13
                  add          s5, t6, s7
70:               slli         s0, s8, 25
                  xori         s6, s8, -158
72:               srai         t6, t2, 8
                  add          s0, s9, t4
74:               blt          zero, a6, 75f
75:               sub          sp, gp, s9
                  or           a0, t6, s8
                  xor          a5, s3, t1
                  srl          s1, s8, a2
                  lw           t1, 4(a2)
                  ori          s10, s8, 509
                  and          a5, gp, s11
                  addi         a2, a2, 28
                  slt          t6, s6, s2
                  add          s1, t1, zero
                  sltu         s8, t1, s11
99:               addi x2, x6, 1
99:               jalr x2, x2, 0
sub_1:            sltiu        s10, s6, 152
                  sltiu        s8, s5, -902
                  srl          s6, gp, a4
                  slti         s8, tp, -1949
                  srli         a5, s3, 5
                  addi         a2, a2, -20
                  sw           t1, 4(a2)
                  sltiu        t3, t0, 2047
                  ori          t2, a2, 1200
                  sltu         sp, a5, t0
                  add          s4, a6, s8
                  la           sp, region_0+1809 #start riscv_load_store_rand_instr_stream_0
                  srli         s10, zero, 21
                  slt          a6, t4, sp
                  sra          s10, t5, s2
                  srli         ra, s8, 3
                  lb           a3, 14(sp)
                  sb           a5, 4(sp)
                  sb           s11, -13(sp)
                  lui          gp, 692007
                  addi         s3, s6, 1627
                  lb           t5, -8(sp)
                  sb           t0, 9(sp)
                  lb           a3, -16(sp)
                  lhu          t1, -9(sp)
                  slti         s7, zero, -423
                  lb           s0, -14(sp)
                  lbu          s8, -12(sp)
                  sb           t5, -16(sp)
                  xori         a6, s10, 1297
                  nop
                  lhu          t3, 5(sp)
                  lb           gp, -8(sp)
                  sh           tp, 1(sp)
                  sltu         t4, s7, gp
                  lb           s9, 5(sp)
                  sb           s4, -2(sp)
                  add          a4, s8, t6
                  lbu          s8, -4(sp)
                  lw           a5, 11(sp)
                  sb           a7, -10(sp)
                  sb           s3, 6(sp)
                  ori          gp, zero, 1337
                  lw           s2, -1(sp)
                  lb           s8, 6(sp)
                  sb           s10, -8(sp)
                  nop
                  sb           a1, 0(sp)
                  lbu          s2, 6(sp)
                  xor          s2, a1, t0
                  srl          t6, t0, s5
                  sb           s10, -10(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_0+1150 #start load_store_instr_stream_1
                  la           s3, region_0+520 #start load_store_instr_stream_0
                  lh           a5, 0(t5)
                  la           s7, region_0+1646 #start load_store_instr_stream_2
                  lb           s0, -43(s3)
                  lw           s4, -102(s7)
                  sb           ra, -11(t5)
                  lw           s9, -14(t5)
                  sb           t5, 7(t5)
                  lbu          a7, 41(s3)
                  lb           a6, -234(s7)
                  sb           s11, -10(t5)
                  sh           s10, -6(s3)
                  lh           t3, -134(s7)
                  sb           tp, 16(t5)
                  lbu          gp, 15(t5)
                  lbu          s6, 7(s3)
                  lbu          a1, 197(s7)
                  sb           a7, -99(s7)
                  sb           s1, -47(s3)
                  lb           s2, 4(s3)
                  lb           zero, 0(s3)
                  sb           s7, 15(t5)
                  sb           a5, -222(s7) #end load_store_instr_stream_2
                  sb           s8, -1(t5) #end load_store_instr_stream_1
                  lb           t6, -29(s3)
                  sb           s5, 38(s3) #end load_store_instr_stream_0
                  la           gp, region_1+1696 #start riscv_load_store_hazard_instr_stream_3
                  lb           t0, -11(gp)
                  sb           a7, -11(gp)
                  lhu          t5, 10(gp)
                  addi         s8, gp, -1677
                  add          s6, a5, t1
                  lb           a7, 7(gp)
                  sb           s10, 8(gp)
                  lh           a0, 8(gp)
                  lh           a4, -10(gp)
                  sb           s2, -10(gp)
                  lbu          t0, -10(gp)
                  lhu          zero, -10(gp)
                  lh           a5, 16(gp)
                  lb           s4, 16(gp)
                  sb           s8, -16(gp)
                  lbu          sp, 0(gp)
                  sw           ra, 0(gp) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_0+1224 #start load_store_instr_stream_2
                  la           t2, region_0+1119 #start load_store_instr_stream_1
                  la           s8, region_0+905 #start load_store_instr_stream_0
                  la           s2, region_0+871 #start load_store_instr_stream_3
                  la           a4, region_0+1979 #start load_store_instr_stream_4
                  lbu          s6, -387(t2)
                  lbu          s0, 58(s2)
                  sb           t4, -237(a4)
                  sb           gp, -435(t2)
                  lh           s0, 41(s8)
                  lbu          s10, 60(sp)
                  sb           a1, 806(t2)
                  lb           s6, -30(a4)
                  lb           a5, -62(a4)
                  lh           s0, 47(s2)
                  lb           t1, -35(s8)
                  lh           a3, 59(s8)
                  lbu          t3, 346(t2)
                  lhu          a3, -58(sp)
                  sh           t5, -113(s2)
                  sw           a5, -123(a4)
                  lb           gp, 257(t2)
                  sw           t1, -59(a4)
                  lh           a7, 18(sp)
                  lb           t1, 56(s2)
                  lbu          a6, -3(s8)
                  sb           a3, -59(sp)
                  lw           a3, 177(t2)
                  lbu          s1, 13(s8)
                  lhu          a1, 60(sp)
                  lbu          t3, -26(s2)
                  sb           a1, -53(sp) #end load_store_instr_stream_2
                  lbu          a0, -917(t2)
                  sb           s4, 96(s2) #end load_store_instr_stream_3
                  lbu          t5, -377(t2) #end load_store_instr_stream_1
                  lbu          a0, -116(a4)
                  sh           t0, -89(a4) #end load_store_instr_stream_4
                  lbu          a5, -3(s8) #end load_store_instr_stream_0
                  la           a3, region_1+733 #start riscv_load_store_hazard_instr_stream_6
                  sra          s0, s10, s7
                  or           s0, t1, s7
                  lbu          a4, -149(a3)
                  lbu          ra, -149(a3)
                  sb           s9, -149(a3)
                  lhu          s10, -149(a3)
                  sb           a0, -149(a3)
                  lbu          a4, -149(a3)
                  sw           s8, -149(a3)
                  sh           t1, -149(a3)
                  sh           s5, -149(a3)
                  lbu          t3, -149(a3)
                  sb           s1, -60(a3)
                  lbu          t0, -60(a3)
                  lbu          t4, -60(a3)
                  ori          t6, s8, -1275
                  lbu          s1, -60(a3)
                  sb           s3, -60(a3)
                  lb           t1, -60(a3)
                  lb           sp, -214(a3)
                  lbu          gp, -214(a3) #end riscv_load_store_hazard_instr_stream_6
                  la           s8, region_0+604 #start load_store_instr_stream_4
                  sb           t3, 9(s8)
                  la           t0, region_0+1994 #start load_store_instr_stream_2
                  la           sp, region_0+51 #start load_store_instr_stream_3
                  la           a4, region_0+977 #start load_store_instr_stream_0
                  lhu          a6, 225(sp)
                  la           s2, region_0+1584 #start load_store_instr_stream_1
                  sb           a6, -223(s2)
                  sb           s10, 1310(sp)
                  sb           s11, 1(t0)
                  sb           ra, -14(s8)
                  lbu          s7, -3(t0)
                  lhu          gp, -16(t0)
                  lb           s5, -1334(s2)
                  sb           a1, 1528(sp)
                  lh           a3, -89(a4)
                  lbu          s7, 330(a4)
                  lb           a1, -5(t0)
                  sb           s2, -6(s8)
                  lbu          s9, -9(t0)
                  sb           s5, 1752(sp)
                  sb           s8, 1096(sp)
                  lb           a5, 16(sp)
                  sh           a6, 14(s8)
                  sh           a1, -10(t0)
                  lb           s5, 1828(sp)
                  lb           a7, -9(s8)
                  lw           s4, 491(a4)
                  sb           t5, 754(a4)
                  lb           a5, -7(t0)
                  lbu          a7, 4(t0)
                  sb           sp, 960(sp)
                  lhu          s10, -532(s2)
                  lhu          s9, 2(s8)
                  sb           t0, 638(sp)
                  lh           s7, -578(s2)
                  lhu          a5, 441(sp) #end load_store_instr_stream_3
                  sb           a2, 870(a4)
                  lbu          zero, -437(s2)
                  lb           a3, -1(s8)
                  lhu          t1, -16(t0) #end load_store_instr_stream_2
                  sb           a2, 169(a4)
                  lb           gp, -1389(s2) #end load_store_instr_stream_1
                  lh           a0, 14(s8)
                  lbu          s3, 2(s8) #end load_store_instr_stream_4
                  lbu          a3, 195(a4) #end load_store_instr_stream_0
                  la           s6, region_1+572 #start riscv_load_store_rand_instr_stream_6
                  sltiu        a4, s1, -581
                  sb           t0, 833(s6)
                  lb           t1, 1154(s6)
                  lb           s7, -319(s6)
                  lb           a6, 922(s6)
                  lb           t6, -157(s6)
                  add          s10, gp, ra
                  sub          t1, t3, tp
                  srli         a1, t3, 23
                  srl          a6, tp, a3
                  lb           s2, 11(s6)
                  sh           tp, 1404(s6)
                  lbu          s4, 93(s6)
                  sb           s7, -42(s6)
                  slli         s9, t5, 30
                  lh           zero, -82(s6)
                  lbu          t2, 682(s6)
                  lbu          t3, -463(s6)
                  sw           zero, 1128(s6)
                  sb           a7, 589(s6)
                  lh           a0, 1278(s6)
                  sltiu        t1, t5, -1765
                  lb           t1, 389(s6)
                  andi         gp, t2, 1564
                  sb           t2, 789(s6)
                  lh           sp, 1294(s6)
                  lh           s9, 548(s6)
                  lui          a4, 401464
                  lui          zero, 598733
                  lbu          s1, -189(s6)
                  sltiu        s8, a7, 201
                  xor          s9, a4, t2
                  lb           t0, -293(s6)
                  lb           s9, -435(s6)
                  lbu          a3, 631(s6)
                  lb           ra, -279(s6)
                  sb           t2, 155(s6)
                  sh           t1, -388(s6) #end riscv_load_store_rand_instr_stream_6
                  la           t2, region_0+1326 #start load_store_instr_stream_0
                  la           a1, region_0+535 #start load_store_instr_stream_1
                  lbu          s7, 488(t2)
                  lb           a4, -50(a1)
                  lbu          s3, -50(a1)
                  lw           a4, 246(t2)
                  sb           sp, -48(a1)
                  sb           t1, 19(a1)
                  sb           a3, -635(t2)
                  lbu          t1, 55(a1)
                  sh           s5, -970(t2)
                  lhu          a6, -1110(t2)
                  lb           t3, -40(a1)
                  lbu          s2, 64(a1)
                  sb           t6, -22(a1) #end load_store_instr_stream_1
                  lb           sp, -189(t2) #end load_store_instr_stream_0
                  la           s8, region_1+1135 #start riscv_load_store_rand_instr_stream_1
                  slt          s0, a3, tp
                  srai         a1, a7, 19
                  lw           s4, 201(s8)
                  sh           t2, -159(s8)
                  lhu          a4, -41(s8)
                  sb           a2, -126(s8)
                  nop
                  lb           s0, 90(s8)
                  lbu          t0, 226(s8)
                  sra          t1, t2, s5
                  lhu          s7, 109(s8)
                  lh           t3, 105(s8)
                  sh           t2, 193(s8)
                  lb           ra, 206(s8)
                  lui          a5, 719950
                  lb           s5, 63(s8)
                  lbu          t4, 24(s8)
                  slli         sp, s2, 24
                  andi         a5, s7, 731
                  xori         a1, s4, 1588
                  slt          t0, s0, a5
                  sb           sp, 50(s8)
                  srli         a0, s3, 19
                  addi         zero, s7, -325
                  or           s1, a6, a4
                  nop
                  addi         s5, a4, 268
                  srai         s1, a7, 0
                  lb           s4, 100(s8)
                  xor          s4, tp, zero
                  and          a7, s9, a5
                  auipc        s3, 993676
                  xori         a6, t6, -297
                  or           t1, t3, a0
                  sb           a2, 163(s8)
                  lb           a7, 187(s8)
                  sltiu        ra, a0, 1633
                  lbu          a7, 252(s8)
                  lbu          sp, -217(s8)
                  lbu          sp, 115(s8)
                  lbu          t6, 198(s8)
                  sltu         s0, a4, t5
                  sub          ra, s9, t5
                  sra          s4, t0, a4
                  addi         s3, tp, 1401
                  or           s10, s9, s9
                  lui          ra, 193438
                  slli         t6, t2, 15
                  andi         t4, t6, -630
                  sb           s4, 182(s8) #end riscv_load_store_rand_instr_stream_1
                  la           s5, region_1+269 #start riscv_load_store_hazard_instr_stream_4
                  lhu          t0, -165(s5)
                  xori         t5, s6, 1500
                  lb           s10, 244(s5)
                  sb           a6, 244(s5)
                  lb           a3, -33(s5)
                  sll          a0, s3, t4
                  lhu          ra, -33(s5)
                  slti         gp, a3, -2027
                  lhu          s9, -33(s5)
                  sb           s1, 184(s5)
                  sb           a2, 184(s5)
                  lb           s8, -74(s5)
                  sb           ra, -74(s5)
                  sll          s9, gp, a3
                  lbu          s7, -52(s5)
                  lb           s1, -166(s5)
                  lb           t0, 28(s5) #end riscv_load_store_hazard_instr_stream_4
                  la           s9, region_0+1997 #start load_store_instr_stream_0
                  lhu          s7, -1653(s9)
                  lb           t0, -118(s9)
                  la           s10, region_0+1268 #start load_store_instr_stream_1
                  lh           a3, -789(s9)
                  sb           ra, -1818(s9)
                  lhu          zero, -1145(s9)
                  sb           t1, -790(s9)
                  lb           t4, -150(s9)
                  lhu          t6, -302(s10)
                  lw           a4, -400(s10)
                  sh           t6, -683(s9)
                  lb           s8, -109(s10)
                  lh           t3, -488(s10)
                  lbu          s1, 459(s10) #end load_store_instr_stream_1
                  lbu          s3, -696(s9) #end load_store_instr_stream_0
                  la           sp, region_1+89 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a5, -19(sp)
                  slli         s4, s7, 19
                  sb           s8, -19(sp)
                  srli         a7, a0, 29
                  sb           a2, -19(sp)
                  sh           sp, -19(sp)
                  sltiu        a0, t2, 534
                  lbu          t3, -19(sp)
                  sub          s7, s6, s5
                  sh           t0, -19(sp)
                  lbu          ra, -19(sp)
                  sh           t1, -19(sp)
                  lb           s1, -19(sp)
                  lhu          a1, -19(sp)
                  auipc        s7, 667029
                  or           s1, a0, s7
                  lbu          s0, -19(sp)
                  lbu          s7, -19(sp)
                  lhu          a1, -19(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a7, region_1+429 #start riscv_load_store_rand_instr_stream_2
                  lbu          t3, 16(a7)
                  lui          gp, 1043789
                  lui          s5, 324095
                  lh           a3, 13(a7)
                  lw           s3, -13(a7)
                  sh           a2, 5(a7)
                  andi         s0, t1, -443
                  auipc        zero, 410144
                  sb           s6, 7(a7)
                  lb           a4, -4(a7)
                  xor          s8, a2, a0
                  sra          a0, ra, s3
                  srl          gp, a6, s7
                  addi         t2, s4, -358
                  or           s0, t5, sp
                  lui          s2, 935777
                  andi         t0, a4, 1405
                  lbu          zero, -16(a7)
                  lb           s7, -12(a7)
                  or           t6, t5, tp
                  sh           gp, -3(a7)
                  auipc        sp, 338036
                  xor          s6, t4, t5
                  lh           zero, 9(a7)
                  nop
                  sra          s7, a2, t1
                  lh           s4, 13(a7)
                  nop
                  or           s5, sp, gp
                  lbu          s1, -12(a7) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+478 #start riscv_load_store_rand_instr_stream_4
                  slli         ra, s11, 8
                  add          s5, s2, s8
                  lui          s4, 388293
                  or           t6, s10, s5
                  sub          a4, t5, t2
                  ori          a3, zero, -118
                  sb           t4, -191(s1)
                  lbu          a3, 183(s1)
                  add          s3, t4, s1
                  auipc        t1, 526793
                  nop
                  or           s7, a0, a4
                  lb           sp, -243(s1)
                  and          t5, s7, ra
                  sub          t1, sp, t4
                  srai         s0, t5, 7
                  srai         s4, t2, 11
                  sb           t4, 229(s1)
                  sltu         gp, a0, tp
                  lbu          s3, 201(s1)
                  slt          t3, a5, s2
                  sb           s9, -65(s1)
                  lb           a3, 132(s1)
                  slli         s0, s3, 20
                  lhu          t5, 98(s1)
                  slti         s0, a4, -1923
                  add          a4, s8, a4
                  srai         s3, s6, 14
                  sh           zero, -178(s1)
                  lb           a5, -113(s1)
                  sb           tp, -90(s1)
                  nop
                  xori         a1, s4, -922
                  ori          t1, s3, -1454
                  lb           s7, -131(s1)
                  sltiu        s0, a0, 302
                  lh           a4, -190(s1)
                  and          ra, s3, tp
                  srai         a6, a4, 22
                  sra          zero, s5, s4
                  sltu         s8, a0, s7
                  lbu          s8, -125(s1)
                  sh           a2, -78(s1)
                  lb           ra, 27(s1)
                  sb           s1, -210(s1)
                  lhu          a1, 18(s1) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_1+1328 #start riscv_load_store_rand_instr_stream_5
                  lb           s10, -5(s9)
                  or           sp, a7, a6
                  lui          gp, 831416
                  lb           s0, 11(s9)
                  lb           s3, 1(s9)
                  lhu          s7, 16(s9)
                  xor          s0, a7, gp
                  and          a5, s9, a2
                  sltiu        ra, a2, 41
                  slt          s8, a7, s9
                  lbu          zero, 9(s9)
                  lbu          t2, -11(s9)
                  sb           s9, 7(s9)
                  sw           s9, -16(s9)
                  srl          gp, ra, gp
                  andi         a0, t6, 1303
                  lw           a1, 4(s9)
                  lhu          a7, -16(s9)
                  sub          t1, gp, s2
                  nop
                  or           s4, a7, t3
                  slt          s8, a4, a6
                  srai         a0, t3, 14
                  lb           s7, -1(s9)
                  slt          sp, a3, gp
                  lbu          a7, 0(s9)
                  lhu          t0, -16(s9)
                  lb           a5, -13(s9)
                  sh           tp, 12(s9)
                  srai         a3, a0, 29
                  srl          s8, a4, gp
                  slli         s5, t4, 30
                  sra          s5, t3, t6
                  lhu          a3, 14(s9)
                  xori         t4, s10, -672
                  srl          s3, s2, sp
                  lh           t5, -14(s9)
                  nop
                  sltiu        a1, s2, 2043
                  sb           t0, 15(s9)
                  lb           ra, 2(s9)
                  lbu          s7, -13(s9)
                  sltu         ra, t0, s2
                  lb           a3, 7(s9)
                  lbu          s7, 1(s9)
                  xor          s2, tp, a6
                  xori         t5, gp, -495
                  sra          t0, s0, gp
                  lb           s10, -3(s9)
                  sb           s7, 10(s9)
                  lw           s0, -16(s9)
                  lbu          s10, 1(s9)
                  sltiu        a6, s7, -2003
                  sb           s5, 11(s9)
                  lbu          a4, -7(s9)
                  lh           sp, -12(s9)
                  lhu          s1, -10(s9) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_0+69 #start riscv_load_store_rand_instr_stream_3
                  sltu         t4, t3, t3
                  srai         a3, s9, 11
                  sra          t4, ra, a7
                  sltu         s10, t0, a1
                  andi         a0, a2, 1550
                  lb           zero, 38(s5)
                  addi         s2, s7, -395
                  lw           gp, -53(s5)
                  lhu          t1, -69(s5)
                  srai         t4, s9, 15
                  srl          a4, a4, s6
                  sh           a6, 159(s5)
                  lhu          s3, 173(s5)
                  lb           t1, 210(s5)
                  srl          ra, a0, a6
                  lb           s0, 156(s5)
                  lbu          s6, 114(s5)
                  sh           s5, 207(s5)
                  ori          a6, a3, 1170
                  lhu          a0, 221(s5)
                  lh           a1, 157(s5)
                  slli         gp, s8, 10
                  sw           s8, -49(s5)
                  slti         a5, a2, -1680
                  srli         gp, a2, 4
                  xor          sp, s7, s1
                  lh           ra, -67(s5)
                  sb           a1, 154(s5)
                  lbu          s8, 237(s5) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_0+1111 #start load_store_instr_stream_1
                  lhu          s8, -31(gp)
                  la           s1, region_0+1445 #start load_store_instr_stream_0
                  sb           a5, -54(gp)
                  la           sp, region_0+378 #start load_store_instr_stream_2
                  lb           t2, -9(sp)
                  lbu          s0, -54(s1)
                  lbu          s9, -60(gp)
                  sb           zero, 0(s1)
                  sh           s0, -29(gp)
                  lb           a1, -61(sp)
                  sb           t5, -39(s1)
                  sw           t2, 11(s1)
                  sh           a5, -61(s1)
                  sb           s0, 42(gp)
                  lbu          a0, -47(s1)
                  lbu          t5, -54(gp)
                  lbu          s6, -61(gp)
                  lh           t1, -56(sp)
                  lbu          s5, 57(s1)
                  sw           s1, 42(sp)
                  lbu          s3, 23(sp) #end load_store_instr_stream_2
                  lb           a6, 15(s1)
                  lb           t6, 10(gp) #end load_store_instr_stream_1
                  lb           t0, 17(s1)
                  lbu          t4, -30(s1) #end load_store_instr_stream_0
                  andi         t6, t2, 205
                  slli         a1, a1, 17
                  bge          a1, s3, 16f
                  slti         t1, t5, -1498
                  srl          gp, tp, s1
                  slti         gp, s7, -1936
                  bge          t1, a6, 15f
                  srl          s1, s3, a7
                  nop
                  srai         a1, a7, 15
                  and          s5, a3, t1
                  slt          t6, a6, zero
                  slli         a7, t5, 14
                  la           sp, region_0+657 #start riscv_load_store_hazard_instr_stream_5
                  sb           s7, 29(sp)
                  lh           a3, 29(sp)
                  lb           a3, 29(sp)
                  sh           t5, 29(sp)
                  sb           t4, 29(sp)
                  sb           a7, -53(sp)
                  or           s7, a0, s0
                  lb           a6, -53(sp)
                  sb           a0, -53(sp)
                  lb           t3, 54(sp)
                  sb           t2, 54(sp)
                  lbu          t5, 8(sp)
                  lb           s1, 49(sp)
                  sh           t1, 49(sp)
                  auipc        a3, 485860
                  lb           a0, -51(sp)
                  lb           s5, -4(sp)
                  lbu          s10, -4(sp)
                  sb           a4, 51(sp)
                  lbu          a4, 51(sp)
                  sltu         t1, s1, s11
                  sh           a6, 51(sp)
                  lb           a7, 51(sp) #end riscv_load_store_hazard_instr_stream_5
                  andi         t6, a0, 1101
                  xor          a1, ra, s11
15:               sra          s9, sp, ra
16:               slli         s8, tp, 16
                  srli         s8, s8, 7
                  nop
                  and          zero, a7, a5
                  andi         s2, t0, -1315
                  andi         s6, s10, -1738
                  srl          a7, s3, a5
                  andi         ra, s9, -1867
                  or           s4, gp, a4
                  sltiu        a7, t2, -815
                  sra          s2, s3, t1
                  sltiu        a0, s4, -117
                  bge          t6, s7, 31f
                  beq          t4, a5, 37f
                  sub          s4, sp, t1
31:               ori          a3, s4, 80
                  sltu         t2, t4, s7
                  slli         s10, s5, 27
                  xori         t6, a1, 2006
                  auipc        t1, 7920
                  xor          a0, t5, a0
37:               beq          s8, s7, 50f
                  blt          a1, t6, 42f
                  bge          s5, s0, 55f
                  bge          a1, s10, 53f
                  andi         s8, a3, -2020
42:               nop
                  addi         t6, s1, -334
                  add          a5, a3, s2
                  or           s3, s10, t0
                  blt          s4, t1, 64f
                  blt          t5, s0, 53f
                  srli         a0, a4, 13
                  xori         a6, s2, -690
50:               srai         s8, s7, 17
                  blt          s7, a6, 54f
                  sll          t0, zero, t4
53:               sra          s3, s6, s6
54:               bltu         a5, s4, 70f
55:               bltu         t6, s11, 67f
                  ori          a5, s1, -1819
                  slti         t1, ra, 1691
                  bgeu         t0, sp, 69f
                  addi         a4, t5, 836
                  xor          t0, t6, s8
                  bgeu         s8, ra, 69f
                  addi         s10, s9, -107
                  bgeu         ra, s4, 69f
64:               and          t3, s10, a7
                  sub          s9, t4, s3
                  beq          a2, s1, 68f
67:               slti         t3, s10, 1473
68:               blt          ra, ra, 74f
69:               bgeu         t3, t5, 89f
70:               or           s0, t2, ra
                  or           t5, a0, s6
                  sra          a4, s1, s5
                  add          s7, s0, t2
74:               auipc        t2, 719809
                  add          s1, s1, a2
                  slt          s5, ra, sp
                  blt          s2, a0, 93f
                  or           ra, t5, t4
                  slli         s1, s0, 13
                  sltu         a5, t3, s8
                  xori         s3, ra, -939
                  blt          s2, t6, 90f
                  or           a3, t2, a4
                  bne          a6, s9, 104f
                  xori         s1, sp, -1282
                  xor          s7, a2, s7
                  bltu         a6, s6, 92f
                  bge          a4, a7, 94f
89:               or           a6, t0, s2
90:               sll          a6, tp, s4
                  slti         t0, s8, 1261
92:               sltu         t0, t5, t2
93:               and          gp, s8, s11
94:               srai         gp, t6, 20
                  sub          a4, a3, s3
                  bne          s6, s10, 97f
97:               slt          t0, s10, s11
                  andi         t0, a1, -981
                  add          a7, a4, t2
                  slt          s7, s3, t0
                  slli         gp, sp, 27
                  ori          s2, s11, 733
                  bgeu         sp, t4, 104f
104:              or           t6, a6, a0
                  slt          s7, t5, t3
                  addi         t3, a5, 1712
                  ori          s6, a2, 2041
                  xor          s10, a3, ra
                  srli         t2, gp, 8
                  slli         gp, t3, 28
                  sltiu        zero, a6, -367
                  bgeu         a7, ra, 126f
                  and          t0, a5, s4
                  and          t2, a2, sp
                  slti         a6, s0, -174
                  or           t1, t1, s3
                  bge          zero, s0, 130f
                  nop
                  add          s1, a1, a2
                  sll          t0, tp, s6
                  srl          s8, s7, s2
                  sra          t6, s3, t0
                  addi         s10, a7, -1732
                  bge          tp, s1, 130f
                  bge          s5, s9, 143f
126:              bge          gp, a7, 139f
                  sra          zero, s4, a7
                  xori         sp, s11, -1366
                  xor          s1, a6, s8
130:              srl          gp, s10, zero
                  slti         s6, a1, 319
                  bltu         s11, s0, 138f
                  add          s10, a1, t5
                  bge          t0, gp, 150f
                  beq          s0, a3, 143f
                  bne          t2, s0, 142f
                  srl          s1, a1, a4
138:              srai         a3, s0, 18
139:              srai         a0, gp, 17
                  auipc        t6, 790057
                  slli         s10, t5, 14
142:              beq          a2, s7, 145f
143:              ori          a7, tp, -601
                  andi         a6, s2, 1491
145:              andi         s9, a5, 1961
                  andi         sp, s8, 926
                  or           s1, s9, a6
                  bne          s6, ra, 166f
                  ori          ra, a1, 1651
150:              sll          t0, s10, s8
                  auipc        s4, 928579
                  auipc        t1, 246737
                  auipc        s0, 933697
                  srli         s6, s8, 28
                  srli         sp, t5, 18
                  beq          s0, s0, 165f
                  sub          s1, s11, ra
                  ori          a0, t1, 951
                  slti         s4, t6, -53
                  srai         t0, t0, 27
                  bne          tp, s3, 174f
                  bgeu         t6, t2, 168f
                  lui          t1, 485101
                  addi         a1, t2, -1741
165:              or           a7, a2, s6
166:              nop
                  auipc        t3, 414574
168:              bge          s1, a5, 188f
                  slti         a1, t1, 620
                  ori          a6, s6, 1925
                  add          t3, s6, t6
                  add          s7, s8, s5
                  auipc        s7, 274843
174:              lui          s5, 896485
                  nop
                  auipc        zero, 332635
                  and          t0, s8, ra
                  sltu         a4, t1, t5
                  andi         t3, s9, 422
                  srl          t6, tp, sp
                  bge          t2, zero, 199f
                  blt          s1, gp, 186f
                  and          s0, s6, s8
                  bgeu         t4, t0, 198f
                  and          s9, a4, ra
186:              sra          t1, s7, t6
                  bgeu         s5, a4, 193f
188:              sra          s2, s10, tp
                  sra          sp, s11, s1
                  ori          a6, a1, 724
                  slti         t5, a3, 1310
                  sltiu        a0, s2, 1884
193:              nop
                  blt          tp, a5, 199f
                  srli         s8, t0, 28
                  sub          t5, t6, a4
                  add          s0, a3, s7
198:              slli         a5, s1, 16
199:              slti         s8, s9, 258
                  xor          s8, t6, zero
                  sub          a7, s6, tp
                  slli         a4, s1, 30
                  andi         s2, zero, 1727
                  addi         s10, t0, 664
                  bne          t0, a2, 225f
                  slt          t4, t2, t2
                  sra          sp, ra, s0
                  bne          s11, a0, 221f
                  add          a4, a2, s6
                  and          s7, zero, a1
                  or           gp, t4, sp
                  andi         a6, t0, -1527
                  la           s6, region_0+1341 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a6, 231(s6)
                  sw           zero, 231(s6)
                  lb           a5, 231(s6)
                  sw           t6, 231(s6)
                  sw           s4, 231(s6)
                  slt          t1, zero, a4
                  sw           zero, 231(s6)
                  srl          s10, s9, s4
                  sw           a3, 231(s6)
                  sw           s8, 231(s6)
                  lw           a1, 231(s6)
                  lb           t4, 231(s6)
                  lb           a4, 231(s6)
                  nop
                  lhu          s3, 231(s6)
                  sb           t1, 231(s6)
                  sub          t0, a7, t4
                  sb           t0, 231(s6) #end riscv_load_store_hazard_instr_stream_2
                  slt          s9, s10, t2
                  addi         t0, t2, -607
                  sltu         s10, tp, s9
                  srai         s4, gp, 23
                  sll          s0, zero, s3
                  auipc        s1, 693099
                  sll          s7, s2, sp
                  blt          t2, a3, 234f
221:              lui          t0, 944998
                  add          s1, t0, a4
                  auipc        a1, 422263
                  andi         a3, t4, -159
225:              slt          t4, s4, a3
                  nop
                  slti         s4, s7, -1815
                  bne          s5, sp, 236f
                  bge          s4, s8, 230f
230:              srli         t5, s9, 14
                  bltu         gp, a2, 234f
                  sltiu        a6, s5, -809
                  nop
234:              andi         t0, tp, -1953
                  add          s2, s8, s7
236:              blt          s9, s3, 247f
                  bltu         tp, a3, 253f
                  bne          a6, t2, 246f
                  sub          s8, t5, ra
                  or           t2, a4, s7
                  slt          a6, a2, t0
                  andi         t1, t2, -104
                  slli         s2, s4, 31
                  and          s7, zero, zero
                  slli         s6, s8, 15
246:              blt          t1, s9, 248f
247:              sub          t6, s1, t2
248:              xori         a1, s5, 547
                  bltu         s5, s6, 265f
                  bge          a1, t3, 251f
251:              bgeu         s9, t5, 263f
                  slti         a3, sp, -1264
253:              sll          s10, zero, ra
                  add          a7, a0, t3
                  auipc        s3, 895122
                  srl          s9, t3, s10
                  ori          a7, t5, 1806
                  and          t1, a1, s9
                  nop
                  srli         s7, t3, 23
                  srai         s4, s7, 10
                  srai         a4, t4, 4
263:              sra          s3, s11, s0
                  bge          a3, s0, 270f
265:              nop
                  addi         gp, s2, 1529
                  slti         s9, a4, 1154
                  bne          sp, a4, 279f
                  xor          s0, a6, s8
270:              slti         s3, a7, 1526
                  lui          s9, 925901
                  nop
                  add          s9, s10, s4
                  srai         t6, tp, 20
                  nop
                  andi         s1, sp, -610
                  xor          s2, a1, ra
                  sra          s1, s0, a0
                  la           s8, region_0+174 #start load_store_instr_stream_1
                  la           a0, region_0+1508 #start load_store_instr_stream_0
                  la           a7, region_0+230 #start load_store_instr_stream_3
                  la           t4, region_0+328 #start load_store_instr_stream_2
                  sh           s4, -150(t4)
                  lbu          t6, -56(s8)
                  sb           sp, 59(s8)
                  lbu          s5, 43(s8)
                  lhu          a3, 8(a7)
                  lb           t0, 1442(t4)
                  lb           t2, 40(s8)
                  lbu          s7, 7(a7)
                  lw           s6, 12(a0)
                  lw           s5, -2(a7)
                  lb           a6, 1009(t4)
                  lhu          s4, -16(a0)
                  lb           a3, 7(a0)
                  lbu          s5, -19(s8)
                  lw           t5, 0(a0)
                  lhu          t5, 628(t4)
                  sb           a7, -14(a7)
                  lb           s7, -16(a7) #end load_store_instr_stream_3
                  lb           zero, -10(a0)
                  sb           t6, 144(t4) #end load_store_instr_stream_2
                  lbu          s7, -59(s8) #end load_store_instr_stream_1
                  lbu          t1, 2(a0) #end load_store_instr_stream_0
279:              sra          gp, t6, a4
                  add          sp, s9, a2
                  addi         a3, ra, -26
                  bgeu         s9, t0, 295f
                  slli         a3, a7, 26
                  srli         s6, zero, 20
                  srl          a6, s1, a0
                  ori          sp, s3, 533
                  and          t5, a0, t5
                  bne          a0, t2, 290f
                  bltu         t4, ra, 302f
290:              and          s6, t3, a6
                  xori         a7, s2, 1540
                  sra          a4, a4, a2
                  ori          s3, t3, 75
                  xor          s5, s9, a0
295:              auipc        s10, 409282
                  add          t6, s11, t5
                  sub          s2, a2, a7
                  slti         a6, s3, -53
                  bgeu         a0, ra, 315f
                  xor          gp, a3, ra
                  or           a4, a2, s8
302:              blt          t4, t3, 303f
303:              bne          a4, t5, 311f
                  ori          a4, s4, 391
                  sra          t1, a4, s4
                  blt          s10, s3, 326f
                  srl          a5, a3, s7
                  sll          s6, s2, gp
                  and          s7, a4, s8
                  or           a5, s1, a7
311:              beq          s2, t1, 314f
                  slli         s4, t3, 12
                  slt          s10, s10, sp
314:              nop
315:              or           ra, s10, t0
                  slti         a5, s9, -1538
                  blt          a7, s10, 323f
                  sra          a5, s2, s11
                  andi         t1, t6, 338
                  addi         a5, a3, -1085
                  slti         s10, tp, 826
                  bltu         a5, a1, 328f
323:              slli         a7, s4, 11
                  add          t4, t1, a3
                  lui          s9, 42589
326:              srli         s9, t6, 23
                  blt          a4, t2, 340f
328:              blt          s11, s5, 346f
                  bgeu         s7, t4, 335f
                  slli         s4, a1, 6
                  slli         sp, s6, 2
                  sltu         s0, t6, a4
                  blt          a1, s2, 341f
                  blt          s6, s8, 348f
335:              auipc        t4, 30335
                  bltu         s3, s5, 345f
                  bne          tp, t6, 343f
                  sltu         t3, a4, zero
                  add          a1, ra, t2
340:              sltiu        s6, a1, -1602
341:              ori          a3, s11, -420
                  lui          a1, 16725
343:              blt          s7, s6, 361f
                  bgeu         s8, a5, 360f
345:              auipc        t3, 75943
346:              slt          a1, s0, a2
                  bgeu         a0, a2, 355f
348:              sltu         s7, s6, a1
                  slti         a7, a5, -1127
                  lui          t4, 353003
                  andi         t6, ra, 910
                  xori         a3, s6, -1099
                  nop
                  bge          s3, t3, 368f
355:              lui          s1, 95334
                  sra          s4, t1, s10
                  slti         s1, s3, 1115
                  xori         a4, t2, 1148
                  ori          a5, a1, 577
360:              slt          a1, s7, s6
361:              bgeu         s4, s7, 381f
                  slt          a7, t4, s1
                  sra          a5, a3, t5
                  addi         s4, s3, -1895
                  sll          s7, a2, t0
                  or           s10, t5, a6
                  and          t6, a0, s10
368:              srli         s6, s9, 30
                  srl          t0, t5, sp
                  srai         t1, s4, 17
                  srai         a4, a0, 10
                  sltu         s2, s10, a5
                  auipc        a1, 501769
                  andi         t1, sp, 1953
                  srl          t0, s8, s8
                  blt          s3, t6, 377f
377:              ori          s6, t5, 1107
                  sltu         a5, a5, t5
                  lui          a1, 134057
                  srli         a7, s11, 24
381:              slt          s3, s4, t3
                  xor          t5, s4, t0
                  lui          t1, 450320
                  bne          a2, s7, 390f
                  beq          t5, t2, 389f
                  slt          t3, s3, zero
                  srli         t2, sp, 3
                  slti         s10, s9, 1338
389:              slli         s9, t5, 30
390:              sll          t1, s3, a5
                  ori          gp, t2, -335
                  and          zero, a4, t4
                  blt          s0, sp, 409f
                  srli         sp, ra, 5
                  slli         a5, t6, 6
                  addi         t0, s4, -505
                  sub          a5, s1, a7
                  bne          t0, a1, 403f
                  and          zero, t0, s2
                  xor          gp, sp, t4
                  beq          zero, sp, 413f
                  sltiu        t5, s6, -281
403:              bltu         s8, t3, 406f
                  ori          s2, a7, 578
                  srli         a3, a0, 7
406:              xor          a6, t1, gp
                  sub          s1, s10, s0
                  srli         s9, zero, 20
409:              auipc        a3, 276955
                  bltu         a5, a7, 419f
                  sltu         a7, s10, s8
                  sltu         t2, s1, s0
413:              xori         t5, gp, 933
                  bge          a3, a3, 425f
                  srl          s7, s6, t4
                  or           a6, a6, s6
                  and          s8, a4, t6
                  beq          a7, a4, 424f
419:              beq          a3, s7, 431f
                  srl          gp, sp, s9
                  sltiu        s4, sp, 1123
                  nop
                  slt          t4, t2, s4
424:              bltu         s11, sp, 430f
425:              sll          a3, a7, s9
                  sra          s5, a0, a4
                  sub          s2, t6, s5
                  slt          a6, a4, a5
                  slti         sp, s6, -1773
430:              bge          a6, s3, 446f
431:              bltu         t3, s10, 433f
                  sll          a6, s6, t5
433:              bge          t4, s10, 437f
                  srli         s3, t6, 14
                  srli         gp, t1, 28
                  srai         a7, t5, 3
437:              and          s10, tp, s9
                  beq          gp, t0, 452f
                  bne          t0, t0, 452f
                  bne          s5, s0, 441f
441:              xor          a6, a7, a0
                  lui          t4, 81151
                  auipc        gp, 906779
                  nop
                  xor          s1, s10, s7
446:              andi         a4, t5, -1906
                  sltu         s1, s2, t4
                  la           t1, region_1+653 #start riscv_load_store_hazard_instr_stream_0
                  sb           a2, 1254(t1)
                  lbu          a3, -529(t1)
                  sh           s7, -529(t1)
                  lh           t2, -529(t1)
                  sb           t3, -529(t1)
                  slti         s8, t4, 1994
                  lb           s2, 592(t1)
                  sltu         t0, t1, sp
                  lbu          a3, 592(t1)
                  sb           t1, 592(t1)
                  lb           s8, 592(t1)
                  lh           gp, 679(t1)
                  slt          t5, s7, s4
                  lh           zero, -139(t1)
                  lbu          a4, -139(t1)
                  sw           s2, 515(t1)
                  sra          s7, s6, a7
                  lb           s1, 515(t1) #end riscv_load_store_hazard_instr_stream_0
                  slli         s0, ra, 29
                  nop
                  lui          t4, 124013
                  lui          zero, 20645
452:              bltu         a5, s11, 455f
                  blt          t3, s3, 456f
                  sra          a1, s3, t4
455:              blt          ra, s1, 461f
456:              srai         s7, a3, 14
                  srl          s2, tp, tp
                  slt          a6, a3, a0
                  bgeu         t6, s7, 465f
                  andi         zero, s10, -709
461:              srl          t4, s5, s6
                  xor          s9, t3, sp
                  sll          s3, t2, t0
                  sra          s0, s7, t1
465:              sltiu        s3, tp, -1509
                  bne          t6, sp, 474f
                  auipc        s1, 98946
                  sra          a0, a6, t2
                  sll          t1, s4, a5
                  srai         t4, gp, 21
                  bne          t5, s1, 491f
                  xori         a7, s2, 804
                  slli         a5, t0, 11
474:              sltiu        s10, t2, -469
                  xor          s0, s2, s5
                  andi         s3, t5, 606
                  xori         gp, t5, 855
                  lui          t2, 85207
                  xori         t5, s4, -701
                  bgeu         s3, s4, 496f
                  slti         ra, t5, -1294
                  slli         s3, t6, 21
                  sll          a1, s2, zero
                  sub          s9, s4, a5
                  sub          s2, t4, t0
                  bgeu         ra, a4, 502f
                  xori         a5, s11, 1162
                  andi         a5, a0, -592
                  bgeu         t6, a5, 490f
490:              nop
491:              nop
                  xori         a3, t5, -763
                  srai         s8, zero, 14
                  sltiu        a7, sp, -308
                  and          a5, s9, a5
496:              srai         s7, t0, 20
                  or           s8, s4, ra
                  sll          a6, s10, s6
                  lui          s9, 947135
                  bltu         t2, sp, 508f
                  andi         gp, ra, -575
502:              xori         s6, a5, -1020
                  addi         s10, a4, -235
                  sltu         s1, s10, s1
                  beq          s6, sp, 519f
                  srai         a0, s4, 18
                  ori          s7, s8, 166
508:              sub          s1, s4, t2
                  bne          s11, a4, 514f
                  bne          s4, tp, 518f
                  auipc        t1, 693131
                  slli         zero, t4, 5
                  nop
514:              and          a0, sp, s10
                  andi         t6, t3, -894
                  sltiu        zero, s8, -216
                  srl          gp, a2, t1
518:              auipc        a7, 344833
519:              beq          s6, t4, 539f
                  beq          t0, a7, 538f
                  xor          s0, s8, zero
                  srl          a1, a6, sp
                  slt          s9, a4, s3
                  sll          s2, gp, s9
                  nop
                  slt          a4, a5, a3
                  beq          t2, t0, 545f
                  slt          s8, a5, t5
                  andi         t5, gp, 1796
                  andi         zero, t3, -1193
                  nop
                  beq          s2, a1, 545f
                  srai         a4, a0, 7
                  andi         s10, s3, -215
                  sub          s6, s5, a6
                  bge          a2, s11, 542f
                  ori          a6, a6, 359
538:              lui          a1, 184321
539:              sub          t2, s3, s3
                  srl          t6, a6, s1
                  srli         a4, zero, 25
542:              bne          ra, s2, 555f
                  sra          t6, s11, s7
                  or           zero, sp, a6
545:              add          a4, t4, a6
                  add          s6, t0, s6
                  blt          s6, a6, 553f
                  blt          a2, s1, 550f
                  bltu         s3, s5, 552f
550:              srl          a5, a4, zero
                  bltu         ra, a7, 559f
552:              bgeu         t3, a7, 556f
553:              bne          a7, a2, 566f
                  xori         a7, s2, -1444
555:              sltiu        t3, a1, 1825
556:              bge          s7, s4, 569f
                  and          s9, a2, a2
                  beq          a0, tp, 563f
559:              slti         t2, s3, 924
                  xori         s1, a7, 605
                  beq          t3, a4, 577f
                  ori          sp, tp, -1667
563:              srl          s8, t1, s3
                  slt          a5, s8, t6
                  slt          s6, ra, zero
566:              sltiu        s3, a0, -1264
                  or           s4, a2, s2
                  addi         s8, t3, -328
569:              xor          s6, gp, a0
                  slli         s9, sp, 10
                  sltu         a3, s11, s4
                  ori          s0, s11, -718
                  addi         t6, a7, 1474
                  lui          s10, 95232
                  lui          s7, 849560
                  add          s4, a6, t3
577:              sltiu        s8, a7, 460
                  addi         a3, a1, -597
                  slt          t1, s5, s11
                  slli         s6, s2, 20
                  srli         a7, s2, 4
                  xori         t4, s5, 533
                  bltu         s8, gp, 595f
                  and          zero, s6, s3
                  andi         a4, zero, 562
                  sll          s3, s0, s7
                  srai         s7, a6, 30
                  sltiu        s9, s10, -1921
                  or           s9, a3, a1
                  beq          t4, s3, 596f
                  sub          t2, zero, a6
                  or           s2, t6, a0
                  xor          a7, sp, t2
                  slli         a3, a2, 17
595:              bge          s5, s7, 598f
596:              sub          s1, t1, s1
                  srli         t2, ra, 0
598:              bne          ra, a0, 606f
                  auipc        t1, 545239
                  blt          s1, a3, 618f
                  and          zero, gp, t3
                  nop
                  or           a3, a0, s3
                  bne          t1, ra, 605f
605:              bgeu         t1, gp, 623f
606:              sll          s3, s4, s6
                  and          sp, t3, s1
                  xor          sp, a5, t1
                  auipc        s9, 999648
                  srai         a1, s8, 17
                  slti         s1, t4, 1996
                  slli         ra, ra, 10
                  slt          t1, t3, s11
                  bge          s3, s11, 627f
                  srl          a6, a2, s4
                  bgeu         a5, s4, 630f
                  srai         s6, a3, 1
618:              sub          a5, t1, t3
                  sltu         t2, s10, s10
                  add          a1, s0, t1
                  srl          t5, s9, ra
                  bltu         sp, t3, 623f
623:              bge          s4, zero, 634f
                  bne          s10, s8, 630f
                  xor          t3, sp, zero
                  bne          s8, a3, 632f
627:              nop
                  beq          t6, s11, 636f
                  ori          t1, s1, -975
630:              sltiu        t5, s7, -1416
                  auipc        t2, 756750
632:              xori         s9, t5, -394
                  bge          s1, a4, 653f
634:              srl          a5, s3, gp
                  bge          s11, t0, 651f
636:              bne          a7, t1, 652f
                  srli         a4, a7, 13
                  bltu         t0, s1, 652f
                  bltu         t4, a1, 645f
                  sra          t1, a4, s4
                  srl          t2, s0, a5
                  slli         a4, t5, 7
                  xori         t3, a7, 1180
                  srai         t6, s7, 3
645:              xor          ra, gp, s0
                  srli         s5, s6, 28
                  addi         sp, t6, -1885
                  srli         a5, t1, 28
                  auipc        a0, 1044913
                  xor          s1, s8, t5
651:              blt          a1, tp, 660f
652:              nop
653:              xori         t2, a5, -471
                  bge          s6, t5, 674f
                  or           a6, t6, t3
                  nop
                  sra          a0, a7, a1
                  sll          s10, s6, t1
                  slli         t6, sp, 18
660:              sltu         t2, a1, a7
                  add          s0, a3, s6
                  sra          s3, a3, a5
                  sub          a6, t6, sp
                  nop
                  or           s9, t5, s7
                  xori         a1, a4, 2044
                  sltu         s5, a0, s9
                  auipc        t6, 157675
                  bne          t3, a7, 670f
670:              srl          gp, s3, t2
                  auipc        s6, 558028
                  sra          a3, s5, s4
                  srl          s7, a4, tp
674:              blt          a7, s3, 686f
                  xor          t0, t5, s2
                  sltiu        sp, a6, -404
                  slli         a4, s9, 0
                  ori          s5, a1, -1520
                  blt          s9, s11, 685f
                  slt          a6, a1, t6
                  sll          s8, s1, s0
                  ori          s8, s8, 407
                  slli         s6, ra, 1
                  xori         a4, t2, 1837
685:              bne          s7, a1, 693f
686:              andi         a0, s8, 1470
                  lui          sp, 154143
                  addi         zero, s9, -1917
                  beq          tp, s6, 702f
                  sub          a7, a2, zero
                  blt          a7, a7, 711f
                  sltu         sp, a6, tp
693:              ori          s5, a7, 1223
                  and          s5, a2, t6
                  srl          t1, s9, a4
                  ori          s8, s3, -945
                  xori         s2, t2, -97
                  srli         t1, t0, 18
                  bge          s3, s2, 717f
                  add          s0, t6, s8
                  sll          a1, s4, gp
702:              ori          t6, t1, 597
                  bne          s3, ra, 711f
                  sltiu        s7, s6, -37
                  xori         a7, s2, 229
                  auipc        s2, 658117
                  sltu         s0, s6, t1
                  beq          t6, s2, 724f
                  srli         s1, a6, 5
                  sltiu        t4, s6, 1292
711:              sll          t4, s0, s2
                  ori          a5, tp, 1334
                  sra          s8, a3, a2
                  and          a4, t3, s3
                  ori          a1, sp, 1403
                  srai         s2, t1, 21
717:              srai         s9, s10, 11
                  lui          a1, 461777
                  blt          t1, a3, 725f
                  slt          s4, s5, zero
                  blt          sp, a0, 735f
                  add          a5, s0, t6
                  sll          s3, s3, a7
724:              srli         a1, s5, 1
725:              srl          t5, s10, a7
                  srl          t4, ra, s3
                  bltu         s0, s0, 745f
                  sll          t1, s5, a6
                  srli         a3, s4, 11
                  sltu         a7, zero, a5
                  bgeu         gp, a6, 733f
                  bltu         a1, s4, 735f
733:              bge          s3, tp, 734f
734:              and          t0, t3, ra
735:              and          t1, a5, s0
                  sub          a0, t2, t4
                  ori          t2, a7, -32
                  bne          s5, s0, 754f
                  srai         zero, zero, 13
                  and          t0, gp, s6
                  sub          a1, s9, t4
                  bne          t2, t0, 756f
                  srli         gp, s7, 24
                  blt          s3, sp, 753f
745:              and          s7, a0, t4
                  sltu         s9, s8, a0
                  blt          a1, t0, 767f
                  add          t0, t4, s8
                  sra          s0, t2, gp
                  sra          a1, tp, t2
                  srli         t0, sp, 13
                  xor          a0, a0, s6
753:              beq          s7, sp, 766f
754:              beq          s3, t6, 760f
                  sub          s3, s11, s3
756:              sra          sp, sp, s0
                  slt          s4, s9, t4
                  bne          s9, t0, 764f
                  sll          sp, ra, s3
760:              or           s10, s9, s10
                  ori          s2, s8, -113
                  auipc        s0, 452236
                  slli         a0, t1, 13
764:              and          s4, ra, t5
                  beq          a7, tp, 771f
766:              srl          s9, s4, s0
767:              add          t0, a7, s6
                  xori         s0, t5, 493
                  or           t1, a4, t4
                  bgeu         s3, t6, 777f
771:              slti         s3, t5, 1062
                  srl          t5, s1, t1
                  slti         s7, s8, -263
                  andi         a6, sp, -1094
                  add          t5, ra, a0
                  xor          t2, s5, s10
777:              sltiu        t2, ra, 1421
                  lw           t1, 4(a2)
                  slli         a5, s6, 5
                  nop
                  andi         a6, t0, 1887
                  xor          s5, s11, ra
                  and          s1, zero, t0
                  addi         a2, a2, 20
                  srai         a5, s6, 8
                  ori          s5, s6, 79
                  lui          ra, 909710
1431:             addi x25, x6, 0
1431:             jalr x25, x25, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x4, x12, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x28, 0x3 # BREAKPOINT
                  beq x24, x28, ebreak_handler
                  li x28, 0x8 # ECALL_UMODE
                  beq x24, x28, ecall_handler
                  li x28, 0x9 # ECALL_SMODE
                  beq x24, x28, ecall_handler
                  li x28, 0xb # ECALL_MMODE
                  beq x24, x28, ecall_handler
                  li x28, 0x1
                  beq x24, x28, instr_fault_handler
                  li x28, 0x5
                  beq x24, x28, load_fault_handler
                  li x28, 0x7
                  beq x24, x28, store_fault_handler
                  li x28, 0xc
                  beq x24, x28, pt_fault_handler
                  li x28, 0xd
                  beq x24, x28, pt_fault_handler
                  li x28, 0xf
                  beq x24, x28, pt_fault_handler
                  li x28, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x28, illegal_instr_handler
                  csrr x28, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x12, x4, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
