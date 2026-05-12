.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x21, 0x40000100
                  csrw 0x301, x21
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x4
                  li x2, 0x80000000
                  li x3, 0xf0fe8e74
                  li x4, 0x80000000
                  li x5, 0x3
                  li x6, 0x6a4e8663
                  li x7, 0x80000000
                  li x8, 0xc362f1c6
                  li x9, 0xc5562852
                  li x10, 0xa
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x4
                  li x16, 0xf7c0e35c
                  li x17, 0x87524b3b
                  li x18, 0x92f9d4cd
                  li x19, 0xaf2d0875
                  li x20, 0x0
                  li x21, 0xfc4b1f7c
                  li x22, 0xd
                  li x23, 0xff01b30e
                  li x24, 0x80000000
                  li x26, 0x0
                  li x27, 0x6
                  li x28, 0x6
                  li x29, 0xfaa44fde
                  li x30, 0x8
                  li x31, 0xfcca438d
                  la x11, user_stack_end
main:             la           sp, region_1+593 #start riscv_load_store_hazard_instr_stream_1
                  sub          t4, s8, s8
                  sra          s6, t6, a4
                  lbu          a0, 657(sp)
                  sh           gp, 657(sp)
                  addi         zero, a1, -785
                  lbu          a7, 763(sp)
                  lb           t0, 763(sp)
                  srai         t3, tp, 1
                  sw           s0, 763(sp)
                  lbu          s10, 763(sp)
                  sh           a1, -235(sp)
                  sb           t5, -235(sp)
                  lbu          s3, 1008(sp)
                  srl          t1, a6, s5
                  lb           s5, 1008(sp)
                  lh           t2, -3(sp)
                  sh           t3, -295(sp)
                  lbu          gp, 1240(sp)
                  auipc        a7, 976435
                  sb           a7, 1240(sp)
                  lb           s3, -88(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+29 #start load_store_instr_stream_1
                  sh           t3, 581(tp)
                  lbu          t2, 329(tp)
                  la           a2, region_0+1769 #start load_store_instr_stream_0
                  sb           t0, 1198(tp)
                  lbu          a0, 8(a2)
                  lb           t3, -1048(a2)
                  sb           s0, -1639(a2)
                  lb           t3, -1000(a2)
                  lbu          s2, 8(tp)
                  lb           s8, 1197(tp)
                  sb           t2, -354(a2)
                  lbu          zero, 1668(tp)
                  sh           s3, 1109(tp)
                  sb           a2, -1006(a2)
                  lbu          a3, -182(a2)
                  lb           t3, 224(tp) #end load_store_instr_stream_1
                  lb           s7, -325(a2) #end load_store_instr_stream_0
                  la           tp, region_1+1387 #start riscv_load_store_rand_instr_stream_1
                  or           a5, a2, t5
                  srli         s5, t0, 18
                  lb           a2, -178(tp)
                  or           a6, a3, s11
                  srl          s4, a5, s7
                  nop
                  sh           s1, 147(tp)
                  auipc        a0, 555674
                  sub          gp, zero, t5
                  srli         s7, a2, 23
                  xori         a7, s7, 1952
                  sra          s2, t5, t3
                  srl          sp, t2, s0
                  slt          s6, s11, a5
                  xor          s10, a0, zero
                  lui          t6, 116050
                  lui          s5, 1003601
                  sll          a4, a2, t5
                  or           gp, s7, s5
                  or           a6, a2, tp
                  lbu          s5, 112(tp)
                  auipc        s8, 259792
                  sll          s10, zero, zero
                  sra          zero, s5, gp
                  lhu          s3, 27(tp)
                  lh           a3, 15(tp)
                  lbu          s6, 80(tp)
                  auipc        t5, 748966
                  lhu          sp, 187(tp)
                  and          s5, t6, s6
                  srli         s10, tp, 8
                  slti         s5, s0, 1292
                  sb           s6, 138(tp)
                  lbu          t4, -44(tp)
                  lhu          t6, -57(tp)
                  ori          zero, ra, -1803
                  and          ra, ra, gp
                  sb           s10, -19(tp) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_1+1265 #start load_store_instr_stream_2
                  lb           tp, 42(a2)
                  la           s4, region_1+141 #start load_store_instr_stream_0
                  lbu          t5, 27(a2)
                  la           s7, region_1+43 #start load_store_instr_stream_1
                  sb           t5, 15(a2)
                  la           s1, region_1+1365 #start load_store_instr_stream_3
                  lh           t3, -37(s4)
                  sb           t6, -216(s1)
                  lhu          s11, -19(s4)
                  lb           zero, 12(s7)
                  lw           t1, -57(a2)
                  sb           s3, 46(s1)
                  lh           t5, -1(s1)
                  lhu          sp, 37(s4)
                  lb           zero, 46(a2)
                  sb           a7, 58(a2)
                  sb           t4, -10(s7)
                  lh           tp, 25(a2)
                  lbu          gp, 5(s7)
                  lb           t1, -54(s1)
                  lhu          a3, 11(s4)
                  sw           s6, 139(s1)
                  sb           a5, 3(s7)
                  lhu          ra, 63(a2) #end load_store_instr_stream_2
                  lb           t5, 178(s1)
                  sh           gp, -19(s4)
                  lb           s10, -38(s4)
                  sb           s8, -31(s4)
                  sb           s5, -165(s1)
                  lb           ra, 5(s7) #end load_store_instr_stream_1
                  sb           s1, -43(s4)
                  lb           s8, 101(s1) #end load_store_instr_stream_3
                  sb           s7, 25(s4) #end load_store_instr_stream_0
                  la           a2, region_0+925 #start riscv_load_store_rand_instr_stream_2
                  srli         sp, a2, 1
                  add          t0, s0, s2
                  lb           s3, -10(a2)
                  slli         s4, s0, 22
                  sw           tp, -5(a2)
                  lb           sp, -10(a2)
                  lh           a5, 13(a2)
                  lb           s3, 5(a2)
                  add          t2, s3, a6
                  slli         t4, t0, 17
                  srl          zero, t3, sp
                  lb           s11, -5(a2)
                  lbu          sp, 3(a2)
                  xori         a0, zero, -1493
                  sltiu        s5, a7, -1411
                  lhu          ra, -15(a2)
                  lbu          a4, -6(a2)
                  sh           t0, -7(a2)
                  sltu         t2, t3, t2
                  sll          tp, a7, s10
                  lbu          t1, 8(a2)
                  lb           s7, 16(a2)
                  xori         t4, s1, 1576
                  lb           tp, -6(a2)
                  or           t0, s3, t4
                  lbu          s3, 12(a2)
                  lbu          zero, 4(a2)
                  lb           t4, -2(a2)
                  lb           s8, 8(a2)
                  slli         s7, s2, 13
                  lhu          s2, -11(a2)
                  sb           t3, 8(a2)
                  lb           s3, 4(a2)
                  xori         s8, sp, 1680
                  sh           a6, 3(a2)
                  slti         a5, a7, -183
                  sra          tp, a0, a0
                  srl          s3, t3, s6
                  addi         s4, a3, 1657
                  xor          zero, a4, t3
                  srai         tp, ra, 25
                  lh           s6, -11(a2)
                  slli         s3, a5, 16
                  sltu         s11, s3, s10
                  auipc        zero, 790141
                  ori          s3, zero, 269
                  lb           a5, -16(a2)
                  lb           s5, 16(a2)
                  lb           t5, 10(a2)
                  lbu          t6, 13(a2)
                  xor          s4, s2, s7
                  nop
                  srl          a6, a3, a7
                  xori         s8, s10, -996
                  lbu          t4, -1(a2) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+814 #start riscv_load_store_rand_instr_stream_0
                  lb           s1, -118(ra)
                  slti         a5, a6, 568
                  sh           t5, -214(ra)
                  lbu          s7, 106(ra)
                  srai         t5, a1, 13
                  sb           s6, 61(ra)
                  addi         t4, s10, -740
                  srl          a6, a7, s9
                  xori         t0, t2, 913
                  add          s8, t4, t0
                  lbu          a0, -122(ra)
                  lhu          s10, -104(ra)
                  sll          a7, a5, gp
                  slti         a4, s11, -271
                  lbu          s11, 35(ra)
                  lbu          s10, 8(ra)
                  sltiu        t6, a0, 247
                  lbu          a5, -233(ra)
                  sll          s4, s8, s0
                  lb           a4, 13(ra)
                  sb           a2, 10(ra)
                  sh           t4, -96(ra)
                  lbu          s2, 245(ra)
                  lui          zero, 275625
                  lb           s11, 237(ra)
                  lb           a5, 197(ra)
                  andi         s6, a3, -1147
                  lh           a6, -108(ra)
                  sw           s6, 230(ra)
                  auipc        gp, 904931
                  sltiu        s7, t1, -1604
                  sltu         a5, s0, a5
                  lh           zero, 14(ra) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+676 #start riscv_load_store_rand_instr_stream_3
                  lb           a0, 57(sp)
                  lh           a2, 218(sp)
                  nop
                  sb           t4, 117(sp)
                  and          zero, sp, t1
                  auipc        t5, 385806
                  sb           sp, 195(sp)
                  lbu          ra, -165(sp)
                  sb           s11, 205(sp)
                  add          s3, s8, a2
                  sh           a6, -134(sp)
                  lhu          t5, -78(sp)
                  lbu          s10, 9(sp)
                  sra          s1, a6, s10
                  sub          ra, a0, a3
                  sh           s9, 136(sp)
                  slt          a2, a6, s6
                  lbu          s1, -171(sp)
                  sltu         gp, t5, s2
                  sb           s4, -53(sp)
                  lw           s8, -184(sp)
                  lbu          t1, -159(sp)
                  andi         t4, sp, -1240
                  sra          s3, zero, t1
                  sltiu        t2, a2, -1529
                  lhu          a7, 64(sp)
                  nop
                  or           a0, s1, t6
                  sb           t0, 135(sp)
                  or           t5, a0, s3
                  srai         tp, ra, 12
                  andi         t0, s8, -1118
                  lw           s11, -132(sp)
                  sb           s10, 241(sp)
                  lb           t3, -197(sp)
                  nop
                  srli         zero, tp, 3
                  sltu         s11, s5, ra
                  or           t5, s10, gp
                  sll          a0, s9, a1
                  addi         s8, s1, -8
                  sb           a6, -54(sp)
                  sub          a0, sp, s4
                  lb           s1, 233(sp)
                  or           a0, s3, t0
                  lhu          a0, 188(sp)
                  lbu          tp, -9(sp)
                  lbu          a6, -55(sp)
                  sll          t1, a7, t5
                  xori         s5, t1, -199
                  auipc        a3, 459511
                  lb           t0, 157(sp)
                  and          zero, ra, s2
                  srli         s5, ra, 10
                  lbu          s5, 245(sp)
                  lb           s1, 88(sp)
                  sb           sp, -67(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+294 #start riscv_load_store_hazard_instr_stream_2
                  add          s5, a4, t6
                  lbu          t2, 2(sp)
                  sb           a4, 15(sp)
                  lw           t2, 2(sp)
                  sra          t2, s3, a0
                  sra          a2, a2, t1
                  lb           s1, 15(sp)
                  lw           t1, 10(sp)
                  lh           tp, 6(sp)
                  sb           a2, -14(sp)
                  or           a7, t5, ra
                  sb           s0, -5(sp)
                  lb           s8, -5(sp)
                  lb           s8, -5(sp)
                  lbu          t5, 15(sp)
                  and          t6, s5, a0
                  sb           s6, 15(sp)
                  sh           a5, -16(sp)
                  lbu          tp, -16(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a2, region_0+329 #start load_store_instr_stream_1
                  la           t5, region_0+1190 #start load_store_instr_stream_0
                  sh           a7, -31(a2)
                  sh           t6, 0(t5)
                  lbu          tp, -13(t5)
                  sh           s7, -251(a2)
                  lb           s1, -24(a2)
                  lbu          a0, -14(t5)
                  sb           t5, 7(t5)
                  sb           s10, -1(t5)
                  lb           sp, 123(a2)
                  sw           s7, -97(a2)
                  lb           a6, -239(a2)
                  sh           s10, 199(a2)
                  sh           s10, 16(t5)
                  sb           s9, 64(a2) #end load_store_instr_stream_1
                  sh           tp, -4(t5) #end load_store_instr_stream_0
                  la           sp, region_0+271 #start load_store_instr_stream_1
                  la           tp, region_0+83 #start load_store_instr_stream_0
                  lh           s5, -7(sp)
                  lhu          a7, 607(tp)
                  sh           a1, 1623(tp)
                  sb           s9, 8(sp)
                  sb           gp, 1175(tp)
                  sb           gp, 9(sp)
                  lb           a4, 1719(tp)
                  lbu          s1, -1(sp)
                  sh           a1, 9(sp)
                  lb           a6, 1747(tp)
                  sb           s11, 0(sp)
                  lb           zero, -14(sp)
                  lh           ra, 3(sp) #end load_store_instr_stream_1
                  lhu          s10, 719(tp)
                  sb           s7, 1158(tp) #end load_store_instr_stream_0
                  la           sp, region_0+1497 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s7, 228(sp)
                  lb           zero, 212(sp)
                  srli         s2, a4, 31
                  sll          s11, a3, t2
                  sltu         tp, a5, s4
                  sra          s11, a6, s4
                  lb           a7, 212(sp)
                  lbu          s10, 13(sp)
                  srli         ra, a3, 8
                  lb           a6, 13(sp)
                  sb           s0, 2(sp)
                  lb           s1, 2(sp)
                  lw           s11, 155(sp)
                  lh           s2, 155(sp)
                  lbu          s8, 155(sp)
                  and          t5, s11, s8
                  sh           a2, 155(sp)
                  lh           a5, 51(sp)
                  lbu          s2, -28(sp)
                  sb           s7, -171(sp)
                  sb           gp, -171(sp)
                  lhu          tp, 161(sp) #end riscv_load_store_hazard_instr_stream_0
                  srai         zero, s2, 30
                  ori          gp, zero, 143
                  add          a7, sp, s3
                  slli         a2, s3, 21
                  and          s8, s4, s11
                  bltu         a0, ra, 7f
                  sll          s3, t1, s3
7:                srai         zero, a5, 27
                  auipc        s10, 766907
                  andi         s6, s2, -21
                  lui          a6, 252705
                  slt          t6, zero, sp
                  slli         zero, s0, 2
                  addi         sp, t0, 113
                  andi         s7, s7, -577
                  beq          a5, a7, 26f
                  sll          t0, t2, zero
                  sra          t5, s6, a7
                  sub          s2, s10, a7
                  srli         s6, a3, 12
                  sub          sp, gp, a0
                  add          s2, t4, a6
                  or           t0, s3, t6
                  srli         s5, a7, 16
                  ori          tp, t3, -955
                  sltu         a7, s4, t4
26:               sltu         s1, s4, tp
                  beq          s7, a5, 36f
                  andi         s11, a6, -756
                  bltu         t5, a2, 37f
                  srli         a2, t3, 6
                  bltu         t5, sp, 45f
                  blt          ra, a0, 48f
                  sltu         a3, a5, a5
                  sub          s6, s3, t1
                  bge          s11, s8, 41f
36:               sltu         t3, ra, a5
37:               srai         t4, t1, 25
                  and          a0, t3, a5
                  bgeu         t4, s2, 41f
                  sltu         t3, a3, a1
41:               bge          s9, tp, 45f
                  slli         a2, tp, 23
                  auipc        s6, 587167
                  ori          s11, a1, 1024
45:               srl          t1, a5, s4
                  bne          s11, a6, 55f
                  sltu         t1, a0, t3
48:               xor          t4, t2, t3
                  srl          a2, gp, s2
                  slti         s4, a2, -1846
                  srl          gp, s10, t2
                  bgeu         a5, s11, 69f
                  lui          s2, 1011239
                  sra          t4, t5, a0
55:               sltiu        s3, t3, 1669
                  srl          t4, sp, s3
                  sltiu        a5, a4, -947
                  slt          s3, s2, s11
                  slli         a6, t3, 12
                  or           s7, s1, s2
                  blt          t2, s6, 77f
                  sltu         a4, a6, a6
                  xori         t1, ra, -1690
                  sltu         t0, a5, s5
                  xor          tp, s0, s1
                  nop
                  slt          s5, a2, a5
                  bge          t3, zero, 71f
69:               slti         gp, a1, 1986
                  nop
71:               bne          a0, sp, 80f
                  bge          a6, t0, 92f
                  lui          t6, 292996
                  sub          tp, sp, a2
                  or           tp, a0, s4
                  and          t6, s9, a0
77:               bgeu         gp, s7, 89f
                  sll          t4, s8, t5
                  sub          s1, gp, s7
80:               slt          a2, s2, sp
                  srai         ra, a2, 5
                  bge          t1, a2, 96f
                  bge          a6, a2, 89f
                  beq          a5, s11, 91f
                  sra          s3, s9, t2
                  andi         a0, s3, 118
                  auipc        gp, 976663
                  sltiu        t1, t1, 1136
89:               sll          zero, tp, s1
                  sltiu        gp, t6, -1267
91:               beq          a2, s7, 93f
92:               slti         t5, t1, -702
93:               slli         a3, gp, 28
                  sra          s7, s5, t2
                  ori          tp, s3, 1143
96:               slli         s1, s5, 23
                  sltu         a0, s6, a7
                  and          tp, a1, s1
                  sll          t0, s1, zero
                  lui          a2, 1007639
                  add          t1, a0, s8
                  blt          a7, t3, 117f
                  and          sp, a5, t5
                  sltu         s4, s8, s9
                  add          s10, s4, s2
                  blt          tp, a2, 118f
                  auipc        t5, 754492
                  sll          ra, a0, s7
                  sll          a7, a3, a0
                  xor          a3, a7, s10
                  slli         ra, zero, 22
                  sub          s7, t4, ra
                  ori          a0, gp, -1629
                  blt          t5, t4, 118f
                  or           t5, t5, a5
                  blt          t3, a5, 135f
117:              bgeu         s5, a0, 124f
118:              sll          s8, s0, gp
                  andi         gp, s8, -24
                  andi         s6, a7, -1493
                  srl          t6, tp, t5
                  add          a4, s6, a2
                  or           s2, s1, t0
124:              blt          s10, a6, 141f
                  sltu         t4, a3, s7
                  srai         s10, s7, 4
                  beq          a4, s3, 138f
                  slli         gp, t5, 9
                  beq          s0, s1, 130f
130:              bge          s9, ra, 141f
                  srli         sp, a7, 16
                  andi         t4, a2, 493
                  slti         a3, a7, 841
                  lui          a2, 640928
135:              or           gp, a3, s9
                  bne          a1, t5, 153f
                  or           t3, t2, s6
138:              auipc        t6, 37812
                  srai         t2, s9, 12
                  slli         s2, s10, 9
141:              or           a3, s10, t6
                  ori          t5, s1, 1636
                  xor          tp, sp, tp
                  bne          t3, a5, 155f
                  sll          t4, a1, s10
                  andi         t5, gp, 1652
                  srai         t1, s5, 9
                  la           s2, sub_2
                  nop
                  slti         t6, s10, 980
                  add          a0, t1, s7
                  nop
                  addi         s2, s2, -383
                  srli         a5, s9, 11
main_j1:          jalr         sp, s2, 384 #jump main -> sub_2
                  slt          tp, t1, zero
                  bgeu         t4, a4, 160f
                  lui          a0, 522495
                  bgeu         s8, s6, 150f
                  ori          gp, s9, -1379
150:              andi         s8, s0, 1795
                  sub          ra, t1, ra
                  auipc        t5, 947784
153:              sltiu        t3, zero, 1245
                  sub          t1, s0, a2
155:              bgeu         s5, t6, 162f
                  auipc        a3, 718341
                  bge          ra, t4, 163f
                  or           a0, s6, ra
                  nop
160:              slt          a2, sp, a5
                  sub          s2, gp, s6
162:              srl          s1, a0, s8
163:              nop
                  la           t4, region_1+453 #start riscv_load_store_hazard_instr_stream_3
                  sh           t2, 453(t4)
                  sb           t2, 453(t4)
                  sub          s1, t1, s7
                  sb           t0, 453(t4)
                  lh           t5, 453(t4)
                  lh           a4, 453(t4)
                  lb           gp, 453(t4)
                  sb           a7, 453(t4)
                  srl          s1, t5, a2
                  nop
                  lhu          t3, 799(t4)
                  sw           tp, 799(t4)
                  lbu          s8, 799(t4)
                  lbu          s8, 799(t4)
                  sw           t5, 799(t4)
                  sw           ra, 799(t4)
                  lb           a0, 844(t4)
                  sh           a7, 615(t4)
                  lh           zero, 615(t4)
                  sb           t1, 615(t4) #end riscv_load_store_hazard_instr_stream_3
                  srai         a0, t1, 15
                  lui          s3, 221111
                  andi         s4, s4, 1206
                  srai         a3, a0, 16
                  bltu         s8, a6, 172f
                  and          a3, a2, s8
                  bge          a0, s9, 177f
                  bltu         zero, t4, 175f
172:              bltu         t1, t2, 183f
                  bltu         a3, a4, 187f
                  sll          s5, a7, s0
175:              and          t5, s11, ra
                  slti         t4, t6, -833
177:              bgeu         s3, a5, 189f
                  addi         a2, t5, 1402
                  and          a5, s6, s7
                  srl          s1, t2, a1
                  blt          s0, s2, 193f
                  addi         sp, gp, 781
183:              xori         s10, gp, 930
                  bne          a2, t3, 185f
185:              sll          s7, s2, s10
                  xori         gp, s2, -1756
187:              slt          a4, tp, s2
                  bge          a5, t1, 194f
189:              sll          a6, s9, a5
                  sltiu        zero, s4, -686
                  srai         sp, a6, 11
                  sub          t4, t5, s3
193:              nop
194:              slt          s4, tp, a2
                  nop
                  bge          s3, s10, 212f
                  or           a5, t0, sp
                  lui          a2, 340974
                  auipc        s11, 293867
                  blt          s4, s3, 217f
                  srai         t6, s2, 15
                  nop
                  xor          s8, tp, a4
                  bgeu         s2, s2, 224f
                  srai         ra, s10, 1
                  bgeu         s3, a5, 222f
                  srai         s8, tp, 3
                  or           s7, s1, t2
                  srl          a2, s4, t6
                  addi         ra, t3, 529
                  la           s8, sub_1
                  sub          s7, s4, a5
                  add          tp, s9, a5
                  addi         s8, s8, 685
                  beq          gp, a6, main_j2 #branch to jump instr
                  sltu         zero, s6, zero
main_j2:          jalr         sp, s8, -684 #jump main -> sub_1
                  sltu         t1, s3, t3
                  addi         s7, s8, 51
                  slt          s1, t2, t2
212:              bge          a4, a0, 231f
                  add          s8, ra, t3
                  bne          a1, s6, 222f
                  ori          s4, t6, 223
                  sltu         t0, a4, s7
217:              srli         s4, a5, 28
                  srl          s10, t4, a1
                  andi         t1, s7, -1089
                  srli         s4, a0, 22
                  bne          s6, zero, 232f
222:              bltu         s11, t1, 239f
                  and          s3, s0, a4
224:              sltu         s8, a7, t3
                  bne          a4, t4, 228f
                  bltu         a3, zero, 235f
                  xori         s4, a5, 191
228:              sltiu        t4, s11, 710
                  bltu         gp, gp, 238f
                  bgeu         sp, t3, 232f
231:              add          a6, a1, s9
232:              lui          a6, 242749
                  srai         a4, s4, 24
                  or           s11, t4, a5
235:              xor          ra, s4, s0
                  sll          a3, gp, s6
                  bgeu         s3, tp, 254f
238:              nop
239:              ori          s2, s2, 1898
                  srai         t2, t4, 30
                  blt          t1, t0, 250f
                  and          a4, ra, gp
                  slti         t5, a1, 709
                  srai         tp, gp, 24
                  bltu         a4, s9, 260f
                  beq          t1, s1, 248f
                  ori          t6, tp, -1804
248:              bltu         t6, zero, 251f
                  sra          t1, a5, t5
250:              slt          tp, s1, s2
251:              bltu         sp, a6, 262f
                  sra          a7, s10, s7
                  sub          s7, sp, s11
254:              xor          s8, t0, s9
                  andi         s1, gp, 927
                  lui          gp, 946245
                  bltu         a6, s5, 272f
                  sltiu        a4, t4, 752
                  nop
260:              lui          s4, 383301
                  auipc        s5, 134986
262:              nop
                  add          a2, t5, a2
                  slt          s10, s3, s9
                  xori         s2, a3, -778
                  xori         a0, s6, 1980
                  sltu         a6, s5, s5
                  sub          zero, a3, a6
                  sra          s11, a4, a0
                  bne          a1, gp, 272f
                  slti         zero, ra, 1034
272:              or           a0, s2, t6
                  bne          s6, a0, 289f
                  andi         s2, tp, -309
                  ori          t1, s6, 180
                  slt          a5, a1, s8
                  bltu         s1, t4, 279f
                  ori          a3, ra, -1263
279:              bltu         t6, a5, 296f
                  slt          sp, s8, t4
                  sltiu        t5, s9, -1150
                  bgeu         a3, s5, 290f
                  bne          a7, s11, 299f
                  or           t1, a7, s4
                  nop
                  blt          s4, a7, 297f
                  slli         t0, tp, 26
                  sll          gp, a1, t6
289:              sra          s3, s5, sp
290:              srli         s8, t6, 12
                  xor          sp, tp, zero
                  bltu         s8, s11, 298f
                  slt          s11, t0, ra
                  sra          t4, s8, s3
                  sll          t5, s2, s2
296:              beq          s5, a5, 300f
297:              sub          a0, s0, zero
298:              srl          t5, s8, a4
299:              and          gp, t5, s2
300:              sub          a6, t1, s0
                  xor          s2, s11, s0
                  beq          a7, t1, 322f
                  sub          a4, a2, s6
                  xori         t2, a1, 202
                  sltu         t5, ra, zero
                  beq          a6, s9, 323f
                  nop
                  or           a0, s1, t3
                  slti         s10, s4, 229
                  bne          ra, a7, 314f
                  bne          s8, s5, 320f
                  slli         ra, t5, 13
                  nop
314:              bne          t4, s5, 328f
                  sltiu        t4, a2, 450
                  sltu         a0, s11, a7
                  bgeu         s2, s2, 331f
                  slti         tp, a5, 103
                  srli         t6, gp, 26
320:              or           a0, t3, zero
                  sltu         gp, a1, s1
322:              bltu         gp, s11, 334f
323:              addi         s1, sp, -1412
                  sltu         a6, s8, a2
                  beq          a6, t4, 331f
                  slt          t2, a0, zero
                  nop
328:              slti         t4, s0, -1233
                  srli         a7, a6, 24
                  bgeu         s0, t2, 347f
331:              add          t6, a0, t4
                  slt          sp, s10, s11
                  addi         t6, t6, 1715
334:              bgeu         a2, s10, 336f
                  blt          a2, t1, 342f
336:              srli         s1, t2, 26
                  bltu         s1, a4, 344f
                  and          a3, s0, t2
                  and          a7, t2, s10
                  srai         ra, s6, 31
                  andi         t0, zero, 1123
342:              srl          a2, a6, s3
                  sltu         t4, a4, sp
344:              addi         s6, s11, 846
                  beq          t2, s8, 354f
                  bge          t2, gp, 358f
347:              slli         s11, t6, 13
                  bne          a7, s1, 359f
                  bge          a1, a3, 358f
                  add          tp, s0, a3
                  bltu         s3, ra, 370f
                  xor          s11, s6, a2
                  beq          t3, a3, 354f
354:              sll          sp, s6, s11
                  sra          s6, ra, a7
                  sub          t4, tp, s5
                  slt          t6, s11, a0
358:              sltu         s10, ra, a4
359:              lui          ra, 831498
                  auipc        s8, 639882
                  bltu         s11, a4, 373f
                  add          t6, t3, a7
                  bgeu         s6, a1, 365f
                  beq          zero, a7, 372f
365:              bltu         s7, s4, 376f
                  slli         gp, t3, 3
                  blt          a7, t4, 381f
                  add          a4, s1, s6
                  slti         t1, s8, 1781
370:              slti         a0, s8, -356
                  sub          a4, t3, s0
372:              nop
373:              xori         a0, a6, 580
                  bne          s9, a3, 385f
                  nop
376:              slti         s5, t6, 708
                  srl          s5, sp, s7
                  bgeu         t0, s6, 387f
                  nop
                  sll          t2, s10, t3
381:              or           s5, t6, a3
                  xori         gp, s1, -1258
                  auipc        s1, 324102
                  ori          t4, a3, -1815
385:              and          a6, ra, t0
                  sltu         s7, t2, t1
387:              andi         a2, tp, -1369
                  srai         s6, t6, 24
                  slti         t1, gp, -1449
                  srli         gp, gp, 21
                  and          sp, s10, t2
                  andi         t1, a6, 743
                  sub          t2, a7, a4
                  andi         zero, s11, -1059
                  sltu         a6, t3, s8
                  or           t2, s11, s2
                  slli         tp, t5, 16
                  addi         a6, s7, 54
                  ori          s3, a1, -1921
                  bltu         s11, s7, 409f
                  or           a2, t3, s4
                  auipc        a3, 585922
                  bltu         sp, a2, 412f
                  slt          a7, t1, a0
                  auipc        s8, 1029456
                  slti         s4, zero, 433
                  sltu         t5, a5, s1
                  slti         s4, ra, 708
409:              slti         s2, sp, -1259
                  addi         a7, s11, 1438
                  or           s8, a3, gp
412:              srli         t0, t0, 11
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a1, a1, -8
                  srl          t1, zero, s8
                  srli         s1, s11, 29
                  andi         a7, sp, 1942
                  nop
                  sw           sp, 4(a1)
                  sltu         t6, t6, s9
                  and          t5, a5, tp
                  srai         a7, s1, 28
                  slt          s8, a1, s2
                  and          tp, a5, s8
                  add          t6, gp, a0
                  lui          sp, 373871
                  slt          s2, a2, t5
                  slt          t4, s2, ra
                  sra          s4, a1, s7
                  sra          t5, t5, s4
                  slti         t0, s4, -1915
                  sra          t0, a5, a5
                  blt          a4, a2, 13f
13:               srli         s10, tp, 4
                  srai         a6, sp, 21
                  slti         tp, sp, 793
                  sltu         s8, s10, a0
                  sltiu        s6, t6, -634
                  lw           sp, 4(a1)
                  addi         a1, a1, 8
                  and          a3, t3, s11
28:               addi x28, x2, 1
28:               jalr x28, x28, 0
sub_1:            bne          zero, s2, sub_1_stack_p
sub_1_stack_p:    addi         a1, a1, -32
                  addi         t5, s11, 1095
                  slli         s6, s5, 26
                  sw           sp, 4(a1)
                  xori         tp, a2, -993
                  la           sp, region_0+703 #start riscv_load_store_rand_instr_stream_4
                  addi         a7, s8, -288
                  nop
                  xori         a7, t3, -276
                  lhu          t6, 499(sp)
                  lh           a2, 679(sp)
                  lb           t1, 742(sp)
                  lb           a4, 942(sp)
                  lbu          s3, -268(sp)
                  sb           s0, 897(sp)
                  srl          t5, a5, a3
                  sh           s9, 905(sp)
                  sh           s6, 739(sp)
                  xor          s5, s3, t0
                  auipc        s1, 782614
                  sb           gp, 263(sp)
                  lbu          ra, -296(sp)
                  lh           zero, 591(sp)
                  lbu          a5, -511(sp)
                  sb           s7, 1102(sp)
                  auipc        t5, 667525
                  lbu          s11, 993(sp)
                  lbu          zero, -284(sp)
                  lw           a5, -591(sp)
                  sra          t0, a5, t5
                  lh           t2, -407(sp)
                  lb           gp, 740(sp)
                  slt          t6, s2, t2
                  lui          a5, 1013771
                  sh           s0, -1(sp)
                  slti         s3, a5, -504
                  xori         s2, a0, 341
                  sb           tp, -476(sp)
                  sh           s2, 517(sp)
                  lhu          zero, -623(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_1+1279 #start riscv_load_store_rand_instr_stream_1
                  lbu          s3, 39(s7)
                  lbu          t4, -50(s7)
                  lb           t0, 10(s7)
                  sw           t6, 57(s7)
                  sh           s9, 19(s7)
                  sltu         t2, s7, a4
                  lh           s4, 61(s7)
                  lb           t0, -62(s7)
                  sw           t3, -51(s7)
                  lbu          a7, -6(s7)
                  sh           s5, -41(s7)
                  sra          tp, s7, t6
                  sb           tp, 57(s7)
                  lui          sp, 500212
                  lb           t1, -12(s7)
                  lh           a4, 39(s7)
                  lbu          a6, 34(s7)
                  lbu          a4, -26(s7)
                  lh           t1, -27(s7)
                  lbu          t5, 38(s7)
                  sb           s6, 62(s7)
                  lhu          s6, -13(s7)
                  lb           t4, -62(s7)
                  lbu          s11, -1(s7)
                  sw           s4, 21(s7)
                  lbu          t1, 44(s7)
                  lbu          t5, -39(s7)
                  xor          a6, a6, a0
                  sub          a6, t6, sp
                  sub          s5, s9, zero
                  addi         t3, s0, -970
                  lb           t3, -8(s7)
                  lb           t5, 12(s7)
                  srl          s6, a5, tp
                  sw           s4, 57(s7)
                  lbu          s1, -33(s7)
                  sltiu        s1, gp, -1533
                  slli         gp, gp, 26
                  andi         sp, t3, 2008
                  sb           ra, 58(s7) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_1+1712 #start load_store_instr_stream_4
                  la           s10, region_1+168 #start load_store_instr_stream_3
                  la           s8, region_1+797 #start load_store_instr_stream_2
                  la           a2, region_1+1386 #start load_store_instr_stream_1
                  lbu          a5, 0(a2)
                  lb           t6, -111(a7)
                  la           a6, region_1+1525 #start load_store_instr_stream_0
                  sb           s3, 28(s10)
                  lb           a0, -1095(a6)
                  lbu          t3, 11(s10)
                  lb           a5, 54(s8)
                  lbu          gp, 35(s10)
                  lh           t0, -1079(a6)
                  lb           a3, -58(s8)
                  sb           sp, 127(a7)
                  lbu          sp, 52(s8)
                  sb           s5, -185(a7)
                  lb           s4, -8(a7)
                  sb           a4, 7(a2)
                  lbu          t5, 229(a6)
                  sb           a5, -11(a2)
                  lb           s2, 49(a7)
                  lbu          s1, 9(s10)
                  lb           a3, 13(a7)
                  lbu          t6, 18(s8)
                  lw           t2, 59(s8)
                  lb           sp, 125(a7)
                  lbu          t5, 64(a6)
                  lbu          a5, -65(a7)
                  lb           s2, -494(a6)
                  lb           t5, -882(a6)
                  lb           s4, -3(s10)
                  sb           a0, 239(a7)
                  lbu          tp, -58(s8)
                  lhu          tp, 397(a6)
                  lhu          zero, -22(s10)
                  sb           t2, -64(s8)
                  sb           t5, 37(s10)
                  lhu          s4, 4(a2)
                  lbu          t2, 38(s8)
                  lh           s7, 16(a2)
                  lbu          s6, -16(a2)
                  sb           s3, 30(s8)
                  lb           t3, -38(a6)
                  lhu          s6, 29(s8) #end load_store_instr_stream_2
                  lbu          t1, -6(a2)
                  lh           a5, -523(a6)
                  lb           t5, -49(s10) #end load_store_instr_stream_3
                  lh           a5, 12(a2) #end load_store_instr_stream_1
                  sb           gp, 11(a7) #end load_store_instr_stream_4
                  sb           s2, -7(a6) #end load_store_instr_stream_0
                  la           t5, region_0+1752 #start load_store_instr_stream_0
                  la           tp, region_0+106 #start load_store_instr_stream_1
                  la           t1, region_0+1548 #start load_store_instr_stream_3
                  la           a3, region_0+171 #start load_store_instr_stream_2
                  lb           ra, 43(t5)
                  lb           a2, 7(a3)
                  sb           t2, -11(t1)
                  lh           a4, -9(a3)
                  lbu          s7, -89(tp)
                  lbu          s3, 82(t5)
                  lh           t6, -60(tp)
                  sh           s8, 44(tp)
                  lbu          a5, -14(a3)
                  lb           s6, -186(t5)
                  lbu          t0, 87(t5)
                  lhu          a6, -16(t1)
                  lbu          t2, 100(tp)
                  sb           s2, -13(a3)
                  lbu          s4, -3(t1)
                  lbu          s4, 12(a3)
                  lh           sp, -10(t1)
                  sb           s11, -91(t5)
                  lh           s8, 2(t1)
                  lhu          gp, 154(t5)
                  lbu          s4, -242(t5)
                  lb           a4, 16(a3) #end load_store_instr_stream_2
                  lh           t2, 8(tp)
                  lb           a2, 108(tp) #end load_store_instr_stream_1
                  lbu          a4, 1(t1) #end load_store_instr_stream_3
                  lhu          s5, 140(t5)
                  lbu          t0, -163(t5)
                  sb           a3, -25(t5) #end load_store_instr_stream_0
                  la           gp, region_0+431 #start riscv_load_store_rand_instr_stream_0
                  nop
                  xori         t6, s0, 600
                  sll          t6, t4, s3
                  auipc        a2, 420410
                  sltiu        s4, a4, 1676
                  add          a5, t1, s2
                  auipc        a3, 367268
                  slt          a6, a3, s10
                  sb           t1, -16(gp)
                  lb           t5, -6(gp)
                  slti         t4, t4, 1440
                  sra          t5, gp, s1
                  nop
                  lb           t6, 3(gp)
                  sh           a0, 3(gp)
                  xori         t2, a2, 1896
                  auipc        a4, 587910
                  lb           t2, -5(gp)
                  srai         t6, s10, 4
                  add          s10, t6, s9
                  sltu         s6, s8, t4
                  sltu         zero, t2, a1
                  sb           s8, 7(gp)
                  addi         a6, s1, -172
                  slli         t2, sp, 25
                  lhu          t3, 3(gp)
                  lbu          a4, -10(gp)
                  slt          a7, tp, t4
                  sub          a5, a2, s11
                  lb           s11, -4(gp)
                  sb           s2, 10(gp)
                  slli         s5, s2, 29
                  auipc        s2, 899964
                  andi         s8, s0, 929
                  lbu          s11, -4(gp)
                  srai         s10, t2, 18
                  sb           gp, 0(gp)
                  sb           s7, 10(gp)
                  slt          t5, a7, a0
                  lb           a6, 12(gp)
                  lh           t3, 11(gp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+214 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s10, -85(s11)
                  sb           gp, -85(s11)
                  lbu          a7, -85(s11)
                  lbu          s2, -85(s11)
                  sb           a0, -85(s11)
                  lbu          sp, -85(s11)
                  lbu          t6, -85(s11)
                  srli         t3, ra, 15
                  lbu          sp, -85(s11)
                  lb           t2, -85(s11)
                  srli         s8, t0, 4
                  srli         gp, tp, 19
                  lb           s2, -85(s11)
                  sb           gp, -85(s11)
                  lb           s7, -85(s11)
                  lbu          t6, -85(s11)
                  lbu          s6, -85(s11)
                  sb           a1, -85(s11)
                  lb           gp, -85(s11)
                  lb           ra, -85(s11)
                  sb           s6, -85(s11) #end riscv_load_store_hazard_instr_stream_2
                  la           a3, region_0+1599 #start load_store_instr_stream_2
                  la           s10, region_0+1657 #start load_store_instr_stream_3
                  la           a4, region_0+1019 #start load_store_instr_stream_0
                  lbu          a5, -227(a3)
                  lbu          s2, 52(a4)
                  lh           t3, 33(a3)
                  lh           ra, -11(s10)
                  lh           s4, -9(s10)
                  la           a6, region_0+1544 #start load_store_instr_stream_1
                  lhu          t4, -17(a3)
                  lb           t0, 5(s10)
                  lb           a0, 210(a3)
                  lb           gp, 160(a4)
                  lb           s5, -2(s10)
                  lb           t4, 112(a3)
                  sb           s4, 16(s10)
                  lb           t5, -33(a4)
                  lb           a5, 226(a4)
                  sb           sp, -176(a4)
                  lbu          s7, 4(s10)
                  sb           t3, 208(a3)
                  lw           t5, -13(s10)
                  lb           t2, 12(a6)
                  lbu          s7, -11(a6)
                  lb           t5, -224(a4)
                  lbu          tp, 106(a3)
                  lh           s2, 2(a6)
                  lb           s5, 0(s10)
                  sh           s8, 7(s10)
                  lb           s7, 92(a3)
                  lh           s1, -35(a3)
                  sb           s2, -14(a6)
                  lbu          tp, -13(s10) #end load_store_instr_stream_3
                  lw           sp, -12(a6) #end load_store_instr_stream_1
                  sh           s9, 253(a3) #end load_store_instr_stream_2
                  lh           s1, -97(a4) #end load_store_instr_stream_0
                  la           t2, region_0+191 #start load_store_instr_stream_1
                  lb           s1, 40(t2)
                  la           a7, region_0+1566 #start load_store_instr_stream_0
                  la           s6, region_0+96 #start load_store_instr_stream_2
                  lb           s3, 252(t2)
                  lbu          s1, -3(s6)
                  sb           t6, -1551(a7)
                  sb           t6, -785(a7)
                  sb           a6, -771(a7)
                  lbu          a5, -10(s6)
                  sb           a6, 140(t2)
                  sh           s9, -117(t2)
                  lhu          a6, 12(s6)
                  lb           a4, 415(a7)
                  sb           tp, -13(s6)
                  lb           a6, -62(t2)
                  lb           a6, 2(s6)
                  lb           s4, -1300(a7)
                  lb           s1, -188(t2)
                  sb           sp, 5(s6)
                  sb           s1, -10(s6)
                  sb           t3, 239(a7)
                  lbu          a4, 7(t2)
                  sb           t4, -5(s6)
                  lw           t4, -8(s6) #end load_store_instr_stream_2
                  lb           s5, 355(a7)
                  lb           t1, -1415(a7)
                  lw           a2, -1374(a7)
                  sb           t6, 179(t2) #end load_store_instr_stream_1
                  lw           s1, -446(a7) #end load_store_instr_stream_0
                  la           a0, region_0+1913 #start riscv_load_store_rand_instr_stream_3
                  add          t4, a6, t4
                  lui          s4, 755296
                  sll          ra, tp, s4
                  sh           a7, -865(a0)
                  or           t6, s5, s7
                  srl          tp, a4, a3
                  srli         s4, t2, 13
                  slti         t3, a3, -750
                  add          s8, a2, a2
                  srl          gp, t4, t1
                  sll          t4, s1, s9
                  or           s11, s3, s1
                  lhu          ra, -651(a0)
                  lb           a2, -1435(a0)
                  sltiu        tp, s2, -328
                  auipc        a7, 364555
                  sb           sp, -709(a0)
                  lb           t1, -598(a0)
                  addi         s5, ra, 1870
                  lui          s6, 706091
                  slt          s8, gp, t0
                  lbu          gp, -1503(a0)
                  lbu          s4, -1596(a0)
                  sb           s9, -1902(a0)
                  xori         s10, a5, 534
                  sh           s0, -1627(a0)
                  nop
                  sb           a0, -1332(a0)
                  lbu          zero, -1586(a0)
                  lbu          s3, -233(a0)
                  srai         t6, s1, 29
                  sb           s0, -694(a0)
                  auipc        sp, 95111
                  andi         s1, t3, 789
                  sra          s3, s1, s5
                  lb           s2, -291(a0)
                  lbu          s2, -43(a0) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+1586 #start load_store_instr_stream_1
                  la           a7, region_1+722 #start load_store_instr_stream_3
                  la           s3, region_1+1852 #start load_store_instr_stream_0
                  la           tp, region_1+292 #start load_store_instr_stream_4
                  lb           sp, -529(s6)
                  sb           ra, -33(tp)
                  sb           t2, -153(s6)
                  lw           s1, -252(tp)
                  la           s5, region_1+27 #start load_store_instr_stream_2
                  lbu          a6, 3(s3)
                  sb           t4, 66(tp)
                  lb           gp, -247(tp)
                  sh           tp, 206(a7)
                  lb           s10, -930(s6)
                  lhu          ra, -11(s5)
                  lb           t5, -253(tp)
                  lbu          t6, -18(s5)
                  lw           s1, 182(a7)
                  sb           s1, 232(a7)
                  lb           s10, 196(s5)
                  lh           a5, -710(s6)
                  sb           a7, -216(a7)
                  lb           t1, -18(s5)
                  lw           a4, 20(s3)
                  lb           a0, -33(tp)
                  lb           ra, -436(s6) #end load_store_instr_stream_1
                  sb           s5, -52(s3)
                  sb           a4, -8(s5)
                  sb           s3, -182(a7)
                  lbu          t6, -198(tp)
                  lbu          s11, 82(a7)
                  lbu          sp, 130(tp)
                  lbu          s4, 53(s3)
                  lhu          s8, 128(tp)
                  sb           s7, -12(a7)
                  sb           t5, -33(s3)
                  sb           a0, 78(s5)
                  lb           a5, 59(tp) #end load_store_instr_stream_4
                  lbu          sp, 147(s5) #end load_store_instr_stream_2
                  sb           t0, 5(s3)
                  lb           a4, -187(a7) #end load_store_instr_stream_3
                  lb           ra, 22(s3) #end load_store_instr_stream_0
                  la           t2, region_1+509 #start riscv_load_store_hazard_instr_stream_0
                  sb           s0, -407(t2)
                  auipc        a4, 93620
                  sltu         gp, a6, a4
                  sll          gp, sp, s6
                  lb           s6, -407(t2)
                  sw           t1, -25(t2)
                  lw           s5, -25(t2)
                  lb           s6, 1163(t2)
                  sll          s6, gp, t2
                  lb           t5, 1428(t2)
                  auipc        s11, 12388
                  lbu          a0, 1428(t2)
                  lbu          t4, 162(t2)
                  lui          a2, 421185
                  lb           a3, -327(t2)
                  sll          s1, t6, ra
                  lb           s1, -327(t2)
                  lh           sp, -53(t2)
                  lb           sp, 326(t2)
                  sb           t5, 326(t2)
                  sb           t3, 326(t2)
                  sb           a6, 326(t2)
                  sb           s4, 850(t2) #end riscv_load_store_hazard_instr_stream_0
                  la           t4, region_1+1240 #start riscv_load_store_rand_instr_stream_2
                  srli         a0, s7, 31
                  xor          a7, a2, t6
                  lhu          s8, 242(t4)
                  ori          s3, ra, -429
                  sltiu        s5, sp, -1453
                  sb           ra, 129(t4)
                  lb           s2, 239(t4)
                  sra          zero, s10, s3
                  srli         a2, a4, 30
                  sb           a3, 117(t4)
                  sra          t3, s6, sp
                  lui          gp, 784304
                  sltiu        tp, t3, 1268
                  sh           tp, -86(t4)
                  sll          gp, a3, s1
                  lbu          s1, -218(t4)
                  lbu          ra, 57(t4)
                  sra          t6, t6, a0
                  sw           a7, 216(t4)
                  and          s8, t4, a6
                  lb           t5, 243(t4)
                  xori         a2, a6, -822
                  slli         a6, s3, 6
                  add          s10, tp, t6
                  srl          s5, s3, t1
                  andi         sp, sp, 1146
                  lui          sp, 25589
                  lb           tp, 73(t4)
                  slti         s7, a6, 1772
                  sra          s2, s3, t1
                  lh           tp, 52(t4)
                  sll          a5, t3, s10
                  and          a4, a4, s1
                  srai         s1, a4, 20
                  addi         a2, s8, 401
                  and          a3, t5, sp
                  sltiu        t1, s5, -1353
                  add          s11, gp, s0
                  lh           ra, -166(t4)
                  lbu          s8, 175(t4)
                  sb           s8, -103(t4) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_0+1981 #start riscv_load_store_hazard_instr_stream_1
                  lbu          ra, 11(s8)
                  lbu          a3, 11(s8)
                  srli         a4, a3, 19
                  lbu          a7, 11(s8)
                  lhu          s7, 11(s8)
                  lb           a3, 5(s8)
                  lb           t2, 13(s8)
                  lhu          t1, -9(s8)
                  lw           s5, -9(s8)
                  lhu          t5, -9(s8)
                  lb           ra, -9(s8)
                  lbu          s11, -7(s8)
                  sb           s3, 6(s8)
                  sh           a0, 3(s8)
                  sb           s3, 8(s8)
                  lb           s4, 8(s8)
                  sb           s0, -2(s8) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+1366 #start riscv_load_store_hazard_instr_stream_4
                  sll          s11, t6, a4
                  lbu          t5, -39(sp)
                  lbu          s3, -39(sp)
                  sb           s0, 83(sp)
                  or           s3, a5, t0
                  sltiu        t3, t3, -529
                  srli         s7, a3, 31
                  lb           s4, 171(sp)
                  lbu          s5, 13(sp)
                  lhu          zero, -242(sp)
                  sw           t2, -242(sp)
                  lbu          tp, -242(sp)
                  lh           a7, -96(sp)
                  sltiu        t6, a0, -354
                  sh           s8, -96(sp)
                  nop
                  lb           s1, -193(sp) #end riscv_load_store_hazard_instr_stream_4
                  blt          t2, s6, 12f
                  xor          s1, s3, s4
                  srli         ra, s2, 17
                  ori          s11, a2, -785
                  blt          a4, gp, 18f
                  sltiu        gp, a4, 1470
                  sub          t6, t0, ra
                  ori          t0, tp, 1372
                  bgeu         s0, t2, 21f
                  bltu         s9, s3, 17f
                  slti         s3, s2, -49
                  sll          a2, s2, s0
12:               add          t3, t6, s8
                  bgeu         gp, a3, 20f
                  srl          s1, s3, s0
                  add          sp, a4, a6
                  bne          s3, s1, 35f
17:               sra          a0, a6, t5
18:               addi         t6, sp, -1642
                  slti         t1, a7, 88
20:               bgeu         a4, a4, 32f
21:               xor          a4, gp, s2
                  bgeu         s7, sp, 35f
                  bltu         s3, a5, 33f
                  beq          t4, a7, 44f
                  sra          a7, tp, t3
                  or           t1, sp, t2
                  sltiu        s4, a4, 183
                  ori          t3, t4, 1722
                  xor          sp, s9, t2
                  sltiu        sp, s9, -1507
                  bge          gp, a1, 42f
32:               slli         tp, a5, 27
33:               addi         s8, s2, 1428
                  sltiu        a2, s5, -623
35:               addi         ra, a1, 589
                  ori          t5, a0, -171
                  lui          a0, 163320
                  bge          sp, s1, 39f
39:               srai         s5, a2, 27
                  sltu         s8, a2, sp
                  lui          sp, 992943
42:               or           s2, s7, t2
                  bltu         s2, s0, 52f
44:               addi         a5, a4, 852
                  ori          a0, s4, 186
                  bgeu         s1, a0, 61f
                  bltu         s9, t2, 53f
                  bltu         a5, s4, 62f
                  slt          a0, s8, a7
                  nop
                  slt          t3, s10, t0
52:               xori         s7, s7, -134
53:               bge          zero, tp, 62f
                  slt          t2, s0, gp
                  slli         t4, s5, 4
                  bgeu         a3, t1, 72f
                  beq          gp, tp, 73f
                  srli         s10, sp, 26
                  slli         ra, s6, 25
                  slli         t3, sp, 24
61:               auipc        a4, 985022
62:               add          t3, s11, s9
                  nop
                  andi         s5, s1, 355
                  andi         a5, t1, -1724
                  sra          ra, s9, ra
                  beq          a2, t1, 76f
                  sltu         t5, t4, s0
                  slti         s10, t4, -1407
                  beq          t4, t0, 89f
                  slti         a4, zero, -239
72:               srli         s1, a5, 12
73:               ori          a2, a7, 1478
                  andi         zero, t1, -806
                  slt          s10, s9, s2
76:               ori          s8, sp, -1240
                  andi         ra, a3, 1521
                  or           ra, s1, a1
                  slti         t3, s3, 221
                  beq          sp, t5, 97f
                  and          s7, s10, s3
                  xor          t4, s10, gp
                  bgeu         s11, s8, 98f
                  add          t5, s0, t1
                  ori          a6, t4, -1072
                  slti         s8, s6, -1300
                  srai         s7, a7, 7
                  lui          s5, 784858
89:               add          t2, t6, s3
                  sra          s7, s5, s3
                  nop
                  beq          t2, s4, 100f
                  srli         tp, gp, 22
                  sll          sp, t1, tp
                  lui          zero, 597081
                  sll          t0, s6, ra
97:               sltiu        a4, s3, -1643
98:               lui          s8, 587742
                  slli         a6, t2, 5
100:              slti         s11, a7, 704
                  srli         a2, tp, 26
                  nop
                  lui          s3, 986743
                  slli         t5, t5, 0
                  add          gp, ra, t2
                  addi         t3, t3, 1081
                  beq          t3, s11, 118f
                  and          sp, tp, t2
                  or           s6, a0, a6
                  bge          t3, s7, 121f
                  bne          gp, s9, 113f
                  bltu         s0, t5, 126f
113:              sub          a4, a5, t6
                  sltu         a2, ra, a7
                  slt          t4, s2, a2
                  srli         ra, s3, 30
                  slti         s10, a2, 705
118:              auipc        a4, 524411
                  and          s11, t3, a3
                  auipc        gp, 470151
121:              auipc        a5, 337080
                  bge          t6, s9, 125f
                  sll          t2, s3, t4
                  sltiu        tp, a4, 127
125:              and          s10, a3, t0
126:              sll          s10, a0, s2
                  lui          s10, 733016
                  slti         t4, a3, 329
                  bge          sp, s5, 143f
                  sub          t4, s0, t0
                  bltu         t5, a3, 139f
                  add          t1, s9, s2
                  srl          a0, a3, a0
                  srl          sp, a2, s5
                  xori         a3, tp, 1241
                  xor          s4, a2, a2
                  andi         a3, s10, -1236
                  sltiu        zero, s5, 968
139:              lui          s4, 909825
                  srli         t1, s9, 10
                  slti         a7, s4, 340
                  nop
143:              slt          t2, a0, t5
                  andi         s11, a2, 410
                  blt          t3, t5, 164f
                  sltiu        s11, a3, 1832
                  srl          gp, zero, s2
                  ori          a3, t1, -1348
                  srl          s4, s4, tp
                  sltu         t2, a1, t5
                  sub          a6, a4, zero
                  bgeu         a7, a3, 154f
                  slli         t2, t6, 11
154:              ori          zero, a5, 1646
                  xor          sp, s10, a7
                  slt          sp, sp, s1
                  blt          s1, s10, 171f
                  add          a7, zero, zero
                  lui          zero, 963307
                  xori         tp, a6, 1997
                  andi         a6, s0, -951
                  blt          t3, t0, 171f
                  xori         t6, gp, -1432
164:              addi         s4, s7, -1408
                  sub          t6, s3, a5
                  xor          s6, ra, s11
                  xor          t2, s8, gp
                  auipc        a5, 493836
                  slli         t0, a1, 22
                  srli         t5, a5, 20
171:              or           t0, a7, t3
                  srai         s3, a7, 11
                  or           t5, s2, s3
                  xori         t4, zero, -959
                  bltu         a2, zero, 176f
176:              andi         s1, a2, 1606
                  slli         a0, t5, 12
                  addi         s10, a3, -1818
                  addi         a4, a1, 354
                  sltiu        a5, s1, -157
                  slti         t3, a3, 1709
                  bgeu         s2, s0, 193f
                  xori         s7, s5, 150
                  ori          t2, t1, 593
                  xori         a0, s6, 1221
                  bltu         a3, a6, 203f
                  ori          a3, s2, 1969
                  srl          t0, a3, t5
                  sltu         a0, t5, t6
                  addi         s3, s9, 1264
                  bge          s1, t4, 199f
                  srli         gp, zero, 23
193:              srai         s6, a4, 17
                  andi         t1, s9, -1299
                  auipc        s1, 87143
                  nop
                  sll          ra, t3, s4
                  slli         t5, s10, 25
199:              add          s8, gp, a2
                  bge          t5, t5, 212f
                  addi         tp, s1, -1468
                  srl          s4, s9, t1
203:              xori         s11, s4, -1861
                  srai         s1, s3, 1
                  slt          a5, s9, s11
                  auipc        s4, 331674
                  bgeu         a5, s6, 218f
                  sub          t2, s6, sp
                  sltu         s2, t4, s3
                  andi         zero, s8, -736
                  srai         s5, a4, 26
212:              sra          s5, a6, zero
                  lui          s6, 947228
                  nop
                  xori         a0, tp, 1765
                  bgeu         s0, t2, 223f
                  ori          zero, t1, -906
218:              slli         s11, t3, 8
                  slti         t3, a2, 1270
                  sll          s1, s8, t4
                  xori         sp, sp, -1229
                  srai         gp, s0, 26
223:              blt          s5, t3, 237f
                  slt          t4, a1, s0
                  bltu         s0, t6, 241f
                  bgeu         sp, a1, 245f
                  addi         a7, a1, 1556
                  srli         s5, a1, 3
                  sub          t6, s6, a7
                  srai         t6, a0, 28
                  sll          s1, s7, t3
                  and          tp, zero, s3
                  bge          tp, a1, 247f
                  andi         a6, a0, 434
                  xor          s11, t3, s11
                  bge          s8, s5, 252f
237:              srli         sp, a5, 25
                  bgeu         t2, t0, 249f
                  ori          s3, t0, -992
                  bne          tp, a0, 255f
241:              xor          t6, sp, a3
                  and          zero, s6, s2
                  srai         s10, a0, 29
                  blt          t4, sp, 259f
245:              slti         a3, a2, 1897
                  and          s6, a2, ra
247:              lui          sp, 957726
                  srli         a7, s5, 6
249:              addi         a2, s8, -1840
                  xori         a5, sp, -1885
                  bne          s9, t2, 260f
252:              bltu         a5, s6, 265f
                  beq          a5, a0, 263f
                  andi         s5, s6, -51
255:              srl          t0, zero, a3
                  sub          zero, sp, s11
                  xor          t0, a6, s4
                  blt          s6, a5, 271f
259:              ori          a3, t3, 1940
260:              beq          s9, s8, 263f
                  sub          s3, a7, a3
                  lui          t1, 254825
263:              srli         t0, a5, 20
                  addi         a0, t3, -1171
265:              bge          s8, s8, 274f
                  sltiu        a7, s11, -1546
                  andi         t1, s8, -1391
                  lui          s6, 951957
                  slt          gp, t1, s3
                  bgeu         gp, t3, 282f
271:              xor          a4, s0, t2
                  add          tp, s4, s1
                  srli         t2, s3, 13
274:              and          t5, s8, s3
                  sll          t3, t5, a6
                  blt          s7, s11, 290f
                  nop
                  ori          a5, s2, -1184
                  bne          t1, zero, 285f
                  lui          zero, 270301
                  bltu         a7, s4, 301f
282:              xori         t6, a2, -290
                  slli         s11, a1, 0
                  xor          s8, a3, a1
285:              or           a3, zero, s7
                  sltu         s1, tp, t0
                  add          a5, s1, t4
                  slt          s6, t5, ra
                  bgeu         a6, a1, 298f
290:              srai         s3, a4, 23
                  srl          a3, s4, s2
                  xor          gp, t1, s11
                  nop
                  srai         s8, a3, 26
                  sltu         t4, gp, a5
                  sra          t6, s8, a2
                  slt          t6, s7, a5
298:              srai         s8, s4, 13
                  xor          a3, s6, a5
                  add          a2, s5, sp
301:              bne          a1, t1, 317f
                  sll          a2, a1, s7
                  bltu         s0, s11, 322f
                  and          a6, tp, a4
                  slt          s8, a3, t0
                  sltiu        sp, s5, -1411
                  srl          s7, t6, a5
                  beq          ra, s6, 322f
                  addi         s6, s9, -925
                  slti         s3, sp, 1015
                  and          t6, a3, a7
                  xori         t2, s4, -1056
                  lui          a6, 445762
                  bne          sp, s2, 323f
                  srai         a5, a6, 13
                  slli         a6, t0, 1
317:              nop
                  slli         s8, s7, 5
                  ori          a2, a1, -745
                  and          s3, t0, a5
                  srl          a6, a5, a5
322:              add          t0, tp, t2
323:              slli         t2, a6, 25
                  andi         t3, t2, 962
                  sltu         s8, a1, t0
                  blt          s8, t1, 334f
                  andi         t0, t5, 1855
                  slli         s8, a3, 21
                  sll          zero, t1, s1
                  auipc        tp, 474759
                  bltu         s0, a1, 345f
                  or           a3, s4, zero
                  xor          ra, s5, a5
334:              sub          t1, t3, s8
                  bne          a7, s7, 342f
                  and          tp, a1, t4
                  xori         a3, a2, 1510
                  bge          sp, s6, 344f
                  bge          a2, s1, 350f
                  beq          a5, a6, 350f
                  andi         s5, ra, 843
342:              sltu         a0, t1, a5
                  and          a7, s9, s8
344:              sltiu        t1, a3, 107
345:              auipc        s8, 404173
                  xori         a0, sp, -1479
                  blt          s11, a1, 349f
                  srl          s3, s0, t1
349:              sltu         s2, a4, s0
350:              andi         a7, t1, -767
                  slli         t3, ra, 4
                  bne          t5, a5, 367f
                  beq          s10, a0, 367f
                  srai         a5, t1, 20
                  ori          a7, a1, 1927
                  beq          sp, t2, 365f
                  srai         zero, a0, 16
                  addi         a7, s5, 182
                  bgeu         zero, s5, 372f
                  sra          s8, t2, s1
                  blt          s11, t3, 377f
                  slt          sp, s0, t6
                  ori          s3, tp, -690
                  sra          s6, s1, a4
365:              srl          a0, gp, a3
                  srl          s4, s5, ra
367:              slti         ra, s0, -2042
                  bgeu         s11, s6, 380f
                  xori         t2, s1, -586
                  slt          gp, t2, s6
                  slt          s1, a0, a0
372:              srli         sp, s8, 7
                  add          a0, gp, t0
                  sra          a5, a3, t4
                  bne          s7, sp, 378f
                  srl          s7, s7, a3
377:              sra          t2, gp, sp
378:              xori         t4, ra, -1360
                  nop
380:              add          s4, a1, s5
                  sltiu        a6, a4, 1153
                  blt          a3, a7, 395f
                  bne          s10, a7, 391f
                  auipc        t3, 599208
                  bgeu         s0, t5, 397f
                  lui          s3, 659609
                  lui          a7, 243044
                  bne          s0, a2, 399f
                  sub          s1, t2, zero
                  sra          sp, s6, a7
391:              add          a7, s6, s4
                  xori         s11, gp, 968
                  slti         zero, t3, -1978
                  xori         s11, a5, -774
395:              slli         s4, t0, 0
                  beq          s3, t6, 411f
397:              srl          s5, s4, ra
                  auipc        a7, 414674
399:              srai         t6, t3, 19
                  andi         s8, t2, -106
                  nop
                  add          a5, ra, s5
                  srai         t1, s5, 26
                  sub          a5, a4, s8
                  slli         s8, a7, 19
                  sra          s3, s3, a3
                  lui          s4, 291070
                  bne          zero, t0, 428f
                  ori          s2, a1, -1432
                  xori         s3, t2, -1679
411:              blt          t1, ra, 428f
                  beq          s5, a6, 423f
                  beq          a5, t1, 432f
                  and          s5, s9, a0
                  slti         s6, s7, -721
                  sub          sp, s8, s4
                  bne          s10, a5, 431f
                  bge          gp, a2, 419f
419:              or           s3, s11, a5
                  bgeu         a3, tp, 429f
                  slli         t2, s2, 5
                  beq          a5, s8, 436f
423:              slti         a2, t0, 1491
                  sll          t0, gp, s9
                  and          s5, s10, a5
                  bge          ra, gp, 438f
                  bge          a2, s4, 435f
428:              srl          s8, s7, a1
429:              ori          a7, s3, -283
                  nop
431:              blt          s4, t5, 432f
432:              sltiu        a2, t5, 640
                  add          t2, t1, a1
                  auipc        s1, 702808
435:              beq          s4, sp, 450f
436:              slt          s10, a5, s5
                  blt          tp, t0, 448f
438:              sltu         a3, a6, a5
                  slli         s11, sp, 28
                  sltiu        s4, a0, 128
                  bne          s8, s7, 455f
                  xor          t5, s1, t5
                  srai         sp, a0, 29
                  sltiu        s7, s5, -504
                  addi         tp, s9, -145
                  srli         a6, s6, 1
                  bltu         a7, t1, 456f
448:              lui          a2, 768768
                  xor          zero, t4, t4
450:              or           s5, s3, t1
                  slti         s6, ra, -205
                  xor          a5, s6, s7
                  sll          s8, a5, s11
                  add          s11, tp, s1
455:              and          a2, t6, a7
456:              blt          a0, tp, 468f
                  xori         a2, t4, -1695
                  slli         a6, a3, 17
                  blt          a6, s4, 462f
                  srai         tp, s11, 12
                  nop
462:              sltu         s4, a2, s3
                  add          s4, s1, t0
                  sra          t5, tp, t2
                  xor          s7, a4, t0
                  slt          s7, s2, s6
                  slt          s10, a0, t6
468:              add          t4, s3, t4
                  bgeu         ra, s6, 485f
                  xori         s10, t3, 1212
                  srl          s6, s6, s7
                  lui          s4, 532355
                  sltiu        s10, a7, 1231
                  sltu         t6, a6, t2
                  bltu         gp, t2, 481f
                  sltiu        gp, t4, 1083
                  sltu         zero, s5, a4
                  sltiu        s5, s10, -1685
                  nop
                  slti         tp, a2, -38
481:              blt          t6, ra, 492f
                  bgeu         ra, a6, 496f
                  andi         s7, zero, 1989
                  ori          a3, s3, -1807
485:              bne          a2, tp, 499f
                  add          a7, s11, s6
                  xor          s2, s1, t3
                  nop
                  bge          s2, t5, 496f
                  bgeu         a5, s4, 509f
                  blt          t0, s1, 499f
492:              and          t5, a3, a6
                  bltu         t4, s8, 508f
                  add          t2, tp, t0
                  beq          s4, s11, 505f
496:              srli         sp, a2, 4
                  bge          s11, ra, 508f
                  bne          a3, a2, 511f
499:              srli         s2, t1, 7
                  sub          s10, t1, s4
                  bgeu         sp, a0, 510f
                  sltu         t0, s7, a2
                  andi         gp, s8, 6
                  blt          t1, t0, 521f
505:              xor          t1, a0, s2
                  auipc        t3, 384715
                  xor          a5, s1, s2
508:              add          a4, gp, s4
509:              xor          a6, s2, gp
510:              sll          s7, s0, t4
511:              bgeu         a6, t0, 513f
                  add          s6, s0, a5
513:              slt          a7, t6, s7
                  bge          t3, s4, 533f
                  and          s3, s2, t2
                  sltiu        s8, sp, 1949
                  sra          s6, s2, sp
                  nop
                  bge          s1, s8, 535f
                  bne          a4, t1, 533f
521:              xor          s7, t3, s3
                  addi         tp, a2, 1279
                  bne          s1, ra, 543f
                  andi         t6, a2, -1429
                  srai         t1, a6, 21
                  la           sp, region_0+555 #start riscv_load_store_hazard_instr_stream_3
                  srl          t4, s0, a3
                  sh           t3, -175(sp)
                  lbu          zero, -175(sp)
                  sh           s11, -41(sp)
                  lhu          a2, -41(sp)
                  sub          gp, sp, s5
                  lb           t4, -18(sp)
                  lb           s6, -18(sp)
                  lbu          s2, 215(sp)
                  sh           a3, -33(sp)
                  sb           a6, 49(sp)
                  sb           tp, 191(sp)
                  sb           s10, 116(sp) #end riscv_load_store_hazard_instr_stream_3
                  lui          s8, 873392
                  addi         t1, zero, -990
                  xori         s1, t0, 1986
                  bne          t0, s9, 543f
                  lui          t3, 1037892
                  slti         t4, zero, 690
                  sltiu        s4, t1, -1157
533:              lui          s8, 230457
                  and          t1, s1, a3
535:              sll          t0, t5, s10
                  ori          s10, a5, -448
                  bltu         a4, t2, 553f
                  xor          t0, tp, ra
                  or           s8, t0, tp
                  beq          t2, t4, 551f
                  sra          a4, s4, s5
                  sltiu        s6, t3, -256
543:              nop
                  xori         a7, a2, 192
                  add          tp, t3, s7
                  bgeu         a5, s8, 548f
                  srl          t6, a2, s7
548:              and          s7, s5, zero
                  or           s11, s11, a5
                  ori          s6, t2, 48
551:              ori          s11, t0, 1631
                  slt          a5, s6, a1
553:              beq          s4, s7, 566f
                  sltiu        gp, a0, 1193
                  xori         s2, tp, 599
                  bltu         sp, a6, 570f
                  sub          s10, t1, tp
                  bltu         s7, a5, 571f
                  sltiu        a0, a1, 483
                  srl          s3, a3, a0
                  sub          s11, t5, gp
                  and          a4, t6, a7
                  ori          s6, s11, 1964
                  add          a6, a3, t5
                  beq          s7, s8, 571f
566:              bgeu         a1, t4, 571f
                  bge          a0, tp, 571f
                  lui          a6, 178507
                  or           s5, t5, t2
570:              andi         a2, s2, 217
571:              sltiu        a3, t1, 362
                  nop
                  slli         t6, s0, 20
                  xor          a2, s11, s10
                  lw           sp, 4(a1)
                  slt          t3, ra, t1
                  srl          s3, tp, s10
                  ori          a3, s9, 399
                  addi         a1, a1, 32
                  srli         s4, t1, 19
                  auipc        t6, 57554
                  srl          a2, t2, s5
                  srl          s3, s0, a6
1075:             addi x6, x2, 0
1075:             jalr x6, x6, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x25, x11, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x21, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x21, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x21, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x21, x31, ecall_handler
                  li x31, 0x1
                  beq x21, x31, instr_fault_handler
                  li x31, 0x5
                  beq x21, x31, load_fault_handler
                  li x31, 0x7
                  beq x21, x31, store_fault_handler
                  li x31, 0xc
                  beq x21, x31, pt_fault_handler
                  li x31, 0xd
                  beq x21, x31, pt_fault_handler
                  li x31, 0xf
                  beq x21, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x11, x25, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
