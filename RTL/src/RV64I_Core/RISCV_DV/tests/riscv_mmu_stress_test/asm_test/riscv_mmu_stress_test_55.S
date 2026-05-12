.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xdc2f9495
                  li x1, 0x0
                  li x2, 0x6
                  li x3, 0x80000000
                  li x5, 0x0
                  li x6, 0xf6852278
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0x3e55ca88
                  li x10, 0xf015a3b0
                  li x11, 0xf7e5f4cc
                  li x12, 0x80000000
                  li x13, 0xd
                  li x14, 0x3
                  li x15, 0x0
                  li x16, 0x74164b90
                  li x17, 0x80000000
                  li x18, 0x7
                  li x19, 0x2
                  li x20, 0x1
                  li x21, 0xa
                  li x22, 0x80000000
                  li x23, 0xc6b6659f
                  li x24, 0x80000000
                  li x25, 0x36b8540
                  li x26, 0xffb595db
                  li x27, 0x80000000
                  li x28, 0xf2472215
                  li x29, 0x0
                  li x31, 0xf9920021
                  la x30, user_stack_end
main:             la           s8, region_1+205 #start riscv_load_store_rand_instr_stream_4
                  lb           s10, 193(s8)
                  slti         s6, t6, -998
                  andi         a6, sp, 361
                  xori         t6, a0, -1211
                  lb           s4, 1381(s8)
                  sra          a5, s8, s0
                  srai         a0, s6, 4
                  lh           s5, -185(s8)
                  srai         a2, s11, 8
                  lw           a5, 179(s8)
                  lh           t6, 1383(s8)
                  add          s4, a4, a6
                  and          a4, a0, t1
                  lw           s3, 47(s8)
                  lb           s7, 906(s8)
                  and          t2, s6, a6
                  sb           a3, 184(s8)
                  srl          a4, t3, ra
                  sub          s1, a1, a7
                  lb           s5, 1681(s8)
                  lw           s10, 631(s8)
                  and          a4, a4, s9
                  ori          s5, s5, 112
                  xori         s9, s5, 399
                  slli         t4, a3, 22
                  or           s11, ra, s2
                  lb           s3, 207(s8)
                  sub          a7, t1, a1
                  or           s9, tp, a2
                  or           a1, tp, t2
                  xor          s1, sp, s0
                  srli         t6, s1, 8
                  nop
                  lhu          s3, 541(s8)
                  lbu          t4, -48(s8)
                  sh           s1, 351(s8)
                  sb           t0, 1443(s8)
                  lb           a7, -190(s8)
                  addi         t0, s4, -699
                  sw           t0, 1755(s8)
                  add          a7, t6, t1
                  lh           t0, 511(s8)
                  sb           s5, 137(s8)
                  lhu          s5, 635(s8)
                  srai         s3, s10, 19
                  slli         t0, a6, 30
                  or           t4, s2, a5
                  lbu          t6, 486(s8)
                  sltu         s11, a4, a4
                  lbu          ra, 663(s8)
                  sra          t0, t4, s11
                  lbu          a7, 198(s8)
                  sb           s2, 440(s8)
                  lhu          t3, 1131(s8)
                  lbu          sp, 945(s8)
                  lbu          t2, 920(s8) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1574 #start riscv_load_store_rand_instr_stream_2
                  lb           s8, -254(sp)
                  nop
                  lbu          a7, -182(sp)
                  slli         a6, tp, 10
                  slt          a5, a4, s6
                  lh           ra, -112(sp)
                  lh           gp, -230(sp)
                  srli         a6, t6, 16
                  ori          s8, a2, 1101
                  sb           t0, 111(sp)
                  sltu         t6, t5, s9
                  lhu          s10, 196(sp)
                  lb           s2, -1(sp)
                  sb           s5, 119(sp)
                  sb           ra, -41(sp)
                  lbu          a5, 181(sp)
                  slli         a6, s9, 20
                  sw           t2, -182(sp)
                  lb           t2, -211(sp)
                  lb           s0, -149(sp)
                  lb           s0, -22(sp)
                  sub          a0, t1, a0
                  lhu          a2, 50(sp)
                  sb           s1, 253(sp)
                  sb           s4, 153(sp)
                  sb           s3, -224(sp)
                  lb           s9, 122(sp)
                  srai         s10, s9, 3
                  and          a2, gp, t0
                  lb           s8, -104(sp)
                  lbu          s11, -75(sp)
                  sw           s8, -146(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_0+544 #start riscv_load_store_hazard_instr_stream_1
                  lhu          s2, 14(a2)
                  sra          gp, a1, t1
                  sb           a4, 14(a2)
                  lbu          a0, 14(a2)
                  lhu          s7, 14(a2)
                  lbu          s9, -51(a2)
                  lbu          s8, -51(a2)
                  lbu          s0, -51(a2)
                  sb           s2, -51(a2)
                  lbu          t0, -51(a2)
                  sb           a3, -51(a2)
                  sb           t0, -51(a2)
                  lbu          s2, -51(a2)
                  lbu          t4, -51(a2)
                  lb           s2, -51(a2)
                  sh           zero, 18(a2)
                  lh           zero, 18(a2)
                  lbu          a1, 18(a2)
                  lbu          s2, 19(a2) #end riscv_load_store_hazard_instr_stream_1
                  la           s7, region_1+265 #start load_store_instr_stream_1
                  la           s1, region_1+1862 #start load_store_instr_stream_2
                  lhu          s11, 16(s1)
                  la           s8, region_1+717 #start load_store_instr_stream_0
                  sb           a0, -502(s8)
                  lbu          s6, 113(s7)
                  lb           s10, -644(s8)
                  lb           s10, -187(s1)
                  sw           s9, 127(s7)
                  lb           t4, -179(s8)
                  sb           s5, 51(s1)
                  sh           a0, 147(s7)
                  sb           a7, -191(s1)
                  lb           t0, 390(s8)
                  lb           t2, -161(s1) #end load_store_instr_stream_2
                  lb           a6, -41(s7)
                  lh           t2, 29(s7)
                  lhu          t4, -183(s7)
                  lbu          s5, -318(s8)
                  lbu          s2, -88(s7) #end load_store_instr_stream_1
                  sb           t0, -452(s8) #end load_store_instr_stream_0
                  la           s2, region_0+780 #start riscv_load_store_rand_instr_stream_3
                  sh           s6, -12(s2)
                  sltiu        s8, a1, 1971
                  sra          zero, s5, a5
                  srl          t3, t5, a6
                  auipc        sp, 378741
                  slt          a6, tp, s0
                  lbu          s6, 13(s2)
                  lui          a2, 950968
                  lh           s4, 16(s2)
                  auipc        gp, 597138
                  and          s0, t4, s9
                  lhu          sp, -6(s2)
                  srli         s9, t4, 4
                  or           t4, zero, s6
                  ori          a0, a2, 1062
                  sltiu        s1, t6, 1783
                  slt          s3, s7, s1
                  sltu         s1, s4, a2
                  sltiu        s1, a5, 1193
                  auipc        zero, 1013504
                  sh           t4, 12(s2)
                  andi         zero, a2, 1833
                  lbu          ra, -4(s2)
                  or           gp, t3, tp
                  slli         t1, s0, 7
                  slti         a1, t2, 217
                  sb           s2, -5(s2)
                  add          s11, s10, t3
                  sb           ra, -2(s2)
                  lbu          s10, 9(s2)
                  sb           s3, -7(s2)
                  sub          a5, a1, zero
                  xori         a0, s3, -768
                  sb           s10, 1(s2)
                  lbu          a2, -2(s2)
                  sll          s9, t6, s9
                  xori         s4, a6, -1214
                  slt          t4, t2, s2
                  lb           a1, 8(s2) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+449 #start riscv_load_store_hazard_instr_stream_4
                  lbu          s0, 45(s8)
                  lbu          gp, 45(s8)
                  sh           s0, 45(s8)
                  lhu          a1, 45(s8)
                  lhu          s3, 45(s8)
                  lh           a1, 45(s8)
                  lb           s2, 45(s8)
                  lhu          t6, 45(s8)
                  lbu          s9, 45(s8)
                  lb           s3, 45(s8)
                  lhu          t3, 45(s8)
                  sb           s0, 45(s8)
                  sb           s11, 45(s8)
                  ori          t2, t1, 291
                  lbu          a5, 45(s8) #end riscv_load_store_hazard_instr_stream_4
                  la           t3, region_0+1165 #start riscv_load_store_rand_instr_stream_1
                  sb           s0, 774(t3)
                  lui          s3, 77054
                  sub          a0, s9, tp
                  ori          s6, sp, 869
                  srai         ra, s9, 13
                  addi         s0, zero, 1407
                  sltiu        zero, a7, -1538
                  and          t6, s0, s8
                  sll          t4, s11, t1
                  lui          t4, 655242
                  sb           a5, 625(t3)
                  andi         s4, t2, -660
                  sb           s4, -977(t3)
                  sh           a4, -729(t3)
                  sb           ra, -736(t3)
                  sb           a4, -792(t3)
                  lhu          t6, -491(t3)
                  or           t6, a0, t5
                  lhu          a1, -1099(t3)
                  sra          s4, sp, t4
                  ori          a2, a6, 1
                  lb           s1, -486(t3)
                  sb           s7, -382(t3)
                  sb           a5, -388(t3)
                  sltiu        zero, s10, 1881
                  lb           sp, 470(t3)
                  srai         s6, sp, 18
                  sltiu        s11, s11, 1554
                  xori         a4, s9, -1055
                  lb           t4, -899(t3)
                  xor          s8, s5, s7
                  lbu          t0, -546(t3)
                  lb           s9, 88(t3) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_0+1919 #start load_store_instr_stream_2
                  lbu          a6, 57(s4)
                  la           s3, region_0+519 #start load_store_instr_stream_0
                  lb           t6, 150(s3)
                  lb           t4, 3(s4)
                  la           s7, region_0+1937 #start load_store_instr_stream_1
                  lb           ra, -96(s3)
                  lb           a7, -55(s4)
                  lhu          a6, -1833(s7)
                  lbu          s10, -483(s7)
                  lbu          t0, -42(s7)
                  lbu          a6, 218(s3)
                  lw           a0, -1897(s7)
                  lb           t4, 194(s3)
                  sw           a7, -377(s7)
                  lhu          t6, 183(s3)
                  lbu          s6, -1858(s7)
                  sb           a0, 24(s4)
                  sb           zero, -589(s7)
                  sh           s1, 55(s4)
                  sw           sp, -15(s3)
                  lb           a1, -62(s4) #end load_store_instr_stream_2
                  sb           s2, -1046(s7)
                  lb           s2, 90(s3)
                  lbu          gp, -799(s7)
                  lb           s8, 193(s3)
                  sb           a0, -890(s7) #end load_store_instr_stream_1
                  lb           s5, -20(s3)
                  lbu          zero, 86(s3) #end load_store_instr_stream_0
                  la           t1, region_1+1991 #start riscv_load_store_hazard_instr_stream_3
                  sb           gp, 6(t1)
                  lbu          t3, 6(t1)
                  sll          s5, s5, t2
                  lbu          a6, 6(t1)
                  sb           s3, 6(t1)
                  lbu          t3, 6(t1)
                  lb           sp, 6(t1)
                  sll          s7, s1, t0
                  sltu         t2, t3, t6
                  lbu          s8, 7(t1)
                  slt          t0, a0, s9
                  sb           a0, -1(t1)
                  sb           a5, -6(t1)
                  lb           a6, -6(t1)
                  sub          a1, zero, a4
                  lbu          t2, -6(t1)
                  lbu          gp, -6(t1) #end riscv_load_store_hazard_instr_stream_3
                  la           sp, region_1+1517 #start riscv_load_store_rand_instr_stream_0
                  srai         s8, t6, 1
                  sb           s1, 161(sp)
                  lhu          s10, -75(sp)
                  ori          s8, a2, -1857
                  lb           s4, 222(sp)
                  sb           a3, 230(sp)
                  lb           a7, 64(sp)
                  srli         a1, zero, 21
                  andi         s6, s5, 553
                  slli         s10, a6, 2
                  sw           s4, 7(sp)
                  addi         t0, a0, -181
                  sb           zero, -33(sp)
                  slti         t3, s8, 862
                  lb           s10, 158(sp)
                  sh           s6, 149(sp)
                  lb           s10, -18(sp)
                  lb           s7, 76(sp)
                  sb           t1, -16(sp)
                  sub          s6, sp, a2
                  sb           gp, -96(sp)
                  lh           s11, -77(sp)
                  auipc        ra, 564485
                  or           a2, tp, s11
                  lbu          s1, -36(sp)
                  sh           s3, 75(sp)
                  lb           s2, -19(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s0, region_1+1012 #start load_store_instr_stream_0
                  lh           t4, 6(s0)
                  sb           a4, 54(s0)
                  la           a2, region_1+722 #start load_store_instr_stream_1
                  lh           s9, 60(s0)
                  lb           t1, 463(a2)
                  lbu          t4, 62(s0)
                  sb           t6, -427(a2)
                  lbu          a7, -61(s0)
                  sb           s11, 551(a2)
                  lbu          s10, -587(a2)
                  sb           s0, -711(a2) #end load_store_instr_stream_1
                  lbu          a0, 57(s0)
                  sb           a7, -9(s0) #end load_store_instr_stream_0
                  la           s8, region_0+1905 #start load_store_instr_stream_1
                  lb           a6, -891(s8)
                  la           a1, region_0+1855 #start load_store_instr_stream_0
                  lb           s3, -292(s8)
                  lw           a5, -1069(s8)
                  sb           s8, -1600(a1)
                  sb           s3, -501(s8)
                  lbu          zero, -114(a1)
                  lhu          t4, -813(s8)
                  sw           s5, -1287(a1)
                  lb           a0, -965(s8)
                  sb           t0, -57(a1)
                  lb           t4, -285(s8)
                  lbu          t4, -1541(a1)
                  lhu          a0, -1519(a1)
                  lbu          s10, -1086(s8) #end load_store_instr_stream_1
                  sb           a6, -1482(a1) #end load_store_instr_stream_0
                  la           t4, region_1+193 #start riscv_load_store_hazard_instr_stream_2
                  lhu          a0, -37(t4)
                  lhu          s8, -37(t4)
                  lb           ra, -47(t4)
                  xor          s8, t3, ra
                  lh           a4, 45(t4)
                  lbu          s5, 45(t4)
                  lw           s0, 39(t4)
                  sh           a6, 49(t4)
                  sb           s4, -40(t4)
                  sb           sp, -40(t4)
                  slti         t0, t4, 943
                  sb           s10, -10(t4)
                  lbu          s11, -10(t4) #end riscv_load_store_hazard_instr_stream_2
                  nop
                  add          s8, s10, a3
                  auipc        a5, 25987
                  andi         s7, s3, 254
                  slli         s9, s8, 0
                  lui          gp, 742228
                  bgeu         gp, a1, 11f
                  sub          t3, a1, a6
                  srl          s2, s3, ra
                  slli         s7, a7, 29
                  addi         t0, s3, 1502
11:               sub          s1, gp, s2
                  sra          ra, a3, sp
                  bgeu         t2, t5, 22f
                  srai         a1, t5, 27
                  bgeu         a1, a0, 25f
                  blt          t2, s2, 19f
                  beq          s10, t1, 19f
                  beq          a6, a2, 32f
19:               bgeu         t2, a4, 25f
                  add          s10, a7, sp
                  sltiu        a6, a4, -1552
22:               bgeu         s3, t3, 38f
                  bge          s11, a0, 36f
                  sub          s6, a5, s2
25:               slli         a2, t2, 27
                  bge          s4, s4, 43f
                  slli         s4, a0, 31
                  sltu         s11, s2, s7
                  sll          a2, s3, sp
                  sltiu        gp, t4, 1508
                  xori         s4, s4, -1481
32:               srai         a6, tp, 9
                  srai         gp, t3, 13
                  slli         s9, s1, 9
                  srl          a0, a0, a1
36:               sltiu        a7, s8, -555
                  bltu         t1, t1, 38f
38:               sltu         sp, t1, a6
                  auipc        t6, 942801
                  srl          s6, a6, s5
                  andi         s4, a1, -1401
                  srl          a1, t2, a2
43:               sltiu        a5, s4, -1607
                  sll          s6, s4, ra
                  srli         s7, t1, 27
                  bge          a0, s5, 62f
                  auipc        s11, 848962
                  add          s2, a6, s9
                  auipc        s6, 24908
                  slt          a1, a1, a2
                  bne          ra, a4, 57f
                  bltu         s1, s1, 68f
                  sltu         a0, s5, t0
                  bge          ra, t5, 74f
                  nop
                  bge          a3, t6, 69f
57:               sltu         t3, s5, s6
                  beq          s5, s3, 76f
                  bge          a6, s2, 61f
                  slli         s6, s7, 31
61:               bge          a2, s7, 71f
62:               bltu         s5, s6, 77f
                  sra          t6, s0, sp
                  bltu         s1, ra, 75f
                  and          s10, t2, tp
                  srl          t1, a0, zero
                  sra          t2, s6, tp
68:               sltu         s8, s5, sp
69:               add          s9, s5, s1
                  slt          s6, a1, t0
71:               srl          s7, a6, s3
                  blt          t5, a3, 89f
                  auipc        t3, 922416
74:               nop
75:               srli         s8, s2, 0
76:               sltiu        s4, s1, -116
77:               blt          s4, a3, 89f
                  srli         s1, a4, 28
                  beq          s6, t4, 89f
                  sub          a6, s11, s11
                  xor          s5, ra, zero
                  xori         t4, t2, -784
                  or           s4, t5, a4
                  sltu         t1, s0, ra
                  sll          a5, t3, sp
                  sub          t6, t4, t4
                  sltiu        t3, a0, 948
                  sltu         s3, t6, t3
89:               nop
                  bltu         s2, a7, 91f
91:               lui          t2, 828076
                  bge          s10, a5, 97f
                  slt          s8, s3, sp
                  srai         s8, a1, 22
                  srl          gp, s11, a7
                  srl          a7, s8, t1
97:               blt          t6, a6, 105f
                  beq          tp, a3, 117f
                  lui          gp, 968199
                  ori          s11, tp, -843
                  blt          a1, a7, 109f
                  and          s0, a2, ra
                  addi         s8, a0, 1549
                  bgeu         t6, s2, 112f
105:              xor          a4, s11, t1
                  lui          s9, 817550
                  auipc        s0, 183034
                  srli         s3, s6, 9
109:              beq          gp, s10, 124f
                  xori         a1, s3, 572
                  bge          s3, a6, 124f
112:              xor          t0, s7, t2
                  lui          s7, 933042
                  bgeu         t4, t6, 126f
                  slt          a6, s3, s3
                  sltiu        t1, a6, -1266
117:              sltiu        t2, a5, 1404
                  add          ra, t1, t4
                  srl          t0, s9, ra
                  ori          s6, t4, -1263
                  bge          s11, s0, 126f
                  srai         t6, a4, 28
                  add          t0, a5, a4
124:              blt          s7, a7, 130f
                  bne          t1, a7, 130f
126:              bge          s5, t6, 134f
                  sra          s8, gp, t2
                  or           s10, a6, s10
                  add          s6, zero, t1
130:              nop
                  bne          ra, s3, 137f
                  sll          t6, s3, s3
                  sub          s10, s5, ra
134:              sra          zero, t4, sp
                  xori         s10, s11, -1377
                  sll          a2, s0, s1
137:              srli         s2, t6, 9
                  sltu         gp, t6, a7
                  blt          gp, s11, 150f
                  slt          a0, s5, a2
                  or           t0, s2, t6
                  srli         sp, sp, 19
                  andi         s3, t4, 986
                  bge          zero, s9, 164f
                  slti         s0, a3, 2011
                  slti         ra, s8, 1022
                  slt          s7, s0, s0
                  xor          a0, ra, t6
                  add          ra, s1, a0
150:              slti         t6, s1, -1224
                  sra          s7, tp, sp
                  sll          t0, zero, t6
                  andi         a2, t4, -387
                  ori          s5, a2, 1888
                  srl          t1, s8, sp
                  add          s7, s5, s2
                  bltu         s10, s3, 160f
                  slti         t1, a5, -1184
                  beq          sp, zero, 169f
160:              sltiu        gp, a6, -1658
                  sltiu        s4, s9, -1907
                  blt          t5, tp, 175f
                  bgeu         t4, s5, 177f
164:              xor          s5, s7, t1
                  ori          a2, sp, -68
                  or           s10, s0, a6
                  sra          a2, t3, a4
                  or           t1, gp, tp
169:              sra          a7, t1, s8
                  ori          ra, s4, -57
                  and          s9, t4, gp
                  xori         t4, t2, -1668
                  nop
                  sra          s4, t1, s11
175:              blt          t4, t2, 192f
                  bgeu         s5, t3, 186f
177:              sub          s6, sp, t0
                  bge          zero, s10, 194f
                  ori          t1, a0, 947
                  or           s10, gp, t5
                  bne          a7, ra, 191f
                  bgeu         s11, s1, 200f
                  sll          s2, t3, t0
                  lui          s6, 486474
                  beq          a4, t1, 201f
186:              addi         a7, s1, 396
                  sltiu        s1, a6, 143
                  blt          t1, tp, 189f
189:              beq          a5, a0, 205f
                  blt          gp, s5, 207f
191:              slli         t2, s7, 9
192:              add          sp, s0, zero
                  xori         a4, s5, 1201
194:              auipc        s4, 871599
                  sll          a1, s11, s4
                  slti         s9, t3, 81
                  sra          a5, t6, a2
                  bltu         a1, a1, 217f
                  bgeu         t3, t0, 200f
200:              slt          s10, t6, a4
201:              srli         s10, t6, 25
                  sltiu        s0, a2, 127
                  xor          s5, t4, t1
                  bltu         s1, s9, 206f
205:              ori          s6, s7, 386
206:              xori         t1, s2, -1023
207:              addi         s1, t5, 1733
                  bltu         s5, s9, 217f
                  sltiu        s6, s8, -1079
                  slt          s11, t0, t5
                  bgeu         s2, s11, 213f
                  sltiu        a4, s11, 710
213:              sltiu        t1, a3, -1659
                  bge          t3, s4, 222f
                  and          s3, ra, t4
                  slti         a4, a6, 843
217:              ori          t6, a1, -588
                  sra          zero, s4, a5
                  blt          s3, a0, 227f
                  sll          a1, t2, s6
                  bge          a1, s5, 229f
222:              lui          t2, 76793
                  la           s9, region_1+1476 #start load_store_instr_stream_1
                  la           s2, region_1+766 #start load_store_instr_stream_0
                  sb           a6, -399(s9)
                  la           s1, region_1+252 #start load_store_instr_stream_2
                  sb           a4, 143(s2)
                  lbu          t6, -743(s9)
                  lbu          gp, -94(s2)
                  sb           gp, -463(s9)
                  lb           t4, -152(s2)
                  lb           s11, 1403(s1)
                  lh           s4, 748(s1)
                  sw           s1, 1364(s1)
                  sb           t4, -37(s2)
                  sb           s5, 193(s2)
                  lb           sp, -869(s9)
                  lhu          zero, -212(s2)
                  sh           gp, 22(s2)
                  sb           t1, -653(s9)
                  lbu          a0, -343(s9)
                  sh           a6, 224(s1)
                  lb           s4, -1133(s9)
                  lbu          t1, 255(s9)
                  sb           s11, 253(s2)
                  lb           zero, -619(s9)
                  sw           gp, 18(s2)
                  lbu          s3, 841(s1) #end load_store_instr_stream_2
                  sb           a4, 157(s9) #end load_store_instr_stream_1
                  lb           gp, 16(s2) #end load_store_instr_stream_0
                  sll          t3, s11, a7
                  auipc        s11, 651926
                  xori         sp, s10, -438
                  sltiu        t3, s11, 268
227:              slti         s11, zero, -1878
                  slt          s2, s11, t5
229:              bltu         gp, a0, 235f
                  slt          a0, a2, s0
                  and          ra, gp, s0
                  slt          t1, zero, a1
                  sll          s2, a6, gp
                  slti         s0, t0, -1158
                  sub          gp, t2, tp
                  la           t1, sub_2
                  ori          s4, t5, -872
                  addi         t1, t1, 281
                  srl          sp, t1, a2
                  sll          s8, ra, tp
main_j1:          jalr         gp, t1, -280 #jump main -> sub_2
                  sra          t0, s2, s6
235:              bgeu         a1, t5, 244f
                  auipc        t1, 991145
                  blt          s11, t6, 253f
                  sra          t0, s5, a5
                  ori          s0, a5, -1747
                  blt          t4, t2, 241f
241:              bgeu         t4, t1, 246f
                  and          a2, t4, s7
                  xor          s1, t3, s9
244:              auipc        s4, 828124
                  xor          a2, s3, gp
246:              ori          a7, s8, 827
                  blt          s9, t6, 250f
                  ori          t2, gp, -807
                  srl          s9, s7, a6
250:              bne          t1, a6, 252f
                  la           s10, sub_1
                  slt          s6, sp, a1
                  auipc        ra, 800455
                  sub          a1, a1, s10
                  slt          s4, s1, sp
                  addi         s10, s10, 472
                  auipc        ra, 443550
                  bne          zero, ra, main_j2 #branch to jump instr
                  add          t2, tp, t0
                  xori         a1, s4, -1818
                  xor          ra, s9, ra
main_j2:          jalr         gp, s10, -472 #jump main -> sub_1
                  bgeu         t4, t4, 259f
252:              auipc        s11, 114631
253:              sra          sp, s2, a5
                  auipc        s0, 746859
                  add          a7, s5, s0
                  sll          s8, t0, a1
                  add          s9, a4, t3
                  nop
259:              xori         s2, a6, 1202
                  nop
                  addi         t4, a4, 528
                  xori         t4, s7, -1697
                  sltiu        t2, s0, 152
                  srl          a6, s9, s8
                  ori          s10, s10, 1736
                  srai         s9, tp, 27
                  bge          s6, sp, 280f
                  addi         a7, s3, 1034
                  srli         t2, t3, 25
                  sltiu        gp, t3, 45
                  bge          s9, s3, 276f
                  and          s0, a1, t3
                  srai         a0, t3, 9
                  lui          a0, 106865
                  xori         s8, t1, 1206
276:              srl          sp, a1, sp
                  sra          t2, a6, zero
                  addi         s3, a6, 428
                  bgeu         a1, s10, 295f
280:              lui          ra, 363872
                  and          s0, a4, a1
                  addi         s8, s5, -921
                  slti         a6, s9, 1295
                  bge          t5, a2, 295f
                  sltu         s4, s9, s2
                  slti         s9, s3, -945
                  lui          a1, 346104
                  auipc        s8, 225126
                  blt          s2, a0, 291f
                  andi         s5, a3, -1960
291:              xori         gp, a7, 806
                  xor          s7, t5, t4
                  lui          gp, 650506
                  add          s10, s2, s5
295:              slti         a0, s2, -1850
                  sra          s3, s7, s0
                  slli         s10, tp, 17
                  nop
                  add          s5, tp, s8
                  auipc        a2, 407336
                  xori         s0, s1, -1628
                  add          s2, gp, sp
                  sub          s4, s0, t0
                  add          a7, s8, t2
                  slti         t6, t1, -457
                  add          a1, s6, gp
                  bltu         s2, s1, 317f
                  bltu         t0, s1, 327f
                  andi         zero, s4, -459
                  xori         s6, a0, 125
                  or           a7, s11, t6
                  andi         a2, tp, 1248
                  la           sp, region_0+1034 #start riscv_load_store_hazard_instr_stream_0
                  lhu          s5, 12(sp)
                  lbu          s6, -4(sp)
                  sb           t4, 1(sp)
                  lbu          a2, -11(sp)
                  sb           s6, 9(sp)
                  lbu          a6, -13(sp)
                  lbu          a1, 11(sp)
                  lb           s10, -11(sp)
                  lbu          s6, -13(sp)
                  or           s9, s10, gp
                  sb           a1, -13(sp)
                  lb           ra, -9(sp)
                  lhu          s7, 12(sp)
                  lh           gp, -14(sp)
                  sb           s10, 12(sp)
                  lh           s9, 12(sp)
                  sh           s7, 12(sp) #end riscv_load_store_hazard_instr_stream_0
                  slti         zero, a4, -148
                  lui          t3, 863770
                  or           t1, t1, s6
                  xori         a7, a5, 1211
317:              srli         s0, t5, 7
                  srai         t3, t2, 9
                  bne          t1, s10, 331f
                  bgeu         a6, a7, 340f
                  addi         t3, a5, 1538
                  xori         gp, t6, 1573
                  lui          s4, 366693
                  and          s8, s5, ra
                  sra          a6, a6, a5
                  or           a6, t1, t5
327:              bltu         s8, s5, 344f
                  auipc        t2, 698420
                  addi         a7, s0, -1713
                  nop
331:              sra          s0, t4, t1
                  slli         a7, s0, 2
                  add          s10, a4, t6
                  nop
                  bne          a4, a0, 350f
                  sub          a2, s0, s9
                  add          t2, s5, t2
                  slt          s3, a6, zero
                  lui          a4, 939743
340:              bgeu         t0, t5, 354f
                  bltu         ra, s2, 351f
                  ori          a0, s9, 605
                  xori         s3, sp, 1476
344:              xor          s11, t6, s8
                  sltu         a6, gp, sp
                  xor          s6, s7, a5
                  and          s1, s2, t4
                  blt          s9, a5, 349f
349:              auipc        t4, 244884
350:              bge          s4, a2, 368f
351:              sltiu        t6, t2, -456
                  sll          t4, s7, a2
                  ori          ra, a5, -660
354:              slli         a2, s3, 6
                  slt          a4, tp, s3
                  add          s4, t4, s6
                  xor          ra, t4, s4
                  and          zero, s7, s8
                  and          s5, a7, t5
                  ori          sp, t2, 1635
                  blt          t1, a4, 374f
                  sltiu        a2, s2, 1638
                  beq          s10, a4, 369f
                  and          s0, t3, zero
                  xor          s3, t2, a4
                  bltu         s11, s8, 374f
                  slti         s3, s0, -682
368:              bne          s0, a6, 378f
369:              nop
                  slti         zero, a2, -813
                  sll          t3, a0, sp
                  srl          s8, s1, t3
                  sltiu        a2, s0, -1937
374:              slti         gp, tp, -763
                  srli         t0, t6, 13
                  srai         a2, t3, 9
                  sltu         a1, a7, t4
378:              lui          a5, 62763
                  beq          t3, a6, 396f
                  xori         s6, tp, -1458
                  sra          a4, s2, t5
                  sltiu        s5, gp, 497
                  xori         s5, a0, 1638
                  sll          t2, t3, gp
                  sll          t2, a2, a4
                  lui          s8, 371679
                  sub          a6, t2, s2
                  slt          s0, a0, a2
                  beq          s0, a0, 405f
                  nop
                  srl          s0, s8, sp
                  sub          s0, s9, a2
                  auipc        t6, 350721
                  xor          s11, s0, a7
                  sra          a6, t4, s6
396:              sltiu        a1, t0, 871
                  beq          s6, s4, 413f
                  srai         s3, a3, 26
                  blt          a7, s6, 401f
                  sltiu        s0, t3, 522
401:              xori         s9, s8, -1895
                  lui          t6, 1031496
                  auipc        s7, 513549
                  beq          zero, a3, 405f
405:              lui          t6, 1039970
                  add          t2, a0, a3
                  andi         a5, t4, 849
                  xori         s8, s4, 988
                  bgeu         sp, t6, 418f
                  xori         s2, t4, 1359
                  add          a7, s5, sp
                  addi         a5, s4, 1018
413:              auipc        s6, 196455
                  slti         a0, zero, 429
                  blt          t2, a7, 432f
                  bgeu         tp, a3, 433f
                  andi         t4, a4, -1999
418:              or           s0, s8, t1
                  xori         a2, a4, 267
                  bltu         s9, a0, 430f
                  bge          s2, sp, 440f
                  bne          s8, gp, 427f
                  beq          t4, a1, 428f
                  srai         s1, s4, 1
                  bgeu         ra, sp, 428f
                  sra          a2, t1, s0
427:              bge          t4, s11, 439f
428:              sra          ra, t3, a0
                  bge          a5, s5, 439f
430:              ori          t0, s0, 1377
                  slt          s8, gp, a7
432:              sub          t3, s0, s2
433:              sub          t2, tp, s2
                  bgeu         t6, s8, 447f
                  bge          t1, sp, 451f
                  andi         s11, t2, 1130
                  auipc        ra, 12156
                  srai         t2, t2, 12
439:              bne          s11, s5, 445f
440:              bge          s3, s5, 456f
                  lui          s10, 36822
                  slti         a1, t2, -1211
                  bne          s7, a6, 461f
                  beq          t4, t5, 452f
445:              xor          s5, s0, s1
                  srli         s7, s3, 30
447:              sll          ra, gp, s10
                  add          s8, t2, zero
                  slt          s2, a1, s10
                  sub          s0, t6, s6
451:              lui          t6, 481657
452:              xor          t3, s6, a6
                  or           s4, a3, a2
                  auipc        t3, 798831
                  bltu         zero, a4, 457f
456:              and          s4, gp, a2
457:              bltu         t0, a4, 467f
                  ori          s6, a2, -608
                  add          a6, s2, a6
                  ori          s9, s5, -1433
461:              slti         s7, s0, -924
                  sra          s5, a0, s6
                  addi         s1, s11, -1859
                  bltu         t6, t5, 484f
                  slt          a0, t1, s5
                  sub          a7, s9, t3
467:              addi         t2, tp, 1604
                  blt          sp, s0, 474f
                  xor          s4, s3, tp
                  sltiu        s9, t2, 1538
                  bge          a2, s6, 479f
                  srl          t0, gp, s4
                  slli         a7, t0, 14
474:              slt          a2, s10, s0
                  blt          t1, s6, 476f
476:              srl          gp, t0, a1
                  beq          ra, a4, 488f
                  and          s7, ra, ra
479:              slti         t2, s7, 682
                  or           t1, a7, s5
                  bgeu         s3, s7, 495f
                  andi         s7, a6, -278
                  xori         a0, s4, -806
484:              ori          t6, t1, 689
                  bne          s4, t5, 499f
                  sltu         s6, s8, s6
                  addi         t4, s1, 786
488:              bne          s3, sp, 499f
                  slli         t3, a3, 2
                  sltu         s4, s3, gp
                  bltu         t3, s1, 499f
                  bgeu         tp, t5, 497f
                  nop
                  ori          s0, s3, -904
495:              and          a0, s3, zero
                  andi         s1, gp, -950
497:              auipc        s5, 911516
                  bge          a7, a2, 499f
499:              addi         s8, a6, -1347
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slt          s9, a0, a1
                  addi         t5, t5, -8
                  ori          a4, s6, 1082
                  srli         a4, s1, 10
                  sub          zero, s6, t5
                  sw           gp, 4(t5)
                  addi         s1, s6, -206
                  srl          t4, a5, a2
                  sra          s7, s10, a7
                  add          s0, s9, s0
                  la           gp, region_0+978 #start riscv_load_store_rand_instr_stream_0
                  sra          ra, t2, a6
                  lbu          a6, 1(gp)
                  lbu          s5, 1(gp)
                  auipc        t3, 353953
                  slti         t1, a3, -1296
                  sb           t0, 5(gp)
                  slti         s0, a0, 1064
                  or           a1, ra, a4
                  sh           s0, -16(gp)
                  sb           s6, 9(gp)
                  sra          a2, s9, t0
                  andi         s3, a7, -891
                  xor          a4, s3, tp
                  lw           s10, 2(gp)
                  ori          t4, s0, 653
                  andi         s6, zero, -700
                  lbu          a2, -6(gp)
                  lbu          s0, 1(gp)
                  slli         s10, a4, 26
                  sltiu        s10, s0, -385
                  slt          s1, a4, ra
                  nop
                  sb           s6, 3(gp)
                  lbu          t3, -12(gp)
                  ori          t1, a6, -1073
                  sh           s1, 12(gp)
                  lui          s0, 996037
                  sub          a1, s2, a5
                  xor          s3, t2, s3
                  addi         s4, a6, -1845
                  or           s8, a3, a3
                  or           a6, t5, s0
                  andi         t6, s3, -194
                  sltiu        s9, s0, 403
                  addi         t3, a6, -1448
                  lui          sp, 813085
                  xori         a1, s7, 1372
                  ori          s4, a1, -706
                  slt          t6, a4, t2
                  sb           a2, -3(gp)
                  lhu          t1, 14(gp) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_0+1746 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s7, 9(a4)
                  lh           s8, -16(a4)
                  lh           s6, -16(a4)
                  lb           t6, 21(a4)
                  sb           t4, 21(a4)
                  sw           gp, -30(a4)
                  lhu          s10, 58(a4)
                  lbu          t1, 17(a4)
                  andi         a5, s3, -1051
                  lb           a7, 37(a4)
                  sltu         s10, s6, s6
                  lb           s0, -43(a4) #end riscv_load_store_hazard_instr_stream_0
                  la           gp, region_1+40 #start load_store_instr_stream_2
                  la           t3, region_1+476 #start load_store_instr_stream_0
                  lbu          t2, 76(t3)
                  lbu          zero, 969(gp)
                  la           s7, region_1+264 #start load_store_instr_stream_3
                  sb           t1, -13(s7)
                  la           a7, region_1+1111 #start load_store_instr_stream_1
                  sb           a4, 97(gp)
                  sb           s8, 245(t3)
                  sh           a3, -5(a7)
                  lh           s6, -14(s7)
                  lbu          a4, 12(a7)
                  lb           s11, 5(a7)
                  lb           zero, 1359(gp)
                  lbu          a5, 105(t3)
                  lb           a5, -67(t3)
                  sb           a6, 1725(gp)
                  lbu          t6, -1(t3)
                  lbu          t2, 149(t3)
                  sw           t3, 1064(gp)
                  sb           a4, -12(a7)
                  sb           a2, 1148(gp)
                  lw           ra, 64(t3)
                  lh           s3, 6(s7)
                  lb           t2, 4(a7)
                  sb           t2, 158(t3)
                  lbu          s1, 2(s7)
                  lw           t1, 568(gp)
                  sh           s5, -5(a7)
                  sb           t3, -5(s7)
                  sb           t5, 10(a7)
                  lb           s1, 137(t3)
                  sb           s5, 101(gp) #end load_store_instr_stream_2
                  lh           s8, -1(a7) #end load_store_instr_stream_1
                  sh           a6, 10(s7) #end load_store_instr_stream_3
                  sb           s5, -211(t3) #end load_store_instr_stream_0
                  bgeu         s8, a0, 13f
                  ori          s5, a2, -1205
                  addi         s11, a2, -692
                  nop
                  xori         sp, a1, -722
                  sll          sp, s3, s5
                  xori         s2, s11, 1315
                  sltu         t3, s3, a5
                  auipc        ra, 13570
                  blt          t1, sp, 15f
                  auipc        a7, 444826
                  addi         s4, s10, 1605
                  bltu         s5, t1, 14f
13:               sll          s8, t6, s1
14:               xor          s6, a1, s3
15:               lui          s10, 769585
                  xori         a5, t2, -1851
                  and          t2, t1, t6
                  xor          a2, t2, t2
                  andi         s3, a1, -793
                  add          s1, s1, s4
                  lui          s2, 706981
                  srli         t6, a2, 13
                  nop
                  bltu         a1, a4, 35f
                  xori         gp, a5, -1315
                  addi         zero, s3, -930
                  xor          s1, a0, t2
                  slli         t0, a7, 15
                  srli         s7, s11, 5
                  sub          s5, s5, t1
                  srl          t0, s6, s9
                  ori          a0, s2, 722
                  add          t2, s6, s11
                  sub          s2, a7, s5
35:               auipc        s3, 580316
                  sub          gp, s3, s4
                  slli         zero, t0, 19
                  bltu         t3, t3, 47f
                  nop
                  bgeu         s7, sp, 60f
                  auipc        s6, 13709
                  bge          a7, t2, 52f
                  slti         zero, s8, 1
                  slt          a4, a6, s1
                  slli         a0, zero, 6
                  srl          s11, s6, a1
47:               add          t1, gp, s10
                  nop
                  bge          a2, s8, 68f
                  slt          t6, s4, s7
                  and          a5, t3, a2
52:               ori          a0, t6, 1223
                  and          t1, gp, a3
                  bltu         a1, a1, 57f
                  ori          s11, s5, 1245
                  xor          s9, t3, t5
57:               srli         a7, a3, 18
                  slt          a0, s1, a2
                  and          s2, s7, a2
60:               beq          a1, s3, 80f
                  slt          t2, s1, ra
                  nop
                  add          s2, s7, s2
                  addi         s0, s11, -1192
                  sltiu        s11, s8, -1961
                  bne          s5, a0, 84f
                  srl          s2, ra, t5
68:               bltu         s6, s7, 78f
                  srl          ra, s8, a4
                  auipc        zero, 527711
                  addi         s5, ra, -757
                  add          gp, s7, gp
                  nop
                  srli         s8, zero, 22
                  add          t3, a2, t5
                  and          a1, sp, s6
                  xor          t0, s2, t0
78:               or           a2, a0, t4
                  or           a7, t2, t3
80:               srl          t6, a1, t1
                  slt          a5, a0, a5
                  blt          s1, t1, 83f
83:               srai         s7, a7, 27
84:               auipc        s9, 802174
                  lui          t1, 404336
                  srai         s7, s11, 30
                  addi         s2, s7, -563
                  slti         a4, t0, 277
                  bge          a6, tp, 90f
90:               srli         s11, s11, 8
                  andi         s3, t6, 500
                  srli         zero, s4, 18
                  auipc        t3, 958876
                  addi         a0, a7, 323
                  bgeu         a5, a0, 108f
                  addi         t2, t2, -1702
                  xor          t0, s0, s9
                  nop
                  sra          a6, a6, a1
                  bgeu         t2, a3, 110f
                  bne          s2, sp, 108f
                  nop
                  or           a1, s7, t0
                  xor          s9, s11, t0
                  sll          s1, t3, s1
                  srl          a4, s8, s11
                  sra          s11, t3, s4
108:              slli         a4, a3, 12
                  or           sp, s2, s9
110:              andi         s9, s9, 268
                  or           zero, s8, t0
                  lui          s9, 169134
                  sltiu        s7, s10, 1592
                  ori          sp, ra, 1887
                  bne          a1, s5, 119f
                  sub          t4, t4, a6
                  bge          a0, s11, 129f
                  ori          t3, s5, 1159
119:              auipc        a4, 269957
                  sll          zero, t3, s7
                  bne          s10, a3, 135f
                  srli         s2, t5, 5
                  sra          s0, a4, s7
                  slt          a6, a3, zero
                  sltu         t0, s3, gp
                  auipc        a1, 130384
                  andi         s11, zero, 1146
                  sltiu        s0, a2, 1831
129:              or           s0, s8, a1
                  auipc        t1, 898026
                  beq          s0, tp, 142f
                  ori          s1, s8, 1524
                  nop
                  andi         s11, s3, -620
135:              bne          t3, a5, 138f
                  sltu         s11, s3, s6
                  slli         s7, a2, 13
138:              lui          a0, 168804
                  bltu         t1, s1, 153f
                  xor          ra, s9, s2
                  bne          ra, a1, 160f
142:              bgeu         s5, s3, 149f
                  sltiu        s5, ra, -725
                  sub          t2, a5, gp
                  srai         a2, s3, 24
                  bgeu         a6, t5, 154f
                  srai         a6, s11, 11
                  srai         s10, a6, 15
149:              bgeu         a4, s0, 166f
                  sll          s0, zero, ra
                  and          t1, a3, t1
                  sra          a6, s4, t5
153:              and          a1, tp, s1
154:              sub          s1, a6, s6
                  slt          s9, t3, a1
                  nop
                  add          t2, t4, s0
                  add          a6, a5, ra
                  auipc        ra, 25715
160:              beq          t3, zero, 163f
                  blt          tp, ra, 168f
                  srai         t1, s10, 16
163:              sra          a5, a0, t3
                  sra          sp, sp, s4
                  bne          t4, sp, 168f
166:              add          s5, ra, a0
                  srai         s6, zero, 24
168:              andi         ra, a5, 913
                  or           t6, s9, s7
                  srli         a6, s2, 9
                  lw           gp, 4(t5)
                  srai         s3, t0, 10
                  addi         t5, t5, 8
                  auipc        s11, 316070
                  slli         s1, a1, 11
                  xori         s3, a3, -1016
                  srli         t1, s6, 18
                  andi         s9, t5, 123
                  srli         zero, s8, 12
281:              addi x24, x3, 1
281:              jalr x24, x24, 0
sub_1:            sra          s5, s0, a1
                  bltu         s10, t6, sub_1_stack_p
sub_1_stack_p:    addi         t5, t5, -44
                  addi         t6, a7, -1453
                  sw           gp, 4(t5)
                  srai         a7, zero, 2
                  slli         t0, s6, 21
                  addi         ra, s10, -1565
                  sll          t3, a5, ra
                  srai         sp, s1, 22
                  la           ra, region_0+41 #start load_store_instr_stream_2
                  la           a7, region_0+343 #start load_store_instr_stream_4
                  la           t1, region_0+1787 #start load_store_instr_stream_3
                  lbu          s4, -16(a7)
                  la           t3, region_0+237 #start load_store_instr_stream_1
                  lh           s10, 239(a7)
                  la           a1, region_0+1647 #start load_store_instr_stream_0
                  lbu          s9, 200(a7)
                  sb           t1, 18(t3)
                  sh           s11, 23(ra)
                  lb           a2, -931(a1)
                  lbu          a5, 76(ra)
                  lb           s6, -32(t3)
                  sb           s4, 242(a1)
                  lbu          s9, 18(t1)
                  lbu          s0, -586(a1)
                  lh           t0, 45(ra)
                  lbu          gp, 33(t3)
                  sb           sp, 31(t1)
                  lbu          s1, 185(ra)
                  sb           s3, -46(t1)
                  lbu          s3, -16(a7)
                  lb           t4, 287(a1)
                  lbu          a2, -58(t3)
                  lbu          a5, -226(a7)
                  sh           t5, 15(t1)
                  sb           s3, 80(ra)
                  lbu          s11, -163(a1)
                  lbu          gp, -48(t3)
                  lb           s10, 208(a7)
                  lw           a2, -49(t3)
                  sb           s9, 68(a7)
                  sb           ra, -11(a7) #end load_store_instr_stream_4
                  lb           t2, 219(ra)
                  lb           t2, 42(t1)
                  sb           a0, 149(ra)
                  sb           a1, 89(ra)
                  lhu          a4, -423(a1)
                  lbu          a4, 88(ra)
                  lbu          a4, 0(t1)
                  lb           s0, 204(ra) #end load_store_instr_stream_2
                  lb           t2, -86(a1)
                  lh           s2, -33(t3) #end load_store_instr_stream_1
                  sb           s4, 17(t1) #end load_store_instr_stream_3
                  lb           a6, 296(a1)
                  sh           t6, -655(a1) #end load_store_instr_stream_0
                  la           sp, region_1+1111 #start riscv_load_store_hazard_instr_stream_1
                  sb           s7, -225(sp)
                  srl          ra, a4, s2
                  srai         s3, t2, 29
                  lb           s4, -225(sp)
                  sb           a6, -208(sp)
                  lbu          s10, 20(sp)
                  sb           a6, 20(sp)
                  lbu          s3, 182(sp)
                  lbu          a5, -110(sp)
                  lb           a1, -110(sp)
                  lh           t3, 41(sp)
                  sb           sp, -220(sp)
                  lbu          t2, -220(sp)
                  lh           a4, 101(sp)
                  sw           t4, 101(sp)
                  lw           zero, 101(sp)
                  lbu          s4, 37(sp)
                  sb           ra, 203(sp)
                  lb           s6, 51(sp)
                  lbu          t2, 51(sp)
                  lbu          t4, 233(sp)
                  lb           s8, -228(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_1+672 #start riscv_load_store_rand_instr_stream_2
                  andi         a7, s1, -1666
                  sll          a0, a1, a6
                  xor          a0, t3, a0
                  andi         ra, t6, 1995
                  lh           s5, 12(s8)
                  nop
                  srl          s5, a0, ra
                  lhu          gp, -6(s8)
                  lh           t1, -4(s8)
                  lbu          sp, -15(s8)
                  sra          a4, s11, s2
                  srai         a0, a3, 15
                  or           t1, a3, a2
                  lb           t1, -4(s8)
                  lb           s0, 5(s8)
                  xor          a6, t5, s3
                  slli         s2, s5, 12
                  sb           s1, -10(s8)
                  lb           s4, -6(s8)
                  nop
                  lb           t0, 10(s8)
                  lb           s11, 11(s8)
                  andi         a1, s6, 1322
                  or           a6, a2, gp
                  lui          t2, 294300
                  lbu          a7, -1(s8)
                  lhu          a4, 16(s8)
                  srai         t1, s4, 10
                  ori          s2, s10, -177
                  lh           s10, -10(s8)
                  lhu          t1, -4(s8)
                  lbu          s5, 11(s8)
                  lb           t2, 13(s8)
                  sb           s3, -3(s8)
                  lh           a1, 10(s8) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+797 #start riscv_load_store_hazard_instr_stream_0
                  sw           s7, 399(sp)
                  lb           a1, -144(sp)
                  nop
                  lbu          gp, 1040(sp)
                  lb           s1, 1040(sp)
                  sb           gp, 1040(sp)
                  lb           s2, 1040(sp)
                  ori          s11, a7, -276
                  lb           gp, 726(sp)
                  sb           a0, 726(sp)
                  lbu          a6, 726(sp)
                  lbu          s0, 726(sp)
                  sb           s11, 726(sp)
                  sra          t0, s0, a6
                  sb           s2, 726(sp)
                  lb           s0, 726(sp)
                  srai         s8, a3, 12
                  lb           s8, 726(sp)
                  lbu          s0, 726(sp)
                  lb           s1, -740(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t6, region_0+697 #start load_store_instr_stream_0
                  sb           t0, -10(t6)
                  la           s1, region_0+457 #start load_store_instr_stream_1
                  lbu          s11, 164(s1)
                  lbu          s10, -16(t6)
                  sb           a0, -58(s1)
                  lb           t4, -3(t6)
                  sb           t5, -14(t6)
                  lb           s6, -74(s1)
                  sh           a1, -3(t6)
                  sb           s1, 128(s1)
                  lb           s2, 104(s1)
                  lh           a7, -13(t6)
                  lbu          t3, -26(s1) #end load_store_instr_stream_1
                  sb           a3, -3(t6) #end load_store_instr_stream_0
                  la           t3, region_0+1662 #start riscv_load_store_hazard_instr_stream_2
                  add          s1, zero, a4
                  lbu          a7, -177(t3)
                  slti         a5, t2, -2047
                  lbu          s3, -177(t3)
                  sb           ra, -177(t3)
                  sll          s10, t0, t6
                  sb           t5, -177(t3)
                  lb           a2, -177(t3)
                  sb           zero, 226(t3)
                  add          gp, t6, tp
                  ori          s5, s4, -1964
                  lw           s3, 226(t3)
                  lh           s9, 226(t3)
                  lw           s5, -150(t3)
                  lbu          s10, -150(t3)
                  xori         s2, s11, 985
                  lbu          s10, -143(t3)
                  sb           a2, -143(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+176 #start load_store_instr_stream_0
                  lh           s8, 8(sp)
                  la           a2, region_1+1158 #start load_store_instr_stream_1
                  lbu          s8, -5(sp)
                  lbu          s7, -207(a2)
                  sh           t6, -132(a2)
                  sb           zero, 6(sp)
                  lbu          a5, -603(a2)
                  lb           s5, 14(sp)
                  lb           s9, -103(a2)
                  lbu          zero, 3(sp)
                  lbu          a5, -118(a2) #end load_store_instr_stream_1
                  sb           s10, 5(sp) #end load_store_instr_stream_0
                  srli         s8, t6, 7
                  or           s9, s5, s9
                  beq          t1, t0, 17f
                  add          a6, gp, s1
                  sltu         a6, s6, s10
                  auipc        s7, 590222
                  slti         s6, t2, 824
                  or           a0, s7, t6
                  ori          s3, t6, 15
                  sra          a6, s7, s8
                  auipc        a5, 201806
                  sll          s7, sp, a1
                  bne          a0, gp, 31f
                  bltu         zero, s6, 16f
                  lui          s11, 81664
                  srli         s11, s11, 0
16:               srli         a1, a3, 31
17:               xori         a1, ra, -841
                  blt          a7, s6, 32f
                  srli         s2, s8, 16
                  sltu         s7, t5, a2
                  sltiu        a6, tp, -1345
                  auipc        s4, 84923
                  nop
                  slti         s10, a3, 1492
                  bltu         s7, t3, 36f
                  slt          t1, t2, a2
                  slti         s10, t1, -553
                  auipc        a2, 876127
                  slli         t0, t3, 2
                  bne          t0, gp, 49f
31:               slli         t4, gp, 5
32:               slli         zero, t5, 15
                  add          t1, ra, tp
                  lui          a2, 783556
                  nop
36:               sltu         s5, ra, s3
                  bltu         s4, s4, 48f
                  lui          a6, 875779
                  addi         a0, s11, 1411
                  bge          a1, s8, 57f
                  slti         s2, a3, -1365
                  slli         s4, tp, 7
                  slli         s5, s3, 19
                  slt          s11, zero, a4
                  addi         sp, t1, 1018
                  sub          s7, s5, a4
                  auipc        s8, 547508
48:               blt          t0, s9, 66f
49:               srai         s0, a0, 4
                  srl          s10, a3, t2
                  ori          s0, a7, 608
                  xori         a6, s4, 855
                  bltu         a0, gp, 65f
                  srai         zero, t1, 30
                  bne          t2, a7, 73f
                  addi         s6, s7, 1329
57:               bge          a1, a2, 67f
                  srl          a1, sp, gp
                  srli         s7, a5, 0
                  or           s10, s2, s7
                  bne          a1, s9, 70f
                  srl          a7, s7, a0
                  auipc        s6, 951981
                  add          gp, s0, sp
65:               sub          s9, a1, s0
66:               add          s0, s10, s4
67:               sltu         s11, sp, s6
                  andi         s5, t6, -1061
                  sltu         s7, t5, s2
70:               add          t2, s7, t1
                  and          gp, s3, gp
                  add          s6, t2, ra
73:               srli         s6, ra, 7
                  and          t6, a0, a7
                  slti         s10, s11, -1173
                  blt          a0, a7, 96f
                  srl          a1, s3, s1
                  beq          gp, a3, 96f
                  bne          a4, s11, 81f
                  lui          a5, 716641
81:               sltiu        zero, gp, -1710
                  bgeu         s1, gp, 99f
                  addi         a4, a1, -748
                  nop
                  ori          t6, t1, 1574
                  slti         s11, s0, 88
                  lui          a1, 423069
                  slti         a1, tp, -428
                  srai         s9, a5, 4
                  slti         gp, s6, -351
                  sub          t3, a1, s5
                  or           sp, t3, s10
                  bgeu         s8, t4, 103f
                  sltu         s6, t4, s2
                  srai         t4, gp, 4
96:               bge          t3, gp, 102f
                  bne          tp, s5, 111f
                  slli         t1, a0, 19
99:               ori          t4, s9, 1371
                  addi         s11, tp, 690
                  sra          t6, a7, a4
102:              blt          t5, s11, 114f
103:              beq          s1, t0, 104f
104:              srli         t1, t2, 28
                  add          s8, ra, t0
                  sltiu        t6, a5, -1216
                  xori         gp, s0, 101
                  addi         s1, s7, 741
                  slt          s6, s6, s11
                  sra          s0, s0, t2
111:              slli         t3, t5, 23
                  beq          s1, t4, 125f
                  xor          s6, t4, t4
114:              sltiu        s2, t2, -244
                  bne          tp, sp, 130f
                  blt          s6, s8, 129f
                  beq          s10, s8, 119f
                  nop
119:              ori          s11, s7, -102
                  sub          a4, t4, t4
                  srli         s4, s1, 8
                  srli         ra, a0, 8
                  beq          s10, a4, 134f
                  bgeu         s6, a1, 128f
125:              lui          s11, 286816
                  slti         s8, a5, 1153
                  andi         t0, a5, -930
128:              add          a5, sp, t0
129:              sltiu        t6, a5, -191
130:              sll          s11, t3, tp
                  srai         gp, zero, 17
                  ori          s5, s1, 516
                  xor          s10, sp, t6
134:              srl          t6, a1, a6
                  slt          s9, t5, a3
                  slli         s10, s1, 30
                  beq          s8, t2, 142f
                  lui          s8, 54833
                  bne          s10, sp, 145f
                  ori          t6, sp, 545
                  auipc        a4, 355148
142:              andi         s2, a3, 383
                  blt          a6, s8, 162f
                  addi         s7, a6, 1709
145:              bltu         zero, tp, 156f
                  bne          s4, s3, 152f
                  auipc        ra, 641755
                  auipc        zero, 498994
                  add          a7, a4, t4
                  slt          s9, a5, a3
                  ori          s6, a0, -674
152:              xor          s2, a0, t5
                  srai         ra, s6, 11
                  slli         a5, tp, 28
                  xor          s2, s4, s4
156:              bltu         t6, s8, 167f
                  auipc        s11, 409931
                  sltiu        s6, s9, -900
                  slli         a5, t2, 16
                  andi         a0, s4, -274
                  srl          gp, a7, a2
162:              andi         a2, gp, -1867
                  bne          s3, t2, 178f
                  ori          t0, tp, 1948
                  slli         a6, s7, 29
                  nop
167:              bne          s10, s0, 187f
                  add          a1, s8, s2
                  bltu         a0, s10, 181f
                  slli         s2, s3, 25
                  srai         t2, zero, 15
                  nop
                  addi         t4, s6, -1447
                  sltiu        s10, a6, 1274
                  nop
                  or           s2, sp, s8
                  srl          t2, t3, s6
178:              xor          t4, s0, zero
                  la           sp, region_0+88 #start riscv_load_store_rand_instr_stream_1
                  sltiu        t2, ra, 1803
                  lw           a4, 528(sp)
                  lb           s2, 1431(sp)
                  lhu          s9, 1814(sp)
                  srli         s8, s5, 19
                  lh           s2, 92(sp)
                  nop
                  srai         t0, t2, 24
                  sb           t0, 476(sp)
                  sw           s4, 112(sp)
                  srai         s6, s2, 16
                  sw           s6, 1564(sp)
                  lbu          s10, 1834(sp)
                  lb           zero, 847(sp)
                  slt          s8, s7, s6
                  slt          t3, gp, t4
                  lb           zero, 509(sp)
                  add          s6, t0, a3
                  lhu          s1, 26(sp)
                  ori          t3, t1, -98
                  sb           s6, 1515(sp)
                  lhu          a5, 558(sp)
                  sb           t4, 1305(sp)
                  lb           a4, 1012(sp)
                  lbu          zero, 1623(sp)
                  lbu          t4, 690(sp)
                  lhu          s8, 1820(sp)
                  auipc        t1, 312734
                  lb           zero, 869(sp)
                  srl          a7, t6, s2
                  slt          a5, a6, a5
                  sltiu        t3, a7, 121
                  addi         t1, s11, -136
                  lbu          a1, 1723(sp)
                  addi         gp, a1, 983
                  sltu         t0, a4, s2
                  lbu          t4, 1787(sp)
                  slti         t0, t0, 1380
                  lb           gp, 131(sp)
                  lbu          s4, 615(sp)
                  lb           t0, 1123(sp)
                  lb           a2, 1709(sp) #end riscv_load_store_rand_instr_stream_1
                  ori          s8, t3, -302
                  beq          s6, s6, 185f
181:              sltiu        s10, s10, 1517
                  ori          sp, s0, 1097
                  bgeu         s8, zero, 198f
                  slt          a0, ra, s7
185:              andi         t4, a7, -60
                  bne          t4, s4, 205f
187:              xor          a4, t0, s9
                  sltu         t4, ra, a5
                  lui          s2, 56322
                  or           s0, sp, a0
                  bltu         s4, s0, 197f
                  bge          s8, t6, 202f
                  sra          s11, zero, t5
                  sltiu        a6, a7, -1767
                  beq          tp, t6, 208f
                  ori          a0, gp, -1396
197:              slt          a7, s4, a2
198:              sll          a5, s10, t2
                  sltu         a7, sp, ra
                  andi         a5, s3, 37
                  sub          s11, t5, s11
202:              bgeu         s11, a6, 219f
                  bge          t0, s10, 216f
                  sra          t2, s10, tp
205:              add          a7, t4, a6
                  slt          s10, s10, s8
                  ori          a6, t5, 35
208:              bltu         s7, s3, 222f
                  sltu         gp, tp, t2
                  nop
                  beq          a7, s2, 229f
                  bge          t6, s5, 222f
                  sra          s5, a3, s6
                  bltu         s11, t5, 215f
215:              sra          a5, s7, s4
216:              xor          s4, t3, s8
                  lui          s0, 700890
                  bgeu         s2, ra, 230f
219:              bne          tp, zero, 223f
                  andi         s8, t3, 913
                  srli         s5, s6, 22
222:              beq          a1, t1, 236f
223:              andi         t4, s9, -1604
                  slli         s2, s2, 31
                  add          a6, a6, s8
                  auipc        a4, 776546
                  ori          s3, s1, 1085
                  ori          s0, a0, 481
229:              srl          s3, a2, a6
230:              sltu         a4, t6, a3
                  bge          t5, t6, 249f
                  bgeu         zero, a0, 235f
                  nop
                  and          s4, s8, s1
235:              srli         zero, t4, 26
236:              sltu         a4, t1, s10
                  or           s11, s2, s1
                  srl          s7, s4, a7
                  srli         t0, s10, 31
                  add          t3, s10, tp
                  bgeu         s0, gp, 259f
                  or           a1, sp, t0
                  srl          t3, s2, t1
                  and          s5, s3, ra
                  blt          a0, s2, 262f
                  nop
                  srai         gp, a1, 10
                  sll          s2, a4, a2
249:              auipc        t3, 357580
                  xor          gp, s11, a2
                  srai         t6, s2, 13
                  or           s6, s1, s6
                  sra          a7, a2, s2
                  nop
                  beq          tp, a0, 266f
                  sra          t0, s4, s9
                  or           s0, t2, s8
                  addi         s0, zero, -1836
259:              sltiu        s4, a3, 744
                  or           s7, ra, sp
                  ori          a6, s7, -1715
262:              sltiu        s8, t0, -1022
                  xori         s9, zero, -51
                  andi         t3, s4, 1667
                  srli         s7, s3, 30
266:              sub          a6, s0, s1
                  bgeu         sp, sp, 269f
                  slt          s10, s4, s5
269:              bne          a2, a3, 271f
                  sll          s5, s7, s6
271:              add          a5, s4, t6
                  slti         t4, a4, -1359
                  beq          zero, s2, 282f
                  addi         s11, t3, -838
                  auipc        s11, 357278
                  bltu         s11, s6, 287f
                  sra          s2, a0, s7
                  sll          s11, s0, sp
                  sltu         gp, a7, t3
                  sltiu        sp, s3, 507
                  auipc        t1, 653111
282:              bltu         t0, s10, 299f
                  slti         t1, a6, -1845
                  andi         s8, s6, 1577
                  sra          s1, t0, s2
                  srl          a2, a3, t2
287:              auipc        ra, 197783
                  bgeu         a6, a3, 306f
                  sltu         s4, s7, tp
                  bne          t2, s5, 305f
                  beq          s0, sp, 301f
                  sub          gp, a2, a2
                  sltu         t1, sp, zero
                  bgeu         ra, s9, 296f
                  beq          s10, a0, 298f
296:              xori         s9, s5, -182
                  srli         s1, a3, 27
298:              sll          s8, s1, a5
299:              add          t6, s1, s5
                  bne          s9, t2, 309f
301:              slti         s3, gp, 1978
                  andi         t3, s4, 1753
                  xori         t4, t3, 405
                  bgeu         sp, a3, 310f
305:              xori         s3, tp, -1473
306:              srl          zero, a0, a3
                  sltiu        t4, tp, -96
                  bgeu         ra, s9, 326f
309:              bne          s5, s1, 321f
310:              nop
                  and          s3, a5, t3
                  srl          s6, t5, s7
                  nop
                  sra          sp, s2, s10
                  slli         s5, s9, 25
                  srl          sp, ra, a1
                  add          s3, s6, a7
                  lui          a1, 730400
                  blt          s6, s0, 329f
                  bge          a1, a5, 329f
321:              sltu         zero, s5, t4
                  la           a5, region_1+1530 #start riscv_load_store_rand_instr_stream_0
                  lb           s7, 25(a5)
                  lbu          t4, -19(a5)
                  lbu          s4, 41(a5)
                  addi         s6, s5, 575
                  lb           a1, 61(a5)
                  lbu          s6, 57(a5)
                  slli         gp, a0, 15
                  sb           s5, -9(a5)
                  sb           a0, -23(a5)
                  or           s2, a2, t5
                  sb           a1, -44(a5)
                  sb           t3, 12(a5)
                  nop
                  lbu          t1, 33(a5)
                  lbu          t1, 23(a5)
                  sltiu        s0, a0, -1477
                  sb           s10, 64(a5)
                  lbu          s8, 50(a5)
                  lb           sp, -37(a5)
                  addi         t4, tp, -1452
                  lb           s7, 53(a5)
                  sltiu        gp, a0, -732
                  srai         sp, s2, 22
                  lbu          s6, 22(a5)
                  lbu          t3, -40(a5)
                  sb           s7, 59(a5)
                  lhu          s8, 6(a5)
                  ori          t1, gp, -834
                  lb           s2, 52(a5)
                  srl          a0, s11, s11
                  sb           s6, -46(a5)
                  lh           s9, -54(a5) #end riscv_load_store_rand_instr_stream_0
                  and          s9, s11, a7
                  bge          ra, s4, 329f
                  beq          a2, a5, 329f
                  beq          t5, a4, 329f
326:              sll          s6, t5, s3
                  slt          s7, ra, a1
                  and          a7, s0, s9
329:              srai         s8, a5, 13
                  lw           gp, 4(t5)
                  srli         s0, zero, 24
                  lui          t0, 78084
                  addi         t5, t5, 44
                  and          a2, ra, s8
                  sub          a6, t2, a5
595:              addi x18, x3, 1
595:              jalr x18, x18, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x4, x30, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x11, 0x3 # BREAKPOINT
                  beq x12, x11, ebreak_handler
                  li x11, 0x8 # ECALL_UMODE
                  beq x12, x11, ecall_handler
                  li x11, 0x9 # ECALL_SMODE
                  beq x12, x11, ecall_handler
                  li x11, 0xb # ECALL_MMODE
                  beq x12, x11, ecall_handler
                  li x11, 0x1
                  beq x12, x11, instr_fault_handler
                  li x11, 0x5
                  beq x12, x11, load_fault_handler
                  li x11, 0x7
                  beq x12, x11, store_fault_handler
                  li x11, 0xc
                  beq x12, x11, pt_fault_handler
                  li x11, 0xd
                  beq x12, x11, pt_fault_handler
                  li x11, 0xf
                  beq x12, x11, pt_fault_handler
                  li x11, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x11, illegal_instr_handler
                  csrr x11, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x30, x4, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
