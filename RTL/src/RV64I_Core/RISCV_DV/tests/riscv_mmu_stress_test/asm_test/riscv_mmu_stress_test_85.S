.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0xff68bded
                  li x3, 0x80000000
                  li x4, 0xe2236ef5
                  li x5, 0x0
                  li x6, 0xfef8bb1f
                  li x7, 0xb
                  li x8, 0x0
                  li x9, 0x544a6ec2
                  li x10, 0x6
                  li x11, 0x3d961c8b
                  li x12, 0xfe4fba16
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x3
                  li x16, 0x6
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x782f7b8b
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x990dcbc7
                  la x27, user_stack_end
main:             and          t1, t1, gp
                  la           s0, sub_2
                  addi         s0, s0, -546
                  auipc        t1, 758467
                  sll          s10, s9, zero
                  auipc        s10, 288281
                  bge          a7, s3, main_j3 #branch to jump instr
                  slt          a5, t0, a3
                  and          a7, a3, s0
                  slt          t4, gp, sp
                  and          s8, s9, s1
                  slti         zero, gp, -203
main_j3:          jalr         t3, s0, 547 #jump main -> sub_2
                  la           t0, region_0+826 #start load_store_instr_stream_1
                  la           t2, region_0+515 #start load_store_instr_stream_0
                  sb           s0, 67(t0)
                  sb           ra, -160(t0)
                  lh           s1, 96(t0)
                  sh           s9, 39(t2)
                  sb           sp, 14(t2)
                  sw           a4, -118(t0)
                  sb           a4, -115(t0)
                  lbu          s2, 12(t2)
                  sb           tp, 52(t2)
                  sb           t6, 63(t0)
                  sh           s4, -176(t0)
                  lhu          gp, -176(t0) #end load_store_instr_stream_1
                  lbu          zero, 40(t2) #end load_store_instr_stream_0
                  la           a7, region_0+1357 #start riscv_load_store_hazard_instr_stream_0
                  lw           a0, 639(a7)
                  sh           sp, -693(a7)
                  lhu          a1, -565(a7)
                  lb           a1, -565(a7)
                  sh           t3, -565(a7)
                  sb           s6, 432(a7)
                  sll          a3, s9, t4
                  lb           gp, 432(a7)
                  lbu          s6, -1138(a7)
                  lbu          gp, -1046(a7)
                  sb           s3, -1046(a7)
                  sb           s0, -648(a7)
                  lbu          s3, -778(a7)
                  sub          s3, s4, s10
                  lbu          t6, -778(a7)
                  lb           s7, -38(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1853 #start riscv_load_store_rand_instr_stream_0
                  sb           tp, 8(sp)
                  xor          a7, s6, ra
                  sw           s6, -13(sp)
                  lbu          t0, 7(sp)
                  lb           a6, 4(sp)
                  srai         t5, t1, 19
                  xori         a7, zero, 714
                  srli         a0, s2, 28
                  lhu          s7, 13(sp)
                  srl          s0, s7, a2
                  sub          s9, a7, s0
                  sh           s9, -7(sp)
                  or           gp, s1, a0
                  xor          a3, a1, a6
                  or           a3, a4, s10
                  lbu          s5, -10(sp)
                  andi         gp, s6, -185
                  lb           zero, -2(sp)
                  or           s7, t1, t6
                  srai         t0, t4, 0
                  lb           s9, 2(sp)
                  or           zero, t4, zero
                  lbu          a1, 8(sp) #end riscv_load_store_rand_instr_stream_0
                  srai         a5, t2, 2
                  bltu         s2, t2, 19f
                  bgeu         a6, t5, 9f
                  auipc        t3, 997771
                  bgeu         a2, s0, 7f
                  lui          a3, 921168
                  srl          s3, s7, s7
7:                srl          a0, s2, t0
                  blt          t2, s7, 21f
9:                slt          s6, t3, s3
                  nop
                  srai         t3, t4, 12
                  add          a4, s9, a1
                  beq          a6, s4, 27f
                  slti         t6, gp, 1951
                  slli         t3, s11, 15
                  sll          t0, s11, t4
                  auipc        a4, 593539
                  nop
19:               xori         t4, a4, 1146
                  andi         a1, t1, -1811
21:               xor          s10, s9, a5
                  sltiu        t4, t4, -480
                  sra          a7, t4, t2
                  or           t6, a1, s9
                  add          sp, s3, s9
                  bge          ra, s10, 38f
27:               xori         t5, a2, -538
                  andi         a4, s6, 1619
                  and          a0, tp, s6
                  sltu         t5, s10, s0
                  and          a6, t1, s11
                  blt          s10, t2, 43f
                  ori          t3, t2, 1711
                  add          a6, t4, gp
                  bne          s6, a7, 51f
                  andi         s10, sp, -414
                  addi         a7, s6, 10
38:               addi         a4, a3, -355
                  lui          s5, 894614
                  bne          t5, a1, 42f
                  xori         a1, sp, -1370
42:               addi         s8, a5, 1475
43:               or           t1, a1, t2
                  ori          s3, a1, 353
                  or           t5, t4, s10
                  la           a1, sub_1
                  slti         s8, s11, 841
                  add          a5, a7, t2
                  addi         a1, a1, 15
                  andi         t2, s3, 728
                  lui          a4, 408245
                  slti         zero, a0, 564
main_j1:          jalr         t3, a1, -14 #jump main -> sub_1
                  sll          a2, a1, s11
                  sub          ra, ra, s1
                  xori         s1, a2, -109
                  la           gp, sub_2
                  slli         s1, s1, 30
                  addi         gp, gp, -758
                  or           t3, s10, a2
                  slti         a1, a3, -1781
                  nop
                  auipc        ra, 3357
                  slt          t5, s9, s9
                  or           t0, a1, t0
main_j2:          jalr         t3, gp, 758 #jump main -> sub_2
                  addi         zero, s9, 1574
                  bltu         s7, a0, 56f
                  sltu         a3, zero, s10
                  auipc        a1, 781541
                  srl          t6, t3, s0
                  sltiu        a7, sp, 1159
51:               xori         s5, a1, -1862
                  sra          a0, a1, s6
                  auipc        s0, 92241
                  bgeu         ra, t2, 69f
                  add          s5, ra, tp
56:               andi         s6, a3, -488
                  lui          s2, 71394
                  lui          s9, 502862
                  auipc        t5, 864833
                  addi         a6, s0, 1716
                  slti         s7, s11, -1659
                  xor          s3, t4, t0
                  add          t3, s2, s1
                  xori         a0, s1, 990
                  srai         s1, s6, 10
                  add          s5, t4, a4
                  slli         s1, s11, 16
                  andi         a5, t2, -939
69:               addi         a4, t1, -1466
                  beq          ra, s1, 72f
                  sra          t5, s0, s8
72:               sra          s8, a7, a7
                  xor          s7, a7, a0
                  beq          a6, s11, 83f
                  andi         s2, s9, 723
                  sll          ra, t6, a0
                  srli         zero, sp, 2
                  lui          a7, 718074
                  bltu         a1, t3, 84f
                  bltu         t0, s7, 84f
                  sub          s9, t2, s8
                  slli         a7, s9, 11
83:               blt          s7, s3, 84f
84:               sra          gp, a0, gp
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bgeu         gp, s6, sub_1_stack_p
                  add          a7, t1, t6
                  ori          s9, ra, -1127
sub_1_stack_p:    addi         s11, s11, -20
                  sub          a6, t2, tp
                  slt          sp, zero, a3
                  sw           t3, 4(s11)
                  slli         t1, tp, 31
                  xor          zero, s4, s10
                  xori         s1, a0, -1667
                  or           s5, a3, s7
                  nop
                  la           s5, region_1+917 #start riscv_load_store_rand_instr_stream_3
                  sb           tp, -310(s5)
                  sll          s7, t0, s8
                  sb           t1, 764(s5)
                  nop
                  or           t0, s0, t4
                  sh           a7, 473(s5)
                  xori         a6, a0, -1235
                  lb           s10, 129(s5)
                  slli         t3, a7, 4
                  srai         t5, gp, 20
                  sw           a6, 1043(s5)
                  lb           t4, 149(s5)
                  sltiu        t6, t1, -1088
                  srai         s10, ra, 23
                  sb           s1, 309(s5)
                  lbu          a5, 370(s5)
                  sb           a6, -321(s5)
                  lbu          zero, -420(s5)
                  srai         a0, t0, 16
                  sll          t4, a5, t4
                  slli         s6, gp, 2
                  lbu          t1, -588(s5)
                  or           t0, s9, s8
                  lb           a3, 98(s5)
                  lb           s1, 1000(s5)
                  auipc        t0, 507936
                  xor          a7, s4, a0
                  lh           s6, -565(s5)
                  lb           sp, 146(s5)
                  sb           s4, 959(s5)
                  sb           a0, 108(s5)
                  xor          a3, t6, zero
                  sh           s6, 345(s5)
                  nop
                  lbu          s2, 561(s5)
                  sub          a7, s0, a5
                  sh           a0, 1043(s5)
                  lbu          a4, -280(s5)
                  lhu          s8, 925(s5)
                  and          s0, a3, s10
                  sb           ra, 54(s5)
                  sltiu        t3, s1, 1137
                  slt          a5, t1, t2
                  sh           t1, -561(s5)
                  slti         t1, s9, -366
                  sll          a4, a2, a0
                  sub          sp, a3, a2
                  sb           a2, -8(s5)
                  lbu          s9, -164(s5) #end riscv_load_store_rand_instr_stream_3
                  la           t3, region_0+1326 #start riscv_load_store_rand_instr_stream_4
                  srai         s10, t0, 0
                  lb           zero, -755(t3)
                  lui          ra, 703588
                  nop
                  sub          a0, s5, t2
                  lb           s6, -885(t3)
                  lb           a3, -151(t3)
                  lbu          a7, -13(t3)
                  add          t5, t0, a5
                  lb           s9, -190(t3)
                  lbu          s7, -256(t3)
                  auipc        a1, 755221
                  sra          t5, tp, t5
                  slt          t2, ra, a4
                  lhu          t5, 286(t3)
                  sw           t1, -1298(t3)
                  slli         a0, a6, 30
                  ori          s0, ra, 1852
                  lui          a2, 751545
                  nop
                  auipc        s6, 1000069
                  lb           s8, -299(t3)
                  lb           s1, -626(t3)
                  nop
                  lb           s9, -1159(t3)
                  sltiu        s10, s0, 441
                  lb           s7, -818(t3)
                  lb           s7, 279(t3)
                  srl          a4, s0, t4
                  lbu          s10, -1253(t3)
                  ori          t6, gp, -349
                  nop
                  srai         ra, s11, 23
                  xor          t0, a3, sp
                  auipc        a2, 435610
                  sub          s0, t4, a2
                  lb           s1, 173(t3) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_1+340 #start load_store_instr_stream_1
                  la           s5, region_1+278 #start load_store_instr_stream_0
                  lbu          t0, 51(s5)
                  sb           t1, 11(s7)
                  sw           sp, 8(s7)
                  sh           s2, -16(s5)
                  lhu          a1, 26(s5)
                  sh           t1, 0(s7)
                  lb           s3, -61(s5)
                  sb           t6, -4(s7)
                  lhu          s6, -6(s7)
                  lbu          s9, -27(s5)
                  lb           s2, 3(s7)
                  sh           a5, 0(s7) #end load_store_instr_stream_1
                  lbu          a1, 17(s5) #end load_store_instr_stream_0
                  la           ra, region_0+1544 #start riscv_load_store_rand_instr_stream_0
                  sh           a3, 14(ra)
                  lbu          s2, 13(ra)
                  lhu          a1, -6(ra)
                  or           s2, s9, s10
                  sltu         s8, t6, s10
                  auipc        s2, 554575
                  sra          t4, t6, t4
                  sb           s7, 10(ra)
                  lb           a5, 11(ra)
                  sb           s0, -3(ra)
                  sb           t3, -3(ra)
                  sltu         t6, a1, a6
                  lhu          t6, 16(ra)
                  sltiu        a7, s9, -1913
                  lbu          sp, -13(ra)
                  lb           s1, -3(ra)
                  lhu          zero, 0(ra)
                  sub          a5, s7, t4
                  and          a5, t2, s9
                  sb           s7, 14(ra)
                  lw           s7, -16(ra)
                  sub          a0, a2, t0
                  lh           a4, 12(ra)
                  srli         t5, s1, 26
                  lhu          zero, 16(ra)
                  sb           ra, 9(ra)
                  and          a3, s9, s11
                  lui          t1, 770320
                  lb           s2, -13(ra)
                  srli         t4, t4, 8
                  auipc        s0, 777149
                  auipc        t5, 860233
                  sub          sp, s4, t1
                  lb           a6, -3(ra)
                  nop
                  andi         t2, a6, -1999
                  xori         s10, t3, -2010
                  sw           s4, -16(ra) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+599 #start riscv_load_store_hazard_instr_stream_4
                  sb           t1, 2(a5)
                  lb           s8, -47(a5)
                  lbu          s9, 38(a5)
                  lb           a4, 38(a5)
                  sh           t1, -39(a5)
                  lb           s7, 43(a5)
                  lhu          t4, -49(a5)
                  xor          a0, t1, a2
                  and          s5, a3, t3
                  sll          t4, t4, a7
                  lh           a7, -49(a5)
                  add          s6, s4, a1
                  lbu          t1, -49(a5)
                  sh           a5, -49(a5)
                  andi         a0, s11, 1187
                  lbu          s1, 60(a5)
                  lb           s1, 58(a5)
                  lb           s7, -54(a5) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_1+381 #start riscv_load_store_rand_instr_stream_1
                  lh           t6, 13(sp)
                  sb           a0, 5(sp)
                  slti         t2, ra, -1074
                  lhu          t2, 23(sp)
                  ori          t6, a2, -1771
                  sh           a6, -17(sp)
                  lw           a7, -1(sp)
                  srl          t5, gp, t1
                  lb           t6, 1(sp)
                  addi         t6, a4, -1647
                  srai         s10, a5, 7
                  xor          t5, s6, a0
                  sra          a7, a0, tp
                  sltu         s7, a0, s9
                  ori          t4, t5, -1396
                  srl          s8, t1, s7
                  xor          t1, a0, a4
                  slt          a7, s7, a1
                  sltiu        s8, s11, 1760
                  sw           a4, 59(sp)
                  or           s3, ra, a3
                  ori          t1, a1, -2038
                  lbu          a1, 9(sp)
                  add          t4, t2, a5
                  lb           s8, -60(sp)
                  sw           s10, 31(sp)
                  sll          t0, s1, a4
                  sll          s6, a6, s5
                  lh           t3, -39(sp)
                  sw           a0, 11(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+157 #start riscv_load_store_hazard_instr_stream_1
                  srli         t0, a2, 13
                  sb           a1, 34(a1)
                  lhu          s10, 1821(a1)
                  add          s2, s5, zero
                  lhu          t6, 1821(a1)
                  addi         a2, s10, -1636
                  andi         s9, t5, -749
                  lbu          t4, 1821(a1)
                  sll          sp, tp, tp
                  lbu          t0, 1498(a1)
                  sb           s10, 1498(a1)
                  lbu          t4, 1498(a1)
                  sb           sp, 1498(a1)
                  lbu          t0, -32(a1)
                  lb           s7, -32(a1) #end riscv_load_store_hazard_instr_stream_1
                  la           t0, region_0+1910 #start load_store_instr_stream_3
                  la           a7, region_0+1100 #start load_store_instr_stream_0
                  sb           s10, -1319(t0)
                  la           t1, region_0+705 #start load_store_instr_stream_2
                  la           s9, region_0+1582 #start load_store_instr_stream_1
                  sb           s10, 2(t1)
                  lbu          a5, 34(s9)
                  lbu          a1, -13(a7)
                  lbu          t2, 12(t1)
                  lbu          s5, -7(a7)
                  sb           t5, -1070(t0)
                  sh           t5, 40(s9)
                  lbu          a3, 1(t1)
                  lb           a3, -407(t0)
                  lhu          a0, -168(t0)
                  lb           s8, 9(s9)
                  sb           s0, -1547(t0)
                  lbu          s0, -5(t1)
                  sh           t5, -7(t1)
                  sb           t4, 188(s9)
                  lb           zero, -14(t1)
                  lh           s7, 2(a7)
                  lb           a3, 6(a7)
                  sb           a3, 8(t1)
                  lbu          sp, -1734(t0)
                  sb           gp, -203(s9)
                  lbu          gp, 8(a7)
                  lhu          t4, -176(s9)
                  sb           s0, -981(t0)
                  lh           s10, 9(t1)
                  lb           t5, 7(s9)
                  lbu          gp, -143(t0)
                  sb           t4, 16(a7)
                  lbu          s3, 11(t1)
                  lh           s0, -382(t0)
                  sh           t5, 0(a7)
                  lb           s5, -8(t1) #end load_store_instr_stream_2
                  sb           sp, -21(s9) #end load_store_instr_stream_1
                  lbu          a5, -9(a7)
                  lbu          s2, -904(t0) #end load_store_instr_stream_3
                  lb           a4, -16(a7) #end load_store_instr_stream_0
                  la           sp, region_0+1814 #start riscv_load_store_rand_instr_stream_2
                  lbu          s0, 121(sp)
                  xori         a4, a5, 755
                  andi         a2, s11, 1089
                  addi         s7, gp, -510
                  sb           sp, 17(sp)
                  slt          zero, t0, s4
                  lb           a2, -51(sp)
                  slti         a2, a1, -797
                  nop
                  lbu          s8, -219(sp)
                  sub          t5, t1, s7
                  ori          a3, a1, 456
                  lbu          a2, 145(sp)
                  lb           a4, 123(sp)
                  addi         t3, s8, 495
                  lb           s0, -17(sp)
                  slli         a7, a3, 5
                  xori         s10, s0, -1222
                  sb           a2, 132(sp)
                  sw           t6, 62(sp)
                  xor          a7, ra, t0
                  slt          t4, a0, s11
                  and          a3, a1, a1
                  addi         t0, t3, 1224
                  xor          s9, a2, zero
                  lhu          t6, -216(sp)
                  lb           s8, 83(sp)
                  lb           t5, 63(sp)
                  sra          a5, a1, zero
                  lhu          a2, 4(sp)
                  slli         a5, s10, 10
                  lbu          s5, -235(sp)
                  sltu         t4, s9, t3
                  sb           s10, -239(sp)
                  slt          s2, s10, t5
                  sb           a4, -179(sp)
                  andi         s1, s5, -1785
                  srai         a5, s0, 9
                  srai         a4, a1, 10
                  srai         t6, s8, 7
                  sb           a2, -80(sp)
                  lbu          s5, -121(sp)
                  auipc        s0, 234326
                  lbu          a0, -79(sp)
                  xor          t5, s0, s4
                  lbu          t6, 125(sp)
                  lbu          s6, 131(sp)
                  sltiu        s0, s10, 294
                  ori          t5, s11, 764
                  sh           s6, 118(sp)
                  sw           s4, -70(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+250 #start riscv_load_store_hazard_instr_stream_2
                  sb           ra, 10(s9)
                  sb           a1, 10(s9)
                  lhu          s8, 10(s9)
                  sb           zero, 10(s9)
                  sll          s7, a5, t6
                  sh           t2, 10(s9)
                  lb           t0, 10(s9)
                  lbu          a6, 8(s9)
                  sb           s8, 8(s9)
                  sh           a1, 8(s9)
                  andi         s10, s6, 236
                  sh           a3, 8(s9) #end riscv_load_store_hazard_instr_stream_2
                  la           s9, region_0+280 #start riscv_load_store_hazard_instr_stream_3
                  lw           a3, 1348(s9)
                  lbu          a1, 823(s9)
                  sb           a0, 286(s9)
                  lbu          t0, 286(s9)
                  lhu          zero, 286(s9)
                  lb           a2, 286(s9)
                  lb           s10, 286(s9)
                  lb           a6, 1649(s9)
                  sub          s8, s11, s5
                  lbu          t1, 1649(s9)
                  sb           a4, 1649(s9)
                  lb           s2, 1649(s9) #end riscv_load_store_hazard_instr_stream_3
                  la           a5, region_0+32 #start load_store_instr_stream_2
                  sb           gp, 19(a5)
                  la           t2, region_0+1663 #start load_store_instr_stream_0
                  lbu          a6, 242(a5)
                  la           s0, region_0+327 #start load_store_instr_stream_1
                  sh           t3, 3(t2)
                  lb           a7, -16(t2)
                  sb           a3, -11(t2)
                  lb           s7, 245(a5)
                  lbu          a0, 240(s0)
                  lw           gp, -32(a5)
                  lb           t5, -324(s0)
                  lb           s3, 897(s0)
                  lb           s8, 170(a5)
                  lhu          a0, -3(t2)
                  lbu          s5, -18(a5)
                  lbu          s7, 122(a5)
                  lb           t5, 432(s0)
                  lb           s9, 896(s0)
                  sb           t6, 807(s0)
                  sb           a0, 88(a5)
                  sh           a0, 9(t2)
                  lbu          t3, 2(t2)
                  lhu          a2, 13(t2)
                  lb           t4, 13(t2)
                  sb           s5, -17(a5)
                  sb           t2, -40(s0)
                  sb           s3, -25(a5) #end load_store_instr_stream_2
                  lh           a2, 13(t2)
                  sh           s4, 1259(s0) #end load_store_instr_stream_1
                  lbu          t3, 3(t2) #end load_store_instr_stream_0
                  la           s9, region_1+149 #start riscv_load_store_hazard_instr_stream_0
                  lw           a7, -25(s9)
                  lh           s0, -5(s9)
                  sb           a6, -5(s9)
                  lw           a0, -5(s9)
                  sb           s6, -48(s9)
                  slt          s7, tp, s5
                  lb           a0, -48(s9)
                  sb           t4, -48(s9)
                  lbu          ra, -48(s9)
                  slli         t3, a2, 21
                  sh           s9, 23(s9)
                  lhu          s1, 7(s9)
                  add          a2, s6, t3
                  sb           sp, -28(s9)
                  sb           s3, -28(s9)
                  lh           t0, 35(s9)
                  sh           ra, 61(s9)
                  sltiu        t3, s3, -785
                  auipc        a3, 306817
                  sh           s2, 61(s9)
                  lbu          a6, -14(s9)
                  slt          a3, t2, s5
                  lb           s8, -14(s9)
                  lbu          a4, -14(s9)
                  sb           a3, -32(s9)
                  lb           a1, -32(s9) #end riscv_load_store_hazard_instr_stream_0
                  srai         s10, sp, 14
                  sub          a0, s4, s1
                  xor          t0, ra, gp
                  auipc        a3, 91943
                  srai         a0, t0, 18
                  and          s1, s10, a6
                  la           s6, region_1+1402 #start load_store_instr_stream_3
                  la           t0, region_1+889 #start load_store_instr_stream_0
                  la           t5, region_1+999 #start load_store_instr_stream_1
                  la           a0, region_1+1011 #start load_store_instr_stream_4
                  lb           a1, -401(t5)
                  lb           s1, -15(s6)
                  sh           s2, 1(a0)
                  sb           t2, 42(a0)
                  lh           a6, -8(s6)
                  lbu          t1, 456(t5)
                  lhu          a1, 775(t5)
                  lbu          t3, -4(a0)
                  lb           t6, -173(t0)
                  la           a5, region_1+160 #start load_store_instr_stream_2
                  sh           s3, 7(a0)
                  lbu          s1, 1705(a5)
                  sb           a7, 179(t5)
                  lhu          t2, 183(t0)
                  lb           a2, -972(t5)
                  sh           t2, -4(s6)
                  sb           a1, 30(t0)
                  lb           t1, 848(t5)
                  sb           tp, 250(t5)
                  lb           zero, 1371(a5)
                  lb           zero, -49(t0)
                  lhu          t2, -421(t5)
                  sb           s11, -75(a5)
                  sb           a2, -54(a0)
                  sb           s2, -250(t0)
                  lh           a1, 0(s6)
                  lb           ra, 783(t5)
                  sb           s5, -33(a0)
                  sb           t4, -9(s6) #end load_store_instr_stream_3
                  sb           t0, -56(t0)
                  lb           t2, 718(a5)
                  lb           t6, 20(a0) #end load_store_instr_stream_4
                  lbu          a6, -458(t5) #end load_store_instr_stream_1
                  lb           a6, 621(a5) #end load_store_instr_stream_2
                  lhu          t1, -149(t0) #end load_store_instr_stream_0
                  andi         t2, t3, -1590
                  auipc        t1, 1040407
                  and          s8, s0, t1
                  ori          ra, a6, -1633
                  sltiu        zero, t6, -1705
                  bltu         a2, s2, 24f
                  blt          gp, gp, 16f
                  srli         a6, t5, 16
                  beq          gp, a3, 15f
15:               addi         zero, sp, 780
16:               beq          a0, t2, 30f
                  srai         a0, t2, 14
                  sltu         s0, s9, s0
                  slli         t2, s2, 31
                  sltu         s6, t4, s9
                  srai         a3, a3, 17
                  blt          t2, a0, 30f
                  and          s9, t5, tp
24:               bne          t2, a4, 44f
                  srai         t4, s11, 11
                  srli         s8, s4, 12
                  sltu         t6, s6, s5
                  auipc        t4, 1024449
                  srl          s0, t5, t0
30:               sub          t0, s10, a4
                  slli         sp, t4, 23
                  srli         a4, s6, 31
                  addi         a0, t0, -358
                  addi         a2, s3, -682
                  bge          s5, t5, 46f
                  sub          s0, a6, t2
                  addi         s6, s1, -1886
                  sll          s2, t4, a1
                  add          s7, s10, zero
                  bge          s6, s2, 45f
                  slti         a5, a1, -1136
                  and          s5, t0, s5
                  srl          s7, a4, a0
44:               and          s5, t4, t6
45:               and          a6, tp, s10
46:               ori          t1, s6, -104
                  lui          a4, 185448
                  add          t6, gp, tp
                  slli         t2, s9, 12
                  and          s10, a4, s3
                  lui          a6, 943490
                  slt          a0, t3, t6
                  bltu         tp, t4, 58f
                  slt          s9, gp, s3
                  bltu         t4, s3, 71f
                  xor          s5, s10, t6
                  xori         a7, a4, -1967
58:               srai         zero, s2, 21
                  and          t5, t4, s6
                  xori         a2, t2, -756
                  bne          a3, a6, 74f
                  srai         a7, t5, 25
                  xor          s0, t1, t6
                  auipc        s3, 117870
                  andi         a4, a1, -160
                  blt          t2, a0, 72f
                  sub          a6, t4, s7
                  add          t3, t0, ra
                  blt          a4, t2, 74f
                  bltu         a5, a5, 83f
71:               sltu         s7, a3, t1
72:               slt          s9, s4, s10
                  xori         s8, zero, 796
74:               ori          a2, tp, 795
                  ori          s6, a7, -788
                  beq          t1, t2, 86f
                  sltu         a6, a3, a4
                  srli         a6, t1, 25
                  beq          ra, a0, 90f
                  la           t5, region_1+1631 #start load_store_instr_stream_2
                  lb           a0, -658(t5)
                  la           a3, region_1+266 #start load_store_instr_stream_0
                  la           s0, region_1+143 #start load_store_instr_stream_1
                  sw           s7, 9(s0)
                  sb           s1, -60(a3)
                  lbu          s3, 23(a3)
                  la           t4, region_1+630 #start load_store_instr_stream_3
                  sb           gp, 11(a3)
                  lh           s8, -207(t5)
                  lbu          a0, -1434(t5)
                  lbu          s3, -4(t4)
                  lbu          t2, -1197(t5)
                  lw           ra, -26(t4)
                  sb           a6, -28(a3)
                  lbu          gp, 3(t4)
                  sw           a6, -62(a3)
                  sw           ra, -10(t4)
                  lbu          sp, -862(t5)
                  lb           t2, -47(t4)
                  sb           a1, 59(a3)
                  lb           s9, 8(t4)
                  lbu          s2, -24(t5)
                  lhu          s10, 16(a3)
                  lbu          t0, 57(t4)
                  lbu          s6, -15(s0)
                  sb           s2, 43(t4)
                  lb           ra, 173(t5) #end load_store_instr_stream_2
                  sb           s6, 16(s0)
                  sh           a0, 32(t4)
                  lb           ra, -12(s0)
                  lb           a1, -56(a3)
                  sb           tp, 47(t4) #end load_store_instr_stream_3
                  sw           a5, -3(s0)
                  lw           a4, 2(a3)
                  lhu          s5, 9(s0) #end load_store_instr_stream_1
                  sb           s6, 35(a3) #end load_store_instr_stream_0
                  blt          s9, s11, 89f
                  add          ra, ra, t1
                  xori         a3, t6, -745
83:               or           s2, a2, ra
                  slli         s0, s1, 11
                  srli         a3, s5, 11
86:               and          a1, a3, a5
                  add          s3, s10, t4
                  xor          a5, t3, a0
89:               bne          s3, tp, 97f
90:               sra          t3, a5, tp
                  bgeu         t4, s2, 98f
                  sll          s5, t0, s5
                  lui          a6, 727277
                  addi         sp, s8, -507
                  and          t0, s11, a2
                  sltiu        sp, t6, -467
97:               sub          t5, s9, s0
98:               lui          t3, 979908
                  xori         a1, zero, 146
                  andi         t5, s7, -1245
                  add          t4, s5, s0
                  slt          s1, t6, a2
                  srai         a6, t2, 3
                  andi         t4, t5, 1181
                  and          a6, ra, t0
                  xori         s5, t3, -115
                  bge          t0, s6, 109f
                  sra          sp, t3, gp
109:              sltu         t3, s9, a4
                  srli         a6, s0, 30
                  lui          t1, 374888
                  add          a1, t3, a2
                  sltiu        t6, sp, -160
                  or           s6, s5, t3
                  sub          ra, sp, zero
                  andi         s3, t5, 380
                  or           a6, t5, s11
                  slti         a1, a7, 1731
                  slli         t1, s5, 25
                  add          s7, s6, s9
                  xor          t4, sp, t6
                  addi         a1, sp, 1014
                  slt          a3, a2, s9
                  nop
                  andi         sp, a3, -1961
                  bge          s9, s10, 129f
                  lui          a1, 113581
                  andi         s10, a0, -1287
129:              slli         t2, s4, 4
                  bge          s10, t6, 137f
                  nop
                  xori         a3, gp, -349
                  bne          s4, a3, 146f
                  slti         a5, s3, 147
                  sra          s1, s4, t3
                  sltu         s6, s11, t1
137:              auipc        a3, 557660
                  addi         a6, a3, -1380
                  sub          gp, t3, t4
                  bltu         a6, s8, 144f
                  sra          s8, s11, s3
                  bgeu         t1, t1, 161f
                  sub          zero, s10, t1
144:              slti         a4, a6, 1382
                  bgeu         a3, gp, 148f
146:              bltu         tp, zero, 165f
                  slt          a2, s1, a6
148:              sll          t2, s3, s9
                  xori         t4, a1, -1401
                  slti         s5, s5, -1919
                  lui          a1, 206722
                  blt          s0, t5, 153f
153:              blt          a7, a0, 159f
                  sll          a7, s7, a4
                  sll          t3, s11, a6
                  auipc        t3, 773309
                  sltiu        s2, s11, 346
                  bgeu         s0, s2, 168f
159:              lui          s1, 564840
                  blt          t5, s6, 164f
161:              beq          sp, a1, 169f
                  srl          s8, a0, t6
                  slti         a3, s7, 997
164:              slti         t3, a3, -1316
165:              blt          a4, a6, 168f
                  sltu         zero, sp, a7
                  sub          a6, a7, t6
168:              nop
169:              bge          t2, a6, 189f
                  xori         s8, a5, 1289
                  sll          t0, a2, t4
                  addi         gp, a2, -350
                  blt          a5, s11, 179f
                  and          s2, a4, a3
                  bgeu         a2, s3, 183f
                  lui          a4, 701814
                  sub          a7, s4, s9
                  bge          s1, sp, 197f
179:              sltiu        ra, zero, 1447
                  nop
                  slt          s3, t5, a7
                  ori          t6, s2, 337
183:              srl          a4, s1, s4
                  slli         gp, s7, 7
                  bltu         a2, s1, 198f
                  auipc        s3, 734827
                  lui          sp, 1013960
                  srl          t2, a7, t1
189:              sra          s8, a4, a7
                  slli         gp, s8, 17
                  sltu         a1, t4, zero
                  and          t0, s11, s0
                  ori          a1, t5, 548
                  ori          ra, a4, 726
                  slli         gp, zero, 15
                  add          t6, t4, a7
197:              sltiu        a2, s0, -1332
198:              slti         a2, s6, -1316
                  bge          a6, s1, 206f
                  blt          gp, a0, 201f
201:              sltu         a2, a6, s3
                  bge          a1, a0, 203f
203:              blt          s1, s3, 222f
                  ori          s8, s9, -155
                  slt          t1, t2, t2
206:              or           gp, s4, s5
                  bgeu         t0, t4, 220f
                  ori          a4, s0, -709
                  bge          gp, a7, 214f
                  srl          t3, a4, t1
                  nop
                  sra          s10, a0, s4
                  add          s0, t5, a6
214:              bltu         s8, ra, 227f
                  bne          s0, s0, 229f
                  ori          t1, a4, -1678
                  srai         t6, s4, 11
                  andi         s7, s7, 629
                  slli         a4, t5, 5
220:              srai         s3, s10, 22
                  slt          t0, s6, s10
222:              add          s6, s2, s6
                  blt          sp, t0, 230f
                  srli         a5, s6, 21
                  xor          a5, s6, a5
                  bne          s0, s7, 232f
227:              sra          s5, gp, s1
                  andi         t5, s11, 1532
229:              bne          s3, a7, 240f
230:              bge          a3, a7, 234f
                  bltu         gp, s8, 244f
232:              bne          s11, a7, 234f
                  bge          a3, s9, 242f
234:              sub          a4, t4, s7
                  srl          t1, a7, s10
                  slt          t4, s4, s10
                  beq          s4, t0, 247f
                  nop
                  xor          a4, s4, a1
240:              bltu         t6, a7, 245f
                  bge          zero, s9, 246f
242:              xori         a1, a7, 1067
                  addi         t3, zero, -1649
244:              sub          s8, a2, a5
245:              slt          a2, t3, s10
246:              bgeu         s9, s0, 249f
247:              xori         a3, t2, 7
                  bltu         a2, s10, 259f
249:              andi         s10, s6, -831
                  sra          s8, t1, a1
                  blt          t0, tp, 261f
                  sll          s3, a1, s7
                  sltiu        s9, s5, -1107
                  srl          t0, gp, s9
                  slli         s3, ra, 11
                  bge          a3, a5, 272f
                  sll          s8, a6, t0
                  add          sp, t5, s7
259:              ori          s10, t2, -312
                  nop
261:              blt          a2, t6, 280f
                  andi         t5, s9, -1744
                  slti         s3, ra, 760
                  slli         gp, t4, 31
                  addi         t6, t0, -964
                  auipc        s5, 974556
                  sltiu        a1, s3, 1589
                  andi         a1, s7, -1545
                  xor          t2, s3, gp
                  auipc        t2, 981291
                  and          t0, t4, t4
272:              slli         a6, t3, 6
                  addi         a1, s11, 501
                  sub          a2, s7, a1
                  bltu         ra, gp, 285f
                  slli         a6, s4, 21
                  srli         a5, s10, 19
                  srai         t5, s6, 31
                  srai         a5, a5, 29
280:              addi         a4, t3, -1443
                  slt          t3, a6, a4
                  ori          s8, s9, 1995
                  slt          zero, t1, s9
                  and          s7, s0, s3
285:              or           t5, a2, a2
                  nop
                  beq          s3, a1, 295f
                  sltiu        s7, tp, 1969
                  bgeu         t0, s10, 303f
                  srl          a6, t2, t2
                  slt          t1, s2, s1
                  andi         zero, s9, 107
                  slti         sp, t2, -1472
                  and          a3, s2, zero
295:              addi         a6, t1, -1796
                  lui          s1, 874089
                  or           a2, t2, s3
                  slli         t0, s3, 5
                  ori          t0, s0, -1781
                  ori          s6, ra, -355
                  andi         s8, s11, -1287
                  lui          a7, 407341
303:              sltu         s7, t0, s0
                  blt          tp, s10, 307f
                  sra          s6, a2, a1
                  add          zero, gp, s10
307:              auipc        a6, 131019
                  sra          s2, s11, a2
                  sub          s6, t3, t3
                  bge          t3, s1, 312f
                  or           a1, ra, a3
312:              bltu         s5, s4, 325f
                  srli         t3, ra, 2
                  sll          s2, s2, s8
                  andi         s0, t2, 1062
                  add          zero, a7, a6
                  addi         a4, t5, -1419
                  xori         s0, s8, 1453
                  sub          t5, t2, t4
                  andi         s5, tp, -99
                  sub          s9, s8, a0
                  sra          t4, t6, sp
                  slli         a3, s0, 30
                  lui          s0, 183572
325:              or           a6, s7, a6
                  or           s3, a5, s8
                  add          gp, s0, t5
                  bge          s3, s4, 337f
                  or           ra, s1, s7
                  bltu         sp, s3, 338f
                  bltu         a3, s0, 335f
                  sll          a0, a5, a5
                  addi         t4, a5, 1731
                  lui          s7, 236466
335:              blt          a2, a7, 336f
336:              srli         ra, a5, 2
337:              xor          s3, s7, tp
338:              blt          t3, zero, 343f
                  slti         a1, a4, -377
                  blt          gp, a2, 353f
                  and          s7, t4, s7
                  or           a7, t4, t3
343:              slti         t6, a0, -1976
                  slli         s10, t6, 29
                  addi         t1, s8, -1345
                  ori          a3, a2, 1440
                  or           a2, s7, t2
                  andi         s8, s0, -1852
                  bne          s8, t5, 354f
                  slti         s1, s7, 2041
                  or           s3, t6, tp
                  add          s1, s3, a0
353:              sra          s0, s0, a1
354:              bne          a5, s5, 367f
                  and          s6, a1, a2
                  beq          t3, zero, 362f
                  slli         s7, s2, 2
                  bge          s2, s9, 364f
                  sltiu        s10, t0, 1130
                  srli         s10, s7, 17
                  sub          s7, t4, s9
362:              sltu         a7, s3, s1
                  bgeu         a3, t0, 374f
364:              xori         t0, ra, 486
                  add          sp, a6, ra
                  and          s10, s2, t2
367:              add          a7, a6, gp
                  sub          s10, a0, t4
                  blt          t1, s1, 376f
                  sltu         s10, a0, a1
                  slt          ra, ra, s9
                  bgeu         t4, s0, 382f
                  sltu         a7, s2, s7
374:              sub          t6, s9, s0
                  xor          a1, a7, s1
376:              ori          t2, s8, 237
                  srli         a0, a3, 9
                  and          t5, tp, a4
                  srli         a3, a3, 8
                  srl          sp, s6, s1
                  bge          a2, t5, 401f
382:              bgeu         s2, s1, 395f
                  bne          a5, a1, 386f
                  bltu         a4, s2, 385f
385:              sra          a4, gp, zero
386:              xor          s8, ra, a7
                  slli         a3, t2, 9
                  srai         s2, zero, 15
                  and          t1, s7, s3
                  srai         a1, s11, 23
                  sltu         s0, s10, s5
                  blt          a7, a6, 396f
                  or           s0, t4, t6
                  xori         t5, t3, 1654
395:              bgeu         s4, s10, 400f
396:              sll          t6, t2, s10
                  slt          s8, s8, t5
                  srli         a0, a2, 1
                  andi         s5, s0, 1183
400:              bltu         t4, s3, 416f
401:              add          gp, zero, ra
                  bge          s2, zero, 421f
                  ori          t3, gp, -1026
                  addi         t3, a1, 1625
                  slli         s3, a6, 28
                  auipc        t0, 844436
                  nop
                  nop
                  ori          s0, t4, -1686
                  slti         s3, s3, 1391
                  sra          s10, sp, sp
                  xor          gp, s8, s11
                  ori          sp, s4, 1692
                  nop
                  slti         a5, t3, 314
416:              xori         s7, s3, -63
                  srl          t3, a5, s2
                  sltu         s5, t0, s3
                  auipc        s9, 694315
                  add          s1, a6, s0
421:              lui          t6, 276187
                  bne          s10, s5, 429f
                  sra          t5, s7, a4
                  bge          t3, s3, 435f
                  ori          t5, a0, 14
                  sltu         t5, t1, t3
                  sra          s6, t6, a5
                  sub          t1, s11, t2
429:              slt          s0, t2, s1
                  srli         a7, s11, 12
                  srai         t6, t5, 9
                  xori         t4, a4, 689
                  lui          t1, 517613
                  sll          t2, ra, a2
435:              addi         t3, gp, 760
                  srai         t0, a0, 6
                  andi         s6, s7, -1456
                  slt          s2, zero, a2
                  xori         a4, a6, -1668
                  andi         s6, zero, 5
                  sltiu        a6, s9, 937
                  lui          s9, 577617
                  add          a6, a3, s4
                  sra          t3, s3, s6
                  srli         s3, t5, 16
                  sub          a5, t6, s0
                  blt          a5, tp, 455f
                  bge          t6, s10, 454f
                  bge          tp, a2, 453f
                  slli         t5, s3, 23
                  bltu         s6, t3, 453f
                  or           t0, tp, s2
453:              slt          s6, a3, a4
454:              lui          ra, 767017
455:              sra          s6, tp, t1
                  sltiu        t5, a5, -1923
                  sltiu        a2, t2, 6
                  nop
                  addi         t0, a5, 556
                  sub          a0, s9, t4
                  bgeu         gp, s9, 468f
                  sra          s10, a5, tp
                  slli         a5, a4, 31
                  xori         s8, a2, 556
                  addi         t1, s2, -379
                  xor          t6, gp, s4
                  srl          s6, sp, s4
468:              sltiu        t5, sp, -153
                  or           sp, tp, s1
                  ori          t1, s7, -2010
                  xori         sp, s4, -529
                  sltiu        s5, s1, 567
                  lui          t1, 527625
                  bltu         a1, sp, 475f
475:              srli         a4, a7, 0
                  slli         a4, t2, 21
                  sll          a4, s7, ra
                  sll          s6, t5, s8
                  blt          a5, s3, 484f
                  ori          a1, zero, 1989
                  addi         t0, s7, 391
                  ori          s5, a5, 1699
                  nop
484:              bne          s8, t1, 494f
                  sltu         s0, a3, s0
                  srl          s1, t1, t5
                  xor          s5, zero, s1
                  and          a5, a3, ra
                  srl          s5, t3, t6
                  slt          t6, s4, s3
                  slli         ra, t5, 5
                  bne          s8, s9, 499f
                  sub          t2, a2, s9
494:              or           a6, gp, s5
                  bne          s5, s6, 508f
                  sltiu        s2, s7, 1137
                  srl          t3, t1, a0
                  sltu         t1, s4, t3
499:              and          a0, s6, t2
                  bgeu         gp, a6, 519f
                  sltiu        t4, t3, -1606
                  beq          a0, t3, 508f
                  srl          t2, s0, a3
                  addi         t2, s4, -654
                  slli         t3, a1, 8
                  slti         s5, s4, 976
                  xori         a6, s3, 1734
508:              addi         s1, a2, 1495
                  bltu         a5, a4, 522f
                  beq          s3, a0, 530f
                  bge          a6, s10, 519f
                  sub          s1, t5, t4
                  sltiu        a6, tp, -110
                  srli         a6, s2, 26
                  add          s5, gp, s8
                  bne          t1, ra, 519f
                  slti         s1, a4, -424
                  or           sp, a7, s2
519:              slti         t2, sp, 1278
                  auipc        a7, 551431
                  srl          s9, sp, s10
522:              bge          s1, s0, 533f
                  bge          s3, s2, 536f
                  slt          s8, s11, tp
                  auipc        a1, 617364
                  bltu         s5, s4, 540f
                  nop
                  or           a4, a6, a2
                  add          s8, t2, t3
530:              bne          t2, gp, 531f
531:              srl          s10, s11, s1
                  bne          s6, s0, 537f
533:              slli         a5, t0, 22
                  bge          t0, a5, 553f
                  add          a3, a5, t6
536:              xor          a0, a5, s7
537:              add          s6, t1, a1
                  sltu         s10, s8, a2
                  sltu         s3, s9, s1
540:              lui          s5, 922136
                  or           sp, sp, s6
                  sub          a0, s4, t2
                  xor          t5, t6, s6
                  sltu         t0, t4, s0
                  bgeu         a2, a2, 548f
                  lui          s9, 893523
                  srai         a5, zero, 6
548:              xor          s3, a6, t3
                  bltu         s5, s7, 562f
                  xor          a0, a4, t3
                  lui          a4, 504259
                  andi         a5, a7, -1307
553:              xori         s8, a6, 757
                  srl          t3, a1, a6
                  sub          s10, a0, s4
                  lui          s0, 171564
                  ori          s8, a4, 2011
                  bne          t6, t5, 563f
                  or           s3, s3, s2
                  xori         a6, s11, 631
                  slt          sp, s2, t5
562:              srl          s8, s5, t5
563:              sltu         a1, t0, s8
                  or           a4, s11, sp
                  sltu         t2, s11, s6
                  sll          a0, s11, t1
                  beq          s1, s5, 575f
                  bge          s5, a5, 575f
                  srli         s10, a3, 16
                  srli         t0, a3, 18
                  bne          gp, a2, 575f
                  bltu         sp, s3, 575f
                  bgeu         t1, gp, 575f
                  bgeu         s3, s9, 575f
575:              srai         t0, t1, 0
                  nop
                  lw           t3, 4(s11)
                  sub          a4, t5, a4
                  slli         s3, t2, 21
                  addi         s0, a6, 324
                  slt          a1, a2, a1
                  addi         s11, s11, 20
                  srai         t5, s7, 11
                  sltu         t4, s8, t2
1058:             addi x23, x28, 0
1058:             jalr x23, x23, 0
sub_2:            ori          s1, s1, -637
                  addi         s11, s11, -56
                  sw           t3, 4(s11)
                  sra          s10, s9, a1
                  ori          t4, a0, 1677
                  andi         s5, s8, 1558
                  or           t5, s4, a2
                  nop
                  la           s9, region_0+1392 #start load_store_instr_stream_3
                  la           a7, region_0+595 #start load_store_instr_stream_1
                  lhu          s8, 144(s9)
                  la           s10, region_0+830 #start load_store_instr_stream_2
                  sw           s2, -3(a7)
                  sb           ra, 211(s10)
                  la           gp, region_0+654 #start load_store_instr_stream_0
                  sw           a0, -80(s9)
                  lbu          s3, -25(a7)
                  sh           s10, -166(s10)
                  lbu          s0, -57(gp)
                  sb           t5, 55(gp)
                  lb           s6, -88(s10)
                  sh           a7, -44(gp)
                  sb           a3, -227(s9)
                  lbu          t5, 15(a7)
                  sb           a4, -96(s10)
                  sb           a6, 210(s10)
                  lh           sp, 212(s9)
                  sb           s11, 58(a7)
                  lbu          a1, -209(s10)
                  lbu          s5, -33(gp)
                  lhu          t6, -12(gp)
                  lb           t0, -253(s10)
                  lbu          t0, 5(gp)
                  lb           a4, 30(a7)
                  lh           a0, 34(gp)
                  lbu          s0, 48(a7)
                  lbu          a3, 16(a7)
                  lbu          s3, -155(s9) #end load_store_instr_stream_3
                  lb           t4, -240(s10)
                  lbu          s2, 7(a7)
                  lb           t0, 56(s10)
                  lbu          s2, -33(s10) #end load_store_instr_stream_2
                  sb           a1, 9(gp)
                  lb           a1, -50(a7) #end load_store_instr_stream_1
                  lh           s6, 60(gp) #end load_store_instr_stream_0
                  la           s7, region_1+1715 #start load_store_instr_stream_3
                  la           gp, region_1+430 #start load_store_instr_stream_2
                  lhu          a3, 57(s7)
                  la           a4, region_1+888 #start load_store_instr_stream_1
                  la           s1, region_1+1389 #start load_store_instr_stream_0
                  sh           s1, -53(s7)
                  lbu          a1, -245(s1)
                  la           ra, region_1+1444 #start load_store_instr_stream_4
                  lbu          t1, 1(gp)
                  sb           a1, -374(a4)
                  lh           s6, 36(ra)
                  lw           t6, -10(gp)
                  lbu          t6, 51(ra)
                  sb           tp, 22(s1)
                  sb           a6, -1(s7)
                  lbu          s8, 110(a4)
                  lb           a7, 46(ra)
                  lbu          s10, -501(a4)
                  sh           t6, 64(ra)
                  sb           s11, -13(gp)
                  lbu          t3, 64(s1)
                  lhu          s8, -2(ra)
                  lb           t6, -6(ra)
                  lbu          s5, -743(a4)
                  lbu          s0, -8(s7)
                  lbu          t6, 159(s1)
                  lb           s9, -34(ra)
                  lbu          t0, -1(gp)
                  lh           a6, -8(gp)
                  sb           s0, -15(gp)
                  sb           s9, 0(s7) #end load_store_instr_stream_3
                  lb           s0, -217(s1)
                  sb           t5, 77(a4)
                  sh           a0, 14(gp)
                  lh           s9, -188(a4)
                  lbu          s0, 15(gp) #end load_store_instr_stream_2
                  sh           t0, 223(s1)
                  sb           s11, -19(ra)
                  lbu          t5, -210(a4) #end load_store_instr_stream_1
                  lw           a7, -32(ra)
                  sh           a1, -18(ra) #end load_store_instr_stream_4
                  lb           t0, -65(s1) #end load_store_instr_stream_0
                  la           sp, region_1+1214 #start riscv_load_store_rand_instr_stream_2
                  lb           a6, -131(sp)
                  add          s7, t5, s8
                  srl          t0, t1, a4
                  sb           a4, 36(sp)
                  sub          s9, s10, t2
                  slti         a0, zero, -21
                  sb           s5, 124(sp)
                  sb           s10, -57(sp)
                  lb           t4, 242(sp)
                  and          t4, s4, t1
                  sb           s5, 88(sp)
                  srli         t1, t0, 6
                  sb           s5, -39(sp)
                  lb           t1, -110(sp)
                  sb           s8, 112(sp)
                  sb           s1, -205(sp)
                  sb           gp, -230(sp)
                  lbu          a7, 254(sp)
                  lb           a7, -91(sp)
                  sltu         zero, t1, a5
                  nop
                  sh           a5, 248(sp)
                  slti         a7, s9, 653
                  lb           a0, -194(sp)
                  sb           s11, 129(sp)
                  lbu          a2, 203(sp)
                  lh           a5, -188(sp)
                  srli         a0, t0, 19
                  sw           s3, 58(sp)
                  lb           s9, -40(sp)
                  srai         s3, s9, 24
                  lw           s1, -154(sp)
                  sb           s6, 180(sp)
                  lbu          a6, 173(sp)
                  addi         s0, s5, 773
                  lh           t2, 4(sp)
                  and          a6, a7, t0
                  lbu          s3, 137(sp)
                  add          s9, ra, s0
                  sh           a7, -44(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+141 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s1, 738(s0)
                  lb           t1, 738(s0)
                  sb           s5, 738(s0)
                  lbu          s6, 738(s0)
                  lb           t6, 738(s0)
                  lh           s9, 1269(s0)
                  add          s6, tp, s4
                  sb           a7, 1269(s0)
                  sb           t3, 1269(s0)
                  lbu          sp, 1608(s0)
                  lbu          t4, 1608(s0)
                  lbu          s7, 1402(s0)
                  sw           t1, 119(s0)
                  lb           a0, 590(s0)
                  lbu          a0, 685(s0)
                  sb           a0, 760(s0)
                  lbu          a0, 760(s0)
                  sb           a2, 1720(s0)
                  lb           zero, 1720(s0)
                  lb           t0, 845(s0) #end riscv_load_store_hazard_instr_stream_1
                  la           a3, region_1+1519 #start load_store_instr_stream_0
                  la           gp, region_1+1598 #start load_store_instr_stream_2
                  la           s8, region_1+891 #start load_store_instr_stream_4
                  lbu          a1, 395(gp)
                  la           a5, region_1+1309 #start load_store_instr_stream_1
                  lhu          s5, -55(a3)
                  sb           s10, 30(a5)
                  lh           t1, -5(a3)
                  lbu          s3, -277(s8)
                  sh           t6, 31(a5)
                  lhu          s3, 19(a3)
                  lb           a0, -1384(gp)
                  lb           a6, -2(a5)
                  sh           s3, -292(gp)
                  lbu          t1, 778(s8)
                  sb           s7, 0(a5)
                  sw           tp, 39(a5)
                  la           s6, region_1+1190 #start load_store_instr_stream_3
                  lbu          t3, 63(s6)
                  sb           gp, -204(s8)
                  lbu          s5, 308(s8)
                  lb           s0, 46(a3)
                  lb           s1, 23(a3)
                  lbu          a4, -76(s6)
                  lhu          t0, -728(gp)
                  lh           t4, 35(a5)
                  lbu          t2, -37(a3)
                  lb           s10, -2(gp)
                  sb           s7, -13(a5)
                  sh           t1, 64(gp)
                  lb           zero, -6(a5)
                  lbu          t6, 91(s6)
                  lb           sp, 762(s8)
                  lb           zero, 64(a5)
                  lbu          a1, -425(s6)
                  lbu          t5, -52(a3)
                  sb           t5, -1574(gp)
                  sb           gp, -226(s8)
                  sb           a1, 53(s8) #end load_store_instr_stream_4
                  sb           s1, 16(a3)
                  lhu          s0, 684(s6)
                  lb           zero, 58(a5) #end load_store_instr_stream_1
                  lbu          zero, 123(s6)
                  lh           t5, -218(gp)
                  sb           s8, -767(gp) #end load_store_instr_stream_2
                  sh           s11, -88(s6) #end load_store_instr_stream_3
                  sb           s10, 21(a3) #end load_store_instr_stream_0
                  la           sp, region_0+232 #start riscv_load_store_rand_instr_stream_1
                  lb           a6, 20(sp)
                  lbu          s1, 49(sp)
                  lbu          t2, -29(sp)
                  lbu          s0, -29(sp)
                  lb           t6, -51(sp)
                  sb           a5, -36(sp)
                  andi         s1, a7, 508
                  lbu          s7, -47(sp)
                  sra          a2, s3, zero
                  sub          s0, s6, ra
                  lui          t0, 423807
                  sll          s10, a3, t1
                  lhu          s7, 48(sp)
                  andi         s3, s8, 534
                  lb           zero, -47(sp)
                  nop
                  lbu          gp, -33(sp)
                  lbu          s10, -15(sp)
                  and          s8, a5, s9
                  or           t4, t3, s1
                  lbu          s9, 55(sp)
                  srai         t1, a1, 11
                  auipc        t5, 113614
                  sb           s4, -30(sp)
                  and          s1, s11, gp
                  lbu          t4, -7(sp)
                  srl          ra, s11, s2
                  sb           t0, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1023 #start riscv_load_store_hazard_instr_stream_2
                  sb           t3, 169(sp)
                  sb           s2, -90(sp)
                  sra          s0, s0, s0
                  lb           a6, -90(sp)
                  sh           t5, 235(sp)
                  sw           s6, -7(sp)
                  sb           t3, -7(sp)
                  or           s1, t3, s1
                  lb           t4, 158(sp)
                  sb           t5, 158(sp)
                  and          t4, a4, s2
                  lb           a6, 158(sp)
                  sb           a5, 29(sp)
                  sh           s11, -225(sp)
                  or           s8, a3, s3
                  lhu          s7, -225(sp)
                  lbu          a3, -225(sp)
                  sb           s1, -225(sp)
                  sb           s8, -225(sp)
                  sb           s0, -225(sp)
                  srl          a3, s2, t5
                  lb           t6, -225(sp)
                  sb           a0, -225(sp)
                  sb           s4, -225(sp)
                  lb           t5, -225(sp) #end riscv_load_store_hazard_instr_stream_2
                  add          s7, tp, t0
                  addi         gp, t2, -1729
                  sra          t3, s11, t0
                  ori          t5, t1, 33
                  or           a6, t4, a2
                  ori          s9, t3, 470
                  bge          s3, s11, 26f
                  bltu         s8, s2, 20f
                  addi         a3, zero, 424
                  sltiu        a2, t0, -1880
                  auipc        s1, 826889
                  bge          s6, t5, 26f
                  slli         zero, s6, 6
                  srai         s6, s1, 8
                  bltu         s6, a4, 33f
                  bltu         a7, a7, 17f
                  sub          s3, s4, s1
17:               sll          gp, s1, tp
                  xori         s9, a2, 246
                  la           s8, region_1+144 #start riscv_load_store_rand_instr_stream_0
                  slli         t5, s3, 2
                  slti         a1, t5, 587
                  add          t4, a3, a1
                  slli         a0, t1, 5
                  lb           s10, -39(s8)
                  sb           s1, -71(s8)
                  xor          a6, s10, gp
                  lbu          a4, -66(s8)
                  add          a5, a5, s10
                  andi         gp, ra, 856
                  sb           t1, 84(s8)
                  lb           t0, 179(s8)
                  slt          s2, tp, s10
                  lhu          a1, -84(s8)
                  srl          t3, s1, a7
                  sll          t2, gp, s10
                  sub          a0, s1, s1
                  andi         a0, s3, 1253
                  slti         s9, a4, -1933
                  lb           a2, 5(s8)
                  or           zero, s0, s0
                  slti         a2, tp, -1855
                  andi         t4, a4, 1356
                  lb           s9, 71(s8)
                  lbu          a6, 121(s8)
                  nop
                  sw           a2, -32(s8)
                  sw           t1, -100(s8) #end riscv_load_store_rand_instr_stream_0
                  sltiu        gp, t4, -7
20:               add          t4, a1, sp
                  bne          t2, t2, 22f
22:               xori         a4, t1, 1411
                  slti         a5, s1, -485
                  slli         s5, s10, 8
                  sll          s3, s1, s0
26:               slt          t0, a0, gp
                  srl          s8, t2, t1
                  slli         a3, a4, 6
                  auipc        s2, 763908
                  ori          sp, t2, 304
                  sub          zero, s3, s9
                  slt          s2, a2, a2
33:               addi         s7, gp, -605
                  xori         a3, s0, 144
                  sltiu        s0, a6, -1574
                  bgeu         s2, s7, 48f
                  sltu         s3, s4, t6
                  bge          s5, s2, 42f
                  sltu         a0, a1, s1
                  srl          t3, sp, a3
                  add          t1, s9, s1
42:               ori          a6, gp, -1904
                  add          s7, a3, s2
                  xor          s0, a2, a1
                  xor          sp, t3, s11
                  sltu         a5, t3, s11
                  srli         s1, a6, 18
48:               auipc        s1, 517401
                  sub          s10, s0, s6
                  xor          s0, s8, t3
                  srai         s10, a2, 27
                  sltiu        t6, a4, -1031
                  xor          t5, a0, s0
                  ori          s7, a1, 1133
                  srai         ra, t4, 8
                  auipc        s5, 997955
                  srl          s1, s9, a3
                  bltu         a5, t3, 77f
                  slti         s0, gp, -775
                  lui          t5, 240425
                  srli         t3, s5, 2
                  auipc        a0, 18480
                  slt          a1, a2, t0
                  srai         ra, t2, 25
                  addi         t5, t0, 570
                  addi         a2, s4, 817
                  slti         t4, tp, -1332
                  srai         t5, t0, 11
                  bge          gp, t3, 71f
                  sub          s0, s8, t0
71:               andi         s8, s11, -4
                  auipc        s5, 635850
                  sra          t3, a2, a0
                  slli         ra, sp, 27
                  addi         t4, t1, 308
                  sltiu        a4, s1, -1266
77:               and          a4, s8, t4
                  srl          a7, t4, s5
                  bne          s11, t2, 91f
                  srl          zero, s1, a5
                  lui          a2, 386731
                  bge          s7, s9, 95f
                  sra          t6, s4, sp
                  slt          s1, s5, s10
                  slti         s7, tp, -158
                  andi         s9, sp, 1705
                  nop
                  and          t1, a7, s0
                  andi         s3, a1, 51
                  bne          a0, s5, 101f
91:               sll          ra, a2, s7
                  srli         sp, s10, 0
                  or           t1, s9, s2
                  slti         s10, s11, 1357
95:               or           s2, tp, s5
                  andi         t0, s5, -1559
                  add          s1, s5, ra
                  xori         t3, t0, 1703
                  beq          s6, s10, 103f
                  and          s3, s6, gp
101:              xori         s8, s4, 642
                  lui          t3, 611817
103:              bge          s7, t1, 121f
                  sub          t6, s9, t1
                  auipc        a1, 632557
                  srai         t5, tp, 22
                  beq          s0, t6, 110f
                  and          t6, s8, a0
                  srai         s7, s11, 26
110:              bge          s0, t6, 129f
                  and          a5, a7, ra
                  or           s6, s11, t1
                  add          a4, s8, a2
                  or           sp, a0, s5
                  lui          s7, 370849
                  slt          s2, gp, s0
                  sll          s3, s0, a0
                  slli         s6, s4, 1
                  sub          s5, a1, s3
                  bne          a7, a5, 124f
121:              and          gp, s8, t0
                  bgeu         a7, a2, 139f
                  lui          a0, 417859
124:              bge          a7, t4, 128f
                  beq          sp, a0, 134f
                  sra          t4, t5, t5
                  srl          s6, t3, s6
128:              sra          t4, ra, s3
129:              nop
                  sub          t3, t5, s2
                  sltu         t5, s2, a7
                  addi         s0, t4, 224
                  xor          t3, s11, s6
134:              ori          t2, s3, -865
                  sltiu        s9, a1, 1691
                  sltiu        zero, t2, -1497
                  lui          s10, 977836
                  slli         a2, a6, 27
139:              bltu         t6, zero, 146f
                  sltiu        a6, a7, 1431
                  sll          gp, ra, s2
                  sub          s7, a3, a3
                  blt          s8, s3, 159f
                  blt          t4, t5, 154f
                  srli         a1, t5, 18
146:              bge          ra, a2, 153f
                  beq          s8, s4, 166f
                  sub          s5, s0, a7
                  srl          a2, a3, a4
                  slt          a5, tp, t3
                  bne          sp, t6, 170f
                  sra          s6, a2, s1
153:              andi         s6, sp, -1888
154:              add          t5, ra, a4
                  slt          sp, a7, s2
                  andi         a5, a7, 1574
                  bltu         t5, a2, 170f
                  andi         a0, a5, -661
159:              bne          t3, s3, 179f
                  and          a6, a5, t6
                  addi         s9, a6, -1154
                  xor          a3, s10, t3
                  srl          a6, s5, a4
                  sra          a5, s4, s9
                  addi         a7, s9, -1133
166:              andi         t1, t5, 1571
                  bltu         s9, t3, 185f
                  sltu         s8, a1, t1
                  andi         a2, gp, 725
170:              add          a0, s4, sp
                  andi         s9, s1, -1616
                  sll          a0, a4, ra
                  sub          t3, s5, a6
                  srli         s2, t6, 31
                  sltiu        a0, t1, 1403
                  and          a2, s9, a2
                  blt          s6, s0, 190f
                  and          s9, t1, gp
179:              addi         s8, a7, -1744
                  slt          t5, s11, s7
                  xori         sp, a4, -726
                  bge          ra, s2, 184f
                  sub          s9, gp, gp
184:              bge          s4, t6, 197f
185:              xor          s3, sp, s0
                  srli         a2, gp, 22
                  auipc        a3, 771753
                  ori          t4, s6, -1388
                  xori         s9, s9, 300
190:              sra          s2, s7, zero
                  addi         a5, s2, 1185
                  addi         s2, zero, -1567
                  xor          a4, a6, t2
                  nop
                  lui          t1, 65014
                  nop
197:              sltiu        zero, s8, -1405
                  ori          t5, t3, -1598
                  blt          a7, s6, 201f
                  ori          zero, a3, 1841
201:              auipc        a1, 126464
                  and          t6, a2, s8
                  blt          gp, t2, 220f
                  and          s0, a6, t4
                  bne          a7, s7, 209f
                  slt          a1, t1, a5
                  slt          s9, a7, s8
                  and          t4, t2, s3
209:              sltiu        s7, s2, 1949
                  andi         t4, a6, -1055
                  ori          a7, a4, -566
                  sub          a5, s10, s9
                  srli         a1, a1, 16
                  or           s10, a5, a3
                  bgeu         a7, t2, 219f
                  sub          t4, s8, s8
                  srai         s5, a7, 13
                  blt          a7, s0, 237f
219:              and          s5, s7, s9
220:              auipc        t2, 534177
                  andi         t2, a1, 640
                  and          t0, t5, a3
                  or           s9, s10, tp
                  srli         a3, s11, 29
                  sll          t5, a1, s5
                  xori         a6, s8, -1165
                  nop
                  srai         t2, s0, 20
                  lui          s10, 34406
                  srai         a6, s7, 11
                  sub          s5, a6, ra
                  xori         a0, s2, 1145
                  sltiu        s8, s4, -1864
                  lui          t5, 1005113
                  slt          a5, sp, ra
                  lui          s5, 451816
237:              bltu         t4, t5, 246f
                  bgeu         a1, s7, 239f
239:              auipc        t4, 788531
                  bgeu         tp, zero, 252f
                  bne          s2, a6, 259f
                  nop
                  xor          s5, t2, s3
                  addi         s7, t6, -486
                  ori          s2, gp, 13
246:              add          ra, s7, a7
                  sltu         a7, s11, s2
                  slti         a5, s10, 775
                  sltiu        t4, s3, 1210
                  auipc        gp, 753511
                  sll          s6, gp, t0
252:              bgeu         s9, a5, 256f
                  addi         zero, a7, -1134
                  slli         a6, s1, 5
                  sra          t4, gp, gp
256:              or           t0, a3, s10
                  srai         a6, s5, 6
                  sra          t2, sp, a6
259:              slti         s3, ra, 1236
                  bne          t2, a2, 279f
                  xori         a4, zero, -845
                  and          a0, t0, t2
                  sra          s1, a2, s7
                  or           t6, a5, a3
                  slti         a5, s0, 884
                  slt          s6, a6, t6
                  srl          t4, ra, a7
                  and          a6, a0, a6
                  blt          a3, s5, 287f
                  lui          zero, 992783
                  sll          a6, a2, t0
                  sub          a3, s0, s2
                  bltu         a5, s7, 286f
                  srli         zero, t5, 2
                  ori          s9, s5, -738
                  sll          a2, s1, s5
                  addi         s3, t6, 1080
                  ori          a7, a4, -356
279:              andi         s2, s2, -430
                  ori          a6, a1, 59
                  or           ra, s0, a3
                  srli         a3, t4, 0
                  bltu         s9, sp, 294f
                  bgeu         s9, gp, 303f
                  auipc        a1, 757765
286:              addi         t1, a0, -715
287:              add          a6, s8, gp
                  add          s10, a5, t3
                  srli         t5, tp, 21
                  slt          s3, zero, a2
                  auipc        s9, 169045
                  addi         s7, s4, -676
                  ori          a5, a2, 1626
294:              bltu         zero, s2, 309f
                  addi         s3, t0, 1809
                  srl          ra, s6, t5
                  srai         a3, tp, 8
                  sub          a4, a7, t4
                  lui          a3, 184365
                  ori          s5, t5, 1745
                  bne          s11, a2, 304f
                  srl          s8, s10, t0
303:              or           t2, s3, a2
304:              bgeu         s0, s7, 308f
                  ori          s3, t6, -104
                  addi         a2, ra, 1037
                  xori         t3, a1, 968
308:              or           t5, a4, s7
309:              xori         gp, a3, -889
                  andi         t5, a1, 2003
                  sltiu        a4, s1, 365
                  nop
                  lui          a3, 1022910
                  and          s3, zero, s7
                  srli         t3, gp, 9
                  sra          a7, s8, s8
                  srli         s5, s3, 17
                  sll          t1, a4, a0
                  sltiu        s3, t6, 1970
                  nop
                  and          t2, t3, a2
                  sltu         a5, a3, sp
                  bgeu         zero, sp, 337f
                  beq          tp, zero, 337f
                  slli         s8, t0, 14
                  srli         a1, a0, 1
                  beq          s6, s2, 334f
                  la           sp, region_1+1690 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, -645(sp)
                  lb           a1, -645(sp)
                  lb           ra, -645(sp)
                  lb           t0, -645(sp)
                  lb           ra, -645(sp)
                  lw           s7, 194(sp)
                  lw           a0, 194(sp)
                  lw           s8, 194(sp)
                  sra          s3, s9, s1
                  sb           ra, -1217(sp)
                  lb           a3, -1217(sp)
                  sb           s4, -293(sp)
                  sll          s8, a5, t5
                  sll          s7, t4, a2
                  lbu          t1, -293(sp)
                  xor          s7, s9, s5
                  sb           s7, -293(sp)
                  sb           s3, -293(sp)
                  lb           a4, -267(sp)
                  srl          zero, s0, s8
                  lbu          s8, -267(sp)
                  lbu          ra, -863(sp)
                  srai         a0, tp, 14
                  and          a6, s5, a4
                  lw           ra, -586(sp)
                  lhu          s5, -586(sp)
                  lbu          t1, -456(sp) #end riscv_load_store_hazard_instr_stream_0
                  blt          s9, t6, 335f
                  slli         t2, a2, 26
                  srai         a0, s7, 12
                  srai         a1, t0, 26
                  slti         s2, t3, 1940
                  nop
334:              srai         gp, gp, 16
335:              slti         sp, a1, 1396
                  bgeu         s0, ra, 337f
337:              nop
                  lw           t3, 4(s11)
                  ori          s10, a6, 494
                  addi         s11, s11, 56
                  xor          a0, s8, s5
                  xor          a3, a2, s0
                  srl          s3, s4, t3
                  nop
                  nop
654:              addi x10, x28, 0
654:              jalr x10, x10, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_2:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_3:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_4:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_5:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_6:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_7:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_8:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_9:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_10:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_11:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_12:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_13:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_14:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

mmode_intr_vector_15:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x4, test_done
                  jalr x0, x4, 0

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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x20, x27, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x7, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x7, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x7, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x7, x11, ecall_handler
                  li x11, 0x1
                  beq x7, x11, instr_fault_handler
                  li x11, 0x5
                  beq x7, x11, load_fault_handler
                  li x11, 0x7
                  beq x7, x11, store_fault_handler
                  li x11, 0xc
                  beq x7, x11, pt_fault_handler
                  li x11, 0xd
                  beq x7, x11, pt_fault_handler
                  li x11, 0xf
                  beq x7, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x27, x20, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
