.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x17, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xb
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xb6a4e8f1
                  li x5, 0x80000000
                  li x6, 0xfb7ff947
                  li x8, 0xf61ac3b7
                  li x9, 0xc
                  li x10, 0xf
                  li x11, 0x80000000
                  li x12, 0x8
                  li x13, 0x0
                  li x14, 0xed067ced
                  li x15, 0x0
                  li x16, 0x337687c
                  li x18, 0xfa35bf4d
                  li x19, 0x0
                  li x20, 0xa7326b3f
                  li x21, 0x80000000
                  li x22, 0xf8f3f19b
                  li x23, 0xd
                  li x24, 0x9
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x8
                  li x28, 0x80000000
                  li x29, 0xe
                  li x30, 0xcdde8e1f
                  li x31, 0xff8dbeec
                  la x7, user_stack_end
main:             and          s2, zero, ra
                  la           s5, sub_1
                  slti         s11, a4, 1016
                  sub          tp, a1, s4
                  addi         s0, t3, -781
                  addi         s5, s5, -97
                  slt          s7, a2, s1
                  or           ra, s6, ra
                  bne          t1, s6, main_j2 #branch to jump instr
                  slli         s2, s4, 9
                  srli         s1, a0, 24
                  sltiu        a1, t1, 1842
main_j2:          jalr         ra, s5, 98 #jump main -> sub_1
                  la           s11, region_1+697 #start load_store_instr_stream_0
                  lb           t3, 4(s11)
                  sb           s2, 12(s11)
                  la           a3, region_1+1816 #start load_store_instr_stream_1
                  lbu          a5, -81(a3)
                  sh           s11, -15(s11)
                  lbu          s7, 182(a3)
                  lh           a0, 15(s11)
                  lh           s4, -248(a3)
                  lbu          a1, -7(s11)
                  lhu          ra, -98(a3)
                  lbu          a6, 5(s11)
                  lbu          a1, -239(a3)
                  sb           t5, -3(s11)
                  lbu          a0, -143(a3)
                  lb           t1, -242(a3)
                  sb           s2, 7(s11)
                  lb           a5, 171(a3) #end load_store_instr_stream_1
                  lbu          sp, -7(s11) #end load_store_instr_stream_0
                  la           a3, region_1+406 #start riscv_load_store_hazard_instr_stream_0
                  sb           a4, 131(a3)
                  lb           a5, 131(a3)
                  lb           s8, 131(a3)
                  lb           s10, 173(a3)
                  lb           a4, -175(a3)
                  lb           t5, -175(a3)
                  sb           a3, -175(a3)
                  lbu          a2, -175(a3)
                  lbu          s7, -175(a3)
                  sra          zero, a0, t4
                  lb           t6, -147(a3) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+1754 #start riscv_load_store_rand_instr_stream_0
                  and          a2, s3, s9
                  sb           s5, 47(sp)
                  lh           s6, -40(sp)
                  sll          a3, s9, s10
                  sll          s5, t5, a4
                  slli         s5, s4, 10
                  slli         s0, a0, 12
                  sb           a6, -22(sp)
                  lb           a6, 43(sp)
                  lbu          gp, -16(sp)
                  slt          a5, s0, a1
                  sb           s9, -41(sp)
                  lb           a4, 33(sp)
                  xor          ra, t1, sp
                  nop
                  lbu          t3, -39(sp)
                  srl          a0, a0, a2
                  sltiu        s7, zero, 1913
                  sb           a5, 57(sp)
                  add          s11, s0, a3
                  lh           a4, 12(sp)
                  lb           zero, 39(sp)
                  lbu          s2, 51(sp)
                  nop
                  andi         t1, a3, -1598
                  lbu          a5, -27(sp)
                  xor          s8, s7, s10
                  srli         a2, zero, 2
                  slt          s1, s2, ra
                  sb           t0, -49(sp)
                  ori          a5, t4, -1708
                  andi         s3, s8, -475
                  and          ra, t5, s1
                  addi         t1, sp, 1981
                  slli         a4, zero, 22
                  sll          s2, sp, a2
                  sltu         s3, a2, a2
                  lw           a5, 30(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s2, s2, 14f
                  srl          t3, tp, a0
                  auipc        s9, 433030
                  bge          s3, a2, 17f
                  andi         a5, t1, -1803
                  sll          ra, s0, gp
                  xor          t1, ra, a6
                  sltiu        a4, a7, 1201
                  auipc        sp, 445326
                  xori         s9, zero, -1503
                  srl          s5, s0, a0
                  and          s6, s7, t3
                  srai         a1, ra, 17
                  xori         a0, sp, 689
14:               slti         sp, t3, 763
                  srl          a5, zero, s7
                  slti         s5, gp, 1258
17:               srai         s4, s1, 10
                  srli         s5, t4, 4
                  xor          zero, a5, t2
                  and          s9, a0, t4
                  add          a2, s1, s2
                  sll          a4, a4, t2
                  beq          a7, a3, 30f
                  bne          sp, sp, 25f
25:               srli         s4, a6, 25
                  sll          t3, t6, a7
                  or           a4, a3, a6
                  slt          s11, s1, t1
                  sll          s2, s11, s0
30:               lui          s3, 560842
                  srl          t5, sp, s3
                  sltiu        tp, a3, -1752
                  or           s1, a6, s4
                  slt          tp, sp, s7
                  srai         t5, tp, 20
                  slli         gp, s6, 8
                  sltiu        a0, s11, -1971
                  and          a3, sp, gp
                  and          t1, ra, s6
                  bltu         ra, s11, 53f
                  slt          zero, t1, a1
                  add          a1, a0, a4
                  blt          t6, sp, 63f
                  nop
                  slti         a3, a3, 643
                  bltu         s2, s9, 53f
                  bne          s8, gp, 54f
                  slt          ra, a4, a2
                  or           sp, s4, s10
                  sltiu        s8, s11, -1322
                  bgeu         t5, a6, 53f
                  and          a5, t6, s0
53:               addi         a4, a5, 29
54:               xori         a6, s7, -1319
                  srai         s1, s3, 7
                  nop
                  bge          a5, t4, 73f
                  srai         s6, t6, 23
                  addi         t0, a0, 18
                  and          s3, s0, s4
                  ori          gp, tp, -782
                  sltu         s8, t4, t4
63:               bne          s1, a6, 69f
                  srli         s8, s4, 4
                  sra          t0, ra, a5
                  sltiu        zero, t2, -351
                  sub          tp, a7, t6
                  xori         zero, s10, -1335
69:               ori          tp, zero, -1520
                  srli         a0, a6, 9
                  xori         s2, zero, -1945
                  nop
73:               xor          ra, t4, t1
                  sll          s10, a2, t4
                  bltu         sp, tp, 88f
                  beq          t2, tp, 92f
                  la           ra, sub_1
                  sub          gp, s6, tp
                  xori         s3, a7, 449
                  srai         s3, tp, 9
                  sll          tp, t0, s9
                  addi         ra, ra, -113
                  slt          s7, s1, s9
                  sltu         t5, t6, s0
                  add          s11, t1, s6
                  slli         a4, s3, 31
main_j1:          jalr         ra, ra, 114 #jump main -> sub_1
                  sra          s5, s11, tp
                  slli         s11, a3, 7
                  lui          s11, 621937
                  add          a2, ra, s1
                  srli         t1, a5, 29
                  ori          s10, s11, -1477
                  ori          s9, t2, -1322
                  bne          t5, s4, 91f
                  andi         t1, t2, -834
                  sra          a4, s4, s3
                  slti         ra, s4, -771
88:               nop
                  and          t1, a7, s5
                  xor          s9, gp, a1
91:               ori          tp, a7, -880
92:               blt          a4, t0, 112f
                  bgeu         s7, s6, 113f
                  sub          gp, s8, t5
                  add          s11, t1, t4
                  sra          t6, sp, a1
                  slti         s4, s8, -637
                  slt          s1, a6, tp
                  bge          a7, tp, 111f
                  bgeu         s0, t1, 115f
                  and          a3, s3, t4
                  srli         a4, s5, 24
                  add          s4, t6, t1
                  bge          zero, a2, 119f
                  auipc        a0, 925783
                  add          a3, a7, t0
                  bge          t0, zero, 109f
                  bge          s9, s7, 115f
109:              bne          t6, t1, 121f
                  bltu         s6, s4, 126f
111:              slt          a1, s5, a0
112:              auipc        a2, 929487
113:              slt          t6, a4, a6
                  bgeu         s6, t4, 121f
115:              and          sp, a0, s7
                  srli         t3, tp, 17
                  nop
                  bge          s8, a5, 131f
119:              sub          t1, zero, gp
                  slt          s2, s1, t1
121:              lui          zero, 269434
                  bge          t1, s9, 129f
                  srai         a3, a1, 12
                  bge          a1, t2, 144f
                  slti         s5, s10, 5
126:              sll          s6, t4, t6
                  bltu         a2, a1, 130f
                  and          t5, t4, sp
129:              bge          gp, t1, 144f
130:              or           a2, a3, t6
131:              and          a5, a5, s8
                  auipc        s11, 65096
                  or           a6, a0, ra
                  beq          s3, t3, 145f
                  srli         a0, a0, 24
                  add          a6, gp, sp
                  sltiu        t1, s10, 1704
                  slli         zero, sp, 7
                  slli         s7, s5, 11
                  andi         s6, t5, 1103
                  sltiu        sp, sp, 477
                  sll          s10, t4, t2
                  xor          ra, s6, s5
144:              slli         a0, gp, 28
145:              sub          tp, t3, zero
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         t1, s5, 1300
                  xor          s10, t3, a2
                  srl          sp, s4, t2
                  sltu         s7, a5, a3
                  srl          a3, t6, a2
                  and          s7, zero, s4
                  addi         t2, t2, -48
                  or           s8, s3, t0
                  sw           ra, 4(t2)
                  srli         sp, a0, 4
                  andi         a5, a3, 1793
                  la           tp, region_1+1723 #start riscv_load_store_hazard_instr_stream_2
                  lb           gp, -40(tp)
                  lb           s6, -18(tp)
                  lbu          s8, -18(tp)
                  lh           t5, 1(tp)
                  lbu          s10, 63(tp)
                  lhu          a4, 63(tp)
                  sh           a4, 63(tp)
                  lhu          s9, 63(tp)
                  addi         s7, a2, -1613
                  lh           zero, 63(tp)
                  lh           s11, 29(tp)
                  lbu          a4, 62(tp)
                  sb           s8, 62(tp)
                  sb           t6, 62(tp)
                  sb           s7, 62(tp)
                  sb           sp, 62(tp)
                  lbu          t6, 34(tp)
                  lbu          a3, 34(tp)
                  lb           a2, 34(tp)
                  sb           gp, -64(tp)
                  lb           t1, -64(tp) #end riscv_load_store_hazard_instr_stream_2
                  la           a5, region_1+1593 #start load_store_instr_stream_0
                  la           a1, region_1+1700 #start load_store_instr_stream_1
                  sb           t4, -1055(a1)
                  lbu          s0, 47(a5)
                  lhu          a4, 11(a5)
                  lh           zero, -150(a1)
                  sh           gp, -862(a1)
                  sb           s3, -38(a5)
                  sb           a2, -43(a5)
                  lbu          s8, -1185(a1)
                  sb           a6, -12(a5)
                  lb           s10, -1223(a1)
                  sb           s9, -654(a1)
                  lbu          s3, 24(a5)
                  lbu          a0, 18(a5)
                  sh           a6, -574(a1)
                  lbu          zero, 6(a5)
                  lb           s10, -203(a1) #end load_store_instr_stream_1
                  sb           tp, 46(a5)
                  sb           s9, -21(a5) #end load_store_instr_stream_0
                  la           a1, region_1+1427 #start load_store_instr_stream_3
                  la           a3, region_1+959 #start load_store_instr_stream_4
                  la           s8, region_1+1896 #start load_store_instr_stream_2
                  sb           s4, 27(s8)
                  la           t0, region_1+697 #start load_store_instr_stream_1
                  lb           a0, 51(a1)
                  sw           gp, 49(a1)
                  lh           s0, -9(a3)
                  sw           s8, -61(t0)
                  la           t1, region_1+1291 #start load_store_instr_stream_0
                  lbu          s2, -12(a3)
                  lbu          s0, -166(s8)
                  lb           t3, 5(a3)
                  lb           s2, -57(t1)
                  sb           s8, 396(t0)
                  lb           s10, -51(a1)
                  lb           s11, 502(t0)
                  sb           s9, -108(s8)
                  sw           s11, 25(t1)
                  sb           s3, 1082(t0)
                  sb           a3, 62(a1)
                  sb           tp, 24(s8)
                  sb           s8, 54(t1)
                  lhu          s4, 23(a1)
                  lbu          t3, 72(s8)
                  lb           s4, 28(a1)
                  sb           a3, 10(a3)
                  sh           gp, -27(t1)
                  lbu          s9, -10(a1)
                  sb           a4, -62(a1) #end load_store_instr_stream_3
                  sb           a7, 31(s8) #end load_store_instr_stream_2
                  lhu          s3, 1179(t0)
                  sh           tp, -595(t0) #end load_store_instr_stream_1
                  lb           t6, -16(a3) #end load_store_instr_stream_4
                  lbu          s6, 47(t1) #end load_store_instr_stream_0
                  la           a5, region_1+596 #start load_store_instr_stream_2
                  la           a6, region_1+315 #start load_store_instr_stream_3
                  lw           s1, -240(a5)
                  sb           t3, -5(a6)
                  la           s2, region_1+1014 #start load_store_instr_stream_1
                  la           s6, region_1+1725 #start load_store_instr_stream_0
                  lb           tp, 0(s6)
                  sh           s8, -168(a5)
                  lhu          gp, 188(a5)
                  lbu          s11, 1(s6)
                  lhu          s1, -11(s6)
                  sb           s8, -7(s2)
                  sb           s7, -7(a6)
                  lhu          gp, -11(a6)
                  lbu          gp, 1(a5)
                  lbu          s7, -159(a5)
                  lbu          a1, -6(a6)
                  lbu          s5, -14(s6)
                  lb           ra, 12(a6)
                  lb           gp, -4(s2)
                  lb           t6, 10(s6)
                  lbu          a1, 241(a5)
                  sw           t0, -32(a5)
                  lbu          a2, -14(s2)
                  lbu          t0, -12(a6) #end load_store_instr_stream_3
                  lh           s8, 184(a5)
                  lb           gp, 1(s2)
                  lbu          s11, -57(s2)
                  lb           t1, 6(s6)
                  lb           s7, -106(a5)
                  lb           ra, 253(a5) #end load_store_instr_stream_2
                  lb           s1, -58(s2) #end load_store_instr_stream_1
                  sb           a4, 5(s6) #end load_store_instr_stream_0
                  la           t0, region_1+547 #start load_store_instr_stream_1
                  la           gp, region_1+792 #start load_store_instr_stream_4
                  sb           s10, -9(t0)
                  la           t1, region_1+1688 #start load_store_instr_stream_0
                  lh           s8, 1(t0)
                  sb           a6, 9(t1)
                  lb           t5, 8(t0)
                  lb           a5, -617(gp)
                  lbu          s5, -683(gp)
                  lbu          s7, -182(t1)
                  sb           s8, 446(gp)
                  la           a6, region_1+76 #start load_store_instr_stream_2
                  lbu          s1, -10(t0)
                  lb           s5, -9(a6)
                  sb           s11, 4(t0)
                  lb           s6, 0(t0)
                  lbu          t5, 9(a6)
                  la           t6, region_1+630 #start load_store_instr_stream_3
                  sb           a5, 66(t1)
                  lbu          tp, 288(gp)
                  lbu          sp, 222(t6)
                  sb           s0, 179(t6)
                  sb           s2, -1(a6)
                  lbu          s3, 1200(gp)
                  sb           ra, 242(t1)
                  lbu          a0, -375(gp)
                  lbu          sp, -9(a6)
                  sh           a6, 200(t1)
                  lb           a5, -4(t0)
                  sb           s2, -347(gp)
                  sw           a0, -140(t1)
                  lbu          s8, 695(gp)
                  lhu          a2, -26(t6)
                  lbu          s5, 161(t1)
                  lbu          s11, 117(t6)
                  sb           s7, 16(a6)
                  lhu          t3, -28(gp)
                  lb           s8, -42(t6)
                  lb           s11, -14(t0) #end load_store_instr_stream_1
                  lhu          a0, -2(t6)
                  lw           s0, -246(t6) #end load_store_instr_stream_3
                  lh           tp, 6(a6) #end load_store_instr_stream_2
                  lb           s11, -449(gp) #end load_store_instr_stream_4
                  sb           t2, 163(t1) #end load_store_instr_stream_0
                  la           s10, region_0+1862 #start riscv_load_store_rand_instr_stream_2
                  sll          zero, a7, t1
                  lw           s1, -190(s10)
                  sb           s10, -87(s10)
                  lb           s7, -98(s10)
                  srl          gp, t4, a6
                  lh           t1, -172(s10)
                  sb           a4, -149(s10)
                  sb           t5, -63(s10)
                  sb           gp, -177(s10)
                  sra          a6, s10, t3
                  sb           t1, -104(s10)
                  sub          t5, s0, s4
                  slli         a1, a4, 19
                  addi         ra, a1, 1586
                  lbu          a1, -241(s10)
                  lhu          gp, -208(s10)
                  nop
                  sw           a1, -2(s10)
                  sb           gp, -205(s10)
                  lh           s11, -218(s10)
                  slt          t0, ra, s6
                  nop
                  sb           a7, 123(s10)
                  sb           s0, -149(s10)
                  andi         s9, s6, -476
                  ori          a6, tp, 997
                  slti         s4, sp, 918
                  lhu          s8, 30(s10)
                  lb           a5, 132(s10)
                  srli         s7, t6, 20
                  lh           s6, -100(s10)
                  sub          s8, zero, s8
                  sltiu        s1, t1, 874
                  sub          zero, t1, s5
                  add          a6, a0, s6
                  sh           s5, 68(s10)
                  sb           s2, -120(s10)
                  lbu          t5, -2(s10)
                  slli         s1, s5, 26
                  lui          a1, 250570
                  lb           s6, 54(s10) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+136 #start riscv_load_store_rand_instr_stream_3
                  sb           s2, 14(a3)
                  lb           sp, 41(a3)
                  sb           s1, -51(a3)
                  sb           t5, 35(a3)
                  lb           a5, -39(a3)
                  sb           s1, 51(a3)
                  sltu         a5, gp, a1
                  add          s0, tp, a7
                  lbu          t3, 33(a3)
                  addi         a2, s10, -1027
                  sb           a4, -27(a3)
                  srai         ra, a3, 7
                  add          s0, a5, t2
                  sltu         t5, s11, zero
                  srl          t1, t6, s11
                  ori          a1, a3, 393
                  lb           s1, -29(a3)
                  lbu          s2, 61(a3)
                  or           t0, s8, s7
                  sb           s0, 15(a3)
                  sltiu        t5, t6, -863
                  xori         s9, a0, -1362
                  sltiu        s4, a1, 1681
                  lbu          a4, -4(a3)
                  nop
                  auipc        a6, 729489
                  sb           a6, -27(a3)
                  nop
                  sltiu        t0, s7, 1357
                  sll          s2, t0, t4
                  lb           s4, 39(a3)
                  nop
                  ori          a2, a3, 444
                  add          tp, gp, s9
                  ori          t6, s6, 1561
                  sb           t6, 37(a3) #end riscv_load_store_rand_instr_stream_3
                  la           t3, region_1+658 #start riscv_load_store_hazard_instr_stream_3
                  lb           s8, 1106(t3)
                  lhu          s10, 1106(t3)
                  lw           a6, 1106(t3)
                  lbu          t1, 945(t3)
                  sb           s10, 556(t3)
                  lb           s2, 365(t3)
                  lb           a2, -653(t3)
                  lui          a4, 485127
                  lbu          a6, 789(t3)
                  sb           s7, 789(t3)
                  sub          s3, t1, s3
                  sb           a3, 1336(t3)
                  slli         t0, t2, 25
                  lbu          a2, -26(t3)
                  sb           s0, 489(t3)
                  srai         s6, s5, 15
                  sb           s8, 202(t3)
                  sb           a1, -223(t3) #end riscv_load_store_hazard_instr_stream_3
                  sub          t3, s11, s2
                  auipc        a4, 672391
                  xor          s2, sp, gp
                  ori          a5, tp, 1003
                  slti         t6, s1, 2012
                  bge          a2, a3, 18f
                  add          s0, t3, a1
                  slli         a5, s6, 31
                  sltu         t0, t2, zero
                  xor          tp, s8, a2
                  beq          gp, s9, 16f
                  bltu         s0, s2, 14f
                  sltu         s1, s3, s11
                  srl          s8, a7, t5
14:               addi         s6, s9, -1718
                  srai         sp, t6, 13
16:               add          sp, a6, s10
                  sltu         t3, s10, zero
18:               bne          a5, t1, 35f
                  nop
                  sub          ra, s9, s0
                  srli         ra, t6, 8
                  sub          s11, t6, s8
                  bne          a7, tp, 33f
                  srl          sp, s6, s3
                  srli         zero, a4, 13
                  auipc        s5, 728166
                  xor          s0, t2, a6
                  ori          a5, ra, 663
                  xori         ra, s2, -510
                  sltiu        gp, a2, -1313
                  ori          gp, a4, -1242
                  addi         ra, a4, -562
33:               sll          tp, t2, t1
                  sra          t0, s5, s4
35:               bltu         a7, tp, 43f
                  bgeu         t5, a6, 38f
                  sra          a6, s9, s7
38:               srli         s1, s5, 12
                  sll          a4, gp, s9
                  sltu         a0, s1, s11
                  sltiu        s6, a0, 969
                  sll          s2, s11, s4
43:               slli         s10, t0, 7
                  srai         a0, a7, 5
                  srai         s6, s6, 22
                  srli         a5, a0, 12
                  beq          t5, s1, 65f
                  xori         a0, tp, 1677
                  sltiu        a4, t4, -1986
                  nop
                  auipc        a0, 1005726
                  sra          s0, a6, t2
                  srai         a5, t6, 1
                  bgeu         s0, sp, 60f
                  beq          t2, gp, 72f
                  andi         a6, s11, -92
                  sub          s8, t3, t6
                  andi         s9, s5, 163
                  bge          s6, a6, 66f
60:               slli         t3, t1, 17
                  add          a0, s0, t3
                  addi         t3, t2, 390
                  nop
                  xor          s0, a7, s10
65:               bgeu         s8, a5, 74f
66:               bltu         sp, s10, 73f
                  sltu         s7, s3, zero
                  sub          t5, t3, s2
                  bne          s6, t1, 70f
70:               xori         s0, t1, -95
                  srli         a0, t3, 17
72:               bltu         t3, t6, 81f
                  la           ra, region_0+1211 #start riscv_load_store_hazard_instr_stream_0
                  lb           s3, 151(ra)
                  lb           a0, 151(ra)
                  lbu          a3, 151(ra)
                  lbu          t3, 151(ra)
                  sh           t0, 151(ra)
                  sra          t0, t5, s1
                  lb           s3, 151(ra)
                  lhu          a3, 151(ra)
                  sb           zero, 151(ra)
                  lhu          a2, 151(ra)
                  sltu         a0, t5, a0
                  sb           s3, 151(ra)
                  lhu          s11, 151(ra)
                  lhu          s6, 151(ra)
                  lh           s10, 151(ra)
                  sb           a2, 151(ra)
                  lb           s0, 151(ra)
                  lhu          s3, 151(ra) #end riscv_load_store_hazard_instr_stream_0
73:               srai         a4, s9, 29
74:               andi         s5, s2, -1816
                  lui          t5, 512684
                  lui          a2, 178652
                  and          t3, t4, a4
                  slti         a0, ra, 450
                  sltu         s3, s3, sp
                  beq          s6, a6, 85f
81:               sltiu        a4, zero, -926
                  sra          a4, s1, s2
                  slli         a3, s1, 27
                  blt          a3, a4, 92f
85:               srli         t6, s6, 12
                  beq          t2, s4, 104f
                  auipc        s4, 976019
                  add          s9, a4, s6
                  bltu         t5, t2, 104f
                  xori         s5, s6, -1742
                  slti         t0, s0, 1104
92:               sll          gp, zero, zero
                  xori         zero, a6, -990
                  slli         s7, a1, 21
                  bgeu         gp, zero, 104f
                  xor          t1, t4, a4
                  beq          a6, zero, 110f
                  ori          s5, a7, 1143
                  srli         s7, s6, 9
                  srl          gp, a4, a6
                  bltu         s0, sp, 116f
                  slt          s11, s1, s5
                  beq          s0, a2, 121f
104:              sra          tp, t1, t6
                  sub          s1, t3, s3
                  xor          sp, t5, a5
                  srl          a3, s9, s8
                  lui          s10, 727172
                  xor          s2, gp, gp
110:              xor          a1, s5, tp
                  sltiu        s1, tp, 1820
                  and          ra, a4, gp
                  srli         s1, s6, 7
                  srli         t5, s9, 16
                  auipc        t3, 314576
116:              bge          s9, a6, 135f
                  sll          s4, t1, t2
                  and          s2, s7, a7
                  sub          a0, s7, a1
                  beq          a6, s9, 136f
121:              bgeu         s2, s2, 132f
                  bltu         a3, s3, 132f
                  nop
                  sub          s9, s1, a0
                  xor          t1, s2, s7
                  sll          zero, t5, s5
                  xor          tp, s5, s3
                  sltu         s6, t1, tp
                  sub          a0, t2, tp
                  addi         t3, t0, 1062
                  sltu         a0, s4, tp
132:              add          sp, s1, zero
                  bltu         ra, t5, 147f
                  or           s9, t2, t5
135:              bltu         s5, s2, 149f
136:              beq          s1, a4, 153f
                  and          a6, s0, s10
                  sub          s5, gp, a5
                  auipc        a0, 634188
                  ori          tp, s6, 571
                  slti         a2, s2, 1960
                  sltiu        a1, s6, 1498
                  xori         a6, a4, -221
                  addi         a5, t0, 112
                  or           a6, s9, a7
                  blt          s11, t5, 160f
147:              slti         t1, t0, -1777
                  ori          a1, ra, -39
149:              bgeu         a1, a3, 167f
                  bge          s0, s1, 166f
                  lui          s8, 157720
                  srl          s0, ra, a1
153:              auipc        s3, 742880
                  sltu         t1, a2, t5
                  la           t1, region_0+343 #start riscv_load_store_rand_instr_stream_0
                  sb           s11, -2(t1)
                  lbu          a1, -16(t1)
                  lb           s9, -9(t1)
                  sb           a3, -14(t1)
                  lhu          s9, -3(t1)
                  lb           a6, -3(t1)
                  xor          ra, s3, s2
                  lui          s2, 653464
                  sh           a3, 7(t1)
                  add          s0, zero, a1
                  nop
                  or           t5, t1, sp
                  nop
                  slti         zero, t4, 696
                  sb           t0, -11(t1)
                  nop
                  lb           sp, 1(t1)
                  auipc        t0, 48319
                  lb           s0, 3(t1)
                  xori         a2, t2, -1564
                  sltiu        s5, t1, 1402
                  sb           t2, 0(t1)
                  sb           t2, -5(t1) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s4, a2, -820
                  slti         a1, a1, -1422
                  add          a2, t0, s0
                  nop
                  or           a2, s4, t6
160:              andi         sp, sp, -183
                  beq          s4, a4, 168f
                  auipc        s3, 865736
                  bge          s2, s1, 180f
                  ori          s3, s10, 901
                  sltu         s1, s10, s1
166:              xori         s2, ra, 1462
167:              slli         ra, s4, 29
168:              nop
                  slli         t6, sp, 11
                  sub          s11, s11, s0
                  beq          a0, s2, 186f
                  bge          a7, zero, 189f
                  auipc        ra, 816943
                  bgeu         t1, t6, 193f
                  slt          t3, s6, s10
                  beq          t2, s11, 186f
                  bne          s3, a0, 192f
                  bgeu         a3, s7, 180f
                  addi         a0, gp, 405
180:              srli         s1, s9, 25
                  blt          s6, gp, 190f
                  lui          t6, 389198
                  xor          a4, s0, a2
                  sra          t5, s7, a0
                  xor          s0, s11, s4
186:              sltu         t3, t4, tp
                  srli         a4, a6, 29
                  bltu         t0, a7, 196f
189:              sra          tp, a7, s8
190:              slti         s11, s2, -2048
                  sub          s1, tp, a3
192:              beq          t1, s2, 200f
193:              sra          sp, t2, a7
                  sltu         s7, a5, s1
                  xori         a2, s1, -50
196:              xor          ra, s7, a4
                  bge          a2, gp, 214f
                  sra          s2, tp, a5
                  slli         s5, s2, 21
200:              add          a2, a4, s7
                  nop
                  sra          s7, s1, t5
                  blt          t2, s0, 216f
                  slt          t1, s6, t2
                  bne          s4, t3, 215f
                  sltu         s7, t3, s1
                  lui          a4, 10380
                  bne          a0, t1, 215f
                  bne          a2, a5, 220f
                  srli         s6, a3, 19
                  srl          s3, t1, s10
                  andi         a5, zero, -1534
                  beq          t4, s7, 231f
214:              nop
215:              blt          a6, t1, 233f
216:              auipc        s4, 345347
                  bge          s6, a3, 218f
218:              addi         t0, s5, -551
                  beq          s3, t0, 222f
220:              sltiu        a4, t6, 482
                  srli         s8, s5, 17
222:              blt          s2, t0, 231f
                  slli         gp, s4, 8
                  slti         s7, a0, -844
                  la           sp, region_1+1497 #start riscv_load_store_hazard_instr_stream_1
                  sltiu        s6, t0, -980
                  lh           s8, -211(sp)
                  sh           s4, -211(sp)
                  lb           a2, 50(sp)
                  lb           a0, 50(sp)
                  sb           a7, -232(sp)
                  lbu          a1, -232(sp)
                  and          s9, a1, sp
                  lb           a5, -232(sp)
                  lbu          s9, -232(sp)
                  sb           s9, -232(sp)
                  sb           zero, -232(sp)
                  sb           s3, -232(sp)
                  sb           t0, -232(sp)
                  lbu          a0, -232(sp)
                  lbu          t0, -232(sp)
                  lb           t0, -232(sp)
                  lb           s11, -232(sp) #end riscv_load_store_hazard_instr_stream_1
                  add          s9, ra, a4
                  and          a1, a2, a0
                  srai         t5, a2, 24
                  lui          sp, 812282
                  and          s0, sp, t2
                  xor          tp, a7, s2
231:              andi         t0, a7, -872
                  slti         t1, s3, 815
233:              and          s8, t4, a1
                  xor          s2, s1, s9
                  xor          a3, a1, a1
                  sltiu        a3, gp, -1998
                  sub          a6, a3, t1
                  andi         ra, s7, 1405
                  xori         a4, t1, 496
                  ori          s7, a4, 1260
                  bge          t5, a7, 247f
                  slli         s2, tp, 19
                  ori          s11, s4, -1400
                  ori          s10, a6, -707
                  or           a0, t6, a4
                  srai         t3, a7, 30
247:              srai         s7, s10, 23
                  ori          s5, s9, -1068
                  slti         tp, s4, -1962
                  sll          a4, a5, zero
                  srai         s8, s7, 25
                  addi         zero, s2, -687
                  bne          s5, a2, 259f
                  slt          s2, a0, t2
                  slti         t3, t0, 853
                  ori          t6, s1, -1663
                  bge          zero, s11, 271f
                  auipc        t1, 330758
259:              ori          a1, s1, -39
                  andi         s4, s4, -828
                  sub          a3, t5, s2
                  xor          t5, t5, s10
                  add          t3, s7, ra
                  addi         s3, s0, -1533
                  slli         a0, t5, 5
                  slli         a2, s3, 18
                  sltu         s9, s0, a1
                  sub          a6, a5, t2
                  slti         s10, s7, 1786
                  xori         t3, s0, -1102
271:              xori         s8, a6, -618
                  sltu         s10, a2, a0
                  and          s11, a5, t2
                  addi         s1, s11, 1513
                  slti         a1, t4, -576
                  sltu         s3, t4, s7
                  beq          t6, t4, 290f
                  auipc        s5, 839582
                  slli         gp, s6, 17
                  sub          s8, s8, t3
                  srai         t0, zero, 19
                  sub          sp, s11, ra
                  sltiu        a4, zero, -1792
                  slli         s3, s8, 22
                  bge          t0, ra, 294f
                  sub          a5, s9, t3
                  nop
                  nop
                  beq          a5, s8, 294f
290:              slli         sp, s4, 4
                  ori          a2, a3, -66
                  bltu         s6, s1, 308f
                  slt          a3, s3, s4
294:              srl          s9, a6, zero
                  addi         a0, t5, -1638
                  add          t3, t6, s5
                  lui          a2, 462607
                  nop
                  slli         t1, s1, 15
                  xor          s6, s1, a4
                  and          s5, t6, s9
                  slt          t1, s3, t0
                  and          gp, t0, a3
                  nop
                  srl          s0, t1, a5
                  andi         a2, a6, -1960
                  nop
308:              srl          s6, s6, a2
                  addi         sp, a2, 1282
                  and          t5, s7, t5
                  srli         ra, s11, 12
                  ori          a5, t3, -1175
                  and          s10, gp, t2
                  slti         t6, t5, -1001
                  slti         tp, a6, 1084
                  xor          a5, tp, s4
                  xori         gp, s6, -245
                  nop
                  sltiu        s10, s3, 1478
                  add          s2, s3, a3
                  xor          s5, t2, s0
                  ori          zero, s1, 1188
                  sub          a2, t2, a7
                  nop
                  sltu         a2, s4, s8
                  bgeu         zero, t6, 343f
                  srai         t1, t6, 26
                  sra          s3, ra, s2
                  and          a3, s7, s8
                  la           sp, region_1+181 #start riscv_load_store_rand_instr_stream_1
                  lb           gp, -56(sp)
                  lb           s4, -35(sp)
                  sltiu        a6, t4, -1400
                  sra          s0, t5, s6
                  addi         ra, a2, -1772
                  sh           t5, 61(sp)
                  lbu          a4, 58(sp)
                  lb           tp, -5(sp)
                  lbu          s11, 64(sp)
                  sh           s0, -11(sp)
                  sra          t3, s2, t6
                  lbu          s7, -56(sp)
                  sb           t0, 48(sp)
                  lw           s6, 59(sp)
                  lhu          gp, 41(sp)
                  slt          a3, t4, a0
                  lbu          s10, 6(sp)
                  lbu          a0, 36(sp)
                  sll          a5, a0, s4
                  sh           s6, -23(sp)
                  addi         s9, s8, -660
                  lbu          t3, 60(sp)
                  slt          t1, s7, tp
                  sb           s4, -63(sp)
                  srl          a1, t5, t3
                  nop
                  srl          s7, s7, t4
                  srli         a5, s0, 27
                  addi         s11, a6, -810
                  sra          s4, tp, gp
                  xori         s11, a3, -935
                  xori         s2, s3, 342
                  lui          t6, 358492
                  lh           s4, 11(sp)
                  or           t0, s2, zero
                  lui          ra, 379274
                  sb           a2, 29(sp)
                  sub          a4, s8, t0
                  sb           s8, 15(sp)
                  sb           s5, -1(sp)
                  slt          a5, a6, t5
                  lbu          a1, -4(sp)
                  sw           s11, 11(sp) #end riscv_load_store_rand_instr_stream_1
                  sll          s1, t4, s9
                  bltu         t2, ra, 337f
                  sltu         zero, a5, s4
                  slti         tp, s5, 785
                  auipc        s4, 122475
                  slti         t3, s2, -963
                  slti         s10, s6, -102
337:              lui          a1, 573893
                  sll          s8, t4, ra
                  bltu         s3, s8, 348f
                  auipc        sp, 361391
                  srli         t5, a3, 25
                  srai         s11, a2, 4
343:              slli         tp, zero, 4
                  bltu         t4, a2, 357f
                  xor          t5, s11, t0
                  bne          s6, s1, 359f
                  sub          a5, sp, s4
348:              srai         s5, t5, 27
                  blt          s4, tp, 358f
                  srli         a1, t4, 25
                  sltiu        a2, a7, 1157
                  bgeu         s7, a1, 369f
                  addi         tp, a2, 1081
                  srl          s9, t0, s1
                  bltu         a3, s2, 370f
                  or           ra, a7, s2
357:              xor          a3, s8, sp
358:              srli         s6, a4, 29
359:              bgeu         a6, a2, 377f
                  bne          gp, s8, 378f
                  blt          s0, tp, 368f
                  srli         zero, s1, 0
                  lui          sp, 321404
                  xor          s3, s9, s9
                  sltu         s6, s8, t0
                  srl          a5, a1, a7
                  bge          s4, a2, 377f
368:              sra          sp, s9, a2
369:              sra          s11, a4, a3
370:              xori         a0, a2, -1065
                  slt          t1, t0, t0
                  sra          t1, sp, a4
                  sll          a0, s1, s6
                  xori         a6, a4, 248
                  sltu         tp, tp, a6
                  ori          s11, a7, 738
377:              auipc        s3, 866287
378:              bge          s11, s9, 397f
                  blt          a3, t0, 384f
                  sltiu        s9, ra, 810
                  blt          s10, s9, 383f
                  beq          a2, s2, 392f
383:              auipc        t1, 592102
384:              srai         t5, s4, 19
                  sll          a0, s11, t6
                  bne          zero, a2, 400f
                  sltu         sp, a1, t3
                  addi         a0, t3, -1507
                  slt          a3, sp, s6
                  bgeu         t3, t1, 397f
                  xori         s8, s3, -171
392:              and          a1, t2, a7
                  auipc        s10, 40729
                  blt          gp, s9, 401f
                  slli         s8, s1, 7
                  or           a4, t0, s8
397:              addi         s3, s8, -990
                  sra          zero, a5, s11
                  sltiu        zero, zero, 887
400:              slti         s11, s5, -1968
401:              ori          s1, t2, -120
                  add          s5, s3, a5
                  srli         zero, ra, 28
                  lw           ra, 4(t2)
                  andi         s10, s9, -420
                  slt          s3, s6, t1
                  addi         t2, t2, 48
                  nop
                  and          a1, tp, s4
779:              addi x3, x1, 1
779:              jalr x3, x3, 0
sub_1:            addi         t2, t2, -48
                  sltu         t1, a5, s4
                  sub          a3, t2, s8
                  andi         s9, a1, 1552
                  sw           ra, 4(t2)
                  slt          a0, s5, t2
                  sra          s10, ra, sp
                  la           a2, region_1+891 #start load_store_instr_stream_0
                  la           s10, region_1+342 #start load_store_instr_stream_1
                  sb           a1, 16(a2)
                  la           ra, region_1+1277 #start load_store_instr_stream_2
                  sh           s6, 532(s10)
                  sb           t6, -1042(ra)
                  lb           sp, 1033(s10)
                  sh           tp, 1192(s10)
                  lbu          t5, -45(a2)
                  lbu          t3, -782(ra)
                  sb           s11, 1208(s10)
                  lb           s0, 499(ra)
                  lh           s2, 522(s10)
                  lb           sp, -468(ra)
                  lbu          s1, -57(a2)
                  sh           tp, -15(a2)
                  sb           s8, 289(ra) #end load_store_instr_stream_2
                  lbu          a0, 993(s10) #end load_store_instr_stream_1
                  lb           sp, 24(a2) #end load_store_instr_stream_0
                  la           sp, region_1+1639 #start riscv_load_store_hazard_instr_stream_2
                  lbu          t6, -11(sp)
                  lb           s10, -4(sp)
                  sb           t5, -4(sp)
                  lbu          s6, -4(sp)
                  lb           s9, 8(sp)
                  or           s2, s2, zero
                  lbu          a3, 8(sp)
                  lb           s6, 3(sp)
                  lb           s3, 12(sp)
                  sb           zero, 2(sp)
                  lb           a3, 2(sp)
                  lbu          t0, -8(sp)
                  lb           ra, -8(sp)
                  sh           s10, 11(sp)
                  sb           s10, -2(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+1391 #start riscv_load_store_rand_instr_stream_3
                  lbu          s1, -17(sp)
                  nop
                  and          a6, t3, s9
                  lb           a3, -23(sp)
                  sh           t4, -51(sp)
                  lui          s1, 700335
                  srai         a3, ra, 11
                  lbu          s6, -11(sp)
                  sb           s9, -18(sp)
                  sh           a0, 3(sp)
                  andi         t6, s0, -1962
                  sh           zero, -53(sp)
                  lbu          gp, 31(sp)
                  xori         s1, s10, 193
                  sb           a6, -16(sp)
                  sb           t2, -30(sp)
                  sh           s2, 9(sp)
                  sub          a4, s9, s1
                  lbu          s1, -24(sp)
                  and          s7, s10, a4
                  lb           a5, 20(sp)
                  sh           s10, -23(sp)
                  lb           a4, 62(sp)
                  lb           s6, -40(sp)
                  lbu          t1, 38(sp)
                  xor          s3, ra, gp
                  sh           a7, -21(sp)
                  lbu          t5, 25(sp)
                  lb           tp, 32(sp)
                  andi         a4, ra, 1648
                  xor          gp, a2, s7
                  sub          t6, t5, a0
                  or           t6, s2, a3
                  auipc        s8, 494480
                  lb           s1, -28(sp)
                  lbu          a1, 61(sp)
                  auipc        s1, 45549
                  add          t6, t1, a3
                  lb           a3, -45(sp)
                  srli         s0, a0, 27
                  lbu          tp, 17(sp)
                  lbu          s4, -4(sp)
                  lbu          t0, -23(sp)
                  sb           a7, -34(sp)
                  lbu          s3, 26(sp)
                  lbu          ra, 26(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a3, region_1+1152 #start riscv_load_store_hazard_instr_stream_3
                  lbu          a5, -261(a3)
                  lbu          s3, -261(a3)
                  lbu          tp, -261(a3)
                  sb           a6, -261(a3)
                  lb           s10, -261(a3)
                  sb           t1, -261(a3)
                  lb           t6, -261(a3)
                  lb           t5, -261(a3)
                  lb           zero, -261(a3)
                  lbu          t6, -261(a3)
                  lui          s1, 842967
                  lbu          s0, -261(a3)
                  slli         s5, t4, 30
                  lbu          s4, -261(a3)
                  srli         tp, s4, 11
                  lbu          a0, -261(a3) #end riscv_load_store_hazard_instr_stream_3
                  la           gp, region_1+1735 #start riscv_load_store_hazard_instr_stream_0
                  lb           a1, -43(gp)
                  sb           a2, 26(gp)
                  lb           a2, 26(gp)
                  lhu          s7, -33(gp)
                  lhu          a0, -33(gp)
                  lbu          a4, -33(gp)
                  lh           s11, -33(gp)
                  lbu          s1, -48(gp)
                  sb           tp, 58(gp)
                  lb           s0, 58(gp)
                  xor          zero, a4, a7
                  lbu          s0, 58(gp)
                  lbu          a3, 58(gp)
                  sb           a3, 58(gp)
                  lb           s1, 58(gp)
                  lbu          s0, -13(gp)
                  lhu          sp, -13(gp)
                  sb           s11, -13(gp)
                  lhu          s4, -13(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_1+504 #start load_store_instr_stream_2
                  lhu          gp, -60(s5)
                  la           a5, region_1+1969 #start load_store_instr_stream_1
                  lhu          a0, -191(a5)
                  la           a2, region_1+64 #start load_store_instr_stream_0
                  sb           s8, -31(s5)
                  sh           a2, -46(s5)
                  lbu          s7, -10(a2)
                  sh           a2, 52(s5)
                  lb           a3, -121(a5)
                  lbu          gp, -9(s5)
                  lh           s10, -16(a2)
                  lhu          zero, -12(a2)
                  lbu          zero, -12(a5)
                  lh           s7, 6(s5)
                  lb           s2, 5(a2)
                  lb           zero, 41(s5)
                  sw           sp, -64(s5)
                  lb           a1, -3(a5)
                  lb           s8, 1(a2)
                  lw           a1, -28(s5)
                  sb           s7, 10(a2)
                  sb           t5, -38(a5) #end load_store_instr_stream_1
                  lw           zero, 64(s5) #end load_store_instr_stream_2
                  sb           a2, 11(a2) #end load_store_instr_stream_0
                  la           s9, region_0+211 #start riscv_load_store_rand_instr_stream_2
                  sh           s5, -9(s9)
                  lbu          s2, 638(s9)
                  srai         t5, a5, 21
                  sub          s3, t6, t4
                  lb           a0, 1026(s9)
                  lb           s10, 1395(s9)
                  nop
                  srl          t0, a4, s2
                  xor          a3, s9, s5
                  srli         a3, t6, 29
                  lbu          a2, 26(s9)
                  lui          s11, 381537
                  nop
                  andi         t1, a6, 1117
                  sb           a5, 40(s9)
                  sra          s11, zero, ra
                  or           a2, s9, a2
                  lh           s2, 303(s9)
                  sb           s2, 884(s9)
                  lbu          s5, -86(s9)
                  lb           ra, 386(s9)
                  sb           s8, 1482(s9)
                  xor          s4, zero, s9
                  lhu          ra, 1187(s9)
                  lh           s4, 1155(s9)
                  and          s11, s10, a7
                  sub          sp, s5, t6
                  sll          s4, a3, a1
                  lui          a1, 443934
                  auipc        s11, 912052
                  lh           a3, 37(s9)
                  slti         s11, sp, 1536
                  nop
                  lbu          a3, 401(s9)
                  lb           a3, 1192(s9)
                  sra          gp, a0, t6
                  slti         a1, sp, -1079
                  lbu          ra, 1416(s9)
                  addi         t3, s6, -762
                  add          s2, a3, sp
                  lb           sp, 955(s9)
                  sb           a5, 1156(s9)
                  sb           s4, 1604(s9)
                  add          a5, a0, a0
                  lui          t1, 141973
                  sw           zero, 1029(s9)
                  lb           s6, 1458(s9)
                  srl          a0, t3, t6
                  sb           s1, 1211(s9)
                  slli         a6, s1, 18
                  sb           a0, 997(s9)
                  lbu          s6, 1160(s9) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+1160 #start riscv_load_store_hazard_instr_stream_1
                  xori         s6, s7, -725
                  lb           s9, -175(t1)
                  lbu          ra, -175(t1)
                  sb           a4, -175(t1)
                  sb           a1, -175(t1)
                  lbu          s8, -175(t1)
                  sb           zero, -175(t1)
                  lb           a3, -175(t1)
                  sb           a6, -175(t1)
                  lb           a1, -175(t1)
                  and          a1, t6, s0
                  lbu          s5, -175(t1)
                  lbu          t0, -175(t1)
                  srli         s10, t0, 28
                  sll          a3, s4, s5
                  sb           s6, -175(t1)
                  lbu          s6, -175(t1)
                  sb           s2, -175(t1)
                  lb           sp, -175(t1)
                  sb           a6, -175(t1)
                  sb           t6, -175(t1)
                  sb           t3, -91(t1)
                  sb           s3, -91(t1) #end riscv_load_store_hazard_instr_stream_1
                  la           s8, region_0+1768 #start load_store_instr_stream_1
                  sb           gp, -7(s8)
                  la           s1, region_0+1975 #start load_store_instr_stream_0
                  la           a0, region_0+15 #start load_store_instr_stream_2
                  lb           a6, -2(s8)
                  lb           ra, -192(s1)
                  lhu          ra, 6(s8)
                  sb           a0, -1(s8)
                  lbu          a1, -7(a0)
                  sh           s0, -221(s1)
                  sb           t1, -111(s1)
                  lb           s10, -8(a0)
                  lbu          t6, -5(s8)
                  lb           s10, -200(s1)
                  sb           ra, -168(s1)
                  lb           a5, 22(a0)
                  sh           a5, -5(a0)
                  lb           a4, 7(s8)
                  sb           s1, -178(s1)
                  lb           s11, 10(s8)
                  lbu          sp, -16(s8)
                  sh           a3, -13(a0)
                  lhu          s4, -179(s1)
                  lbu          tp, 11(a0)
                  lb           s3, 12(s1)
                  lbu          sp, -97(s1)
                  lb           t6, 1(s8) #end load_store_instr_stream_1
                  lb           sp, 4(a0) #end load_store_instr_stream_2
                  lb           s3, -156(s1) #end load_store_instr_stream_0
                  la           sp, region_1+503 #start riscv_load_store_rand_instr_stream_0
                  sb           a0, -10(sp)
                  sltiu        t5, s1, -654
                  lbu          s6, 56(sp)
                  lb           a1, 6(sp)
                  lb           s7, -25(sp)
                  sra          s8, a0, ra
                  sb           t4, 62(sp)
                  and          a5, s11, tp
                  add          a2, tp, a6
                  srl          a0, a7, t1
                  sb           s7, -19(sp)
                  xori         s8, t4, 773
                  lh           s1, -29(sp)
                  lhu          tp, -11(sp)
                  slli         a1, zero, 2
                  addi         s9, s5, -1561
                  lbu          s7, 12(sp)
                  slli         t6, tp, 24
                  auipc        s7, 650179
                  sub          t1, t4, a7
                  sb           zero, -3(sp)
                  srl          a2, a6, s8
                  lb           tp, 49(sp)
                  srai         t5, a2, 10
                  sh           t3, 13(sp)
                  sra          s7, s4, sp
                  ori          s6, a1, 1174
                  andi         a1, sp, -1693
                  auipc        a0, 572779
                  sub          a1, a1, s5
                  lb           s3, 44(sp)
                  sll          t3, s9, t5
                  lbu          t6, -20(sp)
                  lbu          a3, 2(sp)
                  lb           tp, -60(sp)
                  andi         a4, s10, -458
                  sra          s11, a0, a2
                  sb           a1, 18(sp)
                  ori          t1, a5, -119
                  sb           s11, 10(sp)
                  sltiu        t3, a0, 1788
                  nop
                  lb           zero, -6(sp)
                  xori         tp, a4, 1917
                  xori         s1, s9, 1574
                  lbu          a6, -61(sp)
                  lbu          a5, 26(sp)
                  sh           a2, 27(sp)
                  lhu          s0, -1(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_0+387 #start riscv_load_store_rand_instr_stream_1
                  lbu          a2, -188(s8)
                  lb           t3, -14(s8)
                  srl          tp, zero, a6
                  sb           t4, 43(s8)
                  lh           a0, 69(s8)
                  lbu          t0, 202(s8)
                  slti         s11, s7, 281
                  slt          s6, s4, s2
                  slli         t5, s10, 4
                  sub          a4, ra, tp
                  sb           t6, -143(s8)
                  lhu          s9, 159(s8)
                  slli         t0, gp, 11
                  nop
                  sltu         s0, a4, s2
                  add          s0, tp, gp
                  auipc        zero, 742586
                  sh           a6, 85(s8)
                  lb           s2, 86(s8)
                  sw           zero, 77(s8)
                  and          s1, s2, s0
                  lbu          a3, 90(s8)
                  lh           t6, 171(s8)
                  srl          t1, t2, a5
                  auipc        a1, 367604
                  addi         s3, a6, 1706
                  xori         t5, s1, -834
                  sb           t0, -126(s8)
                  lui          s6, 513119
                  sh           s4, -149(s8)
                  or           s4, s6, s10
                  andi         tp, t6, -1323
                  sb           a5, -72(s8)
                  lhu          a4, 253(s8)
                  xor          s11, a1, s1
                  sb           a0, -60(s8)
                  lb           t6, 50(s8)
                  slt          a2, gp, sp
                  lb           t5, -38(s8)
                  sb           s3, 36(s8)
                  lh           s7, -171(s8)
                  lhu          t5, 203(s8)
                  and          a1, a0, s6
                  sb           a7, -164(s8) #end riscv_load_store_rand_instr_stream_1
                  bge          s2, ra, 4f
                  auipc        t1, 849934
                  srl          s3, s8, s6
                  bne          gp, s1, 20f
4:                slli         t0, a2, 23
                  ori          t1, a6, 233
                  auipc        s5, 224858
                  srai         t6, a5, 30
                  sltu         a5, t3, a3
                  addi         s11, s11, 316
                  nop
                  srl          gp, zero, a6
                  and          s10, s6, s6
                  addi         a4, s7, -53
                  xor          a1, s4, s11
                  auipc        s9, 418060
                  beq          t3, t6, 21f
                  xor          s6, s1, t2
                  beq          s5, t5, 34f
                  bne          sp, s5, 22f
20:               bltu         s2, s6, 40f
21:               bge          s2, t6, 41f
22:               bge          a1, a1, 34f
                  sll          s1, a6, a0
                  sltiu        zero, a2, 1861
                  sra          s4, a7, t2
                  slli         gp, t0, 11
                  slt          s0, gp, gp
                  blt          s9, s2, 48f
                  lui          sp, 327924
                  slt          s1, a1, a2
                  sra          t3, a2, a1
                  andi         s0, s6, -606
                  auipc        s6, 304050
34:               sltu         a1, a5, a2
                  xori         a3, sp, 267
                  add          a3, s0, s2
                  sub          t3, s5, zero
                  sltu         s0, ra, zero
                  lui          t1, 220174
40:               xor          ra, a4, zero
41:               nop
                  srai         t1, sp, 28
                  bge          s1, gp, 44f
44:               slt          s5, t6, a4
                  xori         s9, gp, 2006
                  srl          s7, a7, s4
                  bge          s2, s7, 57f
48:               bltu         sp, zero, 66f
                  slt          a6, tp, s9
                  bgeu         tp, s1, 57f
                  srli         zero, a3, 18
                  lui          gp, 2399
                  sltu         t3, gp, a4
                  lui          s1, 161825
                  nop
                  auipc        s1, 282881
57:               beq          t0, s8, 69f
                  auipc        a0, 418039
                  bgeu         gp, s2, 77f
                  xori         a2, s11, 1062
                  sub          ra, a5, t3
                  bgeu         a0, s2, 70f
                  bgeu         s2, s4, 83f
                  auipc        s2, 750125
                  or           s10, zero, s3
66:               srli         t6, s1, 1
                  auipc        a5, 1016962
                  srl          s2, a3, s8
69:               srai         zero, t5, 17
70:               srli         gp, a3, 18
                  slli         zero, a5, 15
                  sltiu        s9, gp, 242
                  beq          s3, a5, 77f
                  xor          a0, a0, a6
                  slt          sp, t5, s10
                  add          a6, t4, s8
77:               or           s0, s3, t4
                  slt          a4, a5, a1
                  sll          t3, gp, s4
                  sll          zero, s6, ra
                  bgeu         s8, a3, 91f
                  slli         s11, s11, 1
83:               sll          a1, s11, s6
                  srli         s10, a6, 16
                  bge          t3, t4, 100f
                  xori         s8, s9, 1715
                  andi         a5, s8, 225
                  slt          s7, s10, t1
                  bge          s3, s3, 107f
                  nop
91:               bltu         s6, s9, 92f
92:               bgeu         gp, t2, 99f
                  slti         s1, a0, -314
                  sltiu        s8, t5, -1558
                  bgeu         s6, tp, 105f
                  addi         s11, t5, 1411
                  addi         s10, s0, -1201
                  sltiu        s10, s0, 661
99:               xor          s9, s3, t3
100:              and          s7, t3, s5
                  srli         t0, s9, 9
                  or           a1, s3, a1
                  auipc        s1, 711383
                  bgeu         a7, s2, 108f
105:              bltu         s11, s5, 113f
                  srl          tp, a4, s8
107:              bge          s2, a3, 110f
108:              lui          a2, 672683
                  bge          s6, t2, 111f
110:              srl          s0, s5, t6
111:              sra          s10, t1, t0
                  sub          s1, t6, sp
113:              sltiu        ra, a1, 741
                  blt          s3, gp, 122f
                  xor          zero, sp, s6
                  bltu         zero, s5, 126f
                  nop
                  add          s1, s8, a7
                  srli         ra, t2, 16
                  xori         s5, s10, -1790
                  slli         tp, zero, 19
122:              srli         s2, t1, 20
                  bgeu         t5, a6, 133f
                  ori          t5, zero, -536
                  srli         t1, s7, 20
126:              and          a6, t2, t0
                  bltu         s10, ra, 137f
                  xor          tp, t2, s0
                  andi         s8, s11, 807
                  srli         a1, a2, 11
                  slli         s1, s11, 6
                  or           a0, s9, s2
133:              blt          a6, a1, 141f
                  add          s7, s10, s9
                  xori         s11, s2, 1291
                  srl          t3, sp, a6
137:              sra          tp, t1, a1
                  and          s11, ra, s2
                  addi         t1, a4, -229
                  and          t3, a7, s0
141:              sra          s0, a5, t6
                  bne          tp, s0, 147f
                  slli         t1, t0, 1
                  addi         t1, t3, -1611
                  bne          a2, t1, 155f
                  xor          a6, a1, s9
147:              nop
                  srli         a3, a4, 18
                  slt          s5, s6, tp
                  xor          a5, s5, s11
                  srl          s5, s8, a3
                  slt          s5, s8, s4
                  lui          s9, 945129
                  bne          a4, s0, 161f
155:              sub          s4, t1, s6
                  srli         a1, a2, 25
                  bne          t1, s11, 161f
                  nop
                  sub          s8, tp, s11
                  sll          s0, s1, s5
161:              and          tp, s2, t6
                  lui          s1, 606172
                  sll          t5, sp, a2
                  bge          gp, t2, 184f
                  bgeu         a0, t6, 175f
                  srai         t0, zero, 7
                  sltu         t5, ra, a2
                  addi         t0, s11, -511
                  slti         a1, a3, -1582
                  srai         a2, t0, 17
                  sltu         t1, a7, sp
                  andi         s3, t6, -1853
                  bne          a7, a5, 189f
                  sub          s5, t5, s10
175:              sltiu        a6, t5, 1828
                  slti         a4, t6, -1029
                  bne          a6, sp, 179f
                  sltu         a1, t3, s8
179:              ori          s4, a6, 202
                  slt          s6, t3, a3
                  sltiu        a0, s9, -532
                  lui          s7, 469437
                  bltu         s4, ra, 200f
184:              slti         s0, s7, 276
                  sltiu        t0, t5, -1316
                  bge          s2, s5, 189f
                  nop
                  bge          a0, s7, 189f
189:              add          s4, a0, zero
                  or           s10, a7, t0
                  srl          a1, a0, ra
                  slli         t6, zero, 21
                  sra          sp, s4, t4
                  sll          zero, s5, a0
                  sltu         zero, s11, s3
                  slti         a4, t4, -372
                  beq          s10, a5, 201f
                  blt          a3, t5, 199f
199:              lui          tp, 184008
200:              bge          s7, t3, 207f
201:              sub          a6, s1, s10
                  sltiu        a5, t5, 1918
                  and          t6, tp, t5
                  bne          s0, t6, 222f
                  ori          s4, a6, -1164
                  lui          a2, 812825
207:              slt          s4, a3, a7
                  beq          t6, s11, 226f
                  beq          gp, t2, 213f
                  sltiu        a1, t3, -162
                  bne          t0, gp, 229f
                  ori          t1, s4, -1239
213:              add          t6, a5, a4
                  beq          t0, s5, 234f
                  srl          sp, a2, t5
                  sra          a1, t1, ra
                  nop
                  sra          t1, s9, t2
                  bge          t0, a3, 227f
                  slli         zero, s0, 8
                  xori         a6, s11, 1802
222:              sra          sp, a2, s10
                  or           a2, zero, s3
                  add          s11, s10, t1
                  sltiu        t5, a6, -374
226:              srai         s11, sp, 28
227:              lui          t0, 744863
                  sltu         tp, s5, a3
229:              bgeu         a3, s11, 249f
                  ori          a0, t6, 2012
                  andi         s9, s0, -1882
                  sltiu        ra, t1, 635
                  srl          s4, s8, s8
234:              slti         a0, s5, 2037
                  slt          s5, gp, zero
                  sll          a3, a5, tp
                  bltu         tp, s0, 240f
                  auipc        s8, 84265
                  addi         t1, a6, 508
240:              sra          s8, t5, a6
                  addi         a2, t4, 1593
                  and          s5, s6, s2
                  sra          s10, s11, sp
                  lui          s10, 987307
                  or           s9, a2, s2
                  xori         s7, t4, 616
                  sltiu        a6, t3, 629
                  bge          s6, tp, 256f
249:              lui          t0, 1015888
                  sltu         sp, t4, s11
                  ori          a2, s2, -1128
                  bltu         s3, t3, 264f
                  and          a2, s1, a4
                  bltu         s1, a7, 274f
                  or           a1, a5, t2
256:              nop
                  or           s0, s10, t0
                  slli         a3, t4, 28
                  lui          a1, 198680
                  sra          a4, s11, t1
                  and          a6, s1, a3
                  bltu         t0, s1, 277f
                  slt          s2, gp, tp
264:              sltu         a5, sp, s0
                  sub          a1, s3, t4
                  and          a6, t6, s6
                  sra          s1, s3, t1
                  bge          s9, s11, 280f
                  auipc        zero, 825964
                  slti         t0, zero, 1610
                  srl          a5, a0, s3
                  sll          s6, t6, s6
                  sltu         s8, s10, s7
274:              bge          t6, s1, 284f
                  bgeu         ra, a0, 280f
                  auipc        ra, 105782
277:              ori          a0, t4, -1840
                  bgeu         gp, t2, 286f
                  andi         s8, s10, 1088
280:              srli         a1, t5, 7
                  bne          t5, s11, 289f
                  beq          t0, a5, 300f
                  srl          gp, a7, s4
284:              sra          gp, s4, s6
                  slti         a0, a0, -55
286:              sltiu        s9, s1, -410
                  sltiu        s0, t5, -1528
                  beq          gp, a0, 290f
289:              slt          a6, s10, tp
290:              sra          t5, tp, s8
                  sll          a2, s4, s1
                  bge          zero, a2, 310f
                  ori          s1, a0, 841
                  auipc        s2, 97504
                  slti         s6, zero, 1470
                  slt          a4, a5, t0
                  slti         s6, t5, 1778
                  srl          s7, t2, s1
                  sub          a5, s3, s0
300:              bge          t6, s11, 315f
                  or           tp, s1, s11
                  slti         a4, tp, -386
                  sra          t0, t2, s7
                  or           s1, s4, s7
                  add          s7, a4, a0
                  or           a6, s1, a3
                  add          ra, t5, s10
                  slt          s0, a4, s3
                  xori         s1, a5, -1559
310:              sub          gp, sp, gp
                  srli         a5, s8, 2
                  beq          t0, ra, 316f
                  nop
                  sub          s2, s10, tp
315:              auipc        t1, 144400
316:              srl          t1, a0, a6
                  slt          s2, s8, ra
                  slt          s10, s10, s8
                  bgeu         a0, s2, 329f
                  ori          s1, t6, 807
                  addi         s10, t2, 128
                  srl          t0, s4, t0
                  srai         a6, ra, 22
                  slti         s2, s1, -971
                  or           s4, s5, t2
                  auipc        s10, 601854
                  addi         s10, s8, 1907
                  andi         a5, s9, 43
329:              or           t3, a4, sp
                  beq          t3, a7, 342f
                  and          s10, a6, s1
                  or           a3, a6, a7
                  bltu         a0, a0, 351f
                  la           sp, region_0+345 #start load_store_instr_stream_1
                  la           s2, region_0+1690 #start load_store_instr_stream_2
                  lbu          a4, 75(s2)
                  lh           t5, -42(s2)
                  la           s3, region_0+556 #start load_store_instr_stream_0
                  sb           t3, 103(s3)
                  sb           t1, 0(sp)
                  lb           t6, -161(s2)
                  lb           s0, -4(sp)
                  lh           s9, 82(s2)
                  lb           t6, -209(s3)
                  lw           t5, -13(sp)
                  sb           a4, -10(sp)
                  sb           s11, 61(s2)
                  lb           s1, -33(s2)
                  lh           s8, 110(s3)
                  lhu          s4, 146(s2)
                  sb           s0, 35(s3)
                  lb           a5, 80(s2) #end load_store_instr_stream_2
                  lb           zero, -13(sp) #end load_store_instr_stream_1
                  sb           t1, 217(s3) #end load_store_instr_stream_0
                  ori          gp, a2, -94
                  bge          s10, t5, 347f
                  bltu         gp, t2, 356f
                  bgeu         s3, a6, 341f
                  blt          t4, t2, 345f
                  sll          s6, t3, t1
                  srl          zero, gp, a4
341:              bgeu         s8, s6, 361f
342:              sub          s3, s0, s4
                  sltu         s1, s10, s11
                  add          zero, s7, sp
345:              srl          t3, s9, ra
                  slti         t5, a0, 376
347:              nop
                  xor          t3, s5, a1
                  sub          gp, t6, s2
                  lui          zero, 586962
351:              bne          a7, sp, 354f
                  sra          sp, ra, a5
                  blt          t1, s4, 360f
354:              andi         s8, a7, 1826
                  sltu         t6, s0, s10
356:              ori          s9, sp, -678
                  slli         tp, s8, 16
                  sub          ra, t5, s10
                  or           s1, ra, t5
360:              nop
361:              bne          s5, s5, 371f
                  ori          s11, t1, 1582
                  nop
                  blt          s4, s9, 381f
                  andi         s1, a1, 23
                  xor          t1, s4, a5
                  slti         s8, s3, -664
                  srai         s5, s7, 22
                  bgeu         ra, s10, 389f
                  bne          a0, a1, 371f
371:              slli         s2, t0, 27
                  bltu         s3, tp, 380f
                  bne          t2, a0, 376f
                  slli         s2, a4, 13
                  nop
376:              lui          a4, 259788
                  srl          s8, t0, a6
                  beq          a2, s3, 394f
                  addi         s2, t5, -1394
380:              srai         s9, t0, 31
381:              sltu         s8, a1, s2
                  srai         s11, zero, 3
                  sll          s7, zero, gp
                  lui          t3, 607052
                  lui          s1, 102197
                  bne          s0, a7, 390f
                  srai         a0, t0, 6
                  bge          a5, zero, 398f
389:              xor          ra, s0, gp
390:              addi         s11, a3, 721
                  sltiu        a1, a1, 1803
                  and          s9, s2, t3
                  xor          s6, gp, a7
394:              auipc        t3, 352215
                  ori          a1, s8, -1580
                  nop
                  sltiu        t1, t2, -187
398:              auipc        t3, 553589
                  lui          s10, 562615
                  add          t1, a0, t1
                  add          s11, t5, sp
                  srl          s1, s2, s9
                  bge          t6, s2, 423f
                  xor          gp, t0, ra
                  slti         a4, a1, 840
                  or           gp, s4, a2
                  blt          tp, sp, 408f
408:              srli         sp, a0, 21
                  bge          s9, s6, 419f
                  srai         s6, t5, 20
                  beq          tp, a5, 429f
                  sltu         s4, a7, tp
                  sub          t1, s9, s6
                  srl          s8, s1, t0
                  add          t0, a6, t3
                  srli         s10, t3, 18
                  auipc        ra, 584431
                  slti         s3, t0, -1474
                  slt          tp, t6, s5
                  lui          gp, 67825
                  addi         zero, a0, -1810
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  srli         s10, zero, 27
                  sra          s4, s4, ra
                  blt          s10, gp, 432f
                  bgeu         a5, s3, 427f
                  lui          gp, 1047987
                  sra          s3, s7, gp
                  blt          a0, sp, 430f
419:              bgeu         s1, s2, 426f
                  ori          a6, s7, 1235
                  slti         a5, a6, -1019
                  or           s7, t6, a1
423:              xor          s0, a3, s9
                  bgeu         a5, a2, 427f
                  slti         s10, t2, 1367
426:              addi         s9, gp, 1924
427:              srl          a6, s4, a1
                  srli         s2, a4, 3
429:              sltu         s2, s10, t3
430:              srai         s2, t4, 20
                  xor          s1, a4, tp
432:              srli         s5, zero, 24
                  bge          s1, s7, 448f
                  bne          t3, s5, 444f
                  xor          t3, ra, tp
                  and          sp, s10, s1
                  sub          gp, s10, a1
                  and          s10, s0, t2
                  bge          a1, zero, 447f
                  add          ra, s4, t5
                  blt          t0, s6, 448f
                  slt          s10, a1, s2
                  slti         s6, a7, 116
444:              andi         tp, zero, -1602
                  add          s10, s2, t4
                  sra          gp, s5, sp
447:              blt          s1, s2, 448f
448:              xor          gp, t0, ra
                  slti         s1, a6, -6
                  lw           ra, 4(t2)
                  addi         t2, t2, 48
                  srl          t1, tp, zero
                  add          zero, s8, a5
                  sltu         tp, t1, a4
                  sra          s6, a3, t1
                  srli         t0, a3, 21
841:              addi x13, x1, 1
841:              jalr x13, x13, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x17, x7, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x4, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x4, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x4, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x4, x12, ecall_handler
                  li x12, 0x1
                  beq x4, x12, instr_fault_handler
                  li x12, 0x5
                  beq x4, x12, load_fault_handler
                  li x12, 0x7
                  beq x4, x12, store_fault_handler
                  li x12, 0xc
                  beq x4, x12, pt_fault_handler
                  li x12, 0xd
                  beq x4, x12, pt_fault_handler
                  li x12, 0xf
                  beq x4, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x7, x17, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
