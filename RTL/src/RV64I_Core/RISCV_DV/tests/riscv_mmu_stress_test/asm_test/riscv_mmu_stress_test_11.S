.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x10, 0x40000100
                  csrw 0x301, x10
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x10, mtvec_handler
                  ori x10, x10, 0
                  csrw 0x305, x10 # MTVEC

mepc_setup:       
                  la x10, init
                  csrw 0x341, x10

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x10, 0x1800
                  csrw 0x300, x10 # MSTATUS
                  mret
init:             
                  li x0, 0x5
                  li x1, 0x80000000
                  li x2, 0x4
                  li x3, 0x910622b9
                  li x4, 0x4fe70d9e
                  li x5, 0x26616196
                  li x6, 0x4
                  li x7, 0x0
                  li x8, 0xf1679562
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x0
                  li x14, 0xd
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0x1
                  li x18, 0x1f4c0ed5
                  li x19, 0xf28302e0
                  li x20, 0xa
                  li x21, 0xb
                  li x22, 0x80000000
                  li x23, 0x9024dfe9
                  li x24, 0x0
                  li x26, 0xfe0ecd27
                  li x27, 0xf5796732
                  li x28, 0x80000000
                  li x30, 0x0
                  li x31, 0x9e36fb8
                  la x29, user_stack_end
