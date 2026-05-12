.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x14, 0x40000100
                  csrw 0x301, x14
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 1
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x14, 0x1800
                  csrw 0x300, x14 # MSTATUS
                  mret
init:             
                  li x0, 0xf7c569fb
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x30cd0714
                  li x4, 0xf906515b
                  li x5, 0x6e4d9d74
                  li x6, 0x80000000
                  li x7, 0xf0d3a424
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0xf38268c1
                  li x11, 0x8fb0084e
                  li x12, 0xd
                  li x13, 0xf23497ff
                  li x14, 0x5
                  li x16, 0x5
                  li x17, 0x1
                  li x18, 0xfdf1121d
                  li x19, 0xe9a5e6fa
                  li x20, 0xdc385f3f
                  li x21, 0x7
                  li x22, 0x0
                  li x23, 0xf33b5894
                  li x24, 0x0
                  li x25, 0xf7aa5738
                  li x26, 0x80000000
                  li x28, 0x2
                  li x29, 0xf
                  li x30, 0x0
                  li x31, 0x4a35f79e
                  la x15, user_stack_end
main:             la           s3, sub_2
                  lui          t5, 934023
                  xori         s1, s4, 1159
                  slt          s9, zero, s1
                  srai         zero, s4, 12
                  addi         s3, s3, -932
                  sll          a2, s1, a0
                  srli         t3, a1, 14
                  add          ra, a7, a6
                  addi         s1, a2, 696
main_j2:          jalr         t0, s3, 933 #jump main -> sub_2
                  la           gp, sub_1
                  or           t4, t4, ra
                  sltu         s0, s8, t5
                  addi         gp, gp, -69
                  auipc        sp, 132822
                  addi         a0, zero, 143
                  or           t5, t3, a3
