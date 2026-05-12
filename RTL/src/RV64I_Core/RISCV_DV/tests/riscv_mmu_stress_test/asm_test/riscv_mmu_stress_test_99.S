.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x14, kernel_stack_end

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
                  li x0, 0xf4ecad82
                  li x1, 0x80000000
                  li x2, 0xc
                  li x3, 0x0
                  li x5, 0xf631f984
                  li x6, 0x3
                  li x7, 0xf8dc042f
                  li x8, 0xf33f564b
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x4
                  li x12, 0x8
                  li x13, 0x4
                  li x15, 0x39abf18f
                  li x16, 0x11ad412e
                  li x17, 0x0
                  li x18, 0xfd6edd80
                  li x19, 0x6447e101
                  li x20, 0x0
                  li x21, 0xf7c700f6
                  li x22, 0xf32ae4e3
                  li x23, 0x8e0b6159
                  li x24, 0x80000000
                  li x25, 0xf3bb5683
                  li x26, 0x80000000
                  li x27, 0x3
                  li x28, 0xd
                  li x29, 0x9153c6d7
                  li x30, 0xf57206b7
                  li x31, 0x0
                  la x4, user_stack_end
main:             la           t0, region_0+1248 #start load_store_instr_stream_3
                  lb           zero, 1(t0)
                  lb           t5, -3(t0)
                  la           s6, region_0+1250 #start load_store_instr_stream_0
                  la           a7, region_0+1661 #start load_store_instr_stream_4
                  la           ra, region_0+90 #start load_store_instr_stream_1
                  lhu          t4, -31(a7)
                  la           gp, region_0+616 #start load_store_instr_stream_2
                  lh           s0, 8(t0)
                  lb           s10, 16(ra)
                  lhu          s3, -988(s6)
                  sb           s9, -34(a7)
                  sb           zero, -1142(s6)
                  sb           t4, -243(gp)
                  lb           s8, 1(t0)
                  lbu          s8, 676(s6)
                  lw           a0, -1130(s6)
                  lb           s5, -37(ra)
                  lbu          s0, 41(a7)
                  sb           t3, 3(gp)
                  lb           a3, 7(t0)
                  sh           ra, -20(ra)
                  sb           ra, -626(s6)
                  sh           t0, 26(gp)
                  lb           t5, 58(ra)
                  sb           a5, -3(t0)
                  lh           a5, 104(gp)
                  lb           s0, 20(a7)
                  lbu          s1, -15(t0)
                  sb           gp, 24(a7)
                  sb           t1, -21(gp)
                  sh           zero, 380(s6)
                  sb           a4, 32(a7)
                  sh           a0, 22(ra) #end load_store_instr_stream_1
                  lbu          s3, -778(s6)
                  lh           s7, -27(a7) #end load_store_instr_stream_4
                  lb           a2, -3(t0) #end load_store_instr_stream_3
                  lbu          sp, 45(gp) #end load_store_instr_stream_2
                  lbu          zero, 247(s6) #end load_store_instr_stream_0
                  la           ra, region_1+857 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s8, s4, 470
                  lhu          gp, 711(ra)
                  auipc        a7, 475607
                  add          a2, s11, a5
                  slli         a6, a2, 27
                  sub          t1, t4, zero
                  add          t4, t0, s9
                  lh           t2, 459(ra)
                  slli         s8, t2, 9
                  ori          sp, a6, 728
                  lbu          s11, -562(ra)
                  srl          s1, s7, a0
                  slli         zero, t1, 5
                  nop
                  lbu          s5, -292(ra)
                  sltu         a5, s2, s2
                  sub          s6, a6, t4
                  xori         s10, t4, 1698
                  lw           s3, 899(ra)
                  or           s11, s6, a7
                  and          s6, s10, t6
                  lb           s2, 14(ra)
                  add          gp, a2, a6
                  sra          s8, s3, tp
                  andi         s4, s1, -1296
                  srai         s3, s1, 20
                  lbu          zero, 126(ra)
                  slli         zero, sp, 25
                  slti         s10, a3, 1622
                  lui          t0, 581171
                  sra          t0, a7, a7
                  lui          s2, 141260
                  sh           a6, -741(ra)
                  lb           s1, 640(ra)
                  sb           s10, 732(ra)
                  slti         s2, s4, 799
                  slti         s10, s9, -2030
                  lbu          s4, -382(ra)
                  lbu          a3, -137(ra)
                  nop
                  lbu          t2, -338(ra)
                  srai         a0, s0, 26
                  sb           s7, -69(ra) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_0+1262 #start riscv_load_store_hazard_instr_stream_0
                  sb           a6, -123(s4)
                  sb           a5, -123(s4)
                  lbu          ra, -100(s4)
                  lbu          a6, -100(s4)
                  addi         t1, s6, -1332
                  lbu          s1, 161(s4)
                  lb           s11, 161(s4)
                  auipc        t3, 99868
                  lbu          sp, 161(s4)
                  lbu          s8, 161(s4)
                  sb           t5, 161(s4)
                  xor          s3, t4, s1
                  lbu          a3, 161(s4) #end riscv_load_store_hazard_instr_stream_0
                  slti         s3, t1, -1201
                  slti         s4, s4, 399
                  add          ra, s6, zero
                  and          zero, a1, sp
                  slt          a2, a1, a3
                  sub          s5, s10, a5
                  slli         s3, s2, 4
                  slli         t5, a6, 27
                  blt          a2, s1, 16f
                  add          a7, gp, a1
                  bgeu         s3, t5, 26f
                  slli         a3, s2, 26
                  slli         s2, a6, 9
                  andi         s7, a0, -566
                  addi         a2, zero, -466
                  slt          s10, sp, s5
16:               bge          t3, a1, 19f
                  bne          a2, s7, 18f
18:               bne          t6, sp, 29f
19:               addi         a1, sp, -891
                  sltiu        sp, a0, 932
                  slt          t0, a3, s2
                  andi         a2, s8, 1299
                  slti         a2, s2, -1379
                  sll          gp, t4, s6
                  beq          a6, s5, 35f
26:               xor          t4, s9, a6
                  blt          a0, ra, 37f
                  sra          a0, t5, zero
29:               sra          s7, t2, t3
                  and          a3, s7, sp
                  bgeu         t4, a6, 37f
                  lui          s8, 837020
                  auipc        gp, 249428
                  bge          s10, s6, 36f
35:               bne          a0, t2, 53f
36:               beq          s8, t3, 39f
37:               auipc        gp, 411620
                  sll          s0, a7, sp
                  lui          t2, 80272
                  la           s7, sub_2
                  ori          a3, zero, 610
                  addi         s7, s7, -440
                  xor          sp, a7, ra
                  xor          a3, a1, t3
                  lui          a5, 1013020
                  xori         t6, s7, -2004
                  xor          ra, gp, t0
                  blt          zero, t6, main_j1 #branch to jump instr
                  srl          t6, t2, sp
main_j1:          jalr         s8, s7, 440 #jump main -> sub_2
                  bltu         a3, a3, 52f
39:               srl          t6, a1, s11
                  ori          s5, a2, -247
                  slti         s4, s3, 11
                  sub          a5, s10, a0
                  bne          s4, s6, 55f
                  ori          t6, s7, -148
                  beq          a2, a4, 56f
                  nop
                  srli         t6, s10, 13
                  slti         s6, a6, -155
                  srli         t3, a5, 14
                  slli         s7, ra, 3
                  add          t1, a2, s7
52:               sltu         s7, a2, t2
53:               or           a0, s1, a3
                  xor          a5, t5, t5
55:               sra          s6, t4, t4
56:               lui          t3, 388694
                  or           gp, a1, a6
                  srl          t3, a3, s1
                  andi         gp, s0, -633
                  sra          s1, s7, a1
                  srai         ra, a4, 4
                  sub          s5, s11, a3
                  slt          s1, t5, s11
                  bgeu         a7, s9, 80f
                  srai         s2, ra, 25
                  nop
                  bgeu         a5, a7, 77f
                  ori          s4, s0, -854
                  nop
                  srai         gp, a3, 1
                  sll          a7, s4, s7
                  auipc        s7, 31616
                  nop
                  xor          t3, t3, t0
                  srai         a2, a5, 9
                  xor          s10, t3, t2
77:               sll          s6, t0, a2
                  srli         a5, t3, 22
                  slli         sp, s7, 30
80:               sra          t1, t4, a7
                  ori          a2, a3, 479
                  lui          a6, 925444
                  sltiu        s3, t4, 447
                  bge          s1, s5, 99f
                  sub          sp, s2, a4
                  xor          s7, s5, sp
                  slt          s2, s1, s5
                  addi         a0, ra, -181
                  nop
                  bge          s0, t3, 91f
91:               bgeu         sp, s10, 109f
                  bne          a4, a3, 108f
                  auipc        s7, 35576
                  ori          t1, s1, 1646
                  add          a0, s9, s9
                  nop
                  la           s0, sub_1
                  ori          t6, gp, -1997
                  sll          s5, a1, t5
                  and          a1, t3, a7
                  addi         s0, s0, 531
                  bne          a6, t6, main_j2 #branch to jump instr
                  slti         s10, gp, 1219
                  slli         t2, s0, 10