main:             la           s6, region_0+70 #start riscv_load_store_hazard_instr_stream_2
                  lhu          s1, 22(s6)
                  lbu          ra, 22(s6)
                  lbu          s3, 225(s6)
                  lb           s11, -23(s6)
                  lb           a2, -23(s6)
                  lbu          ra, -23(s6)
                  lbu          s10, -23(s6)
                  ori          a7, s2, -1925
                  sltiu        t1, s8, -762
                  lb           s8, -23(s6)
                  sb           t5, -23(s6)
                  srl          s11, ra, s3
                  sb           t3, -23(s6)
                  lb           s3, -23(s6)
                  or           s8, a2, s1
                  lbu          a2, 230(s6)
                  lh           gp, -40(s6)
                  srai         s5, s4, 9
                  slti         s1, s8, -197
                  nop
                  lhu          t1, -40(s6) #end riscv_load_store_hazard_instr_stream_2
                  la           s5, region_1+1347 #start load_store_instr_stream_3
                  la           t5, region_1+1767 #start load_store_instr_stream_1
                  sb           a5, -47(t5)
                  lh           t3, 17(s5)
                  lhu          a7, -53(t5)
                  sw           t4, 33(t5)
                  sb           gp, 590(s5)
                  la           s2, region_1+1430 #start load_store_instr_stream_2
                  la           s4, region_1+1512 #start load_store_instr_stream_0
                  lb           s6, 207(s4)
                  lbu          tp, -1(s2)
                  sb           sp, -684(s5)
                  la           s0, region_1+1498 #start load_store_instr_stream_4
                  lb           a3, -1224(s5)
                  sb           t4, 73(s0)
                  lbu          a7, -153(s4)
                  sb           t6, -117(s0)
                  lw           sp, -212(s4)
                  lbu          a5, 10(s2)
                  sb           s11, -18(t5)
                  lbu          gp, -64(t5)
                  sh           s8, -695(s5)
                  sb           s1, -89(s4)
                  lbu          a0, -16(s2)
                  lbu          s8, -8(t5)
                  sb           t6, -124(s0)
                  lb           a4, 10(t5) #end load_store_instr_stream_1
                  sh           s0, -6(s2)
                  sb           s4, -91(s0)
                  sb           t0, 9(s2)
                  lbu          ra, 121(s0)
                  lbu          a6, 109(s0)
                  sh           s0, 62(s4)
                  sb           tp, 3(s2)
                  sw           a7, -1279(s5)
                  lb           s10, 10(s0) #end load_store_instr_stream_4
                  lb           sp, -1043(s5)
                  sb           a0, 3(s2) #end load_store_instr_stream_2
                  sb           s2, -531(s5) #end load_store_instr_stream_3
                  lb           s8, 251(s4) #end load_store_instr_stream_0
                  la           s6, region_1+857 #start riscv_load_store_rand_instr_stream_1
                  add          s4, s10, s5
                  lb           t1, 514(s6)
                  sb           a4, 128(s6)
                  sltiu        a7, t3, 1629
                  lbu          a7, 1028(s6)
                  sb           a2, 663(s6)
                  sb           s3, 1130(s6)
                  xori         t0, s3, 1745
                  sll          s10, s6, a6
                  lb           sp, -323(s6)
                  sb           ra, -459(s6)
                  andi         zero, t3, -280
                  lbu          a6, 494(s6)
                  lb           s1, -796(s6)
                  sb           s8, 46(s6)
                  sll          t6, s6, s4
                  lb           t0, 1046(s6)
                  srai         a0, tp, 11
                  slli         s10, s11, 18
                  lbu          a5, 300(s6)
                  add          a5, s0, a4
                  srli         s8, a5, 22
                  sltiu        t0, t6, -1319
                  lb           t3, 973(s6)
                  sb           tp, -410(s6)
                  srli         t0, s0, 1
                  or           t6, zero, s0
                  sub          a3, s10, a1
                  lbu          a5, 270(s6)
                  and          a6, s0, a6
                  sb           t4, -248(s6) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_0+1363 #start load_store_instr_stream_4
                  la           t6, region_0+1378 #start load_store_instr_stream_1
                  la           a1, region_0+1213 #start load_store_instr_stream_2
                  la           s2, region_0+1693 #start load_store_instr_stream_0
                  sb           sp, 67(t0)
                  la           a3, region_0+1515 #start load_store_instr_stream_3
                  sw           s11, 59(a1)
                  lbu          s10, -8(a3)
                  sb           s1, -138(t6)
                  lw           a7, -57(s2)
                  lb           s1, -155(t0)
                  sh           tp, -170(t6)
                  lbu          s1, -20(a3)
                  lb           a2, 142(t6)
                  sb           s7, 37(s2)
                  lh           s4, -146(t6)
                  lbu          a2, -115(a1)
                  lw           s8, 59(a1)
                  lb           s1, -59(a3)
                  lb           s5, 72(t0)
                  lbu          s5, -8(s2)
                  lbu          a7, -47(s2)
                  lbu          a5, -34(a3)
                  sw           zero, 91(a1)
                  lbu          t2, 34(t0)
                  lbu          a6, 165(t6)
                  lb           t2, -18(s2)
                  sb           a3, 254(t6)
                  lb           s11, 65(a1)
                  sb           ra, 27(s2)
                  lbu          a5, -144(t6)
                  lhu          s8, 51(t0)
                  sh           s9, -43(a3)
                  lb           s3, 242(t6)
                  lbu          zero, -176(t6)
                  lbu          tp, -18(a3)
                  lb           a0, -86(a1)
                  lhu          t2, -3(a3)
                  lb           gp, 42(t0)
                  lbu          zero, 183(a1)
                  lhu          t1, 211(a1) #end load_store_instr_stream_2
                  sb           s5, -44(a3)
                  sb           s3, -28(s2)
                  sb           t5, 70(t0) #end load_store_instr_stream_4
                  sb           t2, -56(a3) #end load_store_instr_stream_3
                  sw           t6, -194(t6) #end load_store_instr_stream_1
                  sh           tp, -3(s2) #end load_store_instr_stream_0
                  la           a7, region_1+889 #start riscv_load_store_hazard_instr_stream_1
                  nop
                  lbu          s1, 18(a7)
                  sb           a7, -34(a7)
                  sb           t5, -34(a7)
                  sltiu        a5, t5, -836
                  sb           t0, -34(a7)
                  lb           a1, -34(a7)
                  lb           t1, -11(a7)
                  sb           t1, -11(a7)
                  sb           s5, -11(a7)
                  lbu          t3, -11(a7)
                  sb           t6, -11(a7)
                  sb           tp, -61(a7)
                  andi         s0, t5, 1471
                  lh           sp, -61(a7) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_1+333 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, -13(sp)
                  andi         zero, t5, 1213
                  lw           t6, 7(sp)
                  lbu          a5, 5(sp)
                  sb           ra, -11(sp)
                  lhu          s11, -7(sp)
                  lb           a3, 6(sp)
                  lbu          gp, -3(sp)
                  lb           s3, 13(sp)
                  sb           s8, -8(sp)
                  srl          t3, s1, t6
                  lbu          a7, -13(sp)
                  lbu          a5, 5(sp)
                  lh           zero, -13(sp)
                  lui          tp, 393413
                  lb           t2, -8(sp)
                  lb           gp, 14(sp)
                  srai         t6, a4, 11
                  sub          a2, t1, s1
                  lb           t3, -2(sp)
                  lbu          a3, 12(sp)
                  slti         a0, t3, -175
                  lb           s4, 2(sp)
                  sb           gp, 6(sp)
                  xori         t0, s7, 1017
                  sh           t0, -13(sp)
                  nop
                  ori          t3, zero, -923
                  lbu          s5, -8(sp)
                  addi         s8, s0, 1814
                  sb           s3, 3(sp)
                  lb           a6, -3(sp)
                  srli         s3, a5, 8
                  sub          s4, gp, zero
                  add          a1, t3, s8
                  lb           t0, 2(sp)
                  sb           a7, -4(sp)
                  add          ra, a2, a2
                  lw           ra, -5(sp)
                  lb           s11, -7(sp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_1+941 #start load_store_instr_stream_3
                  la           ra, region_1+154 #start load_store_instr_stream_0
                  la           gp, region_1+1497 #start load_store_instr_stream_1
                  la           t5, region_1+1273 #start load_store_instr_stream_4
                  la           s2, region_1+76 #start load_store_instr_stream_2
                  sh           sp, 5(t5)
                  lhu          s8, 100(ra)
                  lbu          s11, 8(a7)
                  sb           s4, 46(a7)
                  lbu          t6, -22(a7)
                  sb           a0, 281(gp)
                  sb           s0, -2(t5)
                  lb           a4, 26(a7)
                  sb           t3, 12(t5)
                  lw           zero, -17(gp)
                  sb           a4, 2(a7)
                  sb           a3, 654(s2)
                  lb           a5, 1030(ra)
                  lb           a6, 386(gp)
                  lbu          t1, 14(t5)
                  sh           a0, 501(gp)
                  lbu          s11, 1583(ra)
                  sb           sp, 1446(ra)
                  sb           s10, -1196(gp)
                  sb           s3, 187(s2)
                  lbu          s1, 14(t5)
                  lb           s0, 60(a7)
                  lbu          a3, 1270(ra)
                  lbu          s8, 727(s2)
                  lb           s0, 8(a7)
                  lbu          s8, 891(ra)
                  sb           a0, 58(a7) #end load_store_instr_stream_3
                  sh           gp, 1(t5)
                  lb           t3, 0(t5)
                  sb           a5, -348(gp)
                  lb           s3, -2(t5)
                  lb           s6, 1841(s2)
                  lh           s5, 8(ra)
                  lbu          t2, 1189(s2) #end load_store_instr_stream_2
                  lbu          a6, -85(ra)
                  sb           s0, -3(t5)
                  sb           s0, 92(ra)
                  lbu          t1, 10(t5) #end load_store_instr_stream_4
                  lbu          a3, 258(gp) #end load_store_instr_stream_1
                  lh           sp, 1302(ra) #end load_store_instr_stream_0
                  la           a3, region_1+382 #start riscv_load_store_hazard_instr_stream_0
                  lb           s1, 11(a3)
                  sb           zero, 11(a3)
                  lbu          s4, -16(a3)
                  lh           s0, 2(a3)
                  sh           t1, -16(a3)
                  lbu          a0, 8(a3)
                  lbu          a5, 8(a3)
                  sb           s7, 8(a3)
                  addi         t2, tp, -107
                  lbu          tp, -4(a3)
                  lhu          s10, 6(a3)
                  sw           a7, -6(a3)
                  lw           a6, -6(a3)
                  sw           t5, -6(a3)
                  sb           t2, -8(a3)
                  sb           s3, -12(a3)
                  lbu          t6, -7(a3)
                  sb           gp, -7(a3)
                  lb           a7, -7(a3)
                  lb           gp, -5(a3)
                  lb           t2, 8(a3) #end riscv_load_store_hazard_instr_stream_0
                  and          ra, s1, a0
                  srl          a3, zero, a7
                  sll          t2, s5, a6
                  sll          a7, a3, zero
                  ori          tp, s11, -1959
                  sra          s5, a0, t6
                  auipc        a5, 801383
                  sltiu        s3, s5, -836
                  slli         s8, gp, 1
                  sra          a3, s9, s11
                  bge          tp, t3, 18f
                  slti         t5, a6, -98
                  slt          a3, a6, s7
                  auipc        a3, 711116
                  srl          zero, t5, s3
                  blt          s11, s9, 35f
                  and          s5, t2, s4
                  add          a2, a7, a1
18:               bgeu         s10, tp, 28f
                  bne          a1, t0, 32f
                  andi         a0, t6, -371
                  slt          a7, t4, a6
                  bne          s7, t6, 25f
                  sll          s6, a0, s1
                  bltu         t5, t6, 35f
25:               auipc        t0, 870101
                  slti         s1, t2, 2014
                  andi         s0, ra, 255
                  addi         s0, s4, 1875
                  ori          s2, a1, 617
                  xori         ra, zero, 743
                  la           a4, sub_1
                  xor          t1, s9, tp
                  sub          ra, sp, s9
                  sltiu        ra, a0, 1827
                  addi         a4, a4, 579
                  auipc        s2, 598742
                  xor          s5, s10, t6
main_j1:          jalr         ra, a4, -578 #jump main -> sub_1
28:               sll          ra, t2, t5
                  srli         s1, t3, 7
                  slli         s0, a5, 29
                  beq          t6, gp, 41f
32:               slt          a0, zero, s7
                  slt          a7, t2, a4
                  bne          gp, a3, 45f
35:               beq          sp, s0, 55f
                  sll          a0, s1, s10
                  xori         ra, ra, 1930
                  bge          a0, s10, 53f
                  sltiu        a0, zero, 747
                  sll          zero, a4, a1
41:               addi         t2, a3, -895
                  sll          a2, s7, zero
                  slti         a6, t6, -1236
                  sub          gp, s5, s2
45:               bgeu         a3, s8, 50f
                  srli         t3, zero, 1
                  sub          a1, a3, a4
                  srl          a4, a1, a5
                  sra          a2, a4, t4
50:               xor          a0, s9, a1
                  srai         zero, a4, 25
                  xori         s2, a2, -1241
53:               lui          t2, 837128
                  sra          s6, a1, a4
55:               sll          a6, t4, t3
                  auipc        t1, 656711
                  sltu         t6, s11, s4
                  beq          a6, s2, 64f
                  bne          t2, gp, 74f
                  srli         s8, s8, 17
                  addi         s11, t0, 298
                  srl          s6, s4, a5
                  addi         a7, a4, 1730
64:               srl          a3, t6, a6
                  slti         t1, s6, -33
                  srai         gp, gp, 17
                  xor          t2, s6, s8
                  xori         tp, t4, 1925
                  slt          gp, t6, s1
                  andi         t2, s7, -440
                  or           s10, s9, s10
                  xor          t2, gp, s8
                  add          s4, s8, zero
74:               lui          tp, 639477
                  andi         s5, t1, -1783
                  bne          s1, a4, 87f
                  bne          s1, t3, 93f
                  beq          sp, s11, 81f
                  srai         tp, a2, 5
                  or           a4, s9, zero
81:               bge          t3, t3, 95f
                  lui          s6, 446865
                  sub          t5, s5, s2
                  srli         a5, a7, 13
                  slli         a2, a4, 4
                  slt          t6, sp, s2
87:               or           a5, s8, tp
                  slti         gp, zero, 1875
                  sltu         t1, t6, ra
                  nop
                  bgeu         a5, s2, 104f
                  sltiu        sp, a1, -1234
93:               sra          a5, zero, a0
                  sltiu        sp, s8, 2043
95:               bge          s10, s6, 103f
                  or           a2, a5, tp
                  andi         zero, s2, 1620
                  sub          s3, s8, ra
                  and          t2, s1, s4
                  addi         a2, a7, -251
                  xori         s5, a7, -1398
                  bge          s8, s3, 108f
103:              xor          a1, a0, sp
104:              addi         s5, a4, -1060
                  bne          s1, a3, 124f
                  beq          s2, s4, 125f
                  sub          s10, s1, a3
108:              xori         t0, s3, -670
                  beq          gp, gp, 117f
                  srai         a6, s2, 14
                  slli         s1, a7, 15
                  slti         a1, t1, 261
                  bne          zero, t0, 116f
                  srai         a6, t1, 20
                  xori         t1, a7, -811
116:              bge          t0, a4, 120f
117:              or           t0, zero, s8
                  sra          t2, t3, t6
                  addi         s3, gp, 723
120:              auipc        zero, 978423
                  sll          s4, s8, s2
                  bge          s3, sp, 140f
                  or           t2, t6, sp
124:              add          t5, s6, a0
125:              and          a0, sp, s7
                  beq          gp, tp, 134f
                  srli         t0, s5, 1
                  add          a3, s2, tp
                  bgeu         s3, a3, 132f
                  slli         t2, t4, 19
                  srli         a7, a1, 21
132:              bne          a5, t3, 133f
133:              addi         zero, s4, 1813
134:              sltiu        ra, s11, -1480
                  xor          s6, s2, ra
                  xor          gp, a6, a3
                  lui          t5, 366844
                  lui          a5, 541433
                  bltu         a1, gp, 155f
140:              auipc        s10, 299691
                  slli         a5, s8, 12
                  bgeu         s10, s2, 148f
                  auipc        t1, 332953
                  sltu         t5, tp, sp
                  slti         s3, s7, -678
                  sll          a1, ra, a3
                  beq          s4, s6, 167f
148:              sll          s0, s0, t1
                  srl          t5, a6, zero
                  nop
                  beq          a1, s5, 152f
152:              auipc        s0, 753478
                  slti         ra, t1, 1067
                  sltu         a3, a3, s3
155:              blt          s7, a4, 168f
                  sltiu        t2, a2, -44
                  sll          t3, gp, s7
                  add          s1, s4, s6
                  slt          ra, tp, s9
                  beq          a5, a7, 176f
                  slli         t1, a5, 25
                  slti         gp, tp, -2001
                  sll          a6, s5, t2
                  bne          s6, s2, 175f
                  nop
                  bge          a6, a6, 184f
167:              and          s3, a6, a2
168:              sub          tp, a7, zero
                  xori         a6, s9, -1396
                  and          t1, s4, t5
                  and          a7, s5, a0
                  la           sp, region_0+683 #start riscv_load_store_rand_instr_stream_0
                  add          s3, a0, tp
                  ori          a0, t4, 1390
                  lb           t3, -110(sp)
                  auipc        s4, 670964
                  add          s0, a2, s2
                  xori         t3, s7, 38
                  lh           zero, -49(sp)
                  sw           s1, 109(sp)
                  and          gp, s8, a0
                  sb           s0, 22(sp)
                  lbu          t2, 15(sp)
                  xori         t6, a5, -404
                  lh           t1, -121(sp)
                  sb           t4, 196(sp)
                  or           a5, a5, zero
                  lbu          s2, 245(sp)
                  slti         t3, ra, -1723
                  add          a3, s5, zero
                  lbu          a4, -162(sp)
                  sltu         t3, s5, t3
                  lbu          tp, -154(sp)
                  lb           ra, -64(sp)
                  srai         s10, s2, 29
                  sh           a6, 87(sp)
                  lbu          s0, -158(sp)
                  lbu          a0, 26(sp)
                  lbu          a1, -36(sp)
                  lb           s6, -255(sp)
                  sb           a6, -98(sp)
                  lb           a6, -108(sp)
                  lh           s11, 133(sp)
                  sb           s4, -225(sp)
                  auipc        a5, 933573
                  lui          a6, 882341
                  lbu          a3, -208(sp)
                  lbu          s1, 20(sp)
                  lhu          s5, 43(sp)
                  lhu          s2, -223(sp)
                  lb           t2, 32(sp)
                  lb           t6, 54(sp)
                  addi         ra, s6, 1762
                  sb           t1, -220(sp)
                  lb           s1, 6(sp)
                  sltiu        t0, s9, 1179
                  lhu          zero, 201(sp)
                  sb           s5, 99(sp) #end riscv_load_store_rand_instr_stream_0
                  beq          a0, sp, 191f
                  ori          s2, s9, 615
                  lui          t5, 129027
175:              ori          zero, s1, 1921
176:              sll          s0, a6, s6
                  blt          s6, a0, 191f
                  srl          a0, a5, t0
                  xori         s2, s3, 1950
                  sltu         t6, a1, ra
                  andi         a3, s2, 1415
                  slt          a2, s1, t2
                  bgeu         a3, s4, 191f
184:              xor          t6, t4, s9
                  sra          a2, a3, zero
                  beq          s7, s4, 197f
                  slti         a3, s11, -1309
                  lui          s4, 144909
                  and          t2, s5, a6
                  srl          s2, a1, s1
191:              ori          a7, s9, 1214
                  srai         t2, s6, 27
                  sltu         s0, zero, t6
                  or           a2, a5, t0
                  xor          a3, gp, t0
                  add          a4, s6, sp
197:              lui          a7, 508184
                  srl          t0, t3, a5
                  slti         a5, a7, 1199
                  add          gp, s1, s9
                  sub          t3, sp, t1
                  bgeu         t6, sp, 222f
                  ori          t5, gp, -761
                  xor          s10, s0, t1
                  slli         s5, s5, 25
                  bltu         s5, s0, 214f
                  lui          t2, 998373
                  sltiu        gp, t0, 539
                  lui          sp, 886747
                  blt          a4, s6, 226f
                  srl          s4, a1, zero
                  sra          a2, t2, s3
                  sltu         a1, t6, a7
214:              blt          a5, s2, 224f
                  sltu         ra, a6, sp
                  slt          gp, s3, a0
                  addi         s5, s8, -913
                  and          s8, s9, s8
                  srl          s10, t4, a6
                  or           s1, s11, t4
                  add          s5, t0, s11
222:              beq          s2, a3, 237f
                  auipc        s2, 849850
224:              bne          t5, t0, 227f
                  srli         s10, s6, 19
226:              lui          s8, 956145
227:              xori         gp, tp, -429
                  xori         s4, s1, -2013
                  andi         t3, a0, -1979
                  slti         a1, s2, 345
                  ori          a6, s9, -259
                  nop
                  slti         s5, s3, -690
                  bge          s9, s2, 240f
                  srai         gp, s6, 27
                  sub          ra, a0, t1
237:              sll          t1, s3, s5
                  nop
                  sub          a2, a1, ra
240:              slt          tp, s1, t3
                  beq          a0, sp, 251f
                  slt          a6, s3, s1
                  sltiu        s4, a1, -1728
                  auipc        a2, 477386
                  slt          t1, ra, t5
                  addi         ra, t3, 859
                  sltu         s0, s7, ra
                  srli         gp, t2, 30
                  bltu         t5, sp, 257f
                  blt          t5, s10, 255f
251:              bge          t3, s7, 266f
                  sll          s8, zero, t2
                  sub          s0, t2, t3
                  nop
255:              sra          s3, t2, s4
                  bge          t4, s6, 267f
257:              or           t6, a6, a2
                  sra          t3, a1, s3
                  sltu         s1, s10, t4
                  srl          ra, t2, s0
                  slt          s5, ra, t0
                  bgeu         a0, ra, 270f
                  bne          s9, a3, 266f
                  lui          t2, 965688
                  or           ra, a2, s8
266:              srai         t3, s9, 15
267:              add          gp, s3, s3
                  andi         a5, a1, -1682
                  srl          s6, s3, t0
270:              xori         t0, s6, 962
                  andi         a4, s5, -479
                  or           a3, s10, s4
                  bge          s11, s5, 286f
                  slli         sp, s2, 2
                  srai         s6, a1, 19
                  sltiu        s10, a5, -668
                  sltiu        a2, s3, -2034
                  sub          a2, tp, ra
                  sll          gp, sp, s5
                  sra          t2, a2, a3
                  sltiu        a1, a6, -126
                  and          a3, s5, s3
                  addi         t0, s1, -1872
                  sub          gp, s0, t4
                  lui          a7, 535763
286:              ori          a0, a0, 1154
                  sra          s3, a5, s5
                  and          t6, t5, s9
                  nop
                  bge          sp, a1, 293f
                  add          a4, t0, a5
                  slti         a6, s2, 589
293:              bge          t2, t5, 296f
                  srli         t5, zero, 26
                  bne          a5, t3, 299f
296:              blt          a1, a3, 315f
                  xor          s11, s0, ra
                  sltu         s0, zero, s2
299:              bgeu         s9, ra, 309f
                  srli         sp, t6, 27
                  srai         a0, sp, 30
                  xori         t5, s6, 1222
                  bgeu         s5, t1, 322f
                  sltiu        s8, t2, -792
                  xori         s6, t5, 868
                  sra          a7, a0, t3
                  sra          s10, s5, a4
                  auipc        s8, 810529
309:              or           sp, ra, a4
                  andi         t2, a5, 393
                  slt          zero, s11, a3
                  lui          a2, 387356
                  sll          a0, sp, s0
                  addi         t2, t3, 1539
315:              auipc        s0, 155016
                  srl          a5, s2, a2
                  srli         a3, s6, 26
                  add          s6, a0, s5
                  lui          t2, 247357
                  xori         s1, t0, -1630
                  bgeu         t0, a3, 335f
322:              srl          ra, a6, a5
                  xori         s2, s0, -1390
                  andi         a2, s0, 115
                  lui          t6, 420293
                  xori         s4, s7, 924
                  sll          a3, t2, s0
                  lui          s10, 928729
                  sltiu        a0, a5, -1463
                  slt          s2, ra, t6
                  srl          a0, s2, zero
                  sra          s4, t2, t5
                  sltiu        t1, t1, -39
                  srli         s10, zero, 11
335:              or           s3, sp, a3
                  slt          s1, a2, s0
                  andi         a1, s4, -322
                  srl          ra, t2, s9
                  or           a5, zero, s8
                  or           a2, a2, s6
                  sll          zero, a4, s7
                  blt          t5, a5, 358f
                  srl          t5, a3, a6
                  beq          sp, s2, 354f
                  blt          t6, t6, 364f
                  bne          t4, s1, 357f
                  slli         a6, s8, 11
                  sltiu        s4, s5, -1410
                  xori         s0, s5, 1181
                  add          t0, a0, s7
                  bge          t2, a5, 359f
                  sltu         s4, s5, ra
                  slt          a1, s11, t2
354:              slt          t5, a4, ra
                  srai         a7, s3, 1
                  addi         a3, s11, -1862
357:              sltiu        a5, s11, -715
358:              sra          a0, a5, s3
359:              and          t6, a3, s5
                  sll          s1, s1, s10
                  bge          a7, s7, 370f
                  slt          a6, s7, zero
                  lui          s6, 258981
364:              bge          s11, a5, 370f
                  xori         gp, t6, -1701
                  add          s2, t2, a0
                  ori          zero, t0, -1388
                  srl          s8, t4, a2
                  bge          t3, a7, 370f
370:              auipc        ra, 530121
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t4, t4, -40
                  andi         t5, a3, 997
                  sw           ra, 4(t4)
                  slt          tp, t5, a6
                  sll          zero, s11, s5
                  sra          s11, s1, s2
                  andi         s0, s8, 564
                  sll          sp, s6, s4
                  la           sp, region_1+1615 #start riscv_load_store_rand_instr_stream_3
                  sra          t3, s6, s10
                  srai         a4, s0, 27
                  lhu          t3, 15(sp)
                  lb           a5, 6(sp)
                  sb           sp, 0(sp)
                  lhu          t0, 11(sp)
                  lbu          t3, 10(sp)
                  lh           a4, 13(sp)
                  add          t5, s7, a1
                  sw           s9, 9(sp)
                  sb           t4, -2(sp)
                  slti         gp, t1, 514
                  add          t1, s2, sp
                  sw           t2, 1(sp)
                  lb           a6, 14(sp)
                  sub          s1, s5, a4
                  lh           gp, 15(sp)
                  lhu          t0, -5(sp)
                  sw           zero, -7(sp)
                  sb           s2, -15(sp)
                  add          tp, s3, a6
                  lb           a5, 5(sp)
                  lb           s11, 16(sp)
                  lbu          gp, -2(sp)
                  lw           s0, 5(sp)
                  andi         s3, s2, -1183
                  lbu          ra, -4(sp)
                  sb           tp, -2(sp)
                  sb           gp, 0(sp)
                  ori          a7, s2, -1769
                  sll          a4, t5, a0
                  sh           a5, 9(sp)
                  lbu          a6, 13(sp)
                  sltiu        t5, t3, -280
                  sb           a7, 12(sp)
                  auipc        s3, 623672
                  xor          s3, s3, s7
                  lb           a7, 14(sp)
                  sh           s11, -13(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1841 #start riscv_load_store_rand_instr_stream_1
                  sra          zero, a6, s5
                  lhu          s8, 157(sp)
                  srli         s2, a4, 11
                  lui          t2, 850543
                  lbu          s8, 37(sp)
                  sra          a1, s3, s1
                  nop
                  xori         ra, a2, 1953
                  lbu          t6, -160(sp)
                  sb           gp, 60(sp)
                  sb           s8, 112(sp)
                  lhu          t2, -119(sp)
                  sb           a6, -183(sp)
                  sb           s2, 149(sp)
                  sb           sp, -188(sp)
                  sw           s2, 127(sp)
                  slti         a6, gp, -1020
                  lui          s3, 513848
                  srl          gp, t4, t6
                  slti         ra, a0, 62
                  lbu          a6, -60(sp)
                  lb           t6, 94(sp)
                  andi         t5, s5, 504
                  lbu          ra, -196(sp)
                  sb           a1, -127(sp)
                  srl          ra, tp, a1
                  lb           a1, 12(sp)
                  slt          t5, s6, a7
                  slti         t3, a5, 60
                  lbu          t5, -70(sp)
                  sltu         a1, s9, a0
                  lb           s10, 148(sp)
                  lbu          a1, -28(sp)
                  lhu          tp, 131(sp)
                  ori          tp, s2, 442
                  lbu          s6, -172(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+1972 #start load_store_instr_stream_4
                  la           s6, region_1+1146 #start load_store_instr_stream_2
                  lbu          t2, -181(s6)
                  la           a7, region_1+1 #start load_store_instr_stream_3
                  la           t1, region_1+1306 #start load_store_instr_stream_1
                  sh           s10, 1671(a7)
                  lh           a1, 0(a0)
                  lh           zero, -226(s6)
                  la           t5, region_1+1824 #start load_store_instr_stream_0
                  sb           s11, -536(t5)
                  lh           a5, -1408(t5)
                  sb           a2, 1939(a7)
                  sb           s11, 93(s6)
                  lbu          t6, 211(s6)
                  lhu          s10, -126(t5)
                  sb           s3, 164(s6)
                  lbu          gp, -56(s6)
                  sb           a4, -201(t5)
                  lb           a6, -77(s6)
                  sb           s11, -159(s6)
                  sh           s3, -8(a0)
                  lhu          t2, 12(a0)
                  lb           t2, 1013(a7)
                  sb           a7, 51(t5)
                  lh           t0, -6(a0)
                  sh           t5, -2(t1)
                  lb           a6, -7(t1)
                  lb           s8, 1(a0)
                  sw           s10, -58(t1)
                  lbu          s5, -505(t5)
                  sh           zero, 6(a0)
                  lbu          gp, 24(t1)
                  lh           sp, 541(a7)
                  lw           a3, -124(t5)
                  lb           t6, -7(t1) #end load_store_instr_stream_1
                  lb           t2, -11(a0)
                  lbu          s5, -543(t5)
                  lb           s2, 1(a0) #end load_store_instr_stream_4
                  lbu          s8, -65(s6) #end load_store_instr_stream_2
                  sb           gp, 836(a7) #end load_store_instr_stream_3
                  lhu          s3, -1256(t5) #end load_store_instr_stream_0
                  la           sp, region_0+1181 #start riscv_load_store_hazard_instr_stream_3
                  lb           a1, -226(sp)
                  lb           a1, -226(sp)
                  lbu          a2, -226(sp)
                  lui          s1, 456219
                  xori         ra, zero, -367
                  lb           t0, -226(sp)
                  sh           tp, -9(sp)
                  and          s3, tp, a5
                  and          a5, t0, a4
                  lh           a1, -9(sp)
                  xor          a0, s8, t0
                  sb           s9, 141(sp)
                  lh           t5, 141(sp)
                  lbu          s10, 142(sp)
                  lb           a6, -78(sp)
                  addi         a2, t2, 267
                  lhu          a5, -227(sp)
                  sb           s2, -227(sp)
                  sh           a4, -227(sp)
                  lbu          t1, -232(sp)
                  sb           a2, 119(sp)
                  lh           s6, 119(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           ra, region_0+211 #start riscv_load_store_hazard_instr_stream_0
                  sb           a5, 48(ra)
                  sb           a7, 28(ra)
                  xori         s10, a3, 239
                  slti         t0, s11, 223
                  lb           a7, 28(ra)
                  srai         s5, ra, 27
                  lb           t2, -62(ra)
                  lbu          a4, -62(ra)
                  lbu          a6, -62(ra)
                  lb           s3, -62(ra)
                  lbu          s11, -62(ra)
                  sh           tp, -5(ra)
                  sh           s5, -5(ra)
                  sh           a7, -5(ra)
                  sh           ra, -5(ra)
                  srai         s8, s3, 10
                  sb           t0, -5(ra)
                  lbu          a5, -5(ra)
                  sh           s5, -5(ra)
                  sh           s2, -5(ra)
                  lb           sp, 32(ra)
                  lbu          a5, 32(ra)
                  sb           t2, -52(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1577 #start load_store_instr_stream_4
                  la           a2, region_0+488 #start load_store_instr_stream_2
                  lw           s1, 32(a2)
                  la           s3, region_0+977 #start load_store_instr_stream_1
                  lb           a6, 20(s3)
                  la           a3, region_0+1755 #start load_store_instr_stream_3
                  la           a0, region_0+1268 #start load_store_instr_stream_0
                  sb           s5, -10(sp)
                  sb           s11, 20(sp)
                  lbu          s11, 8(a3)
                  lbu          s4, -52(s3)
                  lh           s0, 59(s3)
                  lbu          s0, 11(a0)
                  lb           gp, -30(a3)
                  sb           a2, -38(sp)
                  lw           t2, 135(s3)
                  lbu          t1, -11(a3)
                  lbu          t6, -11(a0)
                  lh           s8, 14(a2)
                  lb           t2, -46(sp)
                  lb           ra, 3(a0)
                  sh           s10, 35(sp)
                  lb           a1, 0(a0)
                  lbu          t5, 12(a3)
                  sh           t2, 7(sp)
                  lh           a1, 0(a2)
                  lb           s8, 13(a0)
                  sh           tp, -123(s3)
                  sb           zero, -42(sp) #end load_store_instr_stream_4
                  lb           s4, 21(a2)
                  lbu          t5, 10(s3) #end load_store_instr_stream_1
                  lhu          gp, 4(a2) #end load_store_instr_stream_2
                  lb           s0, -52(a3) #end load_store_instr_stream_3
                  sb           a4, -9(a0) #end load_store_instr_stream_0
                  la           a1, region_0+948 #start load_store_instr_stream_3
                  la           s3, region_0+1819 #start load_store_instr_stream_1
                  sb           s10, 255(a1)
                  la           s1, region_0+805 #start load_store_instr_stream_2
                  la           a2, region_0+1940 #start load_store_instr_stream_0
                  lb           a7, 2(s1)
                  lbu          zero, -1148(a2)
                  lbu          s11, -363(a1)
                  lb           t2, -14(s1)
                  lbu          t5, -1810(a2)
                  lb           t6, 647(a1)
                  sb           t3, -917(s3)
                  lbu          s10, 12(s1)
                  lb           t2, -1796(s3)
                  lb           t3, -3(s1)
                  lb           s6, -1480(a2)
                  lb           ra, -758(s3)
                  sb           s5, -266(a2)
                  lh           t1, 688(a1)
                  lhu          s11, -514(a1)
                  sb           s8, -297(s3)
                  lh           a5, -1685(s3)
                  lb           s5, -935(a2)
                  lbu          a6, 778(a1)
                  lhu          zero, -3(s1)
                  lb           a4, -380(a2)
                  lb           t5, -10(s1)
                  sb           s1, 11(s1)
                  lbu          a7, -1432(s3)
                  lbu          s4, -1252(s3) #end load_store_instr_stream_1
                  lh           s6, 234(a1) #end load_store_instr_stream_3
                  lb           s11, -9(s1) #end load_store_instr_stream_2
                  lbu          zero, -810(a2) #end load_store_instr_stream_0
                  la           a7, region_1+725 #start riscv_load_store_hazard_instr_stream_2
                  sb           gp, -16(a7)
                  sltu         s8, s1, ra
                  lui          s3, 235256
                  lb           t1, -16(a7)
                  sb           t3, -16(a7)
                  sb           s9, -16(a7)
                  slti         t6, a6, 1345
                  sb           tp, 31(a7)
                  sh           s4, 31(a7)
                  sb           a5, 36(a7)
                  sra          a0, t1, s2
                  lb           t1, 36(a7)
                  lbu          a5, -45(a7)
                  lh           s10, 41(a7)
                  lb           a1, 41(a7)
                  lhu          s6, 41(a7)
                  lb           tp, 41(a7)
                  sb           t5, 18(a7)
                  srl          ra, s5, a0
                  xori         s0, a5, 619
                  sb           a3, 18(a7)
                  sb           s0, 18(a7)
                  sb           t1, 18(a7)
                  addi         s11, a6, 473
                  sb           s0, 45(a7) #end riscv_load_store_hazard_instr_stream_2
                  la           gp, region_1+1012 #start riscv_load_store_rand_instr_stream_2
                  sll          s0, a1, a2
                  lui          a4, 738417
                  srli         s5, gp, 30
                  lbu          s10, -171(gp)
                  add          t6, s3, s2
                  lbu          a3, 131(gp)
                  add          sp, s5, t6
                  sll          s5, a4, a6
                  lbu          s2, 116(gp)
                  sb           a2, 186(gp)
                  add          t3, t0, t0
                  slt          a2, s5, t6
                  andi         t6, s5, -1043
                  srli         s2, s5, 24
                  addi         tp, t1, 1744
                  slti         ra, a7, 1046
                  add          s5, a1, s1
                  lbu          s8, 113(gp)
                  add          a0, a6, ra
                  lb           s5, 160(gp)
                  sub          a6, a6, gp
                  slt          sp, s5, a3
                  lh           a3, -90(gp)
                  sb           a6, 139(gp)
                  sll          a0, a5, t4
                  sh           s4, 88(gp)
                  slti         t1, zero, -448
                  andi         sp, a0, 1246
                  sb           t0, 229(gp)
                  lb           ra, -217(gp)
                  addi         s4, a6, 1462
                  sh           a6, 182(gp)
                  lw           zero, -248(gp)
                  ori          t2, s4, 522
                  nop
                  sh           s1, 210(gp)
                  sb           s0, -133(gp)
                  nop
                  lhu          s10, -120(gp) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+1301 #start riscv_load_store_rand_instr_stream_0
                  srli         s8, s7, 20
                  sb           s4, 138(a2)
                  add          a1, s1, s5
                  xor          tp, t2, s8
                  lb           gp, -242(a2)
                  lbu          a5, 228(a2)
                  sw           t1, -117(a2)
                  sb           t1, 132(a2)
                  lbu          a5, 202(a2)
                  lbu          a0, -179(a2)
                  lb           a7, 245(a2)
                  ori          ra, t4, -11
                  or           t5, s3, s1
                  lb           a5, 140(a2)
                  lbu          a6, 92(a2)
                  sb           sp, 96(a2)
                  add          t6, t4, s5
                  slli         t0, s7, 16
                  sh           s7, 147(a2)
                  slt          tp, s4, s8
                  lb           s3, 208(a2)
                  ori          a6, a4, -1076
                  sb           tp, 137(a2)
                  lw           s1, 87(a2)
                  or           a4, s3, s11
                  srli         zero, a1, 26
                  nop
                  sltiu        t3, s2, 762
                  lb           t6, 104(a2)
                  lb           t0, -254(a2) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1399 #start load_store_instr_stream_3
                  la           s1, region_0+1227 #start load_store_instr_stream_1
                  sb           t1, -51(s2)
                  la           a6, region_0+537 #start load_store_instr_stream_2
                  sb           t4, 28(s2)
                  lbu          s0, -329(s1)
                  la           a7, region_0+1010 #start load_store_instr_stream_0
                  lb           a4, -804(s1)
                  lh           s4, -417(s1)
                  lw           a5, -799(s1)
                  sb           a4, -566(s1)
                  lbu          a3, 113(a7)
                  lb           a5, 54(a6)
                  sb           tp, 64(a6)
                  sh           t2, -99(s1)
                  sh           s8, -15(a6)
                  lb           zero, -613(a7)
                  lb           s8, -58(s2)
                  lbu          a4, 891(a7)
                  sb           t3, -868(s1)
                  sb           a5, -50(a6)
                  sb           t3, 501(a7)
                  lbu          t3, -344(s1) #end load_store_instr_stream_1
                  lhu          a4, 35(a6) #end load_store_instr_stream_2
                  sb           a0, 37(s2)
                  lb           gp, 566(a7)
                  lb           t5, -46(s2) #end load_store_instr_stream_3
                  lbu          a0, 145(a7)
                  sh           sp, -388(a7)
                  sh           zero, 716(a7) #end load_store_instr_stream_0
                  la           t1, region_1+1445 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a5, -104(t1)
                  lbu          s3, -104(t1)
                  lb           s10, 68(t1)
                  sw           a1, -153(t1)
                  lb           ra, 246(t1)
                  lbu          a5, 246(t1)
                  lb           a5, 246(t1)
                  lb           sp, 246(t1)
                  sub          t5, s2, t4
                  lbu          s2, 246(t1)
                  sb           t6, 246(t1)
                  sb           a3, 246(t1)
                  sltu         s4, ra, gp
                  lbu          s2, 246(t1)
                  sub          a5, s11, t3
                  lb           a5, 246(t1) #end riscv_load_store_hazard_instr_stream_1
                  slti         s2, t0, -343
                  srl          sp, s2, s5
                  sub          s11, a3, a7
                  slt          s0, t5, a7
                  ori          s3, s0, -1910
                  bltu         s1, s9, 10f
                  xori         s5, s10, 366
                  nop
                  ori          s10, t1, -787
                  slt          t1, a2, a1
10:               or           t5, s11, s9
                  add          a6, s1, s0
                  srai         zero, tp, 7
                  sll          t3, s8, s9
                  srl          a7, t2, s8
                  sll          t0, s7, t2
                  slli         a5, a4, 18
                  sra          a3, s5, s11
                  addi         s2, s3, 529
                  auipc        a4, 625109
                  xori         gp, s9, 208
                  sltiu        s3, t1, 1191
                  sra          t6, s3, a4
                  nop
                  add          zero, t0, gp
                  sub          s0, s11, t2
                  slti         a4, s3, -94
                  auipc        tp, 830344
                  srai         tp, t1, 7
                  slli         t5, a7, 16
                  srl          s5, t1, s2
                  lui          a4, 127226
                  slti         sp, s3, -952
                  sub          t3, s4, t4
                  andi         s11, a1, 1521
                  addi         a3, t2, 1991
                  sltiu        s0, a1, 1101
                  nop
                  bltu         a7, t0, 54f
                  sra          tp, a3, tp
                  sltu         t0, a3, ra
                  auipc        t3, 927801
                  bgeu         s1, a7, 51f
                  sltiu        a4, s1, -1103
                  ori          zero, s6, -1350
                  xor          zero, s4, a2
                  xori         ra, s4, -983
                  srl          gp, tp, s6
                  auipc        a4, 234131
                  sltiu        sp, t6, 1173
                  nop
51:               blt          a5, gp, 67f
                  xor          ra, t4, s1
                  or           ra, a5, a0
54:               sltu         tp, s2, t5
                  slti         s0, s10, 322
                  sll          a5, tp, s8
                  sltiu        a6, s10, -1697
                  nop
                  and          t5, s0, t2
                  ori          s6, s3, 317
                  beq          s1, a1, 68f
                  xori         s5, t1, 1597
                  srai         s0, s10, 19
                  auipc        s11, 616459
                  add          a3, tp, s11
                  srai         a1, s11, 18
67:               auipc        t0, 1002871
68:               bltu         a1, s8, 81f
                  slt          a0, a2, s9
                  slt          s10, tp, s3
                  blt          t5, s6, 86f
                  bge          s0, t5, 82f
                  bltu         s6, s3, 79f
                  auipc        s3, 818880
                  or           s2, t0, s3
                  nop
                  bltu         gp, t2, 81f
                  srl          sp, a3, ra
79:               sll          a4, s2, a7
                  sll          zero, s8, gp
81:               sub          a6, s8, zero
82:               blt          s7, s2, 90f
                  and          a3, t3, t6
                  xori         tp, t0, -549
                  sra          tp, t3, s2
86:               nop
                  blt          sp, s0, 89f
                  addi         s8, s10, 306
89:               slt          gp, s4, a3
90:               sra          s1, s9, zero
                  nop
                  slt          a2, a0, zero
                  slli         ra, t6, 20
                  and          a4, tp, s5
                  andi         a5, a1, 71
                  sltiu        a2, s11, 235
                  srai         t2, ra, 30
                  or           t5, s8, s6
                  xor          s11, a0, t3
                  bgeu         a4, a1, 118f
                  beq          zero, s2, 115f
                  srl          a7, a7, s10
                  sltu         t6, ra, t2
                  sra          s5, a2, s11
                  srai         s10, a1, 2
                  slli         s1, a4, 28
                  bne          a6, s9, 118f
                  or           zero, s1, s1
                  sltu         tp, t3, a1
                  bgeu         sp, a7, 119f
                  blt          s10, s7, 115f
                  or           a0, tp, a5
                  slli         t6, s9, 14
                  nop
115:              bge          ra, s5, 120f
                  add          s0, ra, gp
                  and          tp, t3, a2
118:              blt          a6, a6, 124f
119:              blt          gp, a0, 134f
120:              slli         zero, s2, 9
                  srai         sp, t3, 3
                  srli         tp, s1, 3
                  xor          tp, s4, s0
124:              and          s1, a3, s6
                  srl          zero, s4, a1
                  blt          s11, ra, 132f
                  sltu         s1, s0, t4
                  xori         a0, t5, -752
                  beq          a6, sp, 132f
                  sub          t3, t3, ra
                  xor          zero, s5, ra
132:              srli         t1, s2, 13
                  srai         s8, a5, 24
134:              bltu         t1, a0, 144f
                  beq          gp, s2, 154f
                  sltu         s2, tp, a4
                  sll          s3, ra, t6
                  bge          t1, s6, 149f
                  srl          a5, t3, s7
                  and          gp, s4, a5
                  auipc        s3, 145324
                  slt          s6, ra, t4
                  sll          s2, s3, tp
144:              blt          s5, s5, 155f
                  ori          gp, ra, -74
                  sub          s5, t3, s11
                  bne          t0, t5, 157f
                  andi         t2, a5, -765
149:              xor          s4, zero, t4
                  bge          t5, s11, 154f
                  sltiu        a2, a1, -2037
                  bgeu         s8, s1, 171f
                  blt          a0, t0, 168f
154:              sll          t3, a3, a0
155:              sra          s5, s4, s7
                  or           a6, a4, s2
157:              bne          s6, a4, 167f
                  or           s3, ra, a2
                  xori         a5, t5, -1361
                  blt          gp, s1, 176f
                  slt          t0, a7, gp
                  bne          t2, s5, 167f
                  bge          s7, t0, 170f
                  srli         s0, a7, 31
                  auipc        t3, 50460
                  add          tp, s5, a4
167:              sltu         a1, s7, s3
168:              sltu         t1, t3, a0
                  slt          a2, a5, s6
170:              bge          s11, t5, 181f
171:              bne          s10, t0, 182f
                  slli         t0, a3, 12
                  add          t6, zero, t5
                  sltiu        t6, s5, 309
                  and          s6, a3, a2
176:              bge          t0, t2, 190f
                  or           t3, a7, s0
                  bge          a1, gp, 193f
                  xor          t1, a3, a1
                  srai         a0, s11, 26
181:              slti         sp, t5, -1
182:              sub          a7, t5, s4
                  sltu         a5, a0, a5
                  bgeu         s5, s7, 192f
                  beq          s6, s3, 200f
                  slli         t0, t1, 31
                  xor          s11, ra, a7
                  sra          s4, a5, s5
                  auipc        a6, 1005456
190:              addi         a0, t6, 939
                  bne          a2, s1, 197f
192:              andi         a3, gp, 906
193:              slt          s1, s3, a6
                  bgeu         s7, a3, 199f
                  slti         s11, t1, 1776
                  or           a0, s10, t5
197:              addi         a1, a0, -550
                  sra          s11, ra, s0
199:              srai         s10, s4, 5
200:              or           s10, sp, t3
                  nop
                  slt          a2, s4, a2
                  xor          s3, a6, s9
                  bge          s6, s7, 223f
                  sra          t5, sp, zero
                  beq          a0, t3, 212f
                  beq          s8, s9, 211f
                  sll          tp, t3, t1
                  sltu         s10, a4, s7
                  slli         a4, s6, 11
211:              bne          zero, s8, 214f
212:              and          s6, s0, gp
                  andi         ra, a0, 510
214:              slti         a1, ra, -391
                  addi         ra, t3, 1508
                  xor          s11, s6, s9
                  bne          sp, s2, 223f
                  or           t0, s0, t1
                  lui          t1, 586914
                  and          a3, t6, a5
                  and          sp, tp, tp
                  bltu         a5, ra, 233f
223:              srli         a4, ra, 3
                  bne          s10, s0, 234f
                  slti         a3, t4, 333
                  blt          zero, t0, 236f
                  bne          a1, t2, 245f
                  add          a4, t4, s5
                  ori          s1, t1, 154
                  bgeu         zero, s5, 239f
                  bltu         gp, a5, 244f
                  nop
233:              bltu         tp, s11, 235f
234:              sra          sp, s7, s10
235:              bltu         t4, a2, 244f
236:              bltu         a5, a6, 255f
                  bge          s9, t6, 241f
                  bltu         s1, t4, 253f
239:              nop
                  addi         t5, sp, 1287
241:              slti         s2, s0, -2047
                  sltu         s10, t0, a7
                  add          a5, a7, a5
244:              auipc        s4, 253758
245:              slti         s0, zero, 1789
                  bgeu         a0, s9, 262f
                  slli         t2, a4, 26
                  auipc        s3, 386336
                  bgeu         t6, s8, 253f
                  addi         s0, s9, -38
                  xori         a2, a7, -1657
                  srai         a4, tp, 11
253:              sub          s3, s7, sp
                  slti         s4, s1, -1215
255:              sub          tp, s8, a7
                  bgeu         a2, t2, 274f
                  sub          a2, a6, a6
                  nop
                  auipc        a5, 95577
                  srai         a1, t4, 8
                  add          t1, tp, sp
262:              sra          s4, s8, a7
                  xori         t5, t2, 447
                  srli         s6, sp, 1
                  auipc        t0, 938780
                  sll          s8, ra, a3
                  xor          s1, a1, t3
                  slli         s5, a5, 9
                  andi         s10, t4, -1234
                  bgeu         s5, ra, 285f
                  bltu         zero, a0, 282f
                  xori         a3, s9, -117
                  beq          s4, a0, 280f
274:              xori         s1, s1, 115
                  xor          t6, sp, a6
                  slt          a2, s3, sp
                  sll          s2, t4, s9
                  sltiu        t6, a0, -1628
                  slt          a2, s11, s5
280:              and          gp, a6, s5
                  nop
282:              nop
                  sub          t6, s1, t4
                  or           t2, s9, a5
285:              blt          a4, s1, 296f
                  addi         s4, s5, -1517
                  slli         t0, a1, 5
                  and          a3, a4, s0
                  add          a5, s8, s5
                  add          tp, a4, a5
                  bgeu         s11, s2, 302f
                  srai         t1, ra, 6
                  and          s3, t2, t2
                  blt          a6, t0, 303f
                  addi         a3, a4, -304
296:              sub          t2, sp, t2
                  auipc        sp, 915219
                  slt          sp, zero, s2
                  xor          zero, s6, s10
                  addi         t6, t5, 843
                  auipc        t0, 571928
302:              bltu         s7, a3, 308f
303:              slli         a5, sp, 17
                  bltu         s2, a4, 310f
                  sub          s5, a1, t0
                  blt          s2, t5, 316f
                  auipc        t2, 927964
308:              srai         a2, s10, 27
                  slli         a6, t2, 2
310:              bltu         t3, s4, 312f
                  slli         a0, s7, 10
312:              sltu         a2, a4, a7
                  srai         a1, zero, 22
                  addi         sp, gp, 90
                  add          t6, s3, s1
316:              bge          s0, s3, 335f
                  sll          s1, s1, t6
                  bge          a4, s5, 337f
                  sll          a0, s8, a7
                  sra          gp, s11, a4
                  bgeu         t4, t6, 324f
                  bgeu         zero, ra, 328f
                  xor          a4, a0, s0
324:              srai         t6, s6, 28
                  andi         s1, zero, 1653
                  slti         s0, a7, 1848
                  xori         s4, t4, 51
328:              srai         a3, a1, 16
                  or           gp, s4, a0
                  ori          tp, a2, 1570
                  or           ra, s5, s11
                  beq          a1, s11, 348f
                  sub          t6, tp, a7
                  sltu         gp, tp, s6
335:              bge          a5, t0, 345f
                  srli         s8, s9, 16
337:              nop
                  auipc        a0, 160220
                  sltiu        t2, t5, 1440
                  or           s11, gp, a2
                  ori          a0, a1, -865
                  auipc        s3, 87256
                  addi         t6, s0, 893
                  bgeu         tp, a4, 357f
345:              slt          t3, s9, s2
                  xor          t6, t3, t6
                  bge          t4, ra, 352f
348:              or           a2, a6, s1
                  slti         s0, s8, -1108
                  bltu         a2, s10, 365f
                  bgeu         a1, t3, 365f
352:              slti         zero, a5, -60
                  sltiu        ra, t3, 1224
                  and          a7, a3, t5
                  srai         zero, a6, 23
                  or           s6, a6, s9
357:              nop
                  nop
                  slt          a3, tp, s1
                  sra          tp, t2, s4
                  sll          t6, t6, s7
                  andi         t5, sp, -822
                  blt          t5, t4, 367f
                  nop
365:              add          tp, s7, a5
                  addi         t2, zero, 1398
367:              lui          ra, 287175
                  blt          s3, t0, 383f
                  xori         s0, s3, -1663
                  lui          a5, 559717
                  or           t5, s5, s5
                  and          s5, t6, a4
                  andi         t3, a1, -745
                  or           t1, t5, a7
                  srl          s11, t6, t0
                  xori         a3, s9, -619
                  auipc        s0, 773787
                  add          s2, s10, s8
                  bgeu         s7, a0, 383f
                  ori          zero, s5, -585
                  auipc        a0, 874892
                  slli         a3, s3, 22
383:              sll          s10, a3, s6
                  bge          a1, s4, 388f
                  slti         t6, gp, -1358
                  nop
                  slli         s11, s10, 8
388:              lui          s8, 782534
                  addi         s11, a3, 1921
                  slt          ra, t4, t1
                  srl          s2, a0, s6
                  sra          a6, s6, s3
                  bge          s0, s9, 409f
                  sll          ra, s5, gp
                  sll          tp, s3, gp
                  or           s11, s8, a6
                  blt          s2, s9, 406f
                  slli         a4, s2, 24
                  auipc        s10, 1018070
                  or           s11, a6, s8
                  xori         a3, s2, 228
                  lui          a5, 712004
                  sra          t3, s8, a6
                  slt          s5, s3, s1
                  sltu         tp, a6, sp
406:              and          s5, t5, a2
                  srai         t1, a4, 25
                  sub          s5, t1, t6
409:              xor          zero, t3, t2
                  sra          s1, a4, t6
                  sub          t0, s5, s4
                  slli         tp, t0, 2
                  sub          s4, s5, s4
                  lui          t5, 546122
                  bltu         tp, s11, 423f
                  srl          sp, s7, a2
                  lui          a7, 109249
                  srli         s10, t5, 24
                  xor          tp, gp, zero
                  slt          a3, s8, t1
                  andi         sp, t4, -1185
                  xori         ra, s1, -469
423:              auipc        a7, 353148
                  sltiu        gp, t6, 808
                  xor          a4, t0, s3
                  and          s8, a3, s0
                  sra          a2, s7, a6
                  add          s1, s8, s8
                  addi         zero, a5, 1785
                  slt          a4, s8, s9
                  slti         a6, s11, -256
                  srli         s2, a5, 25
                  slli         a4, a5, 31
                  nop
                  bge          s3, s4, 445f
                  bgeu         sp, ra, 441f
                  and          s4, t4, t6
                  blt          s5, s6, 449f
                  addi         s0, s6, -111
                  or           s11, sp, s3
441:              sra          t6, s11, t2
                  or           a7, s0, t1
                  ori          t6, a0, 446
                  xori         t2, s9, 261
445:              lui          ra, 679261
                  srl          s5, ra, a7
                  slt          t0, t3, t6
                  and          ra, s4, s1
449:              sll          s4, t5, ra
                  add          s3, a6, sp
                  andi         t1, a0, -1998
                  blt          t6, a7, 460f
                  bltu         gp, s3, 463f
                  andi         t1, s1, -706
                  auipc        t5, 171950
                  sra          sp, t2, s11
                  srl          s4, s2, gp
                  slli         s11, s2, 8
                  add          s6, t6, t4
460:              sub          s0, s9, ra
                  sub          tp, s1, a3
                  beq          s6, a1, 466f
463:              sltiu        s5, s5, 1116
                  bltu         s6, a2, 466f
                  bge          a3, t6, 466f
466:              slli         s0, t4, 19
                  ori          s8, zero, 1775
                  sltiu        s10, s0, -517
                  slt          a3, t6, a1
                  or           a4, t2, zero
                  lw           ra, 4(t4)
                  slli         t2, a7, 23
                  addi         t4, t4, 40
                  or           a2, t2, s5
859:              addi x11, x1, 0
859:              jalr x11, x11, 0
sub_1:            auipc        zero, 378837
                  srai         a5, a5, 15
                  slt          a6, a5, s5
                  addi         t4, t4, -52
                  sw           ra, 4(t4)
                  addi         a0, s9, 1646
                  slli         t5, t1, 29
                  xor          a0, s10, a2
                  auipc        a0, 465688
                  lui          tp, 336071
                  bltu         s7, s0, sub_1_j2 #branch to jump instr
                  or           s5, s2, a6
sub_1_j2:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  slt          a4, gp, s10
                  addi         s4, tp, 628
                  and          a3, t6, ra
                  xor          s11, t4, t2
                  sll          t6, s10, s8
                  xor          zero, ra, a2
                  srli         a6, a4, 22
                  or           s10, sp, ra
                  or           s3, s1, s2
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           t3, region_1+1673 #start load_store_instr_stream_2
                  la           t2, region_1+1713 #start load_store_instr_stream_1
                  la           a3, region_1+1184 #start load_store_instr_stream_0
                  lb           s11, -1210(t2)
                  lb           t0, 264(t2)
                  la           s3, region_1+1334 #start load_store_instr_stream_4
                  la           a5, region_1+1285 #start load_store_instr_stream_3
                  sb           s11, -1010(t3)
                  lbu          gp, -1692(t2)
                  sh           a6, -988(s3)
                  lb           tp, -544(t2)
                  lhu          s8, -43(a5)
                  lbu          s0, 102(a3)
                  sh           t1, -1033(t2)
                  lhu          s6, -7(a5)
                  sh           t2, -1437(t3)
                  lh           s0, -983(t3)
                  sb           gp, -402(t2)
                  lbu          gp, -1174(t3)
                  sh           a4, -140(a3)
                  lbu          zero, -171(a3)
                  lb           tp, 95(a3)
                  sw           a2, -29(a5)
                  lbu          ra, -1284(s3)
                  sb           t2, -98(a3)
                  lbu          s6, -1013(s3)
                  sb           s6, 27(s3)
                  lb           a7, 54(a5)
                  sb           t6, 32(a5)
                  lb           s2, -1225(s3)
                  lb           s11, -149(a3)
                  lbu          s6, -1052(t2)
                  sh           a0, 220(s3)
                  sb           s1, 155(a3)
                  sb           s4, -98(t3)
                  sb           tp, 472(s3)
                  lb           s0, -44(a5)
                  lb           s2, -253(a3)
                  lb           s4, 153(s3)
                  lb           t1, -152(t2) #end load_store_instr_stream_1
                  lbu          s8, -26(a5)
                  lhu          s5, 51(a5) #end load_store_instr_stream_3
                  lhu          s5, -1214(s3) #end load_store_instr_stream_4
                  sh           s4, -1423(t3)
                  sb           t3, -1116(t3) #end load_store_instr_stream_2
                  sh           a4, 94(a3)
                  lb           sp, 42(a3) #end load_store_instr_stream_0
                  la           sp, region_0+533 #start riscv_load_store_rand_instr_stream_0
                  slti         t6, s9, 1638
                  slli         a4, a2, 7
                  auipc        s10, 895692
                  ori          gp, t5, -1290
                  nop
                  srl          s0, s4, s1
                  and          s10, t5, t2
                  lb           s4, -31(sp)
                  srl          s3, s0, a6
                  srai         s10, t6, 7
                  slti         s8, s7, 138
                  lbu          a0, 34(sp)
                  sb           s9, 34(sp)
                  lhu          t1, -1(sp)
                  lui          t1, 811676
                  sb           s10, -35(sp)
                  sb           s6, 16(sp)
                  sll          ra, s4, a5
                  sh           t4, -11(sp)
                  lb           s11, 39(sp)
                  sb           t5, -23(sp)
                  sh           t5, -1(sp)
                  lhu          s1, 45(sp)
                  or           ra, s2, s4
                  lhu          a1, -49(sp)
                  ori          a6, ra, -15
                  slti         a1, s10, -1642
                  lhu          a7, -31(sp)
                  slli         s1, a7, 8
                  lhu          a7, -17(sp)
                  nop
                  add          s0, ra, tp
                  or           s5, s6, t2
                  sub          s6, a1, gp
                  sltu         t3, sp, t6
                  lb           zero, 42(sp)
                  sll          a3, s1, t1
                  nop
                  lbu          a3, -53(sp)
                  lb           t6, -4(sp)
                  lui          s11, 1030893
                  sb           a5, 38(sp)
                  lh           s6, -37(sp)
                  lhu          a3, 59(sp)
                  lbu          t0, 58(sp)
                  srl          s5, s5, t4
                  lhu          s10, 33(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+21 #start riscv_load_store_hazard_instr_stream_0
                  lh           t5, 241(sp)
                  lui          a6, 299719
                  sh           t6, 241(sp)
                  lbu          t5, 241(sp)
                  lbu          a6, 241(sp)
                  lbu          t1, 241(sp)
                  sb           t1, 176(sp)
                  lbu          t2, 176(sp)
                  lb           t0, 191(sp)
                  srai         s0, a2, 22
                  lhu          s6, 191(sp)
                  lb           a6, 191(sp)
                  lhu          s2, 191(sp)
                  lh           a5, 191(sp)
                  sb           t5, 191(sp) #end riscv_load_store_hazard_instr_stream_0
                  sltu         s3, a4, gp
                  add          a7, s4, a7
                  srl          t3, t3, t2
                  add          a4, s6, t4
                  sll          s2, a1, gp
                  xor          tp, a2, a2
                  sub          s5, s5, t5
                  srl          a5, a6, a2
                  ori          s0, gp, 1957
                  blt          s9, s5, 12f
                  srl          gp, t4, tp
                  slli         a2, s9, 25
12:               slt          zero, a6, a6
                  beq          s10, a5, 20f
                  slt          zero, s11, s5
                  lui          ra, 172598
                  or           zero, t1, a2
                  srai         a2, a3, 12
                  sltu         s6, t6, t2
                  or           gp, gp, s6
20:               sll          t3, s6, s6
                  lui          a0, 378838
                  add          sp, s11, s6
                  xori         t5, s11, -2002
                  sll          a6, s11, t3
                  ori          t6, sp, 750
                  sll          tp, ra, t3
                  srai         t6, t1, 1
                  sll          t6, s7, a4
                  sltu         s3, s8, s0
                  sltu         a5, t6, a0
                  slli         t5, s8, 26
                  srai         s4, a5, 24
                  beq          a4, t5, 51f
                  bltu         a4, s9, 49f
                  srli         s4, a5, 0
                  andi         s2, a1, -1960
                  lui          sp, 587968
                  bltu         s11, a3, 45f
                  xor          t3, s6, t5
                  add          a5, ra, t2
                  srli         s1, t3, 31
                  slti         a1, s3, -1802
                  bge          ra, s1, 55f
                  lui          s0, 917588
45:               nop
                  beq          tp, a6, 63f
                  bne          t3, t6, 57f
                  addi         sp, sp, 42
49:               ori          s11, zero, -1465
                  sub          t5, a0, s4
51:               slti         a0, ra, 244
                  slli         gp, s8, 18
                  bge          t4, t1, 73f
                  srli         a3, s2, 11
55:               sltiu        s1, t4, 1242
                  srli         s0, s10, 18
57:               auipc        t1, 750637
                  blt          s7, s10, 68f
                  sltu         t1, t6, s3
                  bltu         s10, s5, 80f
                  sra          s8, t3, a4
                  bltu         sp, s0, 69f
63:               slli         s8, t5, 10
                  bltu         t4, s11, 65f
65:               slti         s11, s10, 506
                  sub          t3, t4, s2
                  sra          a7, s3, a0
68:               ori          sp, s9, -1207
69:               sltu         a2, zero, s4
                  srli         a6, t4, 3
                  srli         a6, s8, 21
                  xori         a2, s10, 1072
73:               nop
                  and          t3, s8, a5
                  xori         s5, ra, 352
                  sltiu        a2, sp, -1853
                  bne          s5, s6, 90f
                  andi         s1, t5, -854
                  or           s10, ra, a1
80:               andi         s1, s2, -41
                  auipc        a7, 367404
                  sltu         a0, s2, s6
                  bgeu         s3, a7, 92f
                  srl          a5, t2, s3
                  ori          t6, t6, 1299
                  slli         s1, t3, 14
                  nop
                  srl          sp, a5, a4
                  lui          s5, 807693
90:               slti         a1, a5, -1409
                  addi         t0, s3, -190
92:               sub          s11, a2, s5
                  add          a2, s5, s8
                  srli         s2, t1, 13
                  sltu         gp, s5, a4
                  lui          ra, 186546
                  sltiu        a2, zero, 635
                  lui          a2, 761198
                  lui          a4, 180366
                  auipc        gp, 489873
                  blt          s4, t2, 102f
102:              sra          t1, gp, t1
                  sll          s3, t4, a7
                  xori         a1, sp, -680
                  sub          a0, zero, s0
                  bne          a0, a3, 118f
                  slli         s4, a1, 12
                  bge          t3, s8, 118f
                  or           t0, a4, t0
                  sltiu        ra, t1, -583
                  blt          a1, s8, 121f
                  andi         t6, s2, -1121
                  srl          s10, a3, tp
                  slt          tp, s1, t1
                  beq          s0, s2, 130f
                  xori         sp, a5, 852
                  auipc        t3, 370103
118:              xor          a5, t5, s5
                  sra          a3, a5, t3
                  and          a4, a0, sp
121:              sltiu        s6, s7, 231
                  slti         gp, a5, 222
                  slti         t2, s8, 642
                  or           s3, s10, a7
                  addi         a7, s1, -896
                  blt          a7, s4, 145f
                  sltu         s5, tp, s5
                  srli         gp, a0, 23
                  ori          t0, a5, 2043
130:              or           s2, t4, t2
                  xor          sp, t4, t0
                  blt          s5, s7, 141f
                  sltu         a6, a7, t1
                  slti         s5, a7, 1018
                  sub          a5, a1, a2
                  lui          a3, 110512
                  bne          a3, a2, 152f
                  sub          s4, t4, ra
                  sub          a3, s0, s3
                  slli         a2, t4, 0
141:              sltu         sp, s9, a3
                  blt          a5, s4, 158f
                  sub          s6, a3, t3
                  bge          a2, t3, 161f
145:              slli         s0, gp, 1
                  sltiu        t0, s11, -737
                  lui          s3, 684905
                  xori         s6, s3, 892
                  xori         zero, s11, 281
                  srli         s10, t3, 21
                  or           t3, a5, a6
152:              nop
                  bne          ra, tp, 161f
                  srl          tp, t0, a4
                  add          zero, a7, s8
                  blt          t6, tp, 161f
                  srai         t3, t0, 26
158:              and          t3, s3, s11
                  slli         t5, t0, 15
                  andi         a0, a0, -1908
161:              xor          s10, s8, a1
                  sll          s0, zero, s6
                  lw           ra, 4(t4)
                  slli         t2, gp, 14
                  srai         a0, t2, 17
                  addi         t4, t4, 52
                  or           t2, a1, s4
302:              addi x21, x1, 1
302:              jalr x21, x21, 0
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x25, x29, zero
                  csrr x10, 0x300 # MSTATUS
                  csrr x10, 0x342 # MCAUSE
                  srli x10, x10, 31
                  bne x10, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x10, 0x341 # MEPC
                  csrr x10, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x10, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x10, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x10, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x10, x12, ecall_handler
                  li x12, 0x1
                  beq x10, x12, instr_fault_handler
                  li x12, 0x5
                  beq x10, x12, load_fault_handler
                  li x12, 0x7
                  beq x10, x12, store_fault_handler
                  li x12, 0xc
                  beq x10, x12, pt_fault_handler
                  li x12, 0xd
                  beq x10, x12, pt_fault_handler
                  li x12, 0xf
                  beq x10, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x10, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x10, _start
                  sw x0, 0(x10)
                  sw x1, 4(x10)
                  sw x2, 8(x10)
                  sw x3, 12(x10)
                  sw x4, 16(x10)
                  sw x5, 20(x10)
                  sw x6, 24(x10)
                  sw x7, 28(x10)
                  sw x8, 32(x10)
                  sw x9, 36(x10)
                  sw x10, 40(x10)
                  sw x11, 44(x10)
                  sw x12, 48(x10)
                  sw x13, 52(x10)
                  sw x14, 56(x10)
                  sw x15, 60(x10)
                  sw x16, 64(x10)
                  sw x17, 68(x10)
                  sw x18, 72(x10)
                  sw x19, 76(x10)
                  sw x20, 80(x10)
                  sw x21, 84(x10)
                  sw x22, 88(x10)
                  sw x23, 92(x10)
                  sw x24, 96(x10)
                  sw x25, 100(x10)
                  sw x26, 104(x10)
                  sw x27, 108(x10)
                  sw x28, 112(x10)
                  sw x29, 116(x10)
                  sw x30, 120(x10)
                  sw x31, 124(x10)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x10, 0x341
                  addi  x10, x10, 4
                  csrw  0x341, x10
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x10, 0x300 # MSTATUS;
                  csrr  x10, 0x304 # MIE;
                  csrr  x10, 0x344 # MIP;
                  csrrc x10, 0x344, x10 # MIP;
                  add x29, x25, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