main_j3:          jalr         t0, gp, 69 #jump main -> sub_1
                  la           sp, region_0+1051 #start riscv_load_store_rand_instr_stream_0
                  lhu          s4, -1(sp)
                  slli         s6, s6, 24
                  addi         gp, t6, 193
                  sra          a2, t2, a6
                  lbu          zero, -5(sp)
                  and          t0, t0, tp
                  lhu          t3, 9(sp)
                  lb           s0, -14(sp)
                  lb           ra, -10(sp)
                  lb           zero, 0(sp)
                  sltu         ra, a0, gp
                  srl          a2, a3, s1
                  lb           a2, 10(sp)
                  sb           a1, -3(sp)
                  lbu          t6, 6(sp)
                  and          zero, s9, a2
                  lh           s1, 7(sp)
                  lbu          s3, -8(sp)
                  andi         s3, t2, 87
                  sltu         gp, a5, t5
                  ori          t3, tp, -1155
                  addi         tp, t1, 916
                  sw           s5, -3(sp)
                  slli         s10, s3, 13
                  xor          s9, a3, s10
                  sb           a0, -9(sp)
                  lb           a4, 10(sp)
                  sub          a0, s1, a5
                  lb           tp, 10(sp)
                  lb           a3, -2(sp)
                  lbu          s3, 16(sp)
                  nop
                  or           a0, a2, s3
                  sb           a2, -14(sp)
                  add          a0, a6, a6
                  lb           gp, -6(sp)
                  lb           s9, -10(sp)
                  lbu          s0, -9(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1505 #start riscv_load_store_hazard_instr_stream_0
                  sb           s8, 143(sp)
                  sw           a2, 143(sp)
                  lb           s2, 143(sp)
                  sltiu        a3, s10, 1300
                  sb           s4, -203(sp)
                  xori         zero, t0, -1950
                  sb           gp, -203(sp)
                  lb           s2, 228(sp)
                  lb           s7, 228(sp)
                  sb           t4, 228(sp)
                  sb           s2, 228(sp)
                  sb           s6, 228(sp)
                  lbu          t5, 228(sp)
                  lh           s0, -81(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t4, region_1+1474 #start load_store_instr_stream_3
                  lb           s3, 1(t4)
                  la           s5, region_1+1769 #start load_store_instr_stream_0
                  sb           s10, 9(s5)
                  la           s0, region_1+996 #start load_store_instr_stream_1
                  la           s8, region_1+1486 #start load_store_instr_stream_2
                  lb           zero, -46(s5)
                  sb           s11, -832(s0)
                  sb           t0, 22(s5)
                  lh           a0, 500(s0)
                  la           t1, region_1+691 #start load_store_instr_stream_4
                  sb           s7, 920(t1)
                  lbu          t0, -7(s8)
                  lbu          sp, -31(s5)
                  lbu          a0, 64(s8)
                  lb           a4, 13(s5)
                  sb           s8, 1(t4)
                  lb           ra, 39(s8)
                  lb           gp, 119(s0)
                  sb           s11, 366(t1)
                  sb           s0, 7(s8)
                  lhu          t6, -29(s5)
                  lhu          a7, 576(s0)
                  lhu          ra, -50(s8)
                  sb           s0, 1(t4)
                  sb           a6, -78(t1)
                  lbu          s10, 19(s8)
                  sb           t1, -4(s5)
                  sb           t2, -4(s5)
                  lbu          t2, -332(t1)
                  lb           sp, 9(t4)
                  lw           s10, 50(s8)
                  sb           s6, 731(t1) #end load_store_instr_stream_4
                  sb           a7, -958(s0) #end load_store_instr_stream_1
                  lb           tp, -38(s8)
                  lbu          t6, -57(s8) #end load_store_instr_stream_2
                  lb           a2, 1(t4)
                  lw           s4, 43(s5)
                  sb           a7, -1(t4) #end load_store_instr_stream_3
                  lb           sp, -10(s5) #end load_store_instr_stream_0
                  or           a3, s3, a7
                  andi         sp, gp, 1313
                  sra          s4, s5, sp
                  andi         a2, a2, 1941
                  bge          gp, t6, 19f
                  bne          a6, s4, 18f
                  la           s0, sub_1
                  srai         s4, sp, 23
                  or           s7, s5, t4
                  sll          t2, a5, sp
                  addi         s0, s0, -81
                  nop
                  bgeu         t6, s5, main_j1 #branch to jump instr
                  lui          s8, 141297
                  srai         a6, ra, 12
main_j1:          jalr         t0, s0, 81 #jump main -> sub_1
                  sltu         s5, s11, s3
                  slti         t5, s6, 1796
                  sll          gp, gp, a3
                  slt          s8, a1, t2
                  srli         t6, tp, 21
                  add          t5, a6, s8
                  bne          s8, s1, 19f
                  xori         s4, t0, -1628
                  add          a2, zero, t6
                  srai         a7, s0, 18
                  add          sp, a1, s4
                  lui          s2, 206906
18:               lui          s3, 168685
19:               bge          s11, s1, 23f
                  ori          s1, zero, -1244
                  and          s10, t2, t1
                  addi         s8, t3, -521
23:               slli         s1, s3, 11
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a5, a5, -24
                  add          zero, t3, ra
                  and          s3, s0, s8
                  and          t4, s2, tp
                  sw           t0, 4(a5)
                  slti         s1, a3, 1556
                  auipc        s9, 486623
                  sltu         s3, gp, a7
                  sra          a0, s2, s8
                  sll          ra, t6, s0
                  la           sp, region_1+1233 #start riscv_load_store_hazard_instr_stream_0
                  lb           s0, 14(sp)
                  lb           t0, 14(sp)
                  lb           s2, 4(sp)
                  lbu          t3, 4(sp)
                  ori          s4, a0, 695
                  sb           gp, 4(sp)
                  lbu          zero, 4(sp)
                  srl          ra, s1, a2
                  sb           t0, 4(sp)
                  sb           a4, 4(sp)
                  or           s7, a4, s5
                  srl          s8, s9, a2
                  lb           t5, -13(sp)
                  lhu          t0, 5(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_1+1239 #start load_store_instr_stream_1
                  la           a3, region_1+953 #start load_store_instr_stream_3
                  la           t0, region_1+1205 #start load_store_instr_stream_2
                  lh           ra, -653(a3)
                  la           a0, region_1+293 #start load_store_instr_stream_0
                  sb           ra, -154(a3)
                  sh           t3, 33(a0)
                  lbu          s8, -142(t0)
                  sh           s9, 3(a7)
                  lh           s1, 161(t0)
                  lb           ra, 45(a0)
                  lb           s5, -247(a3)
                  sb           s6, 16(a7)
                  lb           a2, -564(a3)
                  lb           s0, -60(a0)
                  lb           a6, 968(a3)
                  lbu          s6, -406(a3)
                  lhu          s10, 61(a0)
                  lb           zero, -14(a7)
                  sb           s4, -3(a0)
                  sb           t0, -12(t0)
                  lb           s8, -3(a7)
                  lb           t2, -2(a0)
                  sb           s6, -11(a7)
                  lb           a2, -28(a3)
                  lh           a6, -1(a7)
                  sb           s8, -33(a0)
                  lbu          s6, -173(t0)
                  lhu          s6, 479(a3)
                  lbu          zero, 12(a7)
                  sb           a4, -55(a0)
                  lbu          zero, -188(a3) #end load_store_instr_stream_3
                  sb           ra, 6(a7) #end load_store_instr_stream_1
                  lw           zero, 119(t0)
                  sb           ra, -237(t0) #end load_store_instr_stream_2
                  lbu          ra, 22(a0) #end load_store_instr_stream_0
                  bge          ra, a6, 2f
                  xor          s6, t5, s11
2:                bgeu         s7, a7, 14f
                  sltiu        t4, gp, -135
                  sltu         s1, t3, t6
                  sub          t5, s2, s1
                  srl          a0, s1, a3
                  bgeu         a1, s11, 19f
                  beq          t1, s1, 20f
                  slli         s2, s7, 20
                  sub          s2, a4, a6
                  xor          s9, s11, t1
                  slti         s5, s9, 1171
                  and          a7, s1, t4
14:               sub          t4, tp, a0
                  bgeu         s0, s1, 28f
                  lui          t0, 805276
                  blt          a1, t5, 22f
                  blt          s9, a1, 30f
19:               addi         s1, tp, -340
20:               ori          s8, t1, 1175
                  and          sp, s0, a2
22:               srai         t4, s9, 16
                  srli         t6, a7, 4
                  xor          t1, s4, s0
                  sra          ra, t1, s6
                  slti         gp, a3, -1153
                  slli         a0, a2, 15
28:               srai         t0, s5, 5
                  bne          s11, s0, 46f
30:               or           a0, s4, ra
                  sub          s1, zero, t6
                  sra          a3, t1, s6
                  sltiu        t6, a7, 1897
                  bltu         s1, a5, 48f
                  slti         s9, a7, 1580
                  or           s6, gp, a2
                  addi         s0, a5, 1844
                  slli         t3, t1, 23
                  srli         t1, s4, 11
                  srli         a4, a2, 5
                  nop
                  addi         s7, s2, 1667
                  xori         a4, gp, 816
                  sra          s5, a5, a7
                  beq          ra, sp, 63f
46:               srli         s5, a2, 20
                  slti         a2, t2, -1041
48:               bge          gp, t2, 57f
                  sra          s10, ra, t2
                  add          s4, a5, s11
                  srai         ra, a1, 6
                  bgeu         a6, t2, 54f
                  bge          t3, s0, 62f
54:               xor          a0, t3, a4
                  blt          s8, s7, 74f
                  or           tp, t1, a4
57:               sra          t3, a5, sp
                  sltiu        t1, a5, -15
                  slt          s8, t3, zero
                  andi         s6, s5, 1003
                  bge          t3, t2, 76f
62:               and          tp, gp, tp
63:               auipc        a0, 328174
                  add          t1, a6, a0
                  bne          s7, t4, 70f
                  slli         t5, a3, 31
                  addi         sp, gp, -1153
                  sll          t6, ra, s9
                  andi         a4, tp, 713
70:               bge          a1, t1, 80f
                  auipc        ra, 553681
                  bne          s1, tp, 87f
                  blt          t1, zero, 76f
74:               srl          t2, a0, t4
                  bgeu         t2, s0, 92f
76:               srai         t5, t4, 29
                  add          t6, a4, t1
                  slli         s2, gp, 25
                  slli         s1, sp, 28
80:               sltiu        s1, s7, -1013
                  bltu         s1, t6, 92f
                  sll          s2, s5, a4
                  auipc        s0, 23274
                  slti         s2, a4, -675
                  slti         s0, ra, 359
                  beq          s1, a3, 88f
87:               ori          s4, a6, 926
88:               slt          t3, s9, t4
                  bge          s4, a3, 97f
                  bne          s10, a3, 108f
                  lui          s8, 503762
92:               and          a7, t5, s11
                  andi         tp, t2, 1861
                  bgeu         a6, s9, 107f
                  sll          s8, s0, s4
                  bltu         t2, ra, 106f
97:               lui          s0, 588926
                  xor          t0, t3, s11
                  srl          zero, s11, tp
                  add          t6, a6, a0
                  xori         t4, s3, 1193
                  bgeu         s11, t4, 119f
                  nop
                  ori          a6, t4, -150
                  sub          s4, s9, a5
106:              bltu         s4, s6, 116f
107:              sub          a4, gp, s2
108:              beq          zero, t5, 119f
                  sltiu        ra, t4, 1801
                  or           s9, sp, t4
                  sltiu        a3, s10, 1920
                  bge          s9, t1, 114f
                  sltu         a6, t4, sp
114:              bltu         t3, a5, 116f
                  bltu         s8, s4, 117f
116:              srl          s9, s4, s4
117:              auipc        t6, 961792
                  sub          t1, a5, tp
119:              or           s5, s1, t3
                  srl          s4, s5, gp
                  slli         s6, s5, 29
                  slt          t4, t5, t6
                  blt          s9, zero, 134f
                  ori          gp, s7, -1521
                  andi         t1, s4, -613
                  sll          s5, a1, sp
                  slli         zero, tp, 6
                  bgeu         a4, s0, 130f
                  blt          ra, a3, 148f
130:              nop
                  sra          s3, s2, s4
                  andi         t3, s2, -75
                  sub          t5, s5, s9
134:              xor          t2, zero, s6
                  xor          a6, s3, t1
                  bge          s6, s4, 149f
                  sltiu        s6, s6, 304
                  sltu         a6, s8, sp
                  ori          s7, s6, -1727
                  auipc        s6, 705989
                  add          a7, s11, t4
                  sll          s4, a7, s2
                  lui          zero, 416263
                  addi         gp, a7, 1497
                  slt          sp, zero, t6
                  or           s9, s11, s9
                  xori         zero, s2, 439
                  la           sp, region_0+1338 #start riscv_load_store_rand_instr_stream_0
                  lb           ra, 70(sp)
                  lh           t4, 144(sp)
                  lb           a3, -677(sp)
                  lbu          t5, 241(sp)
                  xor          s3, ra, s11
                  add          ra, tp, a3
                  lui          a2, 531627
                  sra          zero, s6, a1
                  slti         zero, zero, 1111
                  sb           a4, -961(sp)
                  sh           zero, 446(sp)
                  xori         s10, a0, 1646
                  lbu          a0, -737(sp)
                  xori         ra, sp, -348
                  lbu          t5, -808(sp)
                  srli         s6, s1, 25
                  and          a2, t1, a1
                  sub          s0, gp, gp
                  andi         ra, t5, 1790
                  and          a3, t5, a4
                  or           t4, a7, s5
                  lbu          t5, -739(sp)
                  sra          t1, s4, a1
                  sltu         ra, t6, s9
                  or           a0, t2, ra
                  lb           t5, -355(sp)
                  sub          s6, s8, t6
                  sb           a3, 436(sp)
                  addi         s7, t6, -1171
                  sub          a0, s3, t4
                  sh           s9, -1338(sp) #end riscv_load_store_rand_instr_stream_0
148:              and          a3, s1, a7
149:              nop
                  bge          a3, ra, 152f
                  srl          s2, a0, s0
152:              sll          t1, a6, s2
                  lw           t0, 4(a5)
                  srli         s4, s2, 5
                  addi         s3, s0, -1093
                  slt          tp, s2, t0
                  addi         a5, a5, 24
                  srli         t6, s10, 31
                  sra          s8, t1, s10
253:              addi x8, x5, 0
253:              jalr x8, x8, 0
sub_2:            addi         a5, a5, -28
                  xor          s0, s9, s10
                  sra          t2, a2, a6
                  sw           t0, 4(a5)
                  addi         sp, t4, -1307
                  la           sp, region_1+1031 #start riscv_load_store_hazard_instr_stream_4
                  auipc        s6, 744946
                  sb           s1, 8(sp)
                  sb           s0, 8(sp)
                  sw           s9, -11(sp)
                  sh           t6, -11(sp)
                  lw           t3, -11(sp)
                  lbu          t6, -10(sp)
                  lb           a3, 10(sp)
                  sh           t3, -13(sp)
                  lb           t2, -4(sp)
                  sb           t4, -8(sp)
                  sra          s3, s11, a2
                  lh           s8, 3(sp)
                  lh           a4, 3(sp)
                  lh           s2, 7(sp)
                  sb           a0, 7(sp)
                  lhu          a6, 7(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           t6, region_1+288 #start riscv_load_store_rand_instr_stream_6
                  sb           t5, 1420(t6)
                  sltu         s4, t5, a1
                  sltiu        a4, zero, 334
                  addi         sp, t4, 688
                  sub          s5, gp, t1
                  or           a2, zero, tp
                  auipc        a7, 915040
                  auipc        tp, 738001
                  andi         s3, s6, -412
                  ori          s10, a5, 342
                  lui          s5, 236847
                  or           t3, a0, s2
                  lw           s9, 1580(t6)
                  addi         a6, ra, 309
                  sltu         t4, a5, zero
                  lui          a2, 237742
                  add          s4, gp, s7
                  lbu          t2, 1350(t6)
                  lb           a2, 141(t6)
                  sh           t0, -66(t6)
                  xor          s7, s4, a7
                  sh           s11, 870(t6)
                  lb           s4, 339(t6)
                  lh           s8, 856(t6)
                  sb           s7, -3(t6)
                  ori          t5, s6, 1357
                  slti         t4, s11, -1434
                  xor          a0, tp, a2
                  sll          s2, t1, ra
                  lb           tp, 1490(t6)
                  srai         t0, s9, 1
                  sw           a7, 1064(t6)
                  sb           t6, -18(t6)
                  srli         s5, s1, 27
                  slti         s4, s3, -782
                  lb           s9, 889(t6)
                  sra          s10, s5, a5
                  and          t0, s1, sp
                  slt          s8, t3, a0
                  slt          a3, tp, t1
                  lbu          a2, -81(t6)
                  addi         s7, s1, -1223
                  slti         a4, s6, -253
                  lhu          ra, 1674(t6)
                  lb           tp, 59(t6) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+389 #start riscv_load_store_rand_instr_stream_2
                  add          s9, t6, s5
                  sb           a2, 14(sp)
                  addi         s0, t1, 2044
                  lbu          t3, -12(sp)
                  or           s6, a3, zero
                  srai         s0, s11, 16
                  sltiu        t6, a7, -287
                  lbu          s10, 11(sp)
                  lbu          a2, 0(sp)
                  lb           a3, 4(sp)
                  srli         s5, s4, 11
                  or           a6, ra, a4
                  xori         s3, t5, -1338
                  lb           t3, 4(sp)
                  lh           s7, 15(sp)
                  lhu          s4, 11(sp)
                  sra          s5, s5, a7
                  srl          t4, s5, s3
                  lb           t0, -8(sp)
                  sltu         s9, a7, sp
                  srai         s4, s4, 11
                  nop
                  lb           a4, 14(sp)
                  sra          zero, s7, tp
                  add          s9, s9, s8
                  sh           a3, 3(sp)
                  lbu          s3, 16(sp)
                  addi         t0, s7, -125
                  sb           s1, -16(sp)
                  andi         tp, t4, -50
                  sb           sp, 1(sp)
                  sll          s0, a4, s1
                  lb           s4, -14(sp)
                  addi         s8, s9, 1943
                  lb           zero, 8(sp)
                  lbu          s7, -8(sp)
                  addi         t2, a3, -1895
                  lbu          a2, 10(sp)
                  slli         a7, t4, 14
                  lbu          t0, 6(sp)
                  lui          s2, 954794
                  sra          s9, s8, t4
                  sb           s8, -11(sp)
                  slti         s1, s5, -1611
                  sb           s0, -4(sp)
                  sb           sp, 3(sp)
                  lbu          ra, 12(sp)
                  sra          s7, t1, t2
                  sw           ra, 15(sp)
                  sb           s7, -12(sp)
                  lbu          a6, -10(sp)
                  lbu          t2, 8(sp)
                  slli         s0, s3, 24
                  lb           t5, -7(sp)
                  sub          gp, sp, s4
                  sb           s3, -4(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s10, region_1+1582 #start load_store_instr_stream_0
                  lbu          s0, -3(s10)
                  sb           s7, -30(s10)
                  la           s4, region_1+1570 #start load_store_instr_stream_1
                  sb           a2, 45(s10)
                  lhu          gp, 14(s4)
                  sh           a5, -44(s10)
                  sb           gp, -1(s4)
                  lbu          t5, -21(s10)
                  lb           s8, -8(s4)
                  lbu          a7, -74(s10)
                  sb           t0, -14(s4)
                  lhu          a0, -10(s4) #end load_store_instr_stream_1
                  sb           sp, -211(s10) #end load_store_instr_stream_0
                  la           s9, region_0+1274 #start load_store_instr_stream_1
                  la           a3, region_0+1854 #start load_store_instr_stream_3
                  lb           t4, -7(s9)
                  la           t1, region_0+1450 #start load_store_instr_stream_2
                  lb           tp, 7(t1)
                  sb           gp, -209(s9)
                  lbu          zero, -1(t1)
                  lb           s4, 185(s9)
                  lb           s6, 1(t1)
                  la           t0, region_0+1927 #start load_store_instr_stream_0
                  lhu          s1, 60(a3)
                  sh           s3, 8(t1)
                  lhu          ra, 57(t0)
                  sb           s10, -83(s9)
                  lw           s2, -10(t1)
                  lh           s3, 46(a3)
                  lbu          t2, -54(t0)
                  lb           s0, 9(t1)
                  lb           s5, 60(a3)
                  lh           sp, -33(t0)
                  lbu          t4, 55(a3)
                  sw           tp, -34(s9)
                  lw           a4, -62(a3)
                  lw           a6, -214(s9)
                  lb           s1, 147(s9) #end load_store_instr_stream_1
                  lhu          a4, 29(t0)
                  sw           s3, 50(a3)
                  lh           a4, -4(t1) #end load_store_instr_stream_2
                  lbu          s7, 9(a3) #end load_store_instr_stream_3
                  lb           sp, 58(t0) #end load_store_instr_stream_0
                  la           t6, region_0+317 #start load_store_instr_stream_2
                  la           s1, region_0+1625 #start load_store_instr_stream_1
                  la           a0, region_0+1616 #start load_store_instr_stream_0
                  lb           ra, 13(t6)
                  lhu          t3, 15(s1)
                  lhu          zero, 29(t6)
                  lw           s4, 12(a0)
                  lb           ra, -989(a0)
                  lb           s10, -1491(a0)
                  lbu          a7, -273(a0)
                  sb           s3, 48(t6)
                  sh           a4, -1600(a0)
                  lbu          t3, 14(s1)
                  lbu          t4, 16(t6)
                  sb           s5, 0(s1)
                  sb           s7, -1007(a0)
                  lhu          s2, 45(t6)
                  sb           t1, 16(s1)
                  lb           gp, -28(t6)
                  sb           a3, -9(s1)
                  sb           s8, -51(t6) #end load_store_instr_stream_2
                  lbu          a6, 4(s1) #end load_store_instr_stream_1
                  lb           t1, -1581(a0) #end load_store_instr_stream_0
                  la           sp, region_1+878 #start riscv_load_store_rand_instr_stream_0
                  lbu          s3, -21(sp)
                  srl          t3, a0, a7
                  and          t2, tp, t1
                  srai         s4, a6, 25
                  slti         t4, a0, -701
                  lui          t5, 260543
                  xori         s5, t3, -1986
                  srli         a0, gp, 3
                  lh           s4, 18(sp)
                  add          t6, a1, a1
                  slti         tp, s10, -377
                  srai         t4, s11, 31
                  and          s0, a7, tp
                  srai         tp, t3, 24
                  sltu         t4, s5, ra
                  slli         t0, t2, 23
                  lh           s4, -10(sp)
                  slt          t3, sp, t1
                  ori          s10, ra, -1920
                  slt          s2, s9, sp
                  lb           a2, -20(sp)
                  nop
                  sll          t4, t4, a1
                  nop
                  sh           s3, -12(sp)
                  xori         t5, tp, 2011
                  sb           s9, 51(sp)
                  lb           a6, -10(sp)
                  add          t4, s1, a3
                  sh           s6, -14(sp)
                  sb           gp, -13(sp)
                  sub          a3, t3, a3
                  sh           s6, 26(sp)
                  lbu          t3, 55(sp)
                  sll          s6, s0, t2
                  ori          t3, tp, 610
                  slti         a6, s5, -567
                  andi         s4, gp, -1464
                  xori         a7, t5, 600
                  sub          a2, sp, t6
                  lb           t1, -49(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_1+959 #start riscv_load_store_rand_instr_stream_5
                  sra          s2, s2, t4
                  add          a7, t1, gp
                  slti         zero, t1, -90
                  addi         t5, tp, -1847
                  xor          s8, ra, t1
                  lbu          s10, 47(t1)
                  xori         s7, a0, -1336
                  sll          sp, a3, t2
                  slli         s2, s8, 15
                  lui          a0, 660042
                  or           s2, t3, a6
                  slt          t0, a6, s11
                  lbu          s0, 37(t1)
                  add          tp, a5, s1
                  sltiu        s3, a6, -530
                  addi         s3, a6, -1801
                  lw           t6, 21(t1)
                  lb           t4, 8(t1)
                  or           a3, t0, s3
                  sb           a7, -64(t1)
                  lb           t0, 11(t1)
                  andi         a7, t3, -868
                  ori          s5, t1, 973
                  sh           s11, -9(t1)
                  lhu          s10, 15(t1)
                  lbu          s7, 11(t1)
                  lh           s5, -49(t1)
                  sra          s9, a6, s10
                  add          gp, s11, a1
                  sb           tp, 22(t1)
                  xor          a4, t0, t3
                  lh           t2, 23(t1)
                  lb           s8, 44(t1)
                  lb           a4, 30(t1)
                  lbu          s8, 14(t1)
                  sub          t4, s5, s11
                  and          t4, sp, t3
                  sb           a3, 17(t1)
                  lbu          t4, 43(t1) #end riscv_load_store_rand_instr_stream_5
                  la           s5, region_0+224 #start riscv_load_store_hazard_instr_stream_5
                  lw           s7, 16(s5)
                  sh           a2, 16(s5)
                  sb           t5, 16(s5)
                  lbu          s2, 16(s5)
                  sb           t4, 16(s5)
                  lui          s7, 698240
                  lb           t1, 16(s5)
                  lh           gp, 16(s5)
                  lhu          sp, -14(s5)
                  sb           s1, -14(s5)
                  lbu          a4, -14(s5)
                  or           s10, s10, t3
                  sb           t6, -14(s5)
                  srai         s10, s7, 4
                  sb           a7, -14(s5)
                  sh           t2, -14(s5)
                  sb           a1, 13(s5)
                  lb           s3, 13(s5)
                  ori          sp, sp, -1157
                  sb           s7, 13(s5)
                  slli         s1, s2, 11
                  sb           a4, 15(s5)
                  xori         t1, gp, -637
                  lw           s1, -12(s5)
                  sh           s4, -12(s5) #end riscv_load_store_hazard_instr_stream_5
                  la           s5, region_0+1706 #start load_store_instr_stream_4
                  la           t3, region_0+122 #start load_store_instr_stream_2
                  la           s0, region_0+12 #start load_store_instr_stream_3
                  lbu          s1, 31(s0)
                  la           a3, region_0+1285 #start load_store_instr_stream_1
                  lb           s2, -51(t3)
                  lb           s1, 5(s0)
                  la           s3, region_0+403 #start load_store_instr_stream_0
                  sb           s7, 198(s3)
                  sb           a4, 10(a3)
                  lh           gp, 6(s0)
                  sb           t4, 208(s3)
                  lb           s7, 55(s0)
                  lbu          t5, -15(s3)
                  sb           s10, 26(t3)
                  lb           a2, 16(a3)
                  lb           gp, -9(t3)
                  sb           sp, 3(s5)
                  lh           tp, 30(t3)
                  lh           s4, -125(s3)
                  sb           t5, -19(t3)
                  lb           a7, 19(s0)
                  sb           t5, -49(t3)
                  lbu          s1, 31(s0)
                  lb           a2, -115(s3)
                  sb           s9, 18(s5)
                  sb           t5, 6(a3)
                  lb           a2, -4(a3)
                  lw           s10, 56(s0) #end load_store_instr_stream_3
                  lb           s6, -47(s5)
                  lw           a7, 41(s3)
                  lb           tp, -31(s5)
                  lbu          s9, 16(a3)
                  sb           s11, -227(s3)
                  lb           s7, 13(a3)
                  lbu          t5, 7(s5)
                  sh           s7, 5(a3)
                  sb           s10, 51(s5)
                  lbu          a0, -124(s3)
                  lb           sp, -179(s3)
                  lb           t0, -53(t3) #end load_store_instr_stream_2
                  lbu          s2, 8(a3)
                  lbu          t4, -23(s5) #end load_store_instr_stream_4
                  lbu          a6, 3(a3) #end load_store_instr_stream_1
                  lb           ra, 78(s3) #end load_store_instr_stream_0
                  la           sp, region_0+466 #start riscv_load_store_hazard_instr_stream_7
                  sb           a0, 197(sp)
                  xori         a2, t6, 878
                  sb           a0, 197(sp)
                  lbu          a2, 197(sp)
                  andi         t5, s9, -2004
                  auipc        a4, 960508
                  srl          t2, s6, s2
                  sb           a4, 197(sp)
                  srai         s10, s9, 2
                  slli         gp, a5, 3
                  sb           zero, -253(sp)
                  lb           t3, -253(sp)
                  lb           t1, -253(sp)
                  lbu          s4, -253(sp)
                  srli         a2, s8, 8
                  lbu          s0, -253(sp)
                  lbu          t0, -253(sp) #end riscv_load_store_hazard_instr_stream_7
                  la           s2, region_1+1612 #start load_store_instr_stream_1
                  la           a0, region_1+1870 #start load_store_instr_stream_0
                  la           t0, region_1+468 #start load_store_instr_stream_4
                  sh           ra, 128(t0)
                  la           gp, region_1+1917 #start load_store_instr_stream_3
                  la           ra, region_1+1908 #start load_store_instr_stream_2
                  sb           a3, 212(t0)
                  sb           a2, 58(gp)
                  lb           t5, 162(s2)
                  lh           zero, -236(t0)
                  lb           zero, 175(s2)
                  lbu          s5, -18(gp)
                  lhu          t5, -162(ra)
                  lbu          s0, -27(t0)
                  lbu          t2, -107(s2)
                  lhu          s1, 214(t0)
                  lb           t6, -41(ra)
                  lbu          s8, -350(a0)
                  sb           s4, 110(s2)
                  sh           s10, -35(gp)
                  lh           tp, -86(a0)
                  lb           s1, -85(s2)
                  lb           s6, 58(gp)
                  sb           a7, -43(a0)
                  lbu          t5, 9(gp)
                  sb           tp, -149(s2)
                  lbu          t1, 5(t0)
                  lb           s3, 125(s2)
                  sb           a5, -14(gp)
                  lhu          t4, -208(ra)
                  lhu          t1, -1086(a0)
                  lbu          a2, 108(t0)
                  lb           s0, -61(s2)
                  lb           s3, 55(ra)
                  sb           a3, 56(gp)
                  lbu          s0, -191(s2)
                  lb           tp, -232(t0) #end load_store_instr_stream_4
                  lbu          s10, -18(gp) #end load_store_instr_stream_3
                  lbu          s1, -87(s2) #end load_store_instr_stream_1
                  lb           s1, 67(ra) #end load_store_instr_stream_2
                  sb           t1, -941(a0) #end load_store_instr_stream_0
                  la           s6, region_0+53 #start riscv_load_store_hazard_instr_stream_0
                  sb           t6, -50(s6)
                  nop
                  srl          t6, a5, a4
                  slli         a6, s7, 15
                  sb           t0, -50(s6)
                  lbu          a6, -50(s6)
                  lb           s4, 86(s6)
                  srli         a7, t3, 7
                  lhu          s0, 37(s6)
                  sb           a5, 37(s6)
                  lh           t5, 37(s6)
                  sltu         a7, s0, s1
                  slt          a3, s1, s4
                  sh           s11, 37(s6)
                  nop
                  sb           t3, 37(s6)
                  lh           a7, 37(s6) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+1385 #start load_store_instr_stream_1
                  la           s2, region_1+886 #start load_store_instr_stream_0
                  lh           a2, 89(a3)
                  sb           gp, -509(s2)
                  lb           t2, 44(a3)
                  sb           t4, -570(s2)
                  sb           sp, -426(s2)
                  lbu          s3, -166(a3)
                  sb           s2, 287(s2)
                  sb           a5, 64(a3)
                  lb           t3, 86(a3)
                  lb           a2, -67(s2)
                  lw           t2, 214(s2)
                  sb           zero, -181(s2)
                  sw           s9, 183(a3) #end load_store_instr_stream_1
                  lh           a0, 568(s2) #end load_store_instr_stream_0
                  la           t2, region_0+129 #start riscv_load_store_hazard_instr_stream_3
                  slti         t0, t1, 550
                  sh           sp, -15(t2)
                  sb           a6, -15(t2)
                  lbu          t0, -4(t2)
                  sra          a0, t3, t4
                  lbu          a0, -4(t2)
                  lb           s1, -16(t2)
                  sll          gp, s2, t2
                  slli         zero, a5, 28
                  sll          a4, t3, a2
                  lb           s5, -6(t2)
                  sb           zero, -6(t2)
                  sb           s10, 7(t2)
                  sh           s9, 7(t2)
                  lh           gp, 7(t2) #end riscv_load_store_hazard_instr_stream_3
                  la           tp, region_0+28 #start load_store_instr_stream_2
                  la           a4, region_0+1381 #start load_store_instr_stream_1
                  sb           zero, -3(tp)
                  la           a6, region_0+960 #start load_store_instr_stream_0
                  la           s0, region_0+1078 #start load_store_instr_stream_3
                  lhu          s6, 58(tp)
                  sb           zero, 9(s0)
                  lbu          a7, -36(a6)
                  lhu          t3, 217(a4)
                  lbu          a0, 17(tp)
                  lw           t3, 195(a4)
                  lb           sp, -173(a4)
                  sh           a4, 50(a6)
                  lbu          s9, -8(s0)
                  lhu          t3, -39(a4)
                  sw           t2, 8(a6)
                  lbu          s7, 43(tp)
                  sb           a1, -25(a6)
                  lb           t2, -17(a6)
                  sb           zero, -216(a4)
                  lh           a2, 62(tp)
                  sw           gp, 32(a6)
                  sh           s11, 14(s0)
                  sb           t4, 98(a4)
                  lw           t1, -6(s0)
                  lb           a0, -1(s0)
                  lw           ra, -2(s0)
                  lb           s3, 73(a4)
                  lw           s3, -117(a4)
                  sb           s2, -2(tp) #end load_store_instr_stream_2
                  sw           s11, 40(a6)
                  lb           zero, -9(s0) #end load_store_instr_stream_3
                  lhu          s9, -41(a4) #end load_store_instr_stream_1
                  lbu          s1, -61(a6)
                  sb           t0, 21(a6) #end load_store_instr_stream_0
                  la           t1, region_1+763 #start riscv_load_store_hazard_instr_stream_6
                  lb           s6, -32(t1)
                  sh           s10, 143(t1)
                  lbu          s7, 247(t1)
                  lui          ra, 672416
                  and          a4, a4, a4
                  lhu          s6, -17(t1)
                  sh           a2, -89(t1)
                  sh           a4, -89(t1)
                  sb           s3, -89(t1)
                  sb           s9, -89(t1)
                  lbu          a6, -168(t1)
                  lbu          gp, -168(t1)
                  lb           a0, 20(t1)
                  sb           a1, 222(t1)
                  lbu          s3, -129(t1)
                  srl          a2, t1, t0
                  lb           zero, -129(t1)
                  srai         tp, s9, 1
                  lhu          sp, -129(t1)
                  add          s2, s6, t2
                  srai         t6, t3, 26
                  lbu          t5, 204(t1)
                  sb           a3, 16(t1)
                  lb           a0, 16(t1) #end riscv_load_store_hazard_instr_stream_6
                  la           s3, region_0+19 #start riscv_load_store_hazard_instr_stream_2
                  sh           s6, 1175(s3)
                  sb           t4, 598(s3)
                  lbu          a0, 598(s3)
                  sb           t3, 534(s3)
                  sb           t4, 696(s3)
                  lbu          a7, 696(s3)
                  sll          gp, t0, a1
                  sll          t2, s11, s4
                  add          a0, t4, a0
                  slt          t2, s1, s5
                  lbu          s7, 730(s3)
                  lb           s6, 730(s3)
                  lbu          t4, 1228(s3)
                  lbu          sp, 1534(s3)
                  slt          s1, t4, zero
                  lb           s9, 72(s3)
                  auipc        t2, 226523
                  lb           s10, 72(s3)
                  lb           a0, 452(s3)
                  sb           s3, 452(s3)
                  lh           a2, 1309(s3)
                  sh           t5, 1309(s3)
                  sb           s2, 1346(s3)
                  lb           s1, 1812(s3)
                  sb           s6, 1652(s3)
                  lbu          a7, 1652(s3) #end riscv_load_store_hazard_instr_stream_2
                  la           ra, region_1+1145 #start riscv_load_store_rand_instr_stream_3
                  sb           a5, 52(ra)
                  srli         s9, s11, 5
                  sb           s9, 28(ra)
                  srai         s2, s5, 26
                  and          s6, a5, s0
                  slti         s4, a3, -1097
                  or           a7, a1, a2
                  lh           t6, -13(ra)
                  sb           t1, -26(ra)
                  sltu         t0, s4, a2
                  auipc        t1, 85022
                  lb           t6, 2(ra)
                  ori          a0, ra, -1933
                  sb           s0, 18(ra)
                  addi         s10, s5, -836
                  sltiu        s5, a6, -462
                  lb           t3, -22(ra)
                  xor          s7, a6, a7
                  sra          t2, t2, s4
                  or           t3, t5, a1
                  xor          s4, t0, a5
                  lbu          s6, -60(ra)
                  sub          s5, t0, a3
                  and          a7, t6, ra
                  slti         a6, a0, 961
                  lb           s7, 39(ra)
                  sll          t6, s7, s11
                  lb           t3, 14(ra)
                  and          t6, tp, s1
                  sll          t0, ra, a4
                  slt          s10, a5, s5
                  lhu          s0, -35(ra)
                  sb           t0, -4(ra)
                  sh           a6, 43(ra)
                  sb           s3, -7(ra) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+1120 #start riscv_load_store_rand_instr_stream_4
                  lbu          tp, 214(s9)
                  or           t4, s4, s2
                  lw           a6, -580(s9)
                  srai         a0, gp, 5
                  lbu          t5, -1027(s9)
                  xori         ra, s5, -190
                  sltiu        a6, a2, 799
                  slli         a2, s7, 13
                  sub          s10, s1, a4
                  sb           t0, 521(s9)
                  lbu          s1, 363(s9)
                  lui          s0, 907386
                  nop
                  ori          t0, s5, 114
                  ori          t6, ra, 842
                  ori          tp, s0, 163
                  srl          s6, a7, zero
                  slli         s3, s11, 13
                  auipc        t3, 24141
                  sb           s4, -639(s9)
                  lbu          a6, -809(s9)
                  lbu          s7, -679(s9)
                  lh           s6, -1118(s9)
                  slli         s5, tp, 11
                  sltiu        s1, t2, 1358
                  xor          ra, a6, a2
                  xori         t2, s11, 653
                  slt          t1, s3, s2
                  sb           t4, -313(s9)
                  or           a7, t5, s2
                  sltiu        t0, a2, -376
                  lbu          s7, -590(s9) #end riscv_load_store_rand_instr_stream_4
                  la           t6, region_1+1783 #start load_store_instr_stream_0
                  la           s2, region_1+852 #start load_store_instr_stream_1
                  la           t4, region_1+1714 #start load_store_instr_stream_3
                  lbu          s3, -36(s2)
                  la           t1, region_1+1305 #start load_store_instr_stream_2
                  lb           a2, -14(t1)
                  sb           s3, -320(t6)
                  lb           a7, 19(t4)
                  lb           t0, -1011(t6)
                  sh           s4, -15(t1)
                  sb           a2, 25(t4)
                  lbu          t5, -5(t1)
                  lhu          a4, -26(s2)
                  lb           s8, -27(t4)
                  lbu          s1, -451(t6)
                  lb           t3, -59(t4)
                  lw           s3, 15(t1)
                  sb           s6, -61(t4)
                  lbu          s6, -17(t4)
                  sb           a4, 15(t6)
                  sw           a7, -16(s2)
                  sb           s5, -1074(t6)
                  sh           s11, 11(t1)
                  sb           t6, 26(t4)
                  lh           s7, -849(t6)
                  sb           s7, 14(t1)
                  sb           a7, -26(s2)
                  lhu          s1, 30(t4) #end load_store_instr_stream_3
                  lh           ra, -973(t6)
                  lb           s4, 5(t1) #end load_store_instr_stream_2
                  lhu          t5, 12(s2)
                  lbu          s10, -897(t6)
                  lh           a6, 34(s2) #end load_store_instr_stream_1
                  lbu          s9, -978(t6) #end load_store_instr_stream_0
                  la           s5, region_0+1012 #start riscv_load_store_rand_instr_stream_7
                  lb           s7, 9(s5)
                  lbu          t0, -7(s5)
                  sb           a3, -25(s5)
                  lh           t0, 58(s5)
                  sb           a1, -51(s5)
                  lb           s1, -18(s5)
                  or           s8, a5, a5
                  lbu          a6, 49(s5)
                  xori         s1, a1, 883
                  sw           s11, -16(s5)
                  sb           s5, 45(s5)
                  sra          s2, sp, t2
                  lbu          a4, 19(s5)
                  srl          gp, s11, s7
                  lb           t3, -25(s5)
                  xor          ra, t0, a1
                  add          s7, a0, s5
                  lb           a7, 39(s5)
                  srli         a0, s9, 29
                  lbu          a2, -59(s5)
                  sb           a4, -11(s5)
                  lui          ra, 149094
                  lb           a2, -31(s5)
                  lbu          s7, 21(s5)
                  lw           s10, -40(s5)
                  lb           sp, -47(s5)
                  lui          t2, 414383
                  andi         tp, t5, -400
                  lbu          zero, 23(s5)
                  sb           t2, 2(s5)
                  sll          t3, s0, t2
                  sltiu        s7, s10, 484
                  and          tp, t5, a0
                  sub          t6, t0, a1
                  ori          s1, a0, -1945
                  lbu          s7, -17(s5)
                  sra          a0, sp, s9
                  and          a6, sp, s8
                  sltu         ra, s8, a6
                  xor          t2, s0, a7
                  lh           tp, -64(s5)
                  sb           a6, 54(s5)
                  sh           t1, -52(s5)
                  or           t1, sp, t2
                  lbu          s3, 47(s5)
                  lbu          s2, 44(s5) #end riscv_load_store_rand_instr_stream_7
                  la           t0, region_1+998 #start riscv_load_store_rand_instr_stream_1
                  srl          t4, zero, a6
                  sw           zero, -2(t0)
                  add          t1, s5, a4
                  sb           t4, -14(t0)
                  and          a6, s5, s10
                  ori          s6, a2, 1951
                  andi         t2, tp, -1003
                  sh           s7, -8(t0)
                  sll          s6, a2, a1
                  slli         s8, tp, 7
                  sb           t6, -13(t0)
                  auipc        a3, 86264
                  srl          ra, a5, t2
                  lh           a2, 12(t0)
                  lh           gp, -16(t0)
                  slt          s0, a5, s9
                  lb           tp, 2(t0)
                  sb           s8, 1(t0)
                  sb           ra, 9(t0)
                  nop
                  lbu          t4, -1(t0)
                  and          t1, t1, a1
                  lbu          s9, 9(t0)
                  sb           ra, 7(t0)
                  lb           s10, -7(t0)
                  sltu         t3, s4, s11
                  srl          a0, t0, gp
                  sll          s9, t2, s3
                  srl          tp, s6, s6
                  sltiu        s0, s8, -676
                  or           s4, t0, s1
                  xor          s7, s1, t0
                  auipc        s10, 480796
                  add          s1, gp, s2
                  lbu          a3, -13(t0)
                  lb           sp, 7(t0)
                  lb           s8, 1(t0)
                  lb           a7, -13(t0) #end riscv_load_store_rand_instr_stream_1
                  andi         s0, gp, 48
                  bge          zero, t2, 13f
                  andi         a0, s4, -827
                  sll          s5, a2, t3
                  srli         a7, s1, 7
                  bltu         t1, a3, 13f
                  srai         tp, t2, 28
                  or           s7, s8, gp
                  sll          a2, s6, a6
                  xori         sp, a1, -1611
                  bgeu         s8, a2, 27f
                  and          t4, a5, s0
                  andi         s2, a0, -1590
13:               bge          s6, tp, 31f
                  sltu         gp, s10, a4
                  sll          s0, s10, s10
                  ori          t0, gp, -1762
                  and          t4, s8, a7
                  srai         t5, a2, 26
                  xor          t4, ra, s5
                  slli         s5, zero, 28
                  or           s9, s9, gp
                  sltiu        zero, s10, -1101
                  bne          s6, ra, 42f
                  sll          sp, ra, t3
                  bne          t1, sp, 38f
                  bgeu         t1, a6, 46f
27:               add          t2, a2, a1
                  sll          t5, sp, s6
                  xori         s8, s7, 843
                  sll          a3, a3, s3
31:               srai         sp, a7, 15
                  andi         s6, s3, -499
                  xori         sp, s2, 614
                  lui          s1, 346301
                  sltiu        t3, t4, 1993
                  and          tp, t1, s10
                  blt          a5, sp, 40f
38:               slti         a3, ra, 1791
                  andi         a3, a7, 1771
40:               sub          t6, a3, a6
                  srli         gp, s2, 21
42:               beq          s4, a6, 60f
                  lui          s4, 470848
                  blt          s3, t3, 50f
                  or           t4, s6, gp
46:               auipc        a3, 292945
                  nop
                  blt          s0, s2, 63f
                  lui          s10, 563919
50:               andi         zero, s3, -1695
                  srai         s5, a4, 29
                  srli         s8, t0, 17
                  bgeu         tp, a2, 60f
                  sub          t6, ra, t3
                  lui          s2, 715182
                  sltiu        a0, s9, 881
                  bgeu         t0, t3, 58f
58:               sltu         tp, t3, s3
                  ori          s7, tp, 1272
60:               sltiu        s7, ra, -304
                  xor          t4, tp, t1
                  srl          sp, a4, a2
63:               sub          gp, a6, a5
                  beq          t2, s2, 80f
                  or           s2, ra, s5
                  andi         ra, s3, 652
                  bge          zero, a0, 70f
                  lui          a3, 33913
                  add          a6, s9, t6
70:               srl          t2, s6, t1
                  or           s8, t6, gp
                  bltu         s3, a2, 89f
                  bne          s10, tp, 76f
                  srl          ra, a3, s4
                  sltiu        a7, a7, 1235
76:               slti         s4, s0, 138
                  add          s7, a2, sp
                  bne          a2, zero, 87f
                  slt          t1, s4, s5
80:               lui          a4, 231519
                  slt          a3, ra, sp
                  slt          t2, s9, s1
                  srai         s0, t2, 17
                  sltu         gp, t4, zero
                  lui          s3, 192025
                  xori         t1, a1, -735
87:               and          s1, t0, s6
                  srai         t6, s0, 29
89:               bge          a3, sp, 107f
                  srl          s4, t6, s0
                  sra          tp, sp, s4
                  srl          t6, gp, s4
                  auipc        sp, 149837
                  bgeu         a6, s1, 105f
                  slti         a7, t1, -1939
                  blt          s0, s11, 116f
                  sltiu        t2, t3, 1375
                  bgeu         s7, a1, 106f
                  sltu         s10, a6, s6
                  lui          tp, 663917
                  auipc        a4, 236575
                  srli         t5, ra, 21
                  sra          s3, zero, t6
                  bne          zero, t6, 113f
105:              sltiu        t0, s1, 494
106:              srai         s8, t0, 2
107:              srl          tp, s7, s3
                  xori         s9, t5, 825
                  srai         t1, s6, 30
                  srl          zero, s0, a5
                  and          ra, t3, a0
                  sll          a6, t4, s11
113:              xor          t1, t4, a4
                  and          t3, s8, ra
                  beq          s7, s0, 130f
116:              add          s6, s3, s5
                  blt          s4, a6, 136f
                  andi         s4, s5, -788
                  bge          s4, s11, 135f
                  slti         a6, s9, 1604
                  bltu         s2, s2, 140f
                  bne          t4, s9, 131f
                  slti         a7, s5, -582
                  blt          zero, s5, 132f
                  lui          s8, 380044
                  bltu         t2, a4, 140f
                  sub          s1, sp, s8
                  slti         s8, sp, 495
                  lui          s3, 964522
130:              addi         s5, gp, 85
131:              auipc        a0, 537980
132:              srai         a6, t6, 29
                  add          s7, t5, a6
                  sltiu        a2, a2, -1352
135:              bgeu         s9, zero, 151f
136:              sltiu        s4, t2, 1178
                  or           s3, tp, a0
                  srli         s2, s7, 5
                  srai         t1, s8, 12
140:              sltu         t1, s8, a4
                  srl          t5, s7, s2
                  srai         zero, a6, 29
                  addi         t6, s7, 2017
                  sra          t3, zero, t6
                  blt          s3, t1, 164f
                  bne          a7, s1, 157f
                  xori         a3, s10, -786
                  slti         a3, a2, -1496
                  andi         a6, a0, -346
                  bge          tp, s7, 165f
151:              bne          s6, t5, 168f
                  lui          s8, 621123
                  xor          zero, s9, s1
                  bltu         t6, s6, 171f
                  sll          s6, t0, ra
                  bltu         t6, s7, 163f
157:              sltu         a6, a5, a2
                  bne          t4, a6, 177f
                  blt          s3, t2, 171f
                  sltu         a4, t3, s2
                  srl          a6, a1, gp
                  auipc        s6, 351187
163:              srai         s9, a1, 27
164:              or           s6, a7, a1
165:              slt          a0, t6, a3
                  addi         t4, s1, -1
                  and          s9, ra, gp
168:              andi         s2, zero, 903
                  nop
                  srli         s0, s7, 2
171:              slt          t3, s9, t0
                  ori          s9, s5, -202
                  sra          t0, s4, tp
                  addi         ra, s10, -383
                  srai         s3, s1, 6
                  sltu         s2, a5, s7
177:              slti         s5, gp, 1769
                  blt          t0, t1, 186f
                  bne          a6, s9, 188f
                  or           a7, a2, s3
                  xori         s10, t1, 569
                  add          s10, sp, t2
                  lui          s9, 312610
                  sra          sp, zero, s8
                  sll          s9, s3, t6
186:              slli         t1, t6, 2
                  and          s10, s8, s9
188:              nop
                  auipc        s0, 827281
                  sltiu        t5, a2, -1092
                  srai         sp, gp, 4
                  nop
                  sra          t6, t3, s1
                  srai         t6, s5, 10
                  nop
                  sra          s6, a5, s11
                  bltu         s7, a7, 215f
                  nop
                  andi         t3, tp, 1350
                  srli         a7, a1, 24
                  or           t2, t3, s5
                  xori         s10, s7, -877
                  srli         a3, a2, 29
                  srli         a2, t4, 14
                  or           a3, t6, s11
                  srai         ra, a5, 18
                  bltu         ra, s4, 215f
                  nop
                  sll          s1, a7, s6
                  or           s2, s6, gp
                  srl          a2, a2, s3
                  xori         a2, s0, 311
                  srl          t1, t1, s8
                  srli         s8, t1, 22
215:              ori          s7, s0, 1668
                  xori         gp, s3, 1949
                  and          ra, s9, a6
                  slli         a0, a1, 12
                  bltu         a4, s8, 222f
                  sub          s5, s5, zero
                  andi         s8, a4, -122
222:              srl          a2, a6, t4
                  slti         t6, t1, -1513
                  sll          tp, s8, s0
                  srli         t1, t1, 21
                  slt          a6, a2, t4
                  ori          t3, s2, 1312
                  sub          t1, t0, tp
                  xor          s5, sp, gp
                  addi         zero, s5, 1920
                  xori         s0, a5, -1837
                  sub          a4, a4, a7
                  and          a2, a5, gp
                  slt          ra, a6, t0
                  nop
                  ori          s6, s10, -622
                  and          a6, s4, t6
                  sra          sp, t2, sp
                  sltiu        sp, a5, -357
                  sub          s9, tp, s3
                  srl          ra, s2, s6
                  bne          a5, a2, 256f
                  srli         s5, s3, 30
                  beq          s9, s0, 252f
                  auipc        t3, 788527
                  nop
                  srai         ra, s4, 8
                  sltiu        zero, t3, 799
                  add          a2, t6, t1
                  auipc        t3, 864321
                  xori         zero, s7, -2045
252:              ori          s10, zero, -136
                  slt          t1, t3, s8
                  or           ra, t2, sp
                  slti         a2, t5, 1062
256:              and          s8, gp, a7
                  auipc        t3, 289169
                  and          t1, a2, s3
                  beq          tp, a7, 265f
                  slt          tp, ra, s6
                  auipc        s5, 108423
                  or           s10, zero, s9
                  andi         zero, a4, 424
                  srai         s9, a1, 18
265:              srli         s9, a0, 6
                  bltu         a2, s0, 284f
                  andi         t4, t1, -1299
                  addi         t3, a0, 1587
                  blt          t4, s2, 289f
                  srl          s3, a2, t3
                  ori          t5, gp, 701
                  sltiu        gp, zero, -1020
                  ori          s6, s3, -287
                  and          zero, a0, s6
                  beq          a6, s0, 291f
                  auipc        a3, 719509
                  srli         a7, sp, 0
                  or           s2, s1, gp
                  nop
                  sra          t0, t2, ra
                  bne          s7, a5, 296f
                  srli         s10, t4, 26
                  sltu         t3, s10, t6
284:              bltu         gp, a1, 285f
285:              bne          s6, s1, 298f
                  sltiu        a7, s6, -500
                  sub          tp, a7, gp
                  sltiu        t3, a2, -561
289:              lui          a0, 732883
                  addi         s8, a5, -933
291:              sll          t2, a3, t4
                  and          t1, gp, sp
                  addi         s10, s11, -1042
                  add          a4, t3, t5
                  sltu         a0, a6, a1
296:              andi         a0, t0, -24
                  slt          a0, s7, t3
298:              slt          t1, s6, s8
                  nop
                  srl          gp, s10, zero
                  srl          t1, zero, s1
                  sub          s3, a1, t4
                  sll          t0, s10, a3
                  nop
                  blt          a6, s11, 323f
                  slt          t6, ra, s2
                  sltu         s5, t2, s4
                  beq          s7, t0, 311f
                  xori         zero, a5, -766
                  slt          t5, s1, s9
311:              slt          s7, sp, s11
                  srli         t4, sp, 23
                  bltu         s10, s3, 322f
                  srl          a4, t0, s8
                  blt          t5, s6, 318f
                  sltu         s1, s8, t0
                  srai         s7, a0, 11
318:              beq          a3, gp, 327f
                  nop
                  beq          t5, a2, 340f
                  srli         s7, s10, 17
322:              xori         t3, tp, -155
323:              nop
                  sll          s5, s4, t3
                  sltu         t5, s11, a6
                  and          a4, a5, s8
327:              ori          s0, t6, -1041
                  slti         a2, tp, 465
                  sltiu        s5, s6, 1105
                  sub          a7, s8, s4
                  lui          s2, 352951
                  srl          s2, sp, ra
                  bgeu         a1, s0, 352f
                  srli         a4, s0, 26
                  beq          a1, zero, 349f
                  slli         s8, s5, 24
                  blt          tp, a6, 346f
                  slti         s8, s9, 1887
                  addi         a3, s5, 1294
340:              lui          a6, 735310
                  add          tp, s3, gp
                  slli         t2, s3, 19
                  sltu         tp, t3, a3
                  auipc        s2, 316215
                  bgeu         s11, s1, 348f
346:              add          t1, a7, s8
                  srli         s10, s9, 5
348:              sra          a0, s0, gp
349:              sll          a2, s7, t3
                  srli         a3, t3, 10
                  and          sp, ra, t5
352:              andi         t0, s10, 1082
                  srai         a2, s2, 17
                  addi         zero, a4, -356
                  sll          t5, s10, tp
                  bgeu         s11, t6, 375f
                  beq          t3, a0, 366f
                  addi         a7, t3, -1771
                  sltiu        t5, s10, -1426
                  sll          t0, gp, t6
                  srl          tp, a3, a0
                  add          s0, a7, t4
                  slli         t4, a4, 21
                  srli         a3, ra, 28
                  slt          t5, a3, s3
366:              auipc        ra, 729718
                  bltu         sp, s11, 385f
                  xori         t2, tp, 46
                  ori          a0, a4, -1149
                  andi         s10, s8, 1005
                  srl          a4, s4, s11
                  add          sp, s3, a4
                  srl          a2, ra, s8
                  sub          s0, gp, s10
375:              ori          t6, s11, -306
                  slti         a4, ra, 814
                  bge          s4, t1, 394f
                  blt          s0, a2, 386f
                  bne          t5, s8, 398f
                  or           t0, gp, s7
                  srl          t1, ra, t2
                  blt          t5, s3, 395f
                  add          gp, t5, t3
                  ori          s9, t2, -666
385:              blt          a2, t0, 402f
386:              ori          t5, t2, 756
                  la           a4, region_1+344 #start riscv_load_store_hazard_instr_stream_1
                  lb           sp, 12(a4)
                  sb           a0, 12(a4)
                  ori          t5, t3, -1348
                  sb           a0, -5(a4)
                  sltu         a0, t4, tp
                  sb           s7, 0(a4)
                  sh           s11, 0(a4)
                  srli         gp, a7, 16
                  lw           a0, 0(a4)
                  lbu          t6, 0(a4)
                  lb           s1, 0(a4)
                  lb           tp, 0(a4)
                  lh           s3, 4(a4)
                  lb           s8, 3(a4)
                  sltiu        s4, s11, -1621
                  lhu          t1, -8(a4)
                  sh           s0, -8(a4)
                  lb           t0, -8(a4) #end riscv_load_store_hazard_instr_stream_1
                  sltu         s3, a4, s9
                  srai         a3, a5, 7
                  nop
                  sub          s3, t2, s1
                  beq          a7, t1, 409f
                  beq          s7, s1, 400f
                  slt          s4, a4, s9
394:              srli         a0, a3, 11
395:              xori         s4, s3, 145
                  andi         s4, a1, 1040
                  slli         a4, s3, 0
398:              bge          a4, t0, 413f
                  addi         s5, a4, -1007
400:              nop
                  srl          s1, gp, s7
402:              xor          s5, ra, t2
                  add          t3, s1, zero
                  bgeu         s6, s8, 416f
                  bge          t3, sp, 408f
                  bge          ra, s11, 413f
                  srai         t3, s5, 15
408:              sub          t3, s0, s4
409:              xori         s8, ra, -1419
                  beq          a1, sp, 421f
                  srai         t6, s6, 1
                  nop
413:              sub          s10, a0, a2
                  xori         t1, a6, -1435
                  blt          s4, t6, 435f
416:              add          s10, a2, s3
                  srli         zero, a1, 3
                  blt          s2, tp, 438f
                  sll          t2, s0, s4
                  sub          s3, gp, t3
421:              xori         a0, s7, 1905
                  or           s3, a5, s9
                  slli         a7, s8, 6
                  blt          a5, t4, 442f
                  or           s9, a2, s10
                  sltiu        sp, s10, -1962
                  sltiu        t3, a6, 1376
                  or           a7, s0, t6
                  sra          t2, s11, s1
                  lui          sp, 977065
                  sub          a7, ra, t6
                  sltiu        s0, s0, -382
                  sltu         tp, s3, s9
                  bne          s7, t4, 442f
435:              and          s4, a7, a0
                  srli         t6, t3, 12
                  bltu         a1, a2, 446f
438:              slt          s5, a5, s11
                  sll          s10, s6, a1
                  bge          s7, gp, 456f
                  auipc        s10, 957354
442:              srl          s5, a4, a4
                  addi         s0, a5, 34
                  srli         s1, s9, 10
                  sub          a3, a1, a0
446:              blt          a7, s6, 452f
                  lui          a7, 419344
                  bltu         a4, t3, 451f
                  xor          t2, ra, s4
                  or           a7, a5, gp
451:              and          s0, t4, s2
452:              lui          a0, 377471
                  add          t3, s2, t1
                  sltiu        s2, s0, -1777
                  or           t0, t2, a1
456:              sltu         s2, t6, tp
                  andi         s9, tp, 1342
                  slti         s8, a6, -1037
                  srai         ra, a2, 18
                  or           s0, ra, s6
                  slt          s9, s1, a1
                  bge          a1, s6, 463f
463:              srl          t0, t6, t5
                  andi         a7, s6, -773
                  nop
                  sltiu        t3, t5, -384
                  sltiu        zero, a2, 1547
                  sltu         zero, gp, t0
                  andi         s9, t2, -1384
                  sub          s7, a5, t3
                  blt          s8, sp, 486f
                  srl          t6, t6, zero
                  srai         a4, s0, 31
                  sra          s10, s0, s3
                  srai         s6, a5, 6
                  sltu         gp, s3, s1
                  addi         t3, t4, 1393
                  slt          s1, s7, a1
                  xor          s10, t5, a7
                  auipc        t4, 905075
                  lui          s4, 231920
                  add          ra, a2, t0
                  srl          s2, a2, a5
                  slt          gp, s4, gp
                  bltu         sp, gp, 504f
486:              sll          tp, a1, s3
                  sra          zero, a7, t6
                  bltu         a3, zero, 504f
                  sra          ra, a6, t1
                  or           a0, s9, t4
                  addi         a2, a7, -399
                  slli         a7, a1, 9
                  bne          s1, s6, 496f
                  slt          t2, t3, s0
                  nop
496:              srai         t2, a1, 24
                  addi         t6, s2, -515
                  ori          a6, t0, -632
                  srl          s0, s3, sp
                  sltiu        a6, s0, -381
                  beq          s1, t2, 514f
                  blt          s4, s8, 522f
                  ori          s10, a5, 178
504:              slti         a4, t5, 1794
                  sra          t3, t5, ra
                  or           s4, s6, tp
                  bgeu         s11, t1, 522f
                  beq          s5, sp, 527f
                  andi         a7, s0, 1544
                  blt          a1, t3, 525f
                  andi         t6, gp, 1585
                  bgeu         a7, ra, 521f
                  or           s9, s7, s7
514:              add          a4, s4, s3
                  sll          s6, s1, t2
                  bge          a1, t2, 519f
                  srl          t3, a7, s1
                  and          s3, s4, s10
519:              slti         s5, a5, -1336
                  sltu         a4, a6, t1
521:              sll          s2, s2, a1
522:              and          a7, s6, s7
                  slt          t0, a3, s6
                  addi         a7, s0, -1572
525:              beq          a4, a1, 542f
                  lui          s5, 677411
527:              slli         t6, t3, 6
                  sub          a7, t4, tp
                  slli         s1, a2, 10
                  srli         a0, s11, 20
                  ori          s5, s2, -571
                  blt          s1, a2, 550f
                  slt          a6, gp, s2
                  bge          t0, t6, 535f
535:              slli         s8, tp, 19
                  ori          t3, s0, -2039
                  addi         a4, s7, 1399
                  xor          gp, s10, s2
                  bge          gp, a3, 551f
                  lui          t1, 381287
                  and          s5, s5, tp
542:              slli         s1, sp, 31
                  lui          s7, 349975
                  and          t1, t3, ra
                  nop
                  bgeu         t2, a7, 553f
                  xor          s1, s0, t4
                  slt          t4, s1, s4
                  srai         zero, s9, 12
550:              bgeu         t2, t4, 553f
551:              sub          t6, a5, a5
                  sltiu        s5, a2, 1417
553:              xori         s1, a2, -1673
                  sub          zero, s6, t0
                  ori          s0, a4, 1941
                  srl          s3, a7, s4
                  andi         a3, zero, 67
                  or           s1, a6, t4
                  srl          t6, a0, s1
                  sltiu        s2, a6, -308
                  bgeu         t2, t6, 567f
                  auipc        tp, 789711
                  slt          t1, s6, t1
                  bge          t4, s2, 572f
                  bgeu         a7, s8, 574f
                  sltu         a4, s11, s10
567:              addi         s10, s3, 1742
                  or           s7, a6, s5
                  slt          tp, a4, s4
                  bne          t4, ra, 579f
                  ori          s5, a1, -1532
572:              xori         a2, s7, -1193
                  sll          s9, ra, zero
574:              xori         t2, s7, -395
                  bge          ra, s1, 592f
                  ori          t5, zero, -1428
                  xori         a4, s6, -1170
                  addi         s4, sp, -1053
579:              xor          s3, s8, s9
                  sll          t5, s3, tp
                  xori         a2, s4, -1821
                  andi         a2, a1, -548
                  bltu         zero, zero, 599f
                  andi         a6, ra, 519
                  sltu         t3, t1, a3
                  bge          s5, t6, 594f
                  sltu         s7, t0, s0
                  andi         s0, s8, 588
                  add          s2, s2, a4
                  sub          a4, s8, tp
                  sll          sp, a1, a4
592:              or           a6, a5, s7
                  xor          t6, s9, a1
594:              sra          t2, s7, s10
                  xori         t3, gp, 1464
                  lui          gp, 545889
                  addi         s9, a5, -1926
                  sll          t6, s10, s3
599:              bne          a5, gp, 617f
                  sltiu        ra, t5, 980
                  bgeu         t4, s8, 612f
                  blt          a0, s9, 610f
                  srai         s9, s4, 1
                  srl          s6, s0, s1
                  beq          t5, gp, 623f
                  xori         t2, t1, 1801
                  srl          a3, a1, a4
                  srai         zero, tp, 15
                  sra          zero, a0, a1
610:              bgeu         a3, sp, 626f
                  addi         s1, a5, 964
612:              bltu         t3, a5, 632f
                  slli         s3, a6, 1
                  slti         s4, s5, -1390
                  slti         s5, s5, -1820
                  bge          t2, t1, 635f
617:              xori         t4, a4, 1497
                  lui          s6, 474680
                  or           s3, s9, s6
                  sltiu        sp, sp, -1451
                  srai         t2, gp, 25
                  or           s3, s7, t5
623:              bne          s6, t2, 642f
                  sll          t2, a7, a3
                  sub          s9, a5, s7
626:              srl          t1, s11, s1
                  blt          a7, s5, 641f
                  bne          s3, t4, 643f
                  slt          gp, s0, t1
                  addi         a7, a1, -1830
                  sub          t0, a2, t2
632:              sltu         t6, a4, s10
                  lui          s10, 110007
                  addi         s5, tp, 2018
635:              sra          s9, s0, a2
                  add          s1, t0, a3
                  slti         s3, gp, -1217
                  bne          s11, s1, 641f
                  xori         s6, t4, 2027
                  bne          t6, a5, 649f
641:              beq          s11, s7, 650f
642:              andi         a4, a6, 1581
643:              srli         s10, a5, 18
                  bge          s11, tp, 662f
                  or           s5, s4, a0
                  srl          t5, s8, a1
                  bltu         t5, s7, 666f
                  bge          s10, t4, 656f
649:              bne          t6, a1, 666f
650:              nop
                  bge          zero, t5, 669f
                  auipc        s10, 622885
                  and          a0, t6, t0
                  xori         s8, t6, 1950
                  xor          t5, t2, s2
656:              sub          t5, a5, a3
                  srli         t1, s10, 18
                  bgeu         s5, s5, 678f
                  nop
                  bne          a2, s9, 668f
                  sub          a7, s2, t5
662:              srl          s10, zero, ra
                  ori          zero, s8, -502
                  bgeu         s3, sp, 682f
                  bltu         a7, tp, 680f
666:              sll          a0, s0, s7
                  sltu         a4, zero, a1
668:              srai         s1, a7, 8
669:              nop
                  blt          a2, a2, 679f
                  bgeu         a7, s8, 677f
                  sra          s1, gp, a4
                  beq          t1, a7, 676f
                  bltu         a2, s5, 693f
                  xori         t3, t2, -1399
676:              sltiu        s10, s10, 836
677:              sll          t2, s4, t5
678:              blt          a2, s7, 691f
679:              and          t6, t1, s11
680:              sll          t1, s11, t2
                  andi         t0, zero, 1773
682:              ori          s6, s0, 165
                  bgeu         s8, s9, 702f
                  srli         s10, s7, 31
                  slli         t0, s2, 1
                  ori          tp, s4, 1950
                  slti         sp, a3, -1169
                  bne          s6, s2, 691f
                  addi         a2, t3, 739
                  addi         s1, s10, -762
691:              beq          s5, s3, 711f
                  addi         tp, tp, 1156
693:              sra          t2, a3, s11
                  nop
                  and          t2, s11, a0
                  andi         s7, gp, 1423
                  lui          a7, 52425
                  bgeu         t0, s7, 706f
                  nop
                  bne          s1, s9, 701f
701:              srli         s0, t6, 2
702:              slt          a3, ra, s8
                  or           s8, a2, s0
                  srai         a0, s3, 31
                  nop
706:              sltiu        s9, s8, 476
                  srli         t2, t6, 19
                  lui          tp, 284109
                  sra          tp, t3, t5
                  bltu         s9, s7, 727f
711:              srai         t0, a0, 22
                  or           s3, s11, s10
                  bne          ra, s11, 729f
                  sltu         ra, s9, t0
                  blt          s9, s6, 731f
                  slti         tp, t2, 339
                  blt          s9, s5, 728f
                  sub          s9, gp, t3
                  beq          t5, a1, 733f
                  and          a0, a4, ra
                  sll          s3, t0, a7
                  ori          s6, s3, -181
                  blt          t2, a7, 735f
                  slt          tp, sp, s4
                  sltiu        s1, s3, 249
                  add          t4, s1, a1
727:              xor          ra, s7, t6
728:              bge          t0, a6, 735f
729:              sltiu        ra, a5, 689
                  srli         s9, t0, 23
731:              nop
                  add          t1, a4, s1
733:              ori          t5, a3, -1744
                  srli         a0, a7, 5
735:              auipc        s4, 930164
                  slli         s2, s4, 20
                  sltiu        gp, ra, 150
                  bltu         a3, s7, 758f
                  auipc        a2, 334033
                  and          a3, s5, a3
                  xori         a4, s5, 2038
                  sub          s4, t6, a0
                  or           a4, a0, s8
                  bge          t2, s6, 761f
                  or           s8, t1, s10
                  slli         s9, a6, 2
                  xori         s5, s10, 1707
                  slt          sp, s11, s8
                  and          t0, a0, s4
                  ori          s6, s2, 254
                  ori          s9, sp, -96
                  slt          a0, a7, t0
                  slli         t5, t4, 0
                  add          s6, a6, t3
                  slli         s0, s5, 16
                  and          ra, t6, s4
                  bne          s5, zero, 773f
758:              beq          s4, a4, 767f
                  addi         a6, a4, -1229
                  sltiu        s2, s8, -136
761:              xor          s6, t1, t3
                  ori          s1, a3, -1244
                  bge          s2, a4, 782f
                  ori          ra, a3, -100
                  lui          gp, 403806
                  sra          s7, zero, s3
767:              nop
                  slt          s2, a4, a2
                  bgeu         a2, t5, 776f
                  bgeu         s4, s9, 773f
                  nop
                  sll          s2, s4, s6
773:              slti         s4, a3, 137
                  sll          s7, a6, s9
                  andi         a4, s2, 1477
776:              and          s4, a0, t2
                  or           t2, s8, s3
                  xori         s2, s8, 1843
                  slt          a0, a5, a5
                  slti         t1, s10, -340
                  slti         t6, a6, 1354
782:              and          a7, a4, zero
                  beq          t1, a6, 789f
                  xor          a6, t6, t5
                  xor          t3, s3, gp
                  and          s0, a1, t6
                  slti         gp, t5, 531
                  slli         zero, a4, 10
789:              sltiu        a3, a1, -108
                  srli         s2, gp, 10
                  slt          t0, t2, a3
                  slli         s8, s2, 13
                  bltu         s4, ra, 811f
                  addi         t3, s4, 1037
                  bgeu         s6, zero, 803f
                  and          s8, t0, s7
                  bgeu         s6, s8, 817f
                  bne          a3, t3, 807f
                  bgeu         t3, t5, 802f
                  xor          a0, s9, t5
                  auipc        a4, 808113
802:              lui          s3, 325657
803:              bgeu         s1, sp, 821f
                  srl          ra, a0, s10
                  lui          s8, 433455
                  nop
807:              bge          t6, s6, 810f
                  sll          a6, ra, s7
                  blt          s2, gp, 822f
810:              bne          s10, sp, 822f
811:              andi         s7, s5, 562
                  srli         s2, s11, 31
                  auipc        s2, 893588
                  bgeu         t3, s6, 822f
                  ori          s4, zero, 294
                  auipc        t1, 1046222
817:              bne          a3, t2, 822f
                  xori         t5, t3, -1519
                  srl          zero, t0, s11
                  bne          a6, s7, 822f
821:              sub          tp, s2, s3
822:              slt          tp, s6, a1
                  srai         t3, s1, 12
                  ori          t2, s1, -1728
                  lw           t0, 4(a5)
                  slt          t3, ra, t2
                  sub          t3, sp, s6
                  sub          s0, a4, s11
                  addi         a5, a5, 28
                  sll          tp, s4, a6
                  lui          s0, 738676
                  sll          zero, s6, a1
1583:             addi x5, x5, 0
1583:             jalr x5, x5, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_2:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_3:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_4:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_5:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_6:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_7:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_8:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_9:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_10:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_11:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_12:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_13:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_14:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_15:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 0x1f
                  beqz x14, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x27, x15, zero
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x14, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x14, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x14, x19, ecall_handler
                  li x19, 0x1
                  beq x14, x19, instr_fault_handler
                  li x19, 0x5
                  beq x14, x19, load_fault_handler
                  li x19, 0x7
                  beq x14, x19, store_fault_handler
                  li x19, 0xc
                  beq x14, x19, pt_fault_handler
                  li x19, 0xd
                  beq x14, x19, pt_fault_handler
                  li x19, 0xf
                  beq x14, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  add x15, x27, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