main_j2:          jalr         s8, s0, -530 #jump main -> sub_1
                  srai         s1, t3, 7
                  slli         t1, t4, 16
                  slt          s11, s8, t1
                  xori         a5, s6, -1046
                  sltu         s0, a0, a4
99:               blt          sp, s0, 112f
                  bge          s8, s4, 107f
                  auipc        sp, 829956
                  ori          s4, s7, -1277
                  srl          s0, s11, t5
                  blt          s1, s7, 112f
                  sub          s7, a1, sp
                  nop
107:              ori          a3, t6, 1143
108:              auipc        s5, 741420
109:              or           s10, s0, t2
                  and          t5, s5, s9
                  xor          s10, t5, s8
112:              sra          t3, a7, sp
                  sltiu        zero, a6, -454
                  addi         t0, s11, -148
                  sub          t1, s1, t6
                  bne          sp, t5, 118f
                  bne          ra, t3, 118f
118:              sub          s10, s1, tp
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         tp, tp, -32
                  sw           s8, 4(tp)
                  xor          sp, t3, a5
                  sub          a2, s9, s7
                  sll          t1, s8, a7
                  la           a3, region_1+1422 #start riscv_load_store_hazard_instr_stream_0
                  lb           s2, 47(a3)
                  lhu          s0, 38(a3)
                  lb           a6, 38(a3)
                  sb           tp, 38(a3)
                  nop
                  lb           t0, 38(a3)
                  lw           t6, 38(a3)
                  lb           a5, 38(a3)
                  lh           s10, 38(a3)
                  lh           t1, 38(a3)
                  lh           s1, 38(a3)
                  lhu          t5, 38(a3)
                  lbu          a1, 38(a3)
                  lhu          s10, 38(a3)
                  lh           s5, 38(a3)
                  lb           a1, 38(a3)
                  lhu          gp, 38(a3) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1024 #start riscv_load_store_hazard_instr_stream_6
                  sb           s0, -657(sp)
                  srli         ra, s5, 3
                  sb           tp, -657(sp)
                  lbu          a0, -657(sp)
                  lbu          t5, -657(sp)
                  lbu          t6, 699(sp)
                  srai         t2, ra, 13
                  sb           t5, 699(sp)
                  lh           s1, -174(sp)
                  lb           s5, -174(sp)
                  sb           t2, -174(sp)
                  sb           a0, -512(sp)
                  lhu          a5, -512(sp)
                  lbu          t6, -512(sp)
                  sw           s7, -512(sp)
                  ori          s11, s4, 1345
                  sub          a2, a5, a1
                  sh           t3, -962(sp)
                  srl          t1, s6, t6
                  sb           a6, 541(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_0+1789 #start riscv_load_store_rand_instr_stream_0
                  sra          s4, t1, t2
                  sltiu        ra, a2, 1014
                  sb           t0, -790(sp)
                  sw           s7, -657(sp)
                  sh           zero, -311(sp)
                  lh           s3, -1011(sp)
                  lbu          ra, -1348(sp)
                  xor          a6, s7, s8
                  lbu          t3, -1651(sp)
                  sra          s3, t4, s3
                  sw           gp, -97(sp)
                  srli         t0, s2, 28
                  auipc        s7, 183258
                  sltiu        s7, s10, 64
                  sll          s5, t1, s8
                  sb           t4, -235(sp)
                  lbu          a0, -698(sp)
                  lh           gp, -9(sp)
                  lhu          a1, -641(sp)
                  lb           a1, -880(sp)
                  sw           s0, -445(sp)
                  sb           s9, -794(sp)
                  lhu          s1, -1521(sp)
                  lb           t4, -1531(sp)
                  lh           a5, 111(sp)
                  lb           s7, -1590(sp)
                  sb           s5, -140(sp)
                  sh           ra, -787(sp)
                  sb           a0, -92(sp)
                  sltiu        gp, t2, 1181
                  sra          a2, s11, s7
                  slti         a0, s7, -1393
                  lbu          s4, -1192(sp)
                  lb           a3, -1112(sp)
                  sb           a1, -1490(sp)
                  xor          t2, zero, a3
                  sb           s10, -974(sp)
                  slli         a3, a3, 29
                  andi         s0, t4, -989
                  lh           t3, -1687(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_0+1299 #start load_store_instr_stream_3
                  la           gp, region_0+508 #start load_store_instr_stream_2
                  lb           t1, 152(s4)
                  la           s10, region_0+604 #start load_store_instr_stream_0
                  la           s8, region_0+1383 #start load_store_instr_stream_1
                  sb           s6, 7(s10)
                  lb           s0, -44(s4)
                  sh           sp, -2(s10)
                  sb           t6, 3(s8)
                  lb           s5, 54(s4)
                  lw           s2, 1(s8)
                  lbu          zero, -10(s10)
                  sb           t4, -12(s8)
                  lhu          t3, -86(gp)
                  lb           t0, 187(s4)
                  lbu          s7, -4(s8)
                  lbu          ra, -168(gp)
                  sh           s7, 9(s8) #end load_store_instr_stream_1
                  lhu          s6, -242(gp)
                  sw           s2, -16(s10)
                  lb           s1, 158(s4)
                  sb           a7, -107(gp)
                  sb           t0, 15(s10)
                  lbu          a6, 16(s4)
                  lb           a1, 47(gp)
                  lb           zero, -8(s10)
                  sb           t6, -234(s4)
                  lb           a5, -236(s4) #end load_store_instr_stream_3
                  sb           s6, -143(gp) #end load_store_instr_stream_2
                  sb           t4, -5(s10) #end load_store_instr_stream_0
                  la           t1, region_1+1617 #start riscv_load_store_rand_instr_stream_4
                  sra          t0, ra, a5
                  lb           t2, -10(t1)
                  ori          t4, s6, 1275
                  lh           s4, 13(t1)
                  lui          t2, 723694
                  or           s7, a6, tp
                  sb           tp, 8(t1)
                  xor          gp, s8, a1
                  srl          s6, s2, a0
                  slli         s6, a6, 14
                  and          a2, s8, s1
                  sb           s10, 13(t1)
                  srli         zero, a7, 29
                  sh           s9, 7(t1)
                  addi         s2, s8, 1659
                  xori         s3, a3, 1450
                  sub          t3, s10, s8
                  lhu          a2, -3(t1)
                  andi         a6, s2, -1134
                  sb           s4, 0(t1)
                  slti         s11, t4, 613
                  addi         a3, t4, 598
                  sll          s11, a6, a3
                  sb           s3, 6(t1)
                  sb           zero, 0(t1)
                  slt          sp, tp, t3
                  sw           t0, -5(t1)
                  sltu         s0, s8, ra
                  slti         s10, s9, -961
                  lbu          a2, 6(t1)
                  lbu          t2, -16(t1)
                  lbu          gp, -8(t1)
                  sb           a0, -8(t1)
                  lh           a2, -1(t1)
                  xor          gp, s4, t0
                  or           s5, s0, a4
                  slti         s11, s5, -682
                  slt          s5, t2, a0
                  ori          t0, s9, -168
                  slt          a0, s11, s7
                  add          s1, tp, s1
                  lui          zero, 4053
                  lb           s5, 8(t1)
                  lui          s8, 555621
                  slli         gp, s2, 28
                  slti         a5, s1, 1292
                  sh           s2, 11(t1) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_1+713 #start load_store_instr_stream_1
                  lbu          a0, -46(s6)
                  la           s0, region_1+1828 #start load_store_instr_stream_0
                  sb           t1, -120(s0)
                  lbu          s2, 114(s6)
                  sh           a7, -35(s6)
                  lbu          t0, -1759(s0)
                  sb           t5, 176(s6)
                  sh           a1, -245(s6)
                  lhu          t2, -950(s0)
                  sb           s3, -1558(s0)
                  sh           t4, -1166(s0)
                  lb           sp, 112(s6)
                  lbu          a2, 106(s6)
                  lbu          s4, -1793(s0)
                  lbu          s4, -60(s6)
                  sb           s0, -590(s0)
                  lb           a0, -1243(s0)
                  sb           t3, -92(s6) #end load_store_instr_stream_1
                  lb           zero, -1762(s0) #end load_store_instr_stream_0
                  la           s3, region_0+1685 #start riscv_load_store_hazard_instr_stream_7
                  or           s10, a0, s8
                  lb           a2, -368(s3)
                  slti         a3, sp, 1034
                  lw           a3, -881(s3)
                  lhu          ra, -881(s3)
                  lb           t1, -1163(s3)
                  lb           s6, -926(s3)
                  lb           s2, -1304(s3)
                  lb           t1, 112(s3)
                  sb           t3, -605(s3)
                  or           t1, a2, s10
                  slli         s8, zero, 13
                  lb           gp, 67(s3)
                  lh           t0, -479(s3)
                  lbu          sp, -145(s3) #end riscv_load_store_hazard_instr_stream_7
                  la           s7, region_1+650 #start riscv_load_store_hazard_instr_stream_3
                  lhu          gp, 16(s7)
                  lh           s1, 16(s7)
                  lb           t1, 16(s7)
                  ori          a6, a0, -1063
                  lhu          a1, 0(s7)
                  lb           ra, -1(s7)
                  lbu          s3, 8(s7)
                  lhu          a6, 8(s7)
                  lbu          t0, 8(s7)
                  lh           s10, -10(s7)
                  lb           s6, 0(s7)
                  lh           s10, 0(s7)
                  sb           t6, 4(s7)
                  lbu          s2, 11(s7)
                  sb           a7, 11(s7)
                  lb           s11, 11(s7)
                  sb           s3, 6(s7)
                  sb           s10, 6(s7)
                  lhu          a3, 6(s7)
                  sb           s11, 6(s7)
                  lb           zero, 6(s7) #end riscv_load_store_hazard_instr_stream_3
                  la           s3, region_1+1834 #start load_store_instr_stream_1
                  la           sp, region_1+647 #start load_store_instr_stream_2
                  la           s2, region_1+1474 #start load_store_instr_stream_0
                  lbu          gp, 16(sp)
                  lhu          a2, -13(sp)
                  la           a7, region_1+259 #start load_store_instr_stream_3
                  lbu          s7, -177(s3)
                  sb           s4, 414(a7)
                  sh           s10, 191(a7)
                  sw           sp, -126(s3)
                  lbu          s6, 766(a7)
                  lhu          a3, 66(s3)
                  lb           a0, 8(s2)
                  sb           t6, 4(sp)
                  sb           a7, -10(sp)
                  sb           s1, -9(s2)
                  lb           t4, -201(s3)
                  lb           a2, 9(s2)
                  lbu          s11, 879(a7)
                  sb           ra, 5(sp)
                  lbu          s11, -191(s3)
                  lb           a5, 152(a7)
                  lb           ra, -13(s3)
                  sb           a0, -7(sp)
                  lbu          t5, 525(a7)
                  sb           a0, 7(s2)
                  sb           s10, 163(s3)
                  lb           t0, 741(a7)
                  sb           a6, 210(a7) #end load_store_instr_stream_3
                  lb           t4, 3(sp)
                  lh           ra, -15(sp) #end load_store_instr_stream_2
                  lb           s8, 123(s3) #end load_store_instr_stream_1
                  sb           a1, 15(s2) #end load_store_instr_stream_0
                  la           sp, region_0+462 #start riscv_load_store_rand_instr_stream_1
                  and          s7, t2, t1
                  sub          s5, s4, a0
                  xor          a6, a1, zero
                  lbu          t1, -11(sp)
                  or           a0, s11, s3
                  lui          s8, 751505
                  lhu          s2, 16(sp)
                  sh           gp, -12(sp)
                  lbu          t1, -11(sp)
                  lbu          s5, 3(sp)
                  lb           s2, 3(sp)
                  slt          a3, s2, s6
                  auipc        t5, 514678
                  srl          s5, s7, t4
                  lbu          t2, 3(sp)
                  add          s2, a2, a2
                  lbu          s8, 14(sp)
                  lhu          ra, 2(sp)
                  lh           s3, 6(sp)
                  lb           zero, 7(sp)
                  xori         s11, a4, 1483
                  or           a2, t2, t3
                  sb           t3, 5(sp)
                  sltu         s6, s4, a1
                  lbu          s1, -9(sp)
                  lbu          s3, -16(sp)
                  lbu          a3, 15(sp)
                  sb           s11, 15(sp)
                  slli         a1, a0, 11
                  lb           a1, -11(sp)
                  sb           s4, -7(sp)
                  lbu          s4, 13(sp)
                  lb           a1, -3(sp)
                  lbu          gp, 4(sp)
                  sltiu        a7, s1, 277
                  lhu          a5, 14(sp)
                  sltiu        s7, s5, -780
                  lbu          a6, 7(sp) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+1266 #start load_store_instr_stream_0
                  la           s5, region_0+1220 #start load_store_instr_stream_1
                  la           a5, region_0+646 #start load_store_instr_stream_2
                  lh           a3, 8(a5)
                  sh           s3, 256(gp)
                  sb           s7, -56(s5)
                  lb           t4, 87(gp)
                  sb           s10, -33(s5)
                  lb           s8, 54(gp)
                  sb           a4, 15(a5)
                  lhu          t3, 128(gp)
                  sb           a4, -190(gp)
                  lbu          s0, -41(s5)
                  lbu          s6, 0(a5)
                  sb           s4, -13(a5)
                  lbu          t5, -61(s5)
                  sh           t6, -16(a5)
                  lb           s3, 8(a5)
                  sw           t0, 18(gp)
                  sh           t2, 4(a5)
                  sb           t5, 33(s5)
                  sh           a1, -6(a5)
                  sb           s8, -191(gp)
                  sb           s9, -51(s5)
                  lb           a6, 27(s5) #end load_store_instr_stream_1
                  lbu          a6, 12(a5) #end load_store_instr_stream_2
                  sb           t0, -39(gp) #end load_store_instr_stream_0
                  la           sp, region_0+1813 #start riscv_load_store_rand_instr_stream_5
                  lbu          s0, -30(sp)
                  sb           s7, -5(sp)
                  lui          t6, 443993
                  lh           s10, -15(sp)
                  lb           t5, 8(sp)
                  lb           s4, 45(sp)
                  sltiu        s5, t2, 910
                  sh           s2, 53(sp)
                  nop
                  lb           a6, -36(sp)
                  sh           a5, 7(sp)
                  sb           s5, 47(sp)
                  lb           t5, 31(sp)
                  sb           a3, 8(sp)
                  sb           s7, 54(sp)
                  and          s11, a0, s8
                  lb           a0, -60(sp)
                  slti         t6, t3, -2005
                  add          a6, a6, s3
                  auipc        t1, 700255
                  slli         s0, gp, 4
                  lbu          gp, 46(sp)
                  lbu          a7, -9(sp)
                  srli         t4, a3, 16
                  and          gp, t3, t3
                  srli         a6, t3, 13
                  sb           sp, -44(sp)
                  or           s2, t1, s3
                  lh           t0, 33(sp)
                  nop
                  xori         t5, t0, -1852
                  sub          s5, t0, tp
                  addi         s6, t6, -521
                  sb           a1, -8(sp)
                  sb           s0, -28(sp)
                  add          ra, zero, t1
                  sb           s0, 39(sp)
                  sll          a6, s11, s1
                  addi         s8, a0, 1964
                  ori          s2, t4, 2044
                  sb           s3, 29(sp)
                  lui          t6, 645329
                  lb           t1, 54(sp)
                  slti         a7, a6, 841
                  sb           tp, 2(sp)
                  lui          t0, 36091
                  sb           sp, 3(sp)
                  sub          gp, s5, a7
                  auipc        t6, 99759
                  lbu          a5, 58(sp)
                  lui          s7, 113975
                  lb           t5, 29(sp)
                  lbu          s8, -50(sp)
                  lbu          t0, 2(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+398 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a0, 11(sp)
                  nop
                  lb           s7, -7(sp)
                  lbu          a7, -7(sp)
                  lb           s0, -7(sp)
                  lb           s10, 8(sp)
                  lb           s4, -13(sp)
                  lb           a0, 5(sp)
                  sb           a3, -11(sp)
                  lhu          t3, -2(sp)
                  lb           s6, 5(sp)
                  sb           s11, 5(sp)
                  addi         s2, t0, -985
                  sb           t4, 5(sp)
                  lbu          a2, -12(sp)
                  sltu         s2, t0, t4
                  lb           s2, -12(sp)
                  sh           s3, -4(sp)
                  sb           a7, -7(sp)
                  sb           a5, 1(sp)
                  lb           s7, 0(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_0+1741 #start riscv_load_store_rand_instr_stream_2
                  lhu          s7, -3(sp)
                  sll          t4, s8, a6
                  lbu          ra, -2(sp)
                  lb           a2, 6(sp)
                  lb           a5, -7(sp)
                  lbu          s0, 1(sp)
                  sb           s6, -3(sp)
                  xor          gp, t4, tp
                  lbu          a0, 13(sp)
                  lhu          a6, -15(sp)
                  sb           t0, 2(sp)
                  lhu          s1, 9(sp)
                  srai         zero, ra, 21
                  lb           t6, 12(sp)
                  and          t0, a6, a6
                  slt          s4, s0, s11
                  lw           s10, -5(sp)
                  sltu         zero, tp, a2
                  lbu          t3, -16(sp)
                  andi         s10, a6, -664
                  andi         a2, a5, -404
                  andi         a7, t0, -961
                  lhu          s8, -5(sp)
                  sb           s6, 16(sp)
                  add          s1, a2, a3
                  sb           s6, 15(sp)
                  lb           ra, -7(sp)
                  sll          t3, sp, s9
                  lbu          a0, -2(sp)
                  sb           a4, 7(sp)
                  srl          a1, a0, ra
                  lb           t3, -8(sp)
                  lw           ra, -1(sp)
                  xor          s4, zero, t5
                  ori          a3, a6, 883
                  lw           t5, -13(sp)
                  lbu          t2, 12(sp)
                  lw           a2, 3(sp)
                  lhu          a0, 5(sp)
                  sb           s8, -1(sp)
                  sb           a0, 1(sp)
                  sh           s0, 13(sp)
                  sll          s1, gp, t4
                  slti         s1, t4, 743
                  lb           s5, 14(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_1+1125 #start load_store_instr_stream_2
                  la           ra, region_1+429 #start load_store_instr_stream_0
                  la           s10, region_1+1591 #start load_store_instr_stream_1
                  sw           s3, -29(ra)
                  sh           a1, 413(a1)
                  lbu          gp, -45(s10)
                  lb           s4, 46(ra)
                  lbu          a2, 20(ra)
                  lhu          s5, 13(s10)
                  sb           a4, -774(a1)
                  lbu          t6, -52(ra)
                  lbu          s3, -48(s10)
                  lbu          s3, 16(s10)
                  lhu          s2, 59(ra)
                  lhu          s5, 551(a1)
                  lbu          t5, 19(s10)
                  sb           s3, 78(a1)
                  sb           s8, -64(s10)
                  lbu          s8, -224(a1)
                  lh           s4, 85(a1) #end load_store_instr_stream_2
                  lbu          a0, 2(s10) #end load_store_instr_stream_1
                  sh           t1, -23(ra) #end load_store_instr_stream_0
                  la           s1, region_0+72 #start load_store_instr_stream_3
                  la           gp, region_0+421 #start load_store_instr_stream_1
                  lbu          t6, 198(gp)
                  la           s11, region_0+1535 #start load_store_instr_stream_0
                  sb           s4, 190(s11)
                  la           ra, region_0+1089 #start load_store_instr_stream_2
                  sw           t5, 28(s1)
                  lb           a3, 50(ra)
                  sb           s4, -54(s11)
                  lb           s3, 35(s1)
                  lb           a5, 8(s1)
                  lhu          a6, 61(ra)
                  sb           a4, 61(s1)
                  la           a7, region_0+317 #start load_store_instr_stream_4
                  sb           a3, 116(gp)
                  sb           a0, -26(ra)
                  lhu          a0, -29(s11)
                  lh           a1, 245(s11)
                  lbu          s8, -4(s1)
                  sb           a1, 36(a7)
                  lb           s4, -124(gp)
                  lbu          a2, -19(ra)
                  sb           s8, -232(s11)
                  lbu          t0, -29(s1)
                  sb           t3, 237(a7)
                  sb           t0, -20(gp)
                  lb           zero, -38(s11)
                  sb           a2, -220(gp)
                  lb           t6, -5(ra)
                  lbu          s7, 174(a7)
                  sh           t0, 119(s11)
                  lb           t0, -49(gp)
                  lbu          zero, 102(a7)
                  lbu          sp, 46(ra)
                  sb           s1, 34(s1)
                  sw           tp, 7(ra) #end load_store_instr_stream_2
                  lbu          t0, 251(a7)
                  sw           t3, 119(gp) #end load_store_instr_stream_1
                  lbu          a0, 68(a7)
                  sb           t6, -9(s1) #end load_store_instr_stream_3
                  lb           s6, 50(s11)
                  lbu          t5, 204(a7) #end load_store_instr_stream_4
                  lbu          a5, 60(s11)
                  lbu          a5, 240(s11) #end load_store_instr_stream_0
                  la           sp, region_0+213 #start riscv_load_store_hazard_instr_stream_1
                  lhu          a2, 21(sp)
                  srli         s5, t0, 19
                  auipc        ra, 370392
                  lhu          t4, 21(sp)
                  sra          t2, s5, t6
                  lh           s2, 21(sp)
                  lhu          s1, 21(sp)
                  sltiu        s0, sp, -1784
                  lh           t4, 21(sp)
                  lh           t0, 21(sp)
                  addi         a6, t5, 50
                  auipc        a6, 953658
                  sh           a5, 21(sp)
                  sb           s3, 21(sp)
                  lb           s10, 21(sp)
                  lhu          a5, 21(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_1+766 #start load_store_instr_stream_4
                  lbu          s10, 7(gp)
                  la           a5, region_1+1793 #start load_store_instr_stream_2
                  la           s7, region_1+298 #start load_store_instr_stream_3
                  la           t5, region_1+1236 #start load_store_instr_stream_0
                  lb           s3, 188(s7)
                  lbu          t1, -75(a5)
                  sh           a0, 108(s7)
                  lbu          ra, -8(gp)
                  la           s2, region_1+332 #start load_store_instr_stream_1
                  lbu          a6, -26(s2)
                  lbu          zero, 57(s2)
                  sh           ra, 586(t5)
                  lb           t3, -937(t5)
                  lb           s6, 15(gp)
                  lb           sp, -220(a5)
                  lb           t4, -103(t5)
                  sb           s11, -893(t5)
                  lbu          s0, -59(s2)
                  sb           s5, -5(gp)
                  lhu          s3, -110(s7)
                  sb           s1, 128(s7)
                  lbu          sp, -629(t5)
                  lhu          t6, -101(a5)
                  sw           s0, -13(a5)
                  lbu          s0, 17(s2)
                  sb           t5, -207(s7)
                  sb           s7, -199(a5)
                  lhu          s10, 54(s7)
                  sw           a3, -12(s2)
                  lbu          t4, -245(s7)
                  lw           s4, -944(t5)
                  lbu          s1, -18(s2)
                  lh           s1, -102(s7) #end load_store_instr_stream_3
                  lhu          s3, 52(s2)
                  lbu          t4, -216(a5)
                  lh           t3, -10(gp)
                  lhu          t4, 520(t5)
                  lh           a3, -191(a5)
                  sw           a5, -56(s2) #end load_store_instr_stream_1
                  lb           s6, 53(t5)
                  lbu          s8, -10(gp) #end load_store_instr_stream_4
                  sh           a2, 167(a5) #end load_store_instr_stream_2
                  lb           zero, -874(t5) #end load_store_instr_stream_0
                  la           s3, region_0+1227 #start riscv_load_store_rand_instr_stream_6
                  lbu          s7, 19(s3)
                  sb           a5, 20(s3)
                  sb           s1, -62(s3)
                  lb           a6, -27(s3)
                  lhu          t6, -53(s3)
                  lbu          a1, 60(s3)
                  lh           t6, -47(s3)
                  lb           a6, 24(s3)
                  lb           s5, -16(s3)
                  lbu          s5, 24(s3)
                  sb           t0, 37(s3)
                  add          s10, s9, a4
                  sltu         a0, s2, t2
                  addi         a2, t6, -574
                  lbu          s2, 7(s3)
                  lbu          t5, 5(s3)
                  addi         s10, a0, 427
                  lb           t2, 49(s3)
                  srai         s4, t6, 5
                  sltu         t3, a6, a0
                  lhu          s10, -61(s3)
                  sb           t4, -34(s3)
                  lb           zero, 26(s3)
                  auipc        s6, 737759
                  lb           a3, -58(s3)
                  sh           t6, -25(s3)
                  sb           a1, -50(s3)
                  lbu          a2, 8(s3)
                  sh           t1, -63(s3)
                  lbu          t3, -57(s3)
                  slti         t6, s8, -1109
                  lbu          s6, -64(s3)
                  srl          a0, a1, s4
                  sb           tp, -18(s3)
                  srli         t5, t0, 17
                  sh           s3, 49(s3)
                  lw           s5, 29(s3)
                  auipc        ra, 389770
                  sll          s11, s4, s9
                  andi         s10, zero, 1120
                  srai         a0, a0, 13
                  lhu          t3, -23(s3)
                  srl          s10, t5, a3
                  slti         t5, s6, 1369
                  lw           s4, -47(s3) #end riscv_load_store_rand_instr_stream_6
                  la           s10, region_1+1739 #start riscv_load_store_rand_instr_stream_3
                  lb           s11, 13(s10)
                  sra          t2, a5, t0
                  xori         s4, s5, -735
                  lb           t3, -6(s10)
                  slli         s6, gp, 31
                  lbu          t2, 14(s10)
                  slt          sp, s8, s1
                  and          a1, t1, zero
                  srli         s6, a3, 25
                  addi         gp, t6, 1984
                  srl          s4, a1, s10
                  slt          s4, gp, a0
                  sltiu        sp, tp, 1597
                  sb           a1, -2(s10)
                  add          a5, t0, s8
                  add          a5, t1, s1
                  lb           s1, -2(s10)
                  lbu          ra, 0(s10)
                  xor          a1, t6, s7
                  auipc        sp, 316495
                  lh           sp, 3(s10)
                  srai         a5, s4, 15
                  sb           a5, 3(s10)
                  or           zero, s2, t3
                  lhu          t6, 13(s10)
                  ori          a0, t4, 1272
                  sra          s6, s1, t2
                  sra          s5, s2, a0
                  sltu         s6, t0, s10
                  ori          a7, s2, 924
                  xori         s0, t0, 266
                  sltiu        a6, a0, -1909
                  lui          s5, 20918
                  xor          t4, a0, s4
                  sb           t3, 6(s10)
                  lb           s11, 12(s10) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1228 #start riscv_load_store_hazard_instr_stream_4
                  slti         a5, s3, -28
                  lhu          s5, 58(sp)
                  lb           ra, 13(sp)
                  sb           s4, 13(sp)
                  sb           s5, 13(sp)
                  add          a5, s8, a5
                  sb           s6, -38(sp)
                  lhu          t6, -38(sp)
                  lh           a0, -38(sp)
                  xori         a1, t4, -1244
                  lb           s0, -1(sp)
                  lb           t5, 36(sp)
                  srl          a7, tp, s4
                  sltu         t5, gp, s1
                  slt          a1, s8, a5
                  xori         a2, t6, 1411
                  sb           a5, -22(sp)
                  sb           sp, -38(sp)
                  sb           ra, -38(sp) #end riscv_load_store_hazard_instr_stream_4
                  sll          a3, t4, t5
                  add          sp, t1, s0
                  xori         s1, t3, -1632
                  or           t5, s11, s11
                  beq          s9, zero, 9f
                  bltu         t5, s2, 15f
                  srl          ra, a0, t6
                  la           s4, region_1+1378 #start riscv_load_store_rand_instr_stream_7
                  sb           s9, 47(s4)
                  lbu          a6, -99(s4)
                  sb           s4, -111(s4)
                  ori          ra, a6, -422
                  sw           s3, 214(s4)
                  lb           s3, 199(s4)
                  lb           s7, -233(s4)
                  slt          t6, a1, s5
                  or           t5, a0, a7
                  sra          t2, a5, t0
                  lui          s10, 1014979
                  lbu          t6, 84(s4)
                  lbu          s7, 121(s4)
                  sw           s9, -186(s4)
                  sub          t6, a6, s10
                  nop
                  lb           s3, -191(s4)
                  lhu          s1, -136(s4)
                  lb           a5, 256(s4)
                  lbu          s8, -7(s4)
                  slli         a7, t5, 28
                  and          a6, a2, t0
                  lbu          t4, -93(s4)
                  lbu          t1, 23(s4)
                  sb           s10, 51(s4)
                  sh           t6, 212(s4)
                  sb           tp, -183(s4)
                  lb           t1, 33(s4)
                  slt          s7, s8, a0
                  slli         a7, a6, 18
                  lb           a5, -153(s4) #end riscv_load_store_rand_instr_stream_7
                  beq          t3, t4, 22f
                  srl          s7, a2, s2
9:                srli         s1, t5, 17
                  slt          a6, s0, tp
                  add          t1, zero, gp
                  addi         t4, t4, 859
                  bne          gp, a7, 31f
                  nop
15:               xori         t3, t0, 1523
                  nop
                  sltiu        s7, t1, 228
                  xori         t2, a4, -1945
                  add          s0, t6, s0
                  slt          t2, sp, s11
                  and          a1, a2, s3
22:               auipc        s11, 524176
                  slt          zero, a1, sp
                  addi         t4, a6, 1624
                  bgeu         t1, a7, 29f
                  andi         t1, a0, 263
                  srli         s7, s9, 25
                  bgeu         gp, s6, 44f
29:               sll          t1, s8, s0
                  blt          a4, s9, 50f
31:               slt          t1, a6, s6
                  sltu         t5, s10, s4
                  sltiu        a3, s10, -328
                  bltu         a5, t1, 49f
                  srli         a1, s3, 18
                  xori         s7, s11, -301
                  and          t6, a6, t2
                  bne          s10, t0, 49f
                  beq          ra, s3, 49f
                  srai         s8, zero, 6
                  blt          s4, s5, 56f
                  srl          s11, zero, s9
                  blt          zero, t0, 47f
44:               xori         t1, a4, -1057
                  srli         t4, t2, 10
                  sub          zero, t6, s3
47:               slti         s4, s7, 507
                  bge          s7, t5, 64f
49:               blt          a2, s2, 52f
50:               add          t5, a2, a3
                  bne          s0, a1, 54f
52:               or           gp, t3, zero
                  srli         s5, s10, 19
54:               add          t3, a3, t3
                  andi         s8, a0, -1762
56:               bne          a2, t4, 60f
                  nop
                  and          s1, ra, s5
                  slt          s2, ra, sp
60:               xor          t1, a2, s6
                  add          a0, t2, s0
                  sltiu        t1, a2, 1994
                  and          a3, s7, a2
64:               xori         sp, s10, -1747
                  bne          a4, s0, 85f
                  sltu         s7, a7, s8
                  sll          s2, a6, s6
                  srli         sp, s2, 14
                  slli         s3, t2, 31
                  auipc        s5, 902423
                  slli         t5, s1, 16
                  add          s2, sp, t4
                  andi         s1, a4, -53
                  bgeu         s1, t5, 75f
75:               or           gp, t0, s8
                  xor          t4, a4, t5
                  xori         s10, t3, -1159
                  bge          a2, t2, 98f
                  slti         s5, s8, 622
                  bltu         t5, a4, 82f
                  and          s8, zero, a5
82:               bgeu         a0, s11, 86f
                  xori         a6, t4, 1436
                  bge          s2, s3, 93f
85:               slti         t6, s2, 335
86:               sltu         s5, a6, s5
                  bne          s0, t5, 101f
                  sub          t5, tp, s6
                  bge          a5, a1, 98f
                  srli         s0, s8, 29
                  slti         s3, a3, 1611
                  andi         t5, tp, 944
93:               slti         t3, s0, 1841
                  sltu         s5, t4, s8
                  xori         t3, zero, -1391
                  xor          ra, a6, t2
                  nop
98:               bne          gp, s10, 100f
                  slt          t0, t1, ra
100:              blt          sp, t1, 107f
101:              srli         t3, s10, 12
                  bltu         s10, t2, 122f
                  addi         s7, zero, 584
                  bltu         a6, t1, 120f
                  sll          ra, a6, s7
                  slt          s5, s2, s7
107:              add          t0, a6, s7
                  add          s11, s4, a4
                  lui          t3, 813768
                  xori         a3, s3, -1938
                  lui          t1, 351801
                  ori          a1, gp, 1568
                  beq          t2, t6, 130f
                  sub          s8, sp, a3
                  sra          t6, gp, s11
                  xori         t3, a1, 912
                  srl          a1, s1, t6
                  xor          s2, ra, s0
                  srai         t0, s8, 11
120:              and          s5, s0, a3
                  lui          a0, 702177
122:              bgeu         s0, a3, 139f
                  sltu         t0, a7, s0
                  sra          gp, s9, a4
                  lui          t5, 796275
                  slt          zero, t2, s11
                  sltu         t0, s5, a3
                  slt          a2, t1, a0
                  srli         t0, s4, 20
130:              sub          t5, s7, s7
                  sll          t2, t6, t2
                  bgeu         s3, t4, 146f
                  slt          s10, a7, s3
                  add          s8, s9, s0
                  srl          s11, t2, t3
                  bne          a1, sp, 141f
                  srl          t3, s11, s3
                  sltu         s5, t3, s7
139:              addi         s0, t4, -284
                  blt          sp, sp, 144f
141:              slti         t1, t6, -1439
                  sll          t5, s2, sp
                  sltu         a0, s11, s0
144:              sltu         s0, t5, a1
                  sltiu        t2, gp, 1759
146:              andi         t6, s4, 937
                  or           s5, a6, t4
                  bgeu         a5, ra, 150f
                  addi         zero, sp, -970
150:              addi         a3, ra, -601
                  sltiu        s11, s10, 1447
                  sub          zero, tp, s9
                  srli         s6, t3, 7
                  nop
                  add          s11, t4, gp
                  bne          t5, a7, 171f
                  sub          s3, t4, s6
                  bltu         s7, a3, 174f
                  xor          s10, a1, t5
                  xor          a0, a1, a5
                  bne          s10, ra, 165f
                  sub          t3, t5, s11
                  slti         t5, t6, -1668
                  sub          t5, s0, s3
165:              sll          a6, s11, gp
                  srai         t3, t5, 5
                  or           s8, s0, tp
                  bne          zero, s0, 171f
                  beq          s0, t5, 189f
                  sll          a3, a7, s9
171:              and          t2, t4, t5
                  beq          a0, t2, 189f
                  slt          s10, s8, a0
174:              and          a7, a7, t5
                  xor          s1, s3, t2
                  srai         a3, t1, 0
                  blt          a6, tp, 186f
                  nop
                  xor          t6, s10, t4
                  bge          s11, a6, 184f
                  srl          t3, a7, s11
                  bne          t5, s11, 183f
183:              sll          a3, ra, a7
184:              srli         zero, a1, 12
                  and          s3, s3, a0
186:              xori         a0, tp, -1263
                  bge          a5, t6, 202f
                  beq          tp, t4, 192f
189:              sll          gp, t1, gp
                  and          s8, a5, a4
                  addi         s2, t5, -1910
192:              andi         a2, s3, -1154
                  bne          s7, t3, 213f
                  and          t1, a2, s9
                  lui          s7, 466310
                  srli         gp, s3, 9
                  srl          zero, s6, s9
                  sltiu        t3, s8, -502
                  srl          s10, a2, a2
                  andi         s1, s6, -2022
                  bgeu         t1, s3, 211f
202:              beq          s10, s1, 222f
                  lui          a0, 862804
                  slti         t2, s6, -648
                  lui          s2, 815418
                  srai         a6, sp, 7
                  addi         s3, sp, 347
                  srli         s6, s8, 19
                  bgeu         s5, tp, 219f
                  sltiu        s2, s3, 847
211:              sra          t0, s8, s10
                  sub          a0, sp, a4
213:              bge          t6, s4, 224f
                  sll          s5, s5, zero
                  lui          gp, 99176
                  srl          t3, s8, t6
                  blt          a6, s3, 219f
                  sub          s11, tp, tp
219:              xor          a7, a0, s2
                  andi         sp, a3, -1291
                  or           t1, tp, a6
222:              slti         s3, a3, 526
                  xor          sp, t0, a2
224:              add          a1, t1, s5
                  xori         s1, gp, 693
                  srl          sp, a7, t5
                  or           a3, s3, a6
                  bne          a3, t2, 246f
                  xor          t6, s5, a1
                  addi         s8, s9, -1496
                  sra          a1, s6, t1
                  addi         ra, s8, -1111
                  srai         a6, tp, 2
                  add          sp, s5, gp
                  sltu         s7, t1, a2
                  addi         s8, gp, -743
                  or           s3, s8, s10
                  bgeu         s10, s2, 241f
                  slli         s6, s1, 31
                  sltu         s1, s4, t2
241:              andi         t1, s1, -1919
                  bne          s9, s2, 258f
                  beq          t1, a5, 258f
                  bge          s10, a1, 264f
                  slti         s8, s1, -1824
246:              beq          a3, a6, 263f
                  sltiu        s8, s4, -1682
                  or           s11, ra, s5
                  beq          s5, a6, 258f
                  sub          s5, s3, gp
                  bltu         s10, a3, 267f
                  sll          gp, a1, a5
                  bgeu         sp, a0, 260f
                  addi         a5, zero, 451
                  sltu         s11, s0, s7
                  slti         a5, t3, 468
                  and          t6, a0, t2
258:              lui          t6, 1001854
                  nop
260:              bgeu         a5, zero, 277f
                  and          t5, t1, t2
                  sub          t6, gp, s2
263:              srl          s5, a7, a0
264:              and          s10, t5, a1
                  srli         t4, sp, 17
                  nop
267:              nop
                  addi         s1, t1, -1019
                  bgeu         s3, s5, 278f
                  srli         a3, t2, 18
                  andi         sp, a0, 1185
                  add          t6, s11, s10
                  bgeu         t4, s11, 275f
                  auipc        a1, 413461
275:              srli         s4, s2, 4
                  auipc        a7, 471252
277:              srli         a3, ra, 24
278:              andi         s1, s7, 1637
                  srli         a3, a0, 6
                  srli         a5, a1, 31
                  and          t6, s7, t1
                  and          s3, s2, a4
                  auipc        s3, 229302
                  blt          gp, s10, 295f
                  srli         t6, s5, 22
                  ori          t4, t4, -470
                  lui          s1, 155104
                  slli         s5, s8, 19
                  and          t6, sp, s8
                  nop
                  srli         t5, s11, 30
                  slli         s6, t3, 8
                  ori          t1, s0, -134
                  sll          s3, s0, a0
295:              bgeu         s1, t5, 302f
                  srli         s2, a2, 20
                  sltiu        t0, a6, -1729
                  slli         a0, tp, 1
                  blt          s2, sp, 315f
                  nop
                  slt          t2, s3, a1
302:              slli         gp, s1, 28
                  auipc        s5, 964224
                  slli         t3, s1, 27
                  xor          ra, a4, t3
                  addi         t4, ra, 1806
                  blt          s8, zero, 322f
                  xor          t0, s4, s3
                  slli         a6, a7, 27
                  and          s2, a7, t2
                  xor          ra, s8, gp
                  slti         a5, a6, -940
                  bge          s4, s4, 317f
                  bne          s10, zero, 328f
315:              slt          zero, ra, a4
                  blt          zero, s7, 326f
317:              auipc        t5, 943570
                  and          s3, t2, a5
                  srl          sp, t6, t5
                  slti         s6, s2, -1837
                  lui          s2, 63139
322:              sub          t0, zero, t6
                  slli         s6, s2, 4
                  bge          s5, zero, 325f
325:              sltu         t6, a6, a0
326:              andi         a6, s5, -1312
                  sra          s3, a3, s4
328:              add          t3, s3, t1
                  bne          s8, a0, 332f
                  xor          a2, s10, s5
                  srai         s1, a6, 8
332:              bgeu         a0, t4, 342f
                  xor          t1, a6, s0
                  srai         s3, s2, 1
                  xori         t1, sp, 1081
                  nop
                  slli         s2, t3, 18
                  srl          a2, tp, s2
                  and          t2, s0, a4
                  sltu         a2, a5, s1
                  auipc        zero, 228521
342:              sub          zero, t6, s9
                  bltu         s10, s1, 363f
                  and          sp, tp, s8
                  srli         s6, s4, 18
                  srai         a5, s8, 18
                  bgeu         s0, s7, 363f
                  sll          gp, s9, s4
                  auipc        s2, 350133
                  addi         s7, s7, -1922
                  blt          ra, s8, 367f
                  sll          s7, s7, s5
                  beq          a3, t6, 368f
                  srl          s4, a6, a5
                  nop
                  ori          s11, a7, 495
                  bne          t6, tp, 375f
                  srai         s10, tp, 20
                  addi         sp, s6, 422
                  slti         t4, s2, -624
                  andi         s4, s2, 1994
                  sll          s3, tp, a1
363:              srli         ra, t0, 26
                  lui          t5, 920207
                  beq          t2, sp, 368f
                  and          s5, t4, s1
367:              andi         s6, a5, 1396
368:              beq          t6, tp, 372f
                  lui          s11, 617015
                  srl          sp, s6, s10
                  nop
372:              bltu         s10, t1, 392f
                  xori         t4, s4, -1296
                  or           a1, s6, sp
375:              srli         a6, a6, 18
                  srl          s11, s11, s1
                  addi         a7, s4, 328
                  bltu         a7, a6, 382f
                  srl          t3, s4, s10
                  bltu         s2, s11, 389f
                  sra          t2, a5, a7
382:              xori         s1, t0, 1413
                  or           ra, a5, t3
                  sll          t4, a3, t5
                  sltiu        sp, a1, -829
                  xor          s8, s7, a6
                  xori         s8, s10, 1718
                  xor          t1, a1, s0
389:              srl          sp, s8, a0
                  and          s8, t4, s4
                  slli         s2, a3, 3
392:              bgeu         t0, t5, 394f
                  slli         a7, s5, 6
394:              sltu         s5, t4, t1
                  blt          ra, t0, 410f
                  or           a3, a0, sp
                  slt          t2, s8, s7
                  addi         t2, s6, 203
                  add          ra, a5, t1
                  add          a5, s0, s9
                  sub          s11, tp, t6
                  xor          s10, s10, s9
                  bgeu         ra, a4, 423f
                  bgeu         a2, t2, 409f
                  sll          t2, t2, t4
                  addi         a6, ra, 1606
                  bltu         ra, s6, 424f
                  slt          t6, s3, s5
409:              srai         a6, s7, 3
410:              xori         t3, gp, -1170
                  srl          a2, s8, t1
                  xor          s8, s2, tp
                  lui          t4, 321751
                  bne          a6, a7, 434f
                  xor          t5, t4, s1
                  slli         t3, a4, 19
                  addi         s0, ra, 649
                  slti         s10, tp, 156
                  slti         s7, s8, -1666
                  bltu         a1, a6, 424f
                  sltiu        s7, zero, 1734
                  srli         t1, s8, 6
423:              beq          t1, t5, 438f
424:              xori         a2, t4, 1678
                  sra          a1, s3, tp
                  sra          a3, a7, gp
                  lui          a7, 506263
                  srli         s4, a4, 21
                  slti         t3, t4, -1619
                  bltu         a2, a5, 434f
                  sra          a2, a7, t1
                  bltu         s10, s5, 452f
                  or           a0, s9, a7
434:              bne          t0, a1, 444f
                  addi         s8, a2, -334
                  sra          a0, a6, s5
                  bgeu         t1, gp, 440f
438:              sub          t5, s4, t5
                  auipc        sp, 916974
440:              slli         a2, t0, 21
                  xor          t6, a4, t1
                  srli         a3, s3, 16
                  and          s11, a7, t6
444:              addi         s0, s1, -1134
                  and          t3, t4, a2
                  bge          t2, tp, 457f
                  slli         s11, zero, 29
                  sltiu        t0, zero, 1661
                  sltu         s0, a7, t4
                  srl          s4, zero, a3
                  sltiu        s4, ra, 1347
452:              and          s10, s11, t6
                  srl          s10, a3, s8
                  sub          a1, a2, t2
                  slli         s0, s3, 26
                  blt          zero, t3, 465f
457:              sltu         t1, sp, s2
                  nop
                  or           zero, a3, s0
                  sll          s1, s0, s5
                  bne          t4, t5, 463f
                  srl          s5, s7, t5
463:              slti         t4, a4, -1910
                  add          s11, s1, t2
465:              srl          zero, ra, s8
                  sltiu        t6, s8, -693
                  lui          s8, 215024
                  bgeu         s7, t4, 488f
                  xor          a2, s11, t3
                  bne          s2, s11, 486f
                  or           gp, s10, sp
                  slt          gp, a0, a5
                  xori         s5, zero, -374
                  nop
                  xor          s1, t3, s4
                  beq          t3, s4, 496f
                  srai         a3, t1, 8
                  and          a7, t5, s3
                  srai         s4, a5, 24
                  bgeu         ra, s6, 484f
                  slt          t3, a7, t4
                  andi         s1, a2, -1194
                  sltiu        s1, s0, 397
484:              srai         s2, s8, 19
                  add          s10, a6, s4
486:              addi         t0, a5, -1457
                  sub          t5, s2, t3
488:              srli         s7, t6, 23
                  addi         s7, s9, 1225
                  sltiu        a3, gp, 97
                  srl          a1, gp, s8
                  sltu         t1, gp, s8
                  or           a7, t6, t4
                  slli         s4, s3, 13
                  lui          s4, 330191
496:              bne          s5, t2, 512f
                  bge          t6, s5, 515f
                  bge          s5, s8, 513f
                  sltu         a6, a2, a3
                  bgeu         s8, t1, 503f
                  bltu         s4, sp, 517f
                  xor          s1, a7, s5
503:              lui          t2, 403698
                  add          s0, t0, t0
                  slt          s2, s9, a3
                  bgeu         s1, a5, 516f
                  bne          s6, s9, 516f
                  ori          sp, s6, 1626
                  auipc        a6, 232673
                  or           s11, s4, s9
                  nop
512:              sltiu        s8, s2, -4
513:              bge          t3, t4, 530f
                  srai         a0, ra, 16
515:              bltu         s9, tp, 516f
516:              bge          s2, a3, 533f
517:              sra          a1, gp, s5
                  beq          a6, t5, 522f
                  sll          s8, a2, s7
                  bne          a5, s1, 535f
                  auipc        a5, 587225
522:              addi         t2, a0, -361
                  srli         s1, s5, 0
                  srl          s3, zero, zero
                  slti         a3, t0, -1687
                  xori         s11, s2, 813
                  beq          a0, a3, 531f
                  or           a5, ra, s4
                  and          s1, s1, s9
530:              andi         s4, a3, -1275
531:              srli         a0, a6, 17
                  sltiu        zero, t4, -1565
533:              addi         a6, t3, 545
                  sub          gp, t3, a6
535:              srli         s1, s8, 28
                  sltu         a0, t5, s5
                  xori         a6, a2, -1396
                  andi         s6, a7, -651
                  nop
                  ori          ra, a7, -1507
                  add          a0, s2, t2
                  sub          t6, t2, t2
                  addi         s0, a7, -145
                  slt          s6, s3, a2
                  beq          s9, s5, 552f
                  blt          a7, a1, 548f
                  ori          a2, gp, 860
548:              and          s0, s0, t0
                  sltiu        t5, t3, -1405
                  slti         zero, a3, -791
                  slli         a1, t5, 28
552:              srai         sp, s6, 3
                  srl          t5, tp, t0
                  nop
                  bne          t4, a3, 569f
                  andi         sp, s9, -460
                  bge          a2, s7, 562f
                  bge          s6, s7, 578f
                  add          s2, s11, a6
                  sll          t4, t0, s7
                  sll          a3, t6, t4
562:              ori          t3, s5, -281
                  ori          s4, s10, -926
                  xor          a0, s5, t2
                  bltu         s6, sp, 585f
                  bge          t2, s7, 582f
                  sltu         s11, s2, t4
                  nop
569:              xori         s10, t3, 1814
                  bltu         a2, s5, 587f
                  xori         s2, s11, 1766
                  xori         a2, s11, 879
                  slt          s4, t3, a2
                  and          t2, t4, t0
                  sub          t0, t0, t3
                  srl          sp, a4, s11
                  bge          tp, gp, 591f
578:              or           t2, t2, t0
                  sll          s8, a3, s1
                  srl          s3, s11, s3
                  auipc        ra, 403695
582:              slti         a0, a2, -1970
                  and          a5, s6, a0
                  bne          t0, t3, 594f
585:              srl          s10, t5, s7
                  ori          t2, gp, 1415
587:              or           s5, s10, a7
                  sub          a1, s1, a3
                  xor          a5, t1, a7
                  slli         t6, a3, 2
591:              beq          s7, s3, 609f
                  la           gp, region_0+125 #start load_store_instr_stream_3
                  la           s4, region_0+1195 #start load_store_instr_stream_1
                  la           a6, region_0+944 #start load_store_instr_stream_0
                  lhu          t0, -6(a6)
                  la           t4, region_0+801 #start load_store_instr_stream_2
                  sb           a0, 144(gp)
                  sb           t1, 25(t4)
                  lw           a5, 59(gp)
                  lbu          a3, -12(a6)
                  lb           ra, 25(t4)
                  lbu          ra, 62(gp)
                  lbu          sp, 5(a6)
                  lb           zero, 42(gp)
                  lh           t1, 81(gp)
                  lw           s7, -47(s4)
                  lb           t1, -46(s4)
                  lbu          s8, 13(a6)
                  lbu          a7, -60(s4)
                  sh           a4, -2(a6)
                  lbu          t3, -14(a6)
                  lhu          s1, -67(gp)
                  sb           s11, -48(gp)
                  lb           a2, -25(t4)
                  sb           t3, -17(s4)
                  lw           s3, 211(gp)
                  lb           a1, 62(t4)
                  lhu          a0, -89(gp)
                  sb           s7, -28(s4)
                  lbu          t1, -108(gp) #end load_store_instr_stream_3
                  sw           a3, -8(a6)
                  lbu          s7, -41(s4)
                  lb           s8, -27(t4)
                  lb           a1, -13(a6)
                  sb           t0, 61(t4) #end load_store_instr_stream_2
                  sb           a4, -10(s4) #end load_store_instr_stream_1
                  lhu          s5, -14(a6) #end load_store_instr_stream_0
                  add          t5, s3, s11
                  sll          s7, zero, s1
594:              sltu         a7, gp, s1
                  blt          a2, sp, 612f
                  slli         s7, a1, 2
                  beq          a2, sp, 607f
                  sll          s0, a1, a4
                  sub          s11, t5, a5
                  sub          a0, t1, s2
                  andi         a0, a3, 1601
                  bltu         s5, a2, 617f
                  blt          t3, s4, 606f
                  bne          s6, s8, 609f
                  srai         t2, a4, 19
606:              sub          a0, t4, s11
607:              andi         s6, t0, 356
                  sltu         zero, s6, zero
609:              sub          a0, gp, t0
                  sll          a6, a6, s11
                  xori         s10, t4, 777
612:              addi         s3, s6, 1441
                  xori         a7, s10, -430
                  slti         t3, gp, -1647
                  bne          gp, s6, 619f
                  slt          a5, tp, s8
617:              add          a2, s7, ra
                  sltiu        a5, a2, 1277
619:              xor          t6, sp, t5
                  ori          s2, s9, 1354
                  and          s6, s2, tp
                  sub          a7, t6, t2
                  sltu         s10, s10, a6
                  slt          a2, a2, ra
                  srl          ra, zero, s0
                  srl          t1, t0, gp
                  nop
                  bltu         s8, s9, 648f
                  slli         t2, t4, 7
                  and          t3, t3, tp
                  addi         s5, t2, -1321
                  xori         t0, a0, -1780
                  sra          s5, t6, t1
                  sra          s2, tp, s1
                  srli         a3, s0, 19
                  lui          t0, 825170
                  sll          t1, t3, s4
                  srai         t3, s5, 12
                  bne          t4, s9, 648f
                  sltiu        t1, t4, -1527
                  or           t0, s5, s1
                  slt          a6, t3, a5
                  and          a6, t0, t2
                  andi         t0, a0, -947
                  sra          sp, a5, t5
                  srl          t1, a0, ra
                  xori         t0, sp, 93
648:              bge          gp, a3, 650f
                  beq          t2, a6, 653f
650:              xor          sp, s6, a5
                  sub          s10, a6, s11
                  nop
653:              bge          sp, s2, 668f
                  and          sp, t3, a0
                  bne          a0, s3, 659f
                  srli         s6, s6, 26
                  xori         s1, t1, -1714
                  sub          s11, t1, gp
659:              beq          a3, s6, 661f
                  bne          s1, s2, 669f
661:              add          t1, s10, s1
                  bne          t0, a4, 678f
                  nop
                  beq          s8, a1, 680f
                  sub          s3, t5, gp
                  srl          s2, zero, s1
                  srai         s6, t2, 10
668:              ori          t2, a1, -2003
669:              slti         s6, tp, -503
                  lui          sp, 585144
                  bltu         ra, a5, 674f
                  ori          a6, a1, 474
                  add          a6, a1, ra
674:              srl          a0, t6, s9
                  lui          s3, 210281
                  xori         s2, s2, 185
                  sub          s4, s11, s8
678:              add          a0, s9, s1
                  sltu         s1, a7, zero
680:              and          a3, tp, a1
                  sltu         a1, s9, a7
                  add          t0, s3, s11
                  xori         s10, a1, -593
                  and          a6, sp, ra
                  srl          a0, zero, t2
                  beq          a2, s7, 697f
                  blt          s6, t1, 691f
                  slt          a6, t0, a2
                  sll          s10, s11, a3
                  addi         sp, s4, -1112
691:              beq          s8, a0, 706f
                  lui          a7, 39443
                  sltiu        a1, t1, 1068
                  slt          a7, s3, s2
                  sub          a0, a6, s6
                  bge          a6, a3, 703f
697:              beq          s0, a4, 717f
                  sra          a5, gp, t2
                  sub          s6, gp, a6
                  addi         a0, s2, 1212
                  sltiu        gp, t1, -1116
                  nop
703:              add          t4, a1, a6
                  sltiu        a3, s11, -242
                  bge          s9, s1, 725f
706:              xor          s7, a4, a1
                  srl          s8, s5, s9
                  sltu         s5, a4, t3
                  bltu         a6, s8, 710f
710:              nop
                  addi         s4, a6, 902
                  addi         a1, t2, -187
                  slli         a5, a4, 14
                  bge          a1, t4, 729f
                  srli         t5, s2, 7
                  srli         t4, s11, 4
717:              auipc        gp, 262867
                  bne          a7, tp, 721f
                  bgeu         s5, t5, 722f
                  srl          a5, s11, s10
721:              addi         s8, t0, 213
722:              lui          t0, 881349
                  xori         a1, s9, -103
                  srl          t3, s1, t4
725:              ori          t4, sp, 1146
                  slti         s7, t4, -970
                  sll          ra, s2, s11
                  beq          a0, a4, 738f
729:              auipc        a1, 556681
                  and          t0, s1, gp
                  beq          tp, a2, 742f
                  blt          s0, a7, 734f
                  bltu         gp, a5, 742f
734:              blt          s11, gp, 750f
                  beq          tp, gp, 752f
                  andi         a3, s10, -1743
                  xori         sp, t1, -1235
738:              add          a7, s8, s6
                  add          zero, s11, t3
                  sll          zero, t4, t5
                  lui          a3, 416416
742:              bge          tp, s3, 746f
                  sltu         a5, a0, zero
                  auipc        s4, 5510
                  srl          t4, s4, s6
746:              srai         ra, t5, 8
                  add          t5, s1, s9
                  sltiu        gp, s0, -1448
                  slt          t0, s2, gp
750:              blt          s9, t5, 754f
                  beq          a7, a7, 768f
752:              xor          t1, zero, t6
                  ori          t0, a3, 1074
754:              add          t0, s9, a0
                  sll          t4, a2, a2
                  slt          a2, s0, t0
                  xor          a0, a3, t4
                  auipc        gp, 20283
                  srai         a2, s4, 25
                  beq          t4, t1, 780f
                  slli         s2, a3, 15
                  xori         s2, s10, 1786
                  and          t6, gp, s9
                  and          zero, a7, a0
                  bgeu         gp, zero, 780f
                  srai         s2, t2, 29
                  xor          a0, zero, a0
768:              bne          s1, s4, 784f
                  srl          s10, s1, s5
                  addi         a0, t4, 732
                  srli         t1, t0, 1
                  and          zero, a2, s6
                  and          ra, a5, a2
                  bne          s8, tp, 792f
                  add          gp, s10, s8
                  beq          t1, zero, 780f
                  srl          s5, a5, s7
                  blt          a1, s8, 785f
                  sltu         a2, s11, a4
780:              srli         t4, s4, 25
                  bge          gp, a4, 795f
                  slli         t6, t5, 27
                  or           s1, a0, s6
784:              auipc        t5, 315702
785:              beq          t3, sp, 794f
                  and          a1, t6, s11
                  andi         s2, a7, 1444
                  and          s5, a4, t0
                  slli         s11, a6, 27
                  auipc        t0, 320757
                  lui          ra, 594116
792:              srl          s3, t3, tp
                  or           t3, s6, s7
794:              ori          a3, t3, -1634
795:              srai         gp, a4, 10
                  slti         t1, sp, -715
                  auipc        gp, 642526
                  srai         t6, s2, 6
                  sub          a6, s4, t6
                  sra          t1, s1, zero
                  auipc        s3, 512307
                  add          a2, sp, t3
                  slti         a1, s9, 1825
                  sub          s11, a7, t0
                  slti         s0, s11, -1956
                  bgeu         s4, s11, 810f
                  andi         t6, s5, -573
                  sltu         zero, t1, sp
                  xori         t3, a0, 1372
810:              andi         t0, zero, 581
                  srli         s10, sp, 13
                  srl          a2, s9, gp
                  beq          tp, s9, 814f
814:              bge          t1, a0, 834f
                  sltiu        t3, t6, 589
                  sra          a7, t6, s7
                  and          s6, s8, zero
                  sub          s8, a2, s9
                  or           a5, s0, zero
                  xori         t1, s8, 520
                  lui          a1, 8072
                  lui          a6, 430124
                  nop
                  slli         gp, s7, 17
                  xor          a6, s7, a4
                  srai         a5, t3, 8
                  nop
                  sra          a7, a2, s0
                  srli         a2, tp, 26
                  sll          t1, s1, t1
                  addi         sp, gp, -1210
                  sra          a2, t4, s8
                  blt          s1, s9, 838f
834:              add          s2, a0, a7
                  srai         s8, t5, 13
                  blt          t0, a4, 838f
                  beq          zero, t2, 852f
838:              blt          zero, s10, 858f
                  add          gp, s1, s1
                  or           s8, a7, s11
                  or           a3, t3, zero
                  beq          t1, s6, 862f
                  srl          t6, sp, a3
                  bge          ra, a5, 860f
                  andi         t4, gp, 1165
                  addi         gp, a1, 904
                  slt          s10, sp, a5
                  ori          t6, sp, -38
                  nop
                  bltu         zero, s8, 860f
                  lui          s6, 324009
                  la           t6, region_0+1482 #start riscv_load_store_hazard_instr_stream_5
                  lbu          s3, -329(t6)
                  slti         ra, s9, -1101
                  sb           s5, -329(t6)
                  nop
                  lbu          t0, -329(t6)
                  lbu          t0, -329(t6)
                  lbu          a1, -329(t6)
                  sb           t1, -329(t6)
                  sb           s9, -329(t6)
                  sb           a5, -329(t6)
                  lbu          a7, -329(t6)
                  lbu          s2, -329(t6)
                  xor          a2, s10, zero
                  sll          a3, s10, t2
                  lb           a6, -329(t6)
                  slt          a2, t5, s3
                  lbu          a5, -329(t6) #end riscv_load_store_hazard_instr_stream_5
852:              sll          a5, s2, s1
                  sll          a0, t4, t2
                  slt          a3, zero, s1
                  nop
                  nop
                  xori         s5, a7, -1192
858:              addi         a6, s6, 1846
                  blt          t0, t3, 863f
860:              blt          t5, a3, 863f
                  nop
862:              nop
863:              xor          sp, a5, s4
                  lw           s8, 4(tp)
                  ori          t2, t3, 268
                  slt          s1, zero, t5
                  addi         tp, tp, 32
                  and          s0, s1, t4
                  sub          zero, a2, sp
1629:             addi x18, x24, 1
1629:             jalr x18, x18, 0
sub_2:            lui          t4, 282485
                  slli         s10, s8, 18
                  xori         s6, s9, -1302
                  sltu         sp, a5, t2
                  addi         tp, tp, -16
                  srl          s3, t6, tp
                  sltu         a7, s8, a2
                  nop
                  xori         zero, t2, -554
                  ori          a3, s11, 261
                  sw           s8, 4(tp)
                  xor          s5, t3, t5
                  and          s11, a1, ra
                  sltu         sp, gp, gp
                  addi         t3, zero, -751
                  addi         a7, zero, 1990
                  sltu         t4, t5, s3
                  nop
                  beq          a4, a3, 13f
                  sub          a0, t3, s0
                  and          t4, a7, t1
                  ori          s5, s1, 123
                  srai         a2, zero, 13
                  sra          s5, a7, s9
                  sra          sp, a3, t5
13:               and          a7, s10, s1
                  and          s10, s3, s9
                  lw           s8, 4(tp)
                  sra          ra, t0, a4
                  srai         a2, a6, 26
                  auipc        s4, 219135
                  srl          a1, a3, s4
                  srai         t4, s5, 18
                  srai         s3, s7, 16
                  xor          sp, s5, a0
                  addi         tp, tp, 16
                  lui          a1, 548816
37:               addi x17, x24, 1
37:               jalr x17, x17, 0
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_2:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_3:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_4:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_5:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_6:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_7:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_8:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_9:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_10:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_11:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_12:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_13:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_14:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

mmode_intr_vector_15:
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
                  add x14, x4, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x25, test_done
                  jalr x0, x25, 0

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
                  add x14, x4, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x20, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x20, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x20, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x20, x18, ecall_handler
                  li x18, 0x1
                  beq x20, x18, instr_fault_handler
                  li x18, 0x5
                  beq x20, x18, load_fault_handler
                  li x18, 0x7
                  beq x20, x18, store_fault_handler
                  li x18, 0xc
                  beq x20, x18, pt_fault_handler
                  li x18, 0xd
                  beq x20, x18, pt_fault_handler
                  li x18, 0xf
                  beq x20, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x4, x14, zero
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
                  add x4, x14, zero
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
                  add x4, x14, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x4, x14, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x4, x14, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x4, x14, zero
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
