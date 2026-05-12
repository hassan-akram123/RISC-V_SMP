.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x50b9c673
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xfd2032d6
                  li x5, 0xfa9d95ab
                  li x6, 0xf28ae5a7
                  li x7, 0x80000000
                  li x8, 0x24a83309
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xda378596
                  li x12, 0x7ebf2f55
                  li x13, 0x3
                  li x14, 0xf06982f7
                  li x15, 0x79ddc3fc
                  li x16, 0x6fc700e8
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x0
                  li x20, 0x2d113d9a
                  li x22, 0xe
                  li x23, 0x0
                  li x24, 0xf82fe663
                  li x25, 0x89630476
                  li x26, 0x0
                  li x27, 0xdfef970b
                  li x29, 0xfda616f7
                  li x30, 0x56e77aa6
                  li x31, 0x3
                  la x21, user_stack_end
main:             la           sp, region_0+1837 #start riscv_load_store_hazard_instr_stream_0
                  lb           s9, 150(sp)
                  sltiu        s11, s0, 494
                  lbu          a0, 120(sp)
                  sb           s3, 120(sp)
                  lb           s6, -236(sp)
                  lbu          a7, 46(sp)
                  sb           ra, 46(sp)
                  sb           s3, 46(sp)
                  lb           a6, -158(sp)
                  lbu          a3, -230(sp)
                  lb           s6, -62(sp)
                  sb           s8, -62(sp)
                  lw           t4, -77(sp)
                  sw           a3, -77(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1281 #start riscv_load_store_hazard_instr_stream_1
                  lb           t4, -15(sp)
                  lb           a0, -15(sp)
                  lhu          s8, -15(sp)
                  lb           a6, -15(sp)
                  lb           gp, -15(sp)
                  lhu          s9, -15(sp)
                  lbu          a6, -15(sp)
                  ori          a5, a7, 1510
                  lbu          s4, -15(sp)
                  sltu         t4, a7, gp
                  sb           s6, -15(sp)
                  lb           a1, -15(sp)
                  lb           a5, -15(sp)
                  sra          s11, t5, t2
                  sh           s3, -15(sp)
                  lbu          s0, -15(sp)
                  lbu          tp, -15(sp)
                  sb           s1, -15(sp)
                  sh           t1, -15(sp)
                  sub          ra, t6, s8
                  ori          s9, s2, -301
                  lb           s9, -15(sp)
                  lbu          a7, -15(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+1607 #start load_store_instr_stream_2
                  la           s6, region_1+1090 #start load_store_instr_stream_1
                  la           s3, region_1+1337 #start load_store_instr_stream_3
                  lhu          t1, -209(sp)
                  lb           t0, 155(sp)
                  lb           a1, 50(s3)
                  la           ra, region_1+30 #start load_store_instr_stream_0
                  lhu          a3, -27(s3)
                  lb           t6, 57(sp)
                  lb           a2, -9(s6)
                  lb           gp, 11(s6)
                  lb           t2, -70(s3)
                  sh           ra, -43(s3)
                  sw           t5, -175(sp)
                  lh           s4, 598(ra)
                  sb           a0, 187(s3)
                  sh           a6, -121(sp)
                  sh           s8, 14(s6)
                  sb           t4, -166(sp)
                  lb           t1, 1857(ra)
                  lbu          s8, 501(ra)
                  sb           t4, -93(s3)
                  lb           a6, -16(s6)
                  sb           a3, -228(s3)
                  lb           s11, 8(s3)
                  lb           s10, 193(sp)
                  lh           t2, 958(ra)
                  lb           a6, -116(s3)
                  lhu          s11, 87(s3) #end load_store_instr_stream_3
                  sh           a3, 197(sp)
                  lh           a4, 10(s6) #end load_store_instr_stream_1
                  lh           s10, 205(sp)
                  lb           s10, 56(sp) #end load_store_instr_stream_2
                  lb           s0, 1679(ra) #end load_store_instr_stream_0
                  la           sp, region_1+560 #start riscv_load_store_hazard_instr_stream_2
                  lh           t1, 58(sp)
                  sh           a2, -26(sp)
                  sh           a2, 14(sp)
                  sh           t5, 14(sp)
                  lb           a7, 13(sp)
                  lbu          a7, 13(sp)
                  lhu          t4, -12(sp)
                  sw           t0, 24(sp)
                  sb           t4, -53(sp)
                  lbu          a7, 35(sp)
                  lbu          s4, 35(sp)
                  lbu          zero, 35(sp)
                  lb           t6, 43(sp)
                  sltiu        ra, zero, 1654
                  lb           a1, 43(sp)
                  lb           tp, 43(sp)
                  sb           t2, 43(sp)
                  and          s7, s3, s4
                  or           a1, a2, t2
                  sb           a5, -17(sp)
                  lbu          t4, -17(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           t6, region_1+1518 #start load_store_instr_stream_4
                  la           s11, region_1+1725 #start load_store_instr_stream_2
                  sb           s3, -14(s11)
                  la           a5, region_1+1732 #start load_store_instr_stream_3
                  la           t2, region_1+177 #start load_store_instr_stream_1
                  sb           t0, -615(t6)
                  sh           sp, -1422(a5)
                  sb           t2, -1130(a5)
                  sb           a1, -12(t2)
                  lb           a3, 28(s11)
                  lbu          s1, -1371(a5)
                  la           ra, region_1+989 #start load_store_instr_stream_0
                  sb           a0, -54(s11)
                  lw           s3, -914(t6)
                  lb           s0, 201(t6)
                  sb           s1, -1611(a5)
                  lh           s10, -15(ra)
                  lbu          a0, -997(t6)
                  lw           s6, 27(s11)
                  sb           ra, 6(t2)
                  lh           gp, 9(s11)
                  lbu          s1, -932(t6)
                  lb           tp, 4(t2)
                  sb           s6, -1319(a5)
                  lb           a2, 12(s11)
                  lbu          t1, -1403(t6)
                  sh           t3, 13(ra)
                  lb           a6, 10(t2)
                  lb           a1, -14(t2)
                  lb           a0, -609(t6)
                  lhu          a3, 1(t2)
                  lb           a4, -63(s11)
                  lh           s9, -412(a5)
                  lbu          s0, -16(ra)
                  sb           a6, -541(t6)
                  lb           a2, 15(t2)
                  lb           a6, -3(ra)
                  lhu          s8, -1600(a5)
                  lb           t0, -64(a5)
                  lbu          s4, -1341(t6) #end load_store_instr_stream_4
                  lb           t4, -42(s11)
                  lbu          s10, 3(t2) #end load_store_instr_stream_1
                  lhu          s8, 15(s11) #end load_store_instr_stream_2
                  sb           a1, -1064(a5) #end load_store_instr_stream_3
                  sb           a0, -16(ra) #end load_store_instr_stream_0
                  la           s1, region_0+384 #start riscv_load_store_rand_instr_stream_1
                  sb           t1, 3(s1)
                  lbu          t4, -11(s1)
                  sb           a7, -11(s1)
                  lhu          a6, 0(s1)
                  and          s8, s0, gp
                  sh           t5, -6(s1)
                  or           gp, s1, a6
                  nop
                  lb           s11, 1(s1)
                  sb           s6, 15(s1)
                  slli         t1, s10, 2
                  lhu          s9, -14(s1)
                  lh           s7, 8(s1)
                  lbu          sp, 10(s1)
                  lw           a3, -12(s1)
                  lb           s11, -3(s1)
                  lb           t6, -12(s1)
                  lbu          sp, 5(s1)
                  nop
                  and          tp, s5, tp
                  sll          s0, t5, s1
                  lbu          s2, 6(s1)
                  lh           a6, 6(s1)
                  srai         s6, sp, 9
                  sb           zero, 0(s1)
                  sra          a3, a0, a7
                  lbu          t2, -2(s1)
                  or           a6, gp, s4
                  nop
                  slli         t4, s6, 18
                  addi         s3, tp, -913
                  xori         a5, t2, 1614
                  sw           a1, 8(s1)
                  sltu         a0, a5, s4
                  lui          tp, 573594
                  lw           tp, -16(s1)
                  sll          s3, t4, s4
                  sh           s2, 6(s1) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+1788 #start load_store_instr_stream_2
                  lb           a5, -244(a1)
                  la           a0, region_1+1368 #start load_store_instr_stream_3
                  la           t6, region_1+1169 #start load_store_instr_stream_1
                  la           sp, region_1+352 #start load_store_instr_stream_4
                  lb           ra, 1(a1)
                  la           a2, region_1+249 #start load_store_instr_stream_0
                  sb           t4, 56(a0)
                  sh           t4, 2(sp)
                  lb           a3, -113(a2)
                  lb           zero, 116(a1)
                  sb           t2, 0(sp)
                  sb           t0, -29(a0)
                  lb           a6, 176(t6)
                  lbu          s6, -1037(t6)
                  lbu          gp, -9(sp)
                  sh           s5, -72(a1)
                  lh           t0, 64(a0)
                  lb           gp, -3(sp)
                  sw           t6, 199(a2)
                  lb           s2, 36(t6)
                  lh           t1, 16(sp)
                  lbu          tp, -33(a0)
                  lb           zero, -13(sp)
                  sh           s8, -140(a1)
                  lb           t1, -49(a0)
                  lbu          a6, -88(a1)
                  lb           ra, -19(a2)
                  lbu          tp, -1(a0)
                  lbu          s9, 151(a1)
                  sb           zero, 145(t6)
                  lbu          a4, 47(a1)
                  lb           gp, 24(a1)
                  lbu          gp, 2(sp)
                  lbu          s8, 126(a2)
                  lbu          gp, -1(sp)
                  lb           s11, -996(t6) #end load_store_instr_stream_1
                  lbu          a6, -1(a0)
                  lbu          s2, 105(a1) #end load_store_instr_stream_2
                  sw           t2, 8(sp)
                  lhu          s0, 16(sp) #end load_store_instr_stream_4
                  sh           s9, 50(a0) #end load_store_instr_stream_3
                  sb           t6, 190(a2)
                  lbu          s6, 209(a2) #end load_store_instr_stream_0
                  la           s10, region_0+72 #start riscv_load_store_rand_instr_stream_0
                  sltiu        a7, s4, 482
                  xori         zero, s1, 572
                  or           s6, s4, s4
                  xori         a1, a3, 1923
                  xori         s11, sp, -1988
                  srl          a4, s11, s3
                  sltu         gp, a1, t6
                  or           t4, tp, a6
                  auipc        a3, 839690
                  and          a6, a2, tp
                  and          s3, s4, a1
                  lb           gp, -13(s10)
                  srai         s9, s1, 8
                  lhu          tp, -14(s10)
                  lbu          s3, -5(s10)
                  slt          t6, s1, a2
                  sh           a0, -8(s10)
                  sb           a3, -7(s10)
                  lbu          zero, -8(s10)
                  lh           t2, -8(s10)
                  and          s3, a3, s8
                  lb           t0, 7(s10)
                  auipc        s2, 369085
                  addi         t0, a7, 1917
                  auipc        a6, 287748
                  sb           a0, -5(s10)
                  lb           a1, 15(s10)
                  sb           s1, 13(s10)
                  lbu          zero, -3(s10) #end riscv_load_store_rand_instr_stream_0
                  blt          s4, s9, 20f
                  srai         t2, s8, 19
                  slt          sp, s3, s1
                  auipc        t2, 825034
                  ori          a4, gp, -355
                  blt          zero, s0, 24f
                  lui          s11, 622771
                  andi         a4, a2, 1088
                  srai         t1, t0, 11
                  bgeu         t1, t1, 22f
                  bgeu         a6, ra, 19f
                  lui          s0, 716039
                  ori          s9, t4, 1837
                  slt          zero, s3, a5
                  sll          tp, a0, s2
                  srl          t2, a4, s9
                  bge          a6, t3, 22f
                  add          s8, a2, a0
                  bge          s4, s10, 24f
19:               xori         s11, s9, -57
20:               slt          s9, s8, s5
                  slti         zero, gp, -341
22:               slli         s7, s11, 21
                  srai         s11, t5, 18
24:               auipc        a1, 176916
                  srl          s4, gp, t1
                  slli         t6, s7, 17
                  srli         s1, s3, 21
                  bltu         a5, s1, 45f
                  sll          s10, a5, s9
                  lui          s1, 346801
                  addi         s0, a4, -140
                  xor          a2, s10, t6
                  xori         gp, a1, 847
                  slt          s6, tp, a2
                  xor          a3, gp, a2
                  beq          s0, a2, 42f
                  srl          s11, t0, s6
                  slti         ra, t4, -1222
                  sra          a6, t2, t0
                  srl          s8, t5, a1
                  bne          t6, tp, 46f
42:               andi         gp, t1, -152
                  add          s3, s11, t1
                  ori          gp, t5, -1701
45:               or           s4, t6, s7
46:               sltu         s11, a2, s8
                  or           t1, s3, s8
                  bge          t3, t0, 62f
                  slli         t1, t5, 13
                  andi         a1, s0, -558
                  and          s11, t6, s9
                  srl          a0, s3, t1
                  blt          s7, s7, 62f
                  add          s6, s8, t4
                  slt          t4, s1, s8
                  bne          t2, sp, 69f
                  slti         s10, s11, -766
                  sltu         t2, a7, zero
                  slt          s11, a7, s3
                  auipc        tp, 912492
                  add          s10, sp, t0
62:               andi         a5, a7, -291
                  bltu         t4, sp, 75f
                  bltu         t6, tp, 74f
                  slli         a0, s5, 23
                  slli         a0, sp, 24
                  auipc        s6, 1014329
                  sll          s3, s0, tp
69:               auipc        sp, 164656
                  ori          a2, a1, 90
                  lui          gp, 835189
                  beq          s11, s3, 81f
                  or           s10, a2, s11
74:               slli         a3, sp, 15
75:               srl          s4, a6, a4
                  sra          a5, a2, s4
                  slt          t2, s1, a5
                  slli         a6, t5, 26
                  lui          s9, 943145
                  add          a2, t0, a5
81:               slli         a2, t3, 3
                  auipc        a5, 601523
                  and          tp, s2, s0
                  srli         a1, t3, 4
                  srli         s7, t1, 8
                  srl          a6, a1, a7
                  sltu         a7, zero, s10
                  sltiu        a3, a1, 918
                  bne          s8, a7, 104f
                  srl          a4, t5, tp
                  srli         t4, s4, 20
                  andi         a7, t0, 1915
                  nop
                  sltiu        s3, a2, 1606
                  srli         s10, ra, 16
                  sll          s7, s0, gp
                  slti         ra, gp, 499
                  addi         tp, sp, -1885
                  bgeu         t6, t4, 109f
                  beq          s4, s5, 113f
                  andi         s1, s2, 1386
                  bne          zero, t1, 120f
                  sub          a1, s2, s3
104:              lui          zero, 725526
                  auipc        s11, 925455
                  srli         a2, gp, 11
                  bgeu         a7, t6, 111f
                  sra          a7, s5, s2
109:              slt          s2, a6, tp
                  sra          a7, a5, s5
111:              add          a3, s6, gp
                  srli         a2, tp, 25
                  la           sp, region_1+827 #start riscv_load_store_rand_instr_stream_2
                  add          s2, t0, a6
                  sb           s7, 25(sp)
                  sb           s1, -18(sp)
                  lb           a7, 52(sp)
                  sh           s1, 37(sp)
                  lbu          zero, 60(sp)
                  sh           s0, -29(sp)
                  lh           a2, -51(sp)
                  auipc        a7, 779478
                  lbu          s2, 53(sp)
                  srli         t4, a3, 17
                  or           tp, s7, a4
                  sb           t6, 28(sp)
                  sb           s9, 30(sp)
                  lbu          t1, -33(sp)
                  lui          a5, 608937
                  lh           a3, 13(sp)
                  sb           a7, -51(sp)
                  lui          a3, 519269
                  sb           sp, 22(sp)
                  nop
                  lbu          s2, 10(sp)
                  lbu          t4, -3(sp)
                  srli         s7, s4, 28
                  lhu          t2, 35(sp)
                  sh           s6, 39(sp)
                  sb           s10, -17(sp)
                  srai         a7, s1, 26
                  sb           s4, 30(sp)
                  lb           a0, 0(sp)
                  lbu          t4, 49(sp)
                  sb           s8, 42(sp)
                  lb           a1, 58(sp)
                  addi         a2, a1, 1332
                  lbu          s9, -15(sp)
                  sra          a4, t0, t5
                  srai         s8, s11, 2
                  sltu         s6, s6, sp
                  srl          a7, zero, s0
                  lb           a6, -9(sp)
                  lbu          t4, 41(sp)
                  sb           a6, 27(sp) #end riscv_load_store_rand_instr_stream_2
113:              auipc        gp, 818455
                  add          s9, gp, s0
                  sltu         s8, s11, t4
                  andi         a0, s2, 525
                  slt          a5, s9, s0
                  slti         a3, t5, 1507
                  add          tp, s0, t6
120:              bge          sp, a7, 121f
121:              sll          a3, t6, t2
                  srli         a6, ra, 22
                  bgeu         a6, t2, 124f
124:              bgeu         zero, s0, 142f
                  sub          a1, a5, a3
                  xor          t6, a2, s10
                  add          t0, t0, sp
                  lui          a7, 765374
                  srai         t1, t6, 27
                  andi         sp, s10, 246
                  nop
                  sub          t6, zero, ra
                  blt          s4, zero, 135f
                  lui          ra, 17203
135:              xor          s0, ra, a1
                  srai         a1, t3, 9
                  sub          t6, a3, t2
                  sltu         a4, a6, a1
                  add          gp, a5, t3
                  srl          gp, s1, s10
                  srai         zero, ra, 21
142:              addi         s4, a7, 1523
                  bne          a1, a5, 154f
                  addi         gp, t6, 1207
                  add          a1, ra, s4
                  srl          s1, s9, s2
                  sltu         t2, s1, s3
                  slli         tp, a6, 11
                  nop
                  sll          a5, a1, t1
                  lui          a7, 625252
                  bge          t2, s8, 157f
                  lui          s6, 861726
154:              bgeu         a3, s1, 160f
                  srai         t6, t2, 1
                  bge          s2, tp, 163f
157:              srai         t2, a1, 28
                  auipc        a7, 319893
                  sltiu        a0, t5, -1551
160:              sra          ra, a2, s5
                  bgeu         tp, s10, 179f
                  ori          a2, a7, 943
163:              or           a3, t2, ra
                  bltu         t5, s2, 183f
                  and          s4, a4, a4
                  ori          s4, s10, -1345
                  bne          s2, tp, 172f
                  or           a7, a7, a1
                  bgeu         s4, t4, 187f
                  slt          ra, s10, a0
                  andi         gp, s5, -1964
172:              bge          s3, s0, 174f
                  srli         t4, s7, 17
174:              slt          t4, s6, s6
                  ori          s4, t0, 1388
                  bltu         s1, tp, 183f
                  ori          t2, s1, 58
                  add          t2, s8, s7
179:              sltiu        s8, gp, 1948
                  sltu         s2, a4, a2
                  sub          a3, tp, sp
                  or           ra, s10, a4
183:              bge          s1, t4, 202f
                  addi         t2, s5, -582
                  or           zero, a6, s6
                  xor          tp, a3, zero
187:              blt          s5, a1, 200f
                  slt          s1, t0, t2
                  auipc        s0, 587044
                  lui          tp, 3244
                  and          s7, s5, ra
                  bltu         a0, s9, 193f
193:              nop
                  blt          s4, t6, 200f
                  sll          s8, s2, a5
                  bltu         t0, a7, 214f
                  sra          t0, s2, a0
                  slli         s8, s3, 26
                  sra          zero, t2, s6
200:              or           s4, s1, s11
                  addi         s6, gp, -1380
202:              lui          a2, 835192
                  sra          a4, a4, s9
                  sll          tp, s0, t6
                  bltu         a3, s3, 224f
                  and          s11, s5, a3
                  andi         ra, s0, -770
                  addi         s11, s6, 1647
                  srai         s9, t2, 4
                  bgeu         tp, a2, 216f
                  bne          s7, t5, 231f
                  slt          tp, s3, t1
                  ori          a2, s5, 1398
214:              beq          sp, ra, 228f
                  sub          s0, zero, a2
216:              beq          s3, s2, 217f
217:              xori         s10, t1, 701
                  xor          s9, a2, a1
                  and          s6, t0, gp
                  slt          t6, t6, s9
                  or           gp, a2, a4
                  srai         a0, a5, 0
                  bge          a1, t3, 233f
224:              sub          s6, a0, t3
                  bge          t5, s11, 229f
                  sltu         sp, a3, t2
                  sltu         s2, s3, s1
228:              lui          s9, 979466
229:              beq          a2, s4, 247f
                  beq          s5, t0, 243f
231:              bgeu         a2, t5, 242f
                  lui          a0, 223160
233:              bne          s0, s1, 242f
                  add          sp, s11, a3
                  slt          zero, a4, tp
                  xor          t6, a7, ra
                  bne          t1, ra, 243f
                  srl          s9, a5, tp
                  or           a1, t2, a6
                  sll          s10, s5, a2
                  srli         a4, s2, 23
242:              xor          s1, s2, s10
243:              sub          s9, s5, s7
                  sltu         a6, s9, s4
                  slti         s3, s11, 485
                  or           s10, s9, s7
247:              slli         tp, s3, 1
                  or           a0, tp, a3
                  nop
                  blt          tp, a5, 267f
                  sltiu        s7, s4, 523
                  xor          zero, a6, s8
                  add          a0, s2, a2
                  sltu         a2, s10, t3
                  bge          s9, t6, 264f
                  sll          a6, s0, s8
                  andi         a1, s7, -6
                  slt          s4, ra, a3
                  srai         tp, zero, 26
                  bltu         s3, zero, 275f
                  sra          s6, s10, s0
                  sltu         a5, s8, tp
                  slt          s3, s9, t6
264:              slt          s10, a0, a3
                  beq          t2, t2, 278f
                  bge          a5, t1, 276f
267:              srai         sp, tp, 15
                  sltiu        a4, s8, -490
                  slt          a0, s10, s11
                  addi         a6, s8, -216
                  nop
                  xori         t1, t4, -118
                  bge          a7, s5, 282f
                  sub          s8, gp, s4
275:              bgeu         ra, t4, 281f
276:              bne          a7, a5, 281f
                  blt          t6, t2, 289f
278:              ori          s2, s4, -762
                  bge          s2, a7, 284f
                  nop
281:              sub          a1, t1, s3
282:              beq          s8, t4, 283f
283:              add          s8, a5, t5
284:              sra          s7, s3, s2
                  slli         a2, s0, 13
                  beq          t1, s4, 288f
                  bgeu         a4, a6, 293f
288:              sub          s9, t1, s5
289:              beq          s8, ra, 298f
                  blt          s6, a2, 304f
                  add          a0, s4, s4
                  nop
293:              bgeu         t2, tp, 310f
                  andi         s0, a6, -942
                  addi         zero, t5, 627
                  bne          a4, t0, 314f
                  bne          t4, t6, 309f
298:              sra          t1, t6, t0
                  bge          t1, a4, 310f
                  auipc        s10, 284334
                  slli         t4, ra, 14
                  beq          s6, t2, 317f
                  add          s10, s8, s0
304:              lui          s10, 796980
                  or           a6, t3, t0
                  sra          a7, t3, a3
                  sra          t1, t6, tp
                  bge          t1, s9, 321f
309:              and          sp, s5, t1
310:              slli         s9, gp, 23
                  xor          gp, t2, t2
                  bge          a1, a0, 318f
                  xori         s8, a0, 1286
314:              xori         tp, s8, 359
                  srli         s4, s4, 12
                  srl          s2, s2, s0
317:              lui          s4, 1033608
318:              srl          s9, s1, t5
                  blt          a5, a1, 323f
                  xor          s2, s11, gp
321:              sll          s4, s1, s8
                  ori          t4, t4, 1579
323:              sra          t4, sp, a5
                  slti         a2, a6, -1442
                  nop
                  srai         t1, t5, 13
                  srli         a1, s1, 8
                  sltu         s3, tp, t3
                  xor          t0, a2, t0
                  nop
                  srai         a7, gp, 23
                  auipc        t1, 87478
                  or           s9, gp, sp
                  srl          t1, zero, s4
                  sll          t4, t2, a0
                  and          a4, ra, a3
                  slti         s2, tp, 412
                  sub          a1, s11, s7
                  slli         t4, t5, 2
                  sub          s7, t6, a1
                  slli         t2, t6, 7
                  bgeu         a0, t2, 355f
                  beq          t1, sp, 361f
                  and          a6, s5, a3
                  nop
                  sltiu        a1, a2, -1638
                  blt          s7, a2, 357f
                  blt          s6, t0, 366f
                  sltu         s8, gp, ra
                  nop
                  bgeu         a0, s4, 371f
                  srli         s9, a7, 2
                  srli         a4, a4, 27
                  ori          a7, s3, -255
355:              xor          s11, s9, a4
                  slli         a4, s3, 15
357:              srl          s3, t5, sp
                  slt          ra, s5, a5
                  slli         s11, s11, 2
                  auipc        t0, 451288
361:              auipc        gp, 894875
                  beq          t5, s7, 367f
                  sub          s9, tp, t0
                  andi         a6, a3, -1782
                  bne          s4, t1, 371f
366:              and          a4, a0, s4
367:              slt          s8, zero, t2
                  sll          t0, s11, tp
                  blt          a3, a0, 370f
                  sub          zero, a2, s9
                  andi         t1, a0, 770
                  sub          t1, s4, zero
                  la           s6, sub_1
                  addi         s6, s6, -606
                  bltu         t0, s9, main_j1 #branch to jump instr
                  srli         t4, s7, 23
                  sltiu        s10, gp, -1123
                  add          s11, a1, a1
                  slt          a5, s0, t3
main_j1:          jalr         sp, s6, 606 #jump main -> sub_1
370:              lui          gp, 440084
371:              lui          s10, 623181
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            nop
                  or           s0, s1, s4
                  sltiu        t1, zero, -1212
                  addi         s5, s5, -20
                  xor          t2, s6, s5
                  xori         t0, sp, -5
                  xori         s10, a2, 649
                  lui          a7, 898543
                  sw           sp, 4(s5)
                  slt          a0, sp, a0
                  or           s8, a2, a3
                  lui          t2, 991018
                  slli         ra, s0, 3
                  sra          zero, sp, t2
                  xori         s7, s9, 1488
                  slt          s7, t0, s5
                  srai         a4, s3, 2
                  nop
                  or           s11, a0, s9
sub_1_j2:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  srli         a6, s5, 21
                  slt          s1, t2, sp
                  slt          a6, s3, s9
                  srli         s10, s0, 1
                  sltiu        t2, a1, 980
                  slli         a1, s10, 4
sub_1_j3:         jal          sp, sub_2 #jump sub_1 -> sub_2
                  la           sp, region_1+1148 #start riscv_load_store_rand_instr_stream_0
                  add          s1, s6, s11
                  slli         gp, s4, 1
                  add          s2, s10, a0
                  sll          a7, s7, tp
                  srl          ra, a3, s3
                  sb           zero, -15(sp)
                  srai         a0, s0, 4
                  sub          t0, a6, a3
                  lbu          a7, -11(sp)
                  srai         s1, s2, 8
                  sra          a6, s1, gp
                  lb           s9, -1(sp)
                  lbu          tp, 15(sp)
                  or           t0, zero, a7
                  and          s2, t1, t3
                  slti         a3, s4, 1466
                  add          s4, s11, t5
                  sb           a1, -13(sp)
                  sub          s4, t1, s11
                  lui          s2, 752890
                  add          a3, s7, a5
                  sub          s3, s5, s3
                  lbu          a5, -1(sp)
                  add          a5, t6, a1
                  srl          t4, t5, t4
                  andi         s4, s4, 78
                  xor          s11, s5, t2
                  srl          t4, s0, a5
                  srl          gp, s3, s6
                  lb           t1, -5(sp)
                  lbu          ra, 11(sp)
                  xori         tp, t3, -28
                  lui          s8, 217333
                  lb           a2, -6(sp)
                  sll          s3, s4, s8
                  ori          t2, s2, 1888
                  sltiu        s8, zero, 531
                  add          a3, a6, a4
                  lb           tp, -13(sp)
                  sb           s6, -11(sp)
                  or           s9, s8, s7
                  lb           s6, 16(sp)
                  sb           a4, -1(sp)
                  lw           a0, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1252 #start riscv_load_store_hazard_instr_stream_0
                  sb           s2, 53(s3)
                  lw           s9, -64(s3)
                  sb           s9, -50(s3)
                  lb           s8, -38(s3)
                  lhu          t1, -38(s3)
                  addi         ra, gp, -636
                  sh           a1, -38(s3)
                  sh           t2, -38(s3)
                  lh           t1, -38(s3)
                  auipc        zero, 709042
                  sh           a7, -38(s3)
                  lbu          zero, 23(s3)
                  ori          s1, t6, -1782
                  sb           s5, -39(s3)
                  lbu          s7, -19(s3)
                  lbu          s2, -19(s3)
                  sltu         s1, s7, s9
                  sb           s2, -19(s3)
                  lb           s1, 7(s3)
                  lb           gp, 7(s3)
                  lbu          s7, 47(s3)
                  sb           s7, -39(s3) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_1+36 #start load_store_instr_stream_4
                  lh           t0, 78(s1)
                  la           s4, region_1+409 #start load_store_instr_stream_0
                  la           a2, region_1+997 #start load_store_instr_stream_3
                  sb           ra, 63(s1)
                  la           s7, region_1+498 #start load_store_instr_stream_1
                  lh           a6, 3(a2)
                  lb           s11, 36(s4)
                  sb           t4, 7(s7)
                  lbu          s9, 251(s4)
                  sb           s4, -15(s7)
                  lb           t4, 23(s4)
                  sh           sp, 16(s7)
                  lhu          ra, 128(s1)
                  lbu          gp, 1(s7)
                  lbu          t1, 154(s1)
                  la           s0, region_1+1095 #start load_store_instr_stream_2
                  sb           s0, -15(s7)
                  sb           t5, 144(s1)
                  lh           a0, -28(s1)
                  sb           a0, 938(s4)
                  lbu          zero, -2(a2)
                  sw           s0, -5(a2)
                  lbu          t0, 8(s0)
                  sb           t6, -8(s0)
                  sb           ra, 0(s7)
                  sb           a2, -4(s7)
                  lh           t1, -10(s7)
                  lbu          a0, 188(s4)
                  lb           a4, 8(a2)
                  sw           t6, 10(s7)
                  sb           t0, 6(s0)
                  lh           t2, -15(s0)
                  lhu          t0, -11(a2)
                  lh           a0, -13(s4)
                  sb           a4, 2(a2)
                  lb           s8, -7(a2) #end load_store_instr_stream_3
                  lhu          t0, -6(s1) #end load_store_instr_stream_4
                  sb           t5, -4(s0) #end load_store_instr_stream_2
                  sh           s11, 8(s7) #end load_store_instr_stream_1
                  sb           a0, 77(s4) #end load_store_instr_stream_0
                  auipc        t0, 694856
                  bgeu         a7, s2, 10f
                  nop
                  xori         a1, gp, -1120
                  slli         a6, gp, 26
                  sll          a7, t6, t4
                  bne          t5, t6, 11f
                  bge          ra, s1, 18f
                  andi         s6, t0, 290
                  add          s2, a3, sp
10:               addi         a6, ra, -1053
11:               slli         zero, a6, 13
                  bgeu         t1, s5, 24f
                  andi         a3, t6, 1661
                  or           a4, t4, a4
                  lui          s0, 808458
                  sra          a0, sp, t3
                  sub          t6, s7, t5
18:               xor          t4, s5, t0
                  and          a7, a3, s10
                  and          zero, t3, ra
                  sltu         a6, s6, tp
                  bne          s5, s5, 41f
                  or           s6, a1, s2
24:               srl          s4, a1, a7
                  ori          a4, a5, -1114
                  sub          ra, t5, s5
                  xor          s3, s4, t5
                  blt          a7, s2, 36f
                  nop
                  bgeu         sp, t3, 47f
                  auipc        t6, 107189
                  sra          tp, a0, s2
                  srai         s6, s8, 25
                  xori         a7, s8, -13
                  ori          s4, gp, 1489
36:               and          a5, a6, s3
                  nop
                  slt          a1, s11, t2
                  and          t6, a4, s5
                  slt          a3, s3, t6
41:               addi         a6, tp, 1509
                  and          s2, s7, s7
                  andi         a5, t0, -1359
                  nop
                  slt          sp, s4, t1
                  nop
47:               addi         s9, a4, 110
                  auipc        t6, 260686
                  ori          t1, s0, 249
                  sll          a0, s0, tp
                  bltu         zero, t3, 63f
                  lui          a7, 587891
                  sra          ra, s0, s7
                  ori          ra, t2, -1099
                  bge          s9, tp, 71f
                  bne          s2, s0, 74f
                  srai         ra, gp, 20
                  bge          s1, t2, 74f
                  slli         s4, zero, 7
                  beq          ra, t0, 79f
                  lui          s7, 859825
                  bge          t4, t0, 80f
63:               sltu         s7, ra, t4
                  add          s4, a0, t1
                  srl          s3, s2, t5
                  bne          a7, s8, 84f
                  ori          s7, t5, -1283
                  srli         a3, a7, 9
                  and          s10, a3, s4
                  andi         a6, t6, 1148
71:               sub          s8, s9, s8
                  slli         t0, a5, 15
                  sll          t4, zero, a6
74:               auipc        t6, 720923
                  slt          s3, a6, s7
                  sltu         a5, s10, a3
                  bne          sp, t1, 89f
                  blt          zero, s11, 93f
79:               srl          a5, sp, gp
80:               slt          a5, t6, gp
                  beq          a6, t3, 93f
                  srl          zero, t4, s5
                  slt          s10, s10, a0
84:               slt          s3, s11, s5
                  auipc        zero, 462290
                  sll          a0, sp, t1
                  add          t1, a1, s2
                  srai         s11, t2, 4
89:               srai         a0, t3, 21
                  ori          sp, s0, 1517
                  sub          s3, s9, s11
                  sll          t6, zero, t6
93:               sra          s8, a4, sp
                  srli         a6, a1, 24
                  sltiu        t2, a5, -1769
                  beq          s6, gp, 101f
                  and          a7, s10, a1
                  auipc        tp, 918652
                  blt          a6, a5, 111f
                  sub          a3, s11, a2
101:              xor          s0, t5, s2
                  add          s7, a6, sp
                  slti         s0, s0, 1299
                  bgeu         tp, s10, 108f
                  sltu         ra, a1, a6
                  bgeu         zero, t0, 122f
                  srai         ra, s2, 25
108:              andi         a2, s2, 986
                  bltu         t3, tp, 116f
                  bltu         s7, s6, 120f
111:              slti         t0, a3, -1038
                  sub          s10, s5, gp
                  bltu         s6, s11, 123f
                  andi         a1, s2, -1613
                  addi         a5, s7, -1858
116:              sll          s7, zero, t1
                  sll          t4, s9, t5
                  sra          a3, s4, s10
                  xor          a1, gp, t6
120:              sra          a4, t0, ra
                  sub          a1, s2, s0
122:              slt          s2, s7, a0
123:              and          sp, s9, a7
                  and          a0, ra, s7
                  bltu         s0, gp, 142f
                  srai         s8, tp, 5
                  lui          s10, 829292
                  bgeu         t3, s8, 145f
                  sra          s7, a3, t5
                  sra          s11, t3, s3
                  add          s11, ra, t4
                  sltiu        a3, s11, 97
                  or           s3, s11, t6
                  andi         s11, t2, -1607
                  bltu         a1, s7, 140f
                  andi         t1, s9, 1890
                  sll          a7, a7, a5
                  or           a1, s4, s11
                  bltu         s10, s1, 142f
140:              slli         ra, s7, 0
                  beq          t2, t4, 155f
142:              bne          s0, gp, 161f
                  andi         t6, zero, -711
                  nop
145:              auipc        s10, 726472
                  slt          t0, t1, t5
                  nop
                  or           a2, s0, s4
                  nop
                  slt          s3, a4, a5
                  and          t4, a0, a4
                  bgeu         t0, s10, 164f
                  and          s8, a7, s3
                  nop
155:              bne          t4, s7, 173f
                  xori         a7, a5, -1302
                  xori         t6, tp, -1553
                  sub          s2, s9, a5
                  srai         a7, t1, 26
                  sltu         a0, s1, t1
161:              slt          s4, a3, ra
                  xori         a0, t0, -1698
                  blt          s6, s5, 175f
164:              auipc        tp, 151710
                  xori         a4, a3, 562
                  addi         t1, a3, 1765
                  addi         gp, t4, 753
                  nop
                  sra          s7, s2, a4
                  lui          a3, 951265
                  bltu         t5, s11, 181f
                  srl          s11, a4, a7
173:              sltu         s8, s1, a0
                  lui          a3, 742264
175:              auipc        s11, 135894
                  beq          a0, gp, 183f
                  srai         a6, s5, 11
                  xor          a3, t3, s0
                  sltiu        zero, a3, 1494
                  sltu         s3, s11, s3
181:              sltiu        s8, zero, -1685
                  sltu         sp, s7, a5
183:              sltiu        t2, s4, 1154
                  slt          zero, s7, s4
                  slli         a0, sp, 11
                  lw           sp, 4(s5)
                  or           t0, s10, s3
                  or           t6, s6, a5
                  srli         a4, a3, 13
                  and          s0, tp, a2
                  addi         s5, s5, 20
                  sll          a6, a3, s9
                  add          s2, s3, s7
                  srai         ra, s2, 4
331:              addi x15, x2, 1
331:              jalr x15, x15, 0
sub_2:            sub          t2, t5, t6
                  sll          s3, a6, t4
                  addi         s5, s5, -44
                  auipc        t0, 89874
                  srli         t1, ra, 3
                  andi         gp, s8, 2003
                  ori          a3, tp, 1545
                  slt          s8, s11, a3
                  nop
                  slli         s9, t5, 11
                  sw           sp, 4(s5)
                  srli         a0, t6, 2
                  la           s8, region_1+922 #start load_store_instr_stream_1
                  sw           t1, 14(s8)
                  la           s11, region_1+860 #start load_store_instr_stream_2
                  la           a0, region_1+1472 #start load_store_instr_stream_3
                  la           s0, region_1+305 #start load_store_instr_stream_0
                  sb           a1, 7(s8)
                  lb           s9, -1(s8)
                  sb           s0, -1(s11)
                  sb           t1, 51(a0)
                  lbu          s7, 8(s8)
                  lhu          zero, -17(s0)
                  lhu          t1, 43(s0)
                  lb           tp, 7(s11)
                  lb           zero, -7(s11)
                  lbu          s9, -5(s8)
                  lbu          s2, 11(s11)
                  sb           a5, 9(s0)
                  sb           s3, -7(s11)
                  lb           t4, -29(a0)
                  lbu          s10, -32(s0)
                  sh           s9, 12(s8)
                  sb           t4, -18(s0)
                  sh           s0, 2(s8)
                  sb           a6, 9(s8)
                  lbu          s4, -46(a0)
                  lbu          a5, 13(s0)
                  lh           s9, 16(s8)
                  lbu          a5, -36(s0)
                  sh           s10, -14(a0)
                  lbu          gp, 41(a0)
                  lb           s9, 15(s11)
                  sb           t2, 13(s11)
                  sb           s0, 6(s11) #end load_store_instr_stream_2
                  sb           zero, -53(a0)
                  lbu          t4, -10(s0)
                  lh           t0, 12(a0) #end load_store_instr_stream_3
                  sb           s8, -32(s0)
                  sh           gp, -16(s8) #end load_store_instr_stream_1
                  lb           s3, -10(s0) #end load_store_instr_stream_0
                  la           ra, region_1+1384 #start riscv_load_store_rand_instr_stream_2
                  sb           s2, 121(ra)
                  lh           tp, 16(ra)
                  srai         s4, a3, 2
                  nop
                  lb           a6, -5(ra)
                  auipc        a3, 980819
                  lbu          a3, -86(ra)
                  lb           tp, -34(ra)
                  lbu          s4, 1(ra)
                  sb           s2, -165(ra)
                  srai         a4, s5, 24
                  nop
                  slli         s11, a0, 29
                  add          s2, s3, a7
                  sltu         s11, tp, s10
                  sll          s8, a7, t6
                  lb           a7, 3(ra)
                  lbu          s11, -122(ra)
                  slt          s3, ra, ra
                  sb           t5, 154(ra)
                  slt          a3, a5, a2
                  sltiu        t0, s8, -1401
                  lh           s7, -196(ra)
                  sb           t4, -177(ra)
                  or           s11, a2, t2
                  lb           t1, 39(ra)
                  lui          t4, 670330
                  lb           t2, -85(ra)
                  xor          a1, t4, t2
                  or           s8, a7, s7
                  lui          t6, 764641
                  lh           s11, -68(ra)
                  sra          zero, s4, t0
                  sh           s5, -42(ra)
                  xori         s9, a2, -1392
                  lbu          tp, -57(ra)
                  xori         a0, a3, 2004
                  lb           s2, 201(ra) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_1+1684 #start load_store_instr_stream_2
                  lbu          s6, -1580(s10)
                  la           a5, region_1+1430 #start load_store_instr_stream_3
                  la           s2, region_1+792 #start load_store_instr_stream_1
                  sb           t0, -377(s10)
                  sb           s4, -243(a5)
                  la           a1, region_1+115 #start load_store_instr_stream_0
                  lbu          a7, -96(a1)
                  lh           s3, -24(s2)
                  lb           s11, 283(a5)
                  lb           t2, -1066(s10)
                  sb           a5, 1103(a1)
                  lb           s4, -256(s2)
                  sb           a1, 652(a1)
                  lhu          a2, -220(s2)
                  lbu          t4, -805(s10)
                  sb           a3, -1257(a5)
                  lbu          t4, -106(a1)
                  sb           s0, 1072(a1)
                  sb           t6, -141(s10)
                  lb           t1, 175(s10)
                  lbu          t0, -147(s2)
                  lbu          s0, -1077(s10)
                  sh           tp, 1655(a1)
                  lbu          t0, -1213(a5)
                  lbu          s11, 220(a1)
                  lb           a7, -535(a5)
                  sb           s5, 7(s10)
                  lbu          t1, 1130(a1)
                  sb           a2, -199(a5)
                  lb           s6, -141(s2)
                  lbu          sp, -139(s2)
                  lbu          s8, 296(a1)
                  sb           ra, -135(s2) #end load_store_instr_stream_1
                  lb           s7, -566(s10)
                  sb           a3, -1191(a5) #end load_store_instr_stream_3
                  lbu          a7, -1504(s10) #end load_store_instr_stream_2
                  lbu          ra, 1058(a1) #end load_store_instr_stream_0
                  la           s6, region_1+1934 #start load_store_instr_stream_1
                  la           sp, region_1+701 #start load_store_instr_stream_0
                  lhu          gp, -36(s6)
                  lbu          a5, -39(s6)
                  lh           s0, 45(sp)
                  lb           s0, 27(s6)
                  lbu          s8, 15(s6)
                  lw           s7, -30(s6)
                  lb           s4, 34(sp)
                  sb           gp, -39(s6)
                  lbu          s1, -36(sp)
                  lb           zero, -41(s6)
                  lhu          gp, -19(sp)
                  sb           s1, -35(sp)
                  lb           tp, 64(sp)
                  sb           s3, -47(s6) #end load_store_instr_stream_1
                  lh           a3, 7(sp)
                  lb           s4, 22(sp) #end load_store_instr_stream_0
                  la           s3, region_0+1125 #start riscv_load_store_hazard_instr_stream_2
                  add          s4, t3, a2
                  lbu          tp, -6(s3)
                  lbu          t6, -6(s3)
                  sltiu        zero, zero, -224
                  lbu          s10, -6(s3)
                  lbu          t6, -12(s3)
                  slti         t6, s11, -1415
                  slti         a5, s2, 1829
                  lbu          t0, -12(s3)
                  lui          a1, 651834
                  lui          a2, 197442
                  sb           s7, -12(s3)
                  lui          s11, 681186
                  sb           s10, -12(s3)
                  sb           t0, -12(s3)
                  lb           s10, 0(s3)
                  lbu          s9, 6(s3)
                  sb           t0, 6(s3)
                  lhu          s8, -1(s3)
                  lb           s6, 14(s3) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+715 #start riscv_load_store_hazard_instr_stream_0
                  lh           a1, 221(sp)
                  lbu          s3, 221(sp)
                  lw           s9, 221(sp)
                  lbu          s0, 88(sp)
                  lbu          tp, 88(sp)
                  lb           t0, 88(sp)
                  lbu          a7, 88(sp)
                  lbu          gp, 88(sp)
                  sltu         s1, a2, a6
                  srli         s3, sp, 23
                  xor          s2, a7, sp
                  lb           t1, 88(sp)
                  sub          a6, a5, a3
                  ori          t1, s9, -1321
                  lbu          s6, 88(sp)
                  lbu          t0, 88(sp)
                  lb           a1, 88(sp)
                  sb           a4, 88(sp)
                  sb           t3, 88(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t4, region_1+138 #start riscv_load_store_rand_instr_stream_3
                  sb           a5, 254(t4)
                  sb           a6, -24(t4)
                  slli         t0, s3, 16
                  sb           t3, -107(t4)
                  sh           a3, 210(t4)
                  sb           s10, 214(t4)
                  lb           t1, 133(t4)
                  lb           s7, 33(t4)
                  lb           s9, 139(t4)
                  srai         a3, s3, 28
                  lbu          s1, -64(t4)
                  lui          s0, 710903
                  lb           s7, -97(t4)
                  srai         a3, t1, 27
                  sw           ra, 110(t4)
                  lbu          a0, 23(t4)
                  srli         a1, s6, 15
                  ori          s9, a7, 28
                  lbu          t1, 234(t4)
                  lbu          s2, -111(t4)
                  sltiu        s10, t6, -1554
                  lb           s2, 11(t4)
                  xori         s1, s3, -280
                  sw           t3, -66(t4)
                  srl          s2, s11, s10
                  sra          s10, a1, a4
                  sb           t3, 171(t4)
                  sb           a5, 254(t4)
                  xor          a7, gp, sp
                  xor          s0, a6, sp
                  auipc        t2, 1025904
                  and          zero, sp, tp
                  lb           a1, -64(t4)
                  xori         tp, ra, -1983
                  lhu          t2, 190(t4)
                  lb           zero, 255(t4)
                  sh           gp, -110(t4)
                  add          t0, s4, a2
                  lb           s1, 59(t4)
                  slti         a0, t2, -1842
                  sh           tp, 248(t4) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+9 #start riscv_load_store_hazard_instr_stream_1
                  lb           s2, 10(sp)
                  lb           s11, 10(sp)
                  lbu          gp, 20(sp)
                  sb           a1, 37(sp)
                  lb           s8, 37(sp)
                  sb           t2, 37(sp)
                  lbu          a0, 161(sp)
                  lh           a1, 65(sp)
                  lw           t1, 55(sp)
                  sb           s1, 225(sp)
                  lh           s2, 173(sp)
                  lh           a6, 49(sp)
                  lui          a0, 831542
                  lbu          a3, 194(sp)
                  sh           s4, 197(sp)
                  lbu          tp, 197(sp)
                  lhu          a6, 197(sp)
                  sh           s11, 197(sp)
                  lb           s4, 197(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           a6, region_0+303 #start riscv_load_store_rand_instr_stream_1
                  and          a3, t0, s1
                  lui          s2, 598651
                  and          a4, a7, s0
                  add          a1, s8, a6
                  sra          t0, t2, gp
                  lbu          a3, 26(a6)
                  lbu          s7, -33(a6)
                  xor          s10, tp, zero
                  or           t0, s7, s7
                  auipc        t4, 81510
                  lb           s6, -30(a6)
                  lb           s7, 63(a6)
                  sb           a7, -49(a6)
                  ori          t1, t4, -1839
                  lbu          s2, 2(a6)
                  lbu          t6, -12(a6)
                  lui          s9, 391459
                  lb           sp, 17(a6)
                  sh           s10, 5(a6)
                  sb           s11, 51(a6)
                  srli         a3, a3, 29
                  add          s3, a1, a7
                  andi         s1, gp, 804
                  srli         s4, s7, 21
                  sh           ra, -7(a6)
                  sb           t5, -48(a6)
                  add          t1, a4, t2
                  sub          sp, s7, s11
                  slt          a7, t6, t0
                  lb           s11, 50(a6)
                  lw           t4, -47(a6)
                  lbu          a3, -14(a6)
                  sub          a1, s10, zero
                  auipc        s8, 968001
                  sll          a2, s11, sp
                  sll          s3, a3, t4
                  srl          a3, t1, s4
                  srl          a0, a3, a5
                  slti         s7, a3, 1007
                  lbu          s3, 36(a6)
                  lui          a2, 451183
                  srli         s9, gp, 3
                  sh           ra, -59(a6)
                  auipc        a5, 479181
                  sb           gp, -44(a6)
                  add          t2, zero, a5
                  lb           s8, 3(a6) #end riscv_load_store_rand_instr_stream_1
                  la           a4, region_0+479 #start riscv_load_store_hazard_instr_stream_3
                  sh           gp, 1499(a4)
                  sb           zero, 424(a4)
                  lbu          s8, 424(a4)
                  andi         a1, a3, -1835
                  sltiu        t2, ra, 1857
                  sb           s8, 1372(a4)
                  sb           a4, 1372(a4)
                  sh           a1, 477(a4)
                  lbu          t4, 477(a4)
                  lb           s10, 274(a4)
                  srai         s2, tp, 12
                  lh           sp, 949(a4)
                  addi         t0, a0, 1260
                  sh           t6, 949(a4)
                  srli         ra, s6, 23
                  sb           s5, 208(a4)
                  lbu          t1, 208(a4) #end riscv_load_store_hazard_instr_stream_3
                  la           a0, region_0+458 #start load_store_instr_stream_2
                  la           gp, region_0+1069 #start load_store_instr_stream_1
                  sh           s1, 49(gp)
                  la           a3, region_0+1956 #start load_store_instr_stream_0
                  lb           s7, -178(a0)
                  sw           s0, -584(a3)
                  lh           a6, 1326(a0)
                  lbu          a7, -1600(a3)
                  sh           gp, -9(gp)
                  sh           t3, -1324(a3)
                  lbu          s9, 24(gp)
                  sh           a0, 19(gp)
                  sw           tp, -366(a0)
                  sb           a7, -229(a3)
                  lw           s6, 1238(a0)
                  sw           t5, -29(gp)
                  lbu          a4, -2(gp)
                  sh           t3, 202(a0)
                  lbu          a5, -219(a3)
                  sb           ra, 1129(a0)
                  lbu          t2, 49(gp)
                  lb           tp, 577(a0)
                  sb           s11, -63(gp)
                  lw           t4, 47(gp) #end load_store_instr_stream_1
                  sb           s11, -239(a3)
                  sb           s6, 93(a0) #end load_store_instr_stream_2
                  lb           s3, -205(a3) #end load_store_instr_stream_0
                  slti         s6, tp, -1340
                  ori          s10, s4, -895
                  bne          s4, s5, 9f
                  andi         a1, s1, 443
                  srai         s9, a5, 24
                  srli         s10, a0, 24
                  xori         t1, a7, -1423
                  xori         t6, ra, 840
                  xori         t2, sp, 1765
9:                ori          s4, zero, -58
                  bne          a5, a4, 29f
                  lui          s7, 541872
                  slti         a3, s5, 939
                  sra          a5, s1, s8
                  srl          s11, s2, a3
                  addi         s1, t3, 788
                  blt          s1, t0, 35f
                  bne          zero, t3, 29f
                  addi         t1, a3, 1842
                  bne          s9, s1, 28f
                  srai         a0, a1, 21
                  slt          s10, a6, a6
                  lui          gp, 349411
                  nop
                  andi         t0, s2, -1664
                  blt          t3, sp, 28f
                  and          t0, a5, ra
                  xori         a3, s11, -1667
28:               bltu         s0, a1, 47f
29:               bne          s10, s3, 32f
                  add          a4, s1, s0
                  sll          t4, t6, tp
32:               sltiu        t0, a1, -1741
                  slti         a0, s8, -1568
                  lui          t0, 857121
35:               sra          sp, s11, t5
                  srl          t1, s1, s10
                  xori         s0, a1, -1471
                  bne          s7, gp, 58f
                  srli         s3, t3, 20
                  beq          t4, s11, 45f
                  sra          s1, zero, ra
                  slti         a0, a1, -850
                  sll          a5, tp, t5
                  bne          a0, a4, 57f
45:               srl          s10, s11, tp
                  srli         a5, a4, 21
47:               srli         zero, t4, 5
                  srli         s7, s8, 3
                  bgeu         s2, a5, 54f
                  slti         t6, s2, -759
                  or           s2, a1, s9
                  andi         s9, a5, -323
                  sra          t2, a6, a3
54:               sltu         s1, s8, t0
                  auipc        s7, 128460
                  bne          s7, ra, 59f
57:               sltiu        s2, a0, -1269
58:               nop
59:               bltu         s3, a0, 74f
                  srli         s11, s2, 19
                  andi         a7, a6, 2024
                  xori         s3, a7, 1974
                  add          a6, t0, t0
                  sra          s9, s9, a2
                  xori         s11, a2, 1802
                  ori          s11, a3, -1172
                  and          a6, gp, s7
                  sll          a7, t6, t4
                  slti         s10, s0, 241
                  bltu         t5, s8, 85f
                  beq          s5, s4, 78f
                  ori          gp, s7, -1018
                  add          a5, s7, s5
74:               srl          s6, a0, s1
                  bge          t1, s10, 91f
                  addi         a2, a3, 1398
                  sltu         a3, t5, s5
78:               sltu         s3, t2, s5
                  andi         s2, tp, -1103
                  slli         t0, s1, 16
                  nop
                  nop
                  lui          a5, 680258
                  or           s10, t4, t2
85:               xori         t4, s11, -1151
                  slt          s4, s1, gp
                  bge          t4, a5, 107f
                  and          s10, sp, t2
                  bge          t1, t2, 103f
                  ori          ra, t1, 1772
91:               add          s8, s10, ra
                  add          s1, a3, sp
                  slti         a5, s4, 7
                  srai         s7, s6, 10
                  bge          a6, s0, 96f
96:               srli         zero, s7, 29
                  sltiu        a6, a6, 63
                  add          s2, s4, t2
                  auipc        s9, 115196
                  bgeu         s6, s5, 108f
                  srli         a1, a6, 1
                  slti         a0, t6, -321
103:              sltiu        a0, s9, 291
                  bne          zero, t3, 121f
                  auipc        t1, 249407
                  sltiu        t2, s6, -52
107:              bltu         tp, s5, 114f
108:              and          a0, t3, a2
                  xori         a4, t3, -1683
                  sra          t4, s6, t5
                  sll          ra, sp, t2
                  bne          t2, s3, 115f
                  bgeu         t2, a0, 125f
114:              srai         sp, zero, 6
115:              bltu         t3, tp, 118f
                  bgeu         s4, a0, 120f
                  andi         a5, t4, -1085
118:              sra          s9, s11, t0
                  and          t1, s11, sp
120:              slli         gp, s1, 29
121:              srai         a0, s6, 10
                  andi         s6, zero, 155
                  xor          s1, s8, a5
                  lui          a5, 965000
125:              blt          t4, s9, 127f
                  bltu         zero, a3, 140f
127:              bltu         s6, t2, 139f
                  srai         ra, s2, 7
                  add          s9, a2, s3
                  andi         a2, t1, 24
                  auipc        s0, 493372
                  or           a0, a4, a1
                  bge          tp, s2, 152f
                  bltu         s6, s6, 137f
                  slli         a7, a2, 23
                  and          t2, tp, t6
137:              slti         s7, a3, 1579
                  xori         s6, s6, 1681
139:              sub          tp, s9, s2
140:              bgeu         a3, s10, 145f
                  auipc        t2, 547327
                  auipc        a0, 942895
                  ori          s3, a4, -453
                  sub          s7, zero, a4
145:              slli         t1, s5, 9
                  srl          a5, t2, zero
                  add          s11, ra, s1
                  blt          t0, gp, 151f
                  and          t2, a3, s2
                  auipc        t1, 896869
151:              sltiu        a2, a3, 975
152:              bltu         a1, zero, 169f
                  slt          t4, s7, s1
                  srli         s4, a6, 19
                  slli         s2, s0, 27
                  bge          a0, s5, 175f
                  ori          a2, a1, -1238
                  sltiu        s2, s8, -834
                  slli         tp, s6, 7
                  bge          gp, ra, 163f
                  nop
                  srl          t6, s7, s7
163:              or           a0, s10, t0
                  sll          a5, t2, t0
                  sub          gp, tp, t4
                  slli         s11, sp, 26
                  add          t6, s1, zero
                  bge          s10, s2, 175f
169:              sll          t6, a1, a0
                  and          tp, s8, a3
                  sltu         ra, a5, a0
                  lui          tp, 554632
                  bge          t1, s10, 189f
                  sltu         s8, s0, a2
175:              blt          zero, t0, 182f
                  bgeu         t6, t2, 188f
                  nop
                  beq          s9, s7, 180f
                  srli         a1, t6, 17
180:              sltiu        ra, s5, -1051
                  auipc        sp, 877231
182:              bgeu         s10, t3, 196f
                  sra          zero, t0, s9
                  blt          a1, t4, 193f
                  bne          s6, s1, 190f
                  sra          zero, s4, s6
                  lui          s9, 674464
188:              auipc        s7, 97234
189:              beq          tp, a0, 193f
190:              sub          s3, s0, a2
                  andi         tp, sp, 1186
                  add          a7, s3, s4
193:              blt          gp, s2, 200f
                  andi         s4, t5, -948
                  srli         a1, s2, 6
196:              srl          s8, zero, a5
                  lui          s3, 140539
                  sll          ra, s6, s11
                  addi         t4, tp, 116
200:              sll          sp, a5, s4
                  slli         ra, sp, 20
                  srli         t1, t3, 12
                  srai         s3, s9, 4
                  auipc        a3, 674282
                  sra          a6, s4, s11
                  bne          t0, s11, 221f
                  add          s2, t4, s8
                  sltu         t0, a3, t0
                  bltu         t6, t2, 221f
                  or           ra, a7, s2
                  srai         a5, tp, 2
                  lui          a7, 677976
                  xor          sp, t6, a6
                  addi         a1, s7, -258
                  xori         ra, a3, -1079
                  add          ra, s9, a7
                  nop
                  slti         zero, a7, 1911
                  and          a1, ra, s1
                  sltu         t6, a3, tp
221:              slt          t4, s1, a1
                  sltiu        t2, tp, 27
                  xor          t2, t0, a2
                  xor          zero, a0, a5
                  and          s6, t6, a7
                  xor          s1, t1, a3
                  bltu         t1, zero, 242f
                  srli         s1, a6, 26
                  slt          a6, a7, a1
                  bltu         a3, t0, 243f
                  addi         s8, tp, 1486
                  nop
                  blt          s10, s8, 245f
                  srl          t0, ra, s10
                  sll          s9, s7, t3
                  blt          tp, s1, 244f
                  sltiu        t2, t5, 1777
                  nop
                  sltiu        t4, a6, -1141
                  slt          zero, a7, s0
                  ori          ra, t0, -844
242:              slli         s11, a3, 2
243:              bltu         t5, a7, 263f
244:              xor          a3, gp, a0
245:              sra          a6, t1, a3
                  slt          ra, zero, s4
                  sll          sp, zero, a0
                  xor          s0, s10, s10
                  or           t4, a4, t1
                  slti         a4, s7, -1770
                  srl          t2, s6, a7
                  sll          t2, a1, a3
                  or           s10, t1, a1
                  slli         s4, t2, 22
                  srli         zero, t5, 15
                  and          t4, s7, s1
                  xori         s6, s7, -1303
                  and          gp, s11, t0
                  xor          sp, s4, a3
                  or           a2, s4, tp
                  xori         s2, t0, -1139
                  srai         s9, t1, 28
263:              auipc        t4, 101741
                  xori         s1, ra, -1902
                  ori          a7, s2, -1960
                  sltiu        zero, t3, 2014
                  lui          a4, 377214
                  sub          tp, t3, s6
                  slti         a4, s11, 593
                  lui          s1, 35983
                  slt          zero, a5, t5
                  srai         zero, s5, 6
                  auipc        gp, 120951
                  and          a4, a3, t1
                  srai         s0, a3, 23
                  beq          t1, zero, 296f
                  sub          sp, s5, a3
                  srli         a3, s2, 25
                  bne          a1, tp, 280f
280:              sub          tp, t4, t0
                  slli         a2, s6, 25
                  slt          s7, a6, a0
                  sltiu        s6, a2, 821
                  bge          a7, s9, 298f
                  or           a5, a0, s4
                  sltu         t4, s6, s1
                  add          sp, a6, t0
                  andi         ra, t4, 1097
                  srl          s3, s7, s3
                  bne          a2, t0, 293f
                  bltu         s3, s9, 294f
                  srl          tp, tp, a5
293:              srl          s9, s11, t0
294:              addi         s9, s10, 159
                  add          s7, t4, s3
296:              bgeu         s6, s1, 315f
                  sltu         s1, tp, a0
298:              lui          sp, 816687
                  bne          a7, a2, 319f
                  bne          s4, s9, 303f
                  blt          a4, a3, 313f
                  slt          gp, s5, t3
303:              srai         s1, t0, 8
                  sub          a3, s6, t2
                  nop
                  sub          s4, t6, t4
                  add          s8, t6, a6
                  la           sp, region_0+1324 #start riscv_load_store_rand_instr_stream_0
                  addi         a5, t4, 32
                  sb           s4, -117(sp)
                  lh           t4, -108(sp)
                  sh           s2, -176(sp)
                  and          s3, s6, s10
                  auipc        tp, 659561
                  lb           a7, -252(sp)
                  xor          s9, a4, a7
                  lb           a2, 209(sp)
                  sb           s7, -23(sp)
                  lbu          s1, -73(sp)
                  lh           s6, -174(sp)
                  lb           gp, 171(sp)
                  lh           a3, 74(sp)
                  lh           s11, 178(sp)
                  lhu          a3, -196(sp)
                  sb           s4, -201(sp)
                  ori          s7, s4, -485
                  lbu          t1, -24(sp)
                  lui          ra, 699773
                  lbu          t2, 254(sp)
                  sw           a0, 12(sp)
                  sltiu        a1, t4, 1468
                  lh           t0, -104(sp)
                  sb           t0, -107(sp)
                  sra          a5, sp, a3
                  lbu          a5, 49(sp)
                  sra          a4, a0, s5
                  lhu          s10, 152(sp)
                  srl          a1, s0, a7
                  lbu          s3, 171(sp)
                  lui          gp, 700975
                  sll          a5, s0, a1
                  lbu          s9, -125(sp)
                  andi         s0, a5, 1754
                  sb           s11, 114(sp)
                  lbu          s0, 199(sp)
                  sh           s4, 114(sp)
                  sltiu        t2, t3, 169
                  or           s7, t5, a7
                  sltu         s0, t6, a4
                  lui          ra, 946359
                  lbu          t4, -27(sp)
                  lb           a4, 65(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         s3, s0, 311f
                  addi         a3, gp, -977
                  auipc        s3, 1028184
311:              addi         s2, s10, 1778
                  nop
313:              auipc        s7, 770358
                  or           s3, s9, t0
315:              lui          s9, 58104
                  sub          a3, s2, a2
                  slti         tp, gp, 836
                  lui          t2, 258426
319:              sll          s9, s4, a5
                  and          a3, s10, a5
                  srai         sp, a2, 17
                  sltu         a1, t3, sp
                  nop
                  bltu         t2, t3, 336f
                  or           ra, s10, t0
                  addi         a4, s9, 1559
                  and          s2, s0, ra
                  bge          s5, s7, 342f
                  auipc        s4, 723555
                  or           ra, sp, s2
                  slli         s10, sp, 6
                  xor          s2, s2, a5
                  or           a6, gp, tp
                  addi         s7, t0, -1602
                  xori         a1, sp, -924
336:              sub          t6, s7, s4
                  add          ra, a1, a7
                  srli         zero, t4, 26
                  slti         tp, tp, -1548
                  sltiu        a4, s3, 1535
                  bgeu         s4, s7, 356f
342:              nop
                  ori          s1, s2, -1568
                  or           s9, s4, t0
                  add          a0, t2, s11
                  andi         s3, s6, -1438
                  lui          ra, 992574
                  lui          s8, 161453
                  xori         a3, a4, 1642
                  bltu         t0, s8, 369f
                  bne          t2, a7, 368f
                  ori          t1, a0, -1659
                  xor          s11, a6, a5
                  or           s1, s6, a1
                  add          s9, tp, t4
356:              srl          s1, ra, sp
                  blt          sp, s7, 376f
                  beq          t3, s11, 373f
                  addi         a7, s8, 865
                  ori          s9, a1, -1062
                  ori          s8, s11, -1204
                  nop
                  and          a6, a4, t3
                  addi         t4, s5, -150
                  xori         s6, a1, 1995
                  srai         t0, s7, 3
                  nop
368:              sll          s3, ra, a5
369:              bne          zero, a4, 381f
                  beq          t5, s3, 386f
                  bltu         a6, sp, 374f
                  bne          s6, t2, 379f
373:              bge          gp, a1, 386f
374:              nop
                  srli         ra, a5, 8
376:              or           a7, t1, a3
                  and          t4, a6, t2
                  sub          s9, ra, a2
379:              sub          s11, s3, s0
                  beq          ra, s0, 394f
381:              srli         t6, a5, 0
                  ori          s6, a7, 1414
                  bgeu         tp, a6, 390f
                  bne          sp, gp, 392f
                  or           a7, ra, s10
386:              andi         a7, a7, 429
                  auipc        gp, 704061
                  bltu         a1, s1, 392f
                  srl          t1, s1, a2
390:              sra          s2, s10, s0
                  sltu         a6, a1, zero
392:              bltu         s11, t4, 397f
                  and          ra, s11, s1
394:              sra          s2, t1, t1
                  bne          s0, s10, 404f
                  slt          ra, s2, zero
397:              xori         a0, a4, -1086
                  sltiu        a0, t6, 716
                  xori         a3, t4, -762
                  slt          a0, s4, ra
                  sub          s9, a7, a3
                  sll          s2, sp, a0
                  auipc        a2, 498038
404:              ori          s6, t0, -1393
                  sltiu        a7, t1, 2016
                  beq          zero, s9, 409f
                  sub          ra, s3, s8
                  nop
409:              bge          t6, s4, 429f
                  sltu         s4, a4, t3
                  ori          s10, t1, 562
                  auipc        t2, 123341
                  add          a5, t1, sp
                  slti         a7, s9, -1465
                  and          gp, s2, gp
                  sltiu        a0, s4, 1367
                  bne          t2, zero, 424f
                  sll          a0, t5, s11
                  srai         ra, t4, 31
                  xori         t2, s5, -428
                  add          tp, t0, t3
                  sra          a1, zero, s4
                  bgeu         s0, a1, 426f
424:              lui          s3, 944075
                  bltu         a1, t3, 443f
426:              slti         s4, s7, -881
                  beq          t0, s8, 432f
                  and          a3, s6, s0
429:              or           a2, a0, s8
                  xori         ra, s8, 1260
                  xori         a2, a0, 237
432:              srai         tp, a3, 14
                  xori         gp, s9, 1592
                  sra          zero, s8, a5
                  srai         a4, s2, 30
                  add          t2, a0, t6
                  bne          s10, a1, 438f
438:              auipc        zero, 592789
                  ori          tp, s2, 1854
                  sra          s8, s1, s7
                  blt          a4, a6, 443f
                  ori          zero, a5, 1086
443:              srai         a2, t4, 28
                  slti         a3, s7, -632
                  slt          t0, s11, a7
                  lw           sp, 4(s5)
                  addi         s5, s5, 44
                  sltiu        ra, s2, 1685
                  nop
837:              addi x8, x2, 0
837:              jalr x8, x8, 0
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
mmode_intr_vector_1:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x30, test_done
                  jalr x0, x30, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x28, x21, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x8, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x8, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x8, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x8, x14, ecall_handler
                  li x14, 0x1
                  beq x8, x14, instr_fault_handler
                  li x14, 0x5
                  beq x8, x14, load_fault_handler
                  li x14, 0x7
                  beq x8, x14, store_fault_handler
                  li x14, 0xc
                  beq x8, x14, pt_fault_handler
                  li x14, 0xd
                  beq x8, x14, pt_fault_handler
                  li x14, 0xf
                  beq x8, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x30, write_tohost
                  jalr x0, x30, 0

instr_fault_handler:
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x21, x28, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
